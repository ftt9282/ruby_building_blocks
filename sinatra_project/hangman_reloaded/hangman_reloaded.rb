require 'sinatra'
require 'sinatra/reloader' if development?

class Word
  attr_reader :guesses_left
  def initialize
  	@word = get_random_word
  	@hidden_word = ["_"] * @word.length
  	@guesses_so_far = []
  	@guesses_left = 8
  end

  def get_random_word
  	word_array = []
	File.readlines("english_words_basic.txt").each do |line|
      word_array << line
    end
    random_num = rand(word_array.size + 1)
    word_array[random_num].chomp
  end

  def update_word(guess)
  	@guesses_so_far << guess
    positions = @word.enum_for(:scan, guess).map { Regexp.last_match.begin(0) }
    positions.each do |i|
      @hidden_word[i] = guess
    end
    @guesses_left -= 1 if positions.empty?
  end

  def show_word
    @hidden_word.join(" ")
  end

  def show_guesses
  	@guesses_so_far.join(" ")
  end
end

hidden_word = Word.new

get "/" do 
  guessed_letter = params["guessed_letter"]
  if guessed_letter != nil
  	hidden_word.update_word(guessed_letter)
  end
  word = hidden_word.show_word
  guesses = hidden_word.show_guesses
  guesses_left = hidden_word.guesses_left
  if guesses_left
  erb :index, :locals => { :word => word, :guesses => guesses, :guesses_left => guesses_left }
end