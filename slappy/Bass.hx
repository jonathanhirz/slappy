package slappy;

import luxe.importers.tiled.*;
import luxe.tilemaps.Tilemap;

class Bass {

    // convert Bool (true/false) to Int (1/0)
    static inline public function bool_to_int(_bool:Bool):Int {
        
        if(_bool == true) return 1;
        else if(_bool == false) return 0;
        else return 0;

    } //bool_to_int

    function tiled_tile_has_property( _tilemap:TiledMap, _layer:String, _position_x:Float, _position_y:Float, _property:String ) : Bool {

            var tile_coordinates = _tilemap.tile_coord(_position_x, _position_y);
            if(_tilemap.inside(Std.int(tile_coordinates.x), Std.int(tile_coordinates.y))) {
                var current_tile_id : Int = _tilemap.tile_at_pos(_layer, _position_x, _position_y).id - 1;
                for(tiled_tileset in _tilemap.tiledmap_data.tilesets) {
                    for(tiled_tile in tiled_tileset.property_tiles) {
                        if(current_tile_id == tiled_tile.id) {
                            return tiled_tile.properties.exists(_property);
                        }
                    }
                }
            }

            return false;

        } //tiled_tile_has_property

} //Bass