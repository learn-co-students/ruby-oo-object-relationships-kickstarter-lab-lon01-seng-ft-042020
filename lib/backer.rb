require 'pry'
class Backer
    
    attr_reader :name, :back_project

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        a = ProjectBacker.all.select {|array| array.backer == self} 
        a.map {|array| array.project}
    end

end