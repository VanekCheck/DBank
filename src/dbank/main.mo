import Debug "mo:base/Debug"

// create class that called DBank
actor DBank{
  var currentValue = 300;
  // := means equal (reasign)
  currentValue := 100;

  //let - immutable (const) type
  let id = 3925289529368;

  public func topUp(amount: Nat){
    currentValue += amount;
    Debug.print(debug_show(currentValue));
  };

  public func withdraw(amount: Nat){
    
    let tempValue: Int = currentValue - amount; 
      if(tempValue >= 0){
      currentValue -= amount;
      Debug.print(debug_show(currentValue));

    }else{
      Debug.print("Amount too large, currentValue less than zero");
    }
    
  }

}
 
