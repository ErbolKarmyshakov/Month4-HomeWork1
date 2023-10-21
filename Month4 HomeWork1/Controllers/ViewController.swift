//
//  ViewController.swift
//  Month4 HomeWork1
//
//  Created by Mac User on 20/10/23.
//

import UIKit

class ViewController: UIViewController {

   private var childPhoto: UIImageView = {
        let child = UIImageView()
        child.translatesAutoresizingMaskIntoConstraints = false
        child.image = UIImage(named: "ChildPhoto")
        return child
    }()
    
    private var welcomLbl: UILabel = {
        let welcome = UILabel()
        welcome.translatesAutoresizingMaskIntoConstraints = false
        welcome.text = "Welcome Back"
        welcome.textColor = UIColor.white
        welcome.font = .systemFont(ofSize:  34, weight: .bold)
        return welcome
    }()
    
    private var registrView: UIView = {
        let registr = UIView()
        registr.translatesAutoresizingMaskIntoConstraints = false
        registr.backgroundColor = UIColor.white
        registr.layer.cornerRadius = 35
        return registr
    }()
    
    private var signLbl: UILabel = {
        let sign = UILabel()
        sign.translatesAutoresizingMaskIntoConstraints = false
        sign.text  = "Sign in to continue"
        sign.font = .systemFont(ofSize: 20, weight: .light)
        sign.textColor = UIColor(red: 178/255, green: 215/255, blue: 225/255, alpha: 1)
        return sign
    }()
    
    private var firstTFLbl: UILabel = {
        let first = UILabel()
        first.translatesAutoresizingMaskIntoConstraints = false
        first.text = "Employee Id / Email"
        first.font = .systemFont(ofSize: 12, weight: .light)
        first.textColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
        return first
    }()
    
    private var firstTF: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = .clear
        return tf
    }()
    
    private var firstLineView: UIView = {
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.backgroundColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
        return line
    }()
    
    private var secondTFLbl: UILabel = {
        let second = UILabel()
        second.translatesAutoresizingMaskIntoConstraints = false
        second.text = "Password"
        second.font = .systemFont(ofSize: 12, weight: .light)
        second.textColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
        return second
    }()
    
    private var secondTF: UITextField = {
        let stf = UITextField()
        stf.translatesAutoresizingMaskIntoConstraints = false
        stf.backgroundColor = .clear
        return stf
    }()
    
    private var secondLineView: UIView = {
        let sline = UIView()
        sline.translatesAutoresizingMaskIntoConstraints = false
        sline.backgroundColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
        return sline
    }()
    
    private var eye: UIImageView = {
        let eye = UIImageView()
        eye.translatesAutoresizingMaskIntoConstraints  = false
        eye.image = UIImage(named: "eye")
        return eye
    }()
    
    private var forgotBtn: UIButton = {
        let fbutton = UIButton()
        fbutton.translatesAutoresizingMaskIntoConstraints = false
        fbutton.setTitle("Forgot Password?", for: .normal)
        fbutton.setTitleColor(UIColor(red: 76/255, green: 148/255, blue: 233/255, alpha: 1), for: .normal)
        return fbutton
    }()
    
    private var checkImage: UIImageView = {
        let check = UIImageView()
        check.translatesAutoresizingMaskIntoConstraints = false
        check.image = UIImage(named: "Check")
        return check
    }()
    
    private var rememberLbl: UILabel = {
        let remember = UILabel()
        remember.translatesAutoresizingMaskIntoConstraints = false
        remember.text = "Remember Me"
        remember.textColor = .black
        remember.font = .systemFont(ofSize: 18, weight: .bold)
        return remember
    }()
    
    private var signinBtn: UIButton = {
        let signin = UIButton()
        signin.translatesAutoresizingMaskIntoConstraints = false
        signin.setTitle("Sign In", for: .normal)
        signin.backgroundColor = UIColor(red: 39/255, green: 85/255, blue: 174/255, alpha: 1)
        signin.layer.cornerRadius = 15
        return signin
    }()
    
    private var signUpBtn: UIButton = {
        let signup = UIButton()
        signup.translatesAutoresizingMaskIntoConstraints = false
        signup.setTitle("Don’t have an Account? Sign Up", for: .normal)
        signup.setTitleColor(.black, for: .normal)
        signup.addTarget(self, action: #selector(signUpTappedBtn), for: .touchUpInside)
        return signup
    }()
    
    private var whiteView: UIView =  {
        let white = UIView()
        white.backgroundColor = UIColor.red
        return white
    }()
    
    private var someImage: UIImageView = {
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
        
        setUpConstraintsForSignInBtn()

        setUpConstraintsForSignUpBtn()
        
//        setUpConstraintsForSomeImage()
        
        setUpConstraintsForWhiteView()
        signUpTappedBtn(signUpBtn)
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
        firstTF.trailingAnchor.constraint(equalTo: registrView.trailingAnchor, constant: -23).isActive = true
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
        secondTF.trailingAnchor.constraint(equalTo: registrView.trailingAnchor, constant: -23).isActive = true
    }

    private func setUpConstraintsForSecondLineView(){
        registrView.addSubview(secondLineView)
        secondLineView.topAnchor.constraint(equalTo: secondTF.bottomAnchor, constant: 13).isActive = true
        secondLineView.leadingAnchor.constraint(equalTo: registrView.leadingAnchor, constant: 23).isActive = true
        secondLineView.trailingAnchor.constraint(equalTo: registrView.trailingAnchor, constant: -23).isActive = true
        secondLineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    private func setUpConstraintsForImageEye(){
        registrView.addSubview(eye)
        eye.topAnchor.constraint(equalTo: firstLineView.bottomAnchor, constant: 50).isActive = true
        eye.trailingAnchor.constraint(equalTo: registrView.trailingAnchor, constant: -30).isActive = true
    }
    
    private func setUpConstraintsForForgotBtn(){
        registrView.addSubview(forgotBtn)
        forgotBtn.topAnchor.constraint(equalTo: secondLineView.bottomAnchor, constant: 3).isActive = true
        forgotBtn.trailingAnchor.constraint(equalTo: registrView.trailingAnchor, constant: -22).isActive = true
    }
    
    private func setUpConstraintsForCheckImage(){
        registrView.addSubview(checkImage)
        checkImage.topAnchor.constraint(equalTo: secondLineView.bottomAnchor, constant: 41).isActive = true
        checkImage.leadingAnchor.constraint(equalTo: registrView.leadingAnchor, constant: 24).isActive = true
    }
    
    private func setUpConstraintsForRememberLabel(){
        registrView.addSubview(rememberLbl)
        rememberLbl.topAnchor.constraint(equalTo: secondLineView.bottomAnchor, constant: 41).isActive = true
        rememberLbl.leadingAnchor.constraint(equalTo: checkImage.trailingAnchor, constant: 13).isActive = true
    }
    
    private func setUpConstraintsForSignInBtn(){
        registrView.addSubview(signinBtn)
        signinBtn.topAnchor.constraint(equalTo: rememberLbl.bottomAnchor, constant: 35).isActive = true
        signinBtn.leadingAnchor.constraint(equalTo: registrView.leadingAnchor, constant: 98).isActive = true
        signinBtn.trailingAnchor.constraint(equalTo: registrView.trailingAnchor, constant: -94).isActive = true
        signinBtn.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    private func setUpConstraintsForWhiteView(){
        view.addSubview(whiteView)
        whiteView.bottomAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
        whiteView.widthAnchor.constraint(equalToConstant:374).isActive = true
//        whiteView.heightAnchor.constraint(equalToConstant:  131).isActive = true
    }
    
    private func setUpConstraintsForSignUpBtn(){
        registrView.addSubview(signUpBtn)
        signUpBtn.topAnchor.constraint(equalTo: signinBtn.bottomAnchor, constant: 45).isActive = true
        signUpBtn.leadingAnchor.constraint(equalTo: registrView.leadingAnchor, constant: 8).isActive = true
    }
    
   
    
//    private func setUpConstraintsForSomeImage(){
//        whiteView.addSubview(someImage)
//        someImage.topAnchor.constraint(equalTo: whiteView.bottomAnchor, constant: 31).isActive = true
////        someImage.centerXAnchor.constraint(equalTo: registrView.centerXAnchor).isActive = true
//        someImage.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 0).isActive = true
//        someImage.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: 0).isActive = true
//    }

    @objc func signUpTappedBtn(_ sender: UIButton) {
        if firstTF.text?.isEmpty ?? true && secondTF.text?.isEmpty ?? true{
            firstTF.layer.borderColor = UIColor.red.cgColor
            firstTF.layer.borderWidth = 2
            secondTF.layer.borderColor = UIColor.red.cgColor
            secondTF.layer.borderWidth = 2
            firstTF.placeholder = "Заполните, пожалуйста"
            secondTF.placeholder = "Заполните, пожалуйста"
        }else {
            let vc = SignUpViewController()
            vc.data = firstTF.text 
            navigationController?.pushViewController(vc, animated: true)
        }
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
