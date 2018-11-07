
import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var primaryButton: PrimaryButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initButton()
    }
    
    
    private func initButton() {
        primaryButton.addIcon(named: "icon_angle_right_s", position: .right)
        primaryButton.touchDown = {
            print("primaryButton.touchDown")
        }
    }
    
}
