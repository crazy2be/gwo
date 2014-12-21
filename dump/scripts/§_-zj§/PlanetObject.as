package §_-zj§
{
   import flash.display.Sprite;
   import flash.utils.getDefinitionByName;
   
   public class PlanetObject extends EditorObject
   {
      
      public function PlanetObject(param1:Boolean = false, param2:Boolean = false, param3:Number = -1, param4:int = -1)
      {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc5_:Array = null;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         this.§_-K7§ = new Sprite();
         this.shieldGFX1 = new §_-Jp§();
         _loc9_;
         this.shieldGFX2 = new §_-Jp§();
         _loc9_;
         this.shieldGFX3 = new §_-Jp§();
         _loc10_;
         this.radioGFX = new Sprite();
         super();
         addChild(this.shieldGFX1);
         _loc10_;
         _loc10_;
         addChild(this.shieldGFX2);
         addChild(this.shieldGFX3);
         _loc10_;
         this.hideShield();
         _loc9_;
         addChild(this.radioGFX);
         this.§_-Iq§();
         _loc10_;
         addChild(this.§_-K7§);
         _loc10_;
         if(param1)
         {
            this.sun = true;
            this.gfxID = -1;
         }
         else if(param2)
         {
            this.blackHole = true;
            _loc10_;
            this.gfxID = 99;
         }
         else if(param4 == -1)
         {
            _loc5_ = new Array();
            _loc9_;
            _loc9_;
            _loc6_ = 0;
            while(true)
            {
               _loc10_;
               if(_loc6_ >= Global.TOTAL_PLANETS)
               {
                  break;
               }
               if(Global.planets_unlocked[_loc6_] == true)
               {
                  _loc5_.push(_loc6_);
               }
               _loc6_++;
            }
            _loc9_;
            _loc9_;
            _loc9_;
            _loc9_;
            _loc7_ = _loc5_.length - 1;
            _loc8_ = Math.floor(Math.random() * _loc7_);
            this.gfxID = _loc5_[_loc8_];
         }
         else
         {
            this.gfxID = param4;
            _loc9_;
         }
         
         
         if(param3 != -1)
         {
            _loc10_;
            _loc10_;
            this.radius = param3;
            _loc10_;
         }
         else
         {
            this.radius = Math.floor(50 + Math.random() * 50);
            _loc9_;
            _loc9_;
         }
         this.attachNewGfx(this.gfxID);
      }
      
      public var radius:int = 50;
      
      public var gfxID:int = 0;
      
      public var §_-DF§:int = 50;
      
      public var §_-K7§:Sprite;
      
      public var §_-iZ§:Sprite;
      
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
         if((this.§_-iZ§) && (this.§_-K7§.contains(this.§_-iZ§)))
         {
            _loc4_;
            this.§_-K7§.removeChild(this.§_-iZ§);
         }
         if(this.blackHole)
         {
            this.§_-iZ§ = new AssetBlackHole() as Sprite;
            this.§_-K7§.addChild(this.§_-iZ§);
            this.§_-UK§();
         }
         else
         {
            _loc2_ = getDefinitionByName("Planet" + (param1 + 1)) as Class;
            _loc4_;
            _loc4_;
            this.§_-iZ§ = new _loc2_() as Sprite;
            _loc3_;
            _loc3_;
            this.§_-K7§.addChild(this.§_-iZ§);
            _loc4_;
            this.§_-UK§();
         }
      }
      
      public function setRadius(param1:int) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.radius = param1;
         this.§_-UK§();
         §_-yM§();
         §_-jz§();
         §_-X2§();
         Global.EDITOR.planetResized(id);
      }
      
      public function setRadioactiveValue(param1:int) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.radioactiveValue = param1;
         _loc2_;
         _loc2_;
         this.§_-UK§();
      }
      
      public function §_-UK§() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.§_-iZ§.scaleX = this.§_-iZ§.scaleY = this.radius / 50;
         this.§_-iZ§.x = this.§_-iZ§.y = 0 - this.radius;
         this.shieldGFX1.scaleX = this.shieldGFX1.scaleY = (this.radius + 50) / 50;
         this.shieldGFX2.scaleX = this.shieldGFX2.scaleY = (this.radius + 45) / 50;
         this.shieldGFX3.scaleX = this.shieldGFX3.scaleY = (this.radius + 40) / 50;
         _loc2_;
         _loc2_;
         if(this.radioactiveValue > 0)
         {
            _loc2_;
            this.§_-ot§();
         }
         else
         {
            this.§_-Iq§();
         }
      }
      
      public function hideShield() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.shieldGFX1.visible = false;
         _loc1_;
         this.shieldGFX2.visible = false;
         _loc1_;
         this.shieldGFX3.visible = false;
      }
      
      public function §_-W3§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.shieldGFX1.visible = true;
         _loc2_;
         this.shieldGFX2.visible = true;
         _loc1_;
         this.shieldGFX3.visible = true;
      }
      
      public function §_-Iq§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.radioGFX.graphics.clear();
      }
      
      public function §_-Qm§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.radioGFX.graphics.clear();
      }
      
      public function §_-ot§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.§_-Qm§();
         _loc2_;
         _loc2_;
         _loc2_;
         if(this.radioactiveValue == 0)
         {
            this.radioGFX.graphics.lineStyle(4,10092288,0);
            _loc2_;
            _loc2_;
         }
         else
         {
            _loc2_;
            _loc2_;
            if(this.radioactiveValue <= 5)
            {
               _loc1_;
               this.radioGFX.graphics.lineStyle(4,10092288,0.5);
            }
            else
            {
               _loc2_;
               _loc2_;
               _loc2_;
               if(this.radioactiveValue <= 10)
               {
                  this.radioGFX.graphics.lineStyle(6,10092288,0.6);
               }
               else
               {
                  this.radioGFX.graphics.lineStyle(8,10092288,0.7);
               }
            }
         }
         this.radioGFX.graphics.drawCircle(0,0,this.radius);
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(this.radioactiveValue == 0)
         {
            this.radioGFX.graphics.lineStyle(10,10092288,0);
            _loc2_;
            _loc2_;
         }
         else
         {
            _loc1_;
            _loc1_;
            if(this.radioactiveValue <= 5)
            {
               _loc2_;
               this.radioGFX.graphics.lineStyle(10,10092288,0.25);
               _loc1_;
               _loc1_;
            }
            else if(this.radioactiveValue <= 10)
            {
               this.radioGFX.graphics.lineStyle(14,10092288,0.35);
            }
            else
            {
               this.radioGFX.graphics.lineStyle(18,10092288,0.45);
               _loc2_;
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
         _loc2_;
         this.§_-W3§();
      }
      
      public function turnOffShield() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.shield = false;
         _loc2_;
         _loc2_;
         this.hideShield();
      }
   }
}
