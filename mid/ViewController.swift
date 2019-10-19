//
//  ViewController.swift
//  mid
//
//  Created by Леонид on 10/19/19.
//  Copyright © 2019 Leonid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let greenSquareView: UIView = {
        let myView = UIView()
        // myView.frame.size.height = 200
        // myView.frame.size.width = 200
        myView.backgroundColor = .green
        return myView
    }()
    let redSquareView: UIView = {
        let myView = UIView()
        // myView.frame.size.height = 200
        // myView.frame.size.width = 200
        myView.backgroundColor = .red
        return myView
    }()
    let myButton: UIButton = {
        let myButton = UIButton()
        myButton.backgroundColor = .black
        myButton.setTitle("Перейти на другой экран", for: UIControl.State.normal)
        myButton.setTitleColor(.white, for: UIControl.State.normal)
        myButton.titleLabel?.font = UIFont(name: "Roboto-Regular", size: 18)
        return myButton
    }()
    let myTextView: UITextView = {
        let myTextView = UITextView()
        myTextView.text = "Алма-Ата – крупнейший мегаполис Казахстана, расположенный в предгорьях Заилийского Алатау. До 1997 года он был столицей государства и до сих пор остается торговым и культурным центром. Одна из главных достопримечательностей города – Центральный Государственный музей, где представлены тысячи экспонатов, связанных с историей страны. В центре города находится парк имени 28 гвардейцев-панфиловцев. На его территории возвышается ярко-желтая православная церковь – Вознесенский кафедральный собор царских времен."
        myTextView.font = UIFont(name: "Roboto-Regular", size: 12)
        myTextView.isScrollEnabled = false
        
        return myTextView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        myButton.addTarget(self, action: #selector(handleClick), for: .touchDragInside)
        setupViews()
        setUpConstraints()
    }
    private func setupViews(){
        [greenSquareView, redSquareView, myButton, myTextView].forEach {
            self.view.addSubview($0)
        }
    }
    private func setUpConstraints() {
        greenSquareView.anchor(top: self.view.topAnchor, leading: self.view.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 172, left: 35, bottom: 0, right: 0), size: .init(width: 137, height: 109))
        redSquareView.anchor(top: self.view.topAnchor, leading: nil, bottom: nil, trailing: self.view.trailingAnchor, padding: .init(top: 172, left:0 , bottom: 0, right: 35), size: .init(width: 137, height: 109))
        myButton.anchor(top: self.view.topAnchor, leading: self.view.leadingAnchor, bottom: nil, trailing: self.view.trailingAnchor, padding: .init(top: 302, left:35 , bottom: 36, right: 35), size: .init(width: 305, height: 109))
        myTextView.anchor(top: nil, leading: self.view.leadingAnchor, bottom: self.view.bottomAnchor, trailing: self.view.trailingAnchor, padding: .init(top: 36, left:35 , bottom: 51, right: 35), size: .init(width: 305, height: 169))
        
        
    }
    
    @objc func handleClick() {
        let vc = newFile()
        self.present(vc, animated: true)
    }


}

