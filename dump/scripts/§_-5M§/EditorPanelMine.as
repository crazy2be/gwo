package §_-5M§
{
   import com.funkypear.ui.DropDownMenuSmaller;
   import flash.display.MovieClip;
   import §_-HM§.§_-s2§;
   import flash.utils.getDefinitionByName;
   import flash.display.Sprite;
   
   public class EditorPanelMine extends §_-§
   {
      
      public function EditorPanelMine()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.§_-5L§ = ["STANDARD","CLUSTER","DRILL"];
         _loc2_;
         _loc2_;
         this.§_-2t§ = ["AssetStandardMine","AssetClusterMine","AssetDrillMine"];
         _loc1_;
         super();
         _loc2_;
         this.§_-Ae§ = new Array();
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         if(SafeGlobal.editorUnlocked[Global.EDITOR_PACK1])
         {
            _loc2_;
            _loc2_;
            _loc1_;
            _loc1_;
            _loc1_;
            this.§_-Ae§.push(this.§_-5L§[0]);
         }
         _loc2_;
         _loc2_;
         _loc2_;
         if(SafeGlobal.editorUnlocked[Global.EDITOR_PACK2])
         {
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            this.§_-Ae§.push(this.§_-5L§[1]);
         }
         _loc2_;
         _loc2_;
         if(SafeGlobal.editorUnlocked[Global.EDITOR_PACK4])
         {
            this.§_-Ae§.push(this.§_-5L§[2]);
            _loc2_;
         }
         this.§_-fU§.init(this.§_-Ae§,this);
         _loc1_;
         _loc1_;
         this.§_-sn§();
      }
      
      public var §_-fU§:DropDownMenuSmaller;
      
      public var §_-Ho§:MovieClip;
      
      private var §_-5L§:Array;
      
      private var §_-2t§:Array;
      
      public var §_-Ae§:Array;
      
      private var §_-Gk§:int = 0;
      
      public function handleClickDropDown(param1:String, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc3_;
         if(param2 != this.§_-Gk§)
         {
            _loc4_;
            _loc4_;
            this.§_-Dj§(param2);
         }
      }
      
      public function §_-r1§(param1:§_-s2§) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-Gk§ = param1.mineType;
         _loc3_;
         _loc3_;
         this.§_-fU§.§_-mt§(this.§_-Gk§);
         _loc3_;
         _loc3_;
         this.§_-sn§();
      }
      
      private function §_-sn§() : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         if(this.§_-Ho§.numChildren > 0)
         {
            while(this.§_-Ho§.numChildren > 0)
            {
               this.§_-Ho§.removeChildAt(0);
               _loc5_;
            }
         }
         var _loc1_:String = String(this.§_-2t§[this.§_-Gk§]);
         var _loc2_:Class = getDefinitionByName(_loc1_) as Class;
         var _loc3_:Sprite = new _loc2_() as Sprite;
         _loc4_;
         _loc4_;
         _loc3_.scaleX = 3;
         _loc4_;
         _loc4_;
         _loc3_.scaleY = 3;
         _loc5_;
         _loc5_;
         this.§_-Ho§.addChild(_loc3_);
      }
      
      public function §_-Dj§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.§_-Gk§ = param1;
         _loc2_;
         _loc2_;
         Global.EDITOR.swapMineType(Global.EDITOR.selected,this.§_-Gk§);
         _loc2_;
         this.§_-sn§();
      }
   }
}
