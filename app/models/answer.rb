
class Answer
  def self.all
    [
      Answer.new("Do the dishes", "Get dish washing liquid"),
      Answer.new("Hang out the washing", "We need some more pegs"),
      Answer.new("Learn ProMotion", "Watch some of that awesome MotionInMotion screencast"),
      Answer.new("Write lots of notes", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed risus risus, aliquam ac pharetra id, aliquet id sem. Aenean id diam nunc. Etiam luctus libero sed metus tristique, ut consectetur arcu fermentum. Sed elit eros, viverra at magna ac, tristique luctus odio. Nunc ac urna massa. Integer molestie justo eget luctus auctor. Sed quis quam vehicula, varius ante sed, interdum eros. Sed cursus mauris at leo bibendum tristique. Phasellus malesuada vitae dolor id faucibus. Sed a est risus. Nam et ullamcorper risus, sodales ultrices nisi. Aenean porttitor semper turpis ut consectetur. Vivamus massa quam, ullamcorper at turpis non, pretium pulvinar neque. In dignissim egestas tempus")
    ]
  end

  attr_reader :title, :notes

  def initialize(title, notes)
    @title, @notes = title, notes
  end
end