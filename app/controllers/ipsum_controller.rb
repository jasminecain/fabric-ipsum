class IpsumController < ApplicationController
  def index
    @paragraph_arr ||= []
  end

  def generate
    words = get_words(params[:num])

    if words.present?
      render :index
    end

    # if @ipsum.valid?
    #   render json: @ipsum
    # else
    #   render json: @ipsum.errors, status: :unprocessable_entity
    # end
    # @ipsum.save
    # render plain: params[:model].inspect
  end

  # private
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

    @paragraph_arr
  end
end
