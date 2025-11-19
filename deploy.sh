#!/bin/bash

# Create .env file for MONGO DB connection"
echo "mongodb+srv://ershashi09_db_user:M3dO9l7JkOttJeu6@travel-memory-cluster.qm5fqgo.mongodb.net" > ${PWD}/.env

echo "Starting deployment..."
# Stop any already running instance
pkill -f "python app.py" 2>/dev/null

# Start the application in background
nohup python ${PWD}/app.py > app.log 2>&1 &

echo "Application deployed to staging environment!"
