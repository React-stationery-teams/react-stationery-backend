package main

import (
	"fmt"
	"log"
	"os"

	"github.com/React-stationery-teams/react-stationery-backend/pkg/database"
	"github.com/joho/godotenv"
	_ "github.com/lib/pq"
)

func main() {
	err := godotenv.Load("../.env")
	if err != nil {
		log.Fatal("Error loading .env file")
	}

	db, err := database.NewPostgresConnection(database.ConnectionInfo{
		Username: os.Getenv("DB_USER"),
		DBName:   os.Getenv("DB_NAME"),
		SSLMode:  os.Getenv("DB_SSL"),
	})
	if err != nil {
		log.Fatal(err)
	}

	fmt.Println("DB", db)
	defer db.Close()

}
