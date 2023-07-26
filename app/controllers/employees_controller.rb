class EmployeesController < ApplicationController
	before_action :set_employee, only: [:edit,:update,:show,:destroy]

	def index
		@employee = Employee.all
	end

	def new
		@employee = Employee.new
		end

	def create
		 @employee = Employee.new(employee_params)
		 if @employee.save
		 	CurdNotificationMailer.create_notification(@employee).deliver_now
		 	redirect_to employees_path,notice: "Employee has been created sucessfully"
		 else
		 	render :new
		 end
	end  

	def edit
	end

	def update
		if @employee.update(employee_params)
			CurdNotificationMailer.update_notification(@employee).deliver_now
			redirect_to employees_path,notice: "Employee has been updated sucessfully"
		else
			render :edit
		end
	end

	def show
	end

	def destroy
		CurdNotificationMailer.delete_notification(@employee).deliver_now
		if @employee.destroy
			redirect_to employees_path,notice: "Employee has benn deleted Sucessfully"
		end
	end

	private

	def employee_params
		params.require(:employee).permit(:first_name,:last_name,:email,
			:age,:date_of_birth,:city,:pincode,:address,:contact_no)
	end

	def set_employee
		@employee = Employee.find(params[:id])
	rescue ActiveRecord::RecordNotFound => error
		redirect_to employees_path,notice: error
	end
end
