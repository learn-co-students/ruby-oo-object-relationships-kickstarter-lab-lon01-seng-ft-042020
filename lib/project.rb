class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end
    
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        project_backer_ = ProjectBacker.all.select {|projectBacker| projectBacker.project == self}
        project_backer_.map {|projectBacker| projectBacker.backer}
    end


end