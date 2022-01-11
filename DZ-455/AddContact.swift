import Foundation
import UIKit


class AddContact: UIViewController {
    var sss: String = ""
    var nnn: String = ""
    
    private lazy var newContact: UITextField = {
        let view = UITextField()
        view.text = sss
        return view
    }()
    
    private lazy var newNumber: UITextField = {
        let view = UITextField()
        view.text = nnn
        return view
    }()
    
    private lazy var addNewContact: CustonButton = {
        let view = CustonButton()
        view.setTitle("Сохранить", for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 20)
        return view
    }()
    
    override func viewDidLoad() {
        
        view.addSubview(newContact)
        newContact.snp.makeConstraints { make in
            make.top.left.equalToSuperview().offset(30)
            make.width.equalToSuperview().offset(-60)
        }
        
        view.addSubview(newNumber)
        newNumber.snp.makeConstraints { make in
            make.top.left.equalToSuperview().offset(80)
            make.width.equalToSuperview().offset(-60)
        }
        
        view.addSubview(addNewContact)
        addNewContact.snp.makeConstraints { make in
            make.top.left.equalToSuperview().offset(130)
            make.width.equalToSuperview().offset(-60)
        }
    }
}
