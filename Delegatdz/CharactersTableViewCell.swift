//
//  CharactersTableViewCell.swift
//  Delegatdz
//
//  Created by Swift on 01.03.2024.
//

import UIKit

class CharactersTableViewCell: UITableViewCell {

    lazy var nameLabel: UILabel = {
       let label = UILabel()
        label.text = ""
        return label
    }()
    
    lazy var surnameLabel: UILabel = {
       let label = UILabel()
        label.text = ""
        return label
    }()
    
    lazy var houseLabel: UILabel = {
       let label = UILabel()
        label.text = ""
        return label
    }()
    
    lazy var wandLabel: UILabel = {
       let label = UILabel()
        label.text = ""
        return label
    }()
    

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUp()
    }
    

    func setUp() {
        contentView.addSubview(nameLabel)
        contentView.addSubview(surnameLabel)
        contentView.addSubview(houseLabel)
        contentView.addSubview(wandLabel)

        
        nameLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(12)
            make.leading.equalToSuperview().inset(12)
        }

        surnameLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(8)
            make.leading.equalToSuperview().inset(12)
        }

        houseLabel.snp.makeConstraints { make in
            make.top.equalTo(surnameLabel.snp.bottom).offset(8)
            make.leading.equalToSuperview().inset(12)
        }

        wandLabel.snp.makeConstraints { make in
            make.top.equalTo(houseLabel.snp.bottom).offset(8)
            make.leading.equalToSuperview().inset(12)
            make.bottom.lessThanOrEqualToSuperview().inset(12) //Нашла в инете. Без этой штуки элементы друг друга перекрывают
        }




    }
    
    func configure() {
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
