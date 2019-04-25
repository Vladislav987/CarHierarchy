/**
 * Created by Ponamarov Vladyslav on 24.04.2019.
 */

public with sharing class Engine {
    private final TypeOfEngine typeOfEngine;
    private Integer power;
    private Boolean work = false;

    public Engine(TypeOfEngine typeOfEngine, Integer power){
        this.typeOfEngine = typeOfEngine;
        this.power = power;
    }

    public Boolean getStatusOfWorking(){
        return work;
    }


    public void startEngine(){
        work = true;
        System.debug('Engine is working');
    }

    public void stopEngine(){
        work = false;
        System.debug('Engine isn`t working');
    }

}