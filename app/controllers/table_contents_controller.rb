class TableContentsController < ApplicationController
  before_action :set_table_content, only: [:show, :edit, :update, :destroy]

  def index
    @book = Book.find(params[:book_id])
    @table_contents = @book.table_contents
  end

  def show
  end

  def new
    @book = Book.find(params[:book_id])
    @table_content = @book.table_contents.new
  end

  def edit
  end

  def create
    @book = Book.find(params[:book_id])
    @table_content = @book.table_contents.new(table_content_params)

    respond_to do |format|
      if @table_content.save
        format.html { redirect_to book_table_contents_path(@book), notice: 'Table content was successfully created.' }
        format.json { render :show, status: :created, location: @table_content }
      else
        format.html { render :new }
        format.json { render json: @table_content.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @table_content.update(table_content_params)
        format.html { redirect_to book_table_contents_path(@book), notice: 'Table content was successfully updated.' }
        format.json { render :show, status: :ok, location: @table_content }
      else
        format.html { render :edit }
        format.json { render json: @table_content.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @table_content.destroy
    respond_to do |format|
      format.html { redirect_to book_table_contents_path(@book), notice: 'Table content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_table_content
      @book = Book.find(params[:book_id])
      @table_content = TableContent.find(params[:id])
    end
    
    def table_content_params
      params.require(:table_content).permit(:content, :level, :order, :book_id)
    end
end
