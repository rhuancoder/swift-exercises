protocol Account {
    var balance: Double { get set }
    
    func withdraw(_ value: Double)
    
    func deposit(_ value: Double)
}

class CurrentAccount: Account {
    var balance: Double
    
    func withdraw(_ value: Double) {
        balance -= value
    }
    
    func deposit(_ value: Double) {
        balance += value
    }
    
    init() {
        balance = 0.0
    }
}
