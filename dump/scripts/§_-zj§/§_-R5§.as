package §_-zj§
{
   import flash.display.Sprite;
   import §_-eR§.EditorPanelMain;
   import §_-eR§.EditorPanelPlanet;
   import §_-eR§.§_-kD§;
   import §_-eR§.EditorPanelMine;
   import §_-eR§.EditorPanelShield;
   import §_-eR§.§_-DL§;
   import §_-eR§.§_-D8§;
   import §_-eR§.§_-yL§;
   import §_-eR§.§_-RH§;
   import §_-eR§.§_-eB§;
   import fl.transitions.Tween;
   import fl.transitions.easing.Strong;
   import fl.transitions.TweenEvent;
   
   public class §_-R5§ extends Sprite
   {
      
      public function §_-R5§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.§_-Qd§ = new EditorPanelMain();
         this.§_-o8§ = new EditorPanelPlanet();
         _loc1_;
         _loc1_;
         this.§_-Hv§ = new §_-kD§();
         _loc2_;
         this.§_-Ww§ = new EditorPanelMine();
         this.§_-8o§ = new EditorPanelShield();
         this.§_-h9§ = new §_-DL§();
         this.§_-g§ = new §_-D8§();
         this.§_-9Z§ = new §_-yL§();
         _loc2_;
         this.§_-ao§ = new §_-RH§();
         this.§_-ns§ = this.§_-Qd§;
         super();
         this.§_-zT§(this.§_-ns§);
         this.§_-ve§();
         visible = false;
      }
      
      public var §_-Qd§:EditorPanelMain;
      
      public var §_-o8§:EditorPanelPlanet;
      
      public var §_-Hv§:§_-kD§;
      
      public var §_-Ww§:EditorPanelMine;
      
      public var §_-8o§:EditorPanelShield;
      
      public var §_-h9§:§_-DL§;
      
      public var §_-g§:§_-D8§;
      
      public var §_-9Z§:§_-yL§;
      
      public var §_-ao§:§_-RH§;
      
      public var §_-ns§:§_-eB§;
      
      public var valid:Boolean;
      
      public var §_-jj§:Tween;
      
      public function tweenOn() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-jj§ = new Tween(this,"x",Strong.easeOut,x,x - 400,1,true);
         _loc2_;
         visible = true;
         _loc2_;
         this.§_-jj§.start();
      }
      
      public function tweenOff(param1:Boolean = true) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.§_-jj§ = new Tween(this,"x",Strong.easeOut,x,x + 400,1,true);
         _loc3_;
         if(param1)
         {
            _loc2_;
            _loc3_;
            _loc2_;
            _loc2_;
            this.§_-jj§.addEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOff,false,0,true);
            _loc2_;
            _loc2_;
         }
         else
         {
            _loc3_;
            _loc3_;
            this.§_-jj§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-3v§,false,0,true);
            _loc2_;
         }
         this.§_-jj§.start();
      }
      
      private function finishTweenOff(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         visible = false;
         _loc3_;
         Global.lobby_display.exitEditor();
      }
      
      private function §_-3v§(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         visible = false;
         _loc3_;
         _loc3_;
         Global.lobby_display.exitEditor(Global.SCREEN_EDITOR_GAME);
      }
      
      public function §_-ve§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.valid = false;
         if(this.§_-ns§ == this.§_-Qd§)
         {
            _loc1_;
            _loc1_;
            _loc1_;
            _loc2_;
            _loc2_;
            this.§_-Qd§.§_-Ca§.alpha = 0.5;
            _loc1_;
            _loc1_;
            this.§_-Qd§.§_-Ca§.mouseEnabled = false;
            _loc1_;
            _loc1_;
            _loc1_;
            this.§_-Qd§.§_-oO§.alpha = 0.5;
            this.§_-Qd§.§_-oO§.mouseEnabled = false;
         }
      }
      
      public function §_-m0§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.valid = true;
         _loc1_;
         if(this.§_-ns§ == this.§_-Qd§)
         {
            _loc2_;
            _loc2_;
            _loc1_;
            this.§_-Qd§.§_-Ca§.alpha = 1;
            _loc2_;
            _loc2_;
            this.§_-Qd§.§_-Ca§.mouseEnabled = true;
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            this.§_-Qd§.§_-oO§.alpha = 1;
            _loc2_;
            this.§_-Qd§.§_-oO§.mouseEnabled = true;
         }
      }
      
      public function §_-O7§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-Qd§.updateText();
      }
      
      public function §_-IQ§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc1_;
         _loc1_;
         this.§_-ns§.hideLockedContent();
         _loc2_;
         _loc2_;
         this.§_-ns§.updateText();
      }
      
      public function §_-zT§(param1:§_-eB§) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         y = 600 - (param1.height + 5);
         _loc2_;
         param1.hideLockedContent();
         _loc2_;
         _loc2_;
         param1.updateText();
         _loc3_;
         addChild(param1);
      }
      
      public function §_-t4§(param1:§_-eB§) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         removeChild(param1);
      }
      
      public function §_-0-b§(param1:EditorObject) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.§_-t4§(this.§_-ns§);
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(param1 is PlanetObject)
         {
            _loc3_;
            _loc3_;
            if(PlanetObject(param1).sun)
            {
               _loc3_;
               _loc3_;
               this.§_-ns§ = this.§_-Hv§;
               this.§_-Hv§.§_-3C§(param1 as PlanetObject);
               _loc3_;
               _loc3_;
            }
            else
            {
               _loc3_;
               _loc3_;
               if(PlanetObject(param1).blackHole)
               {
                  _loc3_;
                  _loc3_;
                  this.§_-ns§ = this.§_-ao§;
                  _loc2_;
                  _loc2_;
                  this.§_-ao§.§_-uI§(param1 as PlanetObject);
               }
               else
               {
                  this.§_-ns§ = this.§_-o8§;
                  _loc2_;
                  this.§_-o8§.§_-74§(param1 as PlanetObject);
               }
            }
         }
         else if(param1 is §_-ZA§)
         {
            _loc3_;
            this.§_-ns§ = this.§_-Ww§;
            _loc3_;
            this.§_-Ww§.§_-BA§(param1 as §_-ZA§);
            _loc3_;
         }
         else if(param1 is §_-zO§)
         {
            this.§_-ns§ = this.§_-8o§;
            _loc2_;
            this.§_-8o§.§_-Lk§(param1 as §_-zO§);
            _loc3_;
            _loc3_;
         }
         else if(param1 is §_-ch§)
         {
            _loc2_;
            this.§_-ns§ = this.§_-8o§;
            this.§_-8o§.§_-Lk§(param1 as §_-ch§);
         }
         else
         {
            _loc2_;
            _loc2_;
            if(param1 is §_-5N§)
            {
               _loc3_;
               _loc3_;
               this.§_-ns§ = this.§_-h9§;
               this.§_-h9§.§_-Lu§(param1 as §_-5N§);
               _loc2_;
            }
            else
            {
               _loc2_;
               if(param1 is §_-lf§)
               {
                  this.§_-ns§ = this.§_-g§;
                  _loc2_;
                  _loc2_;
                  this.§_-g§.§_-bX§(param1 as §_-lf§);
               }
               else if(param1 is §_-hn§)
               {
                  _loc3_;
                  _loc3_;
                  this.§_-ns§ = this.§_-9Z§;
                  this.§_-9Z§.§_-K8§(param1 as §_-hn§);
               }
               
            }
         }
         
         
         
         this.§_-zT§(this.§_-ns§);
      }
      
      public function §_-Ty§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-t4§(this.§_-ns§);
         _loc2_;
         _loc2_;
         this.§_-ns§ = this.§_-Qd§;
         _loc2_;
         _loc2_;
         this.§_-zT§(this.§_-ns§);
         if(this.valid)
         {
            this.§_-m0§();
         }
         else
         {
            this.§_-ve§();
         }
      }
   }
}
