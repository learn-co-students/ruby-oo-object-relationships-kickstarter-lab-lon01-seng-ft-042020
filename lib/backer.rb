class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end 
    
    # returns an array of projects associated with this Backer instance
    def backed_projects
        # First, get all ProjectBacker which are associated with self Backer
        project_bakers = ProjectBacker.all.select {|pb| pb.backer == self}
        # collect project
        project_bakers.map {|pb| pb.project}
    end 

end