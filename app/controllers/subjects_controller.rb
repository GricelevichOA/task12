class SubjectsController < ApplicationController
	before_action :set_subject, only: [:show, :edit, :update, :destroy]

	def index
		@subjects = Subject.all
		authorize @subjects
	end

	def show
		authorize @subject
	end

	def new
		@subject = Subject.new
		authorize @subject
	end

	def edit
		authorize @subject
	end

	def create
		@subject = Subject.new(subject_params)
		authorize @subject
		if @subject.save
			redirect_to @subject, notice: 'Subject was successfully created.'
		else
			render :new
		end
	end

	def update
		authorize @subject
		if @subject.update(subject_params)
			redirect_to @subject, notice: 'Subject was successfully updated.'
		else
			render :edit
		end
	end

	def destroy
		authorize @subject
		@subject.destroy
		redirect_to subjects_url, notice: 'Subject was successfully destroyed.'
	end

	private 

	def set_subject
		@subject = Subject.find(params[:id])
	end

	def subject_params
		params.require(:subject).permit(:topic, :description, :status)
	end
end
