package §_-Ff§
{
   public class §_-LC§ extends Object
   {
      
      public function §_-LC§(param1:int, param2:String, param3:String, param4:int, param5:int, param6:int, param7:int, param8:Boolean = false)
      {
         var _loc9_:* = false;
         var _loc10_:* = true;
         super();
         this.award_id = param1;
         this.award_name = param2;
         this.award_description = param3;
         this.stat_type = param4;
         this.award_criteria = param6;
         this.stat_id = param5;
         this.gravitons = param7;
         _loc10_;
         if(param4 == Global.STATTYPE_ONETIME)
         {
            this.§_-rw§ = Global.AWARD_ONEOFF;
            _loc10_;
         }
         this.hidden_description = param8;
      }
      
      public var award_id:int;
      
      public var award_name:String;
      
      public var award_description:String;
      
      public var award_criteria:int;
      
      public var hidden_description:Boolean = false;
      
      public var gravitons:int = 0;
      
      public var stat_type:int = -1;
      
      public var stat_id:int = -1;
      
      public var award_complete:int = 0;
      
      public var §_-rw§:int = 0;
      
      public var new_award:Boolean = false;
   }
}
