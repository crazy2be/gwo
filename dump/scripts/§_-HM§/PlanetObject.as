package §_-HM§
{
   import flash.display.Sprite;
   import flash.utils.getDefinitionByName;
   
   public class PlanetObject extends EditorObject
   {
      
      public function PlanetObject(param1:Boolean = false, param2:Boolean = false, param3:Number = -1, param4:int = -1)
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc5_:Array = null;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         this.§_-ng§ = new Sprite();
         this.shieldGFX1 = new §_-7p§();
         _loc10_;
         _loc10_;
         this.shieldGFX2 = new §_-7p§();
         this.shieldGFX3 = new §_-7p§();
         _loc10_;
         this.radioGFX = new Sprite();
         super();
         addChild(this.shieldGFX1);
         _loc10_;
         addChild(this.shieldGFX2);
         addChild(this.shieldGFX3);
         this.hideShield();
         addChild(this.radioGFX);
         _loc10_;
         _loc10_;
         this.§_-i7§();
         addChild(this.§_-ng§);
         _loc10_;
         _loc10_;
         if(param1)
         {
            this.sun = true;
            this.gfxID = -1;
         }
         else if(param2)
         {
            this.blackHole = true;
            this.gfxID = 99;
         }
         else if(param4 == -1)
         {
            _loc5_ = new Array();
            _loc10_;
            _loc10_;
            _loc6_ = 0;
            while(true)
            {
               _loc9_;
               _loc9_;
               if(_loc6_ >= Global.TOTAL_PLANETS)
               {
                  break;
               }
               if(Global.planets_unlocked[_loc6_] == true)
               {
                  _loc9_;
                  _loc9_;
                  _loc5_.push(_loc6_);
                  _loc9_;
                  _loc9_;
               }
               _loc6_++;
               _loc10_;
               _loc10_;
            }
            _loc10_;
            _loc10_;
            _loc7_ = _loc5_.length - 1;
            _loc8_ = Math.floor(Math.random() * _loc7_);
            this.gfxID = _loc5_[_loc8_];
         }
         else
         {
            this.gfxID = param4;
            _loc10_;
            _loc10_;
         }
         
         
         if(param3 != -1)
         {
            _loc10_;
            this.radius = param3;
            _loc10_;
            _loc10_;
         }
         else
         {
            this.radius = Math.floor(50 + Math.random() * 50);
            _loc10_;
            _loc10_;
         }
         this.attachNewGfx(this.gfxID);
      }
      
      public var radius:int = 50;
      
      public var gfxID:int = 0;
      
      public var §_-w9§:int = 50;
      
      public var §_-ng§:Sprite;
      
      public var §_-Y3§:Sprite;
      
      public var sun:Boolean = false;
      
      public var blackHole:Boolean = false;
      
      public var shield:Boolean = false;
      
      public var radioactiveValue:int = 0;
      
      public var shieldGFX1:Sprite;
      
      public var shieldGFX2:Sprite;
      
      public var shieldGFX3:Sprite;
      
      public var radioGFX:Sprite;
      
      public function attachNewGfx(param1:int) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Class = null;
         _loc4_;
         if((this.§_-Y3§) && (this.§_-ng§.contains(this.§_-Y3§)))
         {
            this.§_-ng§.removeChild(this.§_-Y3§);
         }
         if(this.blackHole)
         {
            this.§_-Y3§ = new AssetBlackHole() as Sprite;
            _loc3_;
            this.§_-ng§.addChild(this.§_-Y3§);
            this.§_-Xs§();
         }
         else
         {
            _loc2_ = getDefinitionByName("Planet" + (param1 + 1)) as Class;
            _loc3_;
            this.§_-Y3§ = new _loc2_() as Sprite;
            _loc4_;
            _loc4_;
            this.§_-ng§.addChild(this.§_-Y3§);
            _loc3_;
            this.§_-Xs§();
         }
      }
      
      public function setRadius(param1:int) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.radius = param1;
         this.§_-Xs§();
         §_-4O§();
         _loc2_;
         _loc2_;
         §_-la§();
         _loc2_;
         §_-m4§();
         _loc2_;
         _loc2_;
         Global.EDITOR.planetResized(id);
      }
      
      public function setRadioactiveValue(param1:int) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.radioactiveValue = param1;
         _loc2_;
         this.§_-Xs§();
      }
      
      public function §_-Xs§() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.§_-Y3§.scaleX = this.§_-Y3§.scaleY = this.radius / 50;
         _loc3_;
         this.§_-Y3§.x = this.§_-Y3§.y = 0 - this.radius;
         _loc2_;
         _loc2_;
         this.shieldGFX1.scaleX = this.shieldGFX1.scaleY = (this.radius + 50) / 50;
         this.shieldGFX2.scaleX = this.shieldGFX2.scaleY = (this.radius + 45) / 50;
         _loc2_;
         _loc2_;
         this.shieldGFX3.scaleX = this.shieldGFX3.scaleY = (this.radius + 40) / 50;
         _loc2_;
         if(this.radioactiveValue > 0)
         {
            this.§_-gj§();
            _loc2_;
         }
         else
         {
            this.§_-i7§();
         }
      }
      
      public function hideShield() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.shieldGFX1.visible = false;
         _loc1_;
         this.shieldGFX2.visible = false;
         _loc1_;
         this.shieldGFX3.visible = false;
      }
      
      public function §_-aX§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.shieldGFX1.visible = true;
         _loc1_;
         _loc1_;
         this.shieldGFX2.visible = true;
         _loc2_;
         this.shieldGFX3.visible = true;
      }
      
      public function §_-i7§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.radioGFX.graphics.clear();
      }
      
      public function §_-nT§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.radioGFX.graphics.clear();
      }
      
      public function §_-gj§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.§_-nT§();
         _loc1_;
         _loc2_;
         if(this.radioactiveValue == 0)
         {
            this.radioGFX.graphics.lineStyle(4,10092288,0);
            _loc2_;
            _loc2_;
         }
         else
         {
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            if(this.radioactiveValue <= 5)
            {
               this.radioGFX.graphics.lineStyle(4,10092288,0.5);
               _loc1_;
            }
            else
            {
               _loc1_;
               _loc1_;
               _loc2_;
               _loc2_;
               if(this.radioactiveValue <= 10)
               {
                  _loc2_;
                  _loc2_;
                  this.radioGFX.graphics.lineStyle(6,10092288,0.6);
               }
               else
               {
                  this.radioGFX.graphics.lineStyle(8,10092288,0.7);
               }
            }
         }
         this.radioGFX.graphics.drawCircle(0,0,this.radius);
         _loc2_;
         _loc1_;
         _loc1_;
         if(this.radioactiveValue == 0)
         {
            this.radioGFX.graphics.lineStyle(10,10092288,0);
            _loc2_;
         }
         else
         {
            _loc1_;
            _loc1_;
            if(this.radioactiveValue <= 5)
            {
               _loc2_;
               _loc2_;
               this.radioGFX.graphics.lineStyle(10,10092288,0.25);
            }
            else if(this.radioactiveValue <= 10)
            {
               this.radioGFX.graphics.lineStyle(14,10092288,0.35);
            }
            else
            {
               this.radioGFX.graphics.lineStyle(18,10092288,0.45);
            }
            
         }
         this.radioGFX.graphics.drawCircle(0,0,this.radius);
      }
      
      public function turnOnShield() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.shield = true;
         _loc1_;
         _loc1_;
         this.§_-aX§();
      }
      
      public function turnOffShield() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.shield = false;
         _loc1_;
         _loc1_;
         this.hideShield();
      }
   }
}
