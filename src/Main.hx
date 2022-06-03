import h2d.Bitmap;

class Main extends hxd.App {
    var bmp : h2d.Bitmap;
    var otherBmp : h2d.Bitmap;
    override function init() {
        var tile = h2d.Tile.fromColor(0xFF0000, 100, 100);
        bmp = new h2d.Bitmap(tile, s2d);
        bmp.x = s2d.width * 0.5;
        bmp.y = s2d.height * 0.5;

        var otherTile = h2d.Tile.fromColor(0x00ff00, 50,50);
        otherBmp = new h2d.Bitmap(otherTile, s2d);
        otherBmp.x = s2d.width * 0.5;
        otherBmp.y = s2d.height * 0.5;
        otherTile.dx = -otherTile.width;
        otherTile.dy = -otherTile.height;
    }
    
    override function update(dt:Float) {
        bmp.rotation += 0.1;
    }
    static function main() {
        new Main();
    }
}