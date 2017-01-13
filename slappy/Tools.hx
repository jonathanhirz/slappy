package slappy;

class Tools {

    // convert Bool (true/false) to Int (1/0)
    static inline public function BoolToInt(_bool:Bool):Int {
        
        if(_bool == true) return 1;
        else if(_bool == false) return 0;
        else return 0;

    } //BoolToInt

} //Tools