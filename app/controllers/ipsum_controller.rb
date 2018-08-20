class IpsumController < ApplicationController
  def index
    @paragraph_arr ||= []
  end

  def generate
    words = get_words(params[:num])
    sentences = get_sentences(words)
    paragraphs = get_paragraphs(sentences)

    if paragraphs.present?
      render :index
    end
  end

  private
  def get_words(num)
    rand_range = rand(8..12).to_i
    rand_sentences = rand(4..6).to_i
    random_num = rand_range * rand_sentences * num.to_i
    word_arr = Ipsum.limit(random_num).pluck('word')
  end

  def get_sentences(word_arr)
    @sentence_arr = []

    while word_arr.count > 0
      @sentence_arr << word_arr.slice!(0, rand(8..12).to_i).join(' ')
    end

    @sentence_arr.map!{|s| s.capitalize << '.'}
  end

  def get_paragraphs(sentence_arr)
    @paragraph_arr = []

    while @sentence_arr.count > 0
      @paragraph_arr << @sentence_arr.slice!(0, rand(4..6).to_i).join(' ')
    end

    @paragraph_arr
  end
end
