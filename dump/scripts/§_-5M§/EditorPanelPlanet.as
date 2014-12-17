package §_-5M§
{
   import flash.text.TextField;
   import flash.display.MovieClip;
   import §_-HM§.PlanetObject;
   import flash.utils.getDefinitionByName;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class EditorPanelPlanet extends §_-§
   {
      
      public function EditorPanelPlanet()
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         super();
         _loc2_;
         _loc2_;
         this.unlocked_planets = new Array();
         var _loc1_:* = 0;
         while(_loc1_ < Global.TOTAL_PLANETS)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            if(Global.planets_unlocked[_loc1_] == true)
            {
               _loc3_;
               _loc3_;
               this.unlocked_planets.push(_loc1_);
               _loc2_;
            }
            _loc1_++;
            _loc3_;
         }
         _loc2_;
         this.§_-2Z§ = 0;
         this.§_-Rj§ = this.unlocked_planets.length - 1;
         _loc2_;
         this.§_-ln§.mouseEnabled = true;
         _loc2_;
         this.§_-ln§.mouseChildren = false;
         _loc3_;
         _loc3_;
         this.§_-ln§.buttonMode = true;
         this.§_-ln§.addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
         _loc3_;
         _loc3_;
         this.§_-ln§.addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
         _loc2_;
         _loc2_;
         this.§_-ln§.addEventListener(MouseEvent.CLICK,this.§_-yY§,false,0,true);
         this.§if §.mouseEnabled = true;
         _loc3_;
         _loc3_;
         this.§if §.mouseChildren = false;
         this.§if §.buttonMode = true;
         _loc2_;
         this.§if §.addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
         _loc3_;
         this.§if §.addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
         this.§if §.addEventListener(MouseEvent.CLICK,this.§_-Wl§,false,0,true);
      }
      
      public var §_-dU§:TextField;
      
      public var §if §:MovieClip;
      
      public var §_-ii§:TextField;
      
      public var §_-s3§:SliderPlanetSize;
      
      public var §_-ln§:MovieClip;
      
      public var §_-dB§:TextField;
      
      public var §_-ys§:MovieClip;
      
      public var §_-Bj§:SliderPlanetRadioactivity;
      
      public var §_-1M§:OnOffShield;
      
      public var unlocked_planets:Array;
      
      private var §_-Q5§:int = 0;
      
      private var §_-fZ§:int = 0;
      
      private var §_-2Z§:int = 0;
      
      private var §_-Rj§:int = 49;
      
      override public function hideLockedContent() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!SafeGlobal.editorUnlocked[Global.EDITOR_PACK3])
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc1_;
            this.§_-1M§.visible = false;
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            this.§_-Bj§.visible = false;
            this.§_-ii§.visible = false;
            this.§_-dB§.visible = false;
         }
         else
         {
            this.§_-1M§.visible = true;
            this.§_-Bj§.visible = true;
            _loc2_;
            this.§_-ii§.visible = true;
            _loc2_;
            _loc2_;
            this.§_-dB§.visible = true;
         }
      }
      
      public function §_-aS§(param1:PlanetObject) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc3_;
         this.§_-fZ§ = param1.gfxID;
         var _loc2_:* = 0;
         while(_loc2_ < this.unlocked_planets.length)
         {
            if(this.unlocked_planets[_loc2_] == this.§_-fZ§)
            {
               this.§_-Q5§ = _loc2_;
            }
            _loc2_++;
            _loc3_;
         }
         _loc3_;
         _loc3_;
         this.§_-QX§();
         _loc3_;
         _loc3_;
         this.§_-s3§.§_-Xm§(param1.radius);
         this.§_-1M§.init(param1.shield);
         this.§_-Bj§.§_-Xm§(param1.radioactiveValue);
      }
      
      public function §_-QX§() : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         this.§_-dU§.text = String(this.§_-Q5§ + 1 + " / " + (this.§_-Rj§ + 1));
         _loc4_;
         _loc4_;
         if(this.§_-ys§.numChildren > 0)
         {
            while(this.§_-ys§.numChildren > 0)
            {
               this.§_-ys§.removeChildAt(0);
               _loc4_;
               _loc4_;
            }
         }
         var _loc1_:String = String("Planet" + (this.§_-fZ§ + 1));
         var _loc2_:Class = getDefinitionByName(_loc1_) as Class;
         var _loc3_:Sprite = new _loc2_() as Sprite;
         _loc5_;
         _loc5_;
         _loc3_.width = 100;
         _loc4_;
         _loc3_.height = 100;
         _loc5_;
         this.§_-ys§.addChild(_loc3_);
      }
      
      public function doRollOver(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
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
      
      public function §_-yY§(param1:MouseEvent) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         _loc4_;
         if(this.§_-Q5§ > this.§_-2Z§)
         {
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            this.§_-Q5§--;
            this.§_-fZ§ = this.unlocked_planets[this.§_-Q5§];
            _loc4_;
            _loc4_;
            Global.EDITOR.selected.gfxID = this.§_-fZ§;
            _loc5_;
            Global.EDITOR.selected.attachNewGfx(this.§_-fZ§);
            this.§_-QX§();
         }
      }
      
      public function §_-Wl§(param1:MouseEvent) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         if(this.§_-Q5§ < this.§_-Rj§)
         {
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            this.§_-Q5§++;
            this.§_-fZ§ = this.unlocked_planets[this.§_-Q5§];
            Global.EDITOR.selected.gfxID = this.§_-fZ§;
            Global.EDITOR.selected.attachNewGfx(this.§_-fZ§);
            this.§_-QX§();
         }
      }
   }
}
