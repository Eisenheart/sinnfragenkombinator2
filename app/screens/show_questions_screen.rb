
class ShowQuestionsScreen < PM::Screen #this needs to change
  # refreshable callback: :on_refresh,
  #             pull_message: "Pull to refresh",
  #             refreshing: "Refreshing data...",
  #             updated_format: "Last updated at %s",
  #             updated_time_format: "%l:%M %p"



  def on_load
    self.title = "Fragen"
    set_nav_bar_button :left, title:"Antwort", action: :show_answer
    #change to tab bar
  end

  def will_appear
    set_attributes self.view, {
      background_color: hex_color("#FFFFFF") #323232 dark grey
    }

    add UILabel.new, {
      text: "Question phrase goes here?",
      font: UIFont.systemFontOfSize(32),
      left: 20,
      top: 200,
      width: 280,
      height: 50,
      text_alignment: NSTextAlignmentCenter
    }
  end

  # def on_refresh
  #   end_refreshing
  # end

  def show_answer#(question)
    open_modal ShowAnswersScreen.new(nav_bar: true)
    #open_modal ...one option
    # open ShowAnswersScreen.new({ answer: question })
  end
end
