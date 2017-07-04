print '*** Create Roles ***'

%w(user administrator super-administrator).each do |name|
  Role.create(name: name)
end

print '*** Create Users ***'

user = User.create(email: 'user@connect-lifes.com', password: 'password', confirmed_at: Time.now)
user.add_role 'user'

admin = User.create(email: 'administrator@connect-lifes.com', password: 'password', confirmed_at: Time.now)
admin.add_role 'administrator'

superadmin = User.create(email: 'superadministrator@connect-lifes.com', password: 'password', confirmed_at: Time.now)
superadmin.add_role 'super-administrator'
