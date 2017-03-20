class TextsController < ApplicationController
  def index
    @texts = Text.all
    render 'index.json.jbuilder'
  end

  def create
    @text = Text.new(
      title: params[:title],
      file: params[:file]
    )
    @text.save
    render 'show.json.jbuilder'
  end

  def count_words(string)
    words = string.split(' ')
    frequency = Hash.new(0)
    words.each { |word| frequency[word.downcase] += 1 }
    frequency
  end

  def show
    @text = Text.find_by(id: params[:id])
    @counts = count_words(@text.file)
    render 'show.json.jbuilder'
  end
end
