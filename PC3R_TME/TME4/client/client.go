package main

import (
	"bufio"
	"fmt"
	"math/rand"
	"os"
	"regexp"
	"strconv"
	"time"

	st "./structures" // contient la structure Personne
	tr "./travaux" // contient les fonctions de travail sur les Personnes
)

var ADRESSE string = "localhost"                           // adresse de base pour la Partie 2
var FICHIER_SOURCE string = "./conseillers-municipaux.txt" // fichier dans lequel piocher des personnes
var TAILLE_SOURCE int = 450000                             // inferieure au nombre de lignes du fichier, pour prendre une ligne au hasard
var TAILLE_G int = 5                                       // taille du tampon des gestionnaires
var NB_G int = 2                                           // nombre de gestionnaires
var NB_P int = 2                                           // nombre de producteurs
var NB_O int = 4                                           // nombre d'ouvriers
var NB_PD int = 2                                          // nombre de producteurs distants pour la Partie 2

var pers_vide = st.Personne{Nom: "", Prenom: "", Age: 0, Sexe: "M"} // une personne vide

type mess_reader struct{
	contenu int
	retour chan string
}
// paquet de personne, sur lequel on peut travailler, implemente l'interface personne_int
type personne_emp struct {
	statut string
	st.Personne
	reader chan mess_reader
	tasks []func(st.Personne) st.Personne
	id int
}

// paquet de personne distante, pour la Partie 2, implemente l'interface personne_int
type personne_dist struct {
	// A FAIRE
}

// interface des personnes manipulees par les ouvriers, les
type personne_int interface {
	initialise()          // appelle sur une personne vide de statut V, remplit les champs de la personne et passe son statut à R
	travaille()           // appelle sur une personne de statut R, travaille une fois sur la personne et passe son statut à C s'il n'y a plus de travail a faire
	vers_string() string  // convertit la personne en string
	donne_statut() string // renvoie V, R ou C
}

// fabrique une personne à partir d'une ligne du fichier des conseillers municipaux
// à changer si un autre fichier est utilisé
func personne_de_ligne(l string) st.Personne {
	separateur := regexp.MustCompile("\u0009") // oui, les donnees sont separees par des tabulations ... merci la Republique Francaise
	separation := separateur.Split(l, -1)
	naiss, _ := time.Parse("2/1/2006", separation[7])
	a1, _, _ := time.Now().Date()
	a2, _, _ := naiss.Date()
	agec := a1 - a2
	return st.Personne{Nom: separation[4], Prenom: separation[5], Sexe: separation[6], Age: agec}
}

// *** METHODES DE L'INTERFACE personne_int POUR LES PAQUETS DE PERSONNES ***

func (p *personne_emp) initialise() {
	ret := make(chan string)
	p.reader <- mess_reader(contenu: p.ligne, retour: ret)
	ligne := <- ret
	p.Personne = personne_de_ligne(ligne)
	for i := 0; i < randIntn(6)+1; i++ {
		p.tasks = append(p.tasks, tr.UnTravail())
	}
	p.statut = "R"
}

func (p *personne_emp) travaille() {
	p.Personne = p?tasks[0](p.Personne)
	p.tasks = p.tasks[1:]
	if len(p.tasks) == 0{
		p.statut = "C"
	}
}

func (p *personne_emp) vers_string() string {
	var add string
	if p.Sexe == "F"{
		add = "Madame"
	} else {
		add= "Monsieur"
	}
	return fmt.Sprint(add, p.Prenom, " ", p.Nom, " : ", p.Age, "ans")
}

func (p *personne_emp) donne_statut() string {
	return p.statut
}

// *** METHODES DE L'INTERFACE personne_int POUR LES PAQUETS DE PERSONNES DISTANTES (PARTIE 2) ***
// ces méthodes doivent appeler le proxy (aucun calcul direct)

func (p personne_dist) initialise() {
	local := make(chan string)
	mess := message_proxy{methode: "initialise", retour: local, identifiant: p.identifiant}
	p.proxy <- mess
	<- local
}

func (p personne_dist) travaille() {
	local := make(chan string)
	mess := message_proxy{methode: "travaille", retour: local, identifiant: p.identifiant}
	p.proxy <- mess
	<- local
}

func (p personne_dist) vers_string() string {
	local := make(chan string)
	mess := message_proxy{methode: "vers_string", retour: local, identifiant: p.identifiant}
	p.proxy <- mess
	return <- local
}

func (p personne_dist) donne_statut() string {
	local := make(chan string)
	mess := message_proxy{methode: "donne_statut", retour: local, identifiant: p.identifiant}
	p.proxy <- mess
	return <- local
}

// *** CODE DES GOROUTINES DU SYSTEME ***

// Partie 2: contacté par les méthodes de personne_dist, le proxy appelle la méthode à travers le réseau et récupère le résultat
// il doit utiliser une connection TCP sur le port donné en ligne de commande
func proxy() {
	// A FAIRE
}

// Partie 1 : contacté par la méthode initialise() de personne_emp, récupère une ligne donnée dans le fichier source
func lecteur(url chan mess_reader) {
	for{
		m:=url
		fmt.Println("lecture de la ligne", m.contenu)
		fichier, err := os.Open(FICHIER_SOURCE)
		if err != nil{
			log.Fatal(err)
		}

		scanner := bufio.NewScanner(fichier)
		_ = scanner.Scan()

		for i := 0, i< m.contenu; i++{
			_ = scanner.Scan()
		}
		res := scanner.Scan()
		if res == false{
			log.Fatal(err)
		} else {
			m.retour <- scanner.Text()
		}
		fichier.Close()
	}
}

// Partie 1: récupèrent des personne_int depuis les gestionnaires, font une opération dépendant de donne_statut()
// Si le statut est V, ils initialise le paquet de personne puis le repasse aux gestionnaires
// Si le statut est R, ils travaille une fois sur le paquet puis le repasse aux gestionnaires
// Si le statut est C, ils passent le paquet au collecteur
func ouvrier() {
	// A FAIRE
}

// Partie 1: les producteurs cree des personne_int implementees par des personne_emp initialement vides,
// de statut V mais contenant un numéro de ligne (pour etre initialisee depuis le fichier texte)
// la personne est passée aux gestionnaires
func producteur(enfiler chan personne_int, lire chan mess_reader) {
	for{
		np := pers_vide
		nt := make([]func(st.Personne) st.Personne 0)
		npe := personne_emp(statut: "V", ligne: randIntn(TAILLE_SOURCE), tasks: nt, Personne: np, reader: mess_reader)
		fmt.Println("Production ligne",npe.ligne)
		enfiler <- personne_int(&npe)
	}
}

// Partie 2: les producteurs distants cree des personne_int implementees par des personne_dist qui contiennent un identifiant unique
// utilisé pour retrouver l'object sur le serveur
// la creation sur le client d'une personne_dist doit declencher la creation sur le serveur d'une "vraie" personne, initialement vide, de statut V
func producteur_distant(enfiler chan personne_int, proxer chan message_proxy, frais chan int) {
	// A FAIRE
}

// Partie 1: les gestionnaires recoivent des personne_int des producteurs et des ouvriers et maintiennent chacun une file de personne_int
// ils les passent aux ouvriers quand ils sont disponibles
// ATTENTION: la famine des ouvriers doit être évitée: si les producteurs inondent les gestionnaires de paquets, les ouvrier ne pourront
// plus rendre les paquets surlesquels ils travaillent pour en prendre des autres
func gestionnaire() {
	// A FAIRE
}

// Partie 1: le collecteur recoit des personne_int dont le statut est c, il les collecte dans un journal
// quand il recoit un signal de fin du temps, il imprime son journal.
func collecteur() {
	// A FAIRE
}

func main() {
	rand.Seed(time.Now().UTC().UnixNano()) // graine pour l'aleatoire
	if len(os.Args) < 3 {
		fmt.Println("Format: client <port> <millisecondes d'attente>")
		return
	}
	port, _ := strconv.Atoi(os.Args[1]) // utile pour la partie 2
	millis, _ := strconv.Atoi(os.Args[2]) // duree du timeout 
	fintemps := make(chan int)
	// A FAIRE
	// creer les canaux
	// lancer les goroutines (parties 1 et 2): 1 lecteur, 1 collecteur, des producteurs, des gestionnaires, des ouvriers
	// lancer les goroutines (partie 2): des producteurs distants, un proxy
	time.Sleep(time.Duration(millis) * time.Millisecond)
	fintemps <- 0
	<-fintemps
}
