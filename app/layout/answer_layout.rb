
class AnswerLayout < MotionKit::Layout
  def layout
      add UILabel, :label_subject
      add UILabel, :label_ist
      add UILabel, :label_second_part
      add UILabel, :label_third_part
  end


 def label_subject_style
    text random_subject
    color UIColor.whiteColor
    font UIFont.systemFontOfSize(15)

    # text_alignment :center.nsalignment # NSTextAlignmentCenter

    constraints do
      top_left.equals(:superview).plus([30,90])
      width.equals(:superview).minus(40)
    end
  end

  def label_ist_style
    text the_ist
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

  def label_second_part_style
    text random_second_part
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

  def label_third_part_style
    text random_third_part
    color UIColor.whiteColor
    font UIFont.systemFontOfSize(15)

    # text_alignment :center.nsalignment # NSTextAlignmentCenter

    constraints do
      top_left.equals(:label_second_part, :bottom).plus(15)
      left.equals(:label_second_part)
      right.equals(:label_second_part)
      height.is <= 61 #needed?
    end
  end

  # def button_style
  #   number_of_lines 0
  #   text_alignment :center.nsalignment # NSTextAlignmentCenter

  #   constraints do
  #     left 20
  #     right -20
  #   end
  # end

end

