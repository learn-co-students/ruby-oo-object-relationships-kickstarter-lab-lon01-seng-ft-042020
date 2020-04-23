class Project
    
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        p_b_array = ProjectBacker.all.select{|pb| pb.project == self}
        p_b_array.map{|pb| pb.backer}
    end

end