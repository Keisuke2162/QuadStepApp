//
//  CustomClass.swift
//  QuadStepApp
//
//  Created by 植田圭祐 on 2020/02/03.
//  Copyright © 2020 Keisuke Ueda. All rights reserved.
//

import Foundation
import UIKit

class CustomTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        let tools = UIToolbar()
        tools.frame = CGRect(x: 0, y: 0, width: frame.width, height: 40)
        
        let spacer = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        
        let closeButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(self.closeButtonTapped))
        tools.items = [spacer, closeButton]
        
        self.inputAccessoryView = tools
    }
    
    @objc func closeButtonTapped() {
        self.endEditing(true)
        self.resignFirstResponder()
    }
}

class CustomUIButton: UIButton {
    //通常アイコン用
    var id: String?
    var title: String?
    var text: String?
    var list: [String]?
    var color: String?
    
    //背景色設定ボタン用
    var colorCode: String?
    //アイコン名
    var iconCode: String?
}
