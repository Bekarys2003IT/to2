//
//  ViewController3.swift
//  to2
//
//  Created by Bekarys Sandigali on 14.02.2024.
//

import UIKit

class ViewController3: UIViewController {

    let button:UIButton = {
        let button = UIButton()
        button.setTitle("Go to screen 2", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        setUI()
        // Do any additional setup after loading the view.
    }
    
    func setUI(){
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    @objc func tapButton(){
        navigationController?.popViewController(animated: true)
    }

}
