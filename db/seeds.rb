require "ffaker"

# Clear the DB
User.destroy_all

# Users
User.create(first_name: "Josh",
            last_name: "Stricklin",
            email: "josh@joshstricklin.com",
            password: "p@ssw0rd",
            password_confirmation: "p@ssw0rd")

User.create(first_name: "Vishal",
            last_name: "Arora",
            email: "vishal@vishalarora.com",
            password: "p@ssw0rd",
            password_confirmation: "p@ssw0rd")

# Admin
User.create(email: "admin@taskopolis.com",
            password: "p@ssw0rd",
            password_confirmation: "p@ssw0rd",
            admin: true)

# Resources
resources = ["Wood", "Steel", "Stone", "Glass", "Bricks"]
resources.each_with_index do |resource, index|
  Resource.create(name: resources[index], value: index * 100)
end

# Lists & Tasks
6.times do
  user = User.where(admin: false).order("RANDOM()").first
  list = List.create(name: FFaker::Skill.specialty, user_id: user.id)

  rand(2..6).times do
    set_due_date = [true, false].sample

    task = Task.create(description: FFaker::Company.bs,
                       complete: false,
                       list_id: list.id,
                       user_id: user.id)

    if set_due_date
      task.due_date = FFaker::Time.between(Time.now - 1.week, Time.now + 2.months).to_date
      task.save!
    end
  end
end
