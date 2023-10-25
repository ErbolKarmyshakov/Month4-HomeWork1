//
//  SignUpViewController.swift
//  Month4 HomeWork1
//
//  Created by Mac User on 20/10/23.
//

import UIKit

class SignUpViewController: UIViewController {
    
    private let childPhotoInSecondVC: UIImageView = {
         let child = UIImageView()
         child.translatesAutoresizingMaskIntoConstraints = false
         child.image = UIImage(named: "ChildPhoto")
         return child
     }()
    
    private let whiteScrollView: UIScrollView = {
        let white = UIScrollView()
        white.translatesAutoresizingMaskIntoConstraints = false
        white.backgroundColor = .white
        white.clipsToBounds = true
        white.layer.cornerRadius = 40
        return white
    }()
    
    private let containerView: UIView = {
        let container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false
        container.backgroundColor = .clear
        container.clipsToBounds = true
        container.layer.cornerRadius = 40
        return container
    }()
    
    private let fullNameLbl: UILabel = {
        let full = UILabel()
        full.translatesAutoresizingMaskIntoConstraints = false
        full.text = "Full Name"
        full.font = .systemFont(ofSize: 12, weight: .light)
        full.textColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
        return full
    }()
    
    private let fullNameTF: UITextField = {
        let full = UITextField()
        full.translatesAutoresizingMaskIntoConstraints = false
        full.backgroundColor = .red
        return full
    }()
    
    private let firstlineUnderTF: UIView = {
        let first = UIView()
        first.translatesAutoresizingMaskIntoConstraints = false
        first.backgroundColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
        return first
    }()
    
    private let mobileNumberLbl: UILabel = {
        let full = UILabel()
        full.translatesAutoresizingMaskIntoConstraints = false
        full.text = "Mobile Number"
        full.font = .systemFont(ofSize: 12, weight: .light)
        full.textColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
        return full
    }()
    
    private let mobileNumberTF: UITextField = {
        let full = UITextField()
        full.translatesAutoresizingMaskIntoConstraints = false
        full.backgroundColor = .red
        return full
    }()
    
    private let secondlineUnderTF: UIView = {
        let first = UIView()
        first.translatesAutoresizingMaskIntoConstraints = false
        first.backgroundColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
        return first
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 78/255, green: 156/255, blue: 177/255, alpha: 1)
        allSetUpConstraints()
    }
    private func allSetUpConstraints(){
        setUpConstraintsForChildImageSecondVC()
        setUpConstraintsForWhiteScrollVIew ()
        setUpConstraintsForContainerView()
        setUpConstraintsForFullNameLbl()
        setUpConstraintsForFullNameTF()
        setUpConstraintsForFirstLineUnderTF()
    }
   
    private func setUpConstraintsForChildImageSecondVC(){
        view.addSubview(childPhotoInSecondVC)
        childPhotoInSecondVC.topAnchor.constraint(equalTo: view.topAnchor, constant: 29).isActive = true
        childPhotoInSecondVC.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    private func setUpConstraintsForWhiteScrollVIew(){
        view.addSubview(whiteScrollView)
        whiteScrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 192).isActive = true
        whiteScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        whiteScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        whiteScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
   
    private func setUpConstraintsForContainerView(){
        view.addSubview(containerView)
        containerView.topAnchor.constraint(equalTo: whiteScrollView.topAnchor, constant: 0).isActive = true
               containerView.leadingAnchor.constraint(equalTo: whiteScrollView.leadingAnchor, constant: 0).isActive = true
               containerView.trailingAnchor.constraint(equalTo: whiteScrollView.trailingAnchor, constant: 0).isActive = true
               containerView.bottomAnchor.constraint(equalTo: whiteScrollView.bottomAnchor, constant: 0).isActive = true
               containerView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
               containerView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
    }
    
    private func setUpConstraintsForFullNameLbl(){
        containerView.addSubview(fullNameLbl)
        fullNameLbl.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 54).isActive = true
        fullNameLbl.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
    }
    private func setUpConstraintsForFullNameTF(){
        containerView.addSubview(fullNameTF)
        fullNameTF.topAnchor.constraint(equalTo: fullNameLbl.bottomAnchor, constant: 12).isActive = true
        fullNameTF.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
        fullNameTF.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -60).isActive = true
        fullNameTF.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    private func setUpConstraintsForFirstLineUnderTF(){
        containerView.addSubview(firstlineUnderTF)
        firstlineUnderTF.topAnchor.constraint(equalTo: fullNameTF.bottomAnchor, constant: 12).isActive = true
        firstlineUnderTF.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
        firstlineUnderTF.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -22).isActive = true
        firstlineUnderTF.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }

}
