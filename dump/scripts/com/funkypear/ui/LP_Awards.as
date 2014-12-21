package com.funkypear.ui
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import fl.transitions.Tween;
   import §_-Ff§.§_-dS§;
   import flash.display.Sprite;
   import flash.utils.getDefinitionByName;
   import flash.utils.getTimer;
   import §_-Ff§.§_-cq§;
   import flash.events.MouseEvent;
   import fl.transitions.easing.Strong;
   
   public class LP_Awards extends §_-uw§
   {
      
      public function LP_Awards(param1:Sprite)
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:AwardStar = null;
         _loc6_;
         super(param1);
         _loc6_;
         _loc6_;
         this.award_stars = new Array();
         _loc7_;
         _loc7_;
         var _loc3_:Number = this.long_line_x;
         var _loc4_:Number = 74;
         var _loc5_:* = 0;
         while(_loc5_ < 100)
         {
            _loc7_;
            _loc7_;
            this.award_stars.push(new AwardStar(_loc5_,this));
            _loc7_;
            _loc7_;
            _loc6_;
            _loc6_;
            _loc7_;
            _loc7_;
            this.award_stars[this.award_stars.length - 1].x = _loc3_;
            _loc7_;
            _loc7_;
            this.award_stars[this.award_stars.length - 1].y = _loc4_;
            _loc6_;
            addChild(this.award_stars[this.award_stars.length - 1]);
            _loc7_;
            _loc6_;
            _loc7_;
            _loc7_;
            _loc3_ = _loc3_ + this.x_spacing;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc6_;
            _loc6_;
            _loc5_ == 12;
            _loc5_ == 12;
            _loc6_;
            _loc5_ == 37;
            _loc5_ == 37;
            _loc6_;
            _loc6_;
            _loc7_;
            _loc7_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc5_ == 62;
            _loc5_ == 62;
            _loc6_;
            _loc6_;
            _loc5_ == 87;
            _loc6_;
            _loc6_;
            _loc5_ == 24;
            _loc5_ == 24;
            _loc7_;
            _loc7_;
            _loc6_;
            _loc6_;
            _loc5_ == 49;
            _loc5_ == 49;
            _loc7_;
            _loc5_ == 74;
            _loc5_++;
         }
         this.other_awards_clip.daily_award_star.mouseEnabled = true;
         this.other_awards_clip.daily_award_star.buttonMode = true;
         _loc6_;
         this.other_awards_clip.daily_black_star.mouseEnabled = true;
         this.other_awards_clip.daily_black_star.buttonMode = true;
         this.other_awards_clip.weekly_award_star.mouseEnabled = true;
         _loc7_;
         this.other_awards_clip.weekly_award_star.buttonMode = true;
         this.other_awards_clip.weekly_black_star.mouseEnabled = true;
         _loc6_;
         this.other_awards_clip.weekly_black_star.buttonMode = true;
         this.other_awards_clip.daily_award_star.addEventListener(MouseEvent.ROLL_OVER,this.rollOverDailyStar,false,0,true);
         this.other_awards_clip.daily_black_star.addEventListener(MouseEvent.ROLL_OVER,this.rollOverDailyStar,false,0,true);
         this.other_awards_clip.weekly_award_star.addEventListener(MouseEvent.ROLL_OVER,this.rollOverWeeklyStar,false,0,true);
         _loc7_;
         this.other_awards_clip.weekly_black_star.addEventListener(MouseEvent.ROLL_OVER,this.rollOverWeeklyStar,false,0,true);
         this.other_awards_clip.daily_award_star.addEventListener(MouseEvent.ROLL_OUT,this.rollOutDailyStar,false,0,true);
         _loc7_;
         _loc7_;
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
         _loc3_;
         if(this.saved_award_star != null)
         {
            this.saved_award_star.§_-Cy§();
            this.saved_award_star = null;
         }
         this.awards_rollover_clip.gravitons_panel.gravitons_text.text = String(§_-dS§.awards[param1].gravitons);
         this.awards_rollover_clip.gravitons_panel.visible = true;
         _loc3_;
         _loc3_;
         if(§_-dS§.awards[param1].award_complete == 1)
         {
            this.displayAwardNumber(§_-dS§.awards[param1].award_id + 1);
            _loc3_;
            this.awards_rollover_clip.star_gold.visible = true;
            _loc2_;
            _loc2_;
            this.awards_rollover_clip.star_black.visible = false;
            _loc3_;
            this.awards_rollover_clip.name_text.text = §_-dS§.awards[param1].award_name;
            this.awards_rollover_clip.desc_text.text = §_-dS§.awards[param1].award_description;
            _loc3_;
            _loc3_;
            this.awards_rollover_clip.gravitons_panel.gravitons_text.textColor = 3355443;
            _loc3_;
            this.awards_rollover_clip.gravitons_panel.g_text.textColor = 3355443;
            _loc3_;
            this.awards_rollover_clip.gravitons_panel.graviton_icon.visible = true;
         }
         else
         {
            this.awards_rollover_clip.star_gold.visible = false;
            this.awards_rollover_clip.star_black.visible = true;
            this.awards_rollover_clip.name_text.text = "? ? ? ? ?";
            if(§_-dS§.awards[param1].hidden_description == true)
            {
               this.awards_rollover_clip.desc_text.text = "THIS IS A SECRET AWARD\nUNLOCK IT TO FIND OUT WHAT IT IS";
               _loc2_;
               _loc2_;
            }
            else
            {
               this.awards_rollover_clip.desc_text.text = §_-dS§.awards[param1].award_description;
            }
            this.awards_rollover_clip.number_holder.visible = false;
            this.awards_rollover_clip.gravitons_panel.gravitons_text.textColor = 6710886;
            _loc2_;
            _loc2_;
            this.awards_rollover_clip.gravitons_panel.g_text.textColor = 6710886;
            this.awards_rollover_clip.gravitons_panel.graviton_icon.visible = false;
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
      
      public function §_-0-l§() : String
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
         var _loc2_:Number = _loc1_ - SafeGlobal.§_-bM§;
         _loc12_;
         _loc13_;
         var _loc3_:Number = SafeGlobal.§_-0l§ - _loc2_;
         _loc13_;
         if(_loc3_ > 0)
         {
            _loc4_ = Math.floor(_loc3_);
            _loc12_;
            _loc13_;
            _loc5_ = Math.floor(_loc4_ / 60);
            _loc6_ = Math.floor(_loc5_ / 60);
            _loc12_;
            _loc7_ = Math.floor(_loc6_ / 24);
            _loc13_;
            _loc13_;
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
            _loc10_ = (_loc6_ % 24).toString();
            _loc13_;
            _loc13_;
            _loc11_ = _loc7_.toString();
            _loc13_;
            if(_loc7_ > 0)
            {
               return String(_loc11_ + "D " + _loc10_ + "H");
            }
            if(_loc6_ > 0)
            {
               return String(_loc10_ + "H " + _loc9_ + "M");
            }
            _loc12_;
            _loc12_;
            _loc13_;
            _loc13_;
            if(_loc5_ > 0)
            {
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
      
      public function §_-QY§() : String
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
         _loc12_;
         _loc12_;
         _loc12_;
         _loc12_;
         var _loc2_:Number = _loc1_ - SafeGlobal.§_-o-§;
         _loc13_;
         _loc13_;
         _loc12_;
         _loc12_;
         var _loc3_:Number = SafeGlobal.§_-P5§ - _loc2_;
         _loc13_;
         if(_loc3_ > 0)
         {
            _loc12_;
            _loc4_ = Math.floor(_loc3_);
            _loc5_ = Math.floor(_loc4_ / 60);
            _loc13_;
            _loc13_;
            _loc13_;
            _loc6_ = Math.floor(_loc5_ / 60);
            _loc13_;
            _loc7_ = Math.floor(_loc6_ / 24);
            _loc13_;
            _loc13_;
            _loc13_;
            _loc13_;
            _loc13_;
            _loc13_;
            _loc8_ = (_loc4_ % 60).toString();
            _loc12_;
            _loc12_;
            _loc12_;
            _loc9_ = (_loc5_ % 60).toString();
            _loc13_;
            _loc12_;
            _loc13_;
            _loc13_;
            _loc12_;
            _loc12_;
            _loc13_;
            _loc10_ = (_loc6_ % 24).toString();
            _loc13_;
            _loc13_;
            _loc11_ = _loc7_.toString();
            _loc13_;
            _loc13_;
            _loc13_;
            if(_loc7_ > 0)
            {
               return String(_loc11_ + "D " + _loc10_ + "H");
            }
            if(_loc6_ > 0)
            {
               _loc12_;
               _loc12_;
               return String(_loc10_ + "H " + _loc9_ + "M");
            }
            if(_loc5_ > 0)
            {
               _loc12_;
               return String(_loc9_ + "M " + _loc8_ + "S");
            }
            if(_loc4_ > 0)
            {
               _loc12_;
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
         var _loc1_:String = §_-cq§.§_-Cp§[SafeGlobal.§_-dW§];
         var _loc2_:Array = _loc1_.split("X");
         _loc6_;
         _loc6_;
         var _loc3_:int = SafeGlobal.§_-mh§;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc6_;
         if(SafeGlobal.§_-dW§ == 18)
         {
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            _loc3_ = SafeGlobal.§_-mh§ / 60;
         }
         var _loc4_:String = String(_loc2_[0] + _loc3_ + _loc2_[1]);
         return _loc4_;
      }
      
      public function getWeeklyAwardDesc() : String
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:String = §_-cq§.§_-Cp§[SafeGlobal.§_-7T§];
         var _loc2_:Array = _loc1_.split("X");
         _loc5_;
         var _loc3_:int = SafeGlobal.§_-if§;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         if(SafeGlobal.§_-7T§ == 18)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            _loc3_ = SafeGlobal.§_-if§ / 60;
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
         _loc5_;
         this.other_awards_clip.daily_award_desc.text = this.getDailyAwardDesc();
         this.other_awards_clip.daily_total_text.text = String("TOTAL " + Global.other_stats[Global.§_-Rs§]);
         _loc5_;
         if(SafeGlobal.§_-yA§ == -1)
         {
            _loc5_;
            this.other_awards_clip.daily_progress_text.text = "";
            this.other_awards_clip.daily_award_star.visible = true;
            this.other_awards_clip.daily_black_star.visible = false;
            this.other_awards_clip.daily_progress_mask.scaleX = 1;
            _loc4_;
            this.other_awards_clip.daily_progress_bar.mask = this.other_awards_clip.daily_progress_mask;
            this.other_awards_clip.daily_progress_bg.visible = true;
            this.other_awards_clip.daily_progress_bar.visible = true;
            this.other_awards_clip.daily_progress_mask.visible = true;
            this.other_awards_clip.daily_completed_text.visible = true;
            this.other_awards_clip.daily_time_left.text = String(this.§_-0-l§());
         }
         else
         {
            if(SafeGlobal.§_-dW§ == 18)
            {
               _loc4_;
               _loc2_ = SafeGlobal.§_-yA§ / 60;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc4_;
               _loc5_;
               _loc3_ = SafeGlobal.§_-mh§ / 60;
               this.other_awards_clip.daily_progress_text.text = String(_loc2_ + "/" + _loc3_);
               _loc5_;
            }
            else
            {
               this.other_awards_clip.daily_progress_text.text = String(SafeGlobal.§_-yA§ + "/" + SafeGlobal.§_-mh§);
            }
            this.other_awards_clip.daily_award_star.visible = false;
            _loc5_;
            _loc5_;
            this.other_awards_clip.daily_black_star.visible = true;
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            _loc4_;
            _loc1_ = SafeGlobal.§_-yA§ / SafeGlobal.§_-mh§;
            _loc5_;
            _loc5_;
            this.other_awards_clip.daily_progress_mask.scaleX = _loc1_;
            _loc5_;
            _loc5_;
            this.other_awards_clip.daily_progress_bar.mask = this.other_awards_clip.daily_progress_mask;
            this.other_awards_clip.daily_progress_bg.visible = true;
            this.other_awards_clip.daily_progress_bar.visible = true;
            _loc4_;
            _loc4_;
            this.other_awards_clip.daily_progress_mask.visible = true;
            this.other_awards_clip.daily_completed_text.visible = false;
            this.other_awards_clip.daily_time_left.text = String(this.§_-0-l§());
         }
         this.other_awards_clip.weekly_award_desc.text = this.getWeeklyAwardDesc();
         _loc4_;
         this.other_awards_clip.weekly_total_text.text = String("TOTAL " + Global.other_stats[Global.§_-kt§]);
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         _loc4_;
         _loc4_;
         if(SafeGlobal.§_-7j§ == -1)
         {
            this.other_awards_clip.weekly_progress_text.text = "";
            this.other_awards_clip.weekly_award_star.visible = true;
            _loc5_;
            this.other_awards_clip.weekly_black_star.visible = false;
            this.other_awards_clip.weekly_progress_mask.scaleX = 1;
            this.other_awards_clip.weekly_progress_bar.mask = this.other_awards_clip.weekly_progress_mask;
            _loc4_;
            _loc4_;
            this.other_awards_clip.weekly_progress_bg.visible = true;
            _loc4_;
            _loc4_;
            this.other_awards_clip.weekly_progress_bar.visible = true;
            this.other_awards_clip.weekly_progress_mask.visible = true;
            this.other_awards_clip.weekly_completed_text.visible = true;
            _loc4_;
            _loc4_;
            this.other_awards_clip.weekly_time_left.text = String(this.§_-QY§());
            _loc5_;
         }
         else
         {
            _loc4_;
            _loc5_;
            _loc5_;
            if(SafeGlobal.§_-7T§ == 18)
            {
               _loc4_;
               _loc5_;
               _loc2_ = SafeGlobal.§_-7j§ / 60;
               _loc5_;
               _loc5_;
               _loc4_;
               _loc3_ = SafeGlobal.§_-if§ / 60;
               this.other_awards_clip.weekly_progress_text.text = String(_loc2_ + "/" + _loc3_);
               _loc4_;
            }
            else
            {
               this.other_awards_clip.weekly_progress_text.text = String(SafeGlobal.§_-7j§ + "/" + SafeGlobal.§_-if§);
            }
            this.other_awards_clip.weekly_award_star.visible = false;
            this.other_awards_clip.weekly_black_star.visible = true;
            _loc1_ = SafeGlobal.§_-7j§ / SafeGlobal.§_-if§;
            this.other_awards_clip.weekly_progress_mask.scaleX = _loc1_;
            _loc5_;
            _loc5_;
            this.other_awards_clip.weekly_progress_bar.mask = this.other_awards_clip.weekly_progress_mask;
            this.other_awards_clip.weekly_progress_bg.visible = true;
            this.other_awards_clip.weekly_progress_bar.visible = true;
            this.other_awards_clip.weekly_progress_mask.visible = true;
            this.other_awards_clip.weekly_completed_text.visible = false;
            this.other_awards_clip.weekly_time_left.text = String(this.§_-QY§());
            _loc5_;
         }
         this.awards_rollover_clip.visible = false;
         this.other_awards_clip.visible = true;
      }
      
      public function update() : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         while(_loc2_ < this.award_stars.length)
         {
            _loc4_;
            _loc3_;
            _loc3_;
            if(_loc2_ < §_-dS§.awards.length)
            {
               _loc4_;
               _loc4_;
               this.award_stars[_loc2_].displayNew(false);
               _loc3_;
               _loc3_;
               _loc4_;
               if(§_-dS§.awards[_loc2_].award_complete == 1)
               {
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  this.award_stars[_loc2_].displayAwardUnlocked(true);
                  _loc4_;
                  _loc3_;
                  _loc3_;
                  if(§_-dS§.awards[_loc2_].new_award == true)
                  {
                     _loc3_;
                     _loc3_;
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
         _loc4_;
         _loc4_;
         this.percent_text.text = String(_loc1_);
         this.hideAwardDetails();
      }
      
      public function updatePercentage() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         while(_loc2_ < §_-dS§.awards.length)
         {
            if(§_-dS§.awards[_loc2_].award_complete == 1)
            {
               _loc4_;
               _loc1_++;
               _loc3_;
            }
            _loc2_++;
            _loc4_;
         }
         _loc4_;
         _loc4_;
         this.percent_text.text = String(_loc1_);
      }
      
      public function updateEndGameAward(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(§_-dS§.awards[param1].award_complete == 1)
         {
            _loc2_;
            _loc2_;
            _loc2_;
            this.award_stars[param1].displayAwardUnlocked(true);
            _loc2_;
            _loc2_;
            _loc2_;
            _loc3_;
            if(§_-dS§.awards[param1].new_award == true)
            {
               _loc2_;
               _loc2_;
               this.award_stars[param1].displayNew(true);
               _loc3_;
            }
            this.updatePercentage();
         }
      }
      
      public function checkNewAwards() : Boolean
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         while(_loc1_ < §_-dS§.awards.length)
         {
            if(§_-dS§.awards[_loc1_].new_award == true)
            {
               _loc3_;
               _loc3_;
               return true;
            }
            _loc1_++;
            _loc3_;
         }
         return false;
      }
      
      public function inRollOutZone(param1:AwardStar) : Boolean
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc2_;
         if(mouseX > this.left_bounds && mouseX < this.right_bounds && mouseY > this.top_bounds && mouseY < this.bottom_bounds)
         {
            _loc2_;
            _loc2_;
            this.saved_award_star = param1;
            return true;
         }
         this.saved_award_star = null;
         return false;
      }
      
      public function showDailyDetails() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.other_awards_clip.daily_award_rollover.visible = true;
         _loc2_;
         _loc2_;
         this.other_awards_clip.daily_award_desc.visible = false;
         _loc2_;
         this.other_awards_clip.daily_progress_text.visible = false;
         _loc1_;
         _loc1_;
         this.other_awards_clip.daily_progress_bg.visible = false;
         _loc2_;
         this.other_awards_clip.daily_progress_bar.visible = false;
         this.other_awards_clip.daily_progress_mask.visible = false;
         this.other_awards_clip.daily_completed_text.visible = false;
         _loc1_;
         _loc1_;
         this.other_awards_clip.daily_time_left.visible = false;
      }
      
      public function hideDailyDetails() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.other_awards_clip.daily_award_rollover.visible = false;
         _loc1_;
         _loc1_;
         this.other_awards_clip.daily_award_desc.visible = true;
         _loc1_;
         _loc1_;
         this.other_awards_clip.daily_progress_text.visible = true;
         _loc1_;
         _loc1_;
         this.other_awards_clip.daily_time_left.visible = true;
         _loc2_;
         this.hideAwardDetails();
      }
      
      public function showWeeklyDetails() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.other_awards_clip.weekly_award_rollover.visible = true;
         _loc1_;
         this.other_awards_clip.weekly_award_desc.visible = false;
         this.other_awards_clip.weekly_progress_text.visible = false;
         this.other_awards_clip.weekly_progress_bg.visible = false;
         this.other_awards_clip.weekly_progress_bar.visible = false;
         this.other_awards_clip.weekly_progress_mask.visible = false;
         this.other_awards_clip.weekly_completed_text.visible = false;
         _loc1_;
         _loc1_;
         this.other_awards_clip.weekly_time_left.visible = false;
      }
      
      public function hideWeeklyDetails() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.other_awards_clip.weekly_award_rollover.visible = false;
         _loc1_;
         this.other_awards_clip.weekly_award_desc.visible = true;
         _loc2_;
         _loc2_;
         this.other_awards_clip.weekly_progress_text.visible = true;
         _loc2_;
         _loc2_;
         this.other_awards_clip.weekly_time_left.visible = true;
         _loc2_;
         _loc2_;
         this.hideAwardDetails();
      }
      
      public function rollOverDailyStar(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.tween_x = new Tween(param1.currentTarget,"scaleX",Strong.easeOut,1,1.2,16,false);
         _loc2_;
         this.tween_y = new Tween(param1.currentTarget,"scaleY",Strong.easeOut,1,1.2,16,false);
         _loc3_;
         this.tween_x.start();
         _loc3_;
         this.tween_y.start();
         _loc3_;
         _loc3_;
         this.showDailyDetails();
      }
      
      public function rollOutDailyStar(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.tween_x = new Tween(param1.currentTarget,"scaleX",Strong.easeOut,1.2,1,16,false);
         _loc2_;
         _loc2_;
         this.tween_y = new Tween(param1.currentTarget,"scaleY",Strong.easeOut,1.2,1,16,false);
         _loc2_;
         _loc2_;
         this.tween_x.start();
         _loc3_;
         _loc3_;
         this.tween_y.start();
         _loc2_;
         this.hideDailyDetails();
      }
      
      public function rollOverWeeklyStar(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.tween_x = new Tween(param1.currentTarget,"scaleX",Strong.easeOut,1,1.2,16,false);
         _loc3_;
         _loc3_;
         this.tween_y = new Tween(param1.currentTarget,"scaleY",Strong.easeOut,1,1.2,16,false);
         _loc2_;
         this.tween_x.start();
         _loc3_;
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
         this.tween_x.start();
         _loc3_;
         _loc3_;
         this.tween_y.start();
         _loc3_;
         this.hideWeeklyDetails();
      }
   }
}
