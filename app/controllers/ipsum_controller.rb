class IpsumController < ApplicationController
  def index
    # @ipsum = Ipsum.new
    # @ipsum = Ipsum.all
    # render json: @ipsum
  end

  def show

  end

  def new
    @ipsum = Ipsum.new
  end

  def generate
    get_words(params[:num])
    # if @ipsum.valid?
    #   render json: @ipsum
    # else
    #   render json: @ipsum.errors, status: :unprocessable_entity
    # end
    # @ipsum.save
    # render plain: params[:model].inspect
  end

  private
  def get_words(num)
    random_num = rand(8..12).to_i * 5 * num.to_i # change num to input value
    ipsum_arr = Ipsum.limit(random_num).pluck('word')
    binding.pry

    words_per_sent = random_num / num.to_i #words per sentence
    ipsum_arr.slice(55).join(' ')

    # ipsum_arr.each do
    #   ipsum_arr.slice!(55)
    # end

    # period = "."
    # input = num.to_i
    # input.times do
    #   period
    #   puts " "
    end
  end

  # def build_sentences(array) # array of words @ipsum; build sentence
  #   ipsum_arr.join(' ').capitalize << "."
  # end

  # def build_paragraph #array of sentences with "."

  # end
end
