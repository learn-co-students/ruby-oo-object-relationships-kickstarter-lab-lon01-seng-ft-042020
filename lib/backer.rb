class Backer
    attr_reader :name
    
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        # all_project_backers = ProjectBacker.all
        # pb_array = all_project_backers.select{ |appointment| appointment.backer == self}

       pb_array = ProjectBacker.all.select {|pb| pb.backer == self}
       pb_array.map {|pb| pb.project}
    end
end