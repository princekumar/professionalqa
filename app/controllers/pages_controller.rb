class PagesController < ApplicationPagesController
  def index
    @posts = Post.all
  end

  def contactUs
  end

  def aboutUs
  end

  def privacyPolicy
  end

  def termsAndConditions
  end

  def disclaimer
  end

  def sitemap
  end
end
