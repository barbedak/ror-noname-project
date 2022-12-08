require "test_helper"

class ChecklistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @checklist = checklists(:one)
  end

  test "should get index" do
    get checklists_url
    assert_response :success
  end

  test "should get new" do
    get new_checklist_url
    assert_response :success
  end

  test "should create checklist" do
    assert_difference("Checklist.count") do
      post checklists_url, params: { checklist: { brew_id: @checklist.brew_id, cheking_id: @checklist.cheking_id, end_date: @checklist.end_date, end_time: @checklist.end_time, equipment_id: @checklist.equipment_id, start_date: @checklist.start_date, start_time: @checklist.start_time, washer_id: @checklist.washer_id } }
    end

    assert_redirected_to checklist_url(Checklist.last)
  end

  test "should show checklist" do
    get checklist_url(@checklist)
    assert_response :success
  end

  test "should get edit" do
    get edit_checklist_url(@checklist)
    assert_response :success
  end

  test "should update checklist" do
    patch checklist_url(@checklist), params: { checklist: { brew_id: @checklist.brew_id, cheking_id: @checklist.cheking_id, end_date: @checklist.end_date, end_time: @checklist.end_time, equipment_id: @checklist.equipment_id, start_date: @checklist.start_date, start_time: @checklist.start_time, washer_id: @checklist.washer_id } }
    assert_redirected_to checklist_url(@checklist)
  end

  test "should destroy checklist" do
    assert_difference("Checklist.count", -1) do
      delete checklist_url(@checklist)
    end

    assert_redirected_to checklists_url
  end
end
