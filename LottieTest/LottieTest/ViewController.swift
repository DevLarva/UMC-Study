import UIKit
import Lottie

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let animationView: LottieAnimationView = .init(name: "loading")
        self.view.addSubview(animationView)
        
        
        // animationView의 설정 작업은 알아서 하세요
        animationView.frame = self.view.bounds
        animationView.center = self.view.center
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
    }
}
