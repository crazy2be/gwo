package §_-zO§
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import §_-ZN§.WeaponButton;
   import §_-Cv§.ItemsData;
   
   public class WeaponPanel extends Sprite
   {
      
      public function WeaponPanel()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.§_-u1§ = new Array();
         this.§_-g2§ = [4,8,12,16,20,25,30,35,40,45,50,55];
         this.§_-86§ = [-210,-210,-210,-210,-210,-280,-350,-420,-490,-560,-630,-700];
         this.§_-w2§ = [-70,-140,-210,-280,-350,-350,-350,-350,-350,-350,-350,-350];
         _loc1_;
         this.rows = [1,2,3,4,5,5,5,5,5,5,5,5];
         this.§_-u8§ = [4,4,4,4,4,5,6,7,8,9,10,11];
         this.customNames = ["CUSTOM WEAPON 1","CUSTOM WEAPON 2","CUSTOM WEAPON 3"];
         _loc1_;
         super();
         if(this.§_-TM§ != null)
         {
            _loc1_;
            _loc1_;
            this.§_-TM§.title_text.text = "WEAPON SELECT";
            this.§_-TM§.desc_text.text = "MOUSE OVER ICONS TO VIEW WEAPON DETAILS";
         }
      }
      
      public var §_-TM§:MovieClip;
      
      public var §_-u1§:Array;
      
      private var §_-g2§:Array;
      
      private var §_-86§:Array;
      
      private var §_-w2§:Array;
      
      private var rows:Array;
      
      private var §_-u8§:Array;
      
      private var §_-5X§:Number = 70;
      
      public var customNames:Array;
      
      private function §_-5b§() : int
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         while(true)
         {
            _loc3_;
            if(_loc2_ >= SafeGlobal.GAME.stock.length)
            {
               break;
            }
            if(SafeGlobal.GAME.stock[_loc2_] > 0)
            {
               _loc3_;
               _loc3_;
               _loc1_++;
               _loc4_;
            }
            _loc2_++;
            _loc3_;
            _loc3_;
         }
         return _loc1_;
      }
      
      private function §_-fM§(param1:int) : int
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         while(_loc2_ < this.§_-g2§.length)
         {
            _loc3_;
            _loc4_;
            if(param1 <= this.§_-g2§[_loc2_])
            {
               _loc3_;
               _loc3_;
               _loc4_;
               _loc4_;
               return _loc2_;
            }
            _loc2_++;
            _loc3_;
         }
         return this.§_-g2§[this.§_-g2§.length - 1];
      }
      
      public function §_-fY§() : *
      {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc1_:int = this.§_-u1§.length - 1;
         while(true)
         {
            _loc9_;
            _loc9_;
            _loc8_;
            if(_loc1_ < 0)
            {
               break;
            }
            removeChild(this.§_-u1§[_loc1_]);
            _loc8_;
            _loc8_;
            this.§_-u1§.splice(_loc1_,1);
            _loc9_;
            _loc9_;
            _loc9_;
            _loc9_;
            _loc9_;
            _loc1_--;
            _loc9_;
            _loc9_;
         }
         _loc8_;
         _loc8_;
         var _loc2_:int = this.§_-5b§() + 1;
         _loc9_;
         _loc9_;
         var _loc3_:int = this.§_-fM§(_loc2_);
         _loc9_;
         _loc9_;
         this.§_-TM§.gotoAndStop("max" + this.§_-g2§[_loc3_]);
         var _loc4_:* = -1;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         _loc8_;
         _loc8_;
         while(_loc7_ < SafeGlobal.GAME.stock.length)
         {
            if(SafeGlobal.GAME.stock[_loc7_] > 0)
            {
               _loc4_++;
               _loc9_;
               this.§_-u1§.push(new WeaponButton(_loc7_));
               addChild(this.§_-u1§[this.§_-u1§.length - 1]);
               _loc9_;
               _loc9_;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc8_;
               this.§_-u1§[this.§_-u1§.length - 1].x = this.§_-86§[_loc3_] + 70 * _loc6_;
               _loc9_;
               _loc9_;
               _loc8_;
               _loc8_;
               _loc8_;
               this.§_-u1§[this.§_-u1§.length - 1].y = this.§_-w2§[_loc3_] + 70 * _loc5_;
               _loc6_++;
               _loc8_;
               _loc8_;
               if(_loc6_ > this.§_-u8§[_loc3_] - 1)
               {
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc6_ = 0;
                  _loc5_++;
               }
            }
            _loc7_++;
            _loc9_;
         }
         _loc8_;
         this.§_-Kj§();
         if(SafeGlobal.§_-Uq§ == null)
         {
            _loc9_;
            _loc9_;
            _loc9_;
            this.§_-u1§.push(new WeaponButton(-1));
            addChild(this.§_-u1§[this.§_-u1§.length - 1]);
            _loc8_;
            _loc8_;
            _loc9_;
            _loc9_;
            _loc9_;
            this.§_-u1§[this.§_-u1§.length - 1].x = this.§_-86§[_loc3_] + 70 * (this.§_-u8§[_loc3_] - 1);
            this.§_-u1§[this.§_-u1§.length - 1].y = this.§_-w2§[_loc3_] + 70 * _loc5_;
         }
      }
      
      public function §_-C8§(param1:int) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:String = null;
         var _loc3_:String = null;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(param1 == -1)
         {
            _loc5_;
            _loc5_;
            _loc2_ = "SKIP TURN";
            _loc5_;
            _loc5_;
            _loc3_ = "SKIP YOUR TURN";
         }
         else
         {
            _loc4_;
            _loc5_;
            _loc5_;
            if(param1 == 31)
            {
               _loc5_;
               _loc5_;
               _loc4_;
               _loc4_;
               _loc2_ = this.customNames[0];
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc3_ = ItemsData.§_-Yk§("W",param1).toUpperCase();
            }
            else
            {
               _loc5_;
               _loc5_;
               _loc5_;
               if(param1 == 39)
               {
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc2_ = this.customNames[1];
                  _loc3_ = ItemsData.§_-Yk§("W",param1).toUpperCase();
               }
               else if(param1 == 40)
               {
                  _loc4_;
                  _loc4_;
                  _loc2_ = this.customNames[2];
                  _loc5_;
                  _loc5_;
                  _loc3_ = ItemsData.§_-Yk§("W",param1).toUpperCase();
                  _loc5_;
                  _loc5_;
               }
               else
               {
                  _loc2_ = ItemsData.§_-u2§("W",param1).toUpperCase();
                  _loc4_;
                  _loc4_;
                  _loc3_ = ItemsData.§_-Yk§("W",param1).toUpperCase();
               }
               
            }
         }
         if(this.§_-TM§ != null)
         {
            this.§_-TM§.title_text.text = _loc2_;
            this.§_-TM§.desc_text.text = _loc3_;
         }
      }
      
      public function §_-H9§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         if(this.§_-TM§ != null)
         {
            _loc2_;
            this.§_-TM§.title_text.text = "WEAPON SELECT";
            _loc1_;
            _loc1_;
            this.§_-TM§.desc_text.text = "MOUSE OVER ICONS TO VIEW WEAPON DETAILS";
         }
      }
      
      public function §_-Kj§() : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:* = false;
         var _loc2_:* = 0;
         while(_loc2_ < this.§_-u1§.length)
         {
            _loc4_;
            _loc3_;
            _loc3_;
            if(this.§_-u1§[_loc2_].id == -1)
            {
               _loc3_;
               _loc3_;
               _loc4_;
               _loc4_;
               this.§_-u1§[_loc2_].num.text = "";
               this.§_-u1§[_loc2_].infsign.visible = true;
               _loc4_;
            }
            else
            {
               _loc4_;
               _loc4_;
               _loc3_;
               if(this.§_-u1§[_loc2_].id == 0)
               {
                  _loc3_;
                  _loc3_;
                  this.§_-u1§[_loc2_].num.text = "";
                  _loc4_;
                  _loc4_;
                  this.§_-u1§[_loc2_].infsign.visible = true;
                  _loc3_;
               }
               else
               {
                  this.§_-u1§[_loc2_].num.text = SafeGlobal.GAME.stock[this.§_-u1§[_loc2_].id];
                  this.§_-u1§[_loc2_].infsign.visible = false;
                  _loc4_;
               }
            }
            if(this.§_-u1§[_loc2_].id != -1)
            {
               if(SafeGlobal.GAME.stock[this.§_-u1§[_loc2_].id] == 0)
               {
                  _loc3_;
                  _loc3_;
                  _loc1_ = true;
               }
            }
            _loc2_++;
         }
         if(_loc1_)
         {
            _loc3_;
            _loc3_;
            this.§_-fY§();
         }
      }
   }
}
