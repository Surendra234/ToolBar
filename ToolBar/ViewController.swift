//
//  ViewController.swift
//  ToolBar
//
//  Created by XP India on 25/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFiled: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width + 200, height: 45))
        scrollView.showsHorizontalScrollIndicator = false
        
        let toolBar = UIToolbar(frame: scrollView.bounds)
        scrollView.addSubview(toolBar)
        scrollView.contentSize = toolBar.frame.size
        toolBar.barTintColor = .white
        
        let toolBarSpace = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: self, action: nil)
        toolBarSpace.width = 24
        
        let toolBarButtonSpace = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: self, action: nil)
        toolBarButtonSpace.width = 4
        
        let leftArrowButton = UIBarButtonItem(customView: CustomeButton(image: "arrow.uturn.backward"))
        let rightArrowButton = UIBarButtonItem(customView: CustomeButton(image: "arrow.uturn.forward"))
        
        let bodyButton = UIBarButtonItem(title: "Body", style: .plain, target: self, action: nil)
        let colorPickerButton = UIBarButtonItem(customView: CustomeButton(image: "a.square.fill"))
        
        let boldButton = UIBarButtonItem(customView: CustomeButton(image: "bold"))
        let italicButton = UIBarButtonItem(customView: CustomeButton(image: "italic"))
        let underlineButton = UIBarButtonItem(customView: CustomeButton(image: "underline"))
        let aligmentButton = UIBarButtonItem(customView: CustomeButton(image: "text.aligncenter"))
        
        let listNumberButton = UIBarButtonItem(customView: CustomeButton(image: "list.number"))
        let listBulletButton = UIBarButtonItem(customView: CustomeButton(image: "list.bullet"))
        let minusButton = UIBarButtonItem(customView: CustomeButton(image: "minus.circle"))
        let photoButton = UIBarButtonItem(customView: CustomeButton(image: "photo"))
        
        toolBar.items = [leftArrowButton, toolBarButtonSpace, rightArrowButton, toolBarSpace, bodyButton, toolBarButtonSpace, colorPickerButton, toolBarSpace, boldButton, toolBarButtonSpace, italicButton, toolBarButtonSpace, underlineButton, toolBarButtonSpace, aligmentButton, toolBarSpace, listNumberButton, toolBarButtonSpace, listBulletButton, toolBarButtonSpace, minusButton, toolBarButtonSpace, photoButton]
        toolBar.tintColor = .black.withAlphaComponent(0.75)
        
        toolBar.sizeToFit()
        textFiled.inputAccessoryView = scrollView
    }
}


class CustomeButton: UIButton {
    
    init(image: String) {
        super.init(frame: .zero)

        self.frame = CGRect(x: 0, y: 0, width: 30, height: 30) // Adjust the size as needed
        self.backgroundColor = .systemGray6 // Change to your desired color
        self.layer.cornerRadius = 5 // Optional: Round the corners if you want

        self.setImage(UIImage(systemName: image), for: .normal)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
