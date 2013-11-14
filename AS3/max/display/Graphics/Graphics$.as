package AS3.max.display.Graphics {
	import flash.display.*;
	
	public class Graphics$ {

		public static function draw(target:*, Class:*, params:Object = null) {
			try
			{
				params = params || {};
				var g:Graphics = target.graphics;
				Class.draw(g,params);
			}
			catch (e:Error)
			{
				//trace(e);
			}
			
		}

	}
	
}
