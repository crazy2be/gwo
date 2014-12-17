package §_-8B§
{
   public class §_-lW§ extends Object
   {
      
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc1_;
      }
      
      public function §_-lW§(param1:String, param2:uint, param3:uint)
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         super();
         _loc5_;
         this._name = param1;
         _loc4_;
         _loc4_;
         this.§_-C7§ = param2;
         _loc4_;
         this._type = param3;
      }
      
      public static const §_-0-4§:uint = 1;
      
      public static const §_-hO§:uint = 2;
      
      public static const §_-z8§:uint = 3;
      
      public static const §_-oG§:uint = 4;
      
      private var _name:String;
      
      private var §_-C7§:uint;
      
      private var _type:uint;
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get id() : uint
      {
         return this.§_-C7§;
      }
      
      public function get type() : uint
      {
         return this._type;
      }
      
      public function §_-d7§(param1:*) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:* = 0;
         _loc5_;
         _loc5_;
         _loc4_;
         _loc5_;
         if(§_-hO§ === _loc3_)
         {
            _loc4_;
            _loc4_;
         }
         else
         {
            _loc4_;
            _loc4_;
            _loc5_;
            if(§_-0-4§ === _loc3_)
            {
               _loc4_;
               _loc5_;
            }
            else
            {
               _loc4_;
               _loc5_;
               _loc5_;
               if(§_-oG§ === _loc3_)
               {
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
               }
               else
               {
                  switch(null)
                  {
                     case §_-z8§:
                        var param1:* = Number(param1);
                        _loc5_;
                        _loc5_;
                        if(!isNaN(param1))
                        {
                           _loc5_;
                           _loc5_;
                           _loc5_;
                           _loc2_ = int(param1);
                           _loc4_;
                           _loc4_;
                           _loc5_;
                           _loc5_;
                           if(_loc2_ != param1)
                           {
                              _loc4_;
                              _loc4_;
                              _loc4_;
                              _loc4_;
                              _loc4_;
                              §_-tz§.§_-pg§("Float value " + param1 + " given for integer key \"" + this._name + "\". Clamping to " + _loc2_ + ".");
                              _loc5_;
                           }
                           return _loc2_;
                        }
                        break;
                  }
                  return null;
               }
               if(§_-oG§ === _loc3_)
               {
               }
            }
            if(§_-0-4§ === _loc3_)
            {
            }
         }
         if(§_-hO§ === _loc3_)
         {
         }
      }
      
      public function toString() : String
      {
         return this._name;
      }
   }
}
