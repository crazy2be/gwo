package §_-nf§
{
   public class §_-qV§ extends Object
   {
      
      public function §_-qV§(param1:String, param2:Boolean)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.§_-Po§ = new RegExp("[\\x00-\\x1F]");
         super();
         this.§_-H2§ = param1;
         this.§_-CV§ = param2;
         this.loc = 0;
         _loc3_;
         this.§_-KL§();
      }
      
      private var §_-CV§:Boolean;
      
      private var obj:Object;
      
      private var §_-H2§:String;
      
      private var loc:int;
      
      private var ch:String;
      
      private var §_-Po§:RegExp;
      
      public function §_-Vu§() : §_-6J§
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§_-6J§ = new §_-6J§();
         _loc8_;
         this.§_-Si§();
         _loc7_;
         _loc7_;
         switch(null)
         {
            case "{":
               _loc1_.type = §_-W8§.§_-Il§;
               _loc1_.value = "{";
               this.§_-KL§();
               _loc7_;
               break;
            case "}":
               _loc1_.type = §_-W8§.§_-dG§;
               _loc1_.value = "}";
               this.§_-KL§();
               break;
            case "[":
               _loc1_.type = §_-W8§.§_-7p§;
               _loc8_;
               _loc1_.value = "[";
               _loc8_;
               _loc8_;
               this.§_-KL§();
               break;
            case "]":
               _loc1_.type = §_-W8§.§_-TI§;
               _loc7_;
               _loc1_.value = "]";
               this.§_-KL§();
               _loc8_;
               _loc8_;
               break;
            case ",":
               _loc1_.type = §_-W8§.§_-ZC§;
               _loc1_.value = ",";
               this.§_-KL§();
               break;
            case ":":
               _loc1_.type = §_-W8§.§_-KH§;
               _loc1_.value = ":";
               this.§_-KL§();
               _loc7_;
               _loc7_;
               break;
            case "t":
               _loc8_;
               _loc7_;
               _loc2_ = "t" + this.§_-KL§() + this.§_-KL§() + this.§_-KL§();
               _loc7_;
               if(_loc2_ == "true")
               {
                  _loc8_;
                  _loc1_.type = §_-W8§.§_-D4§;
                  _loc8_;
                  _loc1_.value = true;
                  _loc7_;
                  this.§_-KL§();
               }
               else
               {
                  _loc8_;
                  this.§_-dN§("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc7_;
               _loc7_;
               _loc7_;
               _loc3_ = "f" + this.§_-KL§() + this.§_-KL§() + this.§_-KL§() + this.§_-KL§();
               _loc8_;
               _loc8_;
               if(_loc3_ == "false")
               {
                  _loc8_;
                  _loc8_;
                  _loc1_.type = §_-W8§.§_-Ox§;
                  _loc7_;
                  _loc1_.value = false;
                  this.§_-KL§();
               }
               else
               {
                  _loc8_;
                  _loc8_;
                  this.§_-dN§("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               _loc8_;
               _loc8_;
               _loc7_;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc7_;
               _loc4_ = "n" + this.§_-KL§() + this.§_-KL§() + this.§_-KL§();
               _loc8_;
               _loc8_;
               if("n" + this.§_-KL§() + this.§_-KL§() + this.§_-KL§() == "null")
               {
                  _loc1_.type = §_-W8§.§_-nw§;
                  _loc8_;
                  _loc8_;
                  _loc1_.value = null;
                  _loc7_;
                  this.§_-KL§();
                  _loc8_;
                  _loc8_;
               }
               else
               {
                  _loc8_;
                  _loc8_;
                  this.§_-dN§("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               _loc8_;
               _loc5_ = "N" + this.§_-KL§() + this.§_-KL§();
               if(_loc5_ == "NaN")
               {
                  _loc1_.type = §_-W8§.§_-QD§;
                  _loc8_;
                  _loc8_;
                  _loc1_.value = NaN;
                  this.§_-KL§();
               }
               else
               {
                  _loc7_;
                  this.§_-dN§("Expecting \'NaN\' but found " + _loc5_);
               }
               break;
            case "\"":
               _loc1_ = this.§_-Dk§();
               _loc7_;
               break;
            default:
               _loc8_;
               _loc8_;
               _loc7_;
               _loc7_;
               if((this.§_-j3§(this.ch)) || this.ch == "-")
               {
                  _loc8_;
                  _loc8_;
                  _loc1_ = this.§_-mp§();
               }
               else
               {
                  if(this.ch == "")
                  {
                     _loc8_;
                     _loc8_;
                     return null;
                  }
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  this.§_-dN§("Unexpected " + this.ch + " encountered");
               }
         }
         return _loc1_;
      }
      
      private function §_-Dk§() : §_-6J§
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         _loc5_;
         _loc5_;
         var _loc1_:int = this.loc;
         while(true)
         {
            _loc5_;
            _loc5_;
            _loc1_ = this.§_-H2§.indexOf("\"",_loc1_);
            _loc6_;
            if(_loc1_ >= 0)
            {
               _loc6_;
               _loc6_;
               _loc3_ = 0;
               _loc6_;
               _loc6_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc4_ = _loc1_ - 1;
               while(this.§_-H2§.charAt(_loc4_) == "\\")
               {
                  _loc3_++;
                  _loc4_--;
                  _loc6_;
               }
               if(_loc3_ % 2 == 0)
               {
                  break;
               }
               _loc1_++;
            }
            else
            {
               this.§_-dN§("Unterminated string literal");
            }
         }
         var _loc2_:§_-6J§ = new §_-6J§();
         _loc5_;
         _loc2_.type = §_-W8§.§_-SE§;
         _loc5_;
         _loc2_.value = this.§_-0-A§(this.§_-H2§.substr(this.loc,_loc1_ - this.loc));
         _loc5_;
         this.loc = _loc1_ + 1;
         _loc5_;
         this.§_-KL§();
         return _loc2_;
      }
      
      public function §_-0-A§(param1:String) : String
      {
         var _loc12_:* = true;
         var _loc13_:* = false;
         var _loc6_:* = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:* = 0;
         var _loc10_:String = null;
         _loc12_;
         _loc12_;
         _loc12_;
         if((this.§_-CV§) && (this.§_-Po§.test(param1)))
         {
            _loc13_;
            this.§_-dN§("String contains unescaped control character (0x00-0x1F)");
         }
         var _loc2_:* = "";
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:int = param1.length;
         while(true)
         {
            _loc12_;
            _loc12_;
            _loc12_;
            _loc3_ = param1.indexOf("\\",_loc4_);
            _loc12_;
            if(_loc3_ >= 0)
            {
               _loc13_;
               _loc13_;
               _loc12_;
               _loc2_ = _loc2_ + param1.substr(_loc4_,_loc3_ - _loc4_);
               _loc12_;
               _loc12_;
               _loc12_;
               _loc4_ = _loc3_ + 2;
               _loc12_;
               _loc12_;
               _loc13_;
               _loc13_;
               _loc13_;
               _loc6_ = _loc3_ + 1;
               _loc13_;
               _loc13_;
               _loc13_;
               _loc7_ = param1.charAt(_loc6_);
               _loc12_;
               _loc12_;
               switch(null)
               {
                  case "\"":
                     _loc12_;
                     _loc2_ = _loc2_ + "\"";
                     break;
                  case "\\":
                     _loc12_;
                     _loc12_;
                     _loc12_;
                     _loc2_ = _loc2_ + "\\";
                     break;
                  case "n":
                     _loc2_ = _loc2_ + "\n";
                     _loc13_;
                     break;
                  case "r":
                     _loc13_;
                     _loc13_;
                     _loc12_;
                     _loc12_;
                     _loc2_ = _loc2_ + "\r";
                     _loc13_;
                     break;
                  case "t":
                     _loc2_ = _loc2_ + "\t";
                     _loc12_;
                     break;
                  case "u":
                     _loc8_ = "";
                     _loc12_;
                     _loc12_;
                     _loc12_;
                     _loc12_;
                     if(_loc4_ + 4 > _loc5_)
                     {
                        this.§_-dN§("Unexpected end of input.  Expecting 4 hex digits after \\u.");
                     }
                     _loc13_;
                     _loc13_;
                     _loc9_ = _loc4_;
                     _loc12_;
                     while(true)
                     {
                        _loc12_;
                        if(_loc9_ >= _loc4_ + 4)
                        {
                           break;
                        }
                        _loc10_ = param1.charAt(_loc9_);
                        _loc13_;
                        if(!this.§_-YC§(_loc10_))
                        {
                           _loc12_;
                           _loc12_;
                           this.§_-dN§("Excepted a hex digit, but found: " + _loc10_);
                        }
                        _loc13_;
                        _loc8_ = _loc8_ + _loc10_;
                        _loc12_;
                        _loc12_;
                        _loc9_++;
                     }
                     _loc12_;
                     _loc12_;
                     _loc12_;
                     _loc2_ = _loc2_ + String.fromCharCode(parseInt(_loc8_,16));
                     _loc12_;
                     _loc4_ = _loc4_ + 4;
                     _loc13_;
                     _loc13_;
                     break;
                  case "f":
                     _loc12_;
                     _loc2_ = _loc2_ + "\f";
                     break;
                  case "/":
                     _loc2_ = _loc2_ + "/";
                     _loc13_;
                     break;
                  case "b":
                     _loc12_;
                     _loc13_;
                     _loc2_ = _loc2_ + "\b";
                     break;
                  default:
                     _loc12_;
                     _loc2_ = _loc2_ + ("\\" + _loc7_);
                     _loc12_;
               }
               if(_loc4_ >= _loc5_)
               {
                  break;
               }
               continue;
            }
            _loc13_;
            _loc13_;
            _loc2_ = _loc2_ + param1.substr(_loc4_);
            break;
         }
         return _loc2_;
      }
      
      private function §_-mp§() : §_-6J§
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:§_-6J§ = null;
         var _loc1_:* = "";
         _loc4_;
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         if(this.ch == "-")
         {
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc1_ = _loc1_ + "-";
            this.§_-KL§();
         }
         if(!this.§_-j3§(this.ch))
         {
            _loc5_;
            _loc5_;
            this.§_-dN§("Expecting a digit");
         }
         _loc5_;
         _loc5_;
         if(this.ch == "0")
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc1_ = _loc1_ + this.ch;
            _loc4_;
            _loc4_;
            this.§_-KL§();
            _loc5_;
            if(this.§_-j3§(this.ch))
            {
               _loc4_;
               this.§_-dN§("A digit cannot immediately follow 0");
            }
            else
            {
               _loc5_;
               if(!this.§_-CV§ && this.ch == "x")
               {
                  _loc4_;
                  _loc5_;
                  _loc5_;
                  _loc1_ = _loc1_ + this.ch;
                  this.§_-KL§();
                  if(this.§_-YC§(this.ch))
                  {
                     _loc1_ = _loc1_ + this.ch;
                     this.§_-KL§();
                  }
                  else
                  {
                     this.§_-dN§("Number in hex format require at least one hex digit after \"0x\"");
                  }
                  while(this.§_-YC§(this.ch))
                  {
                     _loc4_;
                     _loc4_;
                     _loc5_;
                     _loc5_;
                     _loc4_;
                     _loc1_ = _loc1_ + this.ch;
                     this.§_-KL§();
                  }
               }
            }
         }
         else
         {
            while(true)
            {
               _loc4_;
               _loc4_;
               if(!this.§_-j3§(this.ch))
               {
                  break;
               }
               _loc4_;
               _loc4_;
               _loc1_ = _loc1_ + this.ch;
               _loc5_;
               this.§_-KL§();
            }
         }
         _loc4_;
         if(this.ch == ".")
         {
            _loc4_;
            _loc5_;
            _loc5_;
            _loc1_ = _loc1_ + ".";
            this.§_-KL§();
            if(!this.§_-j3§(this.ch))
            {
               _loc5_;
               this.§_-dN§("Expecting a digit");
               _loc4_;
            }
            while(this.§_-j3§(this.ch))
            {
               _loc5_;
               _loc5_;
               _loc1_ = _loc1_ + this.ch;
               this.§_-KL§();
               _loc4_;
            }
         }
         _loc4_;
         _loc4_;
         if(this.ch == "e" || this.ch == "E")
         {
            _loc4_;
            _loc5_;
            _loc1_ = _loc1_ + "e";
            _loc4_;
            this.§_-KL§();
            if(this.ch == "+" || this.ch == "-")
            {
               _loc4_;
               _loc4_;
               _loc1_ = _loc1_ + this.ch;
               this.§_-KL§();
            }
            if(!this.§_-j3§(this.ch))
            {
               _loc5_;
               _loc5_;
               this.§_-dN§("Scientific notation number needs exponent value");
               _loc5_;
            }
            while(this.§_-j3§(this.ch))
            {
               _loc4_;
               _loc4_;
               _loc1_ = _loc1_ + this.ch;
               this.§_-KL§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         _loc5_;
         _loc4_;
         _loc4_;
         if((isFinite(_loc2_)) && !isNaN(_loc2_))
         {
            _loc5_;
            _loc5_;
            _loc3_ = new §_-6J§();
            _loc5_;
            _loc3_.type = §_-W8§.§_-ou§;
            _loc4_;
            _loc3_.value = _loc2_;
            _loc4_;
            return _loc3_;
         }
         _loc4_;
         _loc5_;
         _loc5_;
         this.§_-dN§("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §_-KL§() : String
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         return this.ch = this.§_-H2§.charAt(this.loc++);
      }
      
      private function §_-Si§() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         do
         {
            _loc2_;
            _loc3_;
            _loc1_ = this.loc;
            _loc2_;
            this.§_-S9§();
            _loc2_;
            this.§package§();
            _loc2_;
         }
         while(_loc1_ != this.loc);
         
      }
      
      private function §package§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         if(this.ch == "/")
         {
            _loc3_;
            this.§_-KL§();
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            if("/" === _loc1_)
            {
               _loc3_;
               _loc3_;
            }
            else
            {
               switch(null)
               {
                  case "*":
                     do
                     {
                        this.§_-KL§();
                        _loc3_;
                        _loc2_;
                        _loc2_;
                        _loc2_;
                        _loc2_;
                        _loc2_;
                        _loc2_;
                     }
                     while(!(this.ch == "\n") && !(this.ch == ""));
                     
                     _loc3_;
                     this.§_-KL§();
                     break;
                  default:
                     _loc2_;
                     _loc2_;
                     _loc2_;
                     this.§_-dN§("Unexpected " + this.ch + " encountered (expecting \'/\' or \'*\' )");
                     _loc3_;
               }
            }
            if("/" === _loc1_)
            {
            }
         }
      }
      
      private function §_-S9§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         while(this.§_-Kf§(this.ch))
         {
            this.§_-KL§();
            _loc1_;
         }
      }
      
      private function §_-Kf§(param1:String) : Boolean
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            _loc3_;
            _loc2_;
            _loc2_;
            return true;
         }
         _loc2_;
         if(!this.§_-CV§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §_-j3§(param1:String) : Boolean
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §_-YC§(param1:String) : Boolean
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc3_;
         _loc2_;
         _loc3_;
         return (this.§_-j3§(param1)) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function §_-dN§(param1:String) : void
      {
         throw new JSONParseError(param1,this.loc,this.§_-H2§);
      }
   }
}
