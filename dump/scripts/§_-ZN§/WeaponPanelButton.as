package §_-ZN§
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.display.Sprite;
   import fl.transitions.Tween;
   import §_-Cv§.ItemsData;
   import fl.transitions.easing.Strong;
   import flash.events.MouseEvent;
   
   public class WeaponPanelButton extends SimpleButton
   {
      
      public function WeaponPanelButton()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         super();
         addFrameScript(0,this.frame1,9,this.frame10,19,this.frame20);
         x = 720;
         y = 520;
         this.§_-yB§ = new Sprite();
         addChild(this.§_-yB§);
         _loc2_;
         _loc2_;
         this.§_-D§ = new Sprite();
         _loc1_;
         _loc1_;
         this.§_-D§.graphics.beginFill(0,1);
         this.§_-D§.graphics.drawRect(0,0,460,34);
         this.§_-D§.graphics.endFill();
         this.§_-D§.x = -466;
         _loc2_;
         _loc2_;
         this.§_-D§.y = 31;
         addChild(this.§_-D§);
         if(this.name_text != null)
         {
            _loc2_;
            _loc2_;
            this.name_text.mask = this.§_-D§;
            _loc2_;
            this.name_text.mouseEnabled = false;
         }
         this.§_-4d§ = new Sprite();
         _loc1_;
         _loc1_;
         this.§_-4d§.graphics.beginFill(0,0.1);
         this.§_-4d§.graphics.drawRect(0,0,66,66);
         _loc2_;
         this.§_-4d§.graphics.endFill();
         addChild(this.§_-4d§);
         hitArea = this.§_-4d§;
         mouseChildren = false;
         if(this.name_text != null)
         {
            this.name_text.text = "BAZOOKA";
            this.name_text.x = -155;
            _loc2_;
         }
         this.§_-iN§(0);
      }
      
      public var infsign:MovieClip;
      
      public var name_text:TextField;
      
      public var num:TextField;
      
      private var §_-Cl§:int = 0;
      
      private var §_-Nl§:Sprite;
      
      private var §_-MF§:Tween;
      
      private var §_-4d§:Sprite;
      
      private var §_-D§:Sprite;
      
      private var §_-yB§:Sprite;
      
      private var §_-gg§:Boolean = false;
      
      public function §_-iN§(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-Cl§ = param1;
         if(this.§_-Nl§ != null)
         {
            _loc3_;
            _loc3_;
            this.§_-yB§.removeChild(this.§_-Nl§);
            this.§_-Nl§ = null;
            _loc2_;
         }
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(this.§_-Cl§ == SafeGlobal.WEAPONINFO_CUSTOM[0])
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            if(SafeGlobal.custom_weapon_string[0] != "")
            {
               this.§_-Nl§ = SafeGlobal.§_-TW§(SafeGlobal.custom_weapon_string[0]);
            }
            else
            {
               this.§_-Nl§ = SafeGlobal.§_-ct§(this.§_-Cl§);
               _loc3_;
            }
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            if(this.§_-Cl§ == SafeGlobal.WEAPONINFO_CUSTOM2[0])
            {
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               if(SafeGlobal.custom_weapon_string[1] != "")
               {
                  _loc3_;
                  this.§_-Nl§ = SafeGlobal.§_-TW§(SafeGlobal.custom_weapon_string[1]);
               }
               else
               {
                  this.§_-Nl§ = SafeGlobal.§_-ct§(this.§_-Cl§);
                  _loc2_;
               }
            }
            else
            {
               _loc2_;
               _loc2_;
               if(this.§_-Cl§ == SafeGlobal.WEAPONINFO_CUSTOM3[0])
               {
                  if(SafeGlobal.custom_weapon_string[2] != "")
                  {
                     this.§_-Nl§ = SafeGlobal.§_-TW§(SafeGlobal.custom_weapon_string[2]);
                  }
                  else
                  {
                     this.§_-Nl§ = SafeGlobal.§_-ct§(this.§_-Cl§);
                  }
               }
               else
               {
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  if(this.§_-Cl§ == -1)
                  {
                     this.§_-Nl§ = new §_-JP§();
                  }
                  else
                  {
                     this.§_-Nl§ = SafeGlobal.§_-ct§(this.§_-Cl§);
                  }
               }
            }
         }
         this.§_-Nl§.x = 32;
         _loc2_;
         this.§_-Nl§.y = 32;
         _loc2_;
         _loc2_;
         this.§_-yB§.addChild(this.§_-Nl§);
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(this.§_-Cl§ == 0 || this.§_-Cl§ == -1)
         {
            _loc2_;
            _loc2_;
            this.num.text = "";
            _loc2_;
            this.infsign.visible = true;
         }
         else
         {
            if(SafeGlobal.GAME != null)
            {
               this.num.text = String(SafeGlobal.GAME.stock[this.§_-Cl§]);
               _loc2_;
               _loc2_;
            }
            this.infsign.visible = false;
         }
      }
      
      public function tweenOnWeaponName() : void
      {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:* = 0;
         var _loc7_:Array = null;
         _loc9_;
         §_-Od§ = false;
         updateGraphic();
         if(this.§_-Cl§ == 31)
         {
            _loc9_;
            _loc1_ = "CUSTOM WEAPON 1";
            _loc9_;
            _loc9_;
            _loc2_ = SafeGlobal.custom_weapon_string[0];
            _loc8_;
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
                     _loc8_;
                     _loc8_;
                     _loc1_ = _loc7_[1];
                     _loc8_;
                     _loc8_;
                  }
                  _loc5_++;
               }
            }
         }
         else
         {
            _loc9_;
            _loc9_;
            _loc8_;
            if(this.§_-Cl§ == 39)
            {
               _loc9_;
               _loc9_;
               _loc1_ = "CUSTOM WEAPON 2";
               _loc8_;
               _loc8_;
               _loc8_;
               _loc2_ = SafeGlobal.custom_weapon_string[1];
               _loc9_;
               _loc8_;
               _loc8_;
               if(_loc2_ != "")
               {
                  _loc9_;
                  _loc9_;
                  _loc8_;
                  _loc8_;
                  _loc3_ = _loc2_.split("/");
                  _loc4_ = _loc3_[0].split(";");
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc5_ = 0;
                  _loc8_;
                  _loc8_;
                  while(_loc5_ < _loc4_.length)
                  {
                     _loc7_ = _loc4_[_loc5_].split(",");
                     if(_loc7_[0] == "n")
                     {
                        _loc8_;
                        _loc8_;
                        _loc1_ = _loc7_[1];
                        _loc8_;
                        _loc8_;
                        break;
                     }
                     _loc5_++;
                  }
               }
            }
            else
            {
               _loc9_;
               _loc8_;
               if(this.§_-Cl§ == 40)
               {
                  _loc8_;
                  _loc1_ = "CUSTOM WEAPON 3";
                  _loc2_ = SafeGlobal.custom_weapon_string[2];
                  _loc9_;
                  _loc8_;
                  if(_loc2_ != "")
                  {
                     _loc9_;
                     _loc9_;
                     _loc9_;
                     _loc3_ = _loc2_.split("/");
                     _loc4_ = _loc3_[0].split(";");
                     _loc8_;
                     _loc8_;
                     _loc9_;
                     _loc5_ = 0;
                     _loc8_;
                     while(_loc5_ < _loc4_.length)
                     {
                        _loc7_ = _loc4_[_loc5_].split(",");
                        if(_loc7_[0] == "n")
                        {
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
               else if(this.§_-Cl§ == -1)
               {
                  _loc1_ = "SKIP TURN";
                  _loc8_;
                  _loc8_;
               }
               else
               {
                  _loc8_;
                  _loc8_;
                  _loc1_ = ItemsData.§_-u2§("W",this.§_-Cl§).toUpperCase();
               }
               
            }
         }
         _loc9_;
         _loc8_;
         if(_loc1_.indexOf("*") != -1)
         {
            _loc1_ = _loc1_.split("*").join(" ");
         }
         _loc9_;
         _loc9_;
         if(this.§_-MF§ != null)
         {
            _loc9_;
            _loc9_;
            if(this.§_-MF§.isPlaying)
            {
               _loc9_;
               _loc9_;
               this.§_-MF§.stop();
            }
            this.§_-MF§ = null;
         }
         this.name_text.text = _loc1_;
         var _loc6_:Number = this.name_text.textWidth + 5;
         _loc9_;
         _loc9_;
         this.name_text.x = 0;
         _loc9_;
         this.§_-MF§ = new Tween(this.name_text,"x",Strong.easeIn,-466 + _loc6_,-466,10,false);
         _loc8_;
         this.§_-MF§.start();
      }
      
      public function §_-5w§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         §_-Od§ = true;
         updateGraphic();
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         if(this.§_-MF§ != null)
         {
            _loc1_;
            if(this.§_-MF§.isPlaying)
            {
               _loc2_;
               _loc2_;
               this.§_-MF§.stop();
               _loc2_;
            }
            this.§_-MF§ = null;
         }
         this.§_-MF§ = new Tween(this.name_text,"x",Strong.easeIn,-466,0,10,false);
         this.§_-MF§.start();
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sprite = null;
         _loc4_;
         SafeGlobal.GAME.toggleWeaponPanel();
         _loc3_;
         _loc3_;
         param1.stopPropagation();
         _loc4_;
         if(SafeGlobal.§_-Uq§ != null)
         {
            _loc2_ = getChildByName("wep_arrow") as Sprite;
            if(_loc2_ != null)
            {
               if(this.§_-gg§ == true)
               {
                  _loc3_;
                  _loc2_.visible = true;
                  this.§_-gg§ = false;
               }
               else
               {
                  _loc2_.visible = false;
                  this.§_-gg§ = true;
               }
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         stop();
      }
      
      function frame20() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         stop();
      }
   }
}
