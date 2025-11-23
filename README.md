# Assignment1: Jenkins CI CD pipeline for flask application

* Jenkins SCM configuration
  <img width="1472" height="895" alt="SCM configuration" src="https://github.com/user-attachments/assets/1e61ce8f-e0c3-4227-aec9-b8c8398da993" />
* Github Webhook Config
  <img width="992" height="963" alt="webhook" src="https://github.com/user-attachments/assets/e8442dbd-32e8-4a2a-b4ca-0c8af5a520bc" />
* Pytest installation
  <img width="1006" height="553" alt="pytest installed" src="https://github.com/user-attachments/assets/291df5dd-68df-4e0e-b093-b5d072f3144b" />  
* Jenkins Console Output
  <img width="1443" height="976" alt="console-output" src="https://github.com/user-attachments/assets/8a63a8cd-477f-4499-9d0b-d58923637d43" />  
* Email Notification  
  <img width="466" height="182" alt="email" src="https://github.com/user-attachments/assets/b2274a7f-2fa9-4263-8243-4be8367dc589" />  
* Application status
  <img width="1322" height="120" alt="app started" src="https://github.com/user-attachments/assets/456b4684-9329-46b1-88ec-77a1ecc34b16" />  

# Student Registration System

A simple **Flask** web application to manage student records with **MongoDB** as the backend database. Users can **add, view, update, and delete** student details.

---

## Features

* List all students on the home page
* Add a new student
* Update existing student details
* Delete a student with confirmation
* Simple and responsive UI using Bootstrap

---

## Tech Stack

* **Backend:** Python, Flask
* **Database:** MongoDB (via Flask-PyMongo)
* **Frontend:** HTML, Jinja2 templates, Bootstrap 5
* **Environment Variables:** Managed via `.env` file

---

## Setup Instructions

### 1. Clone the repository

```bash
git clone <your-repo-url>
cd <repo-folder>
```

### 2. Create and activate a virtual environment

```bash
python -m venv venv
# Activate venv
# Windows:
venv\Scripts\activate
# Linux / Mac:
source venv/bin/activate
```

### 3. Install dependencies

```bash
pip install -r requirements.txt
```

**`requirements.txt` example:**

```
Flask
Flask-PyMongo
python-dotenv
bson
```

### 4. Configure environment variables

Create a `.env` file in the project root:

```
MONGO_URI=<your-mongodb-connection-string>
SECRET_KEY=<your-secret-key>
```

### 5. Run the application

```bash
python app.py
```

Open your browser at: [http://localhost:8000](http://localhost:8000)

---

## Project Structure

```
project/
│
├── templates/
│   ├── base.html
│   ├── index.html
│   ├── add_student.html
│   ├── update_student.html
│
├── app.py
├── requirements.txt
└── .env
```

---

## Screenshots

**Home Page**
Lists all students with Edit/Delete buttons.
- <img width="1902" height="607" alt="image" src="https://github.com/user-attachments/assets/a58a6a6d-4978-4769-8074-232e4d31e69d" />


**Add Student**
Form to add a new student.
- <img width="1897" height="801" alt="image" src="https://github.com/user-attachments/assets/d65d25c3-ebb5-410a-adb1-e130ad7c5878" />


**Update Student**
Form pre-filled with student details.
- <img width="1905" height="897" alt="image" src="https://github.com/user-attachments/assets/04febf01-879f-431f-ab07-abcfb993acf1" />



---

## Notes

* Make sure MongoDB is running and accessible via the URI in `.env`
* Delete action includes a confirmation page to prevent accidental deletion
* Uses `ObjectId` from `bson` to work with MongoDB document IDs

---

## License

MIT License

---






