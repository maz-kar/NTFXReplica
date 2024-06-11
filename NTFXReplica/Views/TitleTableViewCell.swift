//
//  TitleTableViewCell.swift
//  NTFXReplica
//
//  Created by Maziar Layeghkar on 11.06.24.
//

import UIKit
import SDWebImage

class TitleTableViewCell: UITableViewCell {
    
    static let identifier = "TitleTableViewCell"
    
    private let posterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let titlesLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let playTitleButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(posterImageView)
        contentView.addSubview(titlesLabel)
        contentView.addSubview(playTitleButton)
        
        applyConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func applyConstraints() {
        let posterImageViewConstraints = [
            posterImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            posterImageView.topAnchor.constraint(equalTo: topAnchor, constant: 15),
            posterImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
            posterImageView.widthAnchor.constraint(equalToConstant: 100)
        ]
        
        let titlesLabelConstraints = [
            titlesLabel.leadingAnchor.constraint(equalTo: posterImageView.trailingAnchor, constant: 20),
            titlesLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ]
        
//        let playTitleButtonConstraints = [
//            playTitleButton.leadingAnchor.constraint(equalTo: titlesLabel.trailingAnchor, constant: 20),
//            playTitleButton.topAnchor.constraint(equalTo: topAnchor, constant: 15),
//            playTitleButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
//            playTitleButton.widthAnchor.constraint(equalToConstant: 100)
//        ]
        
        NSLayoutConstraint.activate(posterImageViewConstraints)
        NSLayoutConstraint.activate(titlesLabelConstraints)
        //NSLayoutConstraint.activate(playTitleButtonConstraints)
    }
    
    public func configure(with model: TitleViewModel) {
        guard let url = URL(string: "https://image.tmdb.org/t/p/w500\(model.posterURL)") else { return }
        posterImageView.sd_setImage(with: url, completed: nil)
        titlesLabel.text = model.titleName
    }
    
    
    
}
