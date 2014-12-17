package §_-D3§
{
   import flash.utils.describeType;
   
   public class §_-OM§ extends Object
   {
      
      public function §_-OM§(param1:*)
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         super();
         _loc3_;
         this.§_-BM§ = this.§_-OO§(param1);
      }
      
      private var §_-BM§:String;
      
      public function getString() : String
      {
         return this.§_-BM§;
      }
      
      private function §_-OO§(param1:*) : String
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         if(param1 is String)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            return this.§_-SI§(param1 as String);
         }
         _loc3_;
         _loc3_;
         if(param1 is Number)
         {
            _loc2_;
            _loc2_;
            if(isFinite(param1 as Number))
            {
               _loc2_;
               _loc2_;
            }
            else
            {
               _loc3_;
               _loc3_;
            }
            if(isFinite(param1 as Number))
            {
               return param1.toString();
            }
            return "null";
         }
         if(param1 is Boolean)
         {
            if(param1)
            {
               _loc2_;
               _loc3_;
               _loc3_;
            }
            else
            {
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
            _loc2_;
            _loc2_;
            return this.§_-jo§(param1 as Array);
         }
         _loc3_;
         _loc3_;
         if(param1 is Object && !(param1 == null))
         {
            return this.§_-Aw§(param1);
         }
         return "null";
      }
      
      private function §_-SI§(param1:String) : String
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc3_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc2_:* = "";
         var _loc4_:Number = param1.length;
         var _loc5_:* = 0;
         while(_loc5_ < _loc4_)
         {
            _loc9_;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc3_ = param1.charAt(_loc5_);
            _loc10_;
            switch(null)
            {
               case "\"":
                  _loc9_;
                  _loc9_;
                  _loc2_ = _loc2_ + "\\\"";
                  break;
               case "\\":
                  _loc9_;
                  _loc10_;
                  _loc10_;
                  _loc2_ = _loc2_ + "\\\\";
                  break;
               case "\b":
                  _loc10_;
                  _loc2_ = _loc2_ + "\\b";
                  _loc9_;
                  _loc9_;
                  break;
               case "\f":
                  _loc9_;
                  _loc10_;
                  _loc10_;
                  _loc2_ = _loc2_ + "\\f";
                  break;
               case "\n":
                  _loc10_;
                  _loc2_ = _loc2_ + "\\n";
                  break;
               case "\r":
                  _loc10_;
                  _loc10_;
                  _loc2_ = _loc2_ + "\\r";
                  _loc9_;
                  _loc9_;
                  break;
               case "\t":
                  _loc9_;
                  _loc2_ = _loc2_ + "\\t";
                  _loc10_;
                  _loc10_;
                  break;
               default:
                  if(_loc3_ < " ")
                  {
                     _loc10_;
                     _loc10_;
                     _loc10_;
                     _loc6_ = _loc3_.charCodeAt(0).toString(16);
                     if(_loc3_.charCodeAt(0).toString(16).length == 2)
                     {
                        _loc10_;
                        _loc10_;
                     }
                     else
                     {
                        _loc9_;
                     }
                     if(_loc3_.charCodeAt(0).toString(16).length == 2)
                     {
                        _loc9_;
                        _loc7_ = "00";
                        _loc10_;
                        _loc10_;
                        _loc10_;
                        _loc10_;
                        _loc2_ = _loc2_ + ("\\u" + _loc7_ + _loc6_);
                     }
                     else
                     {
                        _loc9_;
                        _loc7_ = "000";
                        _loc10_;
                        _loc10_;
                        _loc10_;
                        _loc10_;
                        _loc2_ = _loc2_ + ("\\u" + _loc7_ + _loc6_);
                     }
                  }
                  else
                  {
                     _loc10_;
                     _loc10_;
                     _loc2_ = _loc2_ + _loc3_;
                  }
            }
            _loc5_++;
         }
         _loc10_;
         return "\"" + _loc2_ + "\"";
      }
      
      private function §_-jo§(param1:Array) : String
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
               _loc5_;
               _loc4_;
               _loc4_;
               _loc5_;
               _loc5_;
               _loc2_ = _loc2_ + ",";
               _loc4_;
               _loc4_;
            }
            _loc4_;
            _loc4_;
            _loc2_ = _loc2_ + this.§_-OO§(param1[_loc3_]);
            _loc4_;
            _loc3_++;
            _loc4_;
            _loc4_;
         }
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         return "[" + _loc2_ + "]";
      }
      
      private function §_-Aw§(param1:Object) : String
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
