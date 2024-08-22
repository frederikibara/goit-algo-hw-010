# Address Book Management 

# Update 0.0.7 
   - Added Dockerfile with customizable commands
   - Created and customized a virtual environment with the Poetry library

# Link for download docker image from docker hub
  https://hub.docker.com/repository/docker/fred99/phonebook/general
  ![146-1469802_logo-logo-docker](https://github.com/user-attachments/assets/4a8070ca-2589-4d74-a2a6-2f1e94616472)

# setup command and run
 Create docker container : docker build -t <image_name> .
 Run container : docker run -it <image_name> /bin/bash
 
 Go into container : docker exec -it <image_name> /bin/bash
    - use for start bot : python main.py
    
 docker stop <container ID> : stopping container
 docker start <container ID> : startup container

## Description

The assistant-bot provides the following functions:
- Adding and editing contacts
- Adding and deleting phone numbers
- Adding birthdays
- Deleting contacts and clearing the entire address book
- Searching and displaying contact information
- Display upcoming birthdays


### Commands

    - hello : Just a greeting.
    - add <name> <phone> : Adds a new contact.
    - mod <name> <new_phone>: Updates an existing contact.
    - del <name> Deletes an existing contact.
    - phone <name>: Displays the contact's phone number.
    - all: Displays all contacts.
    - clear: Deletes all contacts.  
    - add-b <name> <DD.MM.YYYY> : Adds a birthday date
    - show-b <name> : Shows a birthday date
    - b-days : displays a list of birthdays for the next 7 days
    - exit or close: Exits the program.

## Usage
assistant_bot/python main.py


# UML classes Diagram for -> Address Book Management
![UML_AddressBookAssistantBot](https://github.com/frederikibara/goit-algo-hw-09/blob/main/UML_AddressBookAssistantBot%20.png)

