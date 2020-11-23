//
//  ViewController.swift
//  MyCustomButtons
//
//  Created by Yuki Shinohara on 2020/11/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let twoLineButton = TwoLineButton(frame: CGRect(x: 0, y: 0, width: 220, height: 55))
        twoLineButton.center = view.center
        twoLineButton.configure(with: TwoLineButtonViewModel(primaryText: "あああああ", secondaryText: "いいいい"))
        view.addSubview(twoLineButton)
        
        let iconButton = IconTextButton(frame: CGRect(x: (view.frame.width-220)/2, y: twoLineButton.frame.minY - 100, width: 220, height: 55))
        view.addSubview(iconButton)
        iconButton.configure(with: IconTextButtonViewModel(text: "ううう", image: UIImage(systemName: "cart"), bgColor: .systemRed))
        
    }


}

