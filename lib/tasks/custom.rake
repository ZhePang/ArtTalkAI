namespace :custom do
  task list_all_arts: :environment do
    arts = Art.all
    arts.each do |a|
      puts "Art(id: #{a.id}, author: #{a.author}, title: #{a.title}, description: #{a.description}, link: #{a.link}, release_date: #{a.release_date})"
    end
  end
end
