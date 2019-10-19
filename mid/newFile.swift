//
//  newFile.swift
//  mid
//
//  Created by Леонид on 10/19/19.
//  Copyright © 2019 Leonid. All rights reserved.
//

import Foundation
import UIKit
class newFile: UIViewController {
    var myLabel: UILabel = {
        let myLabel = UILabel()
        myLabel.backgroundColor = UIColor(red: 0.77, green: 0.77, blue: 0.77, alpha: 1)
        myLabel.layer.cornerRadius = 30
        myLabel.layer.masksToBounds = true
        
        myLabel.text = "You have finished! My congrats!"
        
        myLabel.font = UIFont(name: "Roboto-Regular", size: 12)
        myLabel.textAlignment = .center;
        myLabel.font = myLabel.font.withSize(12)
        
        myLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        return myLabel
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setupViews()
        setUpConstraints()
    }
    private func setupViews(){
        [myLabel].forEach {
            self.view.addSubview($0)
        }
    }
    private func setUpConstraints() {
        myLabel.anchor(top: self.view.topAnchor, leading: self.view.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 278, left: 0, bottom: 0, right: 0), size: .init(width: 267, height: 110))
    }
    
}
