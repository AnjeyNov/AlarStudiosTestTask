//
//  CustomTextField.swift
//  AlarStudiosTestTask
//
//  Created by Anjey Novitskiy on 2021-06-13.
//

import UIKit

class CustomTextField: UITextField {

    func setLeftImage(image: UIImage) {
        let imageView = UIImageView(image: image)
        imageView.contentMode = .center
        self.leftView = imageView
        self.leftViewMode = .always
    }
    
    
    override func leftViewRect(forBounds bounds: CGRect) -> CGRect {
        var imageRect: CGRect = super.leftViewRect(forBounds: bounds)
        imageRect.origin.x += 10
        return imageRect
    }
        
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        var rect: CGRect = super.textRect(forBounds: bounds)
        rect.origin.x += 10
        return rect
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        var rect: CGRect = super.editingRect(forBounds: bounds)
        rect.origin.x += 10
        return rect
    }

    func setPlaceholder(text: String, color: UIColor = UIColor.white) {
        var mutableStringTitle = NSMutableAttributedString()
        mutableStringTitle = NSMutableAttributedString(string:text, attributes: [NSAttributedString.Key.font:UIFont(name: "Coco Gothic", size: 15.0)!])
        mutableStringTitle.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range:NSRange(location:0,length:text.count))
        self.attributedPlaceholder = mutableStringTitle
    }
}
