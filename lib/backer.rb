class Backer
  attr_reader :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    project.backers << self
  end
end


#
# class Backer
#   attr_reader :name
#   attr_accessor :backed_projects
#
#   def initialize(name)
#     @name = name
#     @backed_projects = []
#   end
#
#   def back_project(project_instance)
#     @backed_projects << project_instance
#     project_instance.add_backer(self)
#     # project_instance.backers << self #more direct
#   end
# end
#
# # #separate
# # water_bottle = Project.new("Water Bottle")
# # #separate
# # edgar = Backer.new("Edgar")
# #
# # #connect
# # edgar.back_project(water_bottle)
