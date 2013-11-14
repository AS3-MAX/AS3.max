package AS3.max.display.Graphics {
	
	import flash.geom.*;
	
	import AS3.max.top.*;
	
	public class Rect {

		public static function draw(target:*, p:*) {
			
			/*
			public beginGradientFill(
				fillType: String, "linear" or "radial"
				colors: Array, equal
				alphas: Array, equal
				ratios: Array, equal
				matrix: Object, 
				[spreadMethod: String], 
				[interpolationMethod: String], 
				[focalPointRatio: Number]) : Void
			
			
			*/
			try
			{
				p.t = target;
				p.c = p.color || 0x0099FF;
				p.a = p.alpha || 1;
				p.x = p.x || 0;
				p.y = p.y || 0;
				p.w = p.width || 150;
				p.h = p.height || 50;
				
				if (p.color is Array)
				{
					p.f = p.fillType || 'linear';
					p.a = (p.alpha is Array) ? p.alpha : [100,100];
					p.r = (p.ratios is Array) ? p.ratios : [0,255];
					
					p.m = new Matrix();
					p.m.createGradientBox(p.w, p.h, Math$.toRad(90));
					p.t.beginGradientFill(p.f,p.c,p.a,p.r,p.m);
				}
				else if (p.c is Number)
				{
					p.t.beginFill(p.c);
				}
				
				if (p.ellipse)
				{
					p.t.drawRoundRect(p.x,p.y,p.w,p.h,p.ellipse);
				}
				else
				{
					p.t.drawRect(p.x,p.y,p.w,p.h);
				}
				
				
				p.t.endFill();
			}
			catch (e:Error)
			{
				
			}			
		}
	}	
}
