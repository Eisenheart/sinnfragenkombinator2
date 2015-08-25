
class AnswerLayout < MotionKit::Layout
  def layout
      add UILabel, :label
      # add UIButton, :button
  end

  def label_style
    text "Keiner weiss es!"
    color UIColor.whiteColor
    font UIFont.systemFontOfSize(15)

    # text_alignment :center.nsalignment # NSTextAlignmentCenter

    constraints do
      top_left.equals(:superview).plus([40,120])
      width.equals(:superview).minus(40)
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

