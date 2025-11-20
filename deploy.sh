#!/bin/bash

# Create .env file for MONGO DB connection"
echo "MONGO_URI=mongodb+srv://XXXXX:XXXXX@travel-memory-cluster.qm5fqgo.mongodb.net/students" > .env
echo "Stop deployment if already running..."
sudo systemctl stop flaskapp
echo "Starting deployment..."
sudo systemctl start flaskapp
echo "Application deployed to staging environment!"
