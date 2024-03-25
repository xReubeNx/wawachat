# Wawachat

This is a pretty basic Ruby on Rails chat app.

It allows users to create an account (as well as log in to existing accounts), create or join a chat room and send messages.
These messages are persisted so the user can jump within multiple chat rooms to see all the messages. 
The messages also update in real time (using Turbo streams).

---

How to Install

1. Clone the repo:
``` bash
  git clone https://github.com/xreubenx/wawachat.git
```

2. Navigate to the project and installd dependencies:
``` bash
  cd wawachat
  bundle install  
```

3. Set up the database:
``` bash
  rails db:create
  rails db:migrate
```

4. Start the server:
``` bash
  rails server
```

5. Visit `http://localhost:3000` in your browser.

