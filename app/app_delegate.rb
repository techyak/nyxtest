class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = TestViewController.alloc.init
    @window.makeKeyAndVisible
    true
  end
end

class TestViewController < UIViewController
  def viewDidLoad
    self.view = TheView.alloc.initWithFrame([[0,0],[320,480]])
  end
end

class TheView < UIView
  def initWithFrame(frame)
    super
    self.backgroundColor = UIColor.blueColor

    testButton = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    testButton.setTitle "push me", forState: UIControlStateNormal
    testButton.frame = [[50, 50],[150,200]]
    testButton.addTarget self, action:'testCall', forControlEvents:UIControlEventTouchDown
    self.addSubview(testButton)

    self
  end

  def testCall
    pic = UIImage.alloc.initWithContentsOfFile("#{NSBundle.mainBundle.resourcePath}/testimage.jpg")
    scaled_image = pic.scaleToFitSize(CGSizeMake(816,612))
    
    true
  end


end
