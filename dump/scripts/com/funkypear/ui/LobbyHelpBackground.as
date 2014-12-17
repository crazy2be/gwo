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
         var _loc5_:§_-3b§ = null;
         _loc7_;
         super();
         _loc6_;
         _loc6_;
         alpha = 0;
         _loc7_;
         this.§_-8W§ = new Sprite();
         this.§_-o8§ = new Sprite();
         addChild(this.§_-8W§);
         _loc7_;
         addChild(this.§_-o8§);
         this.§_-8W§.graphics.clear();
         this.§_-8W§.graphics.beginFill(0,0.5);
         this.§_-8W§.graphics.drawRect(0,0,800,600);
         if(param1 != null)
         {
            _loc3_ = 0;
            while(true)
            {
               _loc6_;
               _loc6_;
               _loc7_;
               if(_loc3_ >= param1.length)
               {
                  break;
               }
               this.§_-8W§.graphics.moveTo(param1[_loc3_].x,param1[_loc3_].y);
               _loc7_;
               this.§_-8W§.graphics.lineTo(param1[_loc3_].x,param1[_loc3_].y + param1[_loc3_].h);
               this.§_-8W§.graphics.lineTo(param1[_loc3_].x + param1[_loc3_].w,param1[_loc3_].y + param1[_loc3_].h);
               _loc6_;
               this.§_-8W§.graphics.lineTo(param1[_loc3_].x + param1[_loc3_].w,param1[_loc3_].y);
               this.§_-8W§.graphics.lineTo(param1[_loc3_].x,param1[_loc3_].y);
               _loc7_;
               _loc3_++;
               _loc6_;
               _loc6_;
            }
         }
         this.§_-8W§.graphics.endFill();
         _loc6_;
         _loc6_;
         if(param2 != null)
         {
            _loc7_;
            _loc4_ = 0;
            while(_loc4_ < param2.length)
            {
               _loc5_ = new §_-3b§();
               _loc5_.x = param2[_loc4_].x;
               _loc6_;
               _loc6_;
               _loc5_.y = param2[_loc4_].y;
               _loc7_;
               _loc7_;
               _loc5_.rotation = param2[_loc4_].r;
               _loc7_;
               this.§_-o8§.addChild(_loc5_);
               _loc6_;
               _loc4_++;
            }
         }
         addEventListener(Event.ADDED_TO_STAGE,this.tweenOn,false,0,true);
      }
      
      private var §_-Gy§:Tween;
      
      private var §_-8W§:Sprite;
      
      private var §_-o8§:Sprite;
      
      public function tweenOn(param1:Event) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         removeEventListener(Event.ADDED_TO_STAGE,this.tweenOn);
         _loc3_;
         this.§_-Gy§ = new Tween(this,"alpha",Strong.easeOut,0,1,1,true);
         _loc2_;
         _loc2_;
         this.§_-Gy§.start();
      }
   }
}
