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
    random_num = num * rand(8..12)
    @ipsum = Ipsum.limit(random_num)
  end
end
