package slappy;

class Bass {

    // convert Bool (true/false) to Int (1/0)
    static inline public function bool_to_int(_bool:Bool):Int {
        
        if(_bool == true) return 1;
        else if(_bool == false) return 0;
        else return 0;

    } //bool_to_int

    // give it a position and a tilemap (and layer?), return the Tiled custom property of the tile
    static inline public function tile_property_at_position() {


    } //tile_property_at_position

} //Bass