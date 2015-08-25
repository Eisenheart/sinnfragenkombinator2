
class Answer
  # attr_accessor :answer_ist, :answer_subject, :answer_second_part, :answer_third_part

  def initialize
    @answer_subject = ['Europa','Aufräumen','Berlin','Leberwurst'].sample
    @answer_ist = "ist"
    @answer_second_part = ['letztlich','sozusagen','am Ende des Tages','quasi'].sample
    @answer_third_part = ['die Basis des Zusammenlebens','die hoechste Tugend','der Anfang allen Uebels','das, wofuer es sich zu leben lohnt'].sample
  end

  def random_subject
    @answer_subject.sample
  end

  def the_ist
    @answer_ist
  end

  def random_second_part
    @answer_second_part.sample
  end

  def random_third_part
    @answer_third_part.sample
  end
end
