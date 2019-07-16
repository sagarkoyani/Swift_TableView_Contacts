//
//  RoundButton.swift
//  DesignableXTesting
//
//  Created by Apple on 18/05/19.
//  Copyright © 2019 Moeykens. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class RoundButton : UIButton{
    override init(frame: CGRect) {
        super.init(frame: frame)
        sharedInit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        sharedInit()
    }
    
    override func prepareForInterfaceBuilder() {
        sharedInit()
    }
    
    func sharedInit(){
        //Common Logic goes here.
        refreshCorners(value: cornerRadius)
        refreshBorderColor(value: borderColor)
        refreshBorderWidth(value: borderWidth)
    }
    func refreshCorners(value:CGFloat){
        layer.cornerRadius=value
    }
    func refreshBorderColor(value:UIColor){
        layer.borderColor=value.cgColor
    }
    func refreshBorderWidth(value:CGFloat){
        layer.borderWidth=value
    }
    @IBInspectable var cornerRadius:CGFloat=15{
        didSet{
            refreshCorners(value:cornerRadius)
        }
    }
    @IBInspectable var borderColor:UIColor=UIColor.black{
        didSet{
            refreshBorderColor(value:borderColor)
        }
    }
    @IBInspectable var borderWidth:CGFloat=1.0{
        didSet{
            refreshBorderWidth(value:borderWidth)
        }
    }
    
}

