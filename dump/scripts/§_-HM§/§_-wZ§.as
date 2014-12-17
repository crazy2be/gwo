package §_-HM§
{
   import flash.display.Sprite;
   import §_-5M§.EditorPanelMain;
   import §_-5M§.EditorPanelPlanet;
   import §_-5M§.§_-jm§;
   import §_-5M§.EditorPanelMine;
   import §_-5M§.EditorPanelShield;
   import §_-5M§.§_-gi§;
   import §_-5M§.§_-bH§;
   import §_-5M§.§_-zb§;
   import §_-5M§.§_-q§;
   import §_-5M§.§_-§;
   import fl.transitions.Tween;
   import fl.transitions.easing.Strong;
   import fl.transitions.TweenEvent;
   
   public class §_-wZ§ extends Sprite
   {
      
      public function §_-wZ§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.§_-ej§ = new EditorPanelMain();
         _loc2_;
         _loc2_;
         this.§_-hh§ = new EditorPanelPlanet();
         this.§_-Ps§ = new §_-jm§();
         _loc2_;
         this.§_-M9§ = new EditorPanelMine();
         this.§_-y4§ = new EditorPanelShield();
         this.§_-aq§ = new §_-gi§();
         _loc2_;
         _loc2_;
         this.§_-uO§ = new §_-bH§();
         this.§_-2g§ = new §_-zb§();
         _loc1_;
         _loc1_;
         this.§_-57§ = new §_-q§();
         _loc1_;
         _loc1_;
         this.§_-bN§ = this.§_-ej§;
         super();
         this.§_-Sd§(this.§_-bN§);
         this.§_-gO§();
         _loc2_;
         _loc2_;
         visible = false;
      }
      
      public var §_-ej§:EditorPanelMain;
      
      public var §_-hh§:EditorPanelPlanet;
      
      public var §_-Ps§:§_-jm§;
      
      public var §_-M9§:EditorPanelMine;
      
      public var §_-y4§:EditorPanelShield;
      
      public var §_-aq§:§_-gi§;
      
      public var §_-uO§:§_-bH§;
      
      public var §_-2g§:§_-zb§;
      
      public var §_-57§:§_-q§;
      
      public var §_-bN§:§_-§;
      
      public var valid:Boolean;
      
      public var §_-MF§:Tween;
      
      public function tweenOn() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-MF§ = new Tween(this,"x",Strong.easeOut,x,x - 400,1,true);
         _loc1_;
         _loc1_;
         visible = true;
         _loc2_;
         this.§_-MF§.start();
      }
      
      public function tweenOff(param1:Boolean = true) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-MF§ = new Tween(this,"x",Strong.easeOut,x,x + 400,1,true);
         _loc2_;
         if(param1)
         {
            _loc2_;
            _loc3_;
            _loc3_;
            _loc2_;
            this.§_-MF§.addEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOff,false,0,true);
            _loc3_;
         }
         else
         {
            _loc2_;
            _loc2_;
            this.§_-MF§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-Ia§,false,0,true);
            _loc2_;
         }
         this.§_-MF§.start();
      }
      
      private function finishTweenOff(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         visible = false;
         _loc3_;
         Global.lobby_display.exitEditor();
      }
      
      private function §_-Ia§(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         visible = false;
         _loc2_;
         Global.lobby_display.exitEditor(Global.SCREEN_EDITOR_GAME);
      }
      
      public function §_-gO§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.valid = false;
         _loc1_;
         if(this.§_-bN§ == this.§_-ej§)
         {
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            this.§_-ej§.§_-gS§.alpha = 0.5;
            _loc1_;
            this.§_-ej§.§_-gS§.mouseEnabled = false;
            _loc1_;
            _loc1_;
            _loc1_;
            _loc2_;
            _loc2_;
            this.§_-ej§.§_-hd§.alpha = 0.5;
            this.§_-ej§.§_-hd§.mouseEnabled = false;
         }
      }
      
      public function §_-Tb§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.valid = true;
         if(this.§_-bN§ == this.§_-ej§)
         {
            _loc2_;
            _loc2_;
            _loc2_;
            this.§_-ej§.§_-gS§.alpha = 1;
            _loc1_;
            _loc2_;
            _loc2_;
            this.§_-ej§.§_-gS§.mouseEnabled = true;
            _loc2_;
            _loc2_;
            _loc2_;
            _loc1_;
            _loc1_;
            this.§_-ej§.§_-hd§.alpha = 1;
            this.§_-ej§.§_-hd§.mouseEnabled = true;
         }
      }
      
      public function §_-YT§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-ej§.updateText();
      }
      
      public function final() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-bN§.hideLockedContent();
         _loc1_;
         this.§_-bN§.updateText();
      }
      
      public function §_-Sd§(param1:§_-§) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         y = 600 - (param1.height + 5);
         _loc3_;
         _loc3_;
         param1.hideLockedContent();
         _loc2_;
         param1.updateText();
         _loc3_;
         addChild(param1);
      }
      
      public function §_-Ft§(param1:§_-§) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         removeChild(param1);
      }
      
      public function §_-o6§(param1:EditorObject) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.§_-Ft§(this.§_-bN§);
         _loc2_;
         if(param1 is PlanetObject)
         {
            if(PlanetObject(param1).sun)
            {
               _loc2_;
               _loc2_;
               this.§_-bN§ = this.§_-Ps§;
               this.§_-Ps§.§_-ym§(param1 as PlanetObject);
            }
            else
            {
               _loc3_;
               _loc3_;
               if(PlanetObject(param1).blackHole)
               {
                  this.§_-bN§ = this.§_-57§;
                  this.§_-57§.§_-F6§(param1 as PlanetObject);
               }
               else
               {
                  this.§_-bN§ = this.§_-hh§;
                  _loc2_;
                  this.§_-hh§.§_-aS§(param1 as PlanetObject);
                  _loc3_;
                  _loc3_;
               }
            }
         }
         else if(param1 is §_-s2§)
         {
            _loc3_;
            _loc3_;
            this.§_-bN§ = this.§_-M9§;
            this.§_-M9§.§_-r1§(param1 as §_-s2§);
            _loc3_;
         }
         else if(param1 is §_-fV§)
         {
            _loc2_;
            this.§_-bN§ = this.§_-y4§;
            _loc3_;
            _loc3_;
            this.§_-y4§.§_-6H§(param1 as §_-fV§);
         }
         else if(param1 is §_-R7§)
         {
            this.§_-bN§ = this.§_-y4§;
            this.§_-y4§.§_-6H§(param1 as §_-R7§);
            _loc3_;
         }
         else
         {
            _loc2_;
            _loc2_;
            if(param1 is §_-T1§)
            {
               this.§_-bN§ = this.§_-aq§;
               this.§_-aq§.§_-cS§(param1 as §_-T1§);
               _loc2_;
            }
            else if(param1 is §_-r2§)
            {
               _loc3_;
               this.§_-bN§ = this.§_-uO§;
               _loc3_;
               _loc3_;
               this.§_-uO§.§_-uk§(param1 as §_-r2§);
            }
            else if(param1 is §_-xv§)
            {
               this.§_-bN§ = this.§_-2g§;
               _loc3_;
               _loc3_;
               this.§_-2g§.§_-bV§(param1 as §_-xv§);
            }
            
            
         }
         
         
         
         this.§_-Sd§(this.§_-bN§);
      }
      
      public function §_-dW§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-Ft§(this.§_-bN§);
         _loc1_;
         _loc1_;
         this.§_-bN§ = this.§_-ej§;
         this.§_-Sd§(this.§_-bN§);
         if(this.valid)
         {
            _loc2_;
            _loc2_;
            this.§_-Tb§();
         }
         else
         {
            this.§_-gO§();
         }
      }
   }
}
