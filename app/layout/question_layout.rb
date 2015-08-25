
class QuestionLayout < MK::Layout
  def layout
    root :question do  #can I have 2 here?
      add UILabel, :label
      add UIButton, :button
    end
  end

  def question_style
    background_color "#FFFFFF".uicolor # UIColor.whiteColor
  end

  def label_style
    number_of_lines 0
    text_alignment :center.nsalignment # NSTextAlignmentCenter

    constraints do
      left 20
      right -20
    end
  end

  def button_style
    number_of_lines 0
    text_alignment :center.nsalignment # NSTextAlignmentCenter

    constraints do
      left 20
      right -20
    end
  end

  def add_top_layout_guide_constraint(controller)
    unless @constraint_added
      @constraint_added = true

      constraints(:notes) do
        top.equals(controller.topLayoutGuide, :bottom).plus(20)
      end
    end
  end
end
