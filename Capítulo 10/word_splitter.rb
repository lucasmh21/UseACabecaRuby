# frozen_string_literal: true

# Classe que separa palavras contidas dentro de uma string
class WordSplitter
  include Enumerable
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def each
    text.split(' ').each do |word|
      yield word
    end
  end
end
