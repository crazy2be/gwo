package com.funkypear.ui
{
   import flash.display.Sprite;
   import fl.transitions.Tween;
   import flash.events.Event;
   import fl.transitions.easing.Strong;
   
   public class LobbyHelpBackground extends Sprite
   {
      
      public function LobbyHelpBackground(param1:Array, param2:Array = null)
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:§_-Vc§ = null;
         super();
         _loc7_;
         alpha = 0;
         _loc6_;
         this.§_-oE§ = new Sprite();
         _loc6_;
         _loc6_;
         this.§_-o§ = new Sprite();
         addChild(this.§_-oE§);
         _loc6_;
         _loc6_;
         addChild(this.§_-o§);
         _loc7_;
         this.§_-oE§.graphics.clear();
         this.§_-oE§.graphics.beginFill(0,0.5);
         this.§_-oE§.graphics.drawRect(0,0,800,600);
         _loc6_;
         if(param1 != null)
         {
            _loc6_;
            _loc3_ = 0;
            while(true)
            {
               _loc7_;
               _loc6_;
               if(_loc3_ >= param1.length)
               {
                  break;
               }
               this.§_-oE§.graphics.moveTo(param1[_loc3_].x,param1[_loc3_].y);
               this.§_-oE§.graphics.lineTo(param1[_loc3_].x,param1[_loc3_].y + param1[_loc3_].h);
               _loc6_;
               _loc6_;
               this.§_-oE§.graphics.lineTo(param1[_loc3_].x + param1[_loc3_].w,param1[_loc3_].y + param1[_loc3_].h);
               _loc6_;
               _loc6_;
               this.§_-oE§.graphics.lineTo(param1[_loc3_].x + param1[_loc3_].w,param1[_loc3_].y);
               _loc7_;
               _loc7_;
               this.§_-oE§.graphics.lineTo(param1[_loc3_].x,param1[_loc3_].y);
               _loc6_;
               _loc3_++;
               _loc6_;
               _loc6_;
            }
         }
         this.§_-oE§.graphics.endFill();
         if(param2 != null)
         {
            _loc6_;
            _loc7_;
            _loc4_ = 0;
            while(_loc4_ < param2.length)
            {
               _loc5_ = new §_-Vc§();
               _loc5_.x = param2[_loc4_].x;
               _loc7_;
               _loc5_.y = param2[_loc4_].y;
               _loc6_;
               _loc5_.rotation = param2[_loc4_].r;
               _loc7_;
               this.§_-o§.addChild(_loc5_);
               _loc6_;
               _loc4_++;
            }
         }
         addEventListener(Event.ADDED_TO_STAGE,this.tweenOn,false,0,true);
      }
      
      private var §_-KZ§:Tween;
      
      private var §_-oE§:Sprite;
      
      private var §_-o§:Sprite;
      
      public function tweenOn(param1:Event) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         removeEventListener(Event.ADDED_TO_STAGE,this.tweenOn);
         _loc2_;
         this.§_-KZ§ = new Tween(this,"alpha",Strong.easeOut,0,1,1,true);
         _loc3_;
         _loc3_;
         this.§_-KZ§.start();
      }
   }
}
