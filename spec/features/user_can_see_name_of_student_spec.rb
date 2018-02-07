require "rails_helper"

  describe "as a user" do
    describe "when i visit /students/:id"  do
      it "they see the name of the student"  do
        @student = Student.create!(name: "Kyle")
        visit student_path

        expect(page).to have_content("Kyle")
      end
    end
  end 
