# frozen_string_literal: true

require 'minitest/autorun'
require 'calculadora'

class TestCalculadora < Minitest::Test
  def test_soma
    assert_equal(10, Calculadora.soma(8, 2))
  end

  def test_subtracao
    assert_equal(6, Calculadora.subtrai(8, 2))
  end

  def test_multiplica
    assert_equal(16, Calculadora.multiplica(8, 2))
  end

  def test_divide
    assert_equal(4, Calculadora.divide(8, 2))
  end
end
