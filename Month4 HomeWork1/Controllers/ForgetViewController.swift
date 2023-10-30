//
//  ForgetViewController.swift
//  Month4 HomeWork1
//
//  Created by Mac User on 25/10/23.
//

import UIKit

class ForgetViewController: UIViewController {
    
    private let  vector2Img: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "Vector")
        return view
    }()
    
    var receivedText: String?
    
    private let  smsTF2: UITextField = {
        let view = UITextField()
        view.layer.backgroundColor = CGColor(red: 0.471, green: 0.471, blue: 0.471, alpha: 1)
        view.textColor = .systemGray4
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        view.font = .systemFont(ofSize: 15, weight: .regular)
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: view.frame.size.height))
        view.leftView = paddingView
        view.leftViewMode = .always
        let paddingViewRight = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: view.frame.size.height))
        view.rightView = paddingViewRight
        view.rightViewMode = .always
        return view
    }()
    
    private let  codeCheckingView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.white
        view.clipsToBounds = true
        view.layer.cornerRadius = 35
        return view
    }()
    
    private let newPasswordLbl: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "New Password"
        view.font = .systemFont(ofSize: 12, weight: .medium)
        view.textColor = .systemGray2
        return view
    }()
    
    private let  newPasswordTF: UITextField = {
        let view = UITextField()
        view.placeholder = "..."
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = .black
        view.font = .systemFont(ofSize: 16, weight: .regular)
        view.isSecureTextEntry = true
        return view
    }()
    
    private let newConfirmPasswordLbl: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Confirm Password"
        view.font = .systemFont(ofSize: 12, weight: .medium)
        view.textColor = .systemGray2
        return view
    }()
    
    private let dividerview = UIView()
    
    private let grayEyeBtn: UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        let eyeimage = UIImage(systemName: "eye.fill")
        view.tintColor = .gray
        view.setImage(eyeimage, for: .normal)
        return view
    }()
    
    var isPasswordVisible2 = false
    
    private let newConfirmPasswordTF2: UITextField = {
        let view = UITextField()
        view.placeholder = "..."
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = .black
        view.font = .systemFont(ofSize: 16, weight: .regular)
        view.isSecureTextEntry = true
        return view
    }()
    
    private let grayEyeBtn2: UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        let eyeimage = UIImage(systemName: "eye.fill")
        view.tintColor = .gray
        view.setImage(eyeimage, for: .normal)
        return view
    }()
    
    var isPasswordVisible1 = false
    
    private let dividerview2 = UIView()
    
    private let submitButton: UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("Submit", for: .normal)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        view.setTitleColor(UIColor.white, for: .normal)
        view.layer.cornerRadius = 15
        view.backgroundColor = .systemGreen
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 78/255, green: 156/255, blue: 177/255, alpha: 1)
        allSetUpConstraints()
    }
    
    private func allSetUpConstraints(){
        smsTF2.text = receivedText
        
        setupConstraintsForVectorImg2()
        
        setupConstraintsForSmsTF2()
                
        setupConstraintsForCodeCheckingView()
                
        setupConstraintsForNewPasswordLbl()
               
        setupConstraintsForNewPasswordTF()
        
        setupConstraintsForDividerView()
                
        setupConstraintsGrayEyeBtn()
              
        setupConstraintsForNewConfirmPasswordLbl()
               
        setupConstraintsForNewConfirmPasswordTF2()
        
        setupConstraintsGrayEyeBtn2()
        
        setupConstraintsForDividerView2()
        
        setupConstraintsForsubmitButton()
    }
    
    private func setupConstraintsForVectorImg2() {
        view.addSubview(vector2Img)
        vector2Img.topAnchor.constraint(equalTo: view.topAnchor, constant: 64).isActive = true
        vector2Img.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        vector2Img.heightAnchor.constraint(equalToConstant: 148).isActive = true
        vector2Img.widthAnchor.constraint(equalToConstant: 148).isActive = true
    }
    
    private func setupConstraintsForSmsTF2() {
        view.addSubview(smsTF2)
        smsTF2.topAnchor.constraint(equalTo: vector2Img.bottomAnchor, constant: 34).isActive = true
        smsTF2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        smsTF2.widthAnchor.constraint(equalToConstant: 279).isActive = true
        smsTF2.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        smsTF2.isEnabled = false
    }
    
    private func setupConstraintsForCodeCheckingView() {
        view.addSubview(codeCheckingView)
        codeCheckingView.topAnchor.constraint(equalTo: view.topAnchor, constant: 334).isActive = true
        codeCheckingView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        codeCheckingView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        codeCheckingView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
    
    private func setupConstraintsForNewPasswordLbl() {
        view.addSubview(newPasswordLbl)
        newPasswordLbl.topAnchor.constraint(equalTo: codeCheckingView.topAnchor, constant: 120).isActive = true
        newPasswordLbl.leadingAnchor.constraint(equalTo: codeCheckingView.leadingAnchor, constant: 23).isActive = true
    }
    
    private func setupConstraintsForNewPasswordTF() {
        view.addSubview(newPasswordTF)
        newPasswordTF.topAnchor.constraint(equalTo: newPasswordLbl.bottomAnchor, constant: 13).isActive = true
        newPasswordTF.leadingAnchor.constraint(equalTo: codeCheckingView.leadingAnchor, constant: 23).isActive = true
        newPasswordTF.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    private func setupConstraintsForDividerView() {
        view.addSubview(dividerview)
        dividerview.backgroundColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
        dividerview.translatesAutoresizingMaskIntoConstraints = false
        dividerview.topAnchor.constraint(equalTo: newPasswordTF.bottomAnchor, constant: 13).isActive = true
        dividerview.leadingAnchor.constraint(equalTo: codeCheckingView.leadingAnchor, constant: 23).isActive = true
        dividerview.trailingAnchor.constraint(equalTo: codeCheckingView.trailingAnchor, constant: -22).isActive = true
        dividerview.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    private func setupConstraintsGrayEyeBtn() {
        view.addSubview(grayEyeBtn)
        grayEyeBtn.topAnchor.constraint(equalTo: newPasswordLbl.bottomAnchor, constant: 10).isActive = true
        grayEyeBtn.trailingAnchor.constraint(equalTo: codeCheckingView.trailingAnchor, constant: -31).isActive = true
        grayEyeBtn.heightAnchor.constraint(equalToConstant: 13).isActive = true
        grayEyeBtn.widthAnchor.constraint(equalToConstant: 18).isActive = true
        
        grayEyeBtn.addTarget(self, action: #selector(grayEyeBtnTapped), for: .touchUpInside)
    }
    
    @objc func grayEyeBtnTapped(_ sender: UIButton) {
        isPasswordVisible1.toggle()
        newPasswordTF.isSecureTextEntry = !isPasswordVisible1
        
    }
    
    private func setupConstraintsForNewConfirmPasswordLbl() {
        view.addSubview(newConfirmPasswordLbl)
        newConfirmPasswordLbl.topAnchor.constraint(equalTo: dividerview.topAnchor, constant: 25).isActive = true
        newConfirmPasswordLbl.leadingAnchor.constraint(equalTo: codeCheckingView.leadingAnchor, constant: 23).isActive = true
    }
    
    private func setupConstraintsForNewConfirmPasswordTF2() {
        view.addSubview(newConfirmPasswordTF2)
        newConfirmPasswordTF2.topAnchor.constraint(equalTo: newConfirmPasswordLbl.bottomAnchor, constant: 13).isActive = true
        newConfirmPasswordTF2.leadingAnchor.constraint(equalTo: codeCheckingView.leadingAnchor, constant: 23).isActive = true
        newConfirmPasswordTF2.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    private func setupConstraintsGrayEyeBtn2() {
        view.addSubview(grayEyeBtn2)
        grayEyeBtn2.topAnchor.constraint(equalTo: newConfirmPasswordLbl.bottomAnchor, constant: 10).isActive = true
        grayEyeBtn2.trailingAnchor.constraint(equalTo: codeCheckingView.trailingAnchor, constant: -31).isActive = true
        grayEyeBtn2.heightAnchor.constraint(equalToConstant: 13).isActive = true
        grayEyeBtn2.widthAnchor.constraint(equalToConstant: 18).isActive = true
        
        grayEyeBtn2.addTarget(self, action: #selector(grayEyeBtn2Tapped), for: .touchUpInside)
    }
    
    @objc func grayEyeBtn2Tapped(_ sender: UIButton) {
        isPasswordVisible1.toggle()
        newConfirmPasswordTF2.isSecureTextEntry = !isPasswordVisible1
        
    }
    
    private func setupConstraintsForDividerView2() {
        view.addSubview(dividerview2)
        dividerview2.backgroundColor = .systemGray5
        dividerview2.translatesAutoresizingMaskIntoConstraints = false
        dividerview2.topAnchor.constraint(equalTo: newConfirmPasswordTF2.bottomAnchor, constant: 13).isActive = true
        dividerview2.leadingAnchor.constraint(equalTo: codeCheckingView.leadingAnchor, constant: 23).isActive = true
        dividerview2.trailingAnchor.constraint(equalTo: codeCheckingView.trailingAnchor, constant: -22).isActive = true
        dividerview2.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    private func setupConstraintsForsubmitButton() {
        view.addSubview(submitButton)
        submitButton.topAnchor.constraint(equalTo: dividerview2.bottomAnchor, constant: 67).isActive = true
        submitButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        submitButton.heightAnchor.constraint(equalToConstant: 35).isActive = true
        submitButton.widthAnchor.constraint(equalToConstant: 95).isActive = true
        
        submitButton.addTarget(self, action: #selector(submitButtonTapped), for: .touchUpInside)
    }
    @objc func submitButtonTapped(_ sender: UIButton) {
        var shouldNavigate = true
        if newPasswordTF.text?.isEmpty ?? true {
            newPasswordTF.layer.borderColor = UIColor.red.cgColor
            newPasswordTF.layer.borderWidth = 0.4
            newPasswordTF.placeholder = "  Fill the field  "
            shouldNavigate = false
        }
        
        if newConfirmPasswordTF2.text?.isEmpty ?? true {
            newConfirmPasswordTF2.layer.borderColor = UIColor.red.cgColor
            newConfirmPasswordTF2.layer.borderWidth = 0.4
            newConfirmPasswordTF2.placeholder = "  Fill the field  "
            shouldNavigate = false
        }
        if newPasswordTF.text != newConfirmPasswordTF2.text {
            newPasswordTF.layer.borderColor = UIColor.red.cgColor
            newPasswordTF.layer.borderWidth = 0.4
            newConfirmPasswordTF2.layer.borderColor = UIColor.red.cgColor
            newConfirmPasswordTF2.layer.borderWidth = 0.4
            shouldNavigate = false
        }
        if shouldNavigate {
            let vc = SuccesViewController()
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
