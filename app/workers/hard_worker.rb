class HardWorker
  include Sidekiq::Worker

  def perform(name, count)
    puts 'Doing hard work'
    Cat.create(:name=>"next one")
  end
end
