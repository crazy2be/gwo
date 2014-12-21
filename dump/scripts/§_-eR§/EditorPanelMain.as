package §_-eR§
{
   import §_-JG§.ButtonEditorAddBarrel;
   import §_-JG§.ButtonEditorAddDrillMine;
   import §_-JG§.ButtonEditorAddClusterMine;
   import §_-JG§.ButtonEditorAddSun;
   import §_-JG§.ButtonEditorAddStandardMine;
   import §_-JG§.ButtonEditorAddPlanet;
   import §_-JG§.ButtonEditorAddShield;
   import §_-JG§.ButtonEditorAddDissolveShield;
   import §_-JG§.§_-DG§;
   import §_-JG§.§_-hf§;
   import §_-JG§.§_-0R§;
   import flash.display.MovieClip;
   import §_-JG§.ButtonEditorAddUnitMarker;
   import §_-JG§.ButtonEditorTestLevel;
   import §_-JG§.ButtonEditorAddWormhole;
   import §_-JG§.ButtonEditorSaveLevel;
   import flash.text.TextFormat;
   
   public class EditorPanelMain extends §_-eB§
   {
      
      public function EditorPanelMain()
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         super();
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.letterSpacing = -2;
         this.§_-Yu§.name_text.defaultTextFormat = _loc1_;
         this.§_-Yu§.mouseEnabled = false;
         _loc3_;
         _loc3_;
         this.§_-Yu§.mouseChildren = false;
         _loc2_;
         this.§_-Yu§.visible = false;
         _loc2_;
         _loc2_;
         this.updateText();
      }
      
      public var §_-Hb§:ButtonEditorAddBarrel;
      
      public var §_-Qr§:ButtonEditorAddDrillMine;
      
      public var §_-qc§:ButtonEditorAddClusterMine;
      
      public var §_-q1§:ButtonEditorAddSun;
      
      public var §_-P2§:ButtonEditorAddStandardMine;
      
      public var §continue§:ButtonEditorAddPlanet;
      
      public var §_-6F§:ButtonEditorAddShield;
      
      public var §_-4u§:ButtonEditorAddDissolveShield;
      
      public var §_-qJ§:§_-DG§;
      
      public var §_-Jf§:§_-hf§;
      
      public var §_-AW§:§_-0R§;
      
      public var §_-Yu§:MovieClip;
      
      public var §_-Y3§:ButtonEditorAddUnitMarker;
      
      public var §_-oO§:ButtonEditorTestLevel;
      
      public var §_-xr§:ButtonEditorAddWormhole;
      
      public var §_-Ca§:ButtonEditorSaveLevel;
      
      override public function updateText() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(Global.EDITOR.planet_count > 0)
         {
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            this.§_-P2§.setDisabled(false);
            _loc2_;
            _loc2_;
            _loc1_;
            _loc1_;
            this.§_-qc§.setDisabled(false);
            _loc2_;
            _loc2_;
            this.§_-Qr§.setDisabled(false);
            _loc2_;
            _loc2_;
            this.§_-Hb§.setDisabled(false);
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            this.§_-Y3§.setDisabled(false);
            _loc1_;
         }
         else
         {
            this.§_-P2§.setDisabled(true);
            this.§_-qc§.setDisabled(true);
            this.§_-Qr§.setDisabled(true);
            this.§_-Hb§.setDisabled(true);
            _loc2_;
            _loc1_;
            this.§_-Y3§.setDisabled(true);
            _loc1_;
            _loc1_;
            _loc1_;
            this.§_-oO§.visible = false;
            _loc1_;
            _loc1_;
         }
         if(Global.EDITOR.units_placed)
         {
            _loc1_;
            _loc1_;
            _loc2_;
            _loc2_;
            this.§_-oO§.visible = true;
            _loc1_;
            _loc1_;
            this.§_-Y3§.visible = false;
            _loc2_;
            _loc2_;
         }
         else
         {
            this.§_-oO§.visible = false;
            this.§_-Y3§.visible = true;
         }
      }
      
      override public function hideLockedContent() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(SafeGlobal.editorUnlocked != null)
         {
            _loc2_;
            if(SafeGlobal.editorUnlocked.length > 0)
            {
               _loc1_;
               _loc2_;
               if(!SafeGlobal.editorUnlocked[Global.EDITOR_PACK1])
               {
                  _loc2_;
                  _loc1_;
                  this.§_-P2§.visible = false;
                  _loc1_;
                  _loc1_;
                  _loc1_;
                  this.§_-6F§.visible = false;
                  _loc2_;
                  _loc1_;
                  this.§_-Hb§.visible = false;
               }
               else
               {
                  this.§_-P2§.visible = true;
                  this.§_-6F§.visible = true;
                  _loc1_;
                  _loc1_;
                  this.§_-Hb§.visible = true;
               }
               _loc1_;
               if(!SafeGlobal.editorUnlocked[Global.EDITOR_PACK2])
               {
                  _loc2_;
                  _loc1_;
                  _loc2_;
                  _loc2_;
                  this.§_-q1§.visible = false;
                  _loc2_;
                  _loc2_;
                  _loc1_;
                  _loc1_;
                  this.§_-qc§.visible = false;
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  this.§_-xr§.visible = false;
                  _loc2_;
               }
               else
               {
                  this.§_-q1§.visible = true;
                  this.§_-qc§.visible = true;
                  _loc2_;
                  _loc2_;
                  this.§_-xr§.visible = true;
               }
               _loc1_;
               if(!SafeGlobal.editorUnlocked[Global.EDITOR_PACK3])
               {
                  _loc2_;
                  _loc1_;
                  _loc1_;
                  _loc1_;
                  _loc1_;
                  this.§_-4u§.visible = false;
                  _loc1_;
                  _loc1_;
               }
               else
               {
                  this.§_-4u§.visible = true;
               }
               _loc2_;
               _loc2_;
               if(!SafeGlobal.editorUnlocked[Global.EDITOR_PACK4])
               {
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  _loc1_;
                  _loc1_;
                  this.§_-AW§.visible = false;
                  _loc1_;
                  _loc1_;
                  _loc2_;
                  _loc2_;
                  _loc1_;
                  _loc1_;
                  this.§_-Qr§.visible = false;
                  _loc2_;
                  _loc2_;
                  _loc1_;
                  this.§_-Jf§.visible = false;
                  _loc2_;
               }
               else
               {
                  this.§_-AW§.visible = true;
                  this.§_-Qr§.visible = true;
                  _loc2_;
                  _loc2_;
                  this.§_-Jf§.visible = true;
                  _loc1_;
               }
               if(SafeGlobal.editorUnlocked[Global.EDITOR_PACK5])
               {
               }
            }
         }
      }
      
      public function §_-0n§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-oO§.visible = true;
         _loc1_;
         _loc1_;
         this.§_-Y3§.visible = false;
      }
      
      public function §_-gP§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-Yu§.y = this.§continue§.y;
         _loc1_;
         this.§_-Yu§.name_text.text = "PLANET";
         _loc1_;
         this.§_-Yu§.count_text.text = String(Global.EDITOR.planet_count + "/" + Global.TOTAL_EDITOR_PLANETS);
         _loc2_;
         _loc2_;
         this.§_-Jv§();
         _loc2_;
         this.§_-Yu§.visible = true;
      }
      
      public function §_-gb§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.§_-Yu§.y = this.§_-q1§.y;
         _loc1_;
         _loc1_;
         this.§_-Yu§.name_text.text = "SUN";
         _loc1_;
         this.§_-Yu§.count_text.text = String(Global.EDITOR.sun_count + "/" + Global.TOTAL_EDITOR_SUNS);
         _loc1_;
         _loc1_;
         this.§_-Jv§();
         _loc2_;
         this.§_-Yu§.visible = true;
      }
      
      public function §_-Yi§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-Yu§.y = this.§_-Jf§.y;
         _loc2_;
         this.§_-Yu§.name_text.text = "BLACK HOLE";
         _loc1_;
         this.§_-Yu§.count_text.text = String(Global.EDITOR.blackhole_count + "/" + Global.§_-Tq§);
         _loc2_;
         _loc2_;
         this.§_-Jv§();
         _loc1_;
         this.§_-Yu§.visible = true;
      }
      
      public function §_-UT§(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         if(param1 == SafeGlobal.MINETYPE_STANDARD)
         {
            this.§_-Yu§.y = this.§_-P2§.y;
            _loc3_;
            _loc3_;
            this.§_-Yu§.name_text.text = "STANDARD MINE";
         }
         else
         {
            _loc3_;
            _loc2_;
            _loc2_;
            if(param1 == SafeGlobal.MINETYPE_CLUSTER)
            {
               _loc2_;
               _loc2_;
               this.§_-Yu§.y = this.§_-qc§.y;
               this.§_-Yu§.name_text.text = "CLUSTER MINE";
            }
            else if(param1 == SafeGlobal.MINETYPE_DRILL)
            {
               _loc2_;
               this.§_-Yu§.y = this.§_-Qr§.y;
               _loc3_;
               _loc3_;
               this.§_-Yu§.name_text.text = "DRILL MINE";
               _loc3_;
               _loc3_;
            }
            
         }
         this.§_-Yu§.count_text.text = String(Global.EDITOR.mine_count + "/" + Global.TOTAL_EDITOR_MINES);
         this.§_-Jv§();
         _loc3_;
         _loc3_;
         this.§_-Yu§.visible = true;
      }
      
      public function §_-Lm§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         if(param1 == SafeGlobal.GATETYPE_SHIELD)
         {
            _loc2_;
            _loc2_;
            this.§_-Yu§.y = this.§_-6F§.y;
            this.§_-Yu§.name_text.text = "BOUNCE SHIELD";
            _loc2_;
         }
         else if(param1 == SafeGlobal.GATETYPE_DISSOLVESHIELD)
         {
            this.§_-Yu§.y = this.§_-4u§.y;
            this.§_-Yu§.name_text.text = "DISSOLVE SHIELD";
         }
         
         this.§_-Yu§.count_text.text = String(Global.EDITOR.shield_count + "/" + Global.TOTAL_EDITOR_SHIELDS);
         this.§_-Jv§();
         _loc3_;
         _loc3_;
         this.§_-Yu§.visible = true;
      }
      
      public function §_-ej§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-Yu§.y = this.§_-xr§.y;
         _loc1_;
         this.§_-Yu§.name_text.text = "WORMHOLE";
         _loc1_;
         this.§_-Yu§.count_text.text = String(Global.EDITOR.wormhole_count + "/" + Global.TOTAL_EDITOR_WORMHOLES);
         _loc2_;
         this.§_-Jv§();
         _loc1_;
         _loc1_;
         this.§_-Yu§.visible = true;
      }
      
      public function §_-HF§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-Yu§.y = this.§_-Hb§.y;
         _loc1_;
         _loc1_;
         this.§_-Yu§.name_text.text = "ENERGY CORE";
         _loc1_;
         this.§_-Yu§.count_text.text = String(Global.EDITOR.barrel_count + "/" + Global.TOTAL_EDITOR_BARRELS);
         _loc2_;
         this.§_-Jv§();
         _loc2_;
         _loc2_;
         this.§_-Yu§.visible = true;
      }
      
      public function §_-ZS§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-Yu§.y = this.§_-AW§.y;
         _loc2_;
         _loc2_;
         this.§_-Yu§.name_text.text = "SKY MINE";
         _loc1_;
         this.§_-Yu§.count_text.text = String(Global.EDITOR.skymine_count + "/" + Global.§_-AH§);
         _loc1_;
         _loc1_;
         this.§_-Jv§();
         _loc1_;
         _loc1_;
         this.§_-Yu§.visible = true;
      }
      
      public function §_-vB§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.§_-Yu§.visible = false;
      }
      
      public function §_-Jv§() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Number = this.§_-Yu§.name_text.textWidth;
         var _loc2_:Number = this.§_-Yu§.count_text.textWidth;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(_loc1_ > _loc2_)
         {
            _loc4_;
            _loc4_;
            this.§_-Yu§.bg.width = _loc1_ + 20;
            _loc4_;
         }
         else if(_loc2_ > _loc1_)
         {
            _loc4_;
            this.§_-Yu§.bg.width = _loc2_ + 20;
            _loc3_;
            _loc3_;
         }
         else
         {
            this.§_-Yu§.bg.width = _loc1_ + 20;
         }
         
      }
   }
}
