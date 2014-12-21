package §_-bY§
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
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         super();
         _loc2_;
         addFrameScript(0,this.frame1,4,this.frame5);
         _loc3_;
         this.id = param1;
         _loc3_;
         _loc3_;
         this.§_-Qc§(this.id);
      }
      
      public var §_-3U§:MovieClip;
      
      public var id:int = -1;
      
      private var §_-Jw§:MovieClip;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         HelmetSelectPanel(parent.parent).§_-x8§(this.id);
      }
      
      public function §_-Qc§(param1:int) : *
      {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc7_:Rectangle = null;
         _loc8_;
         if(this.§_-Jw§ != null)
         {
            _loc8_;
            this.§_-3U§.removeChild(this.§_-Jw§);
         }
         var _loc2_:Class = getDefinitionByName("HeadClip" + param1) as Class;
         _loc8_;
         this.§_-Jw§ = new _loc2_();
         var _loc3_:Number = this.§_-Jw§.height;
         var _loc4_:Number = 46;
         _loc9_;
         _loc9_;
         _loc8_;
         _loc8_;
         var _loc5_:Number = _loc4_ / _loc3_;
         _loc9_;
         _loc9_;
         this.§_-Jw§.scaleX = _loc5_;
         _loc9_;
         this.§_-Jw§.scaleY = _loc5_;
         _loc8_;
         this.§_-Jw§.visible = false;
         var _loc6_:ColorTransform = this.§_-Jw§.inside.transform.colorTransform;
         _loc6_.color = SafeGlobal.colour_hex[Global.favourite_colour.getInt()];
         _loc8_;
         _loc8_;
         this.§_-Jw§.inside.transform.colorTransform = _loc6_;
         _loc9_;
         _loc9_;
         this.§_-3U§.addChild(this.§_-Jw§);
         _loc7_ = this.§_-Jw§.getBounds(this.§_-3U§);
         _loc9_;
         this.§_-Jw§.y = 5 - _loc7_.y;
         _loc9_;
         this.§_-Jw§.x = (56 - _loc7_.width) / 2 - _loc7_.x;
         _loc8_;
         _loc8_;
         this.§_-Jw§.visible = true;
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(§_-L4§)
         {
            gotoAndStop("off");
            _loc1_;
            buttonMode = false;
         }
         else
         {
            buttonMode = true;
            _loc2_;
            if(over)
            {
               _loc2_;
               gotoAndStop("over");
               HelmetSelectPanel(parent.parent).§_-2Y§(this.id);
            }
            else
            {
               gotoAndStop("up");
               HelmetSelectPanel(parent.parent).§_-Ue§();
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
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
