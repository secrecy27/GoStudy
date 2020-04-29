package main

import (
	"fmt"
	"github.com/anaskhan96/soup"
	"os"
)

func main() {
	resp, err := soup.Get("https://www.naver.com")
	if err != nil {
		os.Exit(1)
	}
	doc := soup.HTMLParse(resp)
	links := doc.FindAll("a", "class", "nav")
	for _, link := range links {
		fmt.Println(link.Text(), " link : ", link.Attrs()["href"])
	}
}
