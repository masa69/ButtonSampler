
import UIKit

class DefaultButton: UIButton {
    
    var touchDown: (() -> Void)?
    
    var touchUpInside: (() -> Void)?
    
    var touchUpOutside: (() -> Void)?
    
    var touchDownRepeat: (() -> Void)?
    
    var isValid: Bool = true
    
    
    enum IconPosition {
        case left
        case right
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.addTarget(self, action: #selector(self.onTouchDown(_:)), for: .touchDown)
        // 指を離した時
        self.addTarget(self, action: #selector(self.onTouchUpInside(_:)), for: .touchUpInside)
        self.addTarget(self, action: #selector(self.onTouchUpOutside(_:)), for: .touchUpOutside)
        // ダブルタップ
        self.addTarget(self, action: #selector(self.onTouchDownRepeat(_:)), for: .touchDownRepeat)
    }
    
    
    func down() {
        
    }
    
    func up() {
        
    }
    
    
    @objc func onTouchDown(_ sender: UIButton) {
        if self.isValid {
            self.touchDown?()
            self.down()
        }
    }
    
    @objc func onTouchUpInside(_ sender: UIButton) {
        if self.isValid {
            self.touchUpInside?()
            self.up()
        }
    }
    
    @objc func onTouchUpOutside(_ sender: UIButton) {
        if self.isValid {
            self.touchUpOutside?()
            self.up()
        }
    }
    
    @objc func onTouchDownRepeat(_ sender: UIButton) {
        if self.isValid {
            self.touchDownRepeat?()
        }
    }
    
}
