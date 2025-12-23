module counter::counter {
  //Counter'ın tiplerini belirledik
  public struct Counter has key {
    id: UID, 
    owner: address, 
    value: u64
  }

//Zincir üstünde yeni bir obje oluşturuyoruz ve bu objeyi shared hale getiriyoruz
  public fun create(ctx: &mut TxContext ) { //Obje yaratmak için kullanılır 
    transfer::share_object(Counter { // herkes bu objeyi okuyabilir değiştirebilir
      id: object::new(ctx), //Benzersiz bir Object ID üretilir
      owner: ctx.sender(), //işlemi gönderen cüzdan adresi 
      value: 0 //Counter 0
    })
  }

  public fun increment(counter: &mut Counter){
    counter.value = counter.value + 1;
  }

  public fun set_value(counter: &mut Counter, value: u64, ctx: &TxContext){
    assert!(counter.owner == ctx.sender(), 0);
    counter.value = value;
  }
}