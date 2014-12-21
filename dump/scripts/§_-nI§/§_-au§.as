package §_-nI§
{
   public class §_-au§ extends Object
   {
      
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
      }
      
      public function §_-au§(param1:String, param2:uint, param3:uint)
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         _loc5_;
         super();
         _loc4_;
         _loc4_;
         this._name = param1;
         _loc5_;
         _loc5_;
         this.§_-Ee§ = param2;
         _loc4_;
         this._type = param3;
      }
      
      public static const §_-vr§:uint = 1;
      
      public static const §_-1P§:uint = 2;
      
      public static const §_-ju§:uint = 3;
      
      public static const §_-cY§:uint = 4;
      
      private var _name:String;
      
      private var §_-Ee§:uint;
      
      private var _type:uint;
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get id() : uint
      {
         return this.§_-Ee§;
      }
      
      public function get type() : uint
      {
         return this._type;
      }
      
      public function §_-M5§(param1:*) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:* = 0;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(§_-1P§ === _loc3_)
         {
            _loc4_;
            _loc4_;
            _loc5_;
         }
         else
         {
            _loc5_;
            _loc5_;
            if(§_-vr§ === _loc3_)
            {
               _loc4_;
               _loc5_;
               _loc5_;
            }
            else
            {
               _loc4_;
               _loc4_;
               _loc4_;
               if(§_-cY§ === _loc3_)
               {
                  _loc4_;
                  _loc4_;
                  _loc5_;
               }
               else
               {
                  switch(null)
                  {
                     case §_-ju§:
                        var param1:* = Number(param1);
                        _loc5_;
                        _loc5_;
                        if(!isNaN(param1))
                        {
                           _loc4_;
                           _loc4_;
                           _loc5_;
                           _loc2_ = int(param1);
                           _loc4_;
                           _loc4_;
                           _loc4_;
                           if(_loc2_ != param1)
                           {
                              _loc4_;
                              _loc4_;
                              _loc5_;
                              _loc5_;
                              _loc5_;
                              _loc5_;
                              _loc5_;
                              _loc4_;
                              §_-NZ§.§_-Q7§("Float value " + param1 + " given for integer key \"" + this._name + "\". Clamping to " + _loc2_ + ".");
                              _loc5_;
                              _loc5_;
                           }
                           return _loc2_;
                        }
                        break;
                  }
                  return null;
               }
               if(§_-cY§ === _loc3_)
               {
               }
            }
            if(§_-vr§ === _loc3_)
            {
            }
         }
         if(§_-1P§ === _loc3_)
         {
         }
      }
      
      public function toString() : String
      {
         return this._name;
      }
   }
}
