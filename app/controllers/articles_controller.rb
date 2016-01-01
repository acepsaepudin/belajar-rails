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
			render 'index'
		else
			render 'new'
		end
	end

	private
		def allow_article_params
			params.require(:article).permit(:title, :name, :content)
		end
end
