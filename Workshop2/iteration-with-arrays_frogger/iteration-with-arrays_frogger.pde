Car aCar;
Car anotherCar;
Car[] carArray;

void setup(){
   size(800,600);
   carArray = new Car[20];
   
   for (int i = 0; i < carArray.length; i++){
      Car c = new Car(0, i *20);
      carArray[i] = c;
   }
   
   aCar = new Car(0, height/2);
   anotherCar = new Car(0, height/2 +100);
}

void draw(){
  background(0,0,0);
  
  for (int i = 0; i < carArray.length; i++){
     Car c = carArray[i]; 
     c.draw();
     //carArray[i].draw();
  }
   
  
  aCar.draw();
  anotherCar.draw();
}
