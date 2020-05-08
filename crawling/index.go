package main

import (
	"encoding/json"
	"fmt"
	"github.com/anaskhan96/soup"
	"github.com/labstack/echo/v4"
	"net/http"
	"os"
)

type Thumb struct {
	//Thumb []string `/json:"thumb" xml:"thumb"`
	Url string `json:"url" xml:"url"`
}

func main() {
	// Echo instance
	e := echo.New()

	// Middleware
	//e.Use(middleware.Logger())
	//e.Use(middleware.Recover())

	// Routes
	e.GET("/", hello)
	e.GET("/news", news)
	e.GET("/keywords/:keyword", keywords)

	// Start server
	e.Start(":1323")
	//e.Logger.Fatal(e.Start(":1323"))
}

func keywords(c echo.Context) error {
	name := c.Param("keyword")
	fmt.Println("name", name)
	resp, err := soup.Get("https://search.naver.com/search.naver?query=" + name)
	if err != nil {
		os.Exit(1)
	}
	doc := soup.HTMLParse(resp)
	blogThumbs := doc.FindAll("a", "class", "thumb")

	var u []Thumb

	for index, thumb := range blogThumbs {
		//fmt.Println(index, " link : ", thumb.Attrs()["href"])
		//u.Thumb[index]=thumb.Text();
		//a := extractData(thumb.Attrs()["href"])
		text := Thumb{Url: thumb.Attrs()["href"]}
		//fmt.Println("-----------", text)
		//fmt.Println("==========", text.Url)
		fmt.Println(index , " 1 ",text)
		//u = append(u, text)
		//s, _ := strconv.Unquote(text.Url)
		//fmt.Println(index, s)
		//u = append(u, Thumb{Url: s})
		json.Unmarshal([]byte(thumb.Attrs()["href"]), &u)
		u = append(u, Thumb{Url:thumb.Attrs()["href"]})

	}
	c.Response().Header().Set(echo.HeaderContentType, echo.MIMEApplicationJSON)
	c.Response().WriteHeader(http.StatusOK)
	//return json.NewEncoder(c.Response()).Encode(u)
	//return c.JSON(http.StatusOK, u)
	return c.JSONPretty(http.StatusOK, u, "  ")
}

func news(c echo.Context) error {
	resp, err := soup.Get("https://www.naver.com")
	if err != nil {
		os.Exit(1)
	}
	doc := soup.HTMLParse(resp)
	links := doc.FindAll("a", "class", "nav")

	for _, link := range links {
		fmt.Println(link.Text(), " link : ", link.Attrs()["href"])
	}
	return c.String(http.StatusOK, "links")
}

// Handler
func hello(c echo.Context) error {
	return c.String(http.StatusOK, "Hello, World!")
}

func extractData(i string) Thumb {
	return Thumb{
		Url: i,
	}
}
