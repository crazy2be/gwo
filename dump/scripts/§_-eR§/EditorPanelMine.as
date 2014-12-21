package §_-eR§
{
   import com.funkypear.ui.DropDownMenuSmaller;
   import flash.display.MovieClip;
   import §_-zj§.§_-ZA§;
   import flash.utils.getDefinitionByName;
   import flash.display.Sprite;
   
   public class EditorPanelMine extends §_-eB§
   {
      
      public function EditorPanelMine()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.§set § = ["STANDARD","CLUSTER","DRILL"];
         this.§_-IF§ = ["AssetStandardMine","AssetClusterMine","AssetDrillMine"];
         super();
         _loc1_;
         _loc1_;
         this.§_-Y7§ = new Array();
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         if(SafeGlobal.editorUnlocked[Global.EDITOR_PACK1])
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            _loc1_;
            _loc1_;
            this.§_-Y7§.push(this.§set §[0]);
         }
         _loc1_;
         _loc1_;
         if(SafeGlobal.editorUnlocked[Global.EDITOR_PACK2])
         {
            _loc1_;
            _loc1_;
            _loc1_;
            _loc2_;
            _loc2_;
            this.§_-Y7§.push(this.§set §[1]);
         }
         _loc1_;
         _loc1_;
         if(SafeGlobal.editorUnlocked[Global.EDITOR_PACK4])
         {
            _loc1_;
            _loc1_;
            this.§_-Y7§.push(this.§set §[2]);
            _loc2_;
            _loc2_;
         }
         this.§_-lH§.init(this.§_-Y7§,this);
         this.§_-G3§();
      }
      
      public var §_-lH§:DropDownMenuSmaller;
      
      public var §_-cE§:MovieClip;
      
      private var §set §:Array;
      
      private var §_-IF§:Array;
      
      public var §_-Y7§:Array;
      
      private var §_-T7§:int = 0;
      
      public function handleClickDropDown(param1:String, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         if(param2 != this.§_-T7§)
         {
            _loc3_;
            this.§_-A5§(param2);
         }
      }
      
      public function §_-BA§(param1:§_-ZA§) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.§_-T7§ = param1.mineType;
         _loc3_;
         this.§_-lH§.§_-ww§(this.§_-T7§);
         _loc3_;
         this.§_-G3§();
      }
      
      private function §_-G3§() : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         _loc4_;
         if(this.§_-cE§.numChildren > 0)
         {
            while(this.§_-cE§.numChildren > 0)
            {
               this.§_-cE§.removeChildAt(0);
               _loc4_;
               _loc4_;
            }
         }
         var _loc1_:String = String(this.§_-IF§[this.§_-T7§]);
         var _loc2_:Class = getDefinitionByName(_loc1_) as Class;
         var _loc3_:Sprite = new _loc2_() as Sprite;
         _loc5_;
         _loc3_.scaleX = 3;
         _loc4_;
         _loc3_.scaleY = 3;
         _loc4_;
         this.§_-cE§.addChild(_loc3_);
      }
      
      public function §_-A5§(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.§_-T7§ = param1;
         _loc3_;
         Global.EDITOR.swapMineType(Global.EDITOR.selected,this.§_-T7§);
         _loc2_;
         _loc2_;
         this.§_-G3§();
      }
   }
}
