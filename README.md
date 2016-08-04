# Jot-It

Jot-It is a lightweight note taking web app made with Ruby on Rails.

### User Stories

- When a user accesses the page, they should see the app’s logo at the top.

- A user should see a place to either log in or sign up near the logo.

- A user should be able to click around to static pages (about, contact) even when not signed in.

- Once logged in, a user should only be able to see their notes and not the notes of any other user.

- A user should be able to know that they are logged in once they have entered the correct credentials because the navigation will say something like “you are logged in as ____”.

- A user should be able to create new notes with ease and see that they are saved when they press "submit."

- A user should be able to view their note.

- A user should be able to edit their notes.

- A user should be able to delete their notes (and be confirmed of this by being brought back to their dashboard).

- A user should be able to sign out and know they are signed out (brought back to welcome/landing page).

### MVPs:

- Have a welcome/landing page where users can log in, sign up or click around to learn more about the jot-it app

- Sign up/log in pages will sit under the Jot-It logo in the div closest to the top of the page

- Create a user index of all notes (“dashboard”) for when a user logs into their account so that they can see all of their past notes there

- Have a show page for each note that will clearly show the user the date the note was created, the title, last updated date and note contents

- Have a “view” button for each note on the user’s notes index page (“dashboard”)

- Have an “edit” button for each note, that will show inside of the note’s show page, and on the user’s notes index page (“dashboard”)

- Have a “delete” button for each note, that will show inside of the note’s show page, and on the user’s notes index page (“dashboard”)

- Use and find icons for: jot-it app logo, a new note’s creation, “view”, “edit”, “delete”

### Stretch Goals & Dreams

- Have the user log in using their username OR email address (currently Devise has users create accounts and login by email only)

- Maybe have some sort of demo on the main welcome/landing page

- Organize notes on user’s dashboard by date (or maybe randomize it)

- Add additional fields to a user’s note (mood, music?)

- Add fun js/css things to notes

- Incorporate different media types into notes (images, audio files, etc)

### Configuration

* Devise for authentication, bcrypt for encryption

### Database creation

* PostgresQL, MySQL

### Deployment instructions

* Heroku will be used for app deployment


* ...
