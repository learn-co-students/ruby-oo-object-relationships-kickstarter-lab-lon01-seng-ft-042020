class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end 

    # returns an array of backers associated with this Project instance
    def backers 
        # First, get all ProjetBacker which are associated with self Project
        project_project = ProjectBacker.all.select {|pb| pb.project == self}
        # collect backer
        project_project.map {|pb| pb.backer}
    end 

end