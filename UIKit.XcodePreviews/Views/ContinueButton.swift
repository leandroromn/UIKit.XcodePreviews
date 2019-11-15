//
//  ContinueButton.swift
//  UIKit.XcodePreviews
//
//  Created by Leandro Romano on 14/11/19.
//  Copyright © 2019 Leandro Romano. All rights reserved.
//

import UIKit

class ContinueButton: UIButton {

    init(title: String) {
        super.init(frame: .zero)
        setup(title: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup(title: String) {
        setTitle(title, for: .normal)
        backgroundColor = .brownieYellow
        titleLabel?.textColor = .white
        titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
        layer.cornerRadius = 8
        clipsToBounds = true
        contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    
}
