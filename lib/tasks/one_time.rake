namespace :one_time do
  desc "create default roles"
  task create_initial_roles: :environment do
    default_roles = [
      {name: 'Developer', description: 'Programmer'},
      {name: 'Tester', description: 'QA'}
    ]
    return if Role.all.present?
    default_roles.each do |role|
      Role.create(role)
    end
    puts 'Successfully created initial roles.'
  end

  desc "create default status"
  task create_initial_status: :environment do
    default_status = [
      {name: 'Failed'},
      {name: 'For Testing'},
      {name: 'Passed'}
    ]
    return if Status.all.present?
    default_status.each do |status|
      Status.create(status)
    end
    puts 'Successfully created initial status.'
  end

  desc "create default issue type"
  task create_initial_issue_type: :environment do
    default_issue_type = [
      {name: 'Bugs'},
      {name: 'Enhancement'}
    ]
    return if IssueType.all.present?
    default_issue_type.each do |issue_type|
      IssueType.create(issue_type)
    end
    puts 'Successfully created initial issue type.'
  end

end
