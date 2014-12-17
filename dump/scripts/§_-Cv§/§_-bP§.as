package §_-Cv§
{
   import com.google.analytics.AnalyticsTracker;
   import flash.display.DisplayObject;
   import com.google.analytics.GATracker;
   
   public class §_-bP§ extends Object
   {
      
      public function §_-bP§(param1:DisplayObject)
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         super();
         _loc2_;
         _loc2_;
         this.tracker = new GATracker(param1,"UA-900224-14","AS3");
      }
      
      private var tracker:AnalyticsTracker;
      
      public function §_-j4§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.tracker.trackEvent("Click Button","Buy Gravitons Button");
      }
      
      public function §_-cm§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.tracker.trackEvent("Click Button","Buy Plus Button");
      }
      
      public function §_-CX§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc3_;
         this.tracker.trackEvent("Click Button","Buy " + param1 + " Gravitons");
      }
      
      public function §_-k1§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.tracker.trackEvent("Click Button","Cancel Buy Gravitons");
      }
      
      public function §_-gI§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.tracker.trackEvent("Click Button","Sign In");
      }
      
      public function §_-qI§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.tracker.trackEvent("Click Button","Sign In As Guest");
      }
      
      public function §_-Tq§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.tracker.trackEvent("Click Button","Sign In Kong");
      }
      
      public function §_-Wd§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.tracker.trackEvent("Click Button","Kong RegisterBox");
      }
      
      public function §_-vd§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.tracker.trackEvent("Click Button","Replay Facebook Share");
      }
      
      public function §_-sJ§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.tracker.trackEvent("Click Button","Replay Twitter Share");
      }
      
      public function §_-bf§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.tracker.trackEvent("Click Button","Receive Social Award");
      }
      
      public function §_-IP§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.tracker.trackEvent("Click Button","Tutorial Started");
      }
      
      public function §_-U3§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.tracker.trackEvent("Click Button","Tutorial Skipped");
      }
      
      public function §_-Qw§(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.tracker.trackEvent("Click Button",String("Tutorial Step " + param1));
      }
      
      public function §_-oC§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.tracker.trackEvent("Click Button","Tutorial Completed");
      }
      
      public function §_-Ti§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.tracker.trackEvent("Click Button","100 Awards Got");
      }
      
      public function §_-XO§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.tracker.trackEvent("Click Button","Login on Kongregate");
      }
      
      public function §_-fe§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.tracker.trackEvent("Click Button","Login on Web");
      }
      
      public function §_-0R§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.tracker.trackEvent("Click Button","Login on FGD");
      }
      
      public function §_-V8§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.tracker.trackEvent("Click Button","Login on Newgrounds");
      }
      
      public function §try§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.tracker.trackEvent("Click Button","Login on Miniplay");
      }
      
      public function §_-yi§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.tracker.trackEvent("Click Button","Daily Award Earned");
      }
      
      public function §_-qa§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.tracker.trackEvent("Click Button","Weekly Award Earned");
      }
      
      public function §_-mc§(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         if(param1 == 1 || param1 == 5 || param1 == 10 || param1 == 15 || param1 == 20 || param1 == 25 || param1 == 50 || param1 == 75 || param1 == 100)
         {
            _loc2_;
            _loc3_;
            _loc3_;
            this.tracker.trackEvent("Click Button",String("Games Played " + param1));
            _loc2_;
            _loc2_;
         }
         else if(param1 > 100 && param1 % 100 == 0)
         {
            this.tracker.trackEvent("Click Button",String("Games Played " + param1));
         }
         
      }
      
      public function §_-rF§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc2_;
         if(param1 == 0)
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            _loc3_;
            this.tracker.trackEvent("Click Button","Register Guest (Shop)");
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            if(param1 == 1)
            {
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               this.tracker.trackEvent("Click Button","Register Guest (Game Over)");
            }
            else
            {
               _loc2_;
               _loc2_;
               _loc2_;
               if(param1 == 2)
               {
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  _loc2_;
                  _loc2_;
                  this.tracker.trackEvent("Click Button","Register Guest (Timeout)");
               }
               else if(param1 == 3)
               {
                  _loc2_;
                  this.tracker.trackEvent("Click Button","Register Guest (Button)");
               }
               
            }
         }
      }
      
      public function §_-G5§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.tracker.trackEvent("Click Replay Button","More Replays");
      }
      
      public function §_-KH§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.tracker.trackEvent("Click Replay Button","Random Replay");
      }
      
      public function §_-UH§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.tracker.trackEvent("Click Replay Button","Sign Up");
      }
      
      public function §_-IC§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.tracker.trackEvent("Click Replay Button","Watch Again");
      }
   }
}
