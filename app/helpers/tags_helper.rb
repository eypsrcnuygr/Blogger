module TagsHelper
  def tags_params
    params.require(:tag).permit(:name, :body, :tag_list)
  end
end
