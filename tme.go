package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
	"time"
)

type paquet struct {
	arrivee string
	depart  string
	arret   int
}

// nobmre de worker
const NBWORKER int = 3

func reader(cline chan string) {
	f, err := os.Open("./stop_times.txt")
	if err != nil {
		panic(err)
	}
	defer f.Close()
	scanner := bufio.NewScanner(f)
	for scanner.Scan() {
		cline <- scanner.Text()
	}

}

func worker(cline chan string, cancan chan chan paquet, cres chan paquet) {
	for {
		s := <-cline
		var tab []string = strings.Split(s, ",")
		monChan := make(chan paquet)
		cancan <- monChan
		var p paquet
		p.arrivee = tab[1]
		p.depart = tab[2]
		p.arret = 0
		monChan <- p
		res := <-monChan
		cres <- res
	}

}

func compute(cp chan paquet) {
	p := <-cp
	arr, _ := time.Parse("15:04:05", p.arrivee)
	deb, _ := time.Parse("15:04:05", p.depart)
	p.arret = int(arr.Sub(deb).Seconds())
	cp <- p
}
func processServer(cancan chan chan paquet) {
	for {
		c := <-cancan
		go func() { compute(c) }()
	}
}

func reduce(cres chan paquet, cmain chan int) {
	var acc int
	var cpt int
	select {
	case p := <-cres:
		acc = acc + p.arret
		cpt = cpt + 1
	case <-cmain:
		cmain <- acc / cpt
	}
}

func main() {
	duree, _ := (strconv.Atoi(os.Args[1]))

	//chans
	cres := make(chan paquet)
	cmain := make(chan int)
	cline := make(chan string)
	cancan := make(chan chan paquet)

	//threads
	go func() { reader(cline) }()
	for i := 0; i < NBWORKER; i++ {
		go func() { worker(cline, cancan, cres) }()
	}
	go func() { processServer(cancan) }()
	go func() { reduce(cres, cmain) }()

	//attente
	time.Sleep(time.Duration(duree) * (time.Millisecond))
	cmain <- 0
	res := <-cmain
	fmt.Printf("moyenne des temps d'arret des trains : %v s", res)
}
