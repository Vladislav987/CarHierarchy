/**
 * Created by Ponamarov Vladyslav on 25.04.2019.
 */

@IsTest
private class TestCar {
    @IsTest
    static void testBehavior() {
        Door door = new Door(4);
        Engine engine = new Engine(TypeOfEngine.ELECTRIC, 225);
        Characteristic characteristic = new Characteristic('red', 180, Date.today(), 20000);
        Car car =new Car('Toyota', characteristic, door,engine,Wheels.UNIVERSAL);

        Test.startTest();
        car.accelerate();
        car.run();
        System.debug('----------');
        car.stopCar();
        car.run();
        Test.stopTest();
    }
}