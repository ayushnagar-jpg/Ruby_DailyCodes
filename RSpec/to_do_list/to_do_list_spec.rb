require 'rspec'
require_relative 'to_do_list' # Replace with the actual file name containing your classes

RSpec.describe TodoList do
  let(:todo_list) { TodoList.new }

  describe '#add_task' do
    it 'adds a task to the list when the title is valid' do
      todo_list.add_task('Buy groceries')
      expect(todo_list.tasks.size).to eq(1)
      expect(todo_list.tasks.first.title).to eq('Buy groceries')
    end

    it 'does not add the task when the title is empty' do
      expect { todo_list.add_task('') }.to raise_error('Title cannot be empty')
      expect(todo_list.tasks).to be_empty
    end
  end

  describe '#complete_task' do
    it 'marks a task as complete' do
      todo_list.add_task('Wash the car')
      todo_list.complete_task(0)
      expect(todo_list.tasks.first.completed).to be true
    end

    it 'raises an error if the task does not exist' do
      expect { todo_list.complete_task(0) }.to raise_error('Task not found')
    end
  end

  describe '#remove_task' do
    it 'removes a task from the list' do
      todo_list.add_task('Clean the house')
      todo_list.remove_task(0)
      expect(todo_list.tasks).to be_empty
    end

    it 'raises an error if the task does not exist' do
      expect { todo_list.remove_task(0) }.to raise_error('Task not found')
    end
  end
end