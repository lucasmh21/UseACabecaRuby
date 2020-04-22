# frozen_string_literal: true

# Classe que representa carro
class Car
  attr_accessor :power

  def turn_on
    @power = true
  end

  def turn_off
    @power = false
  end

  def drive(destination)
    if destination.upcase == 'HAWAII'
      raise CarException, "You can't drive to Hawaii"
    end

    raise CarException, 'The car is power off' unless power
  end
end

# Classe que representa erro no carro
class CarException < StandardError
end

begin
  car = Car.new
  car.turn_on
  car.drive 'Brazil'
  car.drive 'Hawaii'
rescue CarException => e
  puts e.message
ensure
  car.turn_off
end
