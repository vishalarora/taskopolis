require "ffaker"

# Clear the DB
User.destroy_all

# Users
User.create(email: "josh@joshstricklin.com",
            password: "p@ssw0rd",
            password_confirmation: "p@ssw0rd")

User.create(email: "vishal@vishalarora.com",
            password: "p@ssw0rd",
            password_confirmation: "p@ssw0rd")

# Lists & Tasks
6.times do
  user = User.order("RANDOM()").first
  list = List.create(name: FFaker::Skill.specialty, user_id: user.id)

  rand(2..6).times do
    Task.create(description: FFaker::Company.bs,
                due_date: FFaker::Time.between(Time.now - 2.days, Time.now + 1.year).to_date,
                complete: false,
                list_id: list.id,
                user_id: user.id)
  end
end
