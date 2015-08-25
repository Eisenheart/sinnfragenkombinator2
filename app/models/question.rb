
class Question
  def initialize
    @questions = ['Europa','Aufräumen','Berlin','Leberwurst']

         add UILabel, :label_ist
      add UILabel, :label_subject
      add UILabel, :label_second_part
  end

  def randomQuestion
    @questions.sample
  end
end
