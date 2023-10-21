//
//  ViewController.swift
//  Month4 HomeWork1
//
//  Created by Mac User on 20/10/23.
//

import UIKit

class ViewController: UIViewController {

    var childPhoto: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "ChildPhoto")
        return view
    }()
    
     var viewRed: UIView = {
        let view = UIView()
         view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.red
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        view.backgroundColor = UIColor(red: 78/255, green: 156/255, blue: 177/255, alpha: 1)
        
        view.addSubview(childPhoto)
        setUpConstraintsForImage()
        
       
    }
     func setUpConstraintsForImage(){
        
        childPhoto.topAnchor.constraint(equalTo: view.bottomAnchor, constant: 29).isActive = true
         childPhoto.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        childPhoto.widthAnchor.constraint(equalToConstant: 350).isActive = true
//        childPhoto.heightAnchor.constraint(equalToConstant: 256).isActive = true
    }

}

