package {
	import flash.display.Sprite;

	/**
	 * @author johnbarrett
	 */
	public class Graph extends Sprite {
		public function Graph() {
			
			var cols:Number = 20;
			var rows:Number = 20;
			var w:Number = stage.stageWidth/cols;
			var h:Number = stage.stageHeight/rows;
			var points:Array = Points.createPoints(rows, cols, w, h);
			
				//drawing rows
				
				for (var i:Number=0; i<rows+1; i++) {
					graphics.lineStyle(1, 0xCCCCCC);
					graphics.moveTo(0, points[i*(cols-1)].y-1);
					graphics.lineTo(points[cols - 1].x + w, points[i * (cols-1)].y-1);
				}
				
				// drawing cols
				
				for (var j:Number=0; j<cols; j++) {
					graphics.lineStyle(1, 0xCCCCCC);
					graphics.moveTo(points[j].x-1, 0);
					graphics.lineTo(points[j].x-1, points[points.length-1].y+h);
				}
		}
	}
}
			
