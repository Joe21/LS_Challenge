User.delete_all

User.create! email: "batman@gmail.com", password: "Password!1", password_confirmation: "Password!1", created_at: Time.now
User.create! email: "superman@gmail.com", password: "Password!1", password_confirmation: "Password!1", created_at: Time.now - 1.day
User.create! email: "wonderwoman@gmail.com", password: "Password!1", password_confirmation: "Password!1", created_at: Time.now - 1.day
User.create! email: "greenlantern@gmail.com", password: "Password!1", password_confirmation: "Password!1", created_at: Time.now - 1.day
User.create! email: "flash@gmail.com", password: "Password!1", password_confirmation: "Password!1", created_at: Time.now - 4.day
User.create! email: "cyborg@gmail.com", password: "Password!1", password_confirmation: "Password!1", created_at: Time.now - 5.day
User.create! email: "martianmanhunter@gmail.com", password: "Password!1", password_confirmation: "Password!1", created_at: Time.now - 5.day

