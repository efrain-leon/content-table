class TableContentsController < ApplicationController
  before_action :set_table_content, only: [:show, :edit, :update, :destroy]

  # GET /table_contents
  # GET /table_contents.json
  def index
    @table_contents = TableContent.all
  end

  # GET /table_contents/1
  # GET /table_contents/1.json
  def show
  end

  # GET /table_contents/new
  def new
    @table_content = TableContent.new
  end

  # GET /table_contents/1/edit
  def edit
  end

  # POST /table_contents
  # POST /table_contents.json
  def create
    @table_content = TableContent.new(table_content_params)

    respond_to do |format|
      if @table_content.save
        format.html { redirect_to @table_content, notice: 'Table content was successfully created.' }
        format.json { render :show, status: :created, location: @table_content }
      else
        format.html { render :new }
        format.json { render json: @table_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /table_contents/1
  # PATCH/PUT /table_contents/1.json
  def update
    respond_to do |format|
      if @table_content.update(table_content_params)
        format.html { redirect_to @table_content, notice: 'Table content was successfully updated.' }
        format.json { render :show, status: :ok, location: @table_content }
      else
        format.html { render :edit }
        format.json { render json: @table_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /table_contents/1
  # DELETE /table_contents/1.json
  def destroy
    @table_content.destroy
    respond_to do |format|
      format.html { redirect_to table_contents_url, notice: 'Table content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_table_content
      @table_content = TableContent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def table_content_params
      params.require(:table_content).permit(:content, :level, :order, :id_book)
    end
end
