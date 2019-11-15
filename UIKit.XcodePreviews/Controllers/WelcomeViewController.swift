//
//  WelcomeViewController.swift
//  UIKit.XcodePreviews
//
//  Created by Leandro Romano on 14/11/19.
//  Copyright © 2019 Leandro Romano. All rights reserved.
//

import UIKit

final class WelcomeViewController: CustomViewController<WelcomeView> {

    override func loadView() {
        super.loadView()
        customView.delegate = self
    }
    
}

extension WelcomeViewController: WelcomeViewDelegate {
    
    func didTapContinueButton() {
        print("User tapped the continue button.", #function)
    }
    
}
