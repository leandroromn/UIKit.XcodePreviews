//
//  CustomViewController.swift
//  UIKit.XcodePreviews
//
//  Created by Leandro Romano on 14/11/19.
//  Copyright © 2019 Leandro Romano. All rights reserved.
//

import UIKit

class CustomViewController<CustomView: UIView>: UIViewController {
    
    var customView: CustomView {
        view as! CustomView
    }
    
    override func loadView() {
        super.loadView()
        view = CustomView()
    }
    
}
