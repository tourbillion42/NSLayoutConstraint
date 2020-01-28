//
//  ViewController.swift
//  NSLayoutConstraint
//
//  Created by Hwang on 2020/01/28.
//  Copyright © 2020 Hwang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let oneLab : UILabel = UILabel()
    let twoLab : UILabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        oneLab.text = "2018/01/28"
        oneLab.textAlignment = .center
        oneLab.textColor = .white
        oneLab.backgroundColor = .blue
        oneLab.font = .boldSystemFont(ofSize: 18)
        self.view.addSubview(oneLab)
        oneLab.translatesAutoresizingMaskIntoConstraints = false
        oneLab.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        oneLab.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30).isActive = true
        
        let labelPriority = UILayoutPriority.defaultLow + 1
        print(labelPriority)
        oneLab.setContentHuggingPriority(labelPriority, for: .horizontal)
        oneLab.setContentCompressionResistancePriority(UILayoutPriority.defaultHigh + 1, for: .horizontal)
        
        twoLab.text = "Apple Mackbook Pro is probably actually great"
        twoLab.textAlignment = .center
        twoLab.textColor = .white
        twoLab.backgroundColor = .red
        twoLab.font = UIFont.boldSystemFont(ofSize: 18)
        self.view.addSubview(twoLab)
        twoLab.translatesAutoresizingMaskIntoConstraints = false
        twoLab.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        twoLab.leadingAnchor.constraint(equalTo: oneLab.trailingAnchor, constant: 20).isActive = true
        twoLab.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30).isActive = true
//        twoLab.setContentHuggingPriority(UILayoutPriority.defaultLow, for: .horizontal)
    }

}


