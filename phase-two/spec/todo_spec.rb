require 'todo'

describe Todo do
    it 'returns task as a string' do
        task_1 = Todo.new('Walk my dog')
        expect(task_1.task).to eq 'Walk my dog'
    end

    it 'returns false when the task is not done' do
        task_1 = Todo.new('Walk my dog')
        expect(task_1.done?).to eq false
    end

    it 'marks the task as done and returns true when the task is done' do
        task_1 = Todo.new('Walk my dog')
        task_1.mark_done!
        expect(task_1.done?).to eq true
    end
end