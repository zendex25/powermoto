class SupportsController < ApplicationController
    skip_before_action :authorize

  before_action :set_support, only: [:show, :edit, :update, :destroy]

  # GET /supports
  # GET /supports.json
  def index
    @supports = Support.all
    @fronts = Front.all
  end

  # GET /supports/1
  # GET /supports/1.json
  def show
    @fronts = Front.all
  end

  # GET /supports/new
  def new
    @support = Support.new
    @fronts = Front.all
  end

  # GET /supports/1/edit
  def edit
    @fronts = Front.all
  end

  # POST /supports
  # POST /supports.json
  def create
    @support = Support.new(support_params)
    @fronts = Front.all
    respond_to do |format|
      if @support.save
        format.html { redirect_to store_url, notice: 'Support ticket sent.' }
        format.json { render action: 'show', status: :created, location: @support }
      else
        format.html { render action: 'new' }
        format.json { render json: @support.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supports/1
  # PATCH/PUT /supports/1.json
  def update
    @fronts = Front.all
    respond_to do |format|
      if @support.update(support_params)
        format.html { redirect_to store_url, notice: 'Support was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @support.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supports/1
  # DELETE /supports/1.json
  def destroy
    @fronts = Front.all
    @support.destroy
    respond_to do |format|
      format.html { redirect_to store_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_support
      @support = Support.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def support_params
      params.require(:support).permit(:title, :name, :body, :email, :contact)
    end
end
