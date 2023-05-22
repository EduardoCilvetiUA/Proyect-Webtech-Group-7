# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

admin_user = User.create(name: 'Administrator', email: 'admin@example.com', role: 'Administrator')
executive_user = User.create(name: 'Support Executive', email: 'executive@example.com', role: 'Support Executive')
supervisor_user = User.create(name: 'Supervisor', email: 'supervisor@example.com', role: 'Supervisor')
registered_user1 = User.create(name: 'John Doe', email: 'john@example.com', role: 'Registered User')
registered_user2 = User.create(name: 'Jane Smith', email: 'jane@example.com', role: 'Registered User')
Ticket.create(
  title: 'Bug Fix',
  description: 'Fix the issue with the login functionality',
  priority: 'High',
  due_date: Date.today + 7,
  status: 'Open',
  star_rating: 4,
  comment: 'This is an urgent bug that needs to be fixed'
)

Report.create(
  supervisor_id: 1, # Replace with the actual supervisor ID
  report_type: 'Executive Performance',
  date: Date.today,
  data: 'Executive performance metrics for the month of May',
)
