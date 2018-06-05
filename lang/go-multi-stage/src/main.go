package main

import (
	"flag"
	"fmt"
	"log"
	"net/http"
	"strings"
)

func handler(w http.ResponseWriter, r *http.Request) {
	r.ParseForm()

	fmt.Println(r.Form)
	fmt.Println("path", r.URL.Path)
	fmt.Println("scheme", r.URL.Scheme)
	fmt.Println(r.Form["url_long"])

	for k, v := range r.Form {
		fmt.Println("key:", k)
		fmt.Println("val:", strings.Join(v, ""))
	}

	fmt.Fprintf(w, "Hello!\n")
}

func main() {
	var bind string

	flag.StringVar(&bind, "bind", ":9090", "bind")
	flag.Parse()

	fmt.Println("bind", bind)

	http.HandleFunc("/", handler)
	err := http.ListenAndServe(bind, nil)

	if err != nil {
		log.Fatal("ListenAndServe: ", err)
	}
}
