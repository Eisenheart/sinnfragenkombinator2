class AppDelegate < PM::Delegate
  def on_load(app, options)
    open ShowQuestionsScreen.new(nav_bar: true)
  end
  # def application(application, didFinishLaunchingWithOptions:launchOptions)
  #   rootViewController = UIViewController.alloc.init
  #   rootViewController.title = 'sinnfragenkombinator2'
  #   rootViewController.view.backgroundColor = UIColor.whiteColor

  #   navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

  #   @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
  #   @window.rootViewController = navigationController
  #   @window.makeKeyAndVisible

  #   true
  # end
end
