print '*** Create Roles ***'

%w(user admin super-admin).each do |name|
  Role.create(name: name)
end

print '*** Create Users ***'

user = User.create(email: 'user@connect-lifes.com', password: 'password', confirmed_at: Time.now)
user.add_role 'user'

admin = User.create(email: 'admin@connect-lifes.com', password: 'password', confirmed_at: Time.now)
admin.add_role 'admin'

superadmin = User.create(email: 'superadmin@connect-lifes.com', password: 'password', confirmed_at: Time.now)
superadmin.add_role 'super-admin'
