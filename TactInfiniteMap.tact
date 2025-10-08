// Wrong contract: creates a new record for each transaction with no limit

contract TactInfiniteMap {
    map<Int, Address> public callHistory;
    Int public counter;

    receive() {
        self.callHistory.set(self.counter, msg.sender);
        self.counter = self.counter + 1;
    }
}
