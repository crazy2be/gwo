package §_-JH§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.getDefinitionByName;
   import flash.geom.ColorTransform;
   import flash.geom.Rectangle;
   
   public class §_-dX§ extends Sprite
   {
      
      public function §_-dX§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         super();
      }
      
      public var §_-33§:TextField;
      
      public var §_-kh§:MovieClip;
      
      private var §_-8i§:int;
      
      private var helmet_id:int;
      
      private var colour_id:int;
      
      private var §_-Jw§:MovieClip;
      
      private var §_-yY§:Boolean = false;
      
      public function init(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         this.§_-8i§ = param1;
         this.helmet_id = param3;
         this.colour_id = param2;
         _loc5_;
         _loc5_;
         this.§_-33§.text = String(param1 + 1);
         _loc5_;
         _loc5_;
         this.§_-q§();
         _loc4_;
         _loc4_;
         mouseEnabled = true;
         _loc4_;
         _loc4_;
         mouseChildren = false;
         buttonMode = true;
         addEventListener(MouseEvent.CLICK,this.§_-jm§,false,0,true);
         addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
         _loc5_;
         _loc5_;
         addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
      }
      
      public function doRollOver(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         x = 10;
      }
      
      public function doRollOut(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         if(!this.§_-yY§)
         {
            _loc2_;
            x = 0;
         }
      }
      
      public function §_-jm§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         (parent.parent as §_-VB§).§_-kO§(this.§_-8i§);
         _loc2_;
         (parent.parent as §_-VB§).resetToTurnStart(this.§_-8i§);
      }
      
      private function §_-q§() : void
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc1_:Class = getDefinitionByName("HeadClip" + this.helmet_id) as Class;
         _loc7_;
         _loc7_;
         this.§_-Jw§ = new _loc1_();
         var _loc2_:Number = this.§_-Jw§.height;
         var _loc3_:Number = 50;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         var _loc4_:Number = _loc3_ / _loc2_;
         _loc8_;
         this.§_-Jw§.scaleX = _loc4_;
         _loc8_;
         _loc8_;
         this.§_-Jw§.scaleY = _loc4_;
         _loc8_;
         this.§_-Jw§.visible = false;
         var _loc5_:ColorTransform = this.§_-Jw§.inside.transform.colorTransform;
         _loc5_.color = SafeGlobal.colour_hex[this.colour_id];
         _loc8_;
         _loc8_;
         this.§_-Jw§.inside.transform.colorTransform = _loc5_;
         _loc7_;
         _loc7_;
         addChild(this.§_-Jw§);
         var _loc6_:Rectangle = this.§_-Jw§.getBounds(this);
         _loc7_;
         _loc7_;
         this.§_-Jw§.y = -4 - _loc6_.y - 22;
         _loc8_;
         this.§_-Jw§.x = 80;
         _loc8_;
         _loc8_;
         this.§_-Jw§.visible = true;
      }
      
      public function setIsSelected(param1:Boolean) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:ColorTransform = null;
         _loc2_ = this.§_-kh§.transform.colorTransform;
         if(param1 == true)
         {
            this.§_-yY§ = true;
            x = 10;
            _loc2_.color = SafeGlobal.colour_hex[this.colour_id];
            _loc4_;
            _loc4_;
         }
         else
         {
            this.§_-yY§ = false;
            x = 0;
            _loc2_.color = 16777215;
         }
         this.§_-kh§.transform.colorTransform = _loc2_;
      }
   }
}
