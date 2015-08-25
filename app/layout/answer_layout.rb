
class AnswerLayout < MotionKit::Layout
  def layout
      add UILabel, :label_subject
      add UILabel, :label_ist
      add UILabel, :label_second_part
      add UILabel, :label_third_part
      # add UIImageView, :profile_image
      # add UIButton, :button_answer
  end


 def label_subject_style
    text ['Europa','Aufräumen','Berlin','Leberwurst'].sample
    color UIColor.whiteColor
    font UIFont.boldSystemFontOfSize(25)
    background_color "#3333FF".uicolor

    # text_alignment :center.nsalignment # NSTextAlignmentCenter

    constraints do
      top_left.equals(:superview).plus([30,90])
      width.equals(:superview).minus(40)
    end
  end

  def label_ist_style
    text "ist"
    color UIColor.whiteColor
    font UIFont.systemFontOfSize(25)

    # text_alignment :center.nsalignment # NSTextAlignmentCenter

    constraints do
      top_left.equals(:label_subject, :bottom).plus(25)
      left.equals(:label_subject)
      right.equals(:label_subject)
      height.is <= 61 #needed?
    end
  end

  def label_second_part_style
    text ['letztlich','sozusagen','am Ende des Tages','quasi'].sample
    color UIColor.whiteColor
    font UIFont.boldSystemFontOfSize(25)
    background_color "#3333FF".uicolor

    # text_alignment :center.nsalignment # NSTextAlignmentCenter

    constraints do
      top_left.equals(:label_ist, :bottom).plus(25)
      left.equals(:label_ist)
      right.equals(:label_ist)
      height.is <= 61 #needed?
    end
  end

  def label_third_part_style
    text ['die Basis des Zusammenlebens','die hoechste Tugend','der Anfang allen Uebels','das, wofuer es sich zu leben lohnt'].sample + "."
    color UIColor.whiteColor
    font UIFont.boldSystemFontOfSize(25)

    # text_alignment :center.nsalignment # NSTextAlignmentCenter

    constraints do
      top_left.equals(:label_second_part, :bottom).plus(25)
      left.equals(:label_second_part)
      right.equals(:label_second_part)
      height.is <= 61 #needed?
    end
  end

  # def button_answer_style
  #   # number_of_lines 0
  #   text_alignment :center.nsalignment # NSTextAlignmentCenter

  #   constraints do
  #     left 20
  #     right -20
  #   end
  # end

end

