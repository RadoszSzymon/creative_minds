class StaticController < ApplicationController
  def main
    @post = Post.order("created_at desc").limit(3)
  end
end
