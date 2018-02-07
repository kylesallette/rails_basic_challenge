require "rails_helper"

  describe "as a user" do
    describe "when i visit /students/:id"  do
      it "they see the name of the student"  do
        @student = Student.create!(name: "Kyle")
        visit students_path
        expect(page).to have_content("Kyle")
      end
    end
    describe "as a user" do
      describe "when i visit /students/:id"  do
        it "they see the name of the multiple students"  do
          @student = Student.create!(name: "Kyle")
          @student = Student.create!(name: "Mary")
          visit students_path
          expect(page).to have_content("Kyle")
          expect(page).to have_content("Mary")
        end
      end
    end

    describe "as a user" do
      describe "when they click Create new student" do
        it "They are taking to the new page" do
          visit students_path
          click_link('Create new student')
          expect(page).to have_content("Name")
        end
      end
    end
  end
  describe "as a user" do
    describe "when they click student name" do
      it "They are taking to the show of that student" do
        @student = Student.create!(name: "Kyle")
        visit students_path
        click_link('Kyle')
        expect(page).to have_content("Kyle")
      end
    end
  end
  describe "as a user" do
    describe "when they click delete" do
      it "That student is deleted" do
        @student = Student.create!(name: "Kyle")
        visit students_path
        click_link('Delete')
         page.should have_no_content('Kyle')
       end
     end
   end 
