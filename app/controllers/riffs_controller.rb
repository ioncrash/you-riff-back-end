class RiffsController < ApplicationController
  before_action :set_riff, only: [:show, :update, :destroy]

  # GET /riffs
  # GET /riffs.json
  def index
    @riffs = Riff.all

    render json: @riffs
  end

  # GET /riffs/1
  # GET /riffs/1.json
  def show
    render json: @riff
  end

  # POST /riffs
  # POST /riffs.json
  def create
    @riff = Riff.new(riff_params)

    if @riff.save
      render json: @riff, status: :created, location: @riff
    else
      render json: @riff.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /riffs/1
  # PATCH/PUT /riffs/1.json
  def update
    @riff = Riff.find(params[:id])

    if @riff.update(riff_params)
      head :no_content
    else
      render json: @riff.errors, status: :unprocessable_entity
    end
  end

  # DELETE /riffs/1
  # DELETE /riffs/1.json
  def destroy
    @riff.destroy

    head :no_content
  end

  private

    def set_riff
      @riff = Riff.find(params[:id])
    end

    def riff_params
      params.require(:riff).permit(:user_id, :ytid, :text, :stamp, :flagged)
    end
end
