# frozen_string_literal: true

# Subclasse empŕegado assalariado
class SalariedEmployee < Employe
  attr_reader :salary

  def initialize(name, salary)
    super(name)
    self.salary = salary
  end

  def salary=(salary)
    raise 'Salário inválido' if salary <= 0

    @salary = salary
  end

  def calc_payment
    format('%0.2f', salary / 15.0)
  end
end
