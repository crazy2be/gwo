package §_-eR§
{
   import com.funkypear.ui.DropDownMenuSmaller;
   import flash.display.MovieClip;
   import §_-zj§.§_-IU§;
   import flash.utils.getDefinitionByName;
   import flash.display.Sprite;
   
   public class EditorPanelShield extends §_-eB§
   {
      
      public function EditorPanelShield()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.§_-Gk§ = ["BOUNCE","DISSOLVE"];
         _loc1_;
         _loc1_;
         this.§_-IF§ = ["AssetShield","AssetDissolveShield"];
         super();
         _loc2_;
         this.§_-Gw§ = new Array();
         _loc1_;
         _loc2_;
         if(SafeGlobal.editorUnlocked[Global.EDITOR_PACK1])
         {
            _loc2_;
            _loc1_;
            _loc1_;
            _loc2_;
            _loc2_;
            _loc2_;
            this.§_-Gw§.push(this.§_-Gk§[0]);
            _loc2_;
         }
         _loc1_;
         _loc1_;
         if(SafeGlobal.editorUnlocked[Global.EDITOR_PACK3])
         {
            _loc2_;
            _loc2_;
            this.§_-Gw§.push(this.§_-Gk§[1]);
         }
         this.§_-lH§.init(this.§_-Gw§,this);
         _loc1_;
         this.§_-UW§();
      }
      
      public var §_-lH§:DropDownMenuSmaller;
      
      public var §_-XW§:MovieClip;
      
      public var §_-nz§:SliderShieldAngle;
      
      private var §_-Gk§:Array;
      
      private var §_-IF§:Array;
      
      public var §_-Gw§:Array;
      
      private var §_-7V§:int = 0;
      
      public function handleClickDropDown(param1:String, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc3_;
         if(param2 != this.§_-7V§)
         {
            _loc4_;
            this.§_-TM§(param2);
         }
      }
      
      public function §_-Lk§(param1:§_-IU§) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.§_-nz§.§_-rV§(param1.rotation);
         _loc2_;
         this.§_-7V§ = param1.shieldType;
         _loc3_;
         _loc3_;
         this.§_-lH§.§_-ww§(this.§_-7V§);
         _loc2_;
         this.§_-UW§();
      }
      
      private function §_-UW§() : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         _loc4_;
         if(this.§_-XW§.numChildren > 0)
         {
            while(this.§_-XW§.numChildren > 0)
            {
               this.§_-XW§.removeChildAt(0);
               _loc4_;
               _loc4_;
            }
         }
         var _loc1_:String = String(this.§_-IF§[this.§_-7V§]);
         var _loc2_:Class = getDefinitionByName(_loc1_) as Class;
         var _loc3_:Sprite = new _loc2_() as Sprite;
         _loc5_;
         _loc3_.rotation = -45;
         _loc4_;
         this.§_-XW§.addChild(_loc3_);
      }
      
      public function §_-TM§(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.§_-7V§ = param1;
         _loc3_;
         Global.EDITOR.swapShieldType(Global.EDITOR.selected,this.§_-7V§);
         _loc2_;
         _loc2_;
         this.§_-UW§();
      }
   }
}
