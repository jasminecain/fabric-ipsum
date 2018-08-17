class IpsumController < ApplicationController
  def index
  end

  def show

  end

  def new
    @ipsum = Ipsum.new
  end

  def generate
    get_words(params[:num])
  end

  private
  def get_words(num)
    rand_range = rand(8..12).to_i
    rand_sentences = rand(4..6).to_i
    random_num = rand_range * rand_sentences * num.to_i
    word_arr = Ipsum.limit(random_num).pluck('word')

    @sentence_arr = []
    @paragraph_arr = []

    while word_arr.count > 0
      @sentence_arr << word_arr.slice!(0, rand(8..12).to_i).join(' ')
    end

    @sentence_arr.map!{|s| s.capitalize << '.'}

    while @sentence_arr.count > 0
      @paragraph_arr << @sentence_arr.slice!(0, rand(4..6).to_i).join(' ')
    end

    # @paragraph_arr.map!{|p| p << '\n'}
    # binding.pry
  end
end
