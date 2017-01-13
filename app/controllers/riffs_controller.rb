class RiffsController < OpenReadController
  before_action :set_riff, only: [:update, :destroy]

  # GET /riffs
  # GET /riffs.json
  def index
    @riffs = Riff.all

    render json: @riffs
  end

  # GET /riffs/1
  # GET /riffs/1.json
  def show
    render json: Riff.find(params[:id])
  end

  # POST /riffs
  # POST /riffs.json
  def create
    @riff = current_user.riffs.build(riff_params)

    if @riff.save
      render json: @riff, status: :created
    else
      render json: @riff.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /riffs/1
  # PATCH/PUT /riffs/1.json
  def update
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

  def set_riff
    @riff = current_user.riffs.find(params[:id])
  end

  def riff_params
    params.require(:riff).permit(:text, :user_id, :video_id, :stamp, :flagged)
  end

  private :set_riff, :riff_params
end
