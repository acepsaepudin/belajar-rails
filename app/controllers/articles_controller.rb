class ArticlesController < ApplicationController

	def index
		@articles = Article.all
	end
	def new
		@article = Article.new
	end

	def create
		# jika ingin melihat hasil post dari form create, silahkan uncomment code dibawah ini
		# render plain: params[:article].inspect
		@article = Article.new(allow_article_params)
		if @article.save
			# redirect_to @article
			redirect_to articles_path
		else
			render 'new'
		end
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])
		@article.update(allow_article_params)

		redirect_to articles_path
	end

	def show
		@article = Article.find(params[:id])
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy

		redirect_to articles_path
	end

	private
		def allow_article_params
			params.require(:article).permit(:title, :name, :content)
		end
end
