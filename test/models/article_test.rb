require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  def setup
    @article = Article.new(title: "Valid Title", content: "Valid Content")
  end

  test "should not save article without title" do
    @article.title = nil
    assert_not @article.save, "Saved the article without a title"
  end

  test "should not save article without content" do
    @article.content = nil
    assert_not @article.save, "Saved the article without a content"
  end

  test "should save valid article" do
    assert @article.save, "Could not save a valid article"
  end

  test "title should not be too short" do
    @article.title = "a" * 4
    assert_not @article.valid?, "Title is too short (minimum is 5 characters)"
  end

  test "title should not be too long" do
    @article.title = "a" * 101
    assert_not @article.valid?, "Title is too long (maximum is 100 characters)"
  end

  test "content should not be too short" do
    @article.content = "a" * 9
    assert_not @article.valid?, "Content is too short (minimum is 10 characters)"
  end
end
