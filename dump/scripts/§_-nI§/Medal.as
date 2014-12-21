package §_-nI§
{
   import flash.display.BitmapData;
   import §_-xH§.§_-UR§;
   import flash.display.Sprite;
   import flash.display.DisplayObjectContainer;
   
   public class Medal extends §_-kM§
   {
      
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
      }
      
      public function Medal(param1:§_-J7§, param2:uint, param3:String, param4:String, param5:Boolean, param6:Boolean, param7:uint, param8:uint, param9:String)
      {
         var _loc10_:* = true;
         var _loc11_:* = false;
         _loc11_;
         _loc11_;
         super();
         _loc11_;
         this.§_-KT§ = param1;
         _loc10_;
         _loc10_;
         this.§_-Ee§ = param2;
         _loc11_;
         _loc11_;
         this._name = param3;
         this.§_-IO§ = param4;
         this.§_-Wo§ = param5;
         this.§_-nX§ = param6;
         _loc11_;
         _loc11_;
         this._value = param7;
         this.§_-GW§ = §_-VC§[param8];
         this.§_-T6§ = new §_-6s§(§_-Op§,param9);
         _loc11_;
         _loc11_;
         this.§_-T6§.load();
      }
      
      public static const §_-jY§:uint = 50;
      
      public static const §_-xY§:uint = 50;
      
      public static const §_-KU§:String = "Easy";
      
      public static const §_-Of§:String = "Moderate";
      
      public static const §_-R0§:String = "Challenging";
      
      public static const §_-zV§:String = "Difficult";
      
      public static const §_-fy§:String = "Brutal";
      
      private static const §_-VC§:Array = ["Unknown",§_-KU§,§_-Of§,§_-R0§,§_-zV§,§_-fy§];
      
      public static const §_-Op§:BitmapData = new §_-UR§(§_-jY§,§_-xY§);
      
      private var §_-KT§:§_-J7§;
      
      private var _name:String;
      
      private var §_-Ee§:uint;
      
      private var §_-IO§:String;
      
      private var §_-Wo§:Boolean;
      
      private var _value:uint;
      
      private var §_-nX§:Boolean;
      
      private var §_-GW§:String;
      
      private var §_-T6§:§_-6s§;
      
      public function get §_-Bs§() : String
      {
         return this.§_-GW§;
      }
      
      public function get §_-jK§() : BitmapData
      {
         return this.§_-T6§.bitmapData;
      }
      
      public function get id() : uint
      {
         return this.§_-Ee§;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get description() : String
      {
         return this.§_-IO§;
      }
      
      public function get secret() : Boolean
      {
         return this.§_-Wo§;
      }
      
      public function get unlocked() : Boolean
      {
         return this.§_-nX§;
      }
      
      public function get value() : uint
      {
         return this._value;
      }
      
      override public function toString() : String
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         if(this.§_-nX§)
         {
            _loc1_;
         }
         else
         {
            _loc1_;
         }
         if(this.§_-nX§)
         {
            _loc2_;
            _loc2_;
            _loc1_;
            _loc1_;
            _loc1_;
            return "Medal: " + this._name + "\t\t(" + "unlocked, " + this._value + "pts, " + this.§_-GW§ + ")";
         }
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         return "Medal: " + this._name + "\t\t(" + "locked, " + this._value + "pts, " + this.§_-GW§ + ")";
      }
      
      public function §_-cs§(param1:DisplayObjectContainer) : Sprite
      {
         return this.§_-T6§.§_-OM§(param1);
      }
      
      public function unlock() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         if(this.§_-nX§)
         {
            _loc1_;
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            §_-NZ§.§_-Q7§("Medal \"" + this._name + "\" is already unlocked.");
            return;
         }
         _loc1_;
         _loc2_;
         _loc2_;
         §_-NZ§.§_-Bv§("Unlocking medal \"" + this.name + "\"...");
         this.§_-nX§ = true;
         _loc1_;
         if(this.§_-KT§.§var §)
         {
            _loc2_;
            this.§_-KT§.§_-PX§("unlockMedal",this.§_-YV§,null,{"medal_id":this.id});
         }
         dispatchEvent(new §_-6O§(§_-6O§.§_-7f§,this));
      }
      
      function §_-eA§(param1:Boolean) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-nX§ = param1;
      }
      
      private function §_-YV§(param1:§_-6O§) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         if(param1.success)
         {
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            _loc3_;
            §_-NZ§.§_-Bv§("Medal \"" + this.name + "\" unlocked.");
            _loc2_;
            _loc2_;
         }
         else
         {
            _loc2_;
            _loc2_;
            §_-NZ§.logError("Failed to unlock \"" + this.name + "\"!");
            _loc3_;
         }
         dispatchEvent(new §_-6O§(§_-6O§.§_-JE§,this,param1.error));
      }
   }
}
