package §_-bY§
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.display.Sprite;
   import fl.transitions.Tween;
   import §_-Ff§.ItemsData;
   import fl.transitions.easing.Strong;
   import flash.events.MouseEvent;
   
   public class WeaponPanelButton extends SimpleButton
   {
      
      public function WeaponPanelButton()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         _loc1_;
         addFrameScript(0,this.frame1,9,this.frame10,19,this.frame20);
         x = 720;
         _loc2_;
         y = 520;
         this.§_-ry§ = new Sprite();
         addChild(this.§_-ry§);
         _loc2_;
         this.§_-l-§ = new Sprite();
         _loc2_;
         _loc2_;
         this.§_-l-§.graphics.beginFill(0,1);
         _loc2_;
         this.§_-l-§.graphics.drawRect(0,0,460,34);
         _loc2_;
         _loc2_;
         this.§_-l-§.graphics.endFill();
         _loc2_;
         this.§_-l-§.x = -466;
         _loc2_;
         _loc2_;
         this.§_-l-§.y = 31;
         addChild(this.§_-l-§);
         if(this.name_text != null)
         {
            this.name_text.mask = this.§_-l-§;
            this.name_text.mouseEnabled = false;
            _loc2_;
            _loc2_;
         }
         this.§_-9L§ = new Sprite();
         this.§_-9L§.graphics.beginFill(0,0.1);
         this.§_-9L§.graphics.drawRect(0,0,66,66);
         this.§_-9L§.graphics.endFill();
         _loc1_;
         _loc1_;
         addChild(this.§_-9L§);
         hitArea = this.§_-9L§;
         _loc2_;
         _loc2_;
         mouseChildren = false;
         if(this.name_text != null)
         {
            this.name_text.text = "BAZOOKA";
            _loc2_;
            this.name_text.x = -155;
         }
         this.§_-xk§(0);
      }
      
      public var infsign:MovieClip;
      
      public var name_text:TextField;
      
      public var num:TextField;
      
      private var §_-B2§:int = 0;
      
      private var §_-3B§:Sprite;
      
      private var §_-jj§:Tween;
      
      private var §_-9L§:Sprite;
      
      private var §_-l-§:Sprite;
      
      private var §_-ry§:Sprite;
      
      private var §_-d9§:Boolean = false;
      
      public function §_-xk§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.§_-B2§ = param1;
         if(this.§_-3B§ != null)
         {
            this.§_-ry§.removeChild(this.§_-3B§);
            _loc3_;
            this.§_-3B§ = null;
            _loc3_;
            _loc3_;
         }
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(this.§_-B2§ == SafeGlobal.WEAPONINFO_CUSTOM[0])
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            if(SafeGlobal.custom_weapon_string[0] != "")
            {
               _loc2_;
               this.§_-3B§ = SafeGlobal.§_-Et§(SafeGlobal.custom_weapon_string[0]);
            }
            else
            {
               this.§_-3B§ = SafeGlobal.§_-e§(this.§_-B2§);
            }
         }
         else
         {
            _loc2_;
            _loc2_;
            _loc3_;
            if(this.§_-B2§ == SafeGlobal.WEAPONINFO_CUSTOM2[0])
            {
               _loc3_;
               _loc3_;
               _loc3_;
               if(SafeGlobal.custom_weapon_string[1] != "")
               {
                  this.§_-3B§ = SafeGlobal.§_-Et§(SafeGlobal.custom_weapon_string[1]);
                  _loc3_;
               }
               else
               {
                  this.§_-3B§ = SafeGlobal.§_-e§(this.§_-B2§);
               }
            }
            else
            {
               _loc3_;
               if(this.§_-B2§ == SafeGlobal.WEAPONINFO_CUSTOM3[0])
               {
                  if(SafeGlobal.custom_weapon_string[2] != "")
                  {
                     this.§_-3B§ = SafeGlobal.§_-Et§(SafeGlobal.custom_weapon_string[2]);
                  }
                  else
                  {
                     this.§_-3B§ = SafeGlobal.§_-e§(this.§_-B2§);
                  }
               }
               else
               {
                  _loc2_;
                  _loc2_;
                  _loc3_;
                  _loc3_;
                  if(this.§_-B2§ == -1)
                  {
                     _loc2_;
                     _loc2_;
                     this.§_-3B§ = new §_-UG§();
                     _loc2_;
                     _loc2_;
                  }
                  else
                  {
                     this.§_-3B§ = SafeGlobal.§_-e§(this.§_-B2§);
                     _loc3_;
                     _loc3_;
                  }
               }
            }
         }
         this.§_-3B§.x = 32;
         _loc2_;
         this.§_-3B§.y = 32;
         _loc2_;
         this.§_-ry§.addChild(this.§_-3B§);
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(this.§_-B2§ == 0 || this.§_-B2§ == -1)
         {
            _loc3_;
            _loc3_;
            this.num.text = "";
            this.infsign.visible = true;
            _loc2_;
            _loc2_;
         }
         else
         {
            if(SafeGlobal.GAME != null)
            {
               this.num.text = String(SafeGlobal.GAME.stock[this.§_-B2§]);
               _loc2_;
            }
            this.infsign.visible = false;
         }
      }
      
      public function tweenOnWeaponName() : void
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:* = 0;
         var _loc7_:Array = null;
         §_-yY§ = false;
         updateGraphic();
         if(this.§_-B2§ == 31)
         {
            _loc1_ = "CUSTOM WEAPON 1";
            _loc8_;
            _loc8_;
            _loc2_ = SafeGlobal.custom_weapon_string[0];
            _loc9_;
            _loc9_;
            _loc9_;
            _loc8_;
            if(_loc2_ != "")
            {
               _loc3_ = _loc2_.split("/");
               _loc4_ = _loc3_[0].split(";");
               _loc8_;
               _loc8_;
               _loc5_ = 0;
               while(_loc5_ < _loc4_.length)
               {
                  _loc7_ = _loc4_[_loc5_].split(",");
                  if(_loc7_[0] == "n")
                  {
                     _loc9_;
                     _loc1_ = _loc7_[1];
                     _loc8_;
                  }
                  _loc5_++;
               }
            }
         }
         else
         {
            _loc8_;
            _loc9_;
            if(this.§_-B2§ == 39)
            {
               _loc8_;
               _loc8_;
               _loc1_ = "CUSTOM WEAPON 2";
               _loc9_;
               _loc9_;
               _loc9_;
               _loc8_;
               _loc8_;
               _loc2_ = SafeGlobal.custom_weapon_string[1];
               _loc9_;
               _loc9_;
               _loc9_;
               _loc9_;
               if(_loc2_ != "")
               {
                  _loc8_;
                  _loc9_;
                  _loc9_;
                  _loc3_ = _loc2_.split("/");
                  _loc4_ = _loc3_[0].split(";");
                  _loc8_;
                  _loc9_;
                  _loc9_;
                  _loc5_ = 0;
                  _loc9_;
                  _loc9_;
                  while(_loc5_ < _loc4_.length)
                  {
                     _loc7_ = _loc4_[_loc5_].split(",");
                     if(_loc7_[0] == "n")
                     {
                        _loc9_;
                        _loc9_;
                        _loc1_ = _loc7_[1];
                        _loc9_;
                        _loc9_;
                        break;
                     }
                     _loc5_++;
                  }
               }
            }
            else
            {
               _loc8_;
               _loc9_;
               if(this.§_-B2§ == 40)
               {
                  _loc8_;
                  _loc9_;
                  _loc9_;
                  _loc1_ = "CUSTOM WEAPON 3";
                  _loc9_;
                  _loc8_;
                  _loc2_ = SafeGlobal.custom_weapon_string[2];
                  _loc9_;
                  _loc9_;
                  _loc9_;
                  _loc9_;
                  if(_loc2_ != "")
                  {
                     _loc8_;
                     _loc8_;
                     _loc3_ = _loc2_.split("/");
                     _loc4_ = _loc3_[0].split(";");
                     _loc8_;
                     _loc8_;
                     _loc9_;
                     _loc5_ = 0;
                     _loc9_;
                     while(_loc5_ < _loc4_.length)
                     {
                        _loc7_ = _loc4_[_loc5_].split(",");
                        if(_loc7_[0] == "n")
                        {
                           _loc9_;
                           _loc9_;
                           _loc1_ = _loc7_[1];
                           _loc9_;
                           _loc9_;
                           break;
                        }
                        _loc5_++;
                     }
                  }
               }
               else if(this.§_-B2§ == -1)
               {
                  _loc1_ = "SKIP TURN";
               }
               else
               {
                  _loc9_;
                  _loc1_ = ItemsData.§_-7L§("W",this.§_-B2§).toUpperCase();
               }
               
            }
         }
         _loc9_;
         _loc9_;
         _loc9_;
         if(_loc1_.indexOf("*") != -1)
         {
            _loc9_;
            _loc8_;
            _loc8_;
            _loc1_ = _loc1_.split("*").join(" ");
         }
         _loc9_;
         if(this.§_-jj§ != null)
         {
            _loc8_;
            _loc8_;
            if(this.§_-jj§.isPlaying)
            {
               _loc8_;
               _loc8_;
               this.§_-jj§.stop();
            }
            this.§_-jj§ = null;
            _loc8_;
            _loc8_;
         }
         this.name_text.text = _loc1_;
         var _loc6_:Number = this.name_text.textWidth + 5;
         _loc8_;
         _loc8_;
         this.name_text.x = 0;
         _loc8_;
         _loc8_;
         this.§_-jj§ = new Tween(this.name_text,"x",Strong.easeIn,-466 + _loc6_,-466,10,false);
         _loc9_;
         _loc9_;
         this.§_-jj§.start();
      }
      
      public function §_-S0§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         §_-yY§ = true;
         _loc1_;
         _loc1_;
         updateGraphic();
         _loc2_;
         if(this.§_-jj§ != null)
         {
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            if(this.§_-jj§.isPlaying)
            {
               _loc1_;
               _loc1_;
               this.§_-jj§.stop();
            }
            this.§_-jj§ = null;
         }
         this.§_-jj§ = new Tween(this.name_text,"x",Strong.easeIn,-466,0,10,false);
         this.§_-jj§.start();
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Sprite = null;
         _loc4_;
         SafeGlobal.GAME.toggleWeaponPanel();
         _loc3_;
         param1.stopPropagation();
         _loc3_;
         _loc3_;
         if(SafeGlobal.§_-vX§ != null)
         {
            _loc2_ = getChildByName("wep_arrow") as Sprite;
            if(_loc2_ != null)
            {
               if(this.§_-d9§ == true)
               {
                  _loc2_.visible = true;
                  this.§_-d9§ = false;
                  _loc3_;
                  _loc3_;
               }
               else
               {
                  _loc2_.visible = false;
                  _loc4_;
                  _loc4_;
                  this.§_-d9§ = true;
               }
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         stop();
      }
      
      function frame20() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         stop();
      }
   }
}
