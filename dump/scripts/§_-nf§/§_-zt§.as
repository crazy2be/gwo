package §_-nf§
{
   public class §_-zt§ extends Object
   {
      
      public function §_-zt§(param1:String, param2:Boolean)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         super();
         this.§_-CV§ = param2;
         this.§_-hT§ = new §_-qV§(param1,param2);
         _loc3_;
         _loc3_;
         this.§_-w7§();
         _loc3_;
         this.value = this.§_-S5§();
         _loc3_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if((param2) && !(this.§_-w7§() == null))
         {
            this.§_-hT§.§_-dN§("Unexpected characters left in input stream");
         }
      }
      
      private var §_-CV§:Boolean;
      
      private var value;
      
      private var §_-hT§:§_-qV§;
      
      private var token:§_-6J§;
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §_-w7§() : §_-6J§
      {
         return this.token = this.§_-hT§.§_-Vu§();
      }
      
      private function parseArray() : Array
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Array = new Array();
         _loc3_;
         this.§_-w7§();
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(this.token.type == §_-W8§.§_-TI§)
         {
            _loc3_;
            return _loc1_;
         }
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         if(!this.§_-CV§ && this.token.type == §_-W8§.§_-ZC§)
         {
            this.§_-w7§();
            if(this.token.type == §_-W8§.§_-TI§)
            {
               return _loc1_;
            }
            _loc3_;
            this.§_-hT§.§_-dN§("Leading commas are not supported.  Expecting \']\' but found " + this.token.value);
         }
         while(true)
         {
            _loc1_.push(this.§_-S5§());
            this.§_-w7§();
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            if(this.token.type == §_-W8§.§_-TI§)
            {
               break;
            }
            _loc3_;
            _loc2_;
            _loc2_;
            _loc3_;
            if(this.token.type == §_-W8§.§_-ZC§)
            {
               this.§_-w7§();
               if(!this.§_-CV§)
               {
                  _loc2_;
                  if(this.token.type == §_-W8§.§_-TI§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               _loc2_;
               this.§_-hT§.§_-dN§("Expecting ] or , but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §_-Uo§() : Object
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         _loc4_;
         _loc4_;
         this.§_-w7§();
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(this.token.type == §_-W8§.§_-dG§)
         {
            return _loc1_;
         }
         _loc3_;
         _loc3_;
         _loc3_;
         if(!this.§_-CV§ && this.token.type == §_-W8§.§_-ZC§)
         {
            _loc4_;
            _loc4_;
            this.§_-w7§();
            _loc4_;
            _loc4_;
            if(this.token.type == §_-W8§.§_-dG§)
            {
               _loc4_;
               _loc4_;
               return _loc1_;
            }
            _loc4_;
            _loc4_;
            this.§_-hT§.§_-dN§("Leading commas are not supported.  Expecting \'}\' but found " + this.token.value);
         }
         while(true)
         {
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            if(this.token.type == §_-W8§.§_-SE§)
            {
               _loc4_;
               _loc4_;
               _loc2_ = String(this.token.value);
               _loc3_;
               _loc3_;
               this.§_-w7§();
               _loc3_;
               _loc4_;
               _loc4_;
               _loc3_;
               if(this.token.type == §_-W8§.§_-KH§)
               {
                  _loc3_;
                  this.§_-w7§();
                  _loc1_[_loc2_] = this.§_-S5§();
                  this.§_-w7§();
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  if(this.token.type == §_-W8§.§_-dG§)
                  {
                     break;
                  }
                  _loc3_;
                  _loc4_;
                  _loc3_;
                  _loc3_;
                  if(this.token.type == §_-W8§.§_-ZC§)
                  {
                     this.§_-w7§();
                     if(!this.§_-CV§)
                     {
                        if(this.token.type == §_-W8§.§_-dG§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     _loc3_;
                     _loc4_;
                     _loc4_;
                     _loc4_;
                     _loc3_;
                     this.§_-hT§.§_-dN§("Expecting } or , but found " + this.token.value);
                  }
               }
               else
               {
                  _loc4_;
                  _loc4_;
                  _loc4_;
                  _loc3_;
                  _loc3_;
                  _loc4_;
                  _loc4_;
                  this.§_-hT§.§_-dN§("Expecting : but found " + this.token.value);
               }
            }
            else
            {
               _loc3_;
               this.§_-hT§.§_-dN§("Expecting string but found " + this.token.value);
            }
         }
         _loc4_;
         _loc4_;
         return _loc1_;
      }
      
      private function §_-S5§() : Object
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         if(this.token == null)
         {
            _loc2_;
            _loc2_;
            this.§_-hT§.§_-dN§("Unexpected end of input");
         }
         _loc2_;
         _loc2_;
         _loc3_;
         if(§_-W8§.§_-Il§ === _loc1_)
         {
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
         }
         else
         {
            switch(null)
            {
               case §_-W8§.§_-7p§:
                  return this.§_-Uo§();
               case §_-W8§.§_-SE§:
                  return this.parseArray();
               case §_-W8§.§_-ou§:
               case §_-W8§.§_-D4§:
               case §_-W8§.§_-Ox§:
               case §_-W8§.§_-nw§:
               case §_-W8§.§_-QD§:
                  _loc3_;
                  _loc3_;
                  return this.token.value;
               default:
                  _loc2_;
                  _loc2_;
                  this.§_-hT§.§_-dN§("Unexpected " + this.token.value);
                  _loc2_;
                  _loc2_;
                  return null;
            }
         }
         if(§_-W8§.§_-Il§ === _loc1_)
         {
         }
      }
   }
}
