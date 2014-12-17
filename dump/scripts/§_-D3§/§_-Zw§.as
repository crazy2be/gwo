package §_-D3§
{
   public class §_-Zw§ extends Object
   {
      
      public function §_-Zw§(param1:String, param2:Boolean)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.§_-5A§ = param2;
         _loc4_;
         _loc4_;
         this.§_-BK§ = new §_-u§(param1,param2);
         this.§_-GO§();
         this.value = this.§_-6g§();
         _loc4_;
         _loc4_;
         _loc3_;
         if((param2) && !(this.§_-GO§() == null))
         {
            this.§_-BK§.§_-XM§("Unexpected characters left in input stream");
         }
      }
      
      private var §_-5A§:Boolean;
      
      private var value;
      
      private var §_-BK§:§_-u§;
      
      private var token:§_-aj§;
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §_-GO§() : §_-aj§
      {
         return this.token = this.§_-BK§.§_-Zr§();
      }
      
      private function parseArray() : Array
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Array = new Array();
         this.§_-GO§();
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc2_;
         if(this.token.type == §_-kx§.§_-ka§)
         {
            _loc3_;
            _loc3_;
            return _loc1_;
         }
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         if(!this.§_-5A§ && this.token.type == §_-kx§.§_-2N§)
         {
            this.§_-GO§();
            if(this.token.type == §_-kx§.§_-ka§)
            {
               return _loc1_;
            }
            _loc2_;
            _loc2_;
            this.§_-BK§.§_-XM§("Leading commas are not supported.  Expecting \']\' but found " + this.token.value);
         }
         while(true)
         {
            _loc1_.push(this.§_-6g§());
            this.§_-GO§();
            _loc3_;
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            if(this.token.type == §_-kx§.§_-ka§)
            {
               break;
            }
            _loc2_;
            _loc2_;
            _loc2_;
            _loc3_;
            if(this.token.type == §_-kx§.§_-2N§)
            {
               this.§_-GO§();
               _loc2_;
               _loc2_;
               if(!this.§_-5A§)
               {
                  _loc3_;
                  if(this.token.type == §_-kx§.§_-ka§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               _loc2_;
               _loc2_;
               this.§_-BK§.§_-XM§("Expecting ] or , but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §_-u0§() : Object
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         _loc3_;
         _loc3_;
         this.§_-GO§();
         _loc4_;
         _loc4_;
         _loc3_;
         _loc4_;
         _loc4_;
         if(this.token.type == §_-kx§.§_-L-§)
         {
            return _loc1_;
         }
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         if(!this.§_-5A§ && this.token.type == §_-kx§.§_-2N§)
         {
            _loc3_;
            _loc3_;
            this.§_-GO§();
            if(this.token.type == §_-kx§.§_-L-§)
            {
               _loc3_;
               return _loc1_;
            }
            _loc4_;
            this.§_-BK§.§_-XM§("Leading commas are not supported.  Expecting \'}\' but found " + this.token.value);
         }
         while(true)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            if(this.token.type == §_-kx§.§_-Qz§)
            {
               _loc2_ = String(this.token.value);
               this.§_-GO§();
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               if(this.token.type == §_-kx§.§_-cp§)
               {
                  _loc3_;
                  _loc3_;
                  this.§_-GO§();
                  _loc1_[_loc2_] = this.§_-6g§();
                  this.§_-GO§();
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  if(this.token.type == §_-kx§.§_-L-§)
                  {
                     break;
                  }
                  _loc4_;
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  if(this.token.type == §_-kx§.§_-2N§)
                  {
                     this.§_-GO§();
                     if(!this.§_-5A§)
                     {
                        if(this.token.type == §_-kx§.§_-L-§)
                        {
                           _loc4_;
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     _loc4_;
                     _loc3_;
                     _loc4_;
                     _loc4_;
                     _loc4_;
                     _loc4_;
                     this.§_-BK§.§_-XM§("Expecting } or , but found " + this.token.value);
                  }
               }
               else
               {
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  _loc4_;
                  _loc4_;
                  this.§_-BK§.§_-XM§("Expecting : but found " + this.token.value);
                  _loc3_;
                  _loc3_;
               }
            }
            else
            {
               _loc3_;
               _loc3_;
               this.§_-BK§.§_-XM§("Expecting string but found " + this.token.value);
            }
         }
         _loc3_;
         _loc3_;
         return _loc1_;
      }
      
      private function §_-6g§() : Object
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         if(this.token == null)
         {
            _loc3_;
            _loc3_;
            this.§_-BK§.§_-XM§("Unexpected end of input");
         }
         _loc3_;
         _loc3_;
         switch(this.token.type)
         {
            case §_-kx§.§_-yp§:
               return this.§_-u0§();
            case §_-kx§.§_-g6§:
               return this.parseArray();
            case §_-kx§.§_-Qz§:
            case §_-kx§.§_-4v§:
            case §_-kx§.§_-DC§:
            case §_-kx§.§_-C-§:
            case §_-kx§.§_-b§:
               _loc3_;
               return this.token.value;
            case §_-kx§.§_-Fl§:
               if(!this.§_-5A§)
               {
                  _loc3_;
                  return this.token.value;
               }
               _loc2_;
               _loc2_;
               _loc2_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               this.§_-BK§.§_-XM§("Unexpected " + this.token.value);
            default:
               _loc3_;
               _loc3_;
               this.§_-BK§.§_-XM§("Unexpected " + this.token.value);
               return null;
         }
      }
   }
}
