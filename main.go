package main

import (
	"log"
	"net/http"
	"github.com/elazarl/goproxy"
)

func main() {
	proxy := goproxy.NewProxyHttpServer()
	proxy.Verbose = true
	log.Fatal(http.ListenAndServeTLS(":443", "server.crt", "server.key", proxy))
}
