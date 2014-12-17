package com.funkypear.ui
{
   import flash.text.TextField;
   
   public class §_-Dp§ extends §_-Sf§
   {
      
      public function §_-Dp§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         super();
      }
      
      public var §_-Mc§:TextField;
      
      public var §_-Aa§:TextField;
      
      public var main_text:TextField;
      
      public var §_-EV§:TextField;
      
      public var shadow_text:TextField;
      
      public var §_-FC§:TextField;
      
      override public function setMainText(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.main_text.text = param1;
         _loc2_;
         this.shadow_text.text = param1;
      }
      
      override public function setLimitText(param1:String) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:String = null;
         _loc4_;
         if(param1 == "-1")
         {
            this.§_-Aa§.text = "";
            this.§_-EV§.text = "";
            _loc4_;
            _loc4_;
         }
         else
         {
            _loc4_;
            _loc4_;
            _loc2_ = "LEVELS ";
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            if(param1 == "0")
            {
               _loc3_;
               _loc3_;
               _loc3_;
               _loc2_ = _loc2_ + "1-9 ONLY";
               _loc3_;
            }
            else
            {
               _loc4_;
               _loc2_ = _loc2_ + param1;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc2_ = _loc2_ + "0-";
               _loc4_;
               _loc4_;
               _loc2_ = _loc2_ + param1;
               _loc2_ = _loc2_ + "9 ONLY";
            }
            this.§_-Aa§.text = _loc2_;
            _loc4_;
            this.§_-EV§.text = _loc2_;
         }
      }
      
      override public function setMissionText(param1:int, param2:int) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = "MISSION ";
         _loc5_;
         _loc5_;
         _loc5_;
         _loc3_ = _loc3_ + String(param1 + 1);
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc3_ = _loc3_ + ".";
         _loc5_;
         _loc4_;
         _loc4_;
         _loc3_ = _loc3_ + String(param2 + 1);
         _loc5_;
         this.§_-Mc§.text = _loc3_;
         _loc4_;
         _loc4_;
         this.§_-FC§.text = _loc3_;
      }
      
      override public function setCreatorText(param1:String, param2:Boolean = false) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:String = null;
         _loc5_;
         if(param2)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            _loc3_ = "MAP BY ";
            _loc6_;
            _loc6_;
         }
         else
         {
            _loc3_ = "BY ";
         }
         _loc5_;
         _loc5_;
         var _loc4_:String = param1.slice(0,6);
         _loc6_;
         _loc6_;
         if(_loc4_ == "simple")
         {
            _loc5_;
            _loc5_;
            _loc6_;
            _loc3_ = _loc3_ + param1.slice(6);
            _loc5_;
         }
         else
         {
            _loc5_;
            _loc5_;
            _loc3_ = _loc3_ + param1;
         }
         if(param2)
         {
            _loc5_;
            _loc5_;
            this.§_-Mc§.text = _loc3_;
            _loc5_;
            _loc5_;
            this.§_-FC§.text = _loc3_;
            _loc5_;
            _loc5_;
         }
         else
         {
            this.main_text.text = _loc3_;
            this.shadow_text.text = _loc3_;
         }
      }
   }
}
