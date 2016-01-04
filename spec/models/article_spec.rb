require 'rails_helper'
RSpec.describe Article, type: :model do
  def build_article_with_options(options={})
    build(:article, options)
  end

  describe "ActiveModel validations" do
    context "#title" do
      it "should not accept if null" do
        article = build_article_with_options({title: nil})
        expect(article.valid?).to be_falsy
      end

      it "should not accept if length more than 25 chars" do
        article = build_article_with_options({title: "foo" * 9})
        expect(article.valid?).to be_falsy
      end
    end
  end
end