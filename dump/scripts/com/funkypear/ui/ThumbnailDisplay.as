package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.utils.getDefinitionByName;
   
   public class ThumbnailDisplay extends Sprite
   {
      
      public function ThumbnailDisplay(param1:String)
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         super();
         _loc3_;
         _loc3_;
         this.thumbnail = new Sprite();
         _loc3_;
         _loc3_;
         this.§_-Uy§(param1);
         _loc2_;
         _loc2_;
         this.§_-OO§ = this.thumbnail.width * 0.5;
         this.§_-oa§ = this.thumbnail.height * 0.5;
         _loc3_;
         _loc3_;
         this.radius = SafeGlobal.§_-5k§(param1);
         _loc2_;
         _loc2_;
         addChild(this.thumbnail);
      }
      
      private var thumbnail:Sprite;
      
      public var §_-OO§:Number;
      
      public var §_-oa§:Number;
      
      public var radius:Number;
      
      public var §_-PG§:int = 0;
      
      private var §_-1J§:Array;
      
      private function §_-Uy§(param1:String) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Array = null;
         var _loc3_:* = 0;
         var _loc4_:Array = null;
         _loc5_;
         graphics.clear();
         _loc5_;
         _loc6_;
         _loc6_;
         if(param1 != "")
         {
            _loc2_ = param1.split("|");
            _loc5_;
            _loc5_;
            this.§_-1J§ = new Array();
            _loc6_;
            _loc3_ = 0;
            while(true)
            {
               _loc5_;
               if(_loc3_ >= _loc2_.length)
               {
                  break;
               }
               _loc4_ = _loc2_[_loc3_].split(",");
               _loc5_;
               _loc5_;
               if(_loc4_[0] == "p" || _loc4_[0] == "s" || _loc4_[0] == "h")
               {
                  _loc6_;
                  this.§_-1J§.push({
                     "x":parseInt(_loc4_[1]),
                     "y":parseInt(_loc4_[2]),
                     "r":parseInt(_loc4_[3])
                  });
                  _loc6_;
               }
               _loc3_++;
            }
            _loc5_;
            _loc6_;
            _loc3_ = 0;
            _loc6_;
            _loc6_;
            while(_loc3_ < _loc2_.length)
            {
               _loc4_ = _loc2_[_loc3_].split(",");
               if(_loc4_[0] == "p")
               {
                  _loc5_;
                  _loc5_;
                  this.§_-Wf§(parseInt(_loc4_[1]),parseInt(_loc4_[2]),parseInt(_loc4_[3]),parseInt(_loc4_[4]),parseInt(_loc4_[5]),parseInt(_loc4_[6]));
                  _loc5_;
               }
               else if(_loc4_[0] == "s")
               {
                  this.§_-ux§(parseInt(_loc4_[1]),parseInt(_loc4_[2]),parseInt(_loc4_[3]));
               }
               else if(_loc4_[0] == "h")
               {
                  _loc6_;
                  this.§_-lz§(parseInt(_loc4_[1]),parseInt(_loc4_[2]),parseInt(_loc4_[3]));
                  _loc6_;
                  _loc6_;
               }
               else if(_loc4_[0] == "g")
               {
                  _loc6_;
                  _loc6_;
                  this.§_-gt§(parseInt(_loc4_[1]),parseInt(_loc4_[2]),parseInt(_loc4_[3]),parseInt(_loc4_[4]));
                  _loc6_;
                  _loc6_;
               }
               else if(_loc4_[0] == "m")
               {
                  _loc5_;
                  _loc5_;
                  this.§_-G3§(parseInt(_loc4_[1]),parseInt(_loc4_[2]),parseInt(_loc4_[3]));
                  _loc5_;
                  _loc5_;
               }
               else if(_loc4_[0] == "b")
               {
                  this.§_-qA§(parseInt(_loc4_[1]),parseInt(_loc4_[2]));
               }
               else if(_loc4_[0] == "k")
               {
                  _loc5_;
                  _loc5_;
                  this.§_-6t§(parseInt(_loc4_[1]),parseInt(_loc4_[2]),parseInt(_loc4_[3]));
                  _loc5_;
                  _loc5_;
               }
               
               
               
               
               
               
               _loc3_++;
            }
         }
      }
      
      private function §_-E5§(param1:Number) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.thumbnail.scaleX = param1;
         _loc2_;
         this.thumbnail.scaleY = param1;
      }
      
      private function §_-Wf§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int) : void
      {
         var _loc14_:* = true;
         var _loc15_:* = false;
         var _loc9_:Sprite = null;
         var _loc11_:Sprite = null;
         var _loc12_:Sprite = null;
         var _loc7_:String = String("Planet" + (param4 + 1));
         var _loc8_:Class = getDefinitionByName(_loc7_) as Class;
         _loc9_ = new _loc8_() as Sprite;
         _loc15_;
         _loc15_;
         var _loc10_:Number = param3 / 50;
         _loc9_.scaleX = _loc10_;
         _loc14_;
         _loc9_.scaleY = _loc10_;
         _loc9_.x = param1 - param3;
         _loc9_.y = param2 - param3;
         _loc15_;
         if(param6)
         {
            _loc11_ = new §_-Jp§();
            _loc11_.scaleX = _loc11_.scaleY = (param3 + 50) / 50;
            _loc15_;
            _loc11_.x = param1;
            _loc15_;
            _loc11_.y = param2;
         }
         if(param6)
         {
            if(param5)
            {
               _loc12_ = new Sprite();
               _loc12_.x = param1;
               _loc14_;
               _loc12_.y = param2;
               _loc15_;
               _loc12_.graphics.lineStyle(4,10092288,0.5);
               _loc15_;
               _loc15_;
               _loc12_.graphics.drawCircle(0,0,param3);
               _loc15_;
               _loc15_;
               _loc12_.graphics.lineStyle(10,10092288,0.25);
               _loc15_;
               _loc12_.graphics.drawCircle(0,0,param3);
            }
            this.thumbnail.addChild(_loc9_);
            if(_loc12_ != null)
            {
               this.thumbnail.addChild(_loc12_);
               _loc15_;
               _loc15_;
            }
            if(_loc11_ != null)
            {
               _loc15_;
               this.thumbnail.addChild(_loc11_);
            }
            return;
         }
         if(param5)
         {
            _loc12_ = new Sprite();
            _loc12_.x = param1;
            _loc14_;
            _loc12_.y = param2;
            _loc15_;
            _loc12_.graphics.lineStyle(4,10092288,0.5);
            _loc15_;
            _loc15_;
            _loc12_.graphics.drawCircle(0,0,param3);
            _loc15_;
            _loc15_;
            _loc12_.graphics.lineStyle(10,10092288,0.25);
            _loc15_;
            _loc12_.graphics.drawCircle(0,0,param3);
         }
         this.thumbnail.addChild(_loc9_);
         if(_loc12_ != null)
         {
            this.thumbnail.addChild(_loc12_);
            _loc15_;
            _loc15_;
         }
         if(_loc11_ != null)
         {
            _loc15_;
            this.thumbnail.addChild(_loc11_);
         }
      }
      
      private function §_-ux§(param1:int, param2:int, param3:int) : void
      {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc4_:* = "Planet0";
         var _loc5_:Class = getDefinitionByName(_loc4_) as Class;
         var _loc6_:Sprite = new _loc5_() as Sprite;
         _loc9_;
         _loc9_;
         var _loc7_:Number = param3 / 50;
         _loc8_;
         _loc6_.scaleX = _loc7_;
         _loc8_;
         _loc6_.scaleY = _loc7_;
         _loc9_;
         _loc6_.x = param1 - param3;
         _loc8_;
         _loc6_.y = param2 - param3;
         _loc8_;
         _loc8_;
         this.thumbnail.addChild(_loc6_);
      }
      
      private function §_-lz§(param1:int, param2:int, param3:int) : void
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc4_:* = "AssetBlackHole";
         var _loc5_:Class = getDefinitionByName(_loc4_) as Class;
         var _loc6_:Sprite = new _loc5_() as Sprite;
         _loc9_;
         var _loc7_:Number = param3 / 50;
         _loc9_;
         _loc9_;
         _loc6_.scaleX = _loc7_;
         _loc8_;
         _loc6_.scaleY = _loc7_;
         _loc8_;
         _loc6_.x = param1 - param3;
         _loc8_;
         _loc8_;
         _loc6_.y = param2 - param3;
         _loc9_;
         this.thumbnail.addChild(_loc6_);
      }
      
      private function §_-gt§(param1:int, param2:int, param3:int, param4:int) : void
      {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc5_:* = "StaticShield";
         _loc11_;
         _loc10_;
         _loc10_;
         _loc11_;
         if(param4 == 0)
         {
            _loc10_;
            _loc10_;
            _loc5_ = "StaticShield";
            _loc10_;
         }
         else
         {
            _loc10_;
            _loc10_;
            _loc11_;
            if(param4 == 1)
            {
               _loc10_;
               _loc10_;
               _loc5_ = "StaticDissolveShield";
               _loc11_;
               _loc11_;
            }
            else
            {
               _loc10_;
               _loc11_;
               if(param4 == 2)
               {
                  _loc10_;
                  _loc10_;
                  _loc11_;
                  if(this.§_-PG§ < 2)
                  {
                     _loc10_;
                     _loc11_;
                     _loc5_ = "StaticWormholeBlue";
                  }
                  else if(this.§_-PG§ < 4)
                  {
                     _loc11_;
                     _loc11_;
                     _loc5_ = "StaticWormholeOrange";
                  }
                  
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  this.§_-PG§++;
               }
            }
         }
         var _loc6_:Class = getDefinitionByName(_loc5_) as Class;
         var _loc7_:Sprite = new _loc6_() as Sprite;
         _loc7_.x = param1;
         _loc11_;
         _loc11_;
         _loc7_.y = param2;
         _loc10_;
         _loc7_.rotation = param3;
         _loc10_;
         _loc10_;
         this.thumbnail.addChild(_loc7_);
      }
      
      private function §_-G3§(param1:int, param2:int, param3:int) : void
      {
         var _loc14_:* = true;
         var _loc15_:* = false;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc4_:* = "";
         _loc14_;
         _loc15_;
         _loc15_;
         _loc15_;
         _loc15_;
         if(param3 == 0)
         {
            _loc14_;
            _loc4_ = "AssetStandardMine";
         }
         else
         {
            _loc14_;
            _loc14_;
            _loc14_;
            if(param3 == 1)
            {
               _loc15_;
               _loc15_;
               _loc4_ = "AssetClusterMine";
               _loc14_;
               _loc14_;
            }
            else if(param3 == 2)
            {
               _loc4_ = "AssetDrillMine";
            }
            
         }
         var _loc5_:Class = getDefinitionByName(_loc4_) as Class;
         var _loc6_:Sprite = new _loc5_() as Sprite;
         var _loc7_:Object = this.§_-1J§[param1];
         if(_loc7_ != null)
         {
            _loc8_ = Number(_loc7_.x);
            _loc15_;
            _loc9_ = Number(_loc7_.y);
            _loc10_ = Number(_loc7_.r);
            _loc15_;
            _loc11_ = Number(param2) * Math.PI / 180;
            _loc14_;
            _loc14_;
            _loc15_;
            _loc15_;
            _loc15_;
            _loc15_;
            _loc15_;
            _loc12_ = _loc8_ + _loc10_ * Math.cos(_loc11_);
            _loc14_;
            _loc14_;
            _loc13_ = _loc9_ + _loc10_ * Math.sin(_loc11_);
            _loc6_.x = _loc12_;
            _loc15_;
            _loc15_;
            _loc6_.y = _loc13_;
            _loc6_.rotation = Number(param2 + 90);
            this.thumbnail.addChild(_loc6_);
         }
      }
      
      private function §_-qA§(param1:int, param2:int) : void
      {
         var _loc12_:* = false;
         var _loc13_:* = true;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc3_:Class = getDefinitionByName("AssetBarrel") as Class;
         var _loc4_:Sprite = new _loc3_() as Sprite;
         var _loc5_:Object = this.§_-1J§[param1];
         if(_loc5_ != null)
         {
            _loc13_;
            _loc13_;
            _loc6_ = Number(_loc5_.x);
            _loc7_ = Number(_loc5_.y);
            _loc13_;
            _loc13_;
            _loc8_ = Number(_loc5_.r);
            _loc13_;
            _loc9_ = Number(param2) * Math.PI / 180;
            _loc12_;
            _loc12_;
            _loc13_;
            _loc10_ = _loc6_ + _loc8_ * Math.cos(_loc9_);
            _loc12_;
            _loc12_;
            _loc11_ = _loc7_ + _loc8_ * Math.sin(_loc9_);
            _loc13_;
            _loc4_.x = _loc10_;
            _loc4_.y = _loc11_;
            _loc4_.rotation = Number(param2 + 90);
            this.thumbnail.addChild(_loc4_);
         }
      }
      
      private function §_-6t§(param1:int, param2:int, param3:int) : void
      {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc4_:Number = Number(param1);
         var _loc5_:Number = Number(param2);
         var _loc6_:Class = getDefinitionByName("AssetSkyMine") as Class;
         var _loc7_:Sprite = new _loc6_() as Sprite;
         _loc7_.x = _loc4_;
         _loc8_;
         _loc7_.y = _loc5_;
         _loc9_;
         this.thumbnail.addChild(_loc7_);
      }
   }
}
