class ListingController < ApplicationController
  def index
  	@courses = Course.joins(:institution).order('institutions.grade DESC')
  end

  def institution
  	param = params[:id]
  	@courses = Course.joins(:institution).where(institutions: {id: param}).order('institutions.grade DESC')
  end

  def course
  	param = params[:id]
  	@courses = Course.joins(:institution).where(courses: {name: param}).order('institutions.grade DESC')
  end

  def institution_grade
  	param = params[:id]
  	@courses = Course.joins(:institution).where(institutions: {grade: param}).order('institutions.grade DESC')
  end

  def course_grade
  	param = params[:id]
  	@courses = Course.joins(:institution).where(courses: {grade: param}).order('institutions.grade DESC')
  end

end
