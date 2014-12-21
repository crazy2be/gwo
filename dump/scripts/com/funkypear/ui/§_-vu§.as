package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §_-vu§ extends Sprite
   {
      
      public function §_-vu§(param1:int, param2:int, param3:int)
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         super();
         _loc5_;
         _loc5_;
         this.§_-hx§ = param1;
         _loc5_;
         this.§_-aY§ = param2;
         _loc5_;
         this.§_-Ga§ = param3;
         _loc4_;
         _loc4_;
         this.§_-R1§();
      }
      
      public var §_-yE§:TextField;
      
      public var §_-GE§:TextField;
      
      public var §_-HD§:TextField;
      
      public var §_-Kr§:TextField;
      
      public var §_-yV§:TextField;
      
      public var §_-wQ§:TextField;
      
      private var §_-hx§:int;
      
      private var §_-aY§:int;
      
      private var §_-Ga§:int;
      
      public function updatePlayers(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         this.§_-hx§ = param1;
         _loc5_;
         this.§_-aY§ = param2;
         _loc5_;
         this.§_-Ga§ = param3;
         _loc5_;
         _loc5_;
         this.§_-R1§();
      }
      
      private function §_-R1§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-GE§.text = String(this.§_-hx§);
         this.§_-yV§.text = String(this.§_-hx§);
         this.§_-yE§.text = String(this.§_-aY§);
         _loc2_;
         this.§_-Kr§.text = String(this.§_-aY§);
         _loc2_;
         _loc1_;
         if(this.§_-Ga§ == 1)
         {
            _loc1_;
            this.§_-HD§.text = "2v2";
            this.§_-wQ§.text = "2v2";
            _loc1_;
         }
         else
         {
            _loc2_;
            _loc1_;
            if(this.§_-aY§ == 4)
            {
               _loc1_;
               this.§_-HD§.text = "1v1v1v1";
               _loc1_;
               _loc1_;
               this.§_-wQ§.text = "1v1v1v1";
            }
            else
            {
               _loc2_;
               _loc2_;
               _loc2_;
               if(this.§_-aY§ == 3)
               {
                  this.§_-HD§.text = "1v1v1";
                  _loc2_;
                  this.§_-wQ§.text = "1v1v1";
                  _loc2_;
               }
               else if(this.§_-aY§ == 2)
               {
                  this.§_-HD§.text = "1v1";
                  this.§_-wQ§.text = "1v1";
               }
               
            }
         }
      }
   }
}
