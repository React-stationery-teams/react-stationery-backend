package main

import (
	"fmt"
	"log"

	"github.com/React-stationery-teams/react-stationery-backend/pkg/database"
	_ "github.com/lib/pq"
)

func main() {
	db, err := database.NewPostgresConnection(database.ConnectionInfo{
		Host:     "localhost",
		Port:     5432,
		Username: "aleksandrnab",
		DBName:   "postgres",
		SSLMode:  "disable",
	})
	if err != nil {
		log.Fatal(err)
	}

	fmt.Println("DB", db)
	defer db.Close()

}
