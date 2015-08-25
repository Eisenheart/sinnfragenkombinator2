
class ShowAnswersScreen < PM::Screen
  attr_accessor :question

  def on_load
    self.title = "Antworten"

    # @layout = QuestionAnswerLayout.new(root: self.view)
    # @layout.build
    # @layout.get(:notes).text = question.notes
    set_nav_bar_button :right, title: "Frage", action: :close_answer
  end

  # def content
  # end

  # def load_failed
  # end

  # def updateViewConstraints
  #   @layout.add_top_layout_guide_constraint(self)
  #   super
  # end

  def close_answer#(question)
    close
    # open ShowQuestionsScreen.new(nav_bar: true)
    # open ShowAnswersScreen.new({ answer: question })
  end
end
