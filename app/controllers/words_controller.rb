class WordsController < ApplicationController
  before_action :set_word, only: [:show, :edit, :update, :destroy]

  # GET /words
  # GET /words.json
  def index
    dictionary = Dictionary.find(params[:dictionary_id])
    @words = dictionary.words
  end

  # GET /words/1
  # GET /words/1.json
  def show
  end

  # GET /words/new
  def new
    dictionary = Dictionary.find(params[:dictionary_id])
    @word = dictionary.words.build
  end

  # GET /words/1/edit
  def edit
  end

  # POST /words
  # POST /words.json
  def create
    dictionary = Dictionary.find(params[:dictionary_id])
    @word = dictionary.words.create(word_params)

    respond_to do |format|
      if @word.save
        format.html { redirect_to [@word.dictionary, @word], notice: 'Word was successfully created.' }
        format.json { render :show, status: :created, location: [@word.dictionary,  @word] } #this may be wrong; need to check
      else
        format.html { render :new }
        format.json { render json: @word.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /words/1
  # PATCH/PUT /words/1.json
  def update
    respond_to do |format|
      if @word.update(word_params)
        format.html { redirect_to [@word.dictionary, @word], notice: 'Word was successfully updated.' }
        format.json { render :show, status: :ok, location: [@word.dictionary, @word] }
      else
        format.html { render :edit }
        format.json { render json: @word.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /words/1
  # DELETE /words/1.json
  def destroy
    @word.destroy
    respond_to do |format|
      format.html { redirect_to dictionary_words_url, notice: 'Word was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_word
      dictionary = Dictionary.find(params[:dictionary_id])
      @word = dictionary.words.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def word_params
      params.require(:word).permit(:name, :language, :word_class, :definition, :comments, :frequency, :dictionary_id)
    end
end
