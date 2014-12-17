package §_-ZN§
{
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import com.funkypear.ui.IdleSelectPanel;
   import flash.display.MovieClip;
   import flash.geom.ColorTransform;
   import flash.utils.getDefinitionByName;
   
   public class IdleButton extends SimpleButton
   {
      
      public function IdleButton(param1:int, param2:int)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         super();
         _loc4_;
         _loc4_;
         addFrameScript(0,this.frame1,4,this.frame5);
         _loc4_;
         this.id = param1;
         _loc3_;
         _loc3_;
         this.pos = param2;
         _loc4_;
         _loc4_;
         this.§_-eL§(this.id);
      }
      
      public var id:int = -1;
      
      public var pos:int = -1;
      
      private var §_-tj§:Sprite;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         IdleSelectPanel(parent.parent).§_-ez§(this.id,this.pos);
      }
      
      public function §_-eL§(param1:int) : *
      {
         var _loc16_:* = false;
         var _loc17_:* = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc9_:MovieClip = null;
         var _loc10_:MovieClip = null;
         var _loc11_:MovieClip = null;
         var _loc12_:MovieClip = null;
         var _loc13_:MovieClip = null;
         var _loc14_:ColorTransform = null;
         var _loc15_:* = 0;
         _loc16_;
         if(this.§_-tj§ == null)
         {
            _loc16_;
            this.§_-tj§ = new Sprite();
            _loc16_;
            this.§_-tj§.x = 28;
            _loc16_;
            this.§_-tj§.y = 44;
            _loc16_;
            addChild(this.§_-tj§);
         }
         var _loc2_:MovieClip = SafeGlobal.§_-do§(param1);
         _loc17_;
         if(_loc2_ != null)
         {
            _loc17_;
            _loc17_;
            if(this.§_-tj§.numChildren > 0)
            {
               while(this.§_-tj§.numChildren > 0)
               {
                  this.§_-tj§.removeChildAt(0);
                  _loc16_;
                  _loc16_;
               }
               _loc16_;
               _loc16_;
            }
            _loc17_;
            _loc17_;
            _loc3_ = Global.favourite_helmet.getInt();
            _loc17_;
            _loc17_;
            _loc16_;
            _loc4_ = 1;
            _loc16_;
            _loc16_;
            _loc17_;
            _loc5_ = 1;
            _loc17_;
            _loc6_ = 1;
            _loc7_ = getDefinitionByName("HeadClip" + _loc3_) as Class;
            _loc8_ = new _loc7_() as MovieClip;
            _loc17_;
            _loc17_;
            _loc2_.head.addChild(_loc8_);
            _loc16_;
            if(_loc2_.body is §_-8J§)
            {
               _loc7_ = getDefinitionByName("BodyClip" + _loc4_) as Class;
            }
            else
            {
               _loc7_ = getDefinitionByName("BodyClipNew" + _loc4_) as Class;
            }
            _loc9_ = new _loc7_() as MovieClip;
            _loc17_;
            _loc17_;
            _loc2_.body.addChild(_loc9_);
            _loc7_ = getDefinitionByName("HandClip" + _loc5_) as Class;
            _loc10_ = new _loc7_() as MovieClip;
            _loc16_;
            _loc2_.righthand.addChild(_loc10_);
            _loc11_ = new _loc7_() as MovieClip;
            _loc17_;
            _loc17_;
            _loc2_.lefthand.addChild(_loc11_);
            _loc7_ = getDefinitionByName("FootClip" + _loc6_) as Class;
            _loc12_ = new _loc7_() as MovieClip;
            _loc16_;
            _loc16_;
            _loc2_.rightfoot.addChild(_loc12_);
            _loc13_ = new _loc7_() as MovieClip;
            _loc17_;
            _loc17_;
            _loc2_.leftfoot.addChild(_loc13_);
            _loc14_ = new ColorTransform();
            _loc14_.color = SafeGlobal.colour_hex[Global.favourite_colour.getInt()];
            _loc8_.inside.transform.colorTransform = _loc14_;
            _loc16_;
            _loc16_;
            _loc9_.inside.transform.colorTransform = _loc14_;
            _loc16_;
            _loc11_.inside.transform.colorTransform = _loc14_;
            _loc13_.inside.transform.colorTransform = _loc14_;
            _loc10_.inside.transform.colorTransform = _loc14_;
            _loc12_.inside.transform.colorTransform = _loc14_;
            _loc2_.scaleX = 0.8;
            _loc17_;
            _loc17_;
            _loc2_.scaleY = 0.8;
            _loc16_;
            _loc17_;
            _loc15_ = this.§_-Gx§(1,_loc2_.totalFrames);
            _loc16_;
            _loc2_.gotoAndPlay(_loc15_);
            this.§_-tj§.addChild(_loc2_);
         }
      }
      
      private function §_-Gx§(param1:int, param2:int) : int
      {
         var _loc3_:int = Math.floor(param1 + Math.random() * (param2 - param1 + 1));
         return _loc3_;
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         if(§_-QR§)
         {
            gotoAndStop("off");
            _loc1_;
            buttonMode = false;
            _loc1_;
         }
         else
         {
            buttonMode = true;
            _loc2_;
            _loc2_;
            if(over)
            {
               gotoAndStop("over");
               IdleSelectPanel(parent.parent).§_-Ew§(this.id);
               _loc1_;
               _loc1_;
            }
            else
            {
               gotoAndStop("up");
               IdleSelectPanel(parent.parent).§_-YQ§();
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
         _loc1_;
         _loc1_;
         stop();
      }
   }
}
