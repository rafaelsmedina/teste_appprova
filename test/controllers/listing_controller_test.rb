require 'test_helper'

class ListingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get listing_index_url
    assert_response :success
  end

  test "should get filter by institution" do
  	get listing_institution_url(1)
  	assert_response :success
  end

  test "should get filter by course" do
  	get listing_course_url(1)
  	assert_response :success
  end

  test "should get filter by institution grade" do
  	get listing_institution_grade_url(1)
  	assert_response :success
  end

  test "should get filter by course grade" do 
  	get listing_course_grade_url(1)
  	assert_response :success
  end

  test "should get filter by average grade" do
  	get listing_average_grade_url(1)
  	assert_response :success
  end







end
