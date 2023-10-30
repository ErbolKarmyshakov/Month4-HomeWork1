//
//  SubmitViewController.swift
//  Month4 HomeWork1
//
//  Created by Mac User on 30/10/23.
//

import UIKit

class SubmitViewController: UIViewController {
    
    private let vectorImg: UIImageView = {
        let vextor = UIImageView()
        vextor.translatesAutoresizingMaskIntoConstraints = false
        vextor.image = UIImage(named: "Vector")
        return vextor
    }()
    
    private let smsTF: UITextField = {
        let sms = UITextField()
        sms.layer.backgroundColor = CGColor(red: 0.471, green: 0.471, blue: 0.471, alpha: 1)
        sms.placeholder = "  000-000"
        sms.textColor = .systemGray4
        sms.translatesAutoresizingMaskIntoConstraints = false
        sms.layer.cornerRadius = 10
        sms.font = .systemFont(ofSize: 15, weight: .regular)
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: sms.frame.size.height))
        sms.leftView = paddingView
        sms.leftViewMode = .always
        let paddingViewRight = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: sms.frame.size.height))
        sms.rightView = paddingViewRight
        sms.rightViewMode = .always
        return sms
    }()
    
    private let troubleLbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Trouble Logging in?"
        lbl.font = .systemFont(ofSize: 24, weight: .bold)
        lbl.textColor = .systemGray6
        return lbl
    }()
    
    private let  enterTF: UILabel = {
        let enter = UILabel()
        enter.translatesAutoresizingMaskIntoConstraints = false
        enter.text = "Enter your email or  mobile number and we'll \n send you a OTP to get back into your account."
        enter.font = .systemFont(ofSize: 11, weight: .regular)
        enter.textColor = .systemGray4
        enter.numberOfLines = 0
        enter.textAlignment = .center
        return enter
    }()
    
    private let receiveTheCodeView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.white
        view.clipsToBounds = true
        view.layer.cornerRadius = 35
        return view
    }()
    
    private let  employeeIDLbl: UILabel = {
        let employee = UILabel()
        employee.translatesAutoresizingMaskIntoConstraints = false
        employee.text = "Employee id"
        employee.font = .systemFont(ofSize: 12, weight: .medium)
        employee.textColor = .systemGray2
        return employee
    }()
    
    private let employeeIDTF: UITextField = {
        let employee = UITextField()
        employee.placeholder = "..."
        employee.translatesAutoresizingMaskIntoConstraints = false
        employee.textColor = .black
        employee.font = .systemFont(ofSize: 16, weight: .regular)
        return employee
    }()
    
    private let lineView = UIView()
    
    private let enterLbl: UILabel = {
        let enter = UILabel()
        enter.translatesAutoresizingMaskIntoConstraints = false
        enter.text = "Enter your mobile number or Email id"
        enter.textAlignment = .center
        enter.font = .systemFont(ofSize: 15, weight: .regular)
        enter.textColor = .black
        enter.layer.borderWidth = 0.3
        enter.layer.borderColor = UIColor.gray.cgColor
        enter.layer.cornerRadius = 10
        return enter
    }()
    
    private let getOTPBtn: UIButton = {
        let get = UIButton(type: .system)
        get.translatesAutoresizingMaskIntoConstraints = false
        get.setTitle("Get OTP", for: .normal)
        get.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        get.setTitleColor(UIColor.white, for: .normal)
        get.layer.cornerRadius = 15
        get.backgroundColor = .systemYellow
        return get
    }()
    
    private let viewButtons: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.white
        return view
    }()
    
    private let  stackView: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .horizontal
        view.alignment = .center
        view.distribution = .equalSpacing
        view.spacing = 7
        return view
    }()
    
    private let submitBtn: UIButton = {
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
        
        setupConstraintsForVectorImg()
        
        
        setupConstraintsForSmsTF()
        
        
        setupConstraintsForTroubleLbl()
        
       
        setupConstraintsForEnterTF()
        
        
        setupConstraintsForReceiveView()
        
       
        setupConstraintsForEmployeeIDLbl()
        
        
        setupConstraintsForEmployeeIDTF()
        
        
        setupConstraintsForLineView()
        
       
        setupConstraintsForEnterLbl()
        
        
        setupConstraintsForGetBtn()
        
        
        setupConstraintsForViewButtons()
        
       
        setupConstraintsForStackView()
        
        
        setupConstraintsForSubmitBtn()
    }
    private func setupConstraintsForVectorImg() {
        view.addSubview(vectorImg)
        vectorImg.topAnchor.constraint(equalTo: view.topAnchor, constant: 64).isActive = true
        vectorImg.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        vectorImg.heightAnchor.constraint(equalToConstant: 148).isActive = true
        vectorImg.widthAnchor.constraint(equalToConstant: 148).isActive = true
    }
    
    private func setupConstraintsForSmsTF() {
        view.addSubview(smsTF)
        smsTF.topAnchor.constraint(equalTo: vectorImg.bottomAnchor, constant: 34).isActive = true
        smsTF.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        smsTF.widthAnchor.constraint(equalToConstant: 279).isActive = true
        smsTF.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        smsTF.isEnabled = false
    }
    
    private func setupConstraintsForTroubleLbl() {
        view.addSubview(troubleLbl)
        troubleLbl.topAnchor.constraint(equalTo: smsTF.bottomAnchor, constant: 34).isActive = true
        troubleLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    private func setupConstraintsForEnterTF() {
        view.addSubview(enterTF)
        enterTF.topAnchor.constraint(equalTo: troubleLbl.bottomAnchor, constant: 25).isActive = true
        enterTF.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    private func setupConstraintsForReceiveView() {
        view.addSubview(receiveTheCodeView)
        receiveTheCodeView.topAnchor.constraint(equalTo: enterTF.bottomAnchor, constant: 38).isActive = true
        receiveTheCodeView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        receiveTheCodeView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        receiveTheCodeView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
    
    private func setupConstraintsForEmployeeIDLbl() {
        view.addSubview(employeeIDLbl)
        employeeIDLbl.topAnchor.constraint(equalTo: receiveTheCodeView.topAnchor, constant: 42).isActive = true
        employeeIDLbl.leadingAnchor.constraint(equalTo: receiveTheCodeView.leadingAnchor, constant: 22).isActive = true
    }
    
    private func setupConstraintsForEmployeeIDTF() {
        view.addSubview(employeeIDTF)
        employeeIDTF.topAnchor.constraint(equalTo: employeeIDLbl.bottomAnchor, constant: 13).isActive = true
        employeeIDTF.leadingAnchor.constraint(equalTo: receiveTheCodeView.leadingAnchor, constant: 22).isActive = true
        employeeIDTF.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    private func setupConstraintsForLineView() {
        view.addSubview(lineView)
        lineView.backgroundColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
        lineView.translatesAutoresizingMaskIntoConstraints = false
        lineView.topAnchor.constraint(equalTo: employeeIDTF.bottomAnchor, constant: 13).isActive = true
        lineView.leadingAnchor.constraint(equalTo: receiveTheCodeView.leadingAnchor, constant: 22).isActive = true
        lineView.trailingAnchor.constraint(equalTo: receiveTheCodeView.trailingAnchor, constant: -22).isActive = true
        lineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    private func setupConstraintsForEnterLbl() {
        view.addSubview(enterLbl)
        enterLbl.topAnchor.constraint(equalTo: lineView.bottomAnchor, constant: 30).isActive = true
        enterLbl.centerXAnchor.constraint(equalTo: receiveTheCodeView.centerXAnchor).isActive = true
        enterLbl.heightAnchor.constraint(equalToConstant: 45).isActive = true
        enterLbl.widthAnchor.constraint(equalToConstant: 315).isActive = true
    }
    
    private func setupConstraintsForGetBtn() {
        view.addSubview(getOTPBtn)
        getOTPBtn.topAnchor.constraint(equalTo: enterLbl.bottomAnchor, constant: 16).isActive = true
        getOTPBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -23).isActive = true
        getOTPBtn.heightAnchor.constraint(equalToConstant: 35).isActive = true
        getOTPBtn.widthAnchor.constraint(equalToConstant: 95).isActive = true
        
        getOTPBtn.addTarget(self, action: #selector(getBtnTapped), for: .touchUpInside)
    }
    
    @objc func getBtnTapped(_ sender: UIButton) {
        
        if employeeIDTF.text?.isEmpty ?? true {
            employeeIDTF.layer.borderColor = UIColor.red.cgColor
            employeeIDTF.layer.borderWidth = 1
            employeeIDTF.placeholder = "Заполните, пожалуйста"
        } else {
            smsTF.isEnabled = true
        }
    }
    
    private func setupConstraintsForViewButtons() {
        view.addSubview(viewButtons)
        viewButtons.topAnchor.constraint(equalTo: getOTPBtn.bottomAnchor, constant: 30).isActive = true
        viewButtons.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        viewButtons.widthAnchor.constraint(equalToConstant: 275).isActive = true
        viewButtons.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    private func setupConstraintsForStackView() {
        viewButtons.addSubview(stackView)
        stackView.topAnchor.constraint(equalTo: viewButtons.topAnchor, constant: 0).isActive = true
        stackView.leadingAnchor.constraint(equalTo: viewButtons.leadingAnchor, constant: 0).isActive = true
        stackView.trailingAnchor.constraint(equalTo: viewButtons.trailingAnchor, constant: 0).isActive = true
        stackView.bottomAnchor.constraint(equalTo: viewButtons.bottomAnchor, constant: 0).isActive = true
        
        for _ in 1...6 {
            let button = UIButton()
            button.setTitle("x", for: .normal)
            button.setTitleColor(.black, for: .normal)
            button.backgroundColor = .white
            button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
            button.layer.cornerRadius = 10
            button.contentEdgeInsets = UIEdgeInsets(top: 9, left: 15, bottom: 10, right: 15)
            button.layer.borderWidth = 1
            button.layer.borderColor = UIColor.gray.cgColor
            stackView.addArrangedSubview(button)
        }
    }
    @objc func buttonTapped(sender: UIButton) {
        sender.backgroundColor = .gray
    }
    
    private func setupConstraintsForSubmitBtn() {
        view.addSubview(submitBtn)
        submitBtn.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 25).isActive = true
        submitBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        submitBtn.heightAnchor.constraint(equalToConstant: 35).isActive = true
        submitBtn.widthAnchor.constraint(equalToConstant: 95).isActive = true
        
        submitBtn.addTarget(self, action: #selector(submitBtnTapped), for: .touchUpInside)
    }
    
    @objc func submitBtnTapped(_ sender: UIButton) {
        if smsTF.text?.isEmpty ?? true {
            smsTF.layer.borderColor = UIColor.red.cgColor
            smsTF.layer.borderWidth = 1
            smsTF.placeholder = "Заполните, пожалуйста"
        } else {
            let vc = ForgetViewController()
            navigationController?.pushViewController(vc, animated: true)
            vc.receivedText = smsTF.text
        }
    }
}
