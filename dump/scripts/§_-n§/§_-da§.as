package §_-n§
{
   import §_-8B§.API;
   import §_-8B§.§_-tz§;
   import flash.events.*;
   import flash.utils.*;
   import adobe.utils.*;
   import flash.accessibility.*;
   import flash.desktop.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.external.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.globalization.*;
   import flash.media.*;
   import flash.net.*;
   import flash.net.drm.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.sampler.*;
   import flash.sensors.*;
   import flash.system.*;
   import flash.text.*;
   import flash.text.ime.*;
   import flash.text.engine.*;
   import flash.ui.*;
   import flash.xml.*;
   import §_-8B§.§_-E6§;
   
   public dynamic class §_-da§ extends MovieClip
   {
      
      public function §_-da§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.§_-yN§ = new Dictionary(true);
         _loc2_;
         super();
         _loc2_;
         addFrameScript(0,this.frame1);
         _loc2_;
         addEventListener(Event.FRAME_CONSTRUCTED,this.§_-xm§,false,0,true);
      }
      
      public var loader:§_-8§;
      
      public var ad:§_-B1§;
      
      public var §_-yN§:Dictionary;
      
      public var §_-dM§:int = -1;
      
      public var §_-XR§:String;
      
      public var §_-jH§:String;
      
      public var §_-4V§:String;
      
      public var debugMode:String;
      
      public var §_-W8§:String;
      
      public var §_-E4§:Boolean;
      
      public var §_-Cb§:Boolean;
      
      public var §_-5u§:String;
      
      public var §_-3M§:String;
      
      public var §_-HO§:Boolean;
      
      public function §_-8m§(param1:Event) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         removeEventListener(Event.ENTER_FRAME,this.§_-8m§);
         _loc4_;
         if(!this.§_-5u§)
         {
            _loc4_;
            _loc4_;
            this.§_-5u§ = "Video";
            _loc3_;
            _loc3_;
         }
         _loc3_;
         if(this.ad)
         {
            _loc4_;
            this.ad.§_-5u§ = this.§_-5u§;
         }
         _loc4_;
         _loc3_;
         _loc4_;
         _loc4_;
         if("Flash Ad + Preloader" === _loc2_)
         {
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
         }
         else
         {
            _loc4_;
            _loc4_;
            _loc3_;
            if("Flash Ad Only" === _loc2_)
            {
               _loc4_;
               _loc3_;
            }
            else
            {
               switch(null)
               {
                  case "Invisible":
                     gotoAndStop("adPreloader");
                     _loc3_;
                     break;
               }
               return;
            }
            if("Flash Ad Only" === _loc2_)
            {
            }
         }
         if("Flash Ad + Preloader" === _loc2_)
         {
         }
      }
      
      public function _onLoaded() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc3_;
         var mainClass:Class = null;
         var main:* = undefined;
         gotoAndStop("invisible");
         _loc3_;
         if(this.§_-HO§)
         {
            _loc3_;
            _loc3_;
            API.loadOfficialVersion();
            return;
         }
         if(this.§_-3M§)
         {
            try
            {
               _loc3_;
               mainClass = getDefinitionByName(this.§_-3M§) as Class;
               _loc3_;
               _loc3_;
               _loc4_;
               _loc4_;
               _loc3_;
               if((mainClass) && (parent))
               {
                  _loc4_;
                  main = new mainClass();
                  _loc4_;
                  _loc4_;
                  parent.addChild(main);
                  _loc3_;
                  _loc3_;
                  parent.removeChild(this);
               }
            }
            catch(error:*)
            {
               if(!(_loc4_ && (_loc1_)))
               {
                  if(_loc4_)
                  {
                  }
                  §_-tz§.logError("Unable to create main class: ");
               }
            }
         }
         if(this.§_-3M§)
         {
            return;
         }
      }
      
      public function §_-mH§() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:* = API;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if((_loc1_) && !_loc1_.connected)
         {
            _loc4_;
            _loc4_;
            if(!this.§_-XR§)
            {
               _loc3_;
               §_-tz§.logError("No API ID entered in the API Connector component.","You can create an API ID for this submission at http://newgrounds.com/account/flashapi","Enter your API ID into the API Connector using the Component Inspector (Window -> Component Inspector).");
               _loc4_;
               _loc4_;
               return;
            }
            _loc3_;
            _loc3_;
            _loc3_;
            if("Off" === _loc2_)
            {
               _loc4_;
               _loc4_;
               _loc4_;
            }
            else
            {
               _loc3_;
               _loc3_;
               _loc3_;
               if("Simulate Logged-in User" === _loc2_)
               {
                  _loc3_;
                  _loc3_;
               }
               else
               {
                  _loc4_;
                  _loc4_;
                  _loc3_;
                  if("Simulate Logged-out User" === _loc2_)
                  {
                     _loc4_;
                     _loc4_;
                     _loc4_;
                  }
                  else
                  {
                     _loc4_;
                     _loc4_;
                     if("Simulate New Version" === _loc2_)
                     {
                        _loc3_;
                        _loc3_;
                        _loc3_;
                     }
                     else
                     {
                        switch(null)
                        {
                           case "Simulate Host Blocked":
                              _loc1_.debugMode = _loc1_.RELEASE_MODE;
                              _loc4_;
                              break;
                           default:
                              _loc1_.debugMode = _loc1_.DEBUG_MODE_HOST_BLOCKED;
                        }
                        _loc3_;
                        if(this.loader)
                        {
                           this.loader.§_-3y§ = true;
                           _loc3_;
                           _loc3_;
                        }
                        _loc1_.addEventListener(§_-E6§.§_-al§,this.§_-X2§);
                        _loc1_.connect(root,this.§_-XR§,this.§_-jH§,this.§_-4V§);
                     }
                     if("Simulate New Version" === _loc2_)
                     {
                     }
                  }
                  if("Simulate Logged-out User" === _loc2_)
                  {
                  }
               }
               if("Simulate Logged-in User" === _loc2_)
               {
               }
            }
            if("Off" === _loc2_)
            {
            }
         }
      }
      
      public function §_-X2§(param1:§_-E6§) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         if(this.loader)
         {
            _loc2_;
            this.loader.§_-3y§ = false;
         }
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         if((this.§_-Cb§) && (param1.success) && (param1.data.newVersion))
         {
            _loc2_;
            _loc2_;
            this.§_-HO§ = true;
         }
         _loc2_;
         _loc2_;
         _loc3_;
         if((this.§_-E4§) && !param1.success && param1.error == §_-E6§.§_-SK§)
         {
            this.§_-HO§ = true;
         }
         if(this.§_-HO§)
         {
            _loc2_;
            _loc2_;
            gotoAndStop("adPreloader");
            _loc2_;
            this.§_-Ne§();
         }
      }
      
      public function §_-Ne§() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:uint = 0;
         if(parent)
         {
            _loc3_;
            _loc1_ = parent.numChildren - 1;
            if(parent.getChildIndex(this) != _loc1_)
            {
               parent.setChildIndex(this,_loc1_);
               _loc2_;
               _loc2_;
            }
         }
         if(stage)
         {
            x = (stage.stageWidth - width) / 2;
            y = (stage.stageHeight - height) / 2;
            _loc3_;
            _loc3_;
            visible = true;
         }
         _loc3_;
         if((root) && root is MovieClip)
         {
            MovieClip(root).stop();
         }
      }
      
      function §_-A7§(param1:int) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         var curFrame:int = param1;
         _loc5_;
         _loc4_;
         _loc4_;
         _loc5_;
         if(!(this.ad == null) && curFrame >= 1 && curFrame <= 21 && (this.§_-yN§[this.ad] == undefined || !(int(this.§_-yN§[this.ad]) >= 1 && int(this.§_-yN§[this.ad]) <= 21)))
         {
            this.§_-yN§[this.ad] = curFrame;
            try
            {
               _loc4_;
               _loc4_;
               _loc5_;
               _loc5_;
               _loc5_;
               this.ad["componentInspectorSetting"] = true;
               _loc5_;
               _loc5_;
            }
            catch(e:Error)
            {
            }
            _loc4_;
            _loc5_;
            _loc5_;
            this.ad.§_-5u§ = "Video";
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            this.ad.§_-XR§ = "";
            _loc5_;
            _loc5_;
            _loc4_;
            this.ad.§_-QL§ = true;
            _loc5_;
            _loc5_;
            try
            {
               this.ad["componentInspectorSetting"] = false;
            }
            catch(e:Error)
            {
            }
         }
      }
      
      function §_-xm§(param1:Object) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:int = currentFrame;
         _loc3_;
         if(this.§_-dM§ == _loc2_)
         {
            _loc4_;
            _loc4_;
            return;
         }
         this.§_-dM§ = _loc2_;
         _loc4_;
         _loc4_;
         this.§_-A7§(_loc2_);
      }
      
      function frame1() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         stop();
         _loc1_;
         _loc2_;
         if((root) && root is MovieClip)
         {
            MovieClip(root).stop();
         }
         x = int(x);
         _loc2_;
         y = int(y);
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         if(!this.debugMode)
         {
            this.debugMode = "Simulate Logged-in User";
         }
         _loc2_;
         if(!this.§_-W8§)
         {
            _loc2_;
            _loc2_;
            this.§_-W8§ = "Flash Ad + Preloader";
         }
         _loc2_;
         _loc2_;
         if(!this.§_-5u§)
         {
            this.§_-5u§ = "Video";
            _loc1_;
            _loc1_;
         }
         _loc1_;
         _loc1_;
         if(this.ad)
         {
            this.ad.§_-5u§ = this.§_-5u§;
            _loc1_;
            _loc1_;
         }
         addEventListener(Event.ENTER_FRAME,this.§_-8m§);
         _loc1_;
         _loc1_;
         if(this.§_-W8§ == "Invisible")
         {
            visible = false;
         }
         this.§_-mH§();
      }
   }
}
