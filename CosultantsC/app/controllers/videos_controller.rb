class VideosController < ApplicationController
  before_action :set_video, only: [:show, :edit, :update, :destroy]


  def index
    @videos = Video.all
  end

  def show
  end

  def new
    @video = Video.new
    @video.image = params[:file]
	#@video.admin = Admin.find 1 #TODO hardcoded for now
	#@video.project = Project.find 1; #TODO needs to be  actively assigned later, hardcoding for testing
    @video.save!
  end

  def edit
  end

  def create
    @video = Video.new(video_params)

    respond_to do |format|
      if @video.save
        format.html { redirect_to @picture, notice: 'Picture was successfully created.' }
        format.json { render action: 'show', status: :created, location: @picture }
      else
        format.html { render action: 'new' }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @video.update(picture_params)
        format.html { redirect_to @picture, notice: 'Picture was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @video.destroy
    respond_to do |format|
      format.html { redirect_to videos_url }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_video
    @picture = Video.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def video_params
    params[:video]
  end
end
