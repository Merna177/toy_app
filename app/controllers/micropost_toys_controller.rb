class MicropostToysController < ApplicationController
  before_action :set_micropost_toy, only: [:show, :edit, :update, :destroy]

  # GET /micropost_toys
  # GET /micropost_toys.json
  def index
    @micropost_toys = MicropostToy.all
  end

  # GET /micropost_toys/1
  # GET /micropost_toys/1.json
  def show
  end

  # GET /micropost_toys/new
  def new
    @micropost_toy = MicropostToy.new
  end

  # GET /micropost_toys/1/edit
  def edit
  end

  # POST /micropost_toys
  # POST /micropost_toys.json
  def create
    @micropost_toy = MicropostToy.new(micropost_toy_params)

    respond_to do |format|
      if @micropost_toy.save
        format.html { redirect_to @micropost_toy, notice: 'Micropost toy was successfully created.' }
        format.json { render :show, status: :created, location: @micropost_toy }
      else
        format.html { render :new }
        format.json { render json: @micropost_toy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /micropost_toys/1
  # PATCH/PUT /micropost_toys/1.json
  def update
    respond_to do |format|
      if @micropost_toy.update(micropost_toy_params)
        format.html { redirect_to @micropost_toy, notice: 'Micropost toy was successfully updated.' }
        format.json { render :show, status: :ok, location: @micropost_toy }
      else
        format.html { render :edit }
        format.json { render json: @micropost_toy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micropost_toys/1
  # DELETE /micropost_toys/1.json
  def destroy
    @micropost_toy.destroy
    respond_to do |format|
      format.html { redirect_to micropost_toys_url, notice: 'Micropost toy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_micropost_toy
      @micropost_toy = MicropostToy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def micropost_toy_params
      params.require(:micropost_toy).permit(:content, :user_id)
    end
end
