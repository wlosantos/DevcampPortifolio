class PagesController < ApplicationController

  helper_method :status

  def home
    @posts = Blog.all
    @skills = Skill.all
  end

  def about
  end

  def contact
  end

  # private
    def status(a, b)
      a + b
    end
end
