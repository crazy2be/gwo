package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §_-HS§ extends Sprite
   {
      
      public function §_-HS§(param1:int, param2:int, param3:int)
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         super();
         _loc5_;
         _loc5_;
         this.§_-RP§ = param1;
         _loc5_;
         this.§_-l-§ = param2;
         _loc5_;
         _loc5_;
         this.§_-op§ = param3;
         _loc5_;
         this.§_-pI§();
      }
      
      public var §_-WN§:TextField;
      
      public var §_-cn§:TextField;
      
      public var §_-Ka§:TextField;
      
      public var §_-nf§:TextField;
      
      public var §_-gv§:TextField;
      
      public var §_-ks§:TextField;
      
      private var §_-RP§:int;
      
      private var §_-l-§:int;
      
      private var §_-op§:int;
      
      public function updatePlayers(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         _loc5_;
         this.§_-RP§ = param1;
         _loc4_;
         this.§_-l-§ = param2;
         _loc4_;
         this.§_-op§ = param3;
         _loc5_;
         this.§_-pI§();
      }
      
      private function §_-pI§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.§_-cn§.text = String(this.§_-RP§);
         this.§_-gv§.text = String(this.§_-RP§);
         _loc2_;
         _loc2_;
         this.§_-WN§.text = String(this.§_-l-§);
         this.§_-nf§.text = String(this.§_-l-§);
         _loc1_;
         _loc2_;
         _loc2_;
         if(this.§_-op§ == 1)
         {
            this.§_-Ka§.text = "2v2";
            this.§_-ks§.text = "2v2";
         }
         else
         {
            _loc2_;
            _loc2_;
            _loc2_;
            if(this.§_-l-§ == 4)
            {
               this.§_-Ka§.text = "1v1v1v1";
               this.§_-ks§.text = "1v1v1v1";
            }
            else
            {
               _loc1_;
               _loc1_;
               _loc1_;
               if(this.§_-l-§ == 3)
               {
                  this.§_-Ka§.text = "1v1v1";
                  this.§_-ks§.text = "1v1v1";
               }
               else if(this.§_-l-§ == 2)
               {
                  this.§_-Ka§.text = "1v1";
                  this.§_-ks§.text = "1v1";
               }
               
            }
         }
      }
   }
}
