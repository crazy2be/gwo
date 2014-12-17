package §_-5M§
{
   import §_-kZ§.ButtonEditorAddBarrel;
   import §_-kZ§.ButtonEditorAddDrillMine;
   import §_-kZ§.ButtonEditorAddClusterMine;
   import §_-kZ§.ButtonEditorAddSun;
   import §_-kZ§.ButtonEditorAddStandardMine;
   import §_-kZ§.ButtonEditorAddPlanet;
   import §_-kZ§.ButtonEditorAddShield;
   import §_-kZ§.ButtonEditorAddDissolveShield;
   import §_-kZ§.§_-Pd§;
   import §_-kZ§.§_-Nw§;
   import §_-kZ§.§_-5K§;
   import flash.display.MovieClip;
   import §_-kZ§.ButtonEditorAddUnitMarker;
   import §_-kZ§.ButtonEditorTestLevel;
   import §_-kZ§.ButtonEditorAddWormhole;
   import §_-kZ§.ButtonEditorSaveLevel;
   import flash.text.TextFormat;
   
   public class EditorPanelMain extends §_-§
   {
      
      public function EditorPanelMain()
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         super();
         var _loc1_:TextFormat = new TextFormat();
         _loc2_;
         _loc2_;
         _loc1_.letterSpacing = -2;
         this.§_-k2§.name_text.defaultTextFormat = _loc1_;
         this.§_-k2§.mouseEnabled = false;
         _loc2_;
         _loc2_;
         this.§_-k2§.mouseChildren = false;
         this.§_-k2§.visible = false;
         _loc3_;
         this.updateText();
      }
      
      public var §_-IE§:ButtonEditorAddBarrel;
      
      public var §_-5C§:ButtonEditorAddDrillMine;
      
      public var §_-GR§:ButtonEditorAddClusterMine;
      
      public var §_-EB§:ButtonEditorAddSun;
      
      public var §_-HE§:ButtonEditorAddStandardMine;
      
      public var §_-Ya§:ButtonEditorAddPlanet;
      
      public var §_-8I§:ButtonEditorAddShield;
      
      public var §_-e5§:ButtonEditorAddDissolveShield;
      
      public var §_-cM§:§_-Pd§;
      
      public var § if§:§_-Nw§;
      
      public var §_-cz§:§_-5K§;
      
      public var §_-k2§:MovieClip;
      
      public var §_-pq§:ButtonEditorAddUnitMarker;
      
      public var §_-hd§:ButtonEditorTestLevel;
      
      public var §_-7r§:ButtonEditorAddWormhole;
      
      public var §_-gS§:ButtonEditorSaveLevel;
      
      override public function updateText() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(Global.EDITOR.planet_count > 0)
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            _loc1_;
            this.§_-HE§.setDisabled(false);
            _loc2_;
            _loc2_;
            _loc1_;
            _loc1_;
            _loc1_;
            this.§_-GR§.setDisabled(false);
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            this.§_-5C§.setDisabled(false);
            _loc2_;
            _loc2_;
            _loc1_;
            _loc1_;
            this.§_-IE§.setDisabled(false);
            _loc1_;
            _loc2_;
            _loc1_;
            this.§_-pq§.setDisabled(false);
         }
         else
         {
            this.§_-HE§.setDisabled(true);
            this.§_-GR§.setDisabled(true);
            this.§_-5C§.setDisabled(true);
            this.§_-IE§.setDisabled(true);
            _loc1_;
            _loc1_;
            _loc2_;
            this.§_-pq§.setDisabled(true);
            _loc2_;
            _loc2_;
            _loc2_;
            this.§_-hd§.visible = false;
            _loc2_;
         }
         if(Global.EDITOR.units_placed)
         {
            _loc2_;
            _loc2_;
            _loc1_;
            _loc1_;
            _loc1_;
            this.§_-hd§.visible = true;
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            this.§_-pq§.visible = false;
         }
         else
         {
            this.§_-hd§.visible = false;
            _loc1_;
            _loc1_;
            this.§_-pq§.visible = true;
         }
      }
      
      override public function hideLockedContent() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         if(SafeGlobal.editorUnlocked != null)
         {
            if(SafeGlobal.editorUnlocked.length > 0)
            {
               _loc1_;
               _loc1_;
               if(!SafeGlobal.editorUnlocked[Global.EDITOR_PACK1])
               {
                  _loc1_;
                  _loc1_;
                  _loc1_;
                  this.§_-HE§.visible = false;
                  _loc2_;
                  _loc2_;
                  _loc1_;
                  this.§_-8I§.visible = false;
                  _loc1_;
                  _loc1_;
                  _loc1_;
                  _loc1_;
                  _loc1_;
                  this.§_-IE§.visible = false;
                  _loc2_;
                  _loc2_;
               }
               else
               {
                  this.§_-HE§.visible = true;
                  _loc2_;
                  this.§_-8I§.visible = true;
                  _loc1_;
                  this.§_-IE§.visible = true;
                  _loc1_;
               }
               _loc1_;
               _loc1_;
               if(!SafeGlobal.editorUnlocked[Global.EDITOR_PACK2])
               {
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  this.§_-EB§.visible = false;
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  _loc1_;
                  _loc1_;
                  this.§_-GR§.visible = false;
                  _loc1_;
                  _loc1_;
                  _loc1_;
                  _loc1_;
                  this.§_-7r§.visible = false;
               }
               else
               {
                  this.§_-EB§.visible = true;
                  this.§_-GR§.visible = true;
                  _loc1_;
                  this.§_-7r§.visible = true;
               }
               _loc2_;
               _loc2_;
               if(!SafeGlobal.editorUnlocked[Global.EDITOR_PACK3])
               {
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  this.§_-e5§.visible = false;
               }
               else
               {
                  this.§_-e5§.visible = true;
                  _loc1_;
                  _loc1_;
               }
               _loc1_;
               _loc1_;
               _loc2_;
               if(!SafeGlobal.editorUnlocked[Global.EDITOR_PACK4])
               {
                  _loc1_;
                  _loc1_;
                  _loc2_;
                  _loc2_;
                  _loc1_;
                  this.§_-cz§.visible = false;
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  this.§_-5C§.visible = false;
                  _loc1_;
                  _loc1_;
                  _loc1_;
                  this.§ if§.visible = false;
               }
               else
               {
                  this.§_-cz§.visible = true;
                  _loc1_;
                  this.§_-5C§.visible = true;
                  _loc2_;
                  this.§ if§.visible = true;
               }
               if(SafeGlobal.editorUnlocked[Global.EDITOR_PACK5])
               {
               }
            }
         }
      }
      
      public function §_-Us§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-hd§.visible = true;
         _loc1_;
         this.§_-pq§.visible = false;
      }
      
      public function §_-F§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-k2§.y = this.§_-Ya§.y;
         _loc2_;
         _loc2_;
         this.§_-k2§.name_text.text = "PLANET";
         _loc2_;
         this.§_-k2§.count_text.text = String(Global.EDITOR.planet_count + "/" + Global.TOTAL_EDITOR_PLANETS);
         _loc2_;
         _loc2_;
         this.§_-wr§();
         _loc2_;
         this.§_-k2§.visible = true;
      }
      
      public function §_-Vh§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-k2§.y = this.§_-EB§.y;
         _loc1_;
         _loc1_;
         this.§_-k2§.name_text.text = "SUN";
         _loc2_;
         _loc2_;
         this.§_-k2§.count_text.text = String(Global.EDITOR.sun_count + "/" + Global.TOTAL_EDITOR_SUNS);
         _loc1_;
         _loc1_;
         this.§_-wr§();
         _loc1_;
         this.§_-k2§.visible = true;
      }
      
      public function §_-HL§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-k2§.y = this.§ if§.y;
         _loc2_;
         _loc2_;
         this.§_-k2§.name_text.text = "BLACK HOLE";
         _loc1_;
         this.§_-k2§.count_text.text = String(Global.EDITOR.blackhole_count + "/" + Global.§_-EA§);
         _loc2_;
         _loc2_;
         this.§_-wr§();
         _loc2_;
         _loc2_;
         this.§_-k2§.visible = true;
      }
      
      public function §_-8q§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         _loc2_;
         if(param1 == SafeGlobal.MINETYPE_STANDARD)
         {
            this.§_-k2§.y = this.§_-HE§.y;
            this.§_-k2§.name_text.text = "STANDARD MINE";
            _loc2_;
            _loc2_;
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc3_;
            if(param1 == SafeGlobal.MINETYPE_CLUSTER)
            {
               _loc2_;
               _loc2_;
               this.§_-k2§.y = this.§_-GR§.y;
               this.§_-k2§.name_text.text = "CLUSTER MINE";
            }
            else if(param1 == SafeGlobal.MINETYPE_DRILL)
            {
               this.§_-k2§.y = this.§_-5C§.y;
               _loc3_;
               _loc3_;
               this.§_-k2§.name_text.text = "DRILL MINE";
            }
            
         }
         this.§_-k2§.count_text.text = String(Global.EDITOR.mine_count + "/" + Global.TOTAL_EDITOR_MINES);
         this.§_-wr§();
         this.§_-k2§.visible = true;
      }
      
      public function §_-T4§(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         _loc3_;
         if(param1 == SafeGlobal.GATETYPE_SHIELD)
         {
            _loc2_;
            this.§_-k2§.y = this.§_-8I§.y;
            _loc2_;
            _loc2_;
            this.§_-k2§.name_text.text = "BOUNCE SHIELD";
         }
         else if(param1 == SafeGlobal.GATETYPE_DISSOLVESHIELD)
         {
            this.§_-k2§.y = this.§_-e5§.y;
            this.§_-k2§.name_text.text = "DISSOLVE SHIELD";
         }
         
         this.§_-k2§.count_text.text = String(Global.EDITOR.shield_count + "/" + Global.TOTAL_EDITOR_SHIELDS);
         _loc3_;
         _loc3_;
         this.§_-wr§();
         this.§_-k2§.visible = true;
      }
      
      public function §_-fc§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-k2§.y = this.§_-7r§.y;
         _loc1_;
         _loc1_;
         this.§_-k2§.name_text.text = "WORMHOLE";
         _loc1_;
         this.§_-k2§.count_text.text = String(Global.EDITOR.wormhole_count + "/" + Global.TOTAL_EDITOR_WORMHOLES);
         _loc2_;
         _loc2_;
         this.§_-wr§();
         _loc2_;
         _loc2_;
         this.§_-k2§.visible = true;
      }
      
      public function §_-ik§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.§_-k2§.y = this.§_-IE§.y;
         _loc2_;
         _loc2_;
         this.§_-k2§.name_text.text = "ENERGY CORE";
         _loc2_;
         this.§_-k2§.count_text.text = String(Global.EDITOR.barrel_count + "/" + Global.TOTAL_EDITOR_BARRELS);
         _loc2_;
         this.§_-wr§();
         _loc1_;
         _loc1_;
         this.§_-k2§.visible = true;
      }
      
      public function §_-RK§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.§_-k2§.y = this.§_-cz§.y;
         _loc1_;
         _loc1_;
         this.§_-k2§.name_text.text = "SKY MINE";
         _loc2_;
         this.§_-k2§.count_text.text = String(Global.EDITOR.skymine_count + "/" + Global.§_-6Y§);
         _loc2_;
         this.§_-wr§();
         _loc2_;
         this.§_-k2§.visible = true;
      }
      
      public function §_-8w§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.§_-k2§.visible = false;
      }
      
      public function §_-wr§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Number = this.§_-k2§.name_text.textWidth;
         var _loc2_:Number = this.§_-k2§.count_text.textWidth;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(_loc1_ > _loc2_)
         {
            _loc3_;
            _loc3_;
            this.§_-k2§.bg.width = _loc1_ + 20;
            _loc4_;
            _loc4_;
         }
         else if(_loc2_ > _loc1_)
         {
            _loc4_;
            _loc4_;
            this.§_-k2§.bg.width = _loc2_ + 20;
            _loc4_;
            _loc4_;
         }
         else
         {
            this.§_-k2§.bg.width = _loc1_ + 20;
         }
         
      }
   }
}
