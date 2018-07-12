//
//  ViewController.swift
//  BlurryBackgroundPopUp
//
//  Created by Bijan Cronin on 6/28/18.
//  Copyright © 2018 Bijan Cronin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let launchPopUpButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.setTitle("Show PopUp!", for: .normal)
        button.setTitleColor(.black, for: .normal)
        let font = UIFont.systemFont(ofSize: 18, weight: .regular)
        button.titleLabel?.font = font
        button.addTarget(self, action: #selector(showPopUp), for: .touchUpInside)
        button.showsTouchWhenHighlighted = true
        return button
    }()
    
    @objc func showPopUp() {
        let vc = CustomPopUpController()
        vc.modalPresentationStyle = .overFullScreen
        self.definesPresentationContext = true
        self.present(vc, animated: false, completion: nil)
    }
    
    func setupViews() {
        view.addSubview(launchPopUpButton)
        self.navigationItem.title = "Home"
        launchPopUpButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        launchPopUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        launchPopUpButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        launchPopUpButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        launchPopUpButton.layer.shadowOffset = CGSize(width: 0, height: 4)
        launchPopUpButton.layer.shadowColor = UIColor.black.cgColor
        launchPopUpButton.layer.shadowOpacity = 0.1
        launchPopUpButton.layer.shadowRadius = 4
        launchPopUpButton.layer.cornerRadius = 25
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.98, green:0.62, blue:0.58, alpha:1.0)
        setupViews()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

