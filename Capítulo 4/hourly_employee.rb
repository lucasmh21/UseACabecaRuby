# frozen_string_literal: true

# Subclasse empregado horista
class HourlyEmployee < Employe
  attr_reader :hours_value, :hours_per_week

  def initialize(name, hours_value, hours_per_week)
    super(name)
    self.hours_value = hours_value
    self.hours_per_week = hours_per_week
  end

  def hours_value=(hours_value)
    raise 'Horas trabalhadas inválida' if hours_value <= 0

    @hours_value = hours_value
  end

  def hours_per_week=(hours_per_week)
    raise 'Horas semanais inválida' if hours_per_week <= 0

    @hours_per_week = hours_per_week
  end

  def calc_payment
    format('%0.2f', (2.0 * hours_per_week * hours_value))
  end
end
