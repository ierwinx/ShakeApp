import UIKit

class ViewController: UIViewController {

    override var canBecomeFirstResponder: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        becomeFirstResponder()
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        super.motionEnded(motion, with: event)
        if motion == .motionShake {
            let vc = UIViewController()
            vc.view.backgroundColor = .red
            self.present(vc, animated: true, completion: nil)
        }
    }
    
}
