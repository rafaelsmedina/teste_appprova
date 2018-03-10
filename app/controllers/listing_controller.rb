class ListingController < ApplicationController
  def index
  	@courses = Course.joins(:institution).order('institutions.grade DESC')
  	@groups = Student.group(:course_id).average(:grade)
  end

  def institution
  	param = params[:id]
  	@courses = Course.joins(:institution).where(institutions: {id: param}).order('institutions.grade DESC')
  	@groups = Student.group(:course_id).average(:grade)
    @value = Institution.where(id: param).first.name
  end

  def course
  	param = params[:id]
  	@courses = Course.joins(:institution).where(courses: {name: param}).order('institutions.grade DESC')
  	@groups = Student.group(:course_id).average(:grade)
    @value = param
  end

  def institution_grade
  	param = params[:id]
  	@courses = Course.joins(:institution).where(institutions: {grade: param}).order('institutions.grade DESC')
  	@groups = Student.group(:course_id).average(:grade)
    @value = param
  end

  def course_grade
  	param = params[:id]
  	@courses = Course.joins(:institution).where(courses: {grade: param}).order('institutions.grade DESC')
  	@groups = Student.group(:course_id).average(:grade)
    @value = param
  end

  def average_grade
  	param = params[:id]
  	
  	@groups = Student.group(:course_id).average(:grade)

  	array = []

  	@groups.each do |group|
  		puts 'oi', group[1].to_i, param
  		if group[1].to_i == param.to_i
  			puts 'entray'
  			array.push(group[0])
  		end
  	end

  	@courses = Course.joins(:institution).where(courses: {id: array}).order('institutions.grade DESC')
    @value = param
  end
end
