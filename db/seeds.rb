class Seed

  def self.begin
    seed = Seed.new
    seed.generate_destinations
  end

  def generate_destinations
    Destination.destroy_all
    20.times do
      destination = Destination.create!(
        country: Faker::Address.country,
        city: Faker::Address.city
      )

      10.times do
      end
    end
  end
end

Seed.begin
