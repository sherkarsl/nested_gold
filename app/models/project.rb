class Project < ActiveRecord::Base
has_many :project_categories
 accepts_nested_attributes_for :project_categories, allow_destroy: true

  def questions_for_form
    collection = project_categories.where(project_id: id)
    collection.any? ? collection : project_categories.build
  end
end
