class ProjectCategory < ActiveRecord::Base
  belongs_to :project
  has_many :tasks
  accepts_nested_attributes_for :tasks, allow_destroy: true

  def answers_for_form
    collection = tasks.where(project_id: id)
    collection.any? ? collection : tasks.build
  end
end
