
class ShowQuestionsScreen < PM::Screen

  def on_load
    self.title = "Fragen"
    #change to tab bar
    @layout = QuestionLayout.new
    self.view = @layout.view

    set_nav_bar_button :left, title:"Antwort", action: :show_answer
  end

  # def will_appear
  #   set_attributes self.view, {
  #     background_color: hex_color("#FFFFFF") #323232 dark grey
  #   }

  # end


  def show_answer#(question)
    open_modal ShowAnswersScreen.new(nav_bar: true)
    #open_modal ...one option
    # open ShowAnswersScreen.new({ answer: question })
  end
end
