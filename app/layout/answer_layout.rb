
class AnswerLayout < MotionKit::Layout
  def layout
      add UILabel, :label_subject
      add UILabel, :label_ist
      add UILabel, :label_second_part
      add UILabel, :label_third_part
      # add UIImageView, :profile_image
      add UIButton, :button_answer
  end


 def label_subject_style
    text ['Europa','Aufräumen','Berlin','Leberwurst'].sample
    color UIColor.whiteColor
    font UIFont.boldSystemFontOfSize(25)
    background_color "#3333FF".uicolor

    # text_alignment :center.nsalignment # NSTextAlignmentCenter

    constraints do
      top_left.equals(:superview).plus([30,90])
      right.equals(:superview).minus(100)
    end
  end

  def label_ist_style
    text "ist"
    color UIColor.whiteColor
    font UIFont.systemFontOfSize(25)

    # text_alignment :center.nsalignment # NSTextAlignmentCenter

    constraints do
      top_left.equals(:label_subject, :bottom).plus(25)
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
      right.equals(:label_second_part)
      height.is <= 61 #needed?
    end
  end

  def button_answer_style
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
      top_left.equals(:label_third_part, :bottom).plus(60)
      right.equals(:label_third_part).minus(100)
      # height.is <= 61 #needed?
    end
  end

end

