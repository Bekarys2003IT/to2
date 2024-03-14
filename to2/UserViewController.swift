//
//  UserViewController.swift
//  to2
//
//  Created by Bekarys Sandigali on 14.02.2024.
//

import UIKit

class UserViewController: UIViewController {
    let imageNames = ["dice","dice-2","dice-3","dice-4","dice-5","dice-6"]
    lazy var firstDice:UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "dice-3")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    lazy var secondDice:UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "dice")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    lazy var button: UIButton = {
        let button = UIButton()
        button.tintColor = .black
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 8
        button.layer.borderColor = .init(red: 20, green: 20, blue: 20, alpha: 20)
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Shuffle", for: .normal)
        button .addTarget(self, action: #selector(playButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        // Do any additional setup after loading the view.
    }
    private func setUI(){
        view.addSubview(firstDice)
        view.addSubview(secondDice)
        view.addSubview(button)
        NSLayoutConstraint.activate([
            firstDice.topAnchor.constraint(equalTo: view.topAnchor, constant: 250),
            firstDice.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            firstDice.widthAnchor.constraint(equalToConstant: 85),
            firstDice.heightAnchor.constraint(equalToConstant: 85),
            secondDice.leadingAnchor.constraint(equalTo: firstDice.leadingAnchor, constant: 100),
            secondDice.widthAnchor.constraint(equalToConstant: 85),
            secondDice.heightAnchor.constraint(equalToConstant: 85),
            secondDice.topAnchor.constraint(equalTo: view.topAnchor,constant: 250),
            button.topAnchor.constraint(equalTo: view.centerYAnchor),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
    @objc func playButton(){
        firstDice.image=UIImage(named: imageNames.randomElement()!)
        secondDice.image=UIImage(named: imageNames.randomElement()!)
    }
}
