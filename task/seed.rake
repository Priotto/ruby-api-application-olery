desc 'Seeds the db'

task :seed do
    require_relative '../config/application'

    puts 'Generating data..'
    ['Company 1', 'Company 2', 'Company 3' ].each do |name|
      DB[:contracts].insert({ name: name, start_date: Time.now })
    end

    ['User 1', 'User 2', 'User 3' ].each do |name|
      DB[:users].insert({ name: name, email: "#{name}@email.com" })
    end

    ['Hotel 1', 'Hotel 2', 'Hotel 3' ].each do |name|
      DB[:hotels].insert({ name: name})
    end

    ['Hotels_group 1', 'Hotels_group 2', 'Hotels_group 3' ].each do |name|
      DB[:hotels_groups].insert({ name: name})
    end

    ['Group 1', 'Group 2', 'Group 3' ].each do |name|
      DB[:groups].insert({ name: name})
    end

    ['Group_subscription 1', 'Group_subscription 2', 'Group_subscription 3' ].each do |name|
      DB[:group_subscriptions].insert({ name: name})
    end
end
