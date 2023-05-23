# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

admin_user = User.create(name: 'Administrator', email: 'admin@example.com', google_account_id: 1,  role: 'Administrator', password: 'password')
executive_user = User.create(name: 'Support Executive', email: 'executive@example.com',google_account_id: 2, role: 'Support Executive', password: 'password')
supervisor_user = User.create(name: 'Supervisor', email: 'supervisor@example.com',google_account_id: 3, role: 'Supervisor', password: 'password')
registered_user1 = User.create(name: 'John Doe', email: 'john@example.com', google_account_id: 4,role: 'Registered User', password: 'password')
registered_user2 = User.create(name: 'Jane Smith', email: 'jane@example.com', google_account_id: 5,role: 'Registered User', password: 'password')
Report.create(report_id: 1, supervisor_id: 1, report_type: "Type A", date: Date.today, data: "Sample report data")
Report.create(report_id: 2, supervisor_id: 2, report_type: "Type B", date: Date.today, data: "Another report data")
Report.create(report_id: 3, supervisor_id: 1, report_type: "Type C", date: Date.today, data: "Additional report data")
Report.create(report_id: 4, supervisor_id: 3, report_type: "Type A", date: Date.today, data: "More report data")
Report.create(report_id: 5, supervisor_id: 2, report_type: "Type B", date: Date.today, data: "Extra report data")
Ticket.create(user_id: 1, executive_id: 2, supervisor_id: 3, title: "Ticket A", description: "Sample ticket description", priority: "High", due_date: Date.today + 7.days, status: "Open", star_rating: 4, comment: "Ticket comment")
Ticket.create(user_id: 2, executive_id: 3, supervisor_id: 1, title: "Ticket B", description: "Another ticket description", priority: "Medium", due_date: Date.today + 5.days, status: "In Progress", star_rating: 5, comment: "Another ticket comment")
Ticket.create(user_id: 3, executive_id: 1, supervisor_id: 2, title: "Ticket C", description: "Additional ticket description", priority: "Low", due_date: Date.today + 10.days, status: "Closed", star_rating: 3, comment: "Additional ticket comment")
Ticket.create(user_id: 2, executive_id: 3, supervisor_id: 1, title: "Ticket D", description: "More ticket description", priority: "High", due_date: Date.today + 3.days, status: "Open", star_rating: 4, comment: "More ticket comment")
Ticket.create(user_id: 1, executive_id: 2, supervisor_id: 3, title: "Ticket E", description: "Extra ticket description", priority: "Medium", due_date: Date.today + 8.days, status: "In Progress", star_rating: 2, comment: "Extra ticket comment")
