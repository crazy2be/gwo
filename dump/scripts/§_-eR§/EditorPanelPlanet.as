package §_-eR§
{
   import flash.text.TextField;
   import flash.display.MovieClip;
   import §_-zj§.PlanetObject;
   import flash.utils.getDefinitionByName;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class EditorPanelPlanet extends §_-eB§
   {
      
      public function EditorPanelPlanet()
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         super();
         _loc3_;
         this.unlocked_planets = new Array();
         var _loc1_:* = 0;
         while(_loc1_ < Global.TOTAL_PLANETS)
         {
            _loc3_;
            _loc2_;
            if(Global.planets_unlocked[_loc1_] == true)
            {
               _loc3_;
               _loc3_;
               this.unlocked_planets.push(_loc1_);
            }
            _loc1_++;
         }
         this.§_-tX§ = 0;
         this.§_-eD§ = this.unlocked_planets.length - 1;
         this.§_-qx§.mouseEnabled = true;
         _loc2_;
         _loc2_;
         this.§_-qx§.mouseChildren = false;
         this.§_-qx§.buttonMode = true;
         _loc2_;
         this.§_-qx§.addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
         this.§_-qx§.addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
         this.§_-qx§.addEventListener(MouseEvent.CLICK,this.§_-k§,false,0,true);
         this.§_-bG§.mouseEnabled = true;
         this.§_-bG§.mouseChildren = false;
         this.§_-bG§.buttonMode = true;
         _loc2_;
         _loc2_;
         this.§_-bG§.addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
         this.§_-bG§.addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
         this.§_-bG§.addEventListener(MouseEvent.CLICK,this.§_-j5§,false,0,true);
      }
      
      public var §_-q3§:TextField;
      
      public var §_-bG§:MovieClip;
      
      public var §_-8Z§:TextField;
      
      public var §_-f6§:SliderPlanetSize;
      
      public var §_-qx§:MovieClip;
      
      public var §_-Hh§:TextField;
      
      public var §_-WC§:MovieClip;
      
      public var §_-ZE§:SliderPlanetRadioactivity;
      
      public var §_-lW§:OnOffShield;
      
      public var unlocked_planets:Array;
      
      private var §_-G-§:int = 0;
      
      private var §_-a1§:int = 0;
      
      private var §_-tX§:int = 0;
      
      private var §_-eD§:int = 49;
      
      override public function hideLockedContent() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         if(!SafeGlobal.editorUnlocked[Global.EDITOR_PACK3])
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            this.§_-lW§.visible = false;
            _loc1_;
            _loc2_;
            _loc2_;
            _loc2_;
            this.§_-ZE§.visible = false;
            this.§_-8Z§.visible = false;
            this.§_-Hh§.visible = false;
            _loc1_;
            _loc1_;
         }
         else
         {
            this.§_-lW§.visible = true;
            _loc2_;
            this.§_-ZE§.visible = true;
            _loc1_;
            this.§_-8Z§.visible = true;
            this.§_-Hh§.visible = true;
         }
      }
      
      public function §_-74§(param1:PlanetObject) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc3_;
         this.§_-a1§ = param1.gfxID;
         var _loc2_:* = 0;
         while(_loc2_ < this.unlocked_planets.length)
         {
            if(this.unlocked_planets[_loc2_] == this.§_-a1§)
            {
               _loc4_;
               this.§_-G-§ = _loc2_;
            }
            _loc2_++;
         }
         _loc3_;
         _loc3_;
         this.§_-fa§();
         this.§_-f6§.§_-rV§(param1.radius);
         _loc3_;
         _loc3_;
         this.§_-lW§.init(param1.shield);
         this.§_-ZE§.§_-rV§(param1.radioactiveValue);
      }
      
      public function §_-fa§() : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         this.§_-q3§.text = String(this.§_-G-§ + 1 + " / " + (this.§_-eD§ + 1));
         _loc4_;
         _loc4_;
         if(this.§_-WC§.numChildren > 0)
         {
            while(this.§_-WC§.numChildren > 0)
            {
               this.§_-WC§.removeChildAt(0);
               _loc4_;
            }
         }
         var _loc1_:String = String("Planet" + (this.§_-a1§ + 1));
         var _loc2_:Class = getDefinitionByName(_loc1_) as Class;
         var _loc3_:Sprite = new _loc2_() as Sprite;
         _loc5_;
         _loc5_;
         _loc3_.width = 100;
         _loc5_;
         _loc3_.height = 100;
         _loc4_;
         this.§_-WC§.addChild(_loc3_);
      }
      
      public function doRollOver(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         param1.currentTarget.alpha = 0.5;
      }
      
      public function doRollOut(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         param1.currentTarget.alpha = 1;
      }
      
      public function §_-k§(param1:MouseEvent) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(this.§_-G-§ > this.§_-tX§)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            this.§_-G-§--;
            this.§_-a1§ = this.unlocked_planets[this.§_-G-§];
            Global.EDITOR.selected.gfxID = this.§_-a1§;
            Global.EDITOR.selected.attachNewGfx(this.§_-a1§);
            this.§_-fa§();
         }
      }
      
      public function §_-j5§(param1:MouseEvent) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(this.§_-G-§ < this.§_-eD§)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            this.§_-G-§++;
            this.§_-a1§ = this.unlocked_planets[this.§_-G-§];
            _loc5_;
            Global.EDITOR.selected.gfxID = this.§_-a1§;
            Global.EDITOR.selected.attachNewGfx(this.§_-a1§);
            this.§_-fa§();
         }
      }
   }
}
