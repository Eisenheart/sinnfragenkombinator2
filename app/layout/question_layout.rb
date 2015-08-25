
class QuestionLayout < MotionKit::Layout
  def layout
      add UILabel, :label_ist
      add UILabel, :label_subject
      add UILabel, :label_second_part
      add UIButton, :button_question
  end

  def label_ist_style
    text "Ist"
    color UIColor.whiteColor
    font UIFont.systemFontOfSize(15)

    # text_alignment :center.nsalignment # NSTextAlignmentCenter

    constraints do
      top_left.equals(:superview).plus([30,90])
      width.equals(:superview).minus(40)
    end
  end

  def label_subject_style
    text ['Europa','Aufräumen','Berlin','Leberwurst'].sample
    color UIColor.whiteColor
    font UIFont.systemFontOfSize(15)

    # text_alignment :center.nsalignment # NSTextAlignmentCenter

    constraints do
      top_left.equals(:label_ist, :bottom).plus(15)
      left.equals(:label_ist)
      right.equals(:label_ist)
      height.is <= 61 #needed?
    end
  end

  def label_second_part_style
    text ['an allem Schuld','die Lösung ','ein Witz ','unverbesserlich'].sample + "?"
    color UIColor.whiteColor
    font UIFont.systemFontOfSize(15)

    # text_alignment :center.nsalignment # NSTextAlignmentCenter

    constraints do
      top_left.equals(:label_subject, :bottom).plus(15)
      left.equals(:label_subject)
      right.equals(:label_subject)
      height.is <= 61 #needed?
    end
  end

  def button_question_style
    # number_of_lines 0
    text_alignment :center.nsalignment # NSTextAlignmentCenter

    constraints do
      left 20
      right -20
    end
  end

end
