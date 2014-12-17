package com.funkypear.ui
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import fl.transitions.Tween;
   import §_-Cv§.§_-x3§;
   import flash.display.Sprite;
   import flash.utils.getDefinitionByName;
   import flash.utils.getTimer;
   import §_-Cv§.§_-tL§;
   import flash.events.MouseEvent;
   import fl.transitions.easing.Strong;
   
   public class LP_Awards extends §_-A3§
   {
      
      public function LP_Awards(param1:Sprite)
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:AwardStar = null;
         _loc7_;
         super(param1);
         _loc6_;
         _loc6_;
         this.award_stars = new Array();
         _loc6_;
         var _loc3_:Number = this.long_line_x;
         var _loc4_:Number = 74;
         var _loc5_:* = 0;
         while(_loc5_ < 100)
         {
            _loc6_;
            this.award_stars.push(new AwardStar(_loc5_,this));
            _loc7_;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc6_;
            this.award_stars[this.award_stars.length - 1].x = _loc3_;
            this.award_stars[this.award_stars.length - 1].y = _loc4_;
            addChild(this.award_stars[this.award_stars.length - 1]);
            _loc7_;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc3_ = _loc3_ + this.x_spacing;
            _loc6_;
            _loc7_;
            _loc6_;
            _loc7_;
            _loc5_ == 12;
            _loc7_;
            _loc5_ == 12;
            _loc7_;
            _loc7_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc7_;
            _loc5_ == 37;
            _loc5_ == 37;
            _loc7_;
            _loc7_;
            _loc5_ == 62;
            _loc7_;
            _loc7_;
            _loc5_ == 62;
            _loc7_;
            _loc6_;
            _loc7_;
            _loc5_ == 87;
            _loc7_;
            _loc7_;
            _loc6_;
            _loc6_;
            _loc5_ == 24;
            _loc6_;
            _loc6_;
            _loc5_ == 24;
            _loc6_;
            _loc6_;
            _loc5_ == 49;
            _loc7_;
            _loc7_;
            _loc5_ == 49;
            _loc7_;
            _loc7_;
            _loc5_ == 74;
            _loc5_++;
         }
         this.other_awards_clip.daily_award_star.mouseEnabled = true;
         this.other_awards_clip.daily_award_star.buttonMode = true;
         _loc7_;
         _loc7_;
         this.other_awards_clip.daily_black_star.mouseEnabled = true;
         this.other_awards_clip.daily_black_star.buttonMode = true;
         this.other_awards_clip.weekly_award_star.mouseEnabled = true;
         this.other_awards_clip.weekly_award_star.buttonMode = true;
         _loc6_;
         _loc6_;
         this.other_awards_clip.weekly_black_star.mouseEnabled = true;
         this.other_awards_clip.weekly_black_star.buttonMode = true;
         this.other_awards_clip.daily_award_star.addEventListener(MouseEvent.ROLL_OVER,this.rollOverDailyStar,false,0,true);
         this.other_awards_clip.daily_black_star.addEventListener(MouseEvent.ROLL_OVER,this.rollOverDailyStar,false,0,true);
         _loc7_;
         _loc7_;
         this.other_awards_clip.weekly_award_star.addEventListener(MouseEvent.ROLL_OVER,this.rollOverWeeklyStar,false,0,true);
         this.other_awards_clip.weekly_black_star.addEventListener(MouseEvent.ROLL_OVER,this.rollOverWeeklyStar,false,0,true);
         this.other_awards_clip.daily_award_star.addEventListener(MouseEvent.ROLL_OUT,this.rollOutDailyStar,false,0,true);
         this.other_awards_clip.daily_black_star.addEventListener(MouseEvent.ROLL_OUT,this.rollOutDailyStar,false,0,true);
         this.other_awards_clip.weekly_award_star.addEventListener(MouseEvent.ROLL_OUT,this.rollOutWeeklyStar,false,0,true);
         this.other_awards_clip.weekly_black_star.addEventListener(MouseEvent.ROLL_OUT,this.rollOutWeeklyStar,false,0,true);
      }
      
      public var other_awards_clip:MovieClip;
      
      public var percent_text:TextField;
      
      public var awards_rollover_clip:MovieClip;
      
      private var award_stars:Array;
      
      private var y_spacing:Number = 42;
      
      private var x_spacing:Number = 54;
      
      private var long_line_x:Number = 33;
      
      private var short_line_x:Number = 60;
      
      private var saved_award_star:AwardStar;
      
      private var left_bounds:Number = 35;
      
      private var right_bounds:Number = 675;
      
      private var top_bounds:Number = 74;
      
      private var bottom_bounds:Number = 380;
      
      private var tween_x:Tween;
      
      private var tween_y:Tween;
      
      public function displayAwardDetails(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(this.saved_award_star != null)
         {
            _loc2_;
            _loc2_;
            this.saved_award_star.§_-Mw§();
            this.saved_award_star = null;
            _loc2_;
            _loc2_;
         }
         this.awards_rollover_clip.gravitons_panel.gravitons_text.text = String(§_-x3§.awards[param1].gravitons);
         _loc2_;
         _loc2_;
         this.awards_rollover_clip.gravitons_panel.visible = true;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc3_;
         if(§_-x3§.awards[param1].award_complete == 1)
         {
            this.displayAwardNumber(§_-x3§.awards[param1].award_id + 1);
            this.awards_rollover_clip.star_gold.visible = true;
            _loc2_;
            this.awards_rollover_clip.star_black.visible = false;
            this.awards_rollover_clip.name_text.text = §_-x3§.awards[param1].award_name;
            this.awards_rollover_clip.desc_text.text = §_-x3§.awards[param1].award_description;
            this.awards_rollover_clip.gravitons_panel.gravitons_text.textColor = 3355443;
            _loc2_;
            this.awards_rollover_clip.gravitons_panel.g_text.textColor = 3355443;
            this.awards_rollover_clip.gravitons_panel.graviton_icon.visible = true;
            _loc3_;
         }
         else
         {
            this.awards_rollover_clip.star_gold.visible = false;
            _loc3_;
            _loc3_;
            this.awards_rollover_clip.star_black.visible = true;
            this.awards_rollover_clip.name_text.text = "? ? ? ? ?";
            if(§_-x3§.awards[param1].hidden_description == true)
            {
               _loc3_;
               _loc3_;
               this.awards_rollover_clip.desc_text.text = "THIS IS A SECRET AWARD\nUNLOCK IT TO FIND OUT WHAT IT IS";
            }
            else
            {
               this.awards_rollover_clip.desc_text.text = §_-x3§.awards[param1].award_description;
            }
            this.awards_rollover_clip.number_holder.visible = false;
            _loc3_;
            this.awards_rollover_clip.gravitons_panel.gravitons_text.textColor = 6710886;
            this.awards_rollover_clip.gravitons_panel.g_text.textColor = 6710886;
            _loc3_;
            _loc3_;
            this.awards_rollover_clip.gravitons_panel.graviton_icon.visible = false;
            _loc2_;
            _loc2_;
         }
         this.other_awards_clip.visible = false;
         this.awards_rollover_clip.visible = true;
      }
      
      private function displayAwardNumber(param1:int) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfucation" for better results.
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function §_-Yl§() : String
      {
         var _loc12_:* = false;
         var _loc13_:* = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:String = null;
         var _loc11_:String = null;
         var _loc1_:Number = Number(getTimer() / 1000);
         _loc13_;
         _loc12_;
         _loc12_;
         var _loc2_:Number = _loc1_ - SafeGlobal.§_-QB§;
         _loc12_;
         _loc12_;
         var _loc3_:Number = SafeGlobal.§_-5k§ - _loc2_;
         if(_loc3_ > 0)
         {
            _loc4_ = Math.floor(_loc3_);
            _loc12_;
            _loc12_;
            _loc5_ = Math.floor(_loc4_ / 60);
            _loc13_;
            _loc13_;
            _loc12_;
            _loc12_;
            _loc6_ = Math.floor(_loc5_ / 60);
            _loc12_;
            _loc7_ = Math.floor(_loc6_ / 24);
            _loc13_;
            _loc13_;
            _loc8_ = (_loc4_ % 60).toString();
            _loc13_;
            _loc13_;
            _loc13_;
            _loc9_ = (_loc5_ % 60).toString();
            _loc12_;
            _loc12_;
            _loc13_;
            _loc13_;
            _loc10_ = (_loc6_ % 24).toString();
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc11_ = _loc7_.toString();
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            if(_loc7_ > 0)
            {
               return String(_loc11_ + "D " + _loc10_ + "H");
            }
            _loc12_;
            _loc12_;
            _loc13_;
            if(_loc6_ > 0)
            {
               return String(_loc10_ + "H " + _loc9_ + "M");
            }
            _loc13_;
            if(_loc5_ > 0)
            {
               _loc12_;
               _loc12_;
               return String(_loc9_ + "M " + _loc8_ + "S");
            }
            if(_loc4_ > 0)
            {
               return String(_loc8_ + "S");
            }
         }
         return "0 SECS";
      }
      
      public function §_-Z5§() : String
      {
         var _loc12_:* = true;
         var _loc13_:* = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:String = null;
         var _loc11_:String = null;
         var _loc1_:Number = Number(getTimer() / 1000);
         _loc13_;
         _loc13_;
         _loc13_;
         var _loc2_:Number = _loc1_ - SafeGlobal.§_-cK§;
         _loc13_;
         _loc13_;
         _loc13_;
         var _loc3_:Number = SafeGlobal.§_-56§ - _loc2_;
         if(_loc3_ > 0)
         {
            _loc4_ = Math.floor(_loc3_);
            _loc13_;
            _loc13_;
            _loc12_;
            _loc12_;
            _loc5_ = Math.floor(_loc4_ / 60);
            _loc12_;
            _loc12_;
            _loc13_;
            _loc6_ = Math.floor(_loc5_ / 60);
            _loc13_;
            _loc7_ = Math.floor(_loc6_ / 24);
            _loc13_;
            _loc13_;
            _loc8_ = (_loc4_ % 60).toString();
            _loc12_;
            _loc12_;
            _loc13_;
            _loc13_;
            _loc9_ = (_loc5_ % 60).toString();
            _loc12_;
            _loc13_;
            _loc12_;
            _loc10_ = (_loc6_ % 24).toString();
            _loc12_;
            _loc12_;
            _loc11_ = _loc7_.toString();
            _loc13_;
            _loc13_;
            _loc12_;
            _loc12_;
            _loc12_;
            if(_loc7_ > 0)
            {
               return String(_loc11_ + "D " + _loc10_ + "H");
            }
            _loc13_;
            _loc13_;
            if(_loc6_ > 0)
            {
               _loc13_;
               _loc13_;
               return String(_loc10_ + "H " + _loc9_ + "M");
            }
            _loc13_;
            _loc13_;
            if(_loc5_ > 0)
            {
               return String(_loc9_ + "M " + _loc8_ + "S");
            }
            if(_loc4_ > 0)
            {
               _loc12_;
               return String(_loc8_ + "S");
            }
         }
         return "0 SECS";
      }
      
      public function getDailyAwardDesc() : String
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:String = §_-tL§.§_-up§[SafeGlobal.§_-Bu§];
         var _loc2_:Array = _loc1_.split("X");
         _loc6_;
         _loc6_;
         var _loc3_:int = SafeGlobal.§_-ba§;
         _loc5_;
         _loc6_;
         _loc6_;
         _loc5_;
         _loc5_;
         if(SafeGlobal.§_-Bu§ == 18)
         {
            _loc6_;
            _loc6_;
            _loc6_;
            _loc3_ = SafeGlobal.§_-ba§ / 60;
         }
         var _loc4_:String = String(_loc2_[0] + _loc3_ + _loc2_[1]);
         return _loc4_;
      }
      
      public function getWeeklyAwardDesc() : String
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:String = §_-tL§.§_-up§[SafeGlobal.§_-q5§];
         var _loc2_:Array = _loc1_.split("X");
         _loc5_;
         var _loc3_:int = SafeGlobal.§_-5Z§;
         _loc6_;
         _loc6_;
         _loc5_;
         _loc5_;
         _loc6_;
         if(SafeGlobal.§_-q5§ == 18)
         {
            _loc6_;
            _loc6_;
            _loc3_ = SafeGlobal.§_-5Z§ / 60;
         }
         var _loc4_:String = String(_loc2_[0] + _loc3_ + _loc2_[1]);
         return _loc4_;
      }
      
      public function hideAwardDetails() : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:* = NaN;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         this.other_awards_clip.daily_award_rollover.visible = false;
         this.other_awards_clip.weekly_award_rollover.visible = false;
         this.other_awards_clip.daily_award_desc.text = this.getDailyAwardDesc();
         this.other_awards_clip.daily_total_text.text = String("TOTAL " + Global.other_stats[Global.§_-1l§]);
         _loc5_;
         _loc5_;
         _loc5_;
         if(SafeGlobal.§_-WQ§ == -1)
         {
            _loc4_;
            _loc4_;
            this.other_awards_clip.daily_progress_text.text = "";
            _loc4_;
            _loc4_;
            this.other_awards_clip.daily_award_star.visible = true;
            this.other_awards_clip.daily_black_star.visible = false;
            _loc4_;
            this.other_awards_clip.daily_progress_mask.scaleX = 1;
            this.other_awards_clip.daily_progress_bar.mask = this.other_awards_clip.daily_progress_mask;
            this.other_awards_clip.daily_progress_bg.visible = true;
            this.other_awards_clip.daily_progress_bar.visible = true;
            _loc4_;
            this.other_awards_clip.daily_progress_mask.visible = true;
            _loc5_;
            this.other_awards_clip.daily_completed_text.visible = true;
            _loc5_;
            this.other_awards_clip.daily_time_left.text = String(this.§_-Yl§());
         }
         else
         {
            if(SafeGlobal.§_-Bu§ == 18)
            {
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc2_ = SafeGlobal.§_-WQ§ / 60;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc3_ = SafeGlobal.§_-ba§ / 60;
               this.other_awards_clip.daily_progress_text.text = String(_loc2_ + "/" + _loc3_);
            }
            else
            {
               this.other_awards_clip.daily_progress_text.text = String(SafeGlobal.§_-WQ§ + "/" + SafeGlobal.§_-ba§);
            }
            this.other_awards_clip.daily_award_star.visible = false;
            _loc4_;
            _loc4_;
            this.other_awards_clip.daily_black_star.visible = true;
            _loc4_;
            _loc4_;
            _loc1_ = SafeGlobal.§_-WQ§ / SafeGlobal.§_-ba§;
            _loc5_;
            _loc5_;
            this.other_awards_clip.daily_progress_mask.scaleX = _loc1_;
            this.other_awards_clip.daily_progress_bar.mask = this.other_awards_clip.daily_progress_mask;
            this.other_awards_clip.daily_progress_bg.visible = true;
            this.other_awards_clip.daily_progress_bar.visible = true;
            this.other_awards_clip.daily_progress_mask.visible = true;
            _loc4_;
            _loc4_;
            this.other_awards_clip.daily_completed_text.visible = false;
            this.other_awards_clip.daily_time_left.text = String(this.§_-Yl§());
         }
         this.other_awards_clip.weekly_award_desc.text = this.getWeeklyAwardDesc();
         _loc4_;
         this.other_awards_clip.weekly_total_text.text = String("TOTAL " + Global.other_stats[Global.§_-Z-§]);
         _loc5_;
         _loc4_;
         if(SafeGlobal.§_-Jt§ == -1)
         {
            this.other_awards_clip.weekly_progress_text.text = "";
            this.other_awards_clip.weekly_award_star.visible = true;
            this.other_awards_clip.weekly_black_star.visible = false;
            _loc4_;
            _loc4_;
            this.other_awards_clip.weekly_progress_mask.scaleX = 1;
            _loc5_;
            this.other_awards_clip.weekly_progress_bar.mask = this.other_awards_clip.weekly_progress_mask;
            _loc5_;
            this.other_awards_clip.weekly_progress_bg.visible = true;
            this.other_awards_clip.weekly_progress_bar.visible = true;
            this.other_awards_clip.weekly_progress_mask.visible = true;
            this.other_awards_clip.weekly_completed_text.visible = true;
            _loc4_;
            this.other_awards_clip.weekly_time_left.text = String(this.§_-Z5§());
            _loc4_;
         }
         else
         {
            if(SafeGlobal.§_-q5§ == 18)
            {
               _loc5_;
               _loc5_;
               _loc5_;
               _loc2_ = SafeGlobal.§_-Jt§ / 60;
               _loc4_;
               _loc5_;
               _loc3_ = SafeGlobal.§_-5Z§ / 60;
               _loc5_;
               this.other_awards_clip.weekly_progress_text.text = String(_loc2_ + "/" + _loc3_);
            }
            else
            {
               this.other_awards_clip.weekly_progress_text.text = String(SafeGlobal.§_-Jt§ + "/" + SafeGlobal.§_-5Z§);
            }
            this.other_awards_clip.weekly_award_star.visible = false;
            this.other_awards_clip.weekly_black_star.visible = true;
            _loc1_ = SafeGlobal.§_-Jt§ / SafeGlobal.§_-5Z§;
            this.other_awards_clip.weekly_progress_mask.scaleX = _loc1_;
            _loc5_;
            _loc5_;
            this.other_awards_clip.weekly_progress_bar.mask = this.other_awards_clip.weekly_progress_mask;
            this.other_awards_clip.weekly_progress_bg.visible = true;
            _loc4_;
            _loc4_;
            this.other_awards_clip.weekly_progress_bar.visible = true;
            this.other_awards_clip.weekly_progress_mask.visible = true;
            this.other_awards_clip.weekly_completed_text.visible = false;
            this.other_awards_clip.weekly_time_left.text = String(this.§_-Z5§());
         }
         this.awards_rollover_clip.visible = false;
         _loc4_;
         _loc4_;
         this.other_awards_clip.visible = true;
      }
      
      public function update() : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         while(_loc2_ < this.award_stars.length)
         {
            _loc4_;
            _loc3_;
            _loc3_;
            if(_loc2_ < §_-x3§.awards.length)
            {
               _loc3_;
               _loc4_;
               _loc4_;
               this.award_stars[_loc2_].displayNew(false);
               _loc4_;
               _loc4_;
               _loc3_;
               if(§_-x3§.awards[_loc2_].award_complete == 1)
               {
                  _loc3_;
                  _loc3_;
                  _loc4_;
                  _loc4_;
                  _loc3_;
                  _loc3_;
                  this.award_stars[_loc2_].displayAwardUnlocked(true);
                  _loc3_;
                  _loc4_;
                  _loc4_;
                  if(§_-x3§.awards[_loc2_].new_award == true)
                  {
                     _loc3_;
                     _loc3_;
                     this.award_stars[_loc2_].displayNew(true);
                  }
                  _loc1_++;
               }
               else
               {
                  this.award_stars[_loc2_].displayAwardUnlocked(false);
               }
            }
            _loc2_++;
         }
         _loc3_;
         _loc3_;
         this.percent_text.text = String(_loc1_);
         this.hideAwardDetails();
      }
      
      public function updatePercentage() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         while(_loc2_ < §_-x3§.awards.length)
         {
            if(§_-x3§.awards[_loc2_].award_complete == 1)
            {
               _loc4_;
               _loc1_++;
               _loc3_;
            }
            _loc2_++;
            _loc3_;
            _loc3_;
         }
         _loc3_;
         _loc3_;
         this.percent_text.text = String(_loc1_);
      }
      
      public function updateEndGameAward(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(§_-x3§.awards[param1].award_complete == 1)
         {
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            this.award_stars[param1].displayAwardUnlocked(true);
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            if(§_-x3§.awards[param1].new_award == true)
            {
               _loc3_;
               _loc3_;
               this.award_stars[param1].displayNew(true);
               _loc2_;
               _loc2_;
            }
            this.updatePercentage();
         }
      }
      
      public function checkNewAwards() : Boolean
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         while(_loc1_ < §_-x3§.awards.length)
         {
            if(§_-x3§.awards[_loc1_].new_award == true)
            {
               _loc3_;
               _loc3_;
               _loc2_;
               return true;
            }
            _loc1_++;
            _loc2_;
            _loc2_;
         }
         return false;
      }
      
      public function inRollOutZone(param1:AwardStar) : Boolean
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc2_;
         _loc2_;
         if(mouseX > this.left_bounds && mouseX < this.right_bounds && mouseY > this.top_bounds && mouseY < this.bottom_bounds)
         {
            this.saved_award_star = param1;
            _loc2_;
            _loc2_;
            return true;
         }
         this.saved_award_star = null;
         return false;
      }
      
      public function showDailyDetails() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.other_awards_clip.daily_award_rollover.visible = true;
         this.other_awards_clip.daily_award_desc.visible = false;
         this.other_awards_clip.daily_progress_text.visible = false;
         this.other_awards_clip.daily_progress_bg.visible = false;
         this.other_awards_clip.daily_progress_bar.visible = false;
         _loc2_;
         _loc2_;
         this.other_awards_clip.daily_progress_mask.visible = false;
         this.other_awards_clip.daily_completed_text.visible = false;
         _loc2_;
         _loc2_;
         this.other_awards_clip.daily_time_left.visible = false;
      }
      
      public function hideDailyDetails() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.other_awards_clip.daily_award_rollover.visible = false;
         _loc2_;
         _loc2_;
         this.other_awards_clip.daily_award_desc.visible = true;
         _loc2_;
         this.other_awards_clip.daily_progress_text.visible = true;
         _loc1_;
         _loc1_;
         this.other_awards_clip.daily_time_left.visible = true;
         _loc2_;
         _loc2_;
         this.hideAwardDetails();
      }
      
      public function showWeeklyDetails() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.other_awards_clip.weekly_award_rollover.visible = true;
         this.other_awards_clip.weekly_award_desc.visible = false;
         this.other_awards_clip.weekly_progress_text.visible = false;
         _loc1_;
         this.other_awards_clip.weekly_progress_bg.visible = false;
         this.other_awards_clip.weekly_progress_bar.visible = false;
         this.other_awards_clip.weekly_progress_mask.visible = false;
         _loc2_;
         _loc2_;
         this.other_awards_clip.weekly_completed_text.visible = false;
         _loc1_;
         this.other_awards_clip.weekly_time_left.visible = false;
      }
      
      public function hideWeeklyDetails() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.other_awards_clip.weekly_award_rollover.visible = false;
         _loc1_;
         this.other_awards_clip.weekly_award_desc.visible = true;
         _loc1_;
         this.other_awards_clip.weekly_progress_text.visible = true;
         _loc1_;
         this.other_awards_clip.weekly_time_left.visible = true;
         _loc2_;
         _loc2_;
         this.hideAwardDetails();
      }
      
      public function rollOverDailyStar(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.tween_x = new Tween(param1.currentTarget,"scaleX",Strong.easeOut,1,1.2,16,false);
         _loc3_;
         _loc3_;
         this.tween_y = new Tween(param1.currentTarget,"scaleY",Strong.easeOut,1,1.2,16,false);
         _loc3_;
         _loc3_;
         this.tween_x.start();
         _loc2_;
         _loc2_;
         this.tween_y.start();
         _loc2_;
         this.showDailyDetails();
      }
      
      public function rollOutDailyStar(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.tween_x = new Tween(param1.currentTarget,"scaleX",Strong.easeOut,1.2,1,16,false);
         _loc2_;
         _loc2_;
         this.tween_y = new Tween(param1.currentTarget,"scaleY",Strong.easeOut,1.2,1,16,false);
         _loc2_;
         this.tween_x.start();
         _loc2_;
         _loc2_;
         this.tween_y.start();
         _loc3_;
         _loc3_;
         this.hideDailyDetails();
      }
      
      public function rollOverWeeklyStar(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.tween_x = new Tween(param1.currentTarget,"scaleX",Strong.easeOut,1,1.2,16,false);
         _loc2_;
         this.tween_y = new Tween(param1.currentTarget,"scaleY",Strong.easeOut,1,1.2,16,false);
         _loc3_;
         _loc3_;
         this.tween_x.start();
         _loc2_;
         this.tween_y.start();
         _loc3_;
         this.showWeeklyDetails();
      }
      
      public function rollOutWeeklyStar(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.tween_x = new Tween(param1.currentTarget,"scaleX",Strong.easeOut,1.2,1,16,false);
         _loc3_;
         this.tween_y = new Tween(param1.currentTarget,"scaleY",Strong.easeOut,1.2,1,16,false);
         _loc2_;
         _loc2_;
         this.tween_x.start();
         _loc3_;
         this.tween_y.start();
         _loc3_;
         this.hideWeeklyDetails();
      }
   }
}
