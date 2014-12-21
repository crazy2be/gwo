package §_-bY§
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import com.funkypear.ui.LP_TeamSetUp;
   import flash.geom.Rectangle;
   import flash.utils.getDefinitionByName;
   import flash.geom.ColorTransform;
   
   public class ButtonSelectHelmet extends SimpleButton
   {
      
      public function ButtonSelectHelmet()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         super();
         _loc2_;
         _loc2_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      private var §_-Jw§:MovieClip;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         LP_TeamSetUp(parent).§_-aG§();
      }
      
      public function §_-Qc§(param1:int) : *
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc7_:Rectangle = null;
         _loc9_;
         _loc9_;
         if(this.§_-Jw§ != null)
         {
            _loc8_;
            removeChild(this.§_-Jw§);
         }
         var _loc2_:Class = getDefinitionByName("HeadClip" + param1) as Class;
         _loc8_;
         this.§_-Jw§ = new _loc2_();
         var _loc3_:Number = this.§_-Jw§.height;
         var _loc4_:Number = 46;
         _loc9_;
         _loc9_;
         _loc9_;
         _loc9_;
         var _loc5_:Number = _loc4_ / _loc3_;
         _loc9_;
         this.§_-Jw§.scaleX = _loc5_;
         _loc9_;
         this.§_-Jw§.scaleY = _loc5_;
         _loc9_;
         this.§_-Jw§.visible = false;
         var _loc6_:ColorTransform = this.§_-Jw§.inside.transform.colorTransform;
         _loc6_.color = SafeGlobal.colour_hex[Global.favourite_colour.getInt()];
         _loc8_;
         this.§_-Jw§.inside.transform.colorTransform = _loc6_;
         _loc8_;
         _loc8_;
         addChild(this.§_-Jw§);
         _loc7_ = this.§_-Jw§.getBounds(this);
         _loc8_;
         _loc8_;
         this.§_-Jw§.y = 5 - _loc7_.y;
         _loc9_;
         _loc9_;
         this.§_-Jw§.x = (56 - _loc7_.width) / 2 - _loc7_.x;
         _loc9_;
         this.§_-Jw§.visible = true;
      }
      
      public function §_-r7§(param1:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:ColorTransform = null;
         _loc3_;
         _loc3_;
         if(this.§_-Jw§ != null)
         {
            _loc2_ = this.§_-Jw§.inside.transform.colorTransform;
            _loc4_;
            _loc2_.color = SafeGlobal.colour_hex[param1];
            _loc4_;
            this.§_-Jw§.inside.transform.colorTransform = _loc2_;
         }
      }
      
      function frame1() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         stop();
      }
   }
}
