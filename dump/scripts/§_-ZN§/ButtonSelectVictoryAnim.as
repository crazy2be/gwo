package §_-ZN§
{
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import com.funkypear.ui.LP_TeamSetUp;
   import flash.display.MovieClip;
   import flash.geom.ColorTransform;
   import flash.utils.getDefinitionByName;
   
   public class ButtonSelectVictoryAnim extends SimpleButton
   {
      
      public function ButtonSelectVictoryAnim()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         super();
         _loc2_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      private var §_-tj§:Sprite;
      
      private var §_-yT§:int = 0;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         LP_TeamSetUp(parent).§_-m2§();
      }
      
      public function §_-eL§(param1:int = -1) : *
      {
         var _loc16_:* = true;
         var _loc17_:* = false;
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
         _loc16_;
         _loc17_;
         _loc17_;
         if(param1 == -1)
         {
            _loc16_;
            _loc17_;
            var param1:int = this.§_-yT§;
            _loc16_;
         }
         else
         {
            this.§_-yT§ = param1;
         }
         var _loc2_:MovieClip = SafeGlobal.§_-DM§(param1);
         _loc17_;
         if(_loc2_ != null)
         {
            if(this.§_-tj§ == null)
            {
               _loc17_;
               _loc17_;
               this.§_-tj§ = new Sprite();
               this.§_-tj§.x = 28;
               this.§_-tj§.y = 44;
               _loc16_;
               addChild(this.§_-tj§);
            }
            if(this.§_-tj§.numChildren > 0)
            {
               while(this.§_-tj§.numChildren > 0)
               {
                  this.§_-tj§.removeChildAt(0);
                  _loc17_;
                  _loc17_;
               }
               _loc17_;
            }
            _loc16_;
            _loc16_;
            _loc16_;
            _loc16_;
            _loc3_ = Global.favourite_helmet.getInt();
            _loc17_;
            _loc17_;
            _loc17_;
            _loc17_;
            _loc4_ = 1;
            _loc16_;
            _loc17_;
            _loc17_;
            _loc5_ = 1;
            _loc16_;
            _loc16_;
            _loc6_ = 1;
            _loc7_ = getDefinitionByName("HeadClip" + _loc3_) as Class;
            _loc8_ = new _loc7_() as MovieClip;
            _loc17_;
            _loc2_.head.addChild(_loc8_);
            _loc17_;
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
            _loc17_;
            _loc2_.righthand.addChild(_loc10_);
            _loc11_ = new _loc7_() as MovieClip;
            _loc17_;
            _loc2_.lefthand.addChild(_loc11_);
            _loc7_ = getDefinitionByName("FootClip" + _loc6_) as Class;
            _loc12_ = new _loc7_() as MovieClip;
            _loc17_;
            _loc2_.rightfoot.addChild(_loc12_);
            _loc13_ = new _loc7_() as MovieClip;
            _loc16_;
            _loc16_;
            _loc2_.leftfoot.addChild(_loc13_);
            _loc14_ = new ColorTransform();
            _loc14_.color = SafeGlobal.colour_hex[Global.favourite_colour.getInt()];
            _loc8_.inside.transform.colorTransform = _loc14_;
            _loc9_.inside.transform.colorTransform = _loc14_;
            _loc16_;
            _loc16_;
            _loc11_.inside.transform.colorTransform = _loc14_;
            _loc13_.inside.transform.colorTransform = _loc14_;
            _loc17_;
            _loc10_.inside.transform.colorTransform = _loc14_;
            _loc12_.inside.transform.colorTransform = _loc14_;
            _loc16_;
            _loc16_;
            _loc2_.scaleX = 0.8;
            _loc2_.scaleY = 0.8;
            _loc16_;
            _loc17_;
            _loc15_ = this.§_-Gx§(1,_loc2_.totalFrames);
            _loc2_.gotoAndPlay(_loc15_);
            this.§_-tj§.addChild(_loc2_);
         }
      }
      
      private function §_-Gx§(param1:int, param2:int) : int
      {
         var _loc3_:int = Math.floor(param1 + Math.random() * (param2 - param1 + 1));
         return _loc3_;
      }
      
      function frame1() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         stop();
      }
   }
}
