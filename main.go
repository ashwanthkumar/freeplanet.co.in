package main

import (
	"fmt"

	"github.com/mmcdole/gofeed"
)

// Version of the application, available via ./freeplanet version
var Version = "dev-build"

func main() {
	fp := gofeed.NewParser()
	feed, _ := fp.ParseURL("https://medium.com/feed/@ashwanthkumar")
	fmt.Println(feed.Title)

	fmt.Println("Hello World")
}
