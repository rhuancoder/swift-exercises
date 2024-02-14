class Account {
    var balance = 0.0 {
        willSet {
            print("The new value is: \(newValue)")
        }
        
        didSet {
            print("The old value is: \(oldValue)")
        }
    }
    
    var name: String
    
    func withdraw(_ value: Double) {
        balance -= value
    }
    
    func deposit(_ value: Double) {
        balance += value
    }
    
    init(name: String) {
        self.name = name
    }
}

var account = Account(name: "Rhuan")
account.deposit(20)
account.withdraw(10)

