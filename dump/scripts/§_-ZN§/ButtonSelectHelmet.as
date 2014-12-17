package §_-ZN§
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
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         super();
         _loc1_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      private var §_-Sz§:MovieClip;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         LP_TeamSetUp(parent).§_-Iz§();
      }
      
      public function §_-3P§(param1:int) : *
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc7_:Rectangle = null;
         _loc9_;
         _loc9_;
         if(this.§_-Sz§ != null)
         {
            _loc9_;
            _loc9_;
            removeChild(this.§_-Sz§);
         }
         var _loc2_:Class = getDefinitionByName("HeadClip" + param1) as Class;
         _loc8_;
         this.§_-Sz§ = new _loc2_();
         var _loc3_:Number = this.§_-Sz§.height;
         var _loc4_:Number = 46;
         _loc9_;
         _loc8_;
         var _loc5_:Number = _loc4_ / _loc3_;
         _loc9_;
         this.§_-Sz§.scaleX = _loc5_;
         _loc9_;
         this.§_-Sz§.scaleY = _loc5_;
         _loc8_;
         _loc8_;
         this.§_-Sz§.visible = false;
         var _loc6_:ColorTransform = this.§_-Sz§.inside.transform.colorTransform;
         _loc6_.color = SafeGlobal.colour_hex[Global.favourite_colour.getInt()];
         _loc9_;
         this.§_-Sz§.inside.transform.colorTransform = _loc6_;
         _loc8_;
         _loc8_;
         addChild(this.§_-Sz§);
         _loc7_ = this.§_-Sz§.getBounds(this);
         _loc8_;
         this.§_-Sz§.y = 5 - _loc7_.y;
         _loc9_;
         _loc9_;
         this.§_-Sz§.x = (56 - _loc7_.width) / 2 - _loc7_.x;
         _loc8_;
         _loc8_;
         this.§_-Sz§.visible = true;
      }
      
      public function §_-ma§(param1:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:ColorTransform = null;
         _loc3_;
         if(this.§_-Sz§ != null)
         {
            _loc2_ = this.§_-Sz§.inside.transform.colorTransform;
            _loc4_;
            _loc2_.color = SafeGlobal.colour_hex[param1];
            _loc3_;
            _loc3_;
            this.§_-Sz§.inside.transform.colorTransform = _loc2_;
         }
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         stop();
      }
   }
}
