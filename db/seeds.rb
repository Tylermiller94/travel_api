class Seed

  def self.begin
    seed = Seed.new
    seed.generate_destinations
  end

  def generate_destinations
    20.times do |i|
      country =
      destination = Destination.create!(
        country = Faker::Address.country
        city = Faker::Address.city
      )
    end
  end
end

Seed.begin
