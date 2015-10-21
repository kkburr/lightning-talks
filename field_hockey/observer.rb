module Subject
  def initialize
    @observers = []
  end

  def add_observer(observer)
    @observers << observer
  end

  def notify_observers
    @observers.each do |observer|
      observer.send_message(self)
    end
  end
end

class Employee
  include Subject

  attr_accessor :name, :salary

  def initialize(name, salary)
    super()
    @name = name
    @salary = salary
  end

  def salary=(new_salary)
    @salary = new_salary
    notify_observers
  end
end

def Observer
  def send_message(employee)
    p "Salary Update! #{employee.name} now makes #{employee.salary}"
  end
end

fred = Employee.new("Fred", "50000")
fred.add_observer(Observer.new)
fred.add_observer(Observer.new)
fred.salary = "70000"
# Salary Update! Fred now makes 70000
# Salary Update! Fred now makes 70000




module Sort
  def initialize
    # code
  end
end

class CreateLeague
  include Sort

  def initialize
    super()
    # more code here
  end
end
