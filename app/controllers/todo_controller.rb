class TodoController < ApplicationController 
#route controller action view
#erb = embedded ruby
    def index #ouraction
        
    end
    def show #ouraction
        todo_id = params[:id]
        if todo_id == '1'
            @todo_description = "clean room"
        end
        if todo_id == '2'
            @todo_description = "apush homework"
        end
        if todo_id == '3'
            @todo_description = "sweep floor"
        end
        if todo_id == '4'
            @todo_description = "do laundry"
        end
    end
end