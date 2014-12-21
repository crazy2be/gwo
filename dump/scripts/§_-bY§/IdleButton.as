package §_-bY§
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
         _loc3_;
         _loc3_;
         super();
         _loc4_;
         _loc4_;
         addFrameScript(0,this.frame1,4,this.frame5);
         _loc3_;
         _loc3_;
         this.id = param1;
         _loc4_;
         _loc4_;
         this.pos = param2;
         _loc3_;
         _loc3_;
         this.§_-bg§(this.id);
      }
      
      public var id:int = -1;
      
      public var pos:int = -1;
      
      private var §_-jx§:Sprite;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         IdleSelectPanel(parent.parent).§_-2C§(this.id,this.pos);
      }
      
      public function §_-bg§(param1:int) : *
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
         _loc17_;
         if(this.§_-jx§ == null)
         {
            _loc17_;
            _loc17_;
            this.§_-jx§ = new Sprite();
            _loc17_;
            this.§_-jx§.x = 28;
            _loc16_;
            this.§_-jx§.y = 44;
            _loc17_;
            _loc17_;
            addChild(this.§_-jx§);
         }
         var _loc2_:MovieClip = SafeGlobal.§_-c-§(param1);
         _loc16_;
         if(_loc2_ != null)
         {
            _loc16_;
            if(this.§_-jx§.numChildren > 0)
            {
               while(this.§_-jx§.numChildren > 0)
               {
                  this.§_-jx§.removeChildAt(0);
                  _loc16_;
               }
               _loc16_;
               _loc16_;
            }
            _loc16_;
            _loc16_;
            _loc16_;
            _loc3_ = Global.favourite_helmet.getInt();
            _loc17_;
            _loc17_;
            _loc16_;
            _loc4_ = 1;
            _loc17_;
            _loc17_;
            _loc16_;
            _loc5_ = 1;
            _loc16_;
            _loc16_;
            _loc6_ = 1;
            _loc7_ = getDefinitionByName("HeadClip" + _loc3_) as Class;
            _loc8_ = new _loc7_() as MovieClip;
            _loc16_;
            _loc2_.head.addChild(_loc8_);
            _loc17_;
            if(_loc2_.body is §_-7w§)
            {
               _loc7_ = getDefinitionByName("BodyClip" + _loc4_) as Class;
            }
            else
            {
               _loc7_ = getDefinitionByName("BodyClipNew" + _loc4_) as Class;
            }
            _loc9_ = new _loc7_() as MovieClip;
            _loc17_;
            _loc2_.body.addChild(_loc9_);
            _loc7_ = getDefinitionByName("HandClip" + _loc5_) as Class;
            _loc10_ = new _loc7_() as MovieClip;
            _loc17_;
            _loc17_;
            _loc2_.righthand.addChild(_loc10_);
            _loc11_ = new _loc7_() as MovieClip;
            _loc17_;
            _loc2_.lefthand.addChild(_loc11_);
            _loc7_ = getDefinitionByName("FootClip" + _loc6_) as Class;
            _loc12_ = new _loc7_() as MovieClip;
            _loc16_;
            _loc16_;
            _loc2_.rightfoot.addChild(_loc12_);
            _loc13_ = new _loc7_() as MovieClip;
            _loc16_;
            _loc16_;
            _loc2_.leftfoot.addChild(_loc13_);
            _loc14_ = new ColorTransform();
            _loc14_.color = SafeGlobal.colour_hex[Global.favourite_colour.getInt()];
            _loc17_;
            _loc17_;
            _loc8_.inside.transform.colorTransform = _loc14_;
            _loc17_;
            _loc9_.inside.transform.colorTransform = _loc14_;
            _loc11_.inside.transform.colorTransform = _loc14_;
            _loc13_.inside.transform.colorTransform = _loc14_;
            _loc10_.inside.transform.colorTransform = _loc14_;
            _loc16_;
            _loc12_.inside.transform.colorTransform = _loc14_;
            _loc2_.scaleX = 0.8;
            _loc2_.scaleY = 0.8;
            _loc16_;
            _loc16_;
            _loc15_ = this.§_-Cq§(1,_loc2_.totalFrames);
            _loc2_.gotoAndPlay(_loc15_);
            this.§_-jx§.addChild(_loc2_);
         }
      }
      
      private function §_-Cq§(param1:int, param2:int) : int
      {
         var _loc3_:int = Math.floor(param1 + Math.random() * (param2 - param1 + 1));
         return _loc3_;
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(§_-L4§)
         {
            _loc2_;
            _loc2_;
            gotoAndStop("off");
            buttonMode = false;
         }
         else
         {
            buttonMode = true;
            _loc1_;
            if(over)
            {
               gotoAndStop("over");
               _loc2_;
               _loc2_;
               IdleSelectPanel(parent.parent).§_-qN§(this.id);
            }
            else
            {
               gotoAndStop("up");
               _loc1_;
               _loc1_;
               IdleSelectPanel(parent.parent).§_-8-§();
            }
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
      
      function frame5() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         stop();
      }
   }
}
