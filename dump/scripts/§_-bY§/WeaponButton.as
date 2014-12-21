package §_-bY§
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.display.Sprite;
   import §_-JH§.WeaponPanel;
   import flash.events.MouseEvent;
   
   public class WeaponButton extends SimpleButton
   {
      
      public function WeaponButton(param1:int)
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         _loc2_;
         _loc2_;
         addFrameScript(0,this.frame1,9,this.frame10);
         this.id = param1;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(this.id == SafeGlobal.WEAPONINFO_CUSTOM[0])
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            if(SafeGlobal.custom_weapon_string[0] != "")
            {
               this.§_-3B§ = SafeGlobal.§_-Et§(SafeGlobal.custom_weapon_string[0]);
            }
            else
            {
               this.§_-3B§ = SafeGlobal.§_-e§(this.id);
               _loc3_;
               _loc3_;
            }
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc2_;
            _loc3_;
            _loc3_;
            if(this.id == SafeGlobal.WEAPONINFO_CUSTOM2[0])
            {
               _loc2_;
               _loc2_;
               _loc3_;
               _loc2_;
               _loc2_;
               if(SafeGlobal.custom_weapon_string[1] != "")
               {
                  this.§_-3B§ = SafeGlobal.§_-Et§(SafeGlobal.custom_weapon_string[1]);
                  _loc3_;
               }
               else
               {
                  this.§_-3B§ = SafeGlobal.§_-e§(this.id);
                  _loc3_;
               }
            }
            else
            {
               _loc3_;
               if(this.id == SafeGlobal.WEAPONINFO_CUSTOM3[0])
               {
                  _loc2_;
                  if(SafeGlobal.custom_weapon_string[2] != "")
                  {
                     _loc2_;
                     _loc2_;
                     this.§_-3B§ = SafeGlobal.§_-Et§(SafeGlobal.custom_weapon_string[2]);
                     _loc3_;
                     _loc3_;
                  }
                  else
                  {
                     this.§_-3B§ = SafeGlobal.§_-e§(this.id);
                     _loc3_;
                     _loc3_;
                  }
               }
               else if(this.id == -1)
               {
                  this.§_-3B§ = new §_-UG§();
               }
               else
               {
                  this.§_-3B§ = SafeGlobal.§_-e§(this.id);
               }
               
            }
         }
         this.§_-3B§.x = 32;
         _loc2_;
         this.§_-3B§.y = 32;
         addChild(this.§_-3B§);
      }
      
      public var infsign:MovieClip;
      
      public var num:TextField;
      
      public var id:int;
      
      private var §_-3B§:Sprite;
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         if(§_-L4§)
         {
            gotoAndStop("off");
            buttonMode = false;
         }
         else
         {
            buttonMode = true;
            if(over)
            {
               (parent as WeaponPanel).§_-mm§(this.id);
               _loc2_;
               _loc2_;
               gotoAndStop("over");
            }
            else
            {
               (parent as WeaponPanel).§ if§();
               _loc1_;
               gotoAndStop("up");
            }
         }
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
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
         _loc1_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         stop();
      }
   }
}
