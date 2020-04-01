class RemoveProfessorStudentFromSubjects < ActiveRecord::Migration[5.2]
  def change
    remove_column :subjects, :professor, :integer
    remove_column :subjects, :student, :integer
  end
end
