class DogsController < ApplicationController

    def index
        @dogs = Dog.all

        if session 
            @dogs = @dogs.sort {|dog1, dog2| dog2.employees.count <=> dog1.employees.count}
        end
    end

    def show
        @dog = Dog.find(params[:id])
    end

    def sort_dogs
        @dogs =  Dog.all
        @dogs = @dogs.sort {|dog1, dog2| dog2.employees.count <=> dog1.employees.count}
    end

end
