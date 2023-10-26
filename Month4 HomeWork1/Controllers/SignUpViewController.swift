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
        full.backgroundColor = .clear
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
        full.backgroundColor = .clear
        return full
    }()
    
    private let secondlineUnderTF: UIView = {
        let first = UIView()
        first.translatesAutoresizingMaskIntoConstraints = false
        first.backgroundColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
        return first
    }()
    
    private let emailLbl: UILabel = {
        let email = UILabel()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.text = "Email"
        email.font = .systemFont(ofSize: 12, weight: .light)
        email.textColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
        return email
    }()
    
    private let emailTF: UITextField = {
        let email = UITextField()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.backgroundColor = .clear
        return email
    }()
    
    private let thirdlineUnderTF: UIView = {
        let first = UIView()
        first.translatesAutoresizingMaskIntoConstraints = false
        first.backgroundColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
        return first
    }()
    
    private let userNameLbl: UILabel = {
        let email = UILabel()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.text = "User Name"
        email.font = .systemFont(ofSize: 12, weight: .light)
        email.textColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
        return email
    }()
    
    private let userNameTF: UITextField = {
        let email = UITextField()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.backgroundColor = .clear
        return email
    }()
    
    private let fourthlineUnderTF: UIView = {
        let first = UIView()
        first.translatesAutoresizingMaskIntoConstraints = false
        first.backgroundColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
        return first
    }()
    
    private let passwordLbl: UILabel = {
        let email = UILabel()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.text = "Password"
        email.font = .systemFont(ofSize: 12, weight: .light)
        email.textColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
        return email
    }()
    
    private let passwordTF: UITextField = {
        let email = UITextField()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.backgroundColor = .clear
        return email
    }()
    
    private let fifthlineUnderTF: UIView = {
        let first = UIView()
        first.translatesAutoresizingMaskIntoConstraints = false
        first.backgroundColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
        return first
    }()
    
    private let  eyeBtn: UIButton = {
            let eye = UIButton(type: .system)
            eye.translatesAutoresizingMaskIntoConstraints = false
            let eyeimage = UIImage(systemName: "eye.fill")
            eye.tintColor = .gray
            eye.setImage(eyeimage, for: .normal)
            return eye
        }()
    
    private let confirmLbl: UILabel = {
        let email = UILabel()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.text = "Confirm Password"
        email.font = .systemFont(ofSize: 12, weight: .light)
        email.textColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
        return email
    }()
    
    private let confirmTF: UITextField = {
        let email = UITextField()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.backgroundColor = .clear
        return email
    }()
    
    private let sixthlineUnderTF: UIView = {
        let first = UIView()
        first.translatesAutoresizingMaskIntoConstraints = false
        first.backgroundColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
        return first
    }()
    
    private let  secondEyeBtn: UIButton = {
            let eye = UIButton(type: .system)
            eye.translatesAutoresizingMaskIntoConstraints = false
            let eyeimage = UIImage(systemName: "eye.fill")
            eye.tintColor = .gray
            eye.setImage(eyeimage, for: .normal)
            return eye
        }()
    
    private let signUpBtn: UIButton = {
        let signUp = UIButton(type: .system)
        signUp.translatesAutoresizingMaskIntoConstraints = false
        signUp.setTitle("Sign Up", for: .normal)
        signUp.backgroundColor = UIColor(red: 39/255, green: 85/255, blue: 174/255, alpha: 1)
        signUp.layer.cornerRadius = 15
        signUp.tintColor = .white
        signUp.titleLabel?.font = .systemFont(ofSize: 18, weight: .medium)
        return signUp
    }()
    
    private let someImage: UIImageView = {
        let someImage = UIImageView()
        someImage.translatesAutoresizingMaskIntoConstraints = false
        someImage.image = UIImage(named: "SomeImage")
        return someImage
    }()
    
    private let already: UILabel = {
        let already = UILabel()
        already.translatesAutoresizingMaskIntoConstraints = false
        already.text = "Already have an Account?"
        already.textColor = UIColor.black
        already.font = .systemFont(ofSize: 13, weight: .medium)
        return already
    }()
    
    private let signInBtn: UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Sign In", for: .normal)
        btn.setTitleColor(UIColor(red: 76/255, green: 148/255, blue: 233/255, alpha: 1), for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 13, weight: .bold)
        return btn
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
        setUpConstraintsForMobileNumberLbl()
        setUpConstraintsForMobileNumberTF()
        setUpConstraintsForSecondLineUnderTF()
        setUpConstraintsForEmailLbl()
        setUpConstraintsForEmailTF()
        setUpConstraintsForThirdLineUnderTF()
        setUpConstraintsForUserNamelLbl()
        setUpConstraintsForUserNAmeTF()
        setUpConstraintsForFourthLineUnderTF()
        setUpConstraintsForPasswordLbl()
        setUpConstraintsForPasswordTF()
        setUpConstraintsForFifthLineUnderTF()
        setUpConstraintsForEyeBtn()
        setUpConstraintsForConfirmLbl()
        setUpConstraintsForConfirmTF()
        setUpConstraintsForSixthLineUnderTF()
        setUpConstraintsForSecondEyeBtn()
        setUpConstraintsForSignUpBtn()
        signUpTapped(signUpBtn)
        setUpConstraintsForSomeImage()
        setUpConstraintsForAlreadyLbl()
        setUpConstraintsForSignInBtn()
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
    
    private func setUpConstraintsForMobileNumberLbl(){
        containerView.addSubview(mobileNumberLbl)
        mobileNumberLbl.topAnchor.constraint(equalTo: firstlineUnderTF.bottomAnchor, constant: 8).isActive = true
        mobileNumberLbl.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
    }
    
    private func setUpConstraintsForMobileNumberTF(){
        containerView.addSubview(mobileNumberTF)
        mobileNumberTF.topAnchor.constraint(equalTo: mobileNumberLbl.bottomAnchor, constant: 12).isActive = true
        mobileNumberTF.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
        mobileNumberTF.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -60).isActive = true
        mobileNumberTF.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    private func setUpConstraintsForSecondLineUnderTF(){
        containerView.addSubview(secondlineUnderTF)
        secondlineUnderTF.topAnchor.constraint(equalTo: mobileNumberTF.bottomAnchor, constant: 13).isActive = true
        secondlineUnderTF.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
        secondlineUnderTF.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -22).isActive = true
        secondlineUnderTF.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    private func setUpConstraintsForEmailLbl(){
        containerView.addSubview(emailLbl)
        emailLbl.topAnchor.constraint(equalTo: secondlineUnderTF.bottomAnchor, constant: 8).isActive = true
        emailLbl.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
    }
    
    private func setUpConstraintsForEmailTF(){
        containerView.addSubview(emailTF)
        emailTF.topAnchor.constraint(equalTo: emailLbl.bottomAnchor, constant: 12).isActive = true
        emailTF.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
        emailTF.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -60).isActive = true
        emailTF.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    private func setUpConstraintsForThirdLineUnderTF(){
        containerView.addSubview(thirdlineUnderTF)
        thirdlineUnderTF.topAnchor.constraint(equalTo: emailTF.bottomAnchor, constant: 13).isActive = true
        thirdlineUnderTF.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
        thirdlineUnderTF.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -22).isActive = true
        thirdlineUnderTF.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    private func setUpConstraintsForUserNamelLbl(){
        containerView.addSubview(userNameLbl)
        userNameLbl.topAnchor.constraint(equalTo: thirdlineUnderTF.bottomAnchor, constant: 8).isActive = true
        userNameLbl.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
    }
    
    private func setUpConstraintsForUserNAmeTF(){
        containerView.addSubview(userNameTF)
        userNameTF.topAnchor.constraint(equalTo: userNameLbl.bottomAnchor, constant: 12).isActive = true
        userNameTF.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
        userNameTF.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -60).isActive = true
        userNameTF.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    private func setUpConstraintsForFourthLineUnderTF(){
        containerView.addSubview(fourthlineUnderTF)
        fourthlineUnderTF.topAnchor.constraint(equalTo: userNameTF.bottomAnchor, constant: 13).isActive = true
        fourthlineUnderTF.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
        fourthlineUnderTF.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -22).isActive = true
        fourthlineUnderTF.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    private func setUpConstraintsForPasswordLbl(){
        containerView.addSubview(passwordLbl)
        passwordLbl.topAnchor.constraint(equalTo: fourthlineUnderTF.bottomAnchor, constant: 8).isActive = true
        passwordLbl.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
    }
    
    private func setUpConstraintsForPasswordTF(){
        containerView.addSubview(passwordTF)
        passwordTF.topAnchor.constraint(equalTo: passwordLbl.bottomAnchor, constant: 12).isActive = true
        passwordTF.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
        passwordTF.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -60).isActive = true
        passwordTF.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    private func setUpConstraintsForFifthLineUnderTF(){
        containerView.addSubview(fifthlineUnderTF)
        fifthlineUnderTF.topAnchor.constraint(equalTo: passwordTF.bottomAnchor, constant: 13).isActive = true
        fifthlineUnderTF.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
        fifthlineUnderTF.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -22).isActive = true
        fifthlineUnderTF.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    private func setUpConstraintsForEyeBtn(){
        containerView.addSubview(eyeBtn)
        eyeBtn.topAnchor.constraint(equalTo: passwordLbl.bottomAnchor, constant: 16).isActive = true
                eyeBtn.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -32).isActive = true
                eyeBtn.heightAnchor.constraint(equalToConstant: 12).isActive = true
                eyeBtn.widthAnchor.constraint(equalToConstant: 18).isActive = true
    }
    
    private func setUpConstraintsForConfirmLbl(){
        containerView.addSubview(confirmLbl)
        confirmLbl.topAnchor.constraint(equalTo: fifthlineUnderTF.bottomAnchor, constant: 8).isActive = true
        confirmLbl.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
    }
    
    private func setUpConstraintsForConfirmTF(){
        containerView.addSubview(confirmTF)
        confirmTF.topAnchor.constraint(equalTo: confirmLbl.bottomAnchor, constant: 12).isActive = true
        confirmTF.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
        confirmTF.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -60).isActive = true
        confirmTF.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    private func setUpConstraintsForSixthLineUnderTF(){
        containerView.addSubview(sixthlineUnderTF)
        sixthlineUnderTF.topAnchor.constraint(equalTo: confirmTF.bottomAnchor, constant: 13).isActive = true
        sixthlineUnderTF.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
        sixthlineUnderTF.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant:-22).isActive = true
        sixthlineUnderTF.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }

    private func setUpConstraintsForSecondEyeBtn(){
        containerView.addSubview(secondEyeBtn)
        secondEyeBtn.topAnchor.constraint(equalTo: confirmLbl.bottomAnchor, constant: 16).isActive = true
        secondEyeBtn.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -32).isActive = true
        secondEyeBtn.heightAnchor.constraint(equalToConstant: 12).isActive = true
        secondEyeBtn.widthAnchor.constraint(equalToConstant: 18).isActive = true
    }
    
    private func setUpConstraintsForSignUpBtn(){
        containerView.addSubview(signUpBtn)
        signUpBtn.topAnchor.constraint(equalTo: sixthlineUnderTF.bottomAnchor, constant: 32).isActive = true
        signUpBtn.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 96).isActive = true
        signUpBtn.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -96).isActive = true
        signUpBtn.heightAnchor.constraint(equalToConstant: 40).isActive = true
        signUpBtn.addTarget(self, action: #selector(signUpTapped), for: .touchUpInside)
    }
    
    @objc func signUpTapped(_ sender: UIButton) {
           var shouldNavigate = true
           
           if fullNameTF.text?.isEmpty ?? true {
               fullNameTF.layer.borderColor = UIColor.red.cgColor
               fullNameTF.layer.borderWidth = 1
               fullNameTF.placeholder = "Заполните, пожалуйста"
               shouldNavigate = false
           }
           
           if mobileNumberTF.text?.isEmpty ?? true {
               mobileNumberTF.layer.borderColor = UIColor.red.cgColor
               mobileNumberTF.layer.borderWidth = 1
               mobileNumberTF.placeholder = "Заполните, пожалуйста"
               shouldNavigate = false
           }
           
           if emailTF.text?.isEmpty ?? true {
               emailTF.layer.borderColor = UIColor.red.cgColor
               emailTF.layer.borderWidth = 1
               emailTF.placeholder = "Заполните, пожалуйста"
               shouldNavigate = false
           }
           
           if userNameTF.text?.isEmpty ?? true {
               userNameTF.layer.borderColor = UIColor.red.cgColor
               userNameTF.layer.borderWidth = 1
               userNameTF.placeholder = "Заполните, пожалуйста"
               shouldNavigate = false
           }
           
           if passwordTF.text?.isEmpty ?? true {
               passwordTF.layer.borderColor = UIColor.red.cgColor
               passwordTF.layer.borderWidth = 1
               passwordTF.placeholder = "Заполните, пожалуйста"
               shouldNavigate = false
           }
           
           if confirmTF.text?.isEmpty ?? true {
               confirmTF.layer.borderColor = UIColor.red.cgColor
               confirmTF.layer.borderWidth = 1
               confirmTF.placeholder = "Заполните, пожалуйста"
               shouldNavigate = false
           }
           
           if shouldNavigate {
               let vc = SuccesViewController()
               navigationController?.pushViewController(vc, animated: true)
           }
       }
    
    private func setUpConstraintsForSomeImage() {
        containerView.addSubview(someImage)
        someImage.topAnchor.constraint(equalTo: signUpBtn.bottomAnchor, constant: 18).isActive = true
            someImage.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
            someImage.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
            someImage.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        }
    
    private func setUpConstraintsForAlreadyLbl(){
        containerView.addSubview(already)
        already.topAnchor.constraint(equalTo: signUpBtn.bottomAnchor, constant: 36).isActive = true
        already.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10).isActive = true
    }
    
    private func setUpConstraintsForSignInBtn(){
        containerView.addSubview(signInBtn)
        signInBtn.topAnchor.constraint(equalTo: signUpBtn.bottomAnchor, constant: 29).isActive = true
        signInBtn.leadingAnchor.constraint(equalTo: already.trailingAnchor, constant: 5).isActive = true
        signInBtn.addTarget(self, action: #selector(signInTapped), for: .touchUpInside)
    }
    
    @objc func signInTapped(_ sender: UIButton){
        navigationController?.popToRootViewController(animated: true)
    }
}
