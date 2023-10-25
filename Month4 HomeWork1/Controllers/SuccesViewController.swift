//
//  SuccesViewController.swift
//  Month4 HomeWork1
//
//  Created by Mac User on 25/10/23.
//

import UIKit

class SuccesViewController: UIViewController {

    private let  successImage: UIImageView = {
        let succes = UIImageView()
        succes.translatesAutoresizingMaskIntoConstraints  = false
        succes.image = UIImage(named: "Succes")
        return succes
    }()
    
    private let succesLbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Success`"
        lbl.textColor = UIColor.white
        lbl.font = .systemFont(ofSize: 23, weight: .bold)
        return lbl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 78/255, green: 156/255, blue: 177/255, alpha: 1)
        setUpConstraintsForSuccessImage()
        setUpConstraintsForSuccessLbl()
    }
    
    private func setUpConstraintsForSuccessImage(){
        view.addSubview(successImage)
        successImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        successImage.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    private func setUpConstraintsForSuccessLbl(){
        view.addSubview(succesLbl)
        succesLbl.topAnchor.constraint(equalTo: successImage.bottomAnchor, constant: 36).isActive = true
        succesLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}
