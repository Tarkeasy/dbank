import Debug "mo:base/Debug";

actor DBank {
  // Variable
  stable var currentValue = 300;
  // Update variable
  // currentValue:= 100;
  // Constant
  // let id = 2023212;

  public func topUp(amount: Nat){
    // Increase by 1
    currentValue += amount;
    Debug.print(debug_show(currentValue));
  };

  public func withdraw (amount: Nat) {
    if(amount <= currentValue) {
      currentValue-= amount;
      Debug.print(debug_show(currentValue));
    } else {
      Debug.print("Value is greather than current value");
    }
  };

  public query func checkBalance(): async Nat {
    return currentValue
  };
}