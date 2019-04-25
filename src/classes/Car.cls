/**
 * Created by Ponamarov Vladyslav on 24.04.2019.
 */

public  with sharing class Car implements CarDrive{
    private final String brand;
    private Integer speed = 0;
    private Characteristic characteristic;
    private Door door;
    private Engine engine;
    private Wheels wheels;

    public Car(String brand, Characteristic characteristic, Door doors,
                                            Engine engine, Wheels wheels){
        this.brand = brand;
        this.characteristic = characteristic;
        this.wheels = wheels;
        this.door = doors;
        this.engine = engine;

    }
    public void startCar() {
        engine.startEngine();
    }
    public void stopCar() {
        if (speed > 0) {
            speed = 0;
            System.debug('Your speed is - ' + speed);
        }

    }

    public void accelerate() {
        if(speed <= Characteristic.getMaxSpeed() && !door.getStateOfOpennes() && engine.getStatusOfWorking()){
            speed  += 10;
            System.debug('Your speed is - ' + speed);
        }else {
            System.debug('You can`t accelerate because you did not close door ' +
                                    'or your speed is so high or Engine is not working');
        }


    }
    public void run() {
        if(!door.getStateOfOpennes() && speed == 0){
            door.openDoor();
            engine.startEngine();
            door.closeDoor();
            accelerate();
        }else if (door.getStateOfOpennes() && speed == 0) {
            engine.startEngine();
            accelerate();
        }
        }

    public void parkCar() {
        if(speed > 0){
            stopCar();
            engine.stopEngine();
            door.openDoor();
            System.debug('Get off the car');
            door.closeDoor();
        }else{
            System.debug('You  car is already parking');
        }

    }


}