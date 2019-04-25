/**
 * Created by Ponamarov Vladyslav on 25.04.2019.
 */

public with sharing class Door {
    private final Integer quantityOfDoor;
    private Boolean stateOfOpennes  = false;

    public Door(Integer quantityOfDoor){
        this.quantityOfDoor = quantityOfDoor;

    }

    public Boolean getStateOfOpennes(){
        return stateOfOpennes;
    }
    public Integer getQuantityOfDoor(){
        return quantityOfDoor;
    }

    public void openDoor(){
        if (!stateOfOpennes) {
            stateOfOpennes = true;
            System.debug('You opened door');
        }else {
            System.debug('Your door is already open');
        }


    }
    public void closeDoor(){
        if (stateOfOpennes) {
            stateOfOpennes = false;
            System.debug('You closed door');
        }else{
            System.debug('Your door is already closed');
        }

    }
}