require 'spec_helper'

describe "people/edit.html.erb" do
  before(:each) do
    @person = assign(:person, stub_model(Person,
      :name => "MyString",
      :rg => "MyString",
      :cpf => "MyString",
      :birth_date => "MyString",
      :gender => "MyString",
      :civil_state => "MyString",
      :home_phone => "MyString",
      :comercial_phone => "MyString",
      :cell_phone => "MyString",
      :cep => "MyString",
      :address => "MyString",
      :neighborhood => "MyString",
      :city => "MyString",
      :state => "MyString",
      :status => false
    ))
  end

  it "renders the edit person form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => person_path(@person), :method => "post" do
      assert_select "input#person_name", :name => "person[name]"
      assert_select "input#person_rg", :name => "person[rg]"
      assert_select "input#person_cpf", :name => "person[cpf]"
      assert_select "input#person_birth_date", :name => "person[birth_date]"
      assert_select "input#person_gender", :name => "person[gender]"
      assert_select "input#person_civil_state", :name => "person[civil_state]"
      assert_select "input#person_home_phone", :name => "person[home_phone]"
      assert_select "input#person_comercial_phone", :name => "person[comercial_phone]"
      assert_select "input#person_cell_phone", :name => "person[cell_phone]"
      assert_select "input#person_cep", :name => "person[cep]"
      assert_select "input#person_address", :name => "person[address]"
      assert_select "input#person_neighborhood", :name => "person[neighborhood]"
      assert_select "input#person_city", :name => "person[city]"
      assert_select "input#person_state", :name => "person[state]"
      assert_select "input#person_status", :name => "person[status]"
    end
  end
end
