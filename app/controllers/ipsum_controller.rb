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
    binding.pry
      # multiply number of paragraphs by words
      # sum randomize between 8-12 words by muliplier of input
      # query for sum of words
      # array of words
    end
end
