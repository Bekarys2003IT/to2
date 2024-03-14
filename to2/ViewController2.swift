//
//  ViewController2.swift
//  to2
//
//  Created by Bekarys Sandigali on 14.02.2024.
//

import UIKit

class ViewController2: UIViewController {
    
    let button:UIButton = {
        let button = UIButton()
        button.setTitle("Go to screen 3", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    let button2:UIButton = {
        let button = UIButton()
        button.setTitle("Go to screen 1", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button .addTarget(self, action: #selector(buttonBack), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    lazy var backButton:UIBarButtonItem = {
        let button = UIBarButtonItem()
        //button.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        button.title = "go back"
        button.tintColor = .black
        button.style = .plain
        button.action = #selector(backButtonTapped)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .green
        
        navigationItem.leftBarButtonItem
        setUI()
    }

    func setUI(){
        view.addSubview(button)
        view.addSubview(button2)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button2.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 20),
            button2.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 50),
            button2.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -50)
            
        ])
    }
    @objc func buttonTapped(){
        print("Tapped")
        navigationController?.pushViewController(ViewController3(), animated: true)
        
    }
    @objc func buttonBack(){
        navigationController?.popViewController(animated: true)
    }
   
    @objc func backButtonTapped(){
        navigationController?.popViewController(animated: true)
    }


}
