
class Answer
  def initialize
    @answer_subject = ['Europa','Aufräumen','Berlin','Leberwurst']
    @answer_ist = "ist"
    @answer_second_part = ['letztlich','sozusagen','am Ende des Tages','quasi']
    @answer_third_part = ['die Basis des Zusammenlebens','die hoechste Tugend','der Anfang allen Uebels','das, wofuer es sich zu leben lohnt']
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
