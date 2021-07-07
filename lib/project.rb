class Project
    attr_reader :title
    
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
    pb_array = ProjectBacker.all.select {|pb| pb.project == self}
    pb_array.map {|pb| pb.backer}
    end
end