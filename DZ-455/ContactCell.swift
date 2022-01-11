import Foundation
import UIKit
import SnapKit


class ContactCell: UITableViewCell {
    
    lazy var contactImage: UIImageView = {
        let view = UIImageView()
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 25
        return view
    }()
    
    lazy var contactName: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 17)
        return view
    }()
    
    lazy var contactNumber: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 14)
        view.textColor = UIColor(red: 51/255, green: 60/255, blue: 68/255, alpha: 1)
        return view
    }()
    
    lazy var border: UIView = {
        let view = UIView()
        view.backgroundColor = .darkGray
        return view
    }()
    
    override func layoutSubviews() {
        
        addSubview(contactImage)
        contactImage.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(5)
            make.centerY.equalToSuperview()
            make.height.width.equalTo(50)
        }
        
        addSubview(contactName)
        contactName.snp.makeConstraints { make in
            make.left.equalTo(contactImage.snp.right).offset(10)
            make.top.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.height.equalTo(22)
        }
        
        addSubview(contactNumber)
        contactNumber.snp.makeConstraints { make in
            make.left.equalTo(contactImage.snp.right).offset(10)
            make.top.equalTo(contactName.snp.bottom)
            make.right.equalToSuperview().offset(-10)
            make.bottom.equalToSuperview().offset(-8)
        }
        
        addSubview(border)
        border.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(-1)
            make.height.equalTo(1)
            make.width.equalToSuperview().multipliedBy(0.97)
        }
    }
}
