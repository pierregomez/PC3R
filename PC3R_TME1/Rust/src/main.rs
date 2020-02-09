use std::sync::Arc;
use std::sync::Mutex;
use std::collections::VecDeque;
use std::thread;
use std::time;
// use std::sync::condVar ? conditions variables


struct Paquet {
    content: String,
}

struct Tapis {
    queue : VecDeque<Paquet>,
    capacity : usize,
   
}


fn enfiler(p : Paquet,mut t : Tapis){
    // if (t.queue.size + 1 > t.capacity) {
        // thread.sleep(rand)
        // s'endormir
    // }
    // else {
        t.queue.push_back(p);
    // }
    
}

fn defiler(mut t : Tapis) -> Paquet {
    let p = t.queue.pop_front().unwrap();
    return p;
}



fn main() {
    println!("Hello, world!");
    let mut tapis = Tapis {
        capacity : 10,
        queue : VecDeque::with_capacity(10),
    };
    let p = Paquet {
        content : String::from("yo"),
    };
    enfiler(p,tapis);
    // assert_eq!(tapis.queue,&["yo"]);
}

