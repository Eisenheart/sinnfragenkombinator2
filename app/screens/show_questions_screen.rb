
class ShowQuestionsScreen < PM::TableScreen #this needs to change
  title "Fragen"

  def table_data
    [
      {
        #all this needs to change
        cells: Question.all.map do |t|
          {
            title: t.title,
            subtitle: t.notes,
            cell_style: UITableViewCellStyleSubtitle,
            action: :show_answer,
            arguments: t
          }
        end
      }
    ]
  end

  def show_answer(question)
    open ShowAnswersScreen.new({ answer: question })
  end
end
