#Buttons
  #   # Regular button
  #   @my_button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
  #   @my_button.frame = [[110,150],[100,37]]
  #   @my_button.layer.cornerRadius = 10
  #   @my_button.setTitleColor(UIColor.blackColor, forState:UIControlStateNormal)
  #   @my_button.backgroundColor = UIColor.whiteColor
  #   @my_button.setTitle("Press Me", forState:UIControlStateNormal)
  #   @my_button.setTitle("Impressive!", forState:UIControlStateHighlighted)
  #   # events
  #   @my_button.addTarget(self, action:'buttonIsPressed', forControlEvents:UIControlEventTouchDown)
  #   @my_button.addTarget(self, action:'buttonIsTapped', forControlEvents:UIControlEventTouchUpInside)
  #   view.addSubview(@my_button)

  #   # Button with an image background
  #   normalImage = UIImage.imageNamed("NormalBlueButton.png")
  #   highlightedImage = UIImage.imageNamed("HightlightedBlueButton.png")
  #   @my_image_button = UIButton.buttonWithType(UIButtonTypeCustom)
  #   @my_image_button.frame = [[110,250],[100,37]]
  #   @my_image_button.setBackgroundImage(normalImage, forState:UIControlStateNormal)
  #   @my_image_button.setBackgroundImage(highlightedImage, forState:UIControlStateHighlighted)
  #   @my_image_button.setTitle("Press Me", forState:UIControlStateNormal)
  #   @my_image_button.setTitle("Impressive!", forState:UIControlStateHighlighted)
  #   # events
  #   @my_image_button.addTarget(self, action:'buttonIsPressed', forControlEvents:UIControlEventTouchDown)
  #   @my_image_button.addTarget(self, action:'buttonIsTapped', forControlEvents:UIControlEventTouchUpInside)
  #   view.addSubview(@my_image_button)
  # end

  # def buttonIsPressed
  #   NSLog("Button was pressed down")
  # end

  # def buttonIsTapped
  #   NSLog("Button was tapped")
  # end


  # Tap recognizer:
  # -----------------
  #     @taps_gesture_recognizer = UITapGestureRecognizer.alloc.initWithTarget(self, action:'handle_taps:')
  #   @taps_gesture_recognizer.numberOfTouchesRequired = 2
  #   @taps_gesture_recognizer.numberOfTapsRequired = 3

  #   view.addGestureRecognizer(@taps_gesture_recognizer)


  # end

  # def viewDidUnload
  #   @taps_gesture_recognizer = nil
  # end


  # def handle_taps(sender)
  #   p "Handling taps"
  #   touch_counter = 0
  #   until touch_counter == sender.numberOfTouchesRequired
  #     touch_point = sender.locationOfTouch(touch_counter, inView:sender.view)
  #     touch_counter = touch_counter + 1
  #     p "Touch: #{touch_counter}"
  #   end
  # end


