class TodoController < ApplicationController 
#route controller action view
#erb = embedded ruby
    def index #ouraction
        
    end
    def show #ouraction
       
        #get the row with that id
        @todo = Todo.find_by_id(params[:id])
        # if todo_id == '1'
        #     @todo_description = "Clean Room"
        #     @todo_time = "1 hour"
        # end
        # if todo_id == '2'
        #     @todo_description = "Apush Homework"
        #     @todo_time = "3 hours"
        # end
        # if todo_id == '3'
        #     @todo_description = "Sweep Floor"
        #     @todo_time = "30 mins"
        # end
        # if todo_id == '4'
        #     @todo_description = "Do Laundry"
        #     @todo_time = "1 hour"
        # end
    end
   
    def new
        
    end
 
    def create
        t = Todo.new
        t.description = params['description']
        t.added_date = DateTime.now
        #saves to the database
        t.save
        
        redirect_to "/todo/show/#{t.id}"
    end
    
    def edit
        @todo = Todo.find_by_id(params[:id])
    end
    
    def update
        t = Todo.find_by_id(params[:id])
        t.description = params['description']
        t.save
        
        redirect_to "/todo/show/#{t.id}"
    end
end