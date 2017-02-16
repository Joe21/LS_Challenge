User.delete_all

User.create! email: "batman@gmail.com", password: "password", password_confirmation: "password", created_at: Time.now
User.create! email: "superman@gmail.com", password: "password", password_confirmation: "password", created_at: Time.now - 1.day
User.create! email: "wonderwoman@gmail.com", password: "password", password_confirmation: "password", created_at: Time.now - 1.day
User.create! email: "greenlantern@gmail.com", password: "password", password_confirmation: "password", created_at: Time.now - 1.day
User.create! email: "flash@gmail.com", password: "password", password_confirmation: "password", created_at: Time.now - 4.day
User.create! email: "cyborg@gmail.com", password: "password", password_confirmation: "password", created_at: Time.now - 5.day
User.create! email: "martianmanhunter@gmail.com", password: "password", password_confirmation: "password", created_at: Time.now - 5.day