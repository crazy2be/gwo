package §_-5M§
{
   import com.funkypear.ui.DropDownMenuSmaller;
   import flash.display.MovieClip;
   import §_-HM§.§_-FS§;
   import flash.utils.getDefinitionByName;
   import flash.display.Sprite;
   
   public class EditorPanelShield extends §_-§
   {
      
      public function EditorPanelShield()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.§_-So§ = ["BOUNCE","DISSOLVE"];
         this.§_-2t§ = ["AssetShield","AssetDissolveShield"];
         super();
         _loc1_;
         _loc1_;
         this.§_-d2§ = new Array();
         _loc2_;
         _loc1_;
         if(SafeGlobal.editorUnlocked[Global.EDITOR_PACK1])
         {
            _loc2_;
            _loc2_;
            _loc1_;
            _loc2_;
            this.§_-d2§.push(this.§_-So§[0]);
            _loc2_;
            _loc2_;
         }
         _loc1_;
         if(SafeGlobal.editorUnlocked[Global.EDITOR_PACK3])
         {
            _loc2_;
            _loc2_;
            this.§_-d2§.push(this.§_-So§[1]);
         }
         this.§_-fU§.init(this.§_-d2§,this);
         this.§_-fa§();
      }
      
      public var §_-fU§:DropDownMenuSmaller;
      
      public var §_-W3§:MovieClip;
      
      public var §_-Zk§:SliderShieldAngle;
      
      private var §_-So§:Array;
      
      private var §_-2t§:Array;
      
      public var §_-d2§:Array;
      
      private var §_-RL§:int = 0;
      
      public function handleClickDropDown(param1:String, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc3_;
         if(param2 != this.§_-RL§)
         {
            _loc4_;
            this.§_-1q§(param2);
         }
      }
      
      public function §_-6H§(param1:§_-FS§) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.§_-Zk§.§_-Xm§(param1.rotation);
         _loc2_;
         this.§_-RL§ = param1.shieldType;
         _loc2_;
         _loc2_;
         this.§_-fU§.§_-mt§(this.§_-RL§);
         _loc3_;
         _loc3_;
         this.§_-fa§();
      }
      
      private function §_-fa§() : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         if(this.§_-W3§.numChildren > 0)
         {
            while(this.§_-W3§.numChildren > 0)
            {
               this.§_-W3§.removeChildAt(0);
               _loc4_;
            }
         }
         var _loc1_:String = String(this.§_-2t§[this.§_-RL§]);
         var _loc2_:Class = getDefinitionByName(_loc1_) as Class;
         var _loc3_:Sprite = new _loc2_() as Sprite;
         _loc5_;
         _loc3_.rotation = -45;
         _loc5_;
         this.§_-W3§.addChild(_loc3_);
      }
      
      public function §_-1q§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-RL§ = param1;
         _loc3_;
         _loc3_;
         Global.EDITOR.swapShieldType(Global.EDITOR.selected,this.§_-RL§);
         _loc2_;
         this.§_-fa§();
      }
   }
}
