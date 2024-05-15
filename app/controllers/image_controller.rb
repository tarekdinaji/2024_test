class ImagesController < ApplicationController
  def index
    @images = Image.all
  end

  def show
    find_image
  end

  def new
    @image = Image.new
  end

  def create
    @image = image.new(image_params)

    if @image.save
      redirect_to @image
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    find_image
  end

  def update
    find_image

    if @image.update(image_params)
      redirect_to @image
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    find_image
    @image.destroy

    redirect_to root_path, status: :see_other
  end
  private
    def find_image
      @image = image.find(params[:id])
    end

    def image_params
      params.require(:image).permit(:name, :url)
    end
end
