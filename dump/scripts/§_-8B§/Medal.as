package §_-8B§
{
   import flash.display.BitmapData;
   import §_-cU§.§_-VX§;
   import flash.display.Sprite;
   import flash.display.DisplayObjectContainer;
   
   public class Medal extends §_-Et§
   {
      
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
      }
      
      public function Medal(param1:§_-Io§, param2:uint, param3:String, param4:String, param5:Boolean, param6:Boolean, param7:uint, param8:uint, param9:String)
      {
         var _loc10_:* = true;
         var _loc11_:* = false;
         super();
         _loc10_;
         _loc10_;
         this.§_-tv§ = param1;
         _loc11_;
         this.§_-C7§ = param2;
         _loc11_;
         _loc11_;
         this._name = param3;
         this.§_-Oa§ = param4;
         this.§_-Gd§ = param5;
         this.§_-PT§ = param6;
         this._value = param7;
         _loc11_;
         this.§_-92§ = §_-0-9§[param8];
         this.§_-EF§ = new §_-16§(§_-l0§,param9);
         _loc11_;
         this.§_-EF§.load();
      }
      
      public static const §_-ox§:uint = 50;
      
      public static const §_-rG§:uint = 50;
      
      public static const §_-hn§:String = "Easy";
      
      public static const §_-PE§:String = "Moderate";
      
      public static const §_-x7§:String = "Challenging";
      
      public static const §_-Wu§:String = "Difficult";
      
      public static const §_-Qj§:String = "Brutal";
      
      private static const §_-0-9§:Array = ["Unknown",§_-hn§,§_-PE§,§_-x7§,§_-Wu§,§_-Qj§];
      
      public static const §_-l0§:BitmapData = new §_-VX§(§_-ox§,§_-rG§);
      
      private var §_-tv§:§_-Io§;
      
      private var _name:String;
      
      private var §_-C7§:uint;
      
      private var §_-Oa§:String;
      
      private var §_-Gd§:Boolean;
      
      private var _value:uint;
      
      private var §_-PT§:Boolean;
      
      private var §_-92§:String;
      
      private var §_-EF§:§_-16§;
      
      public function get §_-97§() : String
      {
         return this.§_-92§;
      }
      
      public function get §_-mE§() : BitmapData
      {
         return this.§_-EF§.bitmapData;
      }
      
      public function get id() : uint
      {
         return this.§_-C7§;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get description() : String
      {
         return this.§_-Oa§;
      }
      
      public function get secret() : Boolean
      {
         return this.§_-Gd§;
      }
      
      public function get unlocked() : Boolean
      {
         return this.§_-PT§;
      }
      
      public function get value() : uint
      {
         return this._value;
      }
      
      override public function toString() : String
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         if(this.§_-PT§)
         {
            _loc2_;
            _loc2_;
            _loc1_;
         }
         else
         {
            _loc2_;
         }
         if(this.§_-PT§)
         {
            _loc1_;
            _loc1_;
            _loc2_;
            _loc2_;
            return "Medal: " + this._name + "\t\t(" + "unlocked, " + this._value + "pts, " + this.§_-92§ + ")";
         }
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         return "Medal: " + this._name + "\t\t(" + "locked, " + this._value + "pts, " + this.§_-92§ + ")";
      }
      
      public function §_-Jh§(param1:DisplayObjectContainer) : Sprite
      {
         return this.§_-EF§.§_-f9§(param1);
      }
      
      public function unlock() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc1_;
         if(this.§_-PT§)
         {
            _loc2_;
            _loc1_;
            _loc1_;
            §_-tz§.§_-pg§("Medal \"" + this._name + "\" is already unlocked.");
            return;
         }
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         §_-tz§.§_-Lq§("Unlocking medal \"" + this.name + "\"...");
         this.§_-PT§ = true;
         _loc2_;
         _loc1_;
         if(this.§_-tv§.§_-Pn§)
         {
            _loc1_;
            _loc1_;
            this.§_-tv§.§_-lu§("unlockMedal",this.§_-yq§,null,{"medal_id":this.id});
            _loc1_;
            _loc1_;
         }
         dispatchEvent(new §_-E6§(§_-E6§.§_-NU§,this));
      }
      
      function §_-cc§(param1:Boolean) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.§_-PT§ = param1;
      }
      
      private function §_-yq§(param1:§_-E6§) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(param1.success)
         {
            _loc3_;
            _loc2_;
            _loc2_;
            _loc2_;
            §_-tz§.§_-Lq§("Medal \"" + this.name + "\" unlocked.");
            _loc3_;
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc3_;
            §_-tz§.logError("Failed to unlock \"" + this.name + "\"!");
            _loc2_;
            _loc2_;
         }
         dispatchEvent(new §_-E6§(§_-E6§.§_-cH§,this,param1.error));
      }
   }
}
