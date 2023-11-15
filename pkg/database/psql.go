package database

import (
	"database/sql"
	"fmt"
)

type ConnectionInfo struct {
	Username string
	DBName   string
	SSLMode  string
}

func NewPostgresConnection(info ConnectionInfo) (*sql.DB, error) {
	db, err := sql.Open("postgres", fmt.Sprintf("user=%s dbname=%s sslmode=%s",
		info.Username, info.DBName, info.SSLMode))
	if err != nil {
		return nil, err
	}

	if err := db.Ping(); err != nil {
		return nil, err
	}

	return db, nil
}
