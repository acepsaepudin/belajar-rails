class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(allow_tag_params)
    if @tag.save
      redirect_to tags_path
    else
      render 'new'
    end
  end

  def edit
    @tag = Tag.find(params[:id])
  end
  def update
		@tag = Tag.find(params[:id])
		@tag.update(allow_tag_params)

		redirect_to tags_path
	end

  def show
    @tag = Tag.find(params[:id])
  end

  def destroy
    @tag = Tag.find(params[:id])
		@tag.destroy

		redirect_to tags_path
  end

  private
  def allow_tag_params
    params.require(:tag).permit(:name)
  end
end
