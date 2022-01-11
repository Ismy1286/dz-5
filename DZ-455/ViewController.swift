import UIKit
import SnapKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private var contacts: [ContactModel] = []
    
    private lazy var tableView: UITableView = {
        let view = UITableView()
        view.dataSource = self
        view.delegate = self
        return view
    }()
    
    private lazy var nameTitle: UILabel = {
        let view = UILabel()
        view.text = "Contacts"
        view.font = .systemFont(ofSize: 17)
        view.textAlignment = .center
        view.backgroundColor = UIColor(red: 107 / 255, green: 155 / 255, blue: 209 / 255,alpha: 1)
        return view
    }()
    
    private lazy var plusButton: CustonButton = {
        let view = CustonButton()
        view.setTitle("+", for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 30)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSubView()
        setupViews()
    }
    
    private func setupSubView() {
        
        view.addSubview(nameTitle)
        nameTitle.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.top.equalToSuperview().offset(20)
            make.height.equalTo(40)
        }
        
        nameTitle.addSubview(plusButton)
        plusButton.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-10)
            make.centerY.equalToSuperview()
            make.height.width.equalTo(40)
        }
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview()
            make.top.equalTo(nameTitle.snp.bottom)
        }
    }
    
    private func setupViews() {
        
        tableView.dataSource = self
        tableView.delegate = self
        
        contacts.append(ContactModel(contactName: "Azamat", contactNumber: "(0700)-222-333", image: "icon1"))
        contacts.append(ContactModel(contactName: "Aliya", contactNumber: "(0700)-545-333", image: "icon1"))
        contacts.append(ContactModel(contactName: "Eldar", contactNumber: "(0700)-444-333", image: "icon1"))
        contacts.append(ContactModel(contactName: "Ruslan", contactNumber: "(0700)-111-333", image: "icon1"))
        contacts.append(ContactModel(contactName: "Doolot", contactNumber: "(0700)-666-333", image: "icon1"))
        
        
        plusButton.setOnClickListener { [self] view in
            let addNew = AddContact()
            navigationController?.pushViewController(addNew, animated: true)
            
            //            self.tableView.reloadData()
        }
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = ContactCell()
        let model = contacts[indexPath.row]
        
        cell.contactName.text = model.name1
        cell.contactNumber.text = model.number1
        cell.contactImage.image = UIImage(named: "icon1")
        cell.backgroundColor = UIColor(red: 206 / 255, green: 222 / 255, blue: 240 / 255,alpha: 1)
        
        return cell
    }
}
