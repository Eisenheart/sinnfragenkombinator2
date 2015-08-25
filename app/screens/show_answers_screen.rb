
class ShowAnswersScreen < PM::Screen
  attr_accessor :question

  def on_load
    self.title = answer.title

    @layout = QuestionAnswerLayout.new(root: self.view)
    @layout.build
    @layout.get(:notes).text = question.notes
  end

  def updateViewConstraints
    @layout.add_top_layout_guide_constraint(self)
    super
  end
end
