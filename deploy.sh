#!/bin/bash

# Create .env file for MONGO DB connection"
echo "MONGO_URI=mongodb+srv://ershashi09_db_user:M3dO9l7JkOttJeu6@travel-memory-cluster.qm5fqgo.mongodb.net/students" > .env
echo "Stop deployment if already running..."
sudo systemctl stop flaskapp
echo "Starting deployment..."
sudo systemctl start flaskapp
echo "Application deployed to staging environment!"
