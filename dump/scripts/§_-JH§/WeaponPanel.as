package §_-JH§
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import §_-bY§.WeaponButton;
   import §_-Ff§.ItemsData;
   
   public class WeaponPanel extends Sprite
   {
      
      public function WeaponPanel()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-1i§ = new Array();
         this.§_-2N§ = [4,8,12,16,20,25,30,35,40,45,50,55];
         this.§_-Fc§ = [-210,-210,-210,-210,-210,-280,-350,-420,-490,-560,-630,-700];
         _loc1_;
         this.§_-kP§ = [-70,-140,-210,-280,-350,-350,-350,-350,-350,-350,-350,-350];
         this.rows = [1,2,3,4,5,5,5,5,5,5,5,5];
         this.§_-8e§ = [4,4,4,4,4,5,6,7,8,9,10,11];
         this.customNames = ["CUSTOM WEAPON 1","CUSTOM WEAPON 2","CUSTOM WEAPON 3"];
         super();
         if(this.§_-kh§ != null)
         {
            this.§_-kh§.title_text.text = "WEAPON SELECT";
            this.§_-kh§.desc_text.text = "MOUSE OVER ICONS TO VIEW WEAPON DETAILS";
         }
      }
      
      public var §_-kh§:MovieClip;
      
      public var §_-1i§:Array;
      
      private var §_-2N§:Array;
      
      private var §_-Fc§:Array;
      
      private var §_-kP§:Array;
      
      private var rows:Array;
      
      private var §_-8e§:Array;
      
      private var §_-lB§:Number = 70;
      
      public var customNames:Array;
      
      private function §_-DJ§() : int
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         while(true)
         {
            _loc3_;
            _loc3_;
            if(_loc2_ >= SafeGlobal.GAME.stock.length)
            {
               break;
            }
            if(SafeGlobal.GAME.stock[_loc2_] > 0)
            {
               _loc3_;
               _loc1_++;
               _loc3_;
            }
            _loc2_++;
            _loc4_;
            _loc4_;
         }
         return _loc1_;
      }
      
      private function §_-iv§(param1:int) : int
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         while(_loc2_ < this.§_-2N§.length)
         {
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            if(param1 <= this.§_-2N§[_loc2_])
            {
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               return _loc2_;
            }
            _loc2_++;
            _loc4_;
            _loc4_;
         }
         return this.§_-2N§[this.§_-2N§.length - 1];
      }
      
      public function §_-HV§() : *
      {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc1_:int = this.§_-1i§.length - 1;
         while(true)
         {
            _loc9_;
            _loc9_;
            _loc9_;
            if(_loc1_ < 0)
            {
               break;
            }
            removeChild(this.§_-1i§[_loc1_]);
            _loc8_;
            _loc8_;
            this.§_-1i§.splice(_loc1_,1);
            _loc8_;
            _loc9_;
            _loc8_;
            _loc8_;
            _loc1_--;
            _loc8_;
            _loc8_;
         }
         _loc9_;
         var _loc2_:int = this.§_-DJ§() + 1;
         _loc8_;
         _loc8_;
         var _loc3_:int = this.§_-iv§(_loc2_);
         _loc9_;
         this.§_-kh§.gotoAndStop("max" + this.§_-2N§[_loc3_]);
         var _loc4_:* = -1;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         while(_loc7_ < SafeGlobal.GAME.stock.length)
         {
            if(SafeGlobal.GAME.stock[_loc7_] > 0)
            {
               _loc4_++;
               _loc9_;
               this.§_-1i§.push(new WeaponButton(_loc7_));
               _loc9_;
               addChild(this.§_-1i§[this.§_-1i§.length - 1]);
               _loc8_;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc8_;
               this.§_-1i§[this.§_-1i§.length - 1].x = this.§_-Fc§[_loc3_] + 70 * _loc6_;
               _loc8_;
               _loc8_;
               _loc9_;
               _loc8_;
               _loc9_;
               _loc9_;
               this.§_-1i§[this.§_-1i§.length - 1].y = this.§_-kP§[_loc3_] + 70 * _loc5_;
               _loc6_++;
               _loc9_;
               _loc9_;
               if(_loc6_ > this.§_-8e§[_loc3_] - 1)
               {
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc6_ = 0;
                  _loc9_;
                  _loc9_;
                  _loc5_++;
               }
            }
            _loc7_++;
         }
         this.§_-fw§();
         if(SafeGlobal.§_-vX§ == null)
         {
            _loc8_;
            _loc8_;
            _loc8_;
            _loc8_;
            this.§_-1i§.push(new WeaponButton(-1));
            _loc8_;
            addChild(this.§_-1i§[this.§_-1i§.length - 1]);
            _loc9_;
            _loc9_;
            _loc8_;
            _loc8_;
            _loc9_;
            this.§_-1i§[this.§_-1i§.length - 1].x = this.§_-Fc§[_loc3_] + 70 * (this.§_-8e§[_loc3_] - 1);
            this.§_-1i§[this.§_-1i§.length - 1].y = this.§_-kP§[_loc3_] + 70 * _loc5_;
         }
      }
      
      public function §_-mm§(param1:int) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:String = null;
         var _loc3_:String = null;
         _loc4_;
         _loc5_;
         if(param1 == -1)
         {
            _loc5_;
            _loc2_ = "SKIP TURN";
            _loc5_;
            _loc3_ = "SKIP YOUR TURN";
         }
         else
         {
            _loc5_;
            _loc5_;
            _loc5_;
            if(param1 == 31)
            {
               _loc5_;
               _loc5_;
               _loc4_;
               _loc4_;
               _loc5_;
               _loc2_ = this.customNames[0];
               _loc5_;
               _loc5_;
               _loc4_;
               _loc3_ = ItemsData.§_-wf§("W",param1).toUpperCase();
               _loc5_;
            }
            else
            {
               _loc5_;
               _loc4_;
               if(param1 == 39)
               {
                  _loc4_;
                  _loc5_;
                  _loc5_;
                  _loc2_ = this.customNames[1];
                  _loc5_;
                  _loc3_ = ItemsData.§_-wf§("W",param1).toUpperCase();
                  _loc5_;
               }
               else if(param1 == 40)
               {
                  _loc2_ = this.customNames[2];
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc3_ = ItemsData.§_-wf§("W",param1).toUpperCase();
               }
               else
               {
                  _loc2_ = ItemsData.§_-7L§("W",param1).toUpperCase();
                  _loc4_;
                  _loc4_;
                  _loc3_ = ItemsData.§_-wf§("W",param1).toUpperCase();
               }
               
            }
         }
         if(this.§_-kh§ != null)
         {
            _loc5_;
            _loc5_;
            this.§_-kh§.title_text.text = _loc2_;
            this.§_-kh§.desc_text.text = _loc3_;
         }
      }
      
      public function § if§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         if(this.§_-kh§ != null)
         {
            _loc2_;
            _loc2_;
            this.§_-kh§.title_text.text = "WEAPON SELECT";
            _loc2_;
            _loc2_;
            this.§_-kh§.desc_text.text = "MOUSE OVER ICONS TO VIEW WEAPON DETAILS";
         }
      }
      
      public function §_-fw§() : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:* = false;
         var _loc2_:* = 0;
         while(_loc2_ < this.§_-1i§.length)
         {
            _loc3_;
            _loc3_;
            if(this.§_-1i§[_loc2_].id == -1)
            {
               _loc4_;
               _loc4_;
               _loc4_;
               this.§_-1i§[_loc2_].num.text = "";
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               this.§_-1i§[_loc2_].infsign.visible = true;
            }
            else
            {
               _loc4_;
               _loc4_;
               if(this.§_-1i§[_loc2_].id == 0)
               {
                  _loc3_;
                  _loc3_;
                  this.§_-1i§[_loc2_].num.text = "";
                  _loc4_;
                  _loc4_;
                  this.§_-1i§[_loc2_].infsign.visible = true;
               }
               else
               {
                  _loc4_;
                  this.§_-1i§[_loc2_].num.text = SafeGlobal.GAME.stock[this.§_-1i§[_loc2_].id];
                  this.§_-1i§[_loc2_].infsign.visible = false;
               }
            }
            if(this.§_-1i§[_loc2_].id != -1)
            {
               if(SafeGlobal.GAME.stock[this.§_-1i§[_loc2_].id] == 0)
               {
                  _loc4_;
                  _loc4_;
                  _loc1_ = true;
                  _loc3_;
               }
            }
            _loc2_++;
         }
         if(_loc1_)
         {
            this.§_-HV§();
         }
      }
   }
}
