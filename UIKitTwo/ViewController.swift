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
        
        
        imageBunner = setupImage(imageContent: .sky, frame: CGRect(x: 0, y: 0, width: screenWidth, height: 156), corner: 0)
        
        imageAvatar = setupImage(imageContent: .avatar, frame: CGRect(x: 30, y: imageBunner.frame.maxY + 20, width: 100, height: 100), corner: 50)
        
        labelFullName = textLabel(text: "Имя Фамилия", font: .boldSystemFont(ofSize: 16), color: .black, frame: CGRect(x: imageAvatar.frame.maxX + 10, y: imageBunner.frame.maxY + 40, width: 113, height: 19))
        
        editButton = buttonLabel(text: "Редактироваьть", bg: .systemBlue, frame: CGRect(x: imageAvatar.frame.maxX + 10, y: labelFullName.frame.maxY + 10, width: 147, height: 34), corner: 10)
        
        labelOpisanie = textLabel(text: "Добавить описание", frame: CGRect(x: 30, y: imageAvatar.frame.maxY + 52, width: 156, height: 19))
        
        textViewOpisanie = uiTextView(frame: CGRect(x: 30, y: labelOpisanie.frame.maxY + 10, width: screenLeft, height: 150))
        textChangePassword = textLabel(text: "Изменить пароль", frame: CGRect(x: 30, y: textViewOpisanie.frame.maxY + 33, width: 139, height: 19))
        oldPassword = uiTextField(placeholder: "Старый пароль", offseY: textChangePassword.frame.maxY + 10)
        
        newPassword = uiTextField(placeholder: "Новый пароль", offseY: oldPassword.frame.maxY + 10)
        saveButton = buttonLabel(text: "Сохранить", bg: .systemBlue, frame: CGRect(x: 30, y: screenHeight - 107, width: screenLeft, height: 55), corner: 10)
        
        addSubview()
        
        
    }

    
    private func addSubview() {
        view.addSubview(imageBunner)
        view.addSubview(imageAvatar)
        view.addSubview(labelFullName)
        view.addSubview(editButton)
        view.addSubview(labelOpisanie)
        view.addSubview(textViewOpisanie)
        view.addSubview(textChangePassword)
        view.addSubview(oldPassword)
        view.addSubview(newPassword)
        view.addSubview(saveButton)
    }

    private func setupImage(imageContent: UIImage?, frame: CGRect, corner: CGFloat) -> UIImageView {
        let imageView = UIImageView(frame: frame)
        if let content = imageContent {
                imageView.image = content
            } else {
                imageView.backgroundColor = .red
            }
        imageView.image = imageContent
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = corner
        imageView.clipsToBounds = true
        
        return imageView
    }

    private func textLabel(text: String, font: UIFont = .systemFont(ofSize: 16), color: UIColor = .black, frame: CGRect) -> UILabel {
        let label = UILabel(frame: frame)
        label.text = text
        label.textColor = color
        label.font = font
        
        return label
    }

    private func buttonLabel(text: String, bg: UIColor, frame: CGRect, corner: CGFloat) -> UIButton {
        let label = UIButton(frame: frame)
        label.setTitle(text, for: .normal)
        label.backgroundColor = bg
        label.layer.cornerRadius = corner
        label.clipsToBounds = true
        
        return label
    }

    private func uiTextView(frame: CGRect) -> UITextView {
        let textView = UITextView(frame: frame)
        textView.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1.0)
        textView.layer.cornerRadius = 20
    
        return textView
    }
    
    private func uiTextField(placeholder: String, offseY: CGFloat) -> UITextField {
        let textField = UITextField()
        textField.placeholder = placeholder
        textField.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1.0)
        textField.frame = CGRect(x: 30, y: offseY, width: screenLeft, height: 52)
        textField.layer.cornerRadius = 20
        textField.leftViewMode = .always
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        textField.isSecureTextEntry = true
        
        return textField
    }
}
