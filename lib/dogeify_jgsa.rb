require 'dogeify_jgsa/version'
require 'engtagger'

class DogeifyJgsa
  ADJECTIVES = %w(so such very much many).freeze

  def initialize
    @tagger = EngTagger.new
  end

  def process(str)
    # Convers input to lowercase
    str.downcase!

    # Extracts nouns, prefixing each with one of the above adjectives into
    # sentences of two words.
    tagged_str = @tagger.add_tags(str)
    phrases = @tagger.get_nouns(tagged_str).keys
    phrases = phrases.each_with_index.map do |phrase, i|
      "#{adjective(i)} #{phrase}."
    end

    # End every input with "wow".
    phrases << 'wow.'

    # Return a string, separating each sentence with space.
    phrases.join ' '
  end

  private

  def adjective(i)
    ADJECTIVES[i % ADJECTIVES.size]
  end
end
