namespace :dev do
  desc "Reload the db configuration for a development environment, drop > create > migrate > seed"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Droping db...") { %x(rails db:drop:_unsafe) }

      show_spinner("Creating db...") { %x(rails db:create) }

      show_spinner("Migrating db...") { %x(rails db:migrate) }

      show_spinner("Creating admin...") { %x(rails dev:add_default_admin) }

      show_spinner("Creating user...") { %x(rails dev:add_default_user) }

      %x(rails db:seed)

    else
      puts "You are not in a development enviroment!"
    end
  end

  desc "Adiciona o administrador padrão"
  task add_default_admin: :environment do
    Admin.create!(
        email: 'admin@admin.com',
        password: 123456,
        password_confirmation: 123456
    )
  end

  desc "Adiciona o usuário padrão"
  task add_default_user: :environment do
    User.create!(
        email: 'user@user.com',
        password: 123456,
        password_confirmation: 123456,
        description: 'User',
        telephone: '19 99999-9999',
        ar: '123456',
        can_time: '16:50',
        cant_time: '12:00'
    )
  end

  private

  def show_spinner(msg_start, msg_end = "Done!")
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")
  end

end
