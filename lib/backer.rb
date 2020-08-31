class Backer 


    attr_accessor :name 
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all
    end

    def back_project(project)
        new_pb = ProjectBacker.new(project, self)
    end

    def backed_projects 
        to_return = []
        x= ProjectBacker.all.select do |pb|
            pb.backer == self
        end
        x.map do |p|
           to_return << p.project
        end

        to_return
    end



end