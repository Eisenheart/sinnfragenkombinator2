
class Question
  # attr_accessor :question_ist, :question_subject, :question_second_part

  def initialize
    @question_ist = "Ist"
    @question_subject = ['Europa','Aufräumen','Berlin','Leberwurst'].sample
    @question_second_part = ['an allem Schuld','die Lösung ','ein Witz ','unverbesserlich'].sample
  end

  def the_ist
    @question_ist
  end

  def random_subject
    @question_subject.sample
  end

  def random_second_part
    @question_second_part.sample
  end
end
