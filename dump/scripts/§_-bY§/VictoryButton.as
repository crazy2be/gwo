package §_-bY§
{
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import com.funkypear.ui.VictorySelectPanel;
   import flash.display.MovieClip;
   import flash.geom.ColorTransform;
   import flash.utils.getDefinitionByName;
   
   public class VictoryButton extends SimpleButton
   {
      
      public function VictoryButton(param1:int)
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         super();
         _loc2_;
         addFrameScript(0,this.frame1,4,this.frame5);
         _loc3_;
         this.id = param1;
         _loc2_;
         this.§_-bg§(this.id);
      }
      
      public var id:int = -1;
      
      private var §_-jx§:Sprite;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         VictorySelectPanel(parent.parent).§_-2C§(this.id);
      }
      
      public function §_-bg§(param1:int) : *
      {
         var _loc16_:* = false;
         var _loc17_:* = true;
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
         _loc17_;
         if(this.§_-jx§ == null)
         {
            this.§_-jx§ = new Sprite();
            this.§_-jx§.x = 28;
            this.§_-jx§.y = 44;
            addChild(this.§_-jx§);
         }
         if(this.§_-jx§.numChildren > 0)
         {
            while(this.§_-jx§.numChildren > 0)
            {
               this.§_-jx§.removeChildAt(0);
               _loc17_;
            }
         }
         _loc16_;
         var _loc2_:int = Global.favourite_helmet.getInt();
         var _loc3_:* = 1;
         var _loc4_:* = 1;
         var _loc5_:* = 1;
         var _loc6_:MovieClip = SafeGlobal.§with§(param1);
         if(_loc6_ != null)
         {
            _loc7_ = getDefinitionByName("HeadClip" + _loc2_) as Class;
            _loc8_ = new _loc7_() as MovieClip;
            _loc16_;
            _loc6_.head.addChild(_loc8_);
            _loc17_;
            if(_loc6_.body is §_-7w§)
            {
               _loc7_ = getDefinitionByName("BodyClip" + _loc3_) as Class;
            }
            else
            {
               _loc7_ = getDefinitionByName("BodyClipNew" + _loc3_) as Class;
            }
            _loc9_ = new _loc7_() as MovieClip;
            _loc17_;
            _loc6_.body.addChild(_loc9_);
            _loc7_ = getDefinitionByName("HandClip" + _loc4_) as Class;
            _loc10_ = new _loc7_() as MovieClip;
            _loc17_;
            _loc6_.righthand.addChild(_loc10_);
            _loc11_ = new _loc7_() as MovieClip;
            _loc17_;
            _loc6_.lefthand.addChild(_loc11_);
            _loc7_ = getDefinitionByName("FootClip" + _loc5_) as Class;
            _loc12_ = new _loc7_() as MovieClip;
            _loc16_;
            _loc6_.rightfoot.addChild(_loc12_);
            _loc13_ = new _loc7_() as MovieClip;
            _loc17_;
            _loc6_.leftfoot.addChild(_loc13_);
            _loc14_ = new ColorTransform();
            _loc14_.color = SafeGlobal.colour_hex[Global.favourite_colour.getInt()];
            _loc8_.inside.transform.colorTransform = _loc14_;
            _loc9_.inside.transform.colorTransform = _loc14_;
            _loc11_.inside.transform.colorTransform = _loc14_;
            _loc16_;
            _loc16_;
            _loc13_.inside.transform.colorTransform = _loc14_;
            _loc10_.inside.transform.colorTransform = _loc14_;
            _loc12_.inside.transform.colorTransform = _loc14_;
            _loc17_;
            _loc6_.scaleX = 0.8;
            _loc6_.scaleY = 0.8;
            _loc17_;
            _loc16_;
            _loc15_ = this.§_-Cq§(1,_loc6_.totalFrames);
            _loc6_.gotoAndPlay(_loc15_);
            this.§_-jx§.addChild(_loc6_);
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
         _loc2_;
         _loc2_;
         if(§_-L4§)
         {
            _loc1_;
            gotoAndStop("off");
            _loc2_;
            _loc2_;
            buttonMode = false;
            _loc2_;
            _loc2_;
         }
         else
         {
            buttonMode = true;
            _loc2_;
            if(over)
            {
               gotoAndStop("over");
               VictorySelectPanel(parent.parent).§_-46§(this.id);
               _loc1_;
               _loc1_;
            }
            else
            {
               gotoAndStop("up");
               VictorySelectPanel(parent.parent).§_-25§();
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
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
