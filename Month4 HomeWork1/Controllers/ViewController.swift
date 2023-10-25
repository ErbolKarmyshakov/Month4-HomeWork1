//
//  ViewController.swift
//  Month4 HomeWork1
//
//  Created by Mac User on 20/10/23.
//

import UIKit

class ViewController: UIViewController {

   private let childPhoto: UIImageView = {
        let child = UIImageView()
        child.translatesAutoresizingMaskIntoConstraints = false
        child.image = UIImage(named: "ChildPhoto")
        return child
    }()
    
    private let welcomLbl: UILabel = {
        let welcome = UILabel()
        welcome.translatesAutoresizingMaskIntoConstraints = false
        welcome.text = "Welcome Back"
        welcome.textColor = UIColor.white
        welcome.font = .systemFont(ofSize:  34, weight: .bold)
        return welcome
    }()
    
    private let registrView: UIView = {
        let registr = UIView()
        registr.translatesAutoresizingMaskIntoConstraints = false
        registr.backgroundColor = UIColor.white
        registr.layer.cornerRadius = 35
        return registr
    }()
    
    private let signLbl: UILabel = {
        let sign = UILabel()
        sign.translatesAutoresizingMaskIntoConstraints = false
        sign.text  = "Sign in to continue"
        sign.font = .systemFont(ofSize: 20, weight: .light)
        sign.textColor = UIColor(red: 178/255, green: 215/255, blue: 225/255, alpha: 1)
        return sign
    }()
    
    private let firstTFLbl: UILabel = {
        let first = UILabel()
        first.translatesAutoresizingMaskIntoConstraints = false
        first.text = "Employee Id / Email"
        first.font = .systemFont(ofSize: 12, weight: .light)
        first.textColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
        return first
    }()
    
    private let firstTF: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = .clear
        return tf
    }()
    
    
    private let firstLineView: UIView = {
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.backgroundColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
        return line
    }()
    
    private let secondTFLbl: UILabel = {
        let second = UILabel()
        second.translatesAutoresizingMaskIntoConstraints = false
        second.text = "Password"
        second.font = .systemFont(ofSize: 12, weight: .light)
        second.textColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
        return second
    }()
    
    private let secondTF: UITextField = {
        let stf = UITextField()
        stf.translatesAutoresizingMaskIntoConstraints = false
        stf.backgroundColor = .clear
        return stf
    }()
    
    private let  eyeBtn: UIButton = {
            let eye = UIButton(type: .system)
            eye.translatesAutoresizingMaskIntoConstraints = false
            let eyeimage = UIImage(systemName: "eye.fill")
            eye.tintColor = .gray
            eye.setImage(eyeimage, for: .normal)
            return eye
        }()
    
    private let secondLineView: UIView = {
        let sline = UIView()
        sline.translatesAutoresizingMaskIntoConstraints = false
        sline.backgroundColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
        return sline
    }()
    
    
    private var  isPasswordVisible = false
    
    private let forgotBtn: UIButton = {
        let fbutton = UIButton()
        fbutton.translatesAutoresizingMaskIntoConstraints = false
        fbutton.setTitle("Forgot Password?", for: .normal)
        fbutton.setTitleColor(UIColor(red: 76/255, green: 148/255, blue: 233/255, alpha: 1), for: .normal)
        return fbutton
    }()
    
    private let rememberLbl: UILabel = {
        let remember = UILabel()
        remember.translatesAutoresizingMaskIntoConstraints = false
        remember.text = "Remember Me"
        remember.textColor = .black
        remember.font = .systemFont(ofSize: 18, weight: .bold)
        return remember
    }()
    
    private let checkBoxBtn: UIButton = {
            let check = UIButton(type: .system)
            check.translatesAutoresizingMaskIntoConstraints = false
            check.layer.cornerRadius = 5
            check.layer.borderWidth = 2
            check.layer.borderColor = UIColor.black.cgColor
            let checkmarkImage = UIImage(systemName: "checkmark.square.fill")
            check.tintColor = .black
            check.setImage(checkmarkImage, for: .selected)
            return check
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
    
    private let dontHaveLbl: UILabel = {
        let dont = UILabel()
        dont.translatesAutoresizingMaskIntoConstraints = false
        dont.text = "Don't have an Account?"
        dont.textColor = UIColor.black
        dont.font = .systemFont(ofSize: 13, weight: .medium)
        return dont
    }()
    
    private let signInBtn: UIButton = {
        let signIn = UIButton(type: .system)
        signIn.translatesAutoresizingMaskIntoConstraints = false
        signIn.setTitle("Sign In", for: .normal)
        signIn.setTitleColor(UIColor(red: 76/255, green: 148/255, blue: 233/255, alpha: 1), for: .normal)
        signIn.titleLabel?.font = .systemFont(ofSize: 13, weight: .bold)
        return signIn
    }()
    
    private let whiteView: UIView =  {
        let white = UIView()
        white.backgroundColor = UIColor.red
        return white
    }()
    
    private let someImage: UIImageView = {
        let someImage = UIImageView()
        someImage.translatesAutoresizingMaskIntoConstraints = false
        someImage.image = UIImage(named: "SomeImage")
        return someImage
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    view.backgroundColor = UIColor(red: 78/255, green: 156/255, blue: 177/255, alpha: 1)
     
        allsetUpConstraints()
        
       
    }
    
    private func allsetUpConstraints(){
        setUpConstraintsForImage()
        
        setUpConstraintsForWelcomeLabel()
        
        setUpConstraintsForSignLabel()
        
        setUpConstraintsForRegistrView()
        
        setUpConstraintsForFirstTFLabel()
        
        setUpConstraintsForFirstTF()
        
        setUpConstraintsForFirstLineView()
        
        setUpConstraintsForSecondTFLabel()
        
        setUpConstraintsForSecondTF()
        
        setUpConstraintsForSecondLineView()
        
        setUpConstraintsForImageEye()
        
        setUpConstraintsForForgotBtn()
        
        setUpConstraintsForCheckImage()
        
        setUpConstraintsForRememberLabel()
        
        setUpConstraintsForSignUpBtn()

        setUpConstraintsForSignInBtn()
        
  setUpConstraintsForSomeImage()
        
        setUpConstraintsForWhiteView()
        
        eyeBtnTapped(eyeBtn)
        
        checkboxTapped()
        
        setUpConstraintsForDontLbl()
    }
    private  func setUpConstraintsForImage(){
         view.addSubview(childPhoto)
        childPhoto.topAnchor.constraint(equalTo: view.topAnchor, constant: 29).isActive = true
         childPhoto.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
      
    }
    
    private func setUpConstraintsForWelcomeLabel(){
        view.addSubview(welcomLbl)
        welcomLbl.topAnchor.constraint(equalTo: view.safeTopAnchor, constant: 244).isActive = true
        welcomLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
    }
    
    private func setUpConstraintsForSignLabel(){
        view.addSubview(signLbl)
        signLbl.topAnchor.constraint(equalTo: welcomLbl.bottomAnchor, constant: 4).isActive = true
        signLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
    }
    
    private func setUpConstraintsForRegistrView(){
        view.addSubview(registrView)
        registrView.topAnchor.constraint(equalTo: signLbl.bottomAnchor, constant: 8).isActive  = true
        registrView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        registrView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        registrView.heightAnchor.constraint(equalToConstant: 442).isActive = true
    }
    
    private func setUpConstraintsForFirstTFLabel(){
        registrView.addSubview(firstTFLbl)
        firstTFLbl.topAnchor.constraint(equalTo: registrView.topAnchor, constant: 43).isActive = true
        firstTFLbl.leadingAnchor.constraint(equalTo: registrView.leadingAnchor, constant: 23).isActive = true
    }
    
    private func setUpConstraintsForFirstTF(){
        registrView.addSubview(firstTF)
        firstTF.topAnchor.constraint(equalTo: firstTFLbl.bottomAnchor, constant: 13).isActive  = true
        firstTF.leadingAnchor.constraint(equalTo: registrView.leadingAnchor, constant: 23).isActive = true
        firstTF.trailingAnchor.constraint(equalTo: registrView.trailingAnchor, constant: -60).isActive = true
    }
    
    private func setUpConstraintsForFirstLineView(){
        registrView.addSubview(firstLineView)
        firstLineView.topAnchor.constraint(equalTo: firstTF.bottomAnchor, constant: 13).isActive = true
        firstLineView.leadingAnchor.constraint(equalTo: registrView.leadingAnchor, constant: 23).isActive = true
        firstLineView.trailingAnchor.constraint(equalTo: registrView.trailingAnchor, constant: -23).isActive = true
        firstLineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    private func setUpConstraintsForSecondTFLabel(){
        registrView.addSubview(secondTFLbl)
        secondTFLbl.topAnchor.constraint(equalTo: firstLineView.bottomAnchor, constant: 25).isActive = true
        secondTFLbl.leadingAnchor.constraint(equalTo: registrView.leadingAnchor, constant: 23).isActive = true
    }
    
    private func setUpConstraintsForSecondTF(){
        registrView.addSubview(secondTF)
        secondTF.topAnchor.constraint(equalTo: secondTFLbl.bottomAnchor, constant: 10).isActive  = true
        secondTF.leadingAnchor.constraint(equalTo: registrView.leadingAnchor, constant: 23).isActive = true
        secondTF.trailingAnchor.constraint(equalTo: registrView.trailingAnchor, constant: -60).isActive = true
    }
    
    private func setUpConstraintsForImageEye(){
        registrView.addSubview(eyeBtn)
               eyeBtn.topAnchor.constraint(equalTo: firstLineView.bottomAnchor, constant: 50).isActive = true
               eyeBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
               eyeBtn.heightAnchor.constraint(equalToConstant: 13).isActive = true
               eyeBtn.widthAnchor.constraint(equalToConstant: 18).isActive = true

     eyeBtn.addTarget(self, action: #selector(eyeBtnTapped), for: .touchUpInside)
    }
    
    private func setUpConstraintsForSecondLineView(){
        registrView.addSubview(secondLineView)
        secondLineView.topAnchor.constraint(equalTo: secondTF.bottomAnchor, constant: 13).isActive = true
        secondLineView.leadingAnchor.constraint(equalTo: registrView.leadingAnchor, constant: 23).isActive = true
        secondLineView.trailingAnchor.constraint(equalTo: registrView.trailingAnchor, constant: -23).isActive = true
        secondLineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    private func setUpConstraintsForForgotBtn(){
        registrView.addSubview(forgotBtn)
        forgotBtn.topAnchor.constraint(equalTo: secondLineView.bottomAnchor, constant: 3).isActive = true
        forgotBtn.trailingAnchor.constraint(equalTo: registrView.trailingAnchor, constant: -22).isActive = true
    }
    
    private func setUpConstraintsForCheckImage(){
        registrView.addSubview(checkBoxBtn)
                checkBoxBtn.topAnchor.constraint(equalTo: secondLineView.bottomAnchor, constant: 42).isActive = true
                checkBoxBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
                checkBoxBtn.heightAnchor.constraint(equalToConstant: 24).isActive = true
                checkBoxBtn.widthAnchor.constraint(equalToConstant: 19).isActive = true
                
                checkBoxBtn.addTarget(self, action: #selector(checkboxTapped), for: .touchUpInside)
            }
    
    
    private func setUpConstraintsForRememberLabel(){
        registrView.addSubview(rememberLbl)
        rememberLbl.topAnchor.constraint(equalTo: secondLineView.bottomAnchor, constant: 42).isActive = true
        rememberLbl.leadingAnchor.constraint(equalTo: checkBoxBtn.trailingAnchor, constant: 12).isActive = true
    }
    
    
    private func setUpConstraintsForSignUpBtn(){
        registrView.addSubview(signUpBtn)
        signUpBtn.topAnchor.constraint(equalTo: rememberLbl.bottomAnchor, constant: 35).isActive = true
        signUpBtn.leadingAnchor.constraint(equalTo: registrView.leadingAnchor, constant: 98).isActive = true
        signUpBtn.trailingAnchor.constraint(equalTo: registrView.trailingAnchor, constant: -94).isActive = true
        signUpBtn.heightAnchor.constraint(equalToConstant: 40).isActive = true
        signUpBtn.addTarget(self, action: #selector(signUpTapped), for: .touchUpInside)
    }
    
    private func setUpConstraintsForWhiteView(){
        view.addSubview(whiteView)
        whiteView.bottomAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
        whiteView.widthAnchor.constraint(equalToConstant:374).isActive = true
    }
    
    private func setUpConstraintsForDontLbl(){
        registrView.addSubview(dontHaveLbl)
        dontHaveLbl.topAnchor.constraint(equalTo: someImage.topAnchor, constant: 14).isActive = true
            dontHaveLbl.leadingAnchor.constraint(equalTo: someImage.leadingAnchor, constant: 10).isActive = true
                dontHaveLbl.heightAnchor.constraint(equalToConstant: 16).isActive = true
    }
    
    private func setUpConstraintsForSignInBtn(){
        registrView.addSubview(signInBtn)
        signInBtn.topAnchor.constraint(equalTo: signUpBtn.bottomAnchor, constant: 20).isActive = true
                signInBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
                signInBtn.heightAnchor.constraint(equalToConstant: 40).isActive = true
                signInBtn.widthAnchor.constraint(equalToConstant: 168).isActive = true
        signInBtn.addTarget(self, action: #selector(signInTapped), for: .touchUpInside)
    }
    
    private func setUpConstraintsForSomeImage() {
        registrView.addSubview(someImage)
            someImage.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
            someImage.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
            someImage.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        }

@objc func eyeBtnTapped(_ sender: UIButton) {
    isPasswordVisible.toggle()
            secondTF.isSecureTextEntry = !isPasswordVisible
    
}

@objc func checkboxTapped() {
    checkBoxBtn.isSelected.toggle()
}

    @objc func signInTapped(_ sender: UIButton) {
            var shouldNavigate = true
            
            if firstTF.text?.isEmpty ?? true {
                firstTF.layer.borderColor = UIColor.red.cgColor
                firstTF.layer.borderWidth = 1
                firstTF.placeholder = "Заполните, пожалуйста"
                shouldNavigate = false
            }
            
            if secondTF.text?.isEmpty ?? true {
                secondTF.layer.borderColor = UIColor.red.cgColor
                secondTF.layer.borderWidth = 1
                secondTF.placeholder = "Заполните, пожалуйста"
                shouldNavigate = false
            }
            
            if shouldNavigate {
                let vc = SuccesViewController()
                navigationController?.pushViewController(vc, animated: true)
            }
        }
    
    @objc func signUpTapped(_ sender: UIButton) {
        let vc = SignUpViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
    



extension UIView {
    
    var safeTopAnchor: NSLayoutYAxisAnchor {
        if #available(iOS 11.0, *) {
            return safeAreaLayoutGuide.topAnchor
        }
        return topAnchor
    }
    
    var safeLeftAnchor: NSLayoutXAxisAnchor {
        if #available(iOS 11.0, *){
            return safeAreaLayoutGuide.leftAnchor
        }
        return leftAnchor
    }
    
    var safeRightAnchor: NSLayoutXAxisAnchor {
        if #available(iOS 11.0, *){
            return safeAreaLayoutGuide.rightAnchor
        }
        return rightAnchor
    }
    
    var safeBottomAnchor: NSLayoutYAxisAnchor {
        if #available(iOS 11.0, *) {
            return safeAreaLayoutGuide.bottomAnchor
        }
        return bottomAnchor
    }
}
