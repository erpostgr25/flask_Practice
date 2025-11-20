#!/bin/bash

# Create .env file for MONGO DB connection"
echo "MONGO_URI=mongodb+srv://ershashi09_db_user:M3dO9l7JkOttJeu6@travel-memory-cluster.qm5fqgo.mongodb.net/students" > .env

echo "Starting deployment..."
# Stop any already running instance
pkill -f "python3 app.py" 2>/dev/null || true
# Start the application in background
setsid nohup python3 app.py > app.log 2>&1 < /dev/null &
sleep 2
echo "Application deployed to staging environment!"
