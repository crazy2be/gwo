package §_-zO§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.getDefinitionByName;
   import flash.geom.ColorTransform;
   import flash.geom.Rectangle;
   
   public class §_-HH§ extends Sprite
   {
      
      public function §_-HH§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         super();
      }
      
      public var §_-V0§:TextField;
      
      public var §_-TM§:MovieClip;
      
      private var §_-Wy§:int;
      
      private var helmet_id:int;
      
      private var colour_id:int;
      
      private var §_-Sz§:MovieClip;
      
      private var §_-Od§:Boolean = false;
      
      public function init(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.§_-Wy§ = param1;
         this.helmet_id = param3;
         this.colour_id = param2;
         this.§_-V0§.text = String(param1 + 1);
         this.§_-40§();
         _loc4_;
         mouseEnabled = true;
         mouseChildren = false;
         buttonMode = true;
         addEventListener(MouseEvent.CLICK,this.§_-h6§,false,0,true);
         addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
         _loc5_;
         _loc5_;
         addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
      }
      
      public function doRollOver(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         x = 10;
      }
      
      public function doRollOut(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         if(!this.§_-Od§)
         {
            _loc3_;
            x = 0;
         }
      }
      
      public function §_-h6§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         (parent.parent as §_-kE§).§_-tK§(this.§_-Wy§);
         _loc2_;
         _loc2_;
         (parent.parent as §_-kE§).resetToTurnStart(this.§_-Wy§);
      }
      
      private function §_-40§() : void
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc1_:Class = getDefinitionByName("HeadClip" + this.helmet_id) as Class;
         _loc8_;
         this.§_-Sz§ = new _loc1_();
         var _loc2_:Number = this.§_-Sz§.height;
         var _loc3_:Number = 50;
         _loc8_;
         _loc8_;
         _loc7_;
         var _loc4_:Number = _loc3_ / _loc2_;
         _loc8_;
         this.§_-Sz§.scaleX = _loc4_;
         _loc8_;
         this.§_-Sz§.scaleY = _loc4_;
         _loc7_;
         this.§_-Sz§.visible = false;
         var _loc5_:ColorTransform = this.§_-Sz§.inside.transform.colorTransform;
         _loc5_.color = SafeGlobal.colour_hex[this.colour_id];
         _loc8_;
         _loc8_;
         this.§_-Sz§.inside.transform.colorTransform = _loc5_;
         _loc8_;
         addChild(this.§_-Sz§);
         var _loc6_:Rectangle = this.§_-Sz§.getBounds(this);
         _loc7_;
         _loc7_;
         this.§_-Sz§.y = -4 - _loc6_.y - 22;
         _loc7_;
         _loc7_;
         this.§_-Sz§.x = 80;
         _loc7_;
         _loc7_;
         this.§_-Sz§.visible = true;
      }
      
      public function setIsSelected(param1:Boolean) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:ColorTransform = null;
         _loc2_ = this.§_-TM§.transform.colorTransform;
         if(param1 == true)
         {
            _loc4_;
            this.§_-Od§ = true;
            x = 10;
            _loc2_.color = SafeGlobal.colour_hex[this.colour_id];
         }
         else
         {
            this.§_-Od§ = false;
            _loc3_;
            x = 0;
            _loc2_.color = 16777215;
            _loc4_;
            _loc4_;
         }
         this.§_-TM§.transform.colorTransform = _loc2_;
      }
   }
}
