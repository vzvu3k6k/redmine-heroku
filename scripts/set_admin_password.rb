# frozen_string_literal: true

admin_password = ENV['ADMIN_PASSWORD']
abort 'ADMIN_PASSWORD must not be empty.' if admin_password.blank?
User.find_by!(login: 'admin').update!(password: ENV['ADMIN_PASSWORD'])
puts %{The initial admin password is "#{admin_password}".}
