import Foundation

class ContactModel {
    var name1: String
    var number1: String
    var image: String
    
    init(contactName: String, contactNumber: String, image: String) {
        self.name1 = contactName
        self.number1 = contactNumber
        self.image = image
    }
}
