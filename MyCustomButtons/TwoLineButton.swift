//
//  TwoLineButton.swift
//  MyCustomButtons
//
//  Created by Yuki Shinohara on 2020/11/23.
//

import UIKit

struct TwoLineButtonViewModel {
    let primaryText: String
    let secondaryText: String
}

final class TwoLineButton: UIButton {
    
    private let primaryLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.textAlignment = .center
        label.textColor = .white
        label.font = .systemFont(ofSize: 20, weight: .semibold)
        return label
    }()
    
    private let secondaryLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.textAlignment = .center
        label.textColor = .white
        label.font = .systemFont(ofSize: 18, weight: .regular)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(primaryLabel)
        addSubview(secondaryLabel)
        clipsToBounds = true
        layer.borderWidth = 1
        layer.cornerRadius = 8
        layer.borderColor = UIColor.secondarySystemBackground.cgColor
        backgroundColor = .systemGreen
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with viewModel: TwoLineButtonViewModel){
        primaryLabel.text = viewModel.primaryText
        secondaryLabel.text = viewModel.secondaryText
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        primaryLabel.frame = CGRect(x: 5, y: 0, width: frame.width - 10, height: frame.height/2)
        secondaryLabel.frame = CGRect(x: 5, y: frame.height/2, width: frame.width - 10, height: frame.height/2)
    }
}
