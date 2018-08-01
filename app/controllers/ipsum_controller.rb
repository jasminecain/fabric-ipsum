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
    get_words(num)
    # if @ipsum.valid?
    #   render json: @ipsum
    # else
    #   render json: @ipsum.errors, status: :unprocessable_entity
    # end
    # @ipsum.save
    # render plain: params[:model].inspect
  end

  private
  def get_words
    wordArr = [] # wordArr = from seed file
    randomwords = wordArr.sample(12)
    paragraphnum = 5 # change num to input value
    paragraphnum * randomwords.count
  end
      # query for sum of words
      # @ipsum = Ipsum.all

      # array of words; build sentence
    end
end
