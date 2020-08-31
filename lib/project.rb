class Project 

    attr_accessor :title
    @@all = []

    def initialize(title)
        @title = title 
        @@all << self
    end

    def self.all 
        @@all
    end

    def add_backer (backer)
        new_pbb = ProjectBacker.new(self, backer)
    end

    def backers 
        to_return = []
        x= ProjectBacker.all.select do |b|
            b.project == self
        end
        x.map do |b|
            to_return << b.backer
        end

        to_return 
    end

end