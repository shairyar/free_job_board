require 'rails_helper'

RSpec.describe "jobs/edit", type: :view do
  before(:each) do
    @job = assign(:job, Job.create!(
      :title => "MyString",
      :description => "MyText",
      :company => "MyString",
      :belongs_to => "MyString"
    ))
  end

  it "renders the edit job form" do
    render

    assert_select "form[action=?][method=?]", job_path(@job), "post" do

      assert_select "input[name=?]", "job[title]"

      assert_select "textarea[name=?]", "job[description]"

      assert_select "input[name=?]", "job[company]"

      assert_select "input[name=?]", "job[belongs_to]"
    end
  end
end