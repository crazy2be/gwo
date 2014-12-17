package §_-ZN§
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import com.funkypear.ui.HelmetSelectPanel;
   import flash.geom.Rectangle;
   import flash.utils.getDefinitionByName;
   import flash.geom.ColorTransform;
   
   public class HelmetButton extends SimpleButton
   {
      
      public function HelmetButton(param1:int)
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         super();
         _loc3_;
         addFrameScript(0,this.frame1,4,this.frame5);
         _loc3_;
         this.id = param1;
         _loc2_;
         _loc2_;
         this.§_-3P§(this.id);
      }
      
      public var get:MovieClip;
      
      public var id:int = -1;
      
      private var §_-Sz§:MovieClip;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         HelmetSelectPanel(parent.parent).§_-7F§(this.id);
      }
      
      public function §_-3P§(param1:int) : *
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc7_:Rectangle = null;
         _loc8_;
         if(this.§_-Sz§ != null)
         {
            _loc8_;
            _loc8_;
            this.get.removeChild(this.§_-Sz§);
         }
         var _loc2_:Class = getDefinitionByName("HeadClip" + param1) as Class;
         _loc8_;
         _loc8_;
         this.§_-Sz§ = new _loc2_();
         var _loc3_:Number = this.§_-Sz§.height;
         var _loc4_:Number = 46;
         _loc9_;
         _loc8_;
         _loc8_;
         var _loc5_:Number = _loc4_ / _loc3_;
         _loc9_;
         this.§_-Sz§.scaleX = _loc5_;
         _loc8_;
         _loc8_;
         this.§_-Sz§.scaleY = _loc5_;
         _loc9_;
         _loc9_;
         this.§_-Sz§.visible = false;
         var _loc6_:ColorTransform = this.§_-Sz§.inside.transform.colorTransform;
         _loc6_.color = SafeGlobal.colour_hex[Global.favourite_colour.getInt()];
         _loc9_;
         _loc9_;
         this.§_-Sz§.inside.transform.colorTransform = _loc6_;
         _loc8_;
         _loc8_;
         this.get.addChild(this.§_-Sz§);
         _loc7_ = this.§_-Sz§.getBounds(this.get);
         _loc9_;
         _loc9_;
         this.§_-Sz§.y = 5 - _loc7_.y;
         _loc9_;
         this.§_-Sz§.x = (56 - _loc7_.width) / 2 - _loc7_.x;
         _loc9_;
         _loc9_;
         this.§_-Sz§.visible = true;
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         if(§_-QR§)
         {
            gotoAndStop("off");
            _loc1_;
            _loc1_;
            buttonMode = false;
            _loc1_;
            _loc1_;
         }
         else
         {
            buttonMode = true;
            _loc1_;
            _loc1_;
            if(over)
            {
               gotoAndStop("over");
               HelmetSelectPanel(parent.parent).§_-2y§(this.id);
               _loc2_;
               _loc2_;
            }
            else
            {
               gotoAndStop("up");
               HelmetSelectPanel(parent.parent).§_-P5§();
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         stop();
      }
      
      function frame5() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         stop();
      }
   }
}
