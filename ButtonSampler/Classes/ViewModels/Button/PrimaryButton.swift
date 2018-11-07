
import UIKit

class PrimaryButton: DefaultButton {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.decorate()
    }
    
    
    private func decorate() {
        self.setTitleColor(UIColor.white, for: .normal)
        self.tintColor = UIColor.white
        self.backgroundColor = UIColor.black
        self.borderRadius = self.frame.height / 2
        self.adjustsImageWhenHighlighted = false
    }
    
    
    override func down() {
        super.down()
        self.backgroundColor = UIColor.ultraDarkGray
    }
    
    
    override func up() {
        super.up()
        self.backgroundColor = UIColor.black
    }
    
    
    func addIcon(named: String, position: IconPosition) {
        self.setImage(UIImage(named: named), for: .normal)
        switch position {
        case .left:
            break
        case .right:
            self.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
            self.titleLabel?.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
            self.imageView?.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
        }
    }
    
}
