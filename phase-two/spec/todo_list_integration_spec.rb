require 'todo_list'
require 'todo'

describe 'Todo list integration' do
    before(:each) do
        @todo_list = TodoList.new
        @task_1 = Todo.new('Walk my frog')
        @task_2 = Todo.new('Walk my mum')
        @task_3 = Todo.new('Walk my baby')
        @todo_list.add(@task_1) 
        @todo_list.add(@task_2)
        @todo_list.add(@task_3)
    end

    it 'adds todos to the todo list and returns all non-done todos as an array' do
       expect(@todo_list.incomplete).to eq [@task_1,@task_2,@task_3] 
    end

    it 'marks task done and returns complete list' do
        @task_1.mark_done!
        expect(@todo_list.complete).to eq [@task_1]
    end
    
    it 'marks one task done and disappear from the incomplete list and returns the complete list' do
        @task_1.mark_done!
        expect(@todo_list.incomplete).to eq [@task_2,@task_3]
        expect(@todo_list.complete).to eq [@task_1]
    end

    it 'marks all todos as complete and returns the complete list' do
        @todo_list.give_up!
        expect(@todo_list.complete).to eq [@task_1,@task_2,@task_3]
    end
end