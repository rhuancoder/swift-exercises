enum PaymentType {
    case creditCard
    case invoice
    case directDebit
}


class Account {
    var balance = 0.0
    var name: String
    
    func withdraw(_ value: Double) {
        balance -= value
    }
    
    func deposit(_ value: Double) {
        balance += value
    }
    
    func payment(_ paymentType: PaymentType) {
        switch paymentType {
        case .creditCard: print("Payment will be made by credit card")
        case .invoice: print("Payment will be made by invoice")
        case .directDebit: print("Payment will be made by direct debit")
        }
    }
    
    init(name: String) {
        self.name = name
    }
}

var account = Account(name: "Rhuan")
account.payment(.creditCard)
account.payment(.directDebit)
