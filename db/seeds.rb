User.delete_all
Game.delete_all

User.create! email: "batman@gmail.com", password: "Password!1", password_confirmation: "Password!1", created_at: Time.now
User.create! email: "superman@gmail.com", password: "Password!1", password_confirmation: "Password!1", created_at: Time.now - 1.day
User.create! email: "wonderwoman@gmail.com", password: "Password!1", password_confirmation: "Password!1", created_at: Time.now - 1.day
User.create! email: "greenlantern@gmail.com", password: "Password!1", password_confirmation: "Password!1", created_at: Time.now - 1.day
User.create! email: "flash@gmail.com", password: "Password!1", password_confirmation: "Password!1", created_at: Time.now - 4.day
User.create! email: "cyborg@gmail.com", password: "Password!1", password_confirmation: "Password!1", created_at: Time.now - 5.day
User.create! email: "martianmanhunter@gmail.com", password: "Password!1", password_confirmation: "Password!1", created_at: Time.now - 5.day

Game.create(name: "CS:GO")
Game.create(name: "World of Warcraft")
Game.create(name: "Hearthstone")
Game.create(name: "Call of Duty: Infinite Warfare")
Game.create(name: "Hello Kitty Island Adventure")
