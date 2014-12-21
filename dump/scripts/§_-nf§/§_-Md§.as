package §_-nf§
{
   import flash.utils.describeType;
   
   public class §_-Md§ extends Object
   {
      
      public function §_-Md§(param1:*)
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         super();
         _loc2_;
         this.§_-H2§ = this.§_-AM§(param1);
      }
      
      private var §_-H2§:String;
      
      public function getString() : String
      {
         return this.§_-H2§;
      }
      
      private function §_-AM§(param1:*) : String
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         if(param1 is String)
         {
            _loc3_;
            return this.§_-wP§(param1 as String);
         }
         if(param1 is Number)
         {
            if(isFinite(param1 as Number))
            {
               _loc3_;
               _loc3_;
            }
            else
            {
               _loc2_;
            }
            if(isFinite(param1 as Number))
            {
               return param1.toString();
            }
            return "null";
         }
         if(param1 is Boolean)
         {
            _loc3_;
            _loc3_;
            if(param1)
            {
               _loc2_;
               _loc2_;
            }
            else
            {
               _loc2_;
               _loc2_;
            }
            if(param1)
            {
               return "true";
            }
            return "false";
         }
         if(param1 is Array)
         {
            _loc3_;
            return this.§_-u5§(param1 as Array);
         }
         _loc2_;
         _loc2_;
         if(param1 is Object && !(param1 == null))
         {
            return this.§_-Qz§(param1);
         }
         return "null";
      }
      
      private function §_-wP§(param1:String) : String
      {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc3_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc2_:* = "";
         var _loc4_:Number = param1.length;
         var _loc5_:* = 0;
         while(_loc5_ < _loc4_)
         {
            _loc10_;
            _loc10_;
            _loc10_;
            _loc3_ = param1.charAt(_loc5_);
            _loc10_;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc10_;
            switch(null)
            {
               case "\"":
                  _loc10_;
                  _loc10_;
                  _loc2_ = _loc2_ + "\\\"";
                  _loc10_;
                  _loc10_;
                  break;
               case "\\":
                  _loc2_ = _loc2_ + "\\\\";
                  break;
               case "\b":
                  _loc10_;
                  _loc2_ = _loc2_ + "\\b";
                  break;
               case "\f":
                  _loc2_ = _loc2_ + "\\f";
                  _loc9_;
                  break;
               case "\n":
                  _loc10_;
                  _loc2_ = _loc2_ + "\\n";
                  _loc10_;
                  break;
               case "\r":
                  _loc9_;
                  _loc9_;
                  _loc9_;
                  _loc9_;
                  _loc2_ = _loc2_ + "\\r";
                  break;
               case "\t":
                  _loc9_;
                  _loc9_;
                  _loc2_ = _loc2_ + "\\t";
                  break;
               default:
                  if(_loc3_ < " ")
                  {
                     _loc10_;
                     _loc10_;
                     _loc9_;
                     _loc9_;
                     _loc6_ = _loc3_.charCodeAt(0).toString(16);
                     if(_loc3_.charCodeAt(0).toString(16).length == 2)
                     {
                        _loc10_;
                     }
                     if(_loc3_.charCodeAt(0).toString(16).length == 2)
                     {
                        _loc7_ = "00";
                        _loc10_;
                        _loc10_;
                        _loc10_;
                        _loc10_;
                        _loc10_;
                        _loc10_;
                        _loc10_;
                        _loc9_;
                        _loc9_;
                        _loc2_ = _loc2_ + ("\\u" + _loc7_ + _loc6_);
                     }
                     else
                     {
                        _loc7_ = "000";
                        _loc10_;
                        _loc10_;
                        _loc10_;
                        _loc10_;
                        _loc10_;
                        _loc10_;
                        _loc10_;
                        _loc9_;
                        _loc9_;
                        _loc2_ = _loc2_ + ("\\u" + _loc7_ + _loc6_);
                     }
                  }
                  else
                  {
                     _loc9_;
                     _loc2_ = _loc2_ + _loc3_;
                  }
            }
            _loc5_++;
         }
         return "\"" + _loc2_ + "\"";
      }
      
      private function §_-u5§(param1:Array) : String
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:* = "";
         var _loc3_:* = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_;
            if(_loc2_.length > 0)
            {
               _loc4_;
               _loc5_;
               _loc5_;
               _loc2_ = _loc2_ + ",";
               _loc5_;
               _loc5_;
            }
            _loc4_;
            _loc2_ = _loc2_ + this.§_-AM§(param1[_loc3_]);
            _loc5_;
            _loc3_++;
            _loc5_;
         }
         _loc4_;
         _loc4_;
         _loc4_;
         return "[" + _loc2_ + "]";
      }
      
      private function §_-Qz§(param1:Object) : String
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfucation" for better results.
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
