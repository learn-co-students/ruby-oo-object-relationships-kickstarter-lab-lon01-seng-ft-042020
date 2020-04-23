require 'pry'
class Project
    
    attr_reader :title, :add_backer

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
    
    def backers
        a = ProjectBacker.all.select {|array| array.project == self} 
        a.map {|array| array.backer}
        #binding.pry 
    end
end