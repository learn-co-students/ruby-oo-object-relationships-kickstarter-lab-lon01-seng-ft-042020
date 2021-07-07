class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_backer = ProjectBacker.all.select {|projectBacker| projectBacker.backer == self}
        backed_projects = project_backer.map {|projectBacker| projectBacker.project}
        backed_projects
    end


end