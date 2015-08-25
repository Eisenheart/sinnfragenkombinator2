
class ShowQuestionsScreen < PM::Screen

  def on_load
    self.title = "Fragen"
    #change to tab bar
    @layout = QuestionLayout.new
    self.view = @layout.view

    @button = @layout.get(:button_question)

    set_nav_bar_button :left, title:"Antwort", action: :show_answer
  end

  # button_question.addTarget(self, action:'refresh_question',forControlEvents:UIControlEventTouchUpInside)

  def will_appear
    # set_attributes self.view, {
    #   background_color: hex_color("#323232") #323232 dark grey
    # }
    @button.addTarget self, action:'refresh_question', forControlEvents:UIControlEventTouchUpInside
  end

  def show_answer#(question)
    open_modal ShowAnswersScreen.new(nav_bar: true)
    #open_modal ...one option
    # open ShowAnswersScreen.new({ answer: question })
  end

  def refresh_question
    open ShowQuestionScreen.new(nav_bar: true)
  end

end
