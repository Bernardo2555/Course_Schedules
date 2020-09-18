namespace :dev do
  desc "Reload the db configuration for a development environment, drop > create > migrate > seed"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Droping db...") { %x(rails db:drop:_unsafe) }

      show_spinner("Creating db...") { %x(rails db:create) }

      show_spinner("Migrating db...") { %x(rails db:migrate) }

      %x(rails db:seed)

    else
      puts "You are not in a development enviroment!"
    end
  end

  private

  def show_spinner(msg_start, msg_end = "Done!")
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")
  end

end
