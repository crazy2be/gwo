package §_-ZN§
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.display.Sprite;
   import §_-zO§.WeaponPanel;
   import flash.events.MouseEvent;
   
   public class WeaponButton extends SimpleButton
   {
      
      public function WeaponButton(param1:int)
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         _loc3_;
         _loc3_;
         addFrameScript(0,this.frame1,9,this.frame10);
         _loc2_;
         _loc2_;
         this.id = param1;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(this.id == SafeGlobal.WEAPONINFO_CUSTOM[0])
         {
            _loc3_;
            _loc3_;
            _loc3_;
            if(SafeGlobal.custom_weapon_string[0] != "")
            {
               this.§_-Nl§ = SafeGlobal.§_-TW§(SafeGlobal.custom_weapon_string[0]);
               _loc2_;
               _loc2_;
            }
            else
            {
               this.§_-Nl§ = SafeGlobal.§_-ct§(this.id);
            }
         }
         else
         {
            _loc2_;
            _loc2_;
            _loc3_;
            _loc2_;
            if(this.id == SafeGlobal.WEAPONINFO_CUSTOM2[0])
            {
               _loc3_;
               _loc3_;
               if(SafeGlobal.custom_weapon_string[1] != "")
               {
                  _loc3_;
                  this.§_-Nl§ = SafeGlobal.§_-TW§(SafeGlobal.custom_weapon_string[1]);
                  _loc3_;
               }
               else
               {
                  this.§_-Nl§ = SafeGlobal.§_-ct§(this.id);
               }
            }
            else
            {
               _loc2_;
               _loc2_;
               if(this.id == SafeGlobal.WEAPONINFO_CUSTOM3[0])
               {
                  if(SafeGlobal.custom_weapon_string[2] != "")
                  {
                     _loc3_;
                     _loc3_;
                     this.§_-Nl§ = SafeGlobal.§_-TW§(SafeGlobal.custom_weapon_string[2]);
                     _loc2_;
                     _loc2_;
                  }
                  else
                  {
                     this.§_-Nl§ = SafeGlobal.§_-ct§(this.id);
                     _loc3_;
                     _loc3_;
                  }
               }
               else if(this.id == -1)
               {
                  this.§_-Nl§ = new §_-JP§();
               }
               else
               {
                  this.§_-Nl§ = SafeGlobal.§_-ct§(this.id);
                  _loc2_;
                  _loc2_;
               }
               
            }
         }
         this.§_-Nl§.x = 32;
         _loc3_;
         this.§_-Nl§.y = 32;
         addChild(this.§_-Nl§);
      }
      
      public var infsign:MovieClip;
      
      public var num:TextField;
      
      public var id:int;
      
      private var §_-Nl§:Sprite;
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(§_-QR§)
         {
            _loc2_;
            gotoAndStop("off");
            _loc2_;
            _loc2_;
            buttonMode = false;
            _loc1_;
         }
         else
         {
            buttonMode = true;
            _loc1_;
            if(over)
            {
               (parent as WeaponPanel).§_-C8§(this.id);
               gotoAndStop("over");
               _loc1_;
            }
            else
            {
               (parent as WeaponPanel).§_-H9§();
               gotoAndStop("up");
            }
         }
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         SafeGlobal.GAME.selectWeapon(this.id);
         _loc2_;
         param1.stopPropagation();
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         stop();
      }
   }
}
