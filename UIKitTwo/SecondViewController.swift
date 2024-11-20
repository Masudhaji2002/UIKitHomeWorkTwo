//
//  SecondViewController.swift
//  UIKitTwo
//
//  Created by Масуд Гаджиев on 20.11.2024.
//

import UIKit

class SecondViewController: UIViewController {
    
    lazy var screenWhidth = view.frame.width
    lazy var screenHeight = view.frame.height
    lazy var screenLeft = screenWhidth - 60
    var titleText = UILabel()
    var image = UIImageView()
    var buttonLike = UIButton()
    var buttonWriting = UIButton()
    var buttonDislike = UIButton()
    var textFullName = UILabel()
    var textYearsOld = UILabel()
    var imageGirl: UIImage? = UIImage(named: "girl")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        titleText = textLabel(text: "AppName", frame: CGRect(x: 30, y: 63, width: 150, height: 36), font: .boldSystemFont(ofSize: 30), color: .black)
        image.image = imageGirl
        image.frame = CGRect(x: 30, y: titleText.frame.maxY + 30, width: screenLeft, height: 352)
        image.layer.cornerRadius = 40
        
        buttonDislike = button(text: "", bg: UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1.0), frame: CGRect(x: 30, y: image.frame.maxY + 28, width: 65, height: 65), image: .not, corner: 35)
        
        buttonLike = button(text: "", bg: UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1.0), frame: CGRect(x: screenLeft - 30, y: image.frame.maxY + 28, width: 65, height: 65), image: .like, corner: 35)
        
        buttonWriting = button(text: "Написать", bg: .green, frame: CGRect(x: buttonDislike.frame.maxX + 10, y: image.frame.maxY + 35 , width: 190, height: 50), image: nil, corner: 20)
        
        textFullName = textLabel(text: "Имя Фамилия", frame: CGRect(x: 60, y: image.frame.maxY - 80, width: image.frame.maxX - 200, height: 24), font: .boldSystemFont(ofSize: 20), color: .white)
        
        textYearsOld = textLabel(text: "24 года", frame: CGRect(x: 60, y: textFullName.frame.maxY + 5, width: image.frame.maxX - 288, height: 19), font: .systemFont(ofSize: 16, weight: .light), color: .white)
        
        
        addSubview()
    }
    
    private func addSubview() {
        view.addSubview(titleText)
        view.addSubview(image)
        view.addSubview(buttonDislike)
        view.addSubview(buttonWriting)
        view.addSubview(buttonLike)
        view.addSubview(textFullName)
        view.addSubview(textYearsOld)
    }
    
    private func textLabel(text: String, frame: CGRect, font: UIFont, color: UIColor) -> UILabel{
        let textLabel = UILabel(frame: frame)
        textLabel.text = text
        textLabel.font = font
        textLabel.textColor = color
        return textLabel
        
    }
    
    private func button(text: String, bg: UIColor, frame: CGRect, image: UIImage?, corner: CGFloat) -> UIButton {
        let button = UIButton(frame: frame)
        button.backgroundColor = bg
        button.setTitle(text, for: .normal)
        button.setImage(image, for: .normal)
        button.layer.cornerRadius = corner
        return button
    }
    
    
}
