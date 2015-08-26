
class QuestionLayout < MotionKit::Layout
  attr_accessor :button_question

  def layout
      add UILabel, :label_question_ist
      add UILabel, :label_question_subject
      add UILabel, :label_question_second_part
      # add UIImageView, :profile_image
      add UIButton.buttonWithType(UIButtonTypeRoundedRect), :button_question
  end

  def label_question_ist_style
    text "Ist"
    color UIColor.whiteColor
    font UIFont.boldSystemFontOfSize(20)
    # background_color "#3333FF".uicolor
    # text_alignment :center.nsalignment # NSTextAlignmentCenter

    constraints do
      top_left.equals(:superview).plus([30,90])
      left.equals(:superview).plus(100)
      right.equals(:superview).minus(100)
      # width.equals(:superview).minus(40)
    end
  end

  def label_question_subject_style
    text ['Europa','Aufräumen','Berlin','Leberwurst'].sample
    color UIColor.whiteColor
    font UIFont.boldSystemFontOfSize(30)
    background_color "#3333FF".uicolor

    # text_alignment :center.nsalignment # NSTextAlignmentCenter

    constraints do
      top_left.equals(:label_question_ist, :bottom).plus(35)
      left.equals(:label_question_ist)
      right.equals(:label_question_ist)
      height.is <= 61 #needed?
    end
  end

  def label_question_second_part_style
    text ['an allem Schuld','die Lösung ','ein Witz ','unverbesserlich'].sample + "?"
    color UIColor.whiteColor
    font UIFont.boldSystemFontOfSize(30)

    # text_alignment :center.nsalignment # NSTextAlignmentCenter

    constraints do
      top_left.equals(:label_question_subject, :bottom).plus(35)
      left.equals(:label_question_subject)
      right.equals(:label_question_subject)
      height.is <= 61 #needed?
    end
  end

  def button_question_style
    title "refresh"
    title_color UIColor.whiteColor
    height 40
    width 80
    center ['50%', 100]
    background_color "#808080".uicolor
    font UIFont.boldSystemFontOfSize(15)

    layer do
      corner_radius 7.0
      shadow_color '#000000'.cgcolor
      shadow_opacity 0.9
      shadow_radius 2.0
      shadow_offset [0, 0]
    end


    # title_shadow_color UIColor.blueColor
    # title_font UIFont.systemFontOfSize(15)

    # text_alignment :center.nsalignment # NSTextAlignmentCenter

    constraints do
      top_left.equals(:label_question_second_part, :bottom).plus(60)
      left.equals(:label_question_second_part).plus(180)
      right.equals(:label_question_second_part).minus(100)
      # height.is <= 61 #needed?
    end
  end

end
