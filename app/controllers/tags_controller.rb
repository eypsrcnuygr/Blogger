class TagsController < ApplicationController
  before_action :require_login, only: [:destroy]
  include TagsHelper
  def show
    @tags = Tag.find(params[:id])
  end

  def index
    @tags = Tag.all
  end

  def destroy
    @tags = Tag.find(params[:id])
    @tags.destroy
    flash.notice = "Tag '#{@tags.name}' Deleted!"
    redirect_to action: 'index'
  end
end
