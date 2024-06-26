## Table of Contents

- [Introduction](#introduction)
- [Demo Youtube](#demo-youtube)
- [Installation](#installation)
- [Prepare environnement](#prepare-environnement)
- [Role in the project](#role-in-the-project)
- [Notes](#notes)

## Introduction
This is a PHP project where the goal is to create a e-commerce website. Users would be able to create an account on the platform, and publish their own products to sell or buy.

## Demo Youtube
#### Click on the image
[![Watch the video](https://img.youtube.com/vi/ZtMCAN9AFzk/maxresdefault.jpg)](https://www.youtube.com/watch?v=ZtMCAN9AFzk)

## Installation

### XAMPP
In our project we are using XAMPP (Apache, MariaDb, Php, Perl) with X meaning that it works on any platform.
For example, LAMP only works on Linux while WAMP only works on Windows.

Here's the link to download XAMPP : 
• https://www.apachefriends.org/download.html

## Prepare environnement

### XAMPP Modules
For the project to work, you must enable the **Apache** and **MySql** modules.

### XAMPP htdocs files
When using XAMPP, we'll need to transfer all necessary files to htdocs/ in the XAMPP folder. Copy the cloned folder and put it inside the **htdocs/"chooseNameFolder"** folder inside the installation folder for XAMPP. 

Personnally, I have created a new folder inside htdocs/ where I have put all the necessary files.

### XAMPP Port 3306 MySql
Be cautious, if you have anything else running on the 3306 socket, like WAMP or a MySql command line client, XAMPP's MySql will
not work.

### Send email
Once the user has created their account, a verification email will be sent. However, for that to work, XAMPP must be properly configured beforehands.

**(1)** Generate an App Password
- Go to your Google Account settings.
- Navigate to the **Security** tab.
- Under the **How you sign in to Google**, click on **2-Step Verification**.
- At the bottom, click on **App passwords**, and create an app. Google will give you a password for that app.

**(2)** Configure XAMPP
- Open the **php.ini** file inside **XAMPP\php\php.ini**
- Update the following settings
```
SMTP=smtp.gmail.com
smpt_port=587
sendmail_from = your-email@gmail.com
sendmail_path = "\"C:\xampp\sendmail\sendmail.exe\" -t"
```
- **NOTES**
- your-email@gmail is referencing the gmail account email addrress where you have created the app password.
- sendmail_path = ..., this is a default installation folder, if you have installed your XAMPP somewhere else, the path must be modified.


**(3)** Configure Sendmail
- Open the **sendmail.ini** file inside **XAMPP\sendmail\sendmail.ini**
- Update the following settings
```
smtp_server=smtp.gmail.com
smpt_port=587
auth_username=your-email@gmail.com
auth_password=your-app-password
```

- **NOTES**
- your-email@gmail is referencing the gmail account email addrress where you have created the app password.
- auth_password=your-app-password, this is where you'll put the given password by Google when you created the app. If you don't have anymore, you can just create another one.

**(3)** Restart Apache
- Restart Apache server for the effects to be taken into account.

**IMPORTANT** <br>
Be careful as to not have any **;** (semicolon) preceding the aforementioned settings to update. This means that the line will be considered a comment and will not be taken into account.

## Role in the project
This project has been made by two people, myself included. My part consisted of handling the backend, while the frontend has been done by the other member hence the distinct folders **Backend** and **FrontEnd**. <br>

I have used a MVC (Model-View-Controller) architecture to better organize the website functions. All the work inside the **Backend** folder has been completed by me.

## Notes
• If a not connected user tries to add a product to their cart, an error is returned instead of being redirected to the login page.

• As seen in the video, checking out does not include a paying system.
