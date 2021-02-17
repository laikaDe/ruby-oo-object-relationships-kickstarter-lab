class Backer

    attr_accessor  :name
  

    def initialize(name)
        @name = name 
    end

    def back_project(project)
        #Create a ProjectBacker, associating the project with this backer
        ProjectBacker.new(project,self)
    end

    def backed_projects
        array = ProjectBacker.all.select{|project_backer|project_backer.backer == self} 
        array.collect{|project_backer|project_backer.project} 
    end
end