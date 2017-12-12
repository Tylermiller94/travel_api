class Seed

  def self.begin
    seed = Seed.new
    seed.generate_destinations
    Destination.destroy_all
  end

  def generate_destinations
    20.times do |i|
      destination = Destination.create!(
        country: Faker::Address.country,
        city: Faker::Address.city
      )
    end
  end
end

Seed.begin
