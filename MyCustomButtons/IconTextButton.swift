//
//  IconTextButton.swift
//  MyCustomButtons
//
//  Created by Yuki Shinohara on 2020/11/23.
//

import UIKit

struct IconTextButtonViewModel {
    let text: String
    let image: UIImage?
    let bgColor : UIColor?
}

final class IconTextButton: UIButton {
    
    private let label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.textAlignment = .center
        label.textColor = .white
        label.font = .systemFont(ofSize: 20, weight: .semibold)
        return label
    }()
    
    private let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(label)
        addSubview(iconImageView)
        clipsToBounds = true
        layer.borderWidth = 1
        layer.cornerRadius = 8
        layer.borderColor = UIColor.secondarySystemBackground.cgColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with viewModel: IconTextButtonViewModel){
        label.text = viewModel.text
        backgroundColor = viewModel.bgColor
        iconImageView.image = viewModel.image
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        label.sizeToFit()
        let iconSize : CGFloat = 30
        let iconRightPadding : CGFloat = 9
        let iconX : CGFloat = (frame.width - label.frame.width - iconSize - iconRightPadding)/2
        iconImageView.frame = CGRect(x: iconX, y: (frame.height-iconSize)/2, width: iconSize, height: iconSize)
        label.frame = CGRect(x: iconX + iconSize + iconRightPadding, y: 0, width: label.frame.width, height: frame.height)
    }
}
