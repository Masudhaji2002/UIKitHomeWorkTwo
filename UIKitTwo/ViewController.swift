//
//  ViewController.swift
//  UIKitTwo
//
//  Created by Масуд Гаджиев on 18.11.2024.
//

import UIKit

class ViewController: UIViewController {

    var imageBunner = UIImageView()
    var imageAvatar = UIImageView()
    var labelFullName = UILabel()
    var labelOpisanie = UILabel()
    var textViewOpisanie = UITextView()
    var editButton = UIButton()
    var textChangePassword = UILabel()
    var oldPassword = UITextField()
    var newPassword = UITextField()
    var saveButton = UIButton()
    lazy var screenWidth = view.frame.width
    lazy var screenHeight = view.frame.height
    lazy var screenLeft = screenWidth - 60

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        
        setupImage(imageContent: .sky, imageView: imageBunner, frame: CGRect(x: 0, y: 0, width: screenWidth, height: 156), corner: 0)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        setupImage(imageContent: .avatar, imageView: imageAvatar, frame: CGRect(x: 30, y: imageBunner.frame.maxY + 20, width: 100, height: 100), corner: 50)
        
        textLabel(label: labelFullName, text: "Имя Фамилия", font: UIFont.boldSystemFont(ofSize: 16), color: .black, frame: CGRect(x: imageAvatar.frame.maxX + 10, y: imageBunner.frame.maxY + 40, width: 113, height: 19))
        
        buttonLabel(label: editButton, text: "Редактировать", bg: .systemBlue, frame: CGRect(x: imageAvatar.frame.maxX + 10, y: labelFullName.frame.maxY + 10, width: 147, height: 34), corner: 10)
        
        textLabel(label: labelOpisanie, text: "Добавить описание", font: UIFont.systemFont(ofSize: 16), color: .black, frame: CGRect(x: 30, y: imageAvatar.frame.maxY + 52, width: 156, height: 19))
        
        uiTextView(textView: textViewOpisanie, frame: CGRect(x: 30, y: labelOpisanie.frame.maxY + 10, width: screenLeft, height: 150))
        
        textLabel(label: textChangePassword, text: "Изменить пароль", font: .systemFont(ofSize: 16), color: .black, frame: CGRect(x: 30, y: textViewOpisanie.frame.maxY + 33, width: 139, height: 19))
        
        uiTextField(textField: oldPassword, placeholder: "Старый пароль", frame: CGRect(x: 30, y: textChangePassword.frame.maxY + 10, width: screenLeft, height: 52))
        
        uiTextField(textField: newPassword, placeholder: "Новый пароль", frame: CGRect(x: 30, y: oldPassword.frame.maxY + 10, width: screenLeft, height: 52))
        
        buttonLabel(label: saveButton, text: "Сохранить", bg: .systemBlue, frame: CGRect(x: 30, y: screenHeight - 107, width: screenLeft, height: 55), corner: 10)
    }

    private func setupImage(imageContent: UIImage, imageView: UIImageView, frame: CGRect, corner: CGFloat) {
        imageView.frame = frame
        imageView.image = imageContent
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = corner
        imageView.clipsToBounds = true
        view.addSubview(imageView)
    }

    private func textLabel(label: UILabel, text: String, font: UIFont, color: UIColor, frame: CGRect) {
        label.text = text
        label.textColor = color
        label.font = font
        label.frame = frame
        view.addSubview(label)
    }

    private func buttonLabel(label: UIButton, text: String, bg: UIColor, frame: CGRect, corner: CGFloat) {
        label.setTitle(text, for: .normal)
        label.backgroundColor = bg
        label.frame = frame
        label.layer.cornerRadius = corner
        label.clipsToBounds = true
        view.addSubview(label)
    }

    private func uiTextView(textView: UITextView, frame: CGRect) {
        textView.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1.0)
        textView.layer.cornerRadius = 20
        textView.frame = frame
        view.addSubview(textView)
    }
    
    private func uiTextField(textField: UITextField, placeholder: String, frame: CGRect) {
        textField.placeholder = placeholder
        textField.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1.0)
        textField.frame = frame
        textField.layer.cornerRadius = 20
        textField.leftViewMode = .always
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        textField.isSecureTextEntry = true
        view.addSubview(textField)
    }
}
