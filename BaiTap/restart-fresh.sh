#!/bin/bash
# Script to restart Docker containers with fresh data

echo "Stopping and removing all containers and volumes..."
docker-compose down -v

echo "Building application..."
mvn clean package -DskipTests

echo "Starting containers..."
docker-compose up -d

echo "Waiting for MySQL to initialize..."
sleep 10

echo "Restarting Tomcat to ensure it connects to initialized MySQL..."
docker restart my-tomcat

echo "Done! Your application should be running at http://localhost:8080/baitap2/"
