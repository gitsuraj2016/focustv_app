# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# a = AdminUser.find_by_email('admin@focustv.co')
# if a.blank?
#     a = AdminUser.create!(super_admin: true, email: 'admin@focustv.co', password: 'admin@password!', password_confirmation: 'admin@password!')
#     puts "Created admin user: #{a.email}"
# end

a = AdminUser.find_by_email('lksadmin@focustv.com')
if a.blank?
    a = AdminUser.create!(super_admin: true, email: 'lksadmin@focustv.com', password: 'admin@9600!', password_confirmation: 'admin@9600!',role: 99)
    puts "Created admin user: #{a.email}"
end