//
//  TextFieldCollectionViewCell.swift
//  EmojiArt
//
//  Created by cycu on 2019/5/27.
//  Copyright © 2019 cycu. All rights reserved.
//

import UIKit

class TextFieldCollectionViewCell: UICollectionViewCell, UITextFieldDelegate {
    
    
    @IBOutlet weak var textField: UITextField! {
        didSet {
            textField.delegate = self
        }
    }
    
    var resignationHandler: (() -> Void)?
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        resignationHandler?()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
