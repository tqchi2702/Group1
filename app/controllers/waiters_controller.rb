class WaitersController < ApplicationController
  before_action :set_waiter, only: %i[ show edit update destroy ]

  # GET /waiters or /waiters.json
  def index
    @waiters = Waiter.all
  end

  # GET /waiters/1 or /waiters/1.json
  def show
  end

  # GET /waiters/new
  def new
    @waiter = Waiter.new
  end

  # GET /waiters/1/edit
  def edit
  end

  # POST /waiters or /waiters.json
  def create
    @waiter = Waiter.new(waiter_params)

    respond_to do |format|
      if @waiter.save
        format.html { redirect_to waiter_url(@waiter), notice: "Waiter was successfully created." }
        format.json { render :show, status: :created, location: @waiter }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @waiter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /waiters/1 or /waiters/1.json
  def update
    respond_to do |format|
      if @waiter.update(waiter_params)
        format.html { redirect_to waiter_url(@waiter), notice: "Waiter was successfully updated." }
        format.json { render :show, status: :ok, location: @waiter }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @waiter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /waiters/1 or /waiters/1.json
  def destroy
    @waiter.destroy

    respond_to do |format|
      format.html { redirect_to waiters_url, notice: "Waiter was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_waiter
      @waiter = Waiter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def waiter_params
      params.require(:waiter).permit(:name, :information)
    end
end
