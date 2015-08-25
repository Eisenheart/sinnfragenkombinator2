
class QuestionLayout < MotionKit::Layout
  view :button_question

  def layout
      add UILabel, :label_ist
      add UILabel, :label_subject
      add UILabel, :label_second_part
      # add UIImageView, :profile_image
      add UIButton.buttonWithType(UIButtonTypeRoundedRect), :button_question
  end

  def label_ist_style
    text "Ist"
    color UIColor.whiteColor
    font UIFont.boldSystemFontOfSize(20)
    # background_color "#3333FF".uicolor
    # text_alignment :center.nsalignment # NSTextAlignmentCenter

    constraints do
      top_left.equals(:superview).plus([30,90])
      width.equals(:superview).minus(40)
    end
  end

  def label_subject_style
    text ['Europa','Aufräumen','Berlin','Leberwurst'].sample
    color UIColor.whiteColor
    font UIFont.boldSystemFontOfSize(30)
    background_color "#3333FF".uicolor

    # text_alignment :center.nsalignment # NSTextAlignmentCenter

    constraints do
      top_left.equals(:label_ist, :bottom).plus(25)
      left.equals(:label_ist)
      right.equals(:label_ist)
      height.is <= 61 #needed?
    end
  end

  def label_second_part_style
    text ['an allem Schuld','die Lösung ','ein Witz ','unverbesserlich'].sample + "?"
    color UIColor.whiteColor
    font UIFont.boldSystemFontOfSize(30)

    # text_alignment :center.nsalignment # NSTextAlignmentCenter

    constraints do
      top_left.equals(:label_subject, :bottom).plus(30)
      left.equals(:label_subject)
      right.equals(:label_subject)
      height.is <= 61 #needed?
    end
  end

  def button_question_style
    title "refresh"
    title_color UIColor.whiteColor
    height 40
    width 150
    center ['50%', 200]
    background_color "#808080".uicolor
    font UIFont.boldSystemFontOfSize(15)

    # title_shadow_color UIColor.blueColor
    # title_font UIFont.systemFontOfSize(15)

    # text_alignment :center.nsalignment # NSTextAlignmentCenter

    constraints do
      top_left.equals(:label_second_part, :bottom).plus(50)
      left.equals(:label_second_part)
      right.equals(:label_second_part)
      # height.is <= 61 #needed?
    end
  end

end
