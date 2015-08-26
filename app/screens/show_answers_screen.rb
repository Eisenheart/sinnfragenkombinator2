
class ShowAnswersScreen < PM::Screen
  attr_accessor :question

  def on_load
    self.title = "Antworten"

    @layout = AnswerLayout.new
    self.view = @layout.view

    @button = @layout.get(:button_answer)

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

  def will_appear
    # set_attributes self.view, {
    #   background_color: hex_color("#323232") #323232 dark grey
    # }
    @button.addTarget(self, action:'refresh_answer', forControlEvents:UIControlEventTouchUpInside)
  end

  def refresh_answer
    open_modal ShowAnswersScreen.new(nav_bar: true)
  end

  def close_answer#(question)
    close
    # open ShowQuestionsScreen.new(nav_bar: true)
    # open ShowAnswersScreen.new({ answer: question })
  end

  # def load_failed
  #   UIAlert.alloc.initWithTitle('Failed to load',
  #     message: 'The answers content failed to load sorry, double check you have an internet connection',
  #     delegate: nil,
  #     cancelButtonTitle: 'OK',
  #     otherButtonTitles: nil
  #   ).show
  # end
end
