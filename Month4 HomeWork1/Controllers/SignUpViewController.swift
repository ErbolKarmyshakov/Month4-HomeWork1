//
//  SignUpViewController.swift
//  Month4 HomeWork1
//
//  Created by Mac User on 20/10/23.
//

import UIKit

class SignUpViewController: UIViewController {

    private var successImage: UIImageView = {
        let succes = UIImageView()
        succes.translatesAutoresizingMaskIntoConstraints  = false
        succes.image = UIImage(named: "Succes")
        return succes
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 78/255, green: 156/255, blue: 177/255, alpha: 1)
setUpConstraintsForSuccessImage()
    }
    
    private func setUpConstraintsForSuccessImage(){
        view.addSubview(successImage)
//        successImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 88).isActive = true
//        successImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 88).isActive = true
        successImage.topAnchor.constraint(equalToSystemSpacingBelow: view.topAnchor, multiplier: 2/3).isActive = true
       
        
    }

   

}
