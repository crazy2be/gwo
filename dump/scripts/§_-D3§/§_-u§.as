package §_-D3§
{
   public class §_-u§ extends Object
   {
      
      public function §_-u§(param1:String, param2:Boolean)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.§_-Bc§ = new RegExp("[\\x00-\\x1F]");
         super();
         this.§_-BM§ = param1;
         _loc4_;
         _loc4_;
         this.§_-5A§ = param2;
         this.loc = 0;
         this.§_-yC§();
      }
      
      private var §_-5A§:Boolean;
      
      private var obj:Object;
      
      private var §_-BM§:String;
      
      private var loc:int;
      
      private var ch:String;
      
      private var §_-Bc§:RegExp;
      
      public function §_-Zr§() : §_-aj§
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§_-aj§ = new §_-aj§();
         _loc7_;
         _loc7_;
         this.§_-kM§();
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         if("{" === _loc6_)
         {
            _loc8_;
            _loc7_;
            _loc7_;
         }
         else
         {
            if("}" === _loc6_)
            {
               _loc7_;
               _loc7_;
               _loc7_;
               _loc7_;
            }
            else
            {
               if("[" === _loc6_)
               {
                  _loc8_;
               }
               else
               {
                  _loc7_;
                  _loc7_;
                  switch(null)
                  {
                     case "]":
                        _loc1_.type = §_-kx§.§_-yp§;
                        _loc1_.value = "{";
                        this.§_-yC§();
                        break;
                     case ",":
                        _loc1_.type = §_-kx§.§_-L-§;
                        _loc8_;
                        _loc1_.value = "}";
                        _loc7_;
                        this.§_-yC§();
                        break;
                     case ":":
                        _loc1_.type = §_-kx§.§_-g6§;
                        _loc7_;
                        _loc7_;
                        _loc1_.value = "[";
                        _loc7_;
                        _loc7_;
                        this.§_-yC§();
                        break;
                     case "t":
                        _loc1_.type = §_-kx§.§_-ka§;
                        _loc8_;
                        _loc1_.value = "]";
                        this.§_-yC§();
                        break;
                     case "f":
                        _loc1_.type = §_-kx§.§_-2N§;
                        _loc8_;
                        _loc1_.value = ",";
                        this.§_-yC§();
                        _loc7_;
                        _loc7_;
                        break;
                     case "n":
                        _loc1_.type = §_-kx§.§_-cp§;
                        _loc8_;
                        _loc8_;
                        _loc1_.value = ":";
                        this.§_-yC§();
                        break;
                     case "N":
                        _loc7_;
                        _loc7_;
                        _loc7_;
                        _loc7_;
                        _loc7_;
                        _loc7_;
                        _loc7_;
                        _loc7_;
                        _loc8_;
                        _loc2_ = "t" + this.§_-yC§() + this.§_-yC§() + this.§_-yC§();
                        _loc7_;
                        _loc8_;
                        _loc8_;
                        if(_loc2_ == "true")
                        {
                           _loc1_.type = §_-kx§.§_-DC§;
                           _loc1_.value = true;
                           this.§_-yC§();
                        }
                        else
                        {
                           _loc7_;
                           _loc7_;
                           this.§_-XM§("Expecting \'true\' but found " + _loc2_);
                        }
                        break;
                     case "\"":
                        _loc8_;
                        _loc8_;
                        _loc7_;
                        _loc7_;
                        _loc7_;
                        _loc7_;
                        _loc7_;
                        _loc3_ = "f" + this.§_-yC§() + this.§_-yC§() + this.§_-yC§() + this.§_-yC§();
                        _loc7_;
                        _loc7_;
                        if(_loc3_ == "false")
                        {
                           _loc1_.type = §_-kx§.§_-C-§;
                           _loc1_.value = false;
                           this.§_-yC§();
                           _loc7_;
                        }
                        else
                        {
                           _loc8_;
                           this.§_-XM§("Expecting \'false\' but found " + _loc3_);
                        }
                        break;
                     default:
                        _loc7_;
                        _loc7_;
                        _loc7_;
                        if((this.§_-DF§(this.ch)) || this.ch == "-")
                        {
                           _loc8_;
                           _loc8_;
                           _loc1_ = this.§finally§();
                        }
                        else
                        {
                           if(this.ch == "")
                           {
                              _loc7_;
                              _loc7_;
                              return null;
                           }
                           _loc8_;
                           _loc8_;
                           _loc8_;
                           _loc8_;
                           this.§_-XM§("Unexpected " + this.ch + " encountered");
                        }
                  }
                  return _loc1_;
               }
               if("[" === _loc6_)
               {
               }
            }
            if("}" === _loc6_)
            {
            }
         }
         if("{" === _loc6_)
         {
         }
      }
      
      private function §_-Gw§() : §_-aj§
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         _loc6_;
         _loc6_;
         var _loc1_:int = this.loc;
         while(true)
         {
            _loc6_;
            _loc1_ = this.§_-BM§.indexOf("\"",_loc1_);
            _loc6_;
            if(_loc1_ >= 0)
            {
               _loc5_;
               _loc3_ = 0;
               _loc5_;
               _loc6_;
               _loc6_;
               _loc4_ = _loc1_ - 1;
               _loc5_;
               while(this.§_-BM§.charAt(_loc4_) == "\\")
               {
                  _loc3_++;
                  _loc5_;
                  _loc6_;
                  _loc6_;
                  _loc4_--;
                  _loc6_;
                  _loc6_;
               }
               if(_loc3_ % 2 == 0)
               {
                  break;
               }
               _loc1_++;
               _loc5_;
            }
            else
            {
               this.§_-XM§("Unterminated string literal");
            }
         }
         var _loc2_:§_-aj§ = new §_-aj§();
         _loc6_;
         _loc2_.type = §_-kx§.§_-Qz§;
         _loc6_;
         _loc6_;
         _loc2_.value = this.§_-7x§(this.§_-BM§.substr(this.loc,_loc1_ - this.loc));
         _loc6_;
         _loc6_;
         this.loc = _loc1_ + 1;
         _loc5_;
         this.§_-yC§();
         return _loc2_;
      }
      
      public function §_-7x§(param1:String) : String
      {
         var _loc12_:* = false;
         var _loc13_:* = true;
         var _loc6_:* = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:* = 0;
         var _loc10_:String = null;
         _loc13_;
         _loc13_;
         _loc12_;
         _loc13_;
         _loc13_;
         if((this.§_-5A§) && (this.§_-Bc§.test(param1)))
         {
            _loc13_;
            _loc13_;
            this.§_-XM§("String contains unescaped control character (0x00-0x1F)");
         }
         var _loc2_:* = "";
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:int = param1.length;
         while(true)
         {
            _loc13_;
            _loc13_;
            _loc3_ = param1.indexOf("\\",_loc4_);
            _loc13_;
            if(_loc3_ >= 0)
            {
               _loc13_;
               _loc13_;
               _loc13_;
               _loc13_;
               _loc12_;
               _loc12_;
               _loc2_ = _loc2_ + param1.substr(_loc4_,_loc3_ - _loc4_);
               _loc12_;
               _loc12_;
               _loc4_ = _loc3_ + 2;
               _loc12_;
               _loc12_;
               _loc6_ = _loc3_ + 1;
               _loc13_;
               _loc13_;
               _loc12_;
               _loc12_;
               _loc7_ = param1.charAt(_loc6_);
               _loc12_;
               _loc12_;
               _loc13_;
               _loc13_;
               _loc12_;
               _loc13_;
               _loc13_;
               switch(null)
               {
                  case "\"":
                     _loc12_;
                     _loc12_;
                     _loc2_ = _loc2_ + "\"";
                     _loc12_;
                     break;
                  case "\\":
                     _loc12_;
                     _loc12_;
                     _loc12_;
                     _loc2_ = _loc2_ + "\\";
                     break;
                  case "n":
                     _loc12_;
                     _loc12_;
                     _loc13_;
                     _loc2_ = _loc2_ + "\n";
                     break;
                  case "r":
                     _loc2_ = _loc2_ + "\r";
                     break;
                  case "t":
                     _loc12_;
                     _loc12_;
                     _loc2_ = _loc2_ + "\t";
                     break;
                  case "u":
                     _loc13_;
                     _loc8_ = "";
                     _loc13_;
                     _loc13_;
                     if(_loc4_ + 4 > _loc5_)
                     {
                        this.§_-XM§("Unexpected end of input.  Expecting 4 hex digits after \\u.");
                        _loc13_;
                        _loc13_;
                     }
                     _loc13_;
                     _loc9_ = _loc4_;
                     _loc12_;
                     _loc12_;
                     while(true)
                     {
                        _loc13_;
                        if(_loc9_ >= _loc4_ + 4)
                        {
                           break;
                        }
                        _loc10_ = param1.charAt(_loc9_);
                        if(!this.§_-Em§(_loc10_))
                        {
                           _loc13_;
                           this.§_-XM§("Excepted a hex digit, but found: " + _loc10_);
                           _loc13_;
                           _loc13_;
                        }
                        _loc12_;
                        _loc12_;
                        _loc13_;
                        _loc8_ = _loc8_ + _loc10_;
                        _loc9_++;
                     }
                     _loc13_;
                     _loc13_;
                     _loc2_ = _loc2_ + String.fromCharCode(parseInt(_loc8_,16));
                     _loc12_;
                     _loc12_;
                     _loc13_;
                     _loc13_;
                     _loc13_;
                     _loc13_;
                     _loc4_ = _loc4_ + 4;
                     break;
                  case "f":
                     _loc12_;
                     _loc12_;
                     _loc2_ = _loc2_ + "\f";
                     break;
                  case "/":
                     _loc13_;
                     _loc12_;
                     _loc12_;
                     _loc2_ = _loc2_ + "/";
                     break;
                  case "b":
                     _loc13_;
                     _loc13_;
                     _loc2_ = _loc2_ + "\b";
                     _loc13_;
                     break;
                  default:
                     _loc13_;
                     _loc13_;
                     _loc12_;
                     _loc2_ = _loc2_ + ("\\" + _loc7_);
               }
               if(_loc4_ >= _loc5_)
               {
                  break;
               }
               continue;
            }
            _loc2_ = _loc2_ + param1.substr(_loc4_);
            _loc13_;
            break;
         }
         return _loc2_;
      }
      
      private function §finally§() : §_-aj§
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:§_-aj§ = null;
         var _loc1_:* = "";
         _loc5_;
         if(this.ch == "-")
         {
            _loc4_;
            _loc1_ = _loc1_ + "-";
            this.§_-yC§();
            _loc4_;
         }
         _loc4_;
         if(!this.§_-DF§(this.ch))
         {
            _loc5_;
            _loc5_;
            this.§_-XM§("Expecting a digit");
            _loc4_;
            _loc4_;
         }
         _loc5_;
         _loc5_;
         if(this.ch == "0")
         {
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc1_ = _loc1_ + this.ch;
            this.§_-yC§();
            if(this.§_-DF§(this.ch))
            {
               _loc4_;
               _loc4_;
               this.§_-XM§("A digit cannot immediately follow 0");
            }
            else
            {
               _loc4_;
               if(!this.§_-5A§ && this.ch == "x")
               {
                  _loc4_;
                  _loc4_;
                  _loc5_;
                  _loc5_;
                  _loc1_ = _loc1_ + this.ch;
                  _loc4_;
                  this.§_-yC§();
                  if(this.§_-Em§(this.ch))
                  {
                     _loc4_;
                     _loc5_;
                     _loc5_;
                     _loc1_ = _loc1_ + this.ch;
                     this.§_-yC§();
                  }
                  else
                  {
                     this.§_-XM§("Number in hex format require at least one hex digit after \"0x\"");
                  }
                  while(this.§_-Em§(this.ch))
                  {
                     _loc5_;
                     _loc5_;
                     _loc4_;
                     _loc1_ = _loc1_ + this.ch;
                     this.§_-yC§();
                  }
               }
            }
         }
         else
         {
            while(true)
            {
               _loc5_;
               _loc5_;
               if(!this.§_-DF§(this.ch))
               {
                  break;
               }
               _loc4_;
               _loc4_;
               _loc4_;
               _loc1_ = _loc1_ + this.ch;
               _loc5_;
               this.§_-yC§();
               _loc4_;
            }
            _loc5_;
         }
         if(this.ch == ".")
         {
            _loc5_;
            _loc5_;
            _loc4_;
            _loc1_ = _loc1_ + ".";
            _loc4_;
            this.§_-yC§();
            _loc4_;
            _loc4_;
            if(!this.§_-DF§(this.ch))
            {
               this.§_-XM§("Expecting a digit");
            }
            while(true)
            {
               _loc4_;
               if(!this.§_-DF§(this.ch))
               {
                  break;
               }
               _loc5_;
               _loc5_;
               _loc5_;
               _loc1_ = _loc1_ + this.ch;
               this.§_-yC§();
            }
         }
         _loc5_;
         _loc5_;
         if(this.ch == "e" || this.ch == "E")
         {
            _loc5_;
            _loc1_ = _loc1_ + "e";
            this.§_-yC§();
            if(this.ch == "+" || this.ch == "-")
            {
               _loc5_;
               _loc5_;
               _loc5_;
               _loc4_;
               _loc4_;
               _loc1_ = _loc1_ + this.ch;
               _loc4_;
               _loc4_;
               this.§_-yC§();
            }
            if(!this.§_-DF§(this.ch))
            {
               this.§_-XM§("Scientific notation number needs exponent value");
               _loc4_;
            }
            while(this.§_-DF§(this.ch))
            {
               _loc1_ = _loc1_ + this.ch;
               this.§_-yC§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         _loc5_;
         _loc4_;
         _loc4_;
         if((isFinite(_loc2_)) && !isNaN(_loc2_))
         {
            _loc4_;
            _loc3_ = new §_-aj§();
            _loc4_;
            _loc3_.type = §_-kx§.§_-4v§;
            _loc4_;
            _loc3_.value = _loc2_;
            _loc4_;
            _loc4_;
            return _loc3_;
         }
         _loc5_;
         _loc4_;
         _loc4_;
         this.§_-XM§("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §_-yC§() : String
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         return this.ch = this.§_-BM§.charAt(this.loc++);
      }
      
      private function §_-kM§() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         do
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            _loc1_ = this.loc;
            _loc2_;
            this.§_-yd§();
            _loc3_;
            _loc3_;
            this.§_-Qd§();
            _loc3_;
            _loc3_;
         }
         while(_loc1_ != this.loc);
         
      }
      
      private function §_-Qd§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         if(this.ch == "/")
         {
            _loc2_;
            this.§_-yC§();
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            _loc2_;
            if("/" === _loc1_)
            {
               _loc3_;
               _loc2_;
               _loc2_;
            }
            else
            {
               switch(null)
               {
                  case "*":
                     do
                     {
                        this.§_-yC§();
                        _loc3_;
                        _loc3_;
                        _loc2_;
                        _loc2_;
                        _loc2_;
                        _loc2_;
                        _loc2_;
                     }
                     while(!(this.ch == "\n") && !(this.ch == ""));
                     
                     _loc2_;
                     this.§_-yC§();
                     break;
                  default:
                     _loc3_;
                     _loc3_;
                     this.§_-XM§("Unexpected " + this.ch + " encountered (expecting \'/\' or \'*\' )");
               }
            }
            if("/" === _loc1_)
            {
            }
         }
      }
      
      private function §_-yd§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         while(this.§_-Au§(this.ch))
         {
            this.§_-yC§();
            _loc2_;
         }
      }
      
      private function §_-Au§(param1:String) : Boolean
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            return true;
         }
         _loc2_;
         _loc2_;
         if(!this.§_-5A§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §_-DF§(param1:String) : Boolean
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §_-Em§(param1:String) : Boolean
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc2_;
         _loc2_;
         return (this.§_-DF§(param1)) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function §_-XM§(param1:String) : void
      {
         throw new JSONParseError(param1,this.loc,this.§_-BM§);
      }
   }
}
