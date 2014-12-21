package §_-nC§
{
   import §_-nI§.API;
   import §_-nI§.§_-NZ§;
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
   import §_-nI§.§_-6O§;
   
   public dynamic class §_-Q6§ extends MovieClip
   {
      
      public function §_-Q6§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-bj§ = new Dictionary(true);
         _loc2_;
         _loc2_;
         super();
         _loc2_;
         _loc2_;
         addFrameScript(0,this.frame1);
         _loc1_;
         _loc1_;
         addEventListener(Event.FRAME_CONSTRUCTED,this.§_-l§,false,0,true);
      }
      
      public var loader:§_-lE§;
      
      public var ad:§_-ai§;
      
      public var §_-bj§:Dictionary;
      
      public var §_-EB§:int = -1;
      
      public var §_-rp§:String;
      
      public var §_-4g§:String;
      
      public var §_-3w§:String;
      
      public var debugMode:String;
      
      public var §_-Qw§:String;
      
      public var §_-PQ§:Boolean;
      
      public var §_-C8§:Boolean;
      
      public var §_-Aw§:String;
      
      public var §_-Zr§:String;
      
      public var §_-WG§:Boolean;
      
      public function §_-Fd§(param1:Event) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         removeEventListener(Event.ENTER_FRAME,this.§_-Fd§);
         _loc4_;
         if(!this.§_-Aw§)
         {
            _loc4_;
            _loc4_;
            this.§_-Aw§ = "Video";
            _loc4_;
            _loc4_;
         }
         _loc3_;
         if(this.ad)
         {
            _loc4_;
            _loc4_;
            this.ad.§_-Aw§ = this.§_-Aw§;
         }
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         if("Flash Ad + Preloader" === _loc2_)
         {
            _loc4_;
            _loc3_;
         }
         else
         {
            _loc4_;
            _loc4_;
            _loc3_;
            if("Flash Ad Only" === _loc2_)
            {
               _loc3_;
               _loc3_;
               _loc3_;
            }
            else
            {
               switch(null)
               {
                  case "Invisible":
                     gotoAndStop("adPreloader");
                     _loc4_;
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
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         var mainClass:Class = null;
         _loc3_;
         var main:* = undefined;
         gotoAndStop("invisible");
         _loc3_;
         if(this.§_-WG§)
         {
            API.loadOfficialVersion();
            return;
         }
         if(this.§_-Zr§)
         {
            try
            {
               _loc4_;
               _loc4_;
               mainClass = getDefinitionByName(this.§_-Zr§) as Class;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               if((mainClass) && (parent))
               {
                  _loc3_;
                  _loc3_;
                  main = new mainClass();
                  _loc4_;
                  _loc4_;
                  parent.addChild(main);
                  _loc4_;
                  _loc4_;
                  parent.removeChild(this);
               }
            }
            catch(error:*)
            {
               if(_loc4_)
               {
                  if(_loc4_)
                  {
                  }
                  §_-NZ§.logError("Unable to create main class: ");
               }
            }
         }
         if(this.§_-Zr§)
         {
            return;
         }
      }
      
      public function §_-LG§() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:* = API;
         _loc3_;
         _loc4_;
         if((_loc1_) && !_loc1_.connected)
         {
            _loc3_;
            _loc3_;
            if(!this.§_-rp§)
            {
               _loc4_;
               §_-NZ§.logError("No API ID entered in the API Connector component.","You can create an API ID for this submission at http://newgrounds.com/account/flashapi","Enter your API ID into the API Connector using the Component Inspector (Window -> Component Inspector).");
               _loc4_;
               _loc4_;
               return;
            }
            _loc4_;
            _loc3_;
            _loc3_;
            _loc4_;
            if("Off" === _loc2_)
            {
               _loc3_;
               _loc3_;
               _loc3_;
            }
            else
            {
               _loc3_;
               _loc4_;
               _loc4_;
               if("Simulate Logged-in User" === _loc2_)
               {
                  _loc4_;
                  _loc4_;
               }
               else
               {
                  _loc3_;
                  _loc4_;
                  if("Simulate Logged-out User" === _loc2_)
                  {
                     _loc3_;
                     _loc4_;
                  }
                  else
                  {
                     _loc3_;
                     _loc3_;
                     _loc3_;
                     _loc3_;
                     if("Simulate New Version" === _loc2_)
                     {
                        _loc3_;
                        _loc3_;
                     }
                     else
                     {
                        switch(null)
                        {
                           case "Simulate Host Blocked":
                              _loc1_.debugMode = _loc1_.RELEASE_MODE;
                              break;
                           default:
                              _loc1_.debugMode = _loc1_.DEBUG_MODE_HOST_BLOCKED;
                              _loc3_;
                        }
                        _loc4_;
                        _loc4_;
                        if(this.loader)
                        {
                           _loc4_;
                           _loc4_;
                           this.loader.§_-RV§ = true;
                           _loc3_;
                           _loc3_;
                        }
                        _loc1_.addEventListener(§_-6O§.§_-IA§,this.§_-EA§);
                        _loc4_;
                        _loc4_;
                        _loc1_.connect(root,this.§_-rp§,this.§_-4g§,this.§_-3w§);
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
      
      public function §_-EA§(param1:§_-6O§) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(this.loader)
         {
            this.loader.§_-RV§ = false;
            _loc2_;
            _loc2_;
         }
         _loc2_;
         _loc3_;
         _loc3_;
         _loc2_;
         if((this.§_-C8§) && (param1.success) && (param1.data.newVersion))
         {
            _loc2_;
            this.§_-WG§ = true;
         }
         _loc3_;
         _loc3_;
         _loc3_;
         _loc2_;
         if((this.§_-PQ§) && !param1.success && param1.error == §_-6O§.§_-Zy§)
         {
            _loc2_;
            this.§_-WG§ = true;
            _loc2_;
         }
         if(this.§_-WG§)
         {
            _loc2_;
            gotoAndStop("adPreloader");
            _loc2_;
            _loc2_;
            this.§_-m8§();
         }
      }
      
      public function §_-m8§() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:uint = 0;
         if(parent)
         {
            _loc2_;
            _loc1_ = parent.numChildren - 1;
            _loc3_;
            _loc3_;
            if(parent.getChildIndex(this) != _loc1_)
            {
               _loc3_;
               parent.setChildIndex(this,_loc1_);
            }
         }
         if(stage)
         {
            x = (stage.stageWidth - width) / 2;
            y = (stage.stageHeight - height) / 2;
            visible = true;
         }
         _loc2_;
         _loc2_;
         if((root) && root is MovieClip)
         {
            MovieClip(root).stop();
         }
      }
      
      function §_-T-§(param1:int) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         _loc4_;
         var curFrame:int = param1;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(!(this.ad == null) && curFrame >= 1 && curFrame <= 21 && (this.§_-bj§[this.ad] == undefined || !(int(this.§_-bj§[this.ad]) >= 1 && int(this.§_-bj§[this.ad]) <= 21)))
         {
            this.§_-bj§[this.ad] = curFrame;
            try
            {
               _loc5_;
               _loc5_;
               _loc4_;
               _loc4_;
               _loc4_;
               this.ad["componentInspectorSetting"] = true;
               _loc4_;
               _loc4_;
            }
            catch(e:Error)
            {
            }
            _loc5_;
            _loc4_;
            this.ad.§_-Aw§ = "Video";
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            this.ad.§_-rp§ = "";
            _loc5_;
            _loc5_;
            _loc5_;
            this.ad.§_-Sb§ = true;
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
      
      function §_-l§(param1:Object) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:int = currentFrame;
         _loc4_;
         if(this.§_-EB§ == _loc2_)
         {
            _loc4_;
            return;
         }
         this.§_-EB§ = _loc2_;
         _loc4_;
         _loc4_;
         this.§_-T-§(_loc2_);
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         stop();
         _loc1_;
         _loc1_;
         if((root) && root is MovieClip)
         {
            MovieClip(root).stop();
            _loc1_;
            _loc1_;
         }
         x = int(x);
         _loc1_;
         _loc1_;
         y = int(y);
         _loc1_;
         if(!this.debugMode)
         {
            _loc2_;
            this.debugMode = "Simulate Logged-in User";
            _loc1_;
         }
         _loc2_;
         _loc2_;
         if(!this.§_-Qw§)
         {
            _loc2_;
            this.§_-Qw§ = "Flash Ad + Preloader";
            _loc1_;
         }
         _loc2_;
         if(!this.§_-Aw§)
         {
            _loc2_;
            _loc2_;
            this.§_-Aw§ = "Video";
         }
         _loc1_;
         if(this.ad)
         {
            this.ad.§_-Aw§ = this.§_-Aw§;
            _loc1_;
         }
         addEventListener(Event.ENTER_FRAME,this.§_-Fd§);
         if(this.§_-Qw§ == "Invisible")
         {
            _loc2_;
            _loc2_;
            visible = false;
         }
         this.§_-LG§();
      }
   }
}
