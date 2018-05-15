require_relative 'employee'
require_relative 'salaried_employee'
require_relative 'hourly_employee'


jane = SalariedEmployee.new('Jane Doe', 50000)
jane.print_pay_stub

angela = HourlyEmployee.security_guard("Angela Matthews")
ivan = HourlyEmployee.cashier("Ivan Stokes")

angela.print_pay_stub
ivan.print_pay_stub