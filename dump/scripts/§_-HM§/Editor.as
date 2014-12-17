package §_-HM§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.display.BitmapData;
   import flash.display.Bitmap;
   import §_-zO§.§_-pF§;
   import flash.geom.Rectangle;
   import com.funkypear.ui.CircleBorder;
   import fl.transitions.Tween;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   import §_-zO§.§_-Yd§;
   import §_-WX§.§switch§;
   import flash.filters.BlurFilter;
   import flash.geom.ColorTransform;
   import §_-WX§.§_-Sc§;
   
   public class Editor extends MovieClip
   {
      
      public function Editor(param1:String = "p,130,570,96,37|p,970,630,92,32|p,590,240,92,4|p,600,930,87,13|u,3,-38,0|u,3,-83,0|u,3,-161,0|u,3,37,0|u,3,85,0|u,3,168,0|u,1,-93,1|u,1,-16,1|u,1,-54,1|u,1,-158,1|u,1,18,1|u,1,101,1|u,0,16,2|u,0,-5,2|u,0,-172,2|u,0,-49,2|u,0,-101,2|u,0,-147,2|u,2,-34,3|u,2,24,3|u,2,70,3|u,2,-141,3|u,2,137,3|u,2,-173,3|g,820,860,48,2|g,330,810,-39,2|g,310,320,45,2|g,890,300,-36,2|g,550,630,43,0|g,550,550,-43,0|g,640,550,41,0|g,650,640,-39,0", param2:Number = -0.123456789, param3:Number = -0.123456789)
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         _loc6_;
         _loc6_;
         this.§_-bv§ = new Sprite();
         _loc6_;
         this.§_-G7§ = new Sprite();
         this.§_-KV§ = new Sprite();
         this.§_-P§ = new Sprite();
         this.§_-5§ = new Sprite();
         this.§_-ec§ = new Sprite();
         this.§_-cO§ = new Sprite();
         this.§_-mX§ = new Sprite();
         _loc5_;
         this.screen = new Sprite();
         this.§_-mw§ = new Array();
         _loc6_;
         _loc6_;
         this.planets = new Array();
         _loc6_;
         _loc6_;
         this.units = new Array();
         this.§_-ki§ = new Array();
         this.gates = new Array();
         this.barrels = new Array();
         this.§_-1w§ = new Array();
         this.§_-Sn§ = [];
         this.§_-4T§ = new §_-pF§(new §_-QF§());
         _loc5_;
         this.§_-bn§ = new Rectangle(0,0,1,1);
         _loc6_;
         _loc6_;
         this.§_-lN§ = new Point(0,0);
         this.§_-Rs§ = new Point();
         this.§else§ = new Point(0,0);
         _loc6_;
         super();
         _loc6_;
         this.levelData = param1;
         var _loc4_:* = "";
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         if(Global.custom_maps.length > Global.selected_map_slot)
         {
            _loc6_;
            _loc6_;
            _loc5_;
            _loc5_;
            if(Global.custom_maps[Global.selected_map_slot] != null)
            {
               _loc5_;
               _loc6_;
               _loc6_;
               _loc5_;
               _loc4_ = (Global.custom_maps[Global.selected_map_slot] as §switch§).mapData;
            }
         }
         if(_loc4_ != "")
         {
            this.§_-vR§ = true;
            _loc5_;
         }
         else
         {
            this.§_-vR§ = false;
         }
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         if(!(param2 == -0.123456789) && !(param3 == -0.123456789))
         {
            this.§_-Sp§ = param2;
            this.§_-Hg§ = param3;
         }
         Global.EDITOR = this;
         if(stage)
         {
            this.addedToStage();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.addedToStage,false,0,true);
         }
      }
      
      public var §_-bv§:Sprite;
      
      public var §_-G7§:Sprite;
      
      public var §_-KV§:Sprite;
      
      public var §_-P§:Sprite;
      
      public var §_-5§:Sprite;
      
      public var §_-ec§:Sprite;
      
      public var §_-cO§:Sprite;
      
      public var §_-mX§:Sprite;
      
      public var screen:Sprite;
      
      public var §_-Qi§:§_-wZ§;
      
      public var §_-mw§:Array;
      
      public var planets:Array;
      
      public var units:Array;
      
      public var §_-ki§:Array;
      
      public var gates:Array;
      
      public var barrels:Array;
      
      public var §_-1w§:Array;
      
      public var §_-tk§;
      
      public var dragging:EditorObject;
      
      public var selected:EditorObject;
      
      public var §_-5t§:Point;
      
      public var §_-d6§:Point;
      
      public var §_-NQ§:Boolean = false;
      
      public var §_-pe§:int = 200;
      
      public var §_-1§:int = 600;
      
      public var §_-La§:int = 150;
      
      public var §_-9u§:Number = 30;
      
      public var §_-sy§:Number = 40;
      
      public var §_-6F§:Number = 30;
      
      public var §_-wN§:Number = 15;
      
      public var §_-w3§:Number = 15;
      
      public var §_-LB§:Number = 20;
      
      public var planet_count:int = 0;
      
      public var sun_count:int = 0;
      
      public var shield_count:int = 0;
      
      public var wormhole_count:int = 0;
      
      public var mine_count:int = 0;
      
      public var barrel_count:int = 0;
      
      public var skymine_count:int = 0;
      
      public var blackhole_count:int = 0;
      
      public var units_placed:Boolean = false;
      
      public var levelData:String;
      
      public var §_-Sn§:Array;
      
      public var §_-dV§:BitmapData;
      
      public var §_-G9§:Bitmap;
      
      public var §_-4T§:§_-pF§;
      
      public var §_-bn§:Rectangle;
      
      public var §_-lN§:Point;
      
      public var §_-Rs§:Point;
      
      private var circle_border:CircleBorder;
      
      private var §_-mM§:Boolean = false;
      
      public var §else§:Point;
      
      private var §_-jE§:Tween;
      
      private var §_-SV§:Tween;
      
      private var §_-l1§:Tween;
      
      private var §_-SM§:Tween;
      
      private var §_-Sp§:Number;
      
      private var §_-Hg§:Number;
      
      public var §_-L1§:Boolean = false;
      
      public var §_-vR§:Boolean = false;
      
      public function startTest() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         Global.editor_test_map = this.§_-ic§();
         _loc2_;
         this.§_-Qi§.tweenOff(false);
      }
      
      public function cleanUp() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         if(hasEventListener(Event.ADDED_TO_STAGE))
         {
            removeEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
         }
         if(hasEventListener(Event.ENTER_FRAME))
         {
            removeEventListener(Event.ENTER_FRAME,this.§_-kg§);
         }
         if(stage.hasEventListener(MouseEvent.MOUSE_DOWN))
         {
            _loc4_;
            stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-im§);
         }
         if(stage.hasEventListener(MouseEvent.MOUSE_UP))
         {
            try
            {
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-Q0§);
               _loc3_;
               _loc3_;
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-xM§);
               _loc3_;
               _loc3_;
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-wv§);
               _loc4_;
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-r5§);
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public function addedToStage(param1:Event = null) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1)
         {
            removeEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
            _loc2_;
         }
         this.§_-dV§ = new BitmapData(800,600,true,0);
         this.§_-G9§ = new Bitmap(this.§_-dV§);
         addChild(this.§_-G9§);
         addChild(this.screen);
         addChild(this.§_-bv§);
         this.screen.x = this.§_-Sp§;
         this.screen.y = this.§_-Hg§;
         this.screen.addChild(this.§_-G7§);
         _loc2_;
         _loc2_;
         this.screen.addChild(this.§_-5§);
         this.screen.addChild(this.§_-KV§);
         this.screen.addChild(this.§_-P§);
         _loc3_;
         _loc3_;
         this.screen.addChild(this.§_-ec§);
         this.screen.addChild(this.§_-cO§);
         _loc3_;
         this.screen.addChild(this.§_-mX§);
         _loc2_;
         this.§_-Qi§ = new §_-wZ§();
         this.§_-bv§.addChild(this.§_-Qi§);
         _loc2_;
         _loc3_;
         _loc3_;
         this.§_-Qi§.x = 1055;
         this.§_-Qi§.y = 42;
         _loc2_;
         _loc2_;
         if(this.levelData != "")
         {
            this.§_-EI§();
            _loc2_;
         }
         this.§_-LO§(0.8);
         this.updateLevelBounds();
         _loc2_;
         _loc2_;
         addEventListener(Event.ENTER_FRAME,this.§_-kg§,false,0,true);
         _loc3_;
         stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-im§,false,0,true);
         this.checkValid();
         _loc3_;
         _loc3_;
         SafeGlobal.TIMELINE.bringSoundButtonsToFront();
      }
      
      public function finishTweenOn() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-mM§ = true;
         _loc1_;
         this.§_-BZ§();
         _loc2_;
         _loc2_;
         this.updateLevelBounds();
      }
      
      public function §_-1s§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         if(this.§_-G7§.numChildren > 0)
         {
            while(this.§_-G7§.numChildren > 0)
            {
               this.§_-G7§.removeChildAt(0);
               _loc1_;
               _loc1_;
            }
            _loc1_;
         }
         if(this.§_-5§.numChildren > 0)
         {
            while(this.§_-5§.numChildren > 0)
            {
               this.§_-5§.removeChildAt(0);
            }
            _loc1_;
            _loc1_;
         }
         if(this.§_-KV§.numChildren > 0)
         {
            while(this.§_-KV§.numChildren > 0)
            {
               this.§_-KV§.removeChildAt(0);
            }
         }
         if(this.§_-P§.numChildren > 0)
         {
            _loc2_;
            while(this.§_-P§.numChildren > 0)
            {
               this.§_-P§.removeChildAt(0);
               _loc1_;
            }
         }
         if(this.§_-ec§.numChildren > 0)
         {
            while(this.§_-ec§.numChildren > 0)
            {
               this.§_-ec§.removeChildAt(0);
               _loc1_;
            }
         }
         _loc2_;
         _loc2_;
         _loc2_;
         this.planets.length = 0;
         _loc2_;
         _loc2_;
         this.planets = new Array();
         _loc1_;
         _loc1_;
         _loc2_;
         _loc1_;
         this.§_-ki§.length = 0;
         this.§_-ki§ = new Array();
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.units.length = 0;
         this.units = new Array();
         _loc1_;
         _loc1_;
         _loc1_;
         this.gates.length = 0;
         this.gates = new Array();
         _loc2_;
         _loc2_;
         this.§_-1w§.length = 0;
         _loc1_;
         this.§_-1w§ = new Array();
         _loc2_;
         this.planet_count = 0;
         this.sun_count = 0;
         this.shield_count = 0;
         this.wormhole_count = 0;
         _loc2_;
         this.mine_count = 0;
         _loc1_;
         this.barrel_count = 0;
         this.skymine_count = 0;
         _loc1_;
         this.blackhole_count = 0;
      }
      
      public function §_-EI§() : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:Array = null;
         var _loc1_:Array = this.levelData.split("|");
         var _loc3_:* = 0;
         while(true)
         {
            _loc6_;
            if(_loc3_ >= _loc1_.length)
            {
               break;
            }
            _loc2_ = _loc1_[_loc3_].split(",");
            _loc7_;
            _loc7_;
            if(_loc2_[0] == "p")
            {
               if(_loc2_.length > 5)
               {
                  this.addPlanet(_loc2_[1],_loc2_[2],_loc2_[3],_loc2_[4],_loc2_[5],_loc2_[6]);
                  _loc6_;
               }
               else
               {
                  this.addPlanet(_loc2_[1],_loc2_[2],_loc2_[3],_loc2_[4]);
               }
            }
            else if(_loc2_[0] == "s")
            {
               this.addSun(_loc2_[1],_loc2_[2],_loc2_[3],-1);
            }
            else if(_loc2_[0] == "h")
            {
               this.addBlackHole(_loc2_[1],_loc2_[2],_loc2_[3],-1);
               _loc7_;
               _loc7_;
            }
            else if(_loc2_[0] == "u")
            {
               _loc6_;
               this.§_-WP§(_loc2_[1],_loc2_[2],_loc2_[3]);
            }
            else if(_loc2_[0] == "m")
            {
               this.addMine(_loc2_[3],_loc2_[1],_loc2_[2]);
            }
            else if(_loc2_[0] == "b")
            {
               _loc7_;
               _loc7_;
               this.addBarrel(_loc2_[1],_loc2_[2]);
               _loc7_;
            }
            else if(_loc2_[0] == "g")
            {
               _loc6_;
               _loc6_;
               if(_loc2_[4] == SafeGlobal.GATETYPE_DISSOLVESHIELD || _loc2_[4] == SafeGlobal.GATETYPE_SHIELD)
               {
                  this.addShield(_loc2_[4],_loc2_[1],_loc2_[2],_loc2_[3]);
               }
               else if(_loc2_[4] == SafeGlobal.GATETYPE_WORMHOLE)
               {
                  this.§_-Ci§(_loc2_[1],_loc2_[2],_loc2_[3]);
               }
               
            }
            else if(_loc2_[0] == "k")
            {
               this.addSkyMine(_loc2_[1],_loc2_[2]);
               _loc7_;
            }
            
            
            
            
            
            
            
            _loc3_++;
         }
         var _loc4_:* = -1;
         var _loc5_:* = 0;
         while(_loc5_ < this.gates.length)
         {
            _loc7_;
            _loc7_;
            _loc7_;
            if(this.gates[_loc5_] is §_-T1§)
            {
               _loc6_;
               if(_loc4_ == -1)
               {
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc4_ = _loc5_;
               }
               else
               {
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  this.gates[_loc4_].pair = this.gates[_loc5_];
                  _loc7_;
                  _loc7_;
                  this.gates[_loc5_].pair = this.gates[_loc4_];
                  _loc7_;
                  _loc4_ = -1;
               }
            }
            _loc5_++;
            _loc7_;
         }
      }
      
      public function reloadLevelData(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.levelData = param1;
      }
      
      public function §_-kg§(param1:Event) : *
      {
         var _loc13_:* = true;
         var _loc14_:* = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         _loc14_;
         _loc13_;
         _loc13_;
         if((this.dragging) && getTimer() - this.dragging.§_-kV§ >= this.§_-La§)
         {
            _loc13_;
            _loc13_;
            if(this.dragging.§_-3T§)
            {
               _loc13_;
               this.§_-xq§(this.dragging,this.screen.mouseX,this.screen.mouseY);
               this.checkValid();
               _loc14_;
            }
            else
            {
               _loc13_;
               _loc2_ = Math.round((this.screen.mouseX - this.dragging.§_-nl§.x) / 10) * 10;
               _loc3_ = Math.round((this.screen.mouseY - this.dragging.§_-nl§.y) / 10) * 10;
               _loc14_;
               _loc13_;
               _loc4_ = _loc2_ - this.§_-1§;
               _loc14_;
               _loc14_;
               _loc5_ = _loc3_ - this.§_-1§;
               _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               _loc13_;
               if(this.dragging is PlanetObject)
               {
                  _loc14_;
                  _loc14_;
                  _loc13_;
                  if(_loc6_ > this.§_-1§ - PlanetObject(this.dragging).radius)
                  {
                     _loc13_;
                     _loc7_ = Math.atan2(_loc5_,_loc4_);
                     _loc14_;
                     _loc14_;
                     _loc2_ = Math.floor(this.§_-1§ + (this.§_-1§ - PlanetObject(this.dragging).radius) * Math.cos(_loc7_));
                     _loc14_;
                     _loc3_ = Math.floor(this.§_-1§ + (this.§_-1§ - PlanetObject(this.dragging).radius) * Math.sin(_loc7_));
                  }
               }
               else if(_loc6_ > this.§_-1§)
               {
                  _loc14_;
                  _loc13_;
                  _loc13_;
                  _loc7_ = Math.atan2(_loc5_,_loc4_);
                  _loc14_;
                  _loc2_ = Math.floor(this.§_-1§ + this.§_-1§ * Math.cos(_loc7_));
                  _loc3_ = Math.floor(this.§_-1§ + this.§_-1§ * Math.sin(_loc7_));
                  _loc14_;
               }
               
               _loc13_;
               _loc13_;
               this.dragging.x = _loc2_;
               _loc13_;
               this.dragging.y = _loc3_;
               this.checkValid();
               _loc13_;
               _loc13_;
               this.dragging.§_-0v§();
               _loc14_;
               _loc14_;
               if(this.dragging is PlanetObject)
               {
                  _loc8_ = 0;
                  while(true)
                  {
                     _loc14_;
                     _loc14_;
                     _loc14_;
                     if(_loc8_ >= this.§_-ki§.length)
                     {
                        break;
                     }
                     _loc13_;
                     _loc13_;
                     if(this.§_-ki§[_loc8_].planetID == this.dragging.id)
                     {
                        this.§_-ki§[_loc8_].x = this.dragging.x + this.§_-ki§[_loc8_].planetDistance.x;
                        this.§_-ki§[_loc8_].y = this.dragging.y + this.§_-ki§[_loc8_].planetDistance.y;
                        _loc13_;
                     }
                     _loc8_++;
                  }
                  _loc14_;
                  _loc14_;
                  _loc9_ = 0;
                  _loc14_;
                  _loc14_;
                  while(true)
                  {
                     _loc14_;
                     if(_loc9_ >= this.units.length)
                     {
                        break;
                     }
                     if(this.units[_loc9_].planetID == this.dragging.id)
                     {
                        _loc14_;
                        _loc14_;
                        this.units[_loc9_].x = this.dragging.x + this.units[_loc9_].planetDistance.x;
                        _loc14_;
                        _loc14_;
                        _loc13_;
                        this.units[_loc9_].y = this.dragging.y + this.units[_loc9_].planetDistance.y;
                        _loc14_;
                        _loc14_;
                     }
                     _loc9_++;
                  }
                  _loc10_ = 0;
                  while(_loc10_ < this.barrels.length)
                  {
                     _loc13_;
                     if(this.barrels[_loc10_].planetID == this.dragging.id)
                     {
                        _loc14_;
                        _loc14_;
                        _loc13_;
                        this.barrels[_loc10_].x = this.dragging.x + this.barrels[_loc10_].planetDistance.x;
                        this.barrels[_loc10_].y = this.dragging.y + this.barrels[_loc10_].planetDistance.y;
                     }
                     _loc10_++;
                     _loc13_;
                     _loc13_;
                  }
                  _loc14_;
                  _loc14_;
               }
               this.updateLevelBounds();
               _loc13_;
            }
            this.showLines(this.dragging);
         }
         else if(this.§_-tk§)
         {
            this.§_-tk§.knob.x = Math.round(this.§_-tk§.mouseX);
            if(this.§_-tk§.knob.x < this.§_-tk§.minX)
            {
               _loc14_;
               this.§_-tk§.knob.x = this.§_-tk§.minX;
            }
            else if(this.§_-tk§.knob.x > this.§_-tk§.maxX)
            {
               _loc14_;
               _loc14_;
               this.§_-tk§.knob.x = this.§_-tk§.maxX;
               _loc13_;
               _loc13_;
            }
            
            this.§_-tk§.processPosition();
            _loc13_;
            _loc13_;
         }
         else if(this.§_-5t§)
         {
            if(!this.§_-NQ§)
            {
               this.§_-NQ§ = true;
               _loc13_;
               _loc13_;
               SafeGlobal.TIMELINE.timeline.starMap.ignoreNextJump();
               _loc14_;
               _loc14_;
            }
            _loc13_;
            _loc13_;
            _loc14_;
            _loc14_;
            _loc11_ = mouseX - this.§_-5t§.x;
            _loc13_;
            _loc13_;
            _loc12_ = mouseY - this.§_-5t§.y;
            this.screen.x = this.§_-d6§.x + _loc11_;
            _loc13_;
            _loc13_;
            this.screen.y = this.§_-d6§.y + _loc12_;
            if(this.screen.x < -650)
            {
               this.screen.x = -650;
               _loc13_;
               _loc13_;
            }
            else if(this.screen.x > 100)
            {
               this.screen.x = 100;
               _loc14_;
               _loc14_;
            }
            
            if(this.screen.y < -700)
            {
               _loc13_;
               _loc13_;
               this.screen.y = -700;
            }
            else if(this.screen.y > 100)
            {
               _loc13_;
               _loc13_;
               this.screen.y = 100;
            }
            
            SafeGlobal.TIMELINE.timeline.starMap.moveTo(0 - this.screen.x,0 - this.screen.y);
            _loc14_;
            this.§_-pY§();
         }
         
         
      }
      
      public function §_-SU§(param1:Number) : *
      {
         var _loc12_:* = true;
         var _loc13_:* = false;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = NaN;
         _loc12_;
         this.§_-Sn§ = new Array();
         _loc12_;
         _loc13_;
         _loc13_;
         var _loc2_:Number = 2 * Math.PI * param1;
         var _loc3_:* = 40;
         var _loc4_:int = int(_loc2_ / _loc3_);
         _loc12_;
         _loc13_;
         _loc4_ = int(_loc4_ / 2) * 2;
         _loc12_;
         _loc13_;
         var _loc10_:Number = Math.PI * 2 / _loc4_;
         var _loc11_:* = 0;
         while(_loc11_ < _loc4_)
         {
            _loc13_;
            _loc13_;
            _loc13_;
            _loc13_;
            _loc9_ = _loc10_ * _loc11_;
            _loc13_;
            _loc13_;
            _loc5_ = Math.round(600 + Math.cos(_loc9_) * param1);
            _loc13_;
            _loc13_;
            _loc6_ = Math.round(600 + Math.sin(_loc9_) * param1);
            _loc12_;
            _loc7_ = 90 - Math.round(_loc9_ * 180 / Math.PI);
            while(true)
            {
               _loc12_;
               _loc12_;
               _loc12_;
               if(_loc7_ < 360)
               {
                  break;
               }
               _loc12_;
               _loc12_;
               _loc13_;
               _loc7_ = _loc7_ - 360;
            }
            while(true)
            {
               _loc12_;
               if(_loc7_ >= 0)
               {
                  break;
               }
               _loc13_;
               _loc13_;
               _loc7_ = _loc7_ + 360;
               _loc13_;
               _loc13_;
            }
            _loc8_ = Math.floor(_loc7_ / 5);
            this.§_-Sn§.push(new §_-Yd§(_loc5_,_loc6_,_loc7_,_loc8_));
            _loc11_++;
            _loc13_;
         }
      }
      
      public function §_-pY§(param1:Number = -1) : *
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:§_-Yd§ = null;
         _loc7_;
         this.§_-Wb§();
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         while(_loc5_ < this.§_-Sn§.length)
         {
            _loc2_ = this.§_-Sn§[_loc5_];
            if(this.§_-p1§(_loc2_.x,_loc2_.y))
            {
               _loc6_;
               this.§_-bn§ = this.§_-4T§.getChunk(_loc2_.§_-UD§);
               this.§_-lN§.x = this.screen.x - 400 + (400 + (_loc2_.x - this.§_-bn§.height / 2));
               this.§_-lN§.y = this.screen.y - 300 + (300 + (_loc2_.y - this.§_-bn§.height / 2));
               _loc7_;
               this.§_-dV§.copyPixels(this.§_-4T§.sheetBD,this.§_-bn§,this.§_-lN§,null,null,true);
            }
            _loc5_++;
         }
      }
      
      public function §_-Wb§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.§_-dV§.fillRect(this.§_-dV§.rect,0);
      }
      
      public function §_-p1§(param1:*, param2:*) : *
      {
         return true;
      }
      
      public function updateLevelBounds() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.screen.graphics.clear();
         _loc2_;
         var _loc1_:Number = this.§_-4Z§();
         if(_loc1_ > 50)
         {
            if(this.§_-mM§)
            {
               _loc3_;
               this.§_-SU§(_loc1_);
               _loc2_;
               this.§_-pY§();
            }
         }
         this.screen.graphics.lineStyle(1,16777215,0.75);
         _loc3_;
         _loc3_;
         this.screen.graphics.moveTo(this.§_-1§ - 20,this.§_-1§);
         this.screen.graphics.lineTo(this.§_-1§ + 20,this.§_-1§);
         this.screen.graphics.moveTo(this.§_-1§,this.§_-1§ - 20);
         this.screen.graphics.lineTo(this.§_-1§,this.§_-1§ + 20);
      }
      
      public function §_-4Z§() : Number
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         var _loc1_:String = this.§_-ic§();
         var _loc2_:Number = 535;
         _loc3_;
         _loc3_;
         if(_loc1_ != "")
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc4_;
            _loc2_ = SafeGlobal.§_-p§(_loc1_);
         }
         return _loc2_;
      }
      
      public function §_-SH§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         if(!this.§_-L1§)
         {
            _loc1_;
            _loc1_;
            _loc2_;
            if(Global.custom_maps.length > Global.selected_map_slot)
            {
               _loc1_;
               _loc1_;
               if(Global.custom_maps[Global.selected_map_slot] != null)
               {
                  _loc2_;
                  this.levelData = (Global.custom_maps[Global.selected_map_slot] as §switch§).mapData;
                  _loc1_;
                  _loc1_;
               }
               else
               {
                  this.levelData = "";
                  _loc1_;
                  _loc1_;
               }
            }
            else
            {
               this.levelData = "";
            }
            this.§_-1s§();
            _loc1_;
            this.§_-EI§();
         }
         this.§_-5§.visible = false;
         this.screen.graphics.clear();
         _loc2_;
         _loc2_;
         this.§_-3g§();
         _loc2_;
         _loc2_;
         this.§_-cO§.graphics.clear();
         removeChild(this.§_-G9§);
         this.§_-G9§ = null;
         _loc1_;
         _loc1_;
         this.§_-dV§.dispose();
         this.§_-dV§ = null;
         _loc1_;
         this.§_-LO§(0.8);
      }
      
      public function §_-LO§(param1:Number) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         var _loc2_:Number = this.§_-4Z§();
         _loc4_;
         _loc4_;
         this.circle_border = new CircleBorder(_loc2_);
         _loc5_;
         _loc4_;
         _loc4_;
         _loc4_;
         this.circle_border.x = 600;
         _loc4_;
         this.circle_border.y = 600;
         var _loc3_:BlurFilter = new BlurFilter(2,2,1);
         _loc4_;
         _loc4_;
         this.circle_border.filters = [_loc3_];
         _loc4_;
         this.screen.addChild(this.circle_border);
      }
      
      public function §_-BZ§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         if(this.circle_border != null)
         {
            _loc2_;
            _loc2_;
            this.screen.removeChild(this.circle_border);
            _loc2_;
            _loc2_;
            this.circle_border = null;
         }
      }
      
      public function planetResized(param1:int) : *
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc8_:* = NaN;
         var _loc2_:* = 0;
         while(true)
         {
            _loc10_;
            _loc10_;
            if(_loc2_ >= this.§_-ki§.length)
            {
               break;
            }
            this.§_-xq§(this.§_-ki§[_loc2_],this.§_-ki§[_loc2_].x,this.§_-ki§[_loc2_].y);
            _loc9_;
            _loc9_;
            _loc2_++;
            _loc10_;
         }
         var _loc3_:* = 0;
         _loc9_;
         _loc9_;
         while(true)
         {
            _loc10_;
            _loc10_;
            if(_loc3_ >= this.units.length)
            {
               break;
            }
            this.§_-xq§(this.units[_loc3_],this.units[_loc3_].x,this.units[_loc3_].y);
            _loc10_;
            _loc10_;
            _loc3_++;
            _loc10_;
         }
         var _loc4_:* = 0;
         _loc9_;
         _loc9_;
         while(_loc4_ < this.barrels.length)
         {
            this.§_-xq§(this.barrels[_loc4_],this.barrels[_loc4_].x,this.barrels[_loc4_].y);
            _loc10_;
            _loc4_++;
            _loc9_;
            _loc9_;
         }
         _loc9_;
         _loc9_;
         var _loc5_:Number = this.planets[param1].x - this.§_-1§;
         _loc10_;
         _loc10_;
         var _loc6_:Number = this.planets[param1].y - this.§_-1§;
         var _loc7_:Number = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         _loc10_;
         if(_loc7_ > this.§_-1§ - this.planets[param1].radius)
         {
            _loc8_ = Math.atan2(_loc6_,_loc5_);
            _loc9_;
            _loc9_;
            _loc9_;
            _loc10_;
            _loc10_;
            this.planets[param1].x = this.§_-1§ + (this.§_-1§ - this.planets[param1].radius) * Math.cos(_loc8_);
            this.planets[param1].y = this.§_-1§ + (this.§_-1§ - this.planets[param1].radius) * Math.sin(_loc8_);
         }
         this.checkValid();
         _loc9_;
         this.§_-6J§();
         _loc10_;
         _loc10_;
         this.updateLevelBounds();
         _loc10_;
         this.showLines(this.planets[param1]);
      }
      
      public function §_-im§(param1:MouseEvent) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc3_;
         if(param1.target == param1.currentTarget && !(param1.target == this))
         {
            _loc2_;
            _loc2_;
            stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-im§);
            stage.addEventListener(MouseEvent.MOUSE_UP,this.§_-Q0§,false,0,true);
         }
         else if(param1.target == this)
         {
            stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-im§);
            stage.addEventListener(MouseEvent.MOUSE_UP,this.§_-xM§,false,0,true);
            this.§_-5t§ = new Point(mouseX,mouseY);
            this.§_-d6§ = new Point(this.screen.x,this.screen.y);
            this.§_-Uu§();
         }
         
      }
      
      public function §_-xM§(param1:MouseEvent) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-im§);
         _loc2_;
         _loc2_;
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-xM§);
         _loc3_;
         _loc3_;
         this.§_-5t§ = null;
         _loc2_;
         this.§_-d6§ = null;
      }
      
      public function §_-Q0§(param1:MouseEvent) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-im§);
         _loc3_;
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-Q0§);
         _loc3_;
         _loc3_;
         this.§_-Uu§();
      }
      
      public function §_-xq§(param1:EditorObject, param2:Number, param3:Number) : *
      {
         var _loc12_:* = true;
         var _loc13_:* = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         _loc13_;
         _loc13_;
         var _loc7_:Number = 5.0E9;
         var _loc8_:Number = -1;
         var _loc9_:* = 0;
         while(_loc9_ < this.planets.length)
         {
            _loc13_;
            _loc13_;
            _loc13_;
            _loc13_;
            _loc13_;
            if(!this.planets[_loc9_].sun && !this.planets[_loc9_].blackHole)
            {
               _loc12_;
               _loc13_;
               _loc13_;
               _loc13_;
               _loc13_;
               _loc13_;
               _loc13_;
               _loc4_ = param2 - this.planets[_loc9_].x;
               _loc13_;
               _loc12_;
               _loc12_;
               _loc13_;
               _loc5_ = param3 - this.planets[_loc9_].y;
               _loc13_;
               _loc13_;
               _loc12_;
               _loc12_;
               _loc13_;
               _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               _loc13_;
               if((Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) < _loc7_)
               {
                  _loc13_;
                  _loc13_;
                  _loc12_;
                  _loc12_;
                  _loc7_ = _loc6_;
                  _loc12_;
                  _loc12_;
                  _loc8_ = _loc9_;
               }
            }
            _loc9_++;
            _loc13_;
         }
         _loc13_;
         _loc12_;
         _loc12_;
         _loc12_;
         _loc12_;
         _loc13_;
         _loc4_ = param2 - this.planets[_loc8_].x;
         _loc13_;
         _loc13_;
         _loc5_ = param3 - this.planets[_loc8_].y;
         var _loc10_:Number = Math.atan2(_loc5_,_loc4_);
         var _loc11_:int = Math.round(_loc10_ * 180 / Math.PI);
         _loc12_;
         param1.planetID = _loc8_;
         param1.angle = _loc11_;
         _loc12_;
         param1.rotation = _loc11_ + 90;
         _loc13_;
         param1.x = this.planets[_loc8_].x + this.planets[_loc8_].radius * Math.cos(_loc10_);
         param1.y = this.planets[_loc8_].y + this.planets[_loc8_].radius * Math.sin(_loc10_);
         param1.planetDistance.x = param1.x - this.planets[_loc8_].x;
         _loc13_;
         _loc13_;
         param1.planetDistance.y = param1.y - this.planets[_loc8_].y;
      }
      
      public function §_-PX§(param1:Number, param2:Number) : *
      {
         var _loc11_:* = false;
         var _loc12_:* = true;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         _loc12_;
         _loc12_;
         var _loc6_:Number = 5.0E9;
         var _loc7_:Number = -1;
         var _loc8_:* = 0;
         while(_loc8_ < this.planets.length)
         {
            _loc11_;
            _loc11_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            if(!this.planets[_loc8_].sun && !this.planets[_loc8_].blackHole)
            {
               _loc12_;
               _loc12_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc3_ = param1 - this.planets[_loc8_].x;
               _loc11_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc4_ = param2 - this.planets[_loc8_].y;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc5_ = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
               if((Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_)) < _loc6_)
               {
                  _loc12_;
                  _loc12_;
                  _loc12_;
                  _loc6_ = _loc5_;
                  _loc11_;
                  _loc12_;
                  _loc12_;
                  _loc7_ = _loc8_;
                  _loc11_;
                  _loc11_;
               }
            }
            _loc8_++;
         }
         _loc12_;
         _loc11_;
         _loc12_;
         _loc12_;
         _loc12_;
         _loc3_ = param1 - this.planets[_loc7_].x;
         _loc4_ = param2 - this.planets[_loc7_].y;
         var _loc9_:Number = Math.atan2(_loc4_,_loc3_);
         var _loc10_:int = Math.round(_loc9_ * 180 / Math.PI);
         _loc11_;
         _loc11_;
         this.§else§.x = this.planets[_loc7_].x + this.planets[_loc7_].radius * Math.cos(_loc9_);
         _loc11_;
         this.§else§.y = this.planets[_loc7_].y + this.planets[_loc7_].radius * Math.sin(_loc9_);
         return this.§else§;
      }
      
      public function addPlanet(param1:Number = -1, param2:Number = -1, param3:Number = -1, param4:int = -1, param5:int = 0, param6:int = 0) : *
      {
         var _loc13_:* = true;
         var _loc14_:* = false;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = false;
         var _loc10_:* = 0;
         _loc14_;
         _loc14_;
         _loc14_;
         if(this.planet_count < Global.TOTAL_EDITOR_PLANETS)
         {
            _loc13_;
            _loc13_;
            _loc13_;
            _loc14_;
            _loc13_;
            _loc13_;
            _loc14_;
            _loc14_;
            if(param1 == -1 && param2 == -1 && param3 == -1 && param4 == -1)
            {
               _loc13_;
               this.planets.push(new PlanetObject(false));
               _loc14_;
               _loc14_;
               this.§_-G7§.addChild(this.planets[this.planets.length - 1]);
               _loc9_ = false;
               _loc14_;
               _loc10_ = 0;
               while(true)
               {
                  _loc13_;
                  _loc13_;
                  _loc14_;
                  _loc14_;
                  if(!(!_loc9_ && _loc10_ < 500))
                  {
                     break;
                  }
                  _loc10_++;
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  _loc7_ = 0 - this.screen.x + 400 + _loc10_ * Math.cos(_loc10_);
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  _loc8_ = 0 - this.screen.y + 300 + _loc10_ * Math.sin(_loc10_);
                  _loc14_;
                  _loc14_;
                  _loc14_;
                  _loc14_;
                  _loc9_ = this.§_-EE§(_loc7_,_loc8_,this.planets[this.planets.length - 1].radius);
                  _loc13_;
               }
               _loc14_;
               _loc13_;
               if(_loc10_ == 500)
               {
                  _loc13_;
               }
               _loc14_;
               _loc14_;
               _loc14_;
               this.planets[this.planets.length - 1].x = _loc7_;
               _loc14_;
               _loc14_;
               _loc13_;
               _loc13_;
               _loc13_;
               this.planets[this.planets.length - 1].y = _loc8_;
            }
            else
            {
               this.planets.push(new PlanetObject(false,false,param3,param4));
               this.§_-G7§.addChild(this.planets[this.planets.length - 1]);
               _loc13_;
               _loc14_;
               _loc14_;
               this.planets[this.planets.length - 1].x = param1;
               _loc14_;
               this.planets[this.planets.length - 1].y = param2;
            }
            _loc14_;
            _loc14_;
            _loc13_;
            _loc13_;
            if(param5 > 0)
            {
               _loc13_;
               _loc13_;
               _loc14_;
               _loc13_;
               _loc13_;
               this.planets[this.planets.length - 1].setRadioactiveValue(param5);
            }
            if(param6 == 1)
            {
               _loc14_;
               _loc14_;
               _loc13_;
               this.planets[this.planets.length - 1].turnOnShield();
            }
            this.planets[this.planets.length - 1].id = this.planets.length - 1;
            this.planets[this.planets.length - 1].init();
            _loc13_;
            this.updateLevelBounds();
            this.checkValid();
            _loc13_;
            _loc13_;
            this.planet_count++;
            this.§_-Qi§.final();
         }
      }
      
      public function addSun(param1:Number = -1, param2:Number = -1, param3:Number = -1, param4:int = -1) : *
      {
         var _loc11_:* = true;
         var _loc12_:* = false;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = false;
         var _loc8_:* = 0;
         _loc12_;
         _loc12_;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc11_;
         if(this.sun_count < Global.TOTAL_EDITOR_SUNS)
         {
            _loc12_;
            _loc11_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc11_;
            _loc11_;
            if(param1 == -1 && param2 == -1 && param3 == -1 && param4 == -1)
            {
               this.planets.push(new PlanetObject(true));
               this.§_-G7§.addChild(this.planets[this.planets.length - 1]);
               _loc7_ = false;
               _loc8_ = 0;
               while(true)
               {
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  if(!(!_loc7_ && _loc8_ < 500))
                  {
                     break;
                  }
                  _loc8_++;
                  _loc12_;
                  _loc12_;
                  _loc12_;
                  _loc12_;
                  _loc12_;
                  _loc12_;
                  _loc12_;
                  _loc12_;
                  _loc12_;
                  _loc5_ = 0 - this.screen.x + 400 + _loc8_ * Math.cos(_loc8_);
                  _loc12_;
                  _loc11_;
                  _loc12_;
                  _loc12_;
                  _loc6_ = 0 - this.screen.y + 300 + _loc8_ * Math.sin(_loc8_);
                  _loc11_;
                  _loc11_;
                  _loc7_ = this.§_-EE§(_loc5_,_loc6_,this.planets[this.planets.length - 1].radius);
                  _loc11_;
               }
               if(_loc8_ == 500)
               {
               }
               _loc11_;
               _loc11_;
               this.planets[this.planets.length - 1].x = _loc5_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc11_;
               _loc11_;
               this.planets[this.planets.length - 1].y = _loc6_;
            }
            else
            {
               this.planets.push(new PlanetObject(true,false,param3,param4));
               this.§_-G7§.addChild(this.planets[this.planets.length - 1]);
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               this.planets[this.planets.length - 1].x = param1;
               _loc11_;
               _loc12_;
               this.planets[this.planets.length - 1].y = param2;
            }
            _loc12_;
            _loc11_;
            _loc11_;
            _loc12_;
            this.planets[this.planets.length - 1].id = this.planets.length - 1;
            _loc11_;
            _loc11_;
            this.planets[this.planets.length - 1].init();
            _loc12_;
            this.updateLevelBounds();
            _loc11_;
            _loc11_;
            this.checkValid();
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc12_;
            _loc12_;
            this.sun_count++;
            this.§_-Qi§.final();
         }
      }
      
      public function addBlackHole(param1:Number = -1, param2:Number = -1, param3:Number = -1, param4:int = -1) : *
      {
         var _loc11_:* = true;
         var _loc12_:* = false;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = false;
         var _loc8_:* = 0;
         _loc12_;
         _loc11_;
         _loc12_;
         if(this.blackhole_count < Global.§_-EA§)
         {
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc12_;
            _loc12_;
            if(param1 == -1 && param2 == -1 && param3 == -1 && param4 == -1)
            {
               this.planets.push(new PlanetObject(false,true));
               this.§_-G7§.addChild(this.planets[this.planets.length - 1]);
               _loc12_;
               _loc7_ = false;
               _loc11_;
               _loc8_ = 0;
               while(true)
               {
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  if(!(!_loc7_ && _loc8_ < 500))
                  {
                     break;
                  }
                  _loc8_++;
                  _loc12_;
                  _loc12_;
                  _loc12_;
                  _loc11_;
                  _loc12_;
                  _loc12_;
                  _loc12_;
                  _loc11_;
                  _loc11_;
                  _loc12_;
                  _loc12_;
                  _loc11_;
                  _loc11_;
                  _loc5_ = 0 - this.screen.x + 400 + _loc8_ * Math.cos(_loc8_);
                  _loc12_;
                  _loc12_;
                  _loc11_;
                  _loc12_;
                  _loc12_;
                  _loc6_ = 0 - this.screen.y + 300 + _loc8_ * Math.sin(_loc8_);
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  _loc7_ = this.§_-EE§(_loc5_,_loc6_,this.planets[this.planets.length - 1].radius);
               }
               if(_loc8_ == 500)
               {
               }
               _loc11_;
               _loc11_;
               _loc12_;
               _loc12_;
               _loc12_;
               this.planets[this.planets.length - 1].x = _loc5_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               this.planets[this.planets.length - 1].y = _loc6_;
               _loc12_;
               _loc12_;
            }
            else
            {
               this.planets.push(new PlanetObject(false,true,param3,param4));
               this.§_-G7§.addChild(this.planets[this.planets.length - 1]);
               _loc11_;
               _loc11_;
               _loc12_;
               _loc12_;
               this.planets[this.planets.length - 1].x = param1;
               _loc12_;
               _loc12_;
               _loc11_;
               this.planets[this.planets.length - 1].y = param2;
            }
            _loc12_;
            _loc12_;
            _loc11_;
            this.planets[this.planets.length - 1].id = this.planets.length - 1;
            this.planets[this.planets.length - 1].init();
            _loc11_;
            _loc11_;
            this.updateLevelBounds();
            this.checkValid();
            _loc11_;
            _loc12_;
            this.blackhole_count++;
            this.§_-Qi§.final();
         }
      }
      
      public function addShield(param1:int, param2:int = -1, param3:int = -1, param4:int = -1) : *
      {
         var _loc11_:* = false;
         var _loc12_:* = true;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = false;
         var _loc8_:* = 0;
         _loc11_;
         if(this.shield_count < Global.TOTAL_EDITOR_SHIELDS)
         {
            _loc11_;
            _loc11_;
            _loc11_;
            _loc12_;
            if(param1 == SafeGlobal.GATETYPE_SHIELD)
            {
               _loc12_;
               _loc12_;
               this.gates.push(new §_-fV§());
            }
            else
            {
               _loc12_;
               if(param1 == SafeGlobal.GATETYPE_DISSOLVESHIELD)
               {
                  _loc12_;
                  _loc12_;
                  this.gates.push(new §_-R7§());
                  _loc12_;
                  _loc12_;
               }
            }
            this.§_-P§.addChild(this.gates[this.gates.length - 1]);
            _loc12_;
            _loc12_;
            _loc12_;
            _loc11_;
            _loc11_;
            if(param2 == -1 && param3 == -1 && param4 == -1)
            {
               _loc7_ = false;
               _loc8_ = 0;
               while(true)
               {
                  _loc11_;
                  _loc11_;
                  if(!(!_loc7_ && _loc8_ < 500))
                  {
                     break;
                  }
                  _loc8_++;
                  _loc12_;
                  _loc12_;
                  _loc5_ = Math.floor(0 - this.screen.x + 400 + _loc8_ * Math.cos(_loc8_));
                  _loc6_ = Math.floor(0 - this.screen.y + 300 + _loc8_ * Math.sin(_loc8_));
                  _loc12_;
                  _loc11_;
                  _loc11_;
                  _loc7_ = this.§_-aA§(_loc5_,_loc6_,this.gates[this.gates.length - 1].radius);
                  _loc12_;
               }
               if(_loc8_ == 500)
               {
                  _loc11_;
               }
               _loc12_;
               _loc11_;
               _loc11_;
               _loc11_;
               this.gates[this.gates.length - 1].x = _loc5_;
               _loc11_;
               _loc12_;
               _loc12_;
               this.gates[this.gates.length - 1].y = _loc6_;
               _loc11_;
               _loc11_;
            }
            else
            {
               _loc11_;
               _loc11_;
               _loc12_;
               _loc11_;
               _loc11_;
               this.gates[this.gates.length - 1].x = param2;
               _loc12_;
               _loc12_;
               _loc11_;
               _loc11_;
               _loc12_;
               _loc12_;
               this.gates[this.gates.length - 1].y = param3;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc12_;
               this.gates[this.gates.length - 1].rotation = param4;
               _loc11_;
            }
            this.gates[this.gates.length - 1].init();
            _loc11_;
            this.updateLevelBounds();
            this.checkValid();
            _loc11_;
            _loc11_;
            _loc12_;
            _loc12_;
            this.shield_count++;
            _loc12_;
            this.§_-Qi§.final();
         }
      }
      
      public function §_-Ci§(param1:int, param2:int, param3:int) : *
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         if(this.wormhole_count < Global.TOTAL_EDITOR_WORMHOLES)
         {
            this.gates.push(new §_-T1§());
            this.§_-P§.addChild(this.gates[this.gates.length - 1]);
            this.gates[this.gates.length - 1].x = param1;
            _loc6_;
            _loc7_;
            _loc7_;
            _loc6_;
            _loc6_;
            this.gates[this.gates.length - 1].y = param2;
            _loc7_;
            this.gates[this.gates.length - 1].rotation = param3;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc7_;
            this.gates[this.gates.length - 1].init();
            this.updateLevelBounds();
            _loc7_;
            this.checkValid();
            _loc7_;
            _loc7_;
            _loc7_;
            _loc6_;
            _loc6_;
            this.wormhole_count++;
            if(Math.floor((this.wormhole_count - 1) / 2) == 0)
            {
               this.gates[this.gates.length - 1].blue.visible = true;
               _loc7_;
               _loc7_;
               this.gates[this.gates.length - 1].orange.visible = false;
            }
            else if(Math.floor((this.wormhole_count - 1) / 2) == 1)
            {
               _loc7_;
               _loc7_;
               this.gates[this.gates.length - 1].blue.visible = false;
               this.gates[this.gates.length - 1].orange.visible = true;
            }
            
            this.§_-Qi§.final();
         }
      }
      
      public function addWormholes() : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:* = false;
         var _loc4_:* = 0;
         _loc6_;
         _loc5_;
         if(this.wormhole_count < Global.TOTAL_EDITOR_WORMHOLES)
         {
            _loc6_;
            this.gates.push(new §_-T1§());
            _loc5_;
            _loc5_;
            this.§_-P§.addChild(this.gates[this.gates.length - 1]);
            _loc5_;
            _loc6_;
            _loc6_;
            _loc6_;
            if(this.wormhole_count == 0)
            {
               _loc5_;
               _loc6_;
               _loc6_;
               _loc6_;
               this.gates[this.gates.length - 1].blue.visible = true;
               _loc6_;
               _loc5_;
               _loc6_;
               this.gates[this.gates.length - 1].orange.visible = false;
            }
            else
            {
               _loc6_;
               _loc6_;
               if(this.wormhole_count == 2)
               {
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc5_;
                  _loc5_;
                  this.gates[this.gates.length - 1].blue.visible = false;
                  this.gates[this.gates.length - 1].orange.visible = true;
               }
            }
            _loc3_ = false;
            _loc4_ = 0;
            while(true)
            {
               _loc5_;
               _loc5_;
               if(!(!_loc3_ && _loc4_ < 500))
               {
                  break;
               }
               _loc4_++;
               _loc5_;
               _loc5_;
               _loc1_ = Math.floor(0 - this.screen.x + 400 + _loc4_ * Math.cos(_loc4_));
               _loc6_;
               _loc2_ = Math.floor(0 - this.screen.y + 300 + _loc4_ * Math.sin(_loc4_));
               _loc5_;
               _loc3_ = this.§_-aA§(_loc1_,_loc2_,this.gates[this.gates.length - 1].radius);
               _loc5_;
               _loc5_;
            }
            _loc6_;
            if(_loc4_ == 500)
            {
            }
            _loc6_;
            this.gates[this.gates.length - 1].x = _loc1_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            this.gates[this.gates.length - 1].y = _loc2_;
            _loc5_;
            this.gates[this.gates.length - 1].init();
            _loc5_;
            this.gates.push(new §_-T1§());
            _loc5_;
            this.§_-P§.addChild(this.gates[this.gates.length - 1]);
            _loc6_;
            _loc6_;
            _loc6_;
            _loc5_;
            _loc5_;
            if(this.wormhole_count == 0)
            {
               _loc5_;
               this.gates[this.gates.length - 1].blue.visible = true;
               _loc5_;
               _loc6_;
               _loc6_;
               _loc6_;
               this.gates[this.gates.length - 1].orange.visible = false;
            }
            else
            {
               _loc6_;
               _loc6_;
               _loc5_;
               if(this.wormhole_count == 2)
               {
                  _loc5_;
                  _loc5_;
                  this.gates[this.gates.length - 1].blue.visible = false;
                  this.gates[this.gates.length - 1].orange.visible = true;
                  _loc5_;
               }
            }
            _loc5_;
            _loc5_;
            _loc3_ = false;
            _loc6_;
            _loc6_;
            _loc4_ = 0;
            while(true)
            {
               _loc6_;
               if(!(!_loc3_ && _loc4_ < 500))
               {
                  break;
               }
               _loc4_++;
               _loc5_;
               _loc5_;
               _loc1_ = Math.floor(0 - this.screen.x + 400 + _loc4_ * Math.cos(_loc4_));
               _loc2_ = Math.floor(0 - this.screen.y + 300 + _loc4_ * Math.sin(_loc4_));
               _loc6_;
               _loc6_;
               _loc3_ = this.§_-aA§(_loc1_,_loc2_,this.gates[this.gates.length - 1].radius);
            }
            if(_loc4_ == 500)
            {
            }
            this.gates[this.gates.length - 1].x = _loc1_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            this.gates[this.gates.length - 1].y = _loc2_;
            _loc5_;
            _loc5_;
            this.gates[this.gates.length - 1].init();
            _loc6_;
            _loc6_;
            _loc5_;
            _loc5_;
            _loc6_;
            this.gates[this.gates.length - 1].pair = this.gates[this.gates.length - 2];
            this.gates[this.gates.length - 2].pair = this.gates[this.gates.length - 1];
            _loc5_;
            this.updateLevelBounds();
            this.checkValid();
            _loc5_;
            _loc5_;
            this.wormhole_count = this.wormhole_count + 2;
            this.§_-Qi§.final();
         }
      }
      
      public function addSkyMine(param1:int = -1, param2:int = -1) : *
      {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = false;
         var _loc6_:* = 0;
         _loc10_;
         _loc10_;
         _loc9_;
         _loc9_;
         if(this.skymine_count < Global.§_-6Y§)
         {
            _loc9_;
            this.§_-1w§.push(new §_-xv§());
            _loc9_;
            this.§_-ec§.addChild(this.§_-1w§[this.§_-1w§.length - 1]);
            _loc9_;
            _loc9_;
            _loc9_;
            _loc9_;
            _loc9_;
            _loc9_;
            if(param1 == -1 && param2 == -1)
            {
               _loc5_ = false;
               _loc10_;
               _loc10_;
               _loc6_ = 0;
               while(true)
               {
                  _loc9_;
                  _loc9_;
                  _loc10_;
                  _loc10_;
                  if(!(!_loc5_ && _loc6_ < 500))
                  {
                     break;
                  }
                  _loc6_++;
                  _loc10_;
                  _loc9_;
                  _loc9_;
                  _loc9_;
                  _loc9_;
                  _loc10_;
                  _loc10_;
                  _loc10_;
                  _loc10_;
                  _loc9_;
                  _loc9_;
                  _loc3_ = 0 - this.screen.x + 400 + _loc6_ * Math.cos(_loc6_);
                  _loc10_;
                  _loc10_;
                  _loc9_;
                  _loc9_;
                  _loc9_;
                  _loc9_;
                  _loc4_ = 0 - this.screen.y + 300 + _loc6_ * Math.sin(_loc6_);
                  _loc9_;
                  _loc9_;
                  _loc5_ = this.§_-QG§(_loc3_,_loc4_,this.§_-1w§[this.§_-1w§.length - 1].radius);
               }
               if(_loc6_ == 500)
               {
                  _loc10_;
                  _loc10_;
               }
               _loc10_;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc10_;
               this.§_-1w§[this.§_-1w§.length - 1].x = _loc3_;
               _loc9_;
               _loc9_;
               _loc10_;
               _loc10_;
               _loc9_;
               _loc9_;
               _loc9_;
               this.§_-1w§[this.§_-1w§.length - 1].y = _loc4_;
               _loc10_;
            }
            else
            {
               _loc9_;
               _loc10_;
               _loc10_;
               this.§_-1w§[this.§_-1w§.length - 1].x = param1;
               _loc10_;
               _loc10_;
               _loc10_;
               this.§_-1w§[this.§_-1w§.length - 1].y = param2;
               _loc9_;
               _loc9_;
            }
            this.§_-1w§[this.§_-1w§.length - 1].init();
            this.updateLevelBounds();
            _loc9_;
            this.checkValid();
            _loc10_;
            _loc10_;
            _loc10_;
            _loc10_;
            this.skymine_count++;
            this.§_-Qi§.final();
         }
      }
      
      public function addUnitMarkers() : *
      {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc1_:* = 0;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc6_:ColorTransform = null;
         var _loc7_:* = false;
         var _loc8_:* = 0;
         var _loc5_:* = 0;
         _loc5_;
         _loc10_;
         _loc10_;
         this.units.push(new §_-Lf§());
         this.§_-5§.addChild(this.units[_loc5_]);
         _loc10_;
         _loc10_;
         _loc9_;
         this.units[_loc5_].teamID = Math.floor(_loc5_ / 6);
         _loc9_;
         _loc9_;
         this.units[_loc5_].order = _loc5_ % 6;
         this.units[_loc5_].updateImage();
         _loc6_ = new ColorTransform();
         _loc6_.color = SafeGlobal.teamCols[this.units[_loc5_].teamID];
         _loc9_;
         _loc9_;
         _loc9_;
         _loc9_;
         this.units[_loc5_].col.transform.colorTransform = _loc6_;
         _loc10_;
         _loc10_;
         _loc7_ = false;
         _loc9_;
         _loc9_;
         _loc9_;
         _loc9_;
         _loc8_ = 0;
         while(true)
         {
            _loc10_;
            _loc10_;
            _loc10_;
            !_loc7_ && _loc8_ < 500;
            _loc8_++;
            _loc9_;
            _loc9_;
            _loc1_ = Math.floor(Math.random() * this.planets.length);
            _loc9_;
            _loc9_;
            _loc9_;
            _loc10_;
            _loc10_;
            _loc2_ = Math.random() * Math.PI * 2;
            _loc9_;
            _loc9_;
            _loc9_;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc3_ = this.planets[_loc1_].x + this.planets[_loc1_].radius * Math.cos(_loc2_);
            _loc9_;
            _loc9_;
            _loc4_ = this.planets[_loc1_].y + this.planets[_loc1_].radius * Math.sin(_loc2_);
            _loc9_;
            _loc9_;
            _loc9_;
            _loc7_ = this.§_-Yb§(this.units[_loc5_],_loc3_,_loc4_);
            _loc9_;
         }
      }
      
      public function §_-WP§(param1:int, param2:int, param3:int) : *
      {
         var _loc8_:* = false;
         var _loc9_:* = true;
         _loc8_;
         _loc9_;
         _loc9_;
         this.units.push(new §_-Lf§());
         var _loc4_:int = this.units.length - 1;
         _loc9_;
         this.§_-5§.addChild(this.units[_loc4_]);
         _loc8_;
         _loc9_;
         _loc9_;
         _loc9_;
         _loc9_;
         this.units[_loc4_].teamID = param3;
         _loc9_;
         _loc8_;
         _loc8_;
         _loc8_;
         this.units[_loc4_].order = _loc4_ % 6;
         _loc8_;
         this.units[_loc4_].updateImage();
         var _loc5_:ColorTransform = new ColorTransform();
         _loc5_.color = SafeGlobal.teamCols[this.units[_loc4_].teamID];
         _loc8_;
         _loc8_;
         _loc9_;
         _loc9_;
         _loc9_;
         this.units[_loc4_].col.transform.colorTransform = _loc5_;
         var _loc6_:Number = this.planets[param1].x + Math.cos(param2 * Math.PI / 180) * this.planets[param1].radius;
         var _loc7_:Number = this.planets[param1].y + Math.sin(param2 * Math.PI / 180) * this.planets[param1].radius;
         _loc9_;
         _loc9_;
         this.§_-xq§(this.units[_loc4_],_loc6_,_loc7_);
         _loc8_;
         _loc8_;
         this.units[_loc4_].init();
         _loc9_;
         this.units_placed = true;
         _loc8_;
         this.§_-Qi§.§_-YT§();
      }
      
      public function swapMineType(param1:§_-s2§, param2:int) : void
      {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc3_:int = param1.angle;
         var _loc4_:int = param1.planetID;
         var _loc5_:* = 0;
         while(_loc5_ < this.§_-ki§.length)
         {
            _loc8_;
            _loc9_;
            _loc9_;
            if(this.§_-ki§[_loc5_] == param1)
            {
               this.§_-KV§.removeChild(this.§_-ki§[_loc5_]);
               _loc8_;
               _loc8_;
               this.§_-ki§.splice(_loc5_,1);
               _loc9_;
               _loc8_;
               this.mine_count--;
               _loc9_;
               _loc9_;
               break;
            }
            _loc5_++;
            _loc9_;
         }
         this.addMine(param2,_loc4_,_loc3_);
         this.§_-Uu§(this.§_-ki§[this.§_-ki§.length - 1]);
      }
      
      public function swapShieldType(param1:§_-FS§, param2:int) : void
      {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc3_:int = param1.rotation;
         var _loc4_:Number = param1.x;
         var _loc5_:Number = param1.y;
         var _loc6_:* = 0;
         while(_loc6_ < this.gates.length)
         {
            _loc9_;
            _loc9_;
            _loc10_;
            _loc10_;
            if(this.gates[_loc6_] == param1)
            {
               _loc9_;
               _loc9_;
               this.§_-P§.removeChild(this.gates[_loc6_]);
               this.gates.splice(_loc6_,1);
               _loc9_;
               _loc9_;
               _loc10_;
               _loc9_;
               _loc9_;
               this.shield_count--;
               break;
            }
            _loc6_++;
         }
         this.addShield(param2,_loc4_,_loc5_,_loc3_);
         this.§_-Uu§(this.gates[this.gates.length - 1]);
      }
      
      public function addMine(param1:int, param2:int = -1, param3:int = -1) : *
      {
         var _loc11_:* = false;
         var _loc12_:* = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = false;
         var _loc7_:* = 0;
         var _loc8_:Point = null;
         _loc12_;
         _loc12_;
         _loc11_;
         _loc11_;
         if(this.mine_count < Global.TOTAL_EDITOR_MINES)
         {
            _loc12_;
            if(param1 == SafeGlobal.MINETYPE_STANDARD)
            {
               _loc12_;
               _loc12_;
               this.§_-ki§.push(new §_-UI§());
            }
            else
            {
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               if(param1 == SafeGlobal.MINETYPE_DRILL)
               {
                  _loc12_;
                  this.§_-ki§.push(new §_-9L§());
                  _loc11_;
                  _loc11_;
               }
               else
               {
                  _loc12_;
                  _loc12_;
                  if(param1 == SafeGlobal.MINETYPE_CLUSTER)
                  {
                     _loc12_;
                     _loc12_;
                     _loc11_;
                     this.§_-ki§.push(new §_-Md§());
                     _loc11_;
                  }
               }
            }
            this.§_-KV§.addChild(this.§_-ki§[this.§_-ki§.length - 1]);
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            if(!(param2 == -1) && !(param3 == -1))
            {
               _loc12_;
               _loc12_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc4_ = this.planets[param2].x + Math.cos(param3 * Math.PI / 180) * this.planets[param2].radius;
               _loc5_ = this.planets[param2].y + Math.sin(param3 * Math.PI / 180) * this.planets[param2].radius;
               _loc11_;
               _loc11_;
            }
            else
            {
               _loc6_ = false;
               _loc12_;
               _loc12_;
               _loc7_ = 0;
               while(true)
               {
                  _loc12_;
                  _loc12_;
                  _loc12_;
                  _loc12_;
                  if(!(!_loc6_ && _loc7_ < 500))
                  {
                     break;
                  }
                  _loc7_++;
                  _loc11_;
                  _loc12_;
                  _loc12_;
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  _loc12_;
                  _loc12_;
                  _loc4_ = 0 - this.screen.x + 400 + _loc7_ * Math.cos(_loc7_);
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  _loc12_;
                  _loc12_;
                  _loc12_;
                  _loc5_ = 0 - this.screen.y + 300 + _loc7_ * Math.sin(_loc7_);
                  _loc8_ = this.§_-PX§(_loc4_,_loc5_);
                  _loc12_;
                  _loc12_;
                  _loc6_ = this.§_-Yb§(this.§_-ki§[this.§_-ki§.length - 1],_loc8_.x,_loc8_.y);
               }
               _loc11_;
               _loc11_;
               if(_loc7_ == 500)
               {
                  _loc12_;
               }
            }
            this.§_-xq§(this.§_-ki§[this.§_-ki§.length - 1],_loc4_,_loc5_);
            this.§_-ki§[this.§_-ki§.length - 1].init();
            _loc12_;
            _loc12_;
            _loc12_;
            this.mine_count++;
            _loc12_;
            this.§_-Qi§.final();
         }
      }
      
      public function addBarrel(param1:int = -1, param2:int = -1) : *
      {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:Point = null;
         var _loc6_:* = false;
         var _loc7_:* = 0;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc10_;
         if(this.barrel_count < Global.TOTAL_EDITOR_BARRELS)
         {
            _loc10_;
            _loc10_;
            this.barrels.push(new §_-r2§());
            _loc10_;
            _loc10_;
            this.§_-KV§.addChild(this.barrels[this.barrels.length - 1]);
            _loc10_;
            _loc10_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc10_;
            _loc10_;
            _loc11_;
            if(!(param1 == -1) && !(param2 == -1))
            {
               _loc11_;
               _loc11_;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc3_ = this.planets[param1].x + Math.cos(param2 * Math.PI / 180) * this.planets[param1].radius;
               _loc4_ = this.planets[param1].y + Math.sin(param2 * Math.PI / 180) * this.planets[param1].radius;
            }
            else
            {
               _loc6_ = false;
               _loc11_;
               _loc7_ = 0;
               while(true)
               {
                  _loc10_;
                  _loc10_;
                  _loc11_;
                  if(!(!_loc6_ && _loc7_ < 500))
                  {
                     break;
                  }
                  _loc7_++;
                  _loc11_;
                  _loc11_;
                  _loc10_;
                  _loc11_;
                  _loc10_;
                  _loc10_;
                  _loc10_;
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  _loc3_ = 0 - this.screen.x + 400 + _loc7_ * Math.cos(_loc7_);
                  _loc11_;
                  _loc10_;
                  _loc10_;
                  _loc10_;
                  _loc10_;
                  _loc4_ = 0 - this.screen.y + 300 + _loc7_ * Math.sin(_loc7_);
                  _loc5_ = this.§_-PX§(_loc3_,_loc4_);
                  _loc11_;
                  _loc6_ = this.§_-Yb§(this.barrels[this.barrels.length - 1],_loc5_.x,_loc5_.y);
               }
               if(_loc7_ == 500)
               {
               }
            }
            this.§_-xq§(this.barrels[this.barrels.length - 1],_loc3_,_loc4_);
            this.barrels[this.barrels.length - 1].init();
            _loc10_;
            _loc11_;
            _loc11_;
            _loc10_;
            _loc10_;
            this.barrel_count++;
            _loc11_;
            this.§_-Qi§.final();
         }
      }
      
      public function startDragging(param1:EditorObject) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.dragging = param1;
         _loc2_;
         _loc2_;
         this.dragging.§_-nl§.x = param1.mouseX;
         _loc3_;
         this.dragging.§_-nl§.y = param1.mouseY;
         this.dragging.§_-GT§();
         this.§_-Uu§();
         _loc3_;
         this.showLines(this.dragging);
         stage.addEventListener(MouseEvent.MOUSE_UP,this.§_-wv§,false,0,true);
      }
      
      public function §_-wv§(param1:MouseEvent = null) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.dragging.§_-Nc§();
         _loc3_;
         _loc3_;
         _loc2_;
         this.dragging.init();
         _loc3_;
         _loc3_;
         this.hideLines();
         this.dragging.§_-Lp§();
         _loc2_;
         _loc2_;
         if(getTimer() - this.dragging.§_-kV§ < this.§_-La§)
         {
            this.§_-Uu§(this.dragging);
            _loc3_;
            _loc3_;
         }
         this.dragging = null;
         if(param1)
         {
            _loc2_;
            _loc2_;
            stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-wv§);
         }
      }
      
      public function showLines(param1:EditorObject) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         _loc4_;
         this.§_-3g§();
         _loc5_;
         _loc5_;
         this.§_-cO§.graphics.clear();
         _loc4_;
         _loc4_;
         if(param1 is PlanetObject)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc2_ = this.planets.indexOf(param1);
            _loc4_;
            _loc4_;
            _loc3_ = 0;
            while(true)
            {
               _loc4_;
               if(_loc3_ >= this.planets.length)
               {
                  break;
               }
               if(_loc2_ != _loc3_)
               {
                  this.§_-XD§(_loc2_,_loc3_);
               }
               _loc3_++;
               _loc5_;
            }
            this.§_-6J§();
            param1.§_-ti§();
         }
         else if(param1 is §_-s2§)
         {
            _loc4_;
            _loc4_;
            _loc5_;
            _loc4_;
            _loc2_ = this.§_-ki§.indexOf(param1);
            this.§_-14§(_loc2_,this.§_-ki§[_loc2_].planetID);
         }
         else
         {
            _loc4_;
            if(param1 is §_-r2§)
            {
               _loc5_;
               _loc5_;
               _loc5_;
               _loc2_ = this.barrels.indexOf(param1);
               _loc5_;
               _loc5_;
               this.§_-Il§(_loc2_,this.barrels[_loc2_].planetID);
               _loc4_;
               _loc4_;
            }
            else
            {
               _loc5_;
               if(param1 is §_-Lf§)
               {
                  _loc5_;
                  _loc5_;
                  _loc2_ = this.units.indexOf(param1);
                  this.§_-ey§(_loc2_,this.units[_loc2_].planetID);
                  _loc5_;
               }
               else
               {
                  _loc5_;
                  _loc5_;
                  if(param1 is §_-fV§ || param1 is §_-R7§ || param1 is §_-T1§)
                  {
                     _loc5_;
                     _loc5_;
                     _loc5_;
                     _loc2_ = this.gates.indexOf(param1);
                     this.§_-3t§(_loc2_);
                  }
                  else if(param1 is §_-xv§)
                  {
                     _loc2_ = this.§_-1w§.indexOf(param1);
                     this.§_-Pu§(_loc2_);
                     this.§_-6J§();
                  }
                  
               }
            }
         }
         
      }
      
      public function §_-XD§(param1:int, param2:int) : *
      {
         var _loc15_:* = false;
         var _loc16_:* = true;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = 0;
         var _loc6_:* = NaN;
         var _loc7_:* = 0;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = 0;
         _loc16_;
         _loc16_;
         if(param1 != param2)
         {
            _loc16_;
            _loc16_;
            _loc16_;
            _loc16_;
            _loc3_ = this.planets[param2].x - this.planets[param1].x;
            _loc15_;
            _loc16_;
            _loc16_;
            _loc16_;
            _loc16_;
            _loc4_ = this.planets[param2].y - this.planets[param1].y;
            _loc15_;
            _loc16_;
            _loc16_;
            _loc5_ = Math.ceil(Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_));
            if((Math.ceil(Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_))) > this.planets[param1].radius + this.planets[param2].radius + 100)
            {
               _loc15_;
               _loc15_;
               _loc6_ = Math.atan2(_loc4_,_loc3_);
               _loc15_;
               _loc7_ = int(_loc6_ * 180 / Math.PI);
               _loc15_;
               _loc15_;
               _loc16_;
               _loc8_ = (this.planets[param1].x + this.planets[param2].x) / 2;
               _loc15_;
               _loc16_;
               _loc16_;
               _loc15_;
               _loc9_ = (this.planets[param1].y + this.planets[param2].y) / 2;
               this.§_-mw§.push(new §_-z-§());
               this.§_-mw§[this.§_-mw§.length - 1].x = _loc8_;
               _loc15_;
               _loc15_;
               this.§_-mw§[this.§_-mw§.length - 1].y = _loc9_;
               _loc16_;
               _loc16_;
               _loc16_;
               _loc16_;
               _loc16_;
               if(_loc7_ >= -180 && _loc7_ < -90 || _loc7_ > 90 && _loc7_ <= 180)
               {
                  this.§_-mw§[this.§_-mw§.length - 1].rotation = _loc7_ - 180;
               }
               else
               {
                  _loc15_;
                  _loc15_;
                  _loc16_;
                  _loc16_;
                  this.§_-mw§[this.§_-mw§.length - 1].rotation = _loc7_;
               }
               this.§_-mX§.addChild(this.§_-mw§[this.§_-mw§.length - 1]);
               _loc16_;
               _loc16_;
               _loc16_;
               _loc16_;
               this.§_-mw§[this.§_-mw§.length - 1].num.text = _loc5_.toString();
               _loc16_;
               _loc10_ = this.planets[param1].x + Math.cos(_loc6_) * this.planets[param1].radius;
               _loc16_;
               _loc11_ = this.planets[param1].y + Math.sin(_loc6_) * this.planets[param1].radius;
               _loc15_;
               _loc15_;
               _loc16_;
               _loc15_;
               _loc12_ = this.planets[param2].x + Math.cos(_loc6_ - Math.PI) * this.planets[param2].radius;
               _loc13_ = this.planets[param2].y + Math.sin(_loc6_ - Math.PI) * this.planets[param2].radius;
               _loc15_;
               this.§_-mw§.push(new §case§());
               _loc16_;
               _loc16_;
               this.§_-mw§[this.§_-mw§.length - 1].x = _loc10_;
               _loc16_;
               this.§_-mw§[this.§_-mw§.length - 1].y = _loc11_;
               _loc15_;
               _loc15_;
               _loc14_ = Math.round(_loc6_ * 180 / Math.PI) + 90;
               _loc16_;
               this.§_-mw§[this.§_-mw§.length - 1].num.text = (_loc14_ < 0?_loc14_ + 360:_loc14_).toString();
               _loc16_;
               _loc16_;
               this.§_-mX§.addChild(this.§_-mw§[this.§_-mw§.length - 1]);
               this.§_-cO§.graphics.lineStyle(2,16777215,1);
               _loc15_;
               _loc15_;
               this.§_-cO§.graphics.moveTo(_loc10_,_loc11_);
               _loc15_;
               this.§_-cO§.graphics.lineTo(_loc12_,_loc13_);
            }
         }
      }
      
      public function §_-Pu§(param1:int) : *
      {
         var _loc15_:* = true;
         var _loc16_:* = false;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = 0;
         var _loc6_:* = NaN;
         var _loc7_:* = 0;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = 0;
         var _loc2_:* = 0;
         while(_loc2_ < this.§_-1w§.length)
         {
            _loc16_;
            _loc16_;
            if(_loc2_ != param1)
            {
               _loc3_ = this.§_-1w§[_loc2_].x - this.§_-1w§[param1].x;
               _loc15_;
               _loc15_;
               _loc16_;
               _loc16_;
               _loc15_;
               _loc4_ = this.§_-1w§[_loc2_].y - this.§_-1w§[param1].y;
               _loc16_;
               _loc16_;
               _loc16_;
               _loc16_;
               _loc16_;
               _loc5_ = Math.ceil(Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_));
               _loc16_;
               if((Math.ceil(Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_))) > this.§_-1w§[_loc2_].radius + this.§_-1w§[param1].radius + 10)
               {
                  _loc6_ = Math.atan2(_loc4_,_loc3_);
                  _loc7_ = int(_loc6_ * 180 / Math.PI);
                  _loc16_;
                  _loc16_;
                  _loc16_;
                  _loc15_;
                  _loc15_;
                  _loc8_ = (this.§_-1w§[param1].x + this.§_-1w§[_loc2_].x) / 2;
                  _loc15_;
                  _loc15_;
                  _loc15_;
                  _loc16_;
                  _loc9_ = (this.§_-1w§[param1].y + this.§_-1w§[_loc2_].y) / 2;
                  _loc16_;
                  _loc16_;
                  this.§_-mw§.push(new §_-z-§());
                  _loc16_;
                  _loc16_;
                  _loc16_;
                  _loc16_;
                  _loc15_;
                  _loc15_;
                  this.§_-mw§[this.§_-mw§.length - 1].x = _loc8_;
                  _loc15_;
                  _loc16_;
                  _loc16_;
                  _loc15_;
                  _loc15_;
                  this.§_-mw§[this.§_-mw§.length - 1].y = _loc9_;
                  _loc16_;
                  _loc16_;
                  _loc16_;
                  _loc15_;
                  _loc15_;
                  _loc15_;
                  if(_loc7_ >= -180 && _loc7_ < -90 || _loc7_ > 90 && _loc7_ <= 180)
                  {
                     _loc15_;
                     _loc15_;
                     _loc15_;
                     this.§_-mw§[this.§_-mw§.length - 1].rotation = _loc7_ - 180;
                  }
                  else
                  {
                     _loc15_;
                     this.§_-mw§[this.§_-mw§.length - 1].rotation = _loc7_;
                  }
                  this.§_-mX§.addChild(this.§_-mw§[this.§_-mw§.length - 1]);
                  this.§_-mw§[this.§_-mw§.length - 1].num.text = _loc5_.toString();
                  _loc10_ = this.§_-1w§[param1].x + Math.cos(_loc6_) * this.§_-1w§[param1].radius;
                  _loc15_;
                  _loc11_ = this.§_-1w§[param1].y + Math.sin(_loc6_) * this.§_-1w§[param1].radius;
                  _loc16_;
                  _loc16_;
                  _loc16_;
                  _loc16_;
                  _loc12_ = this.§_-1w§[_loc2_].x + Math.cos(_loc6_ - Math.PI) * this.§_-1w§[_loc2_].radius;
                  _loc16_;
                  _loc16_;
                  _loc13_ = this.§_-1w§[_loc2_].y + Math.sin(_loc6_ - Math.PI) * this.§_-1w§[_loc2_].radius;
                  this.§_-mw§.push(new §case§());
                  _loc15_;
                  _loc15_;
                  this.§_-mw§[this.§_-mw§.length - 1].x = _loc10_;
                  _loc16_;
                  _loc16_;
                  _loc15_;
                  _loc15_;
                  _loc15_;
                  _loc16_;
                  this.§_-mw§[this.§_-mw§.length - 1].y = _loc11_;
                  _loc15_;
                  _loc14_ = Math.round(_loc6_ * 180 / Math.PI) + 90;
                  _loc16_;
                  _loc16_;
                  this.§_-mw§[this.§_-mw§.length - 1].num.text = (_loc14_ < 0?_loc14_ + 360:_loc14_).toString();
                  _loc15_;
                  _loc15_;
                  this.§_-mX§.addChild(this.§_-mw§[this.§_-mw§.length - 1]);
                  this.§_-cO§.graphics.lineStyle(2,16777215,1);
                  _loc15_;
                  this.§_-cO§.graphics.moveTo(_loc10_,_loc11_);
                  _loc16_;
                  _loc16_;
                  this.§_-cO§.graphics.lineTo(_loc12_,_loc13_);
               }
            }
            _loc2_++;
         }
      }
      
      public function comeBack() : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         _loc4_;
         _loc4_;
         if(this.screen.x < -650)
         {
            _loc3_;
            _loc1_ = this.screen.x + 650;
            this.screen.x = -650;
         }
         else if(this.screen.x > 100)
         {
            _loc3_;
            _loc4_;
            _loc4_;
            _loc1_ = this.screen.x - 100;
            this.screen.x = 100;
            _loc3_;
         }
         
         if(this.screen.y < -700)
         {
            _loc4_;
            _loc3_;
            _loc2_ = this.screen.y + 700;
            _loc4_;
            _loc4_;
            this.screen.y = -700;
         }
         else if(this.screen.y > 100)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc2_ = this.screen.y - 100;
            this.screen.y = 100;
            _loc3_;
         }
         
         _loc4_;
         _loc4_;
         SafeGlobal.TIMELINE.timeline.starMap.ignoreNext = true;
         _loc3_;
         SafeGlobal.TIMELINE.timeline.starMap.moveTo(0,0);
         _loc3_;
         _loc4_;
         _loc4_;
         SafeGlobal.TIMELINE.timeline.starMap.ignoreNext = false;
         _loc3_;
         _loc3_;
         SafeGlobal.TIMELINE.timeline.starMap.moveTo(0 - _loc1_,0 - _loc2_);
         this.§_-pY§();
      }
      
      public function §_-14§(param1:int, param2:int) : *
      {
         var _loc8_:* = false;
         var _loc9_:* = true;
         _loc9_;
         _loc9_;
         this.§_-cO§.graphics.lineStyle(2,16777215,1);
         _loc9_;
         this.§_-cO§.graphics.moveTo(this.§_-ki§[param1].x,this.§_-ki§[param1].y);
         _loc9_;
         this.§_-cO§.graphics.lineTo(this.planets[param2].x,this.planets[param2].y);
         _loc8_;
         _loc9_;
         this.§_-mw§.push(new §case§());
         _loc9_;
         var _loc3_:Number = this.§_-ki§[param1].x - this.planets[param2].x;
         _loc8_;
         _loc8_;
         var _loc4_:Number = this.§_-ki§[param1].y - this.planets[param2].y;
         var _loc5_:Number = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
         var _loc6_:Number = Math.atan2(_loc4_,_loc3_);
         _loc9_;
         _loc8_;
         _loc8_;
         _loc9_;
         _loc8_;
         this.§_-mw§[this.§_-mw§.length - 1].x = this.§_-ki§[param1].x;
         _loc8_;
         this.§_-mw§[this.§_-mw§.length - 1].y = this.§_-ki§[param1].y;
         var _loc7_:int = Math.round(_loc6_ * 180 / Math.PI) + 90;
         _loc8_;
         this.§_-mw§[this.§_-mw§.length - 1].num.text = (_loc7_ < 0?_loc7_ + 360:_loc7_).toString();
         _loc9_;
         this.§_-mX§.addChild(this.§_-mw§[this.§_-mw§.length - 1]);
      }
      
      public function §_-Il§(param1:int, param2:int) : *
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         _loc9_;
         this.§_-cO§.graphics.lineStyle(2,16777215,1);
         _loc8_;
         this.§_-cO§.graphics.moveTo(this.barrels[param1].x,this.barrels[param1].y);
         _loc8_;
         _loc8_;
         this.§_-cO§.graphics.lineTo(this.planets[param2].x,this.planets[param2].y);
         _loc9_;
         _loc9_;
         _loc9_;
         this.§_-mw§.push(new §case§());
         _loc8_;
         _loc8_;
         var _loc3_:Number = this.barrels[param1].x - this.planets[param2].x;
         _loc9_;
         var _loc4_:Number = this.barrels[param1].y - this.planets[param2].y;
         var _loc5_:Number = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
         var _loc6_:Number = Math.atan2(_loc4_,_loc3_);
         _loc9_;
         _loc9_;
         _loc9_;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         this.§_-mw§[this.§_-mw§.length - 1].x = this.barrels[param1].x;
         _loc9_;
         this.§_-mw§[this.§_-mw§.length - 1].y = this.barrels[param1].y;
         var _loc7_:int = Math.round(_loc6_ * 180 / Math.PI) + 90;
         _loc8_;
         this.§_-mw§[this.§_-mw§.length - 1].num.text = (_loc7_ < 0?_loc7_ + 360:_loc7_).toString();
         _loc8_;
         this.§_-mX§.addChild(this.§_-mw§[this.§_-mw§.length - 1]);
      }
      
      public function §_-ey§(param1:int, param2:int) : *
      {
         var _loc8_:* = false;
         var _loc9_:* = true;
         _loc8_;
         this.§_-cO§.graphics.lineStyle(2,16777215,1);
         _loc9_;
         this.§_-cO§.graphics.moveTo(this.units[param1].x,this.units[param1].y);
         _loc8_;
         _loc8_;
         this.§_-cO§.graphics.lineTo(this.planets[param2].x,this.planets[param2].y);
         _loc9_;
         _loc9_;
         _loc8_;
         _loc8_;
         this.§_-mw§.push(new §case§());
         _loc8_;
         var _loc3_:Number = this.units[param1].x - this.planets[param2].x;
         _loc8_;
         _loc8_;
         var _loc4_:Number = this.units[param1].y - this.planets[param2].y;
         var _loc5_:Number = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
         var _loc6_:Number = Math.atan2(_loc4_,_loc3_);
         _loc8_;
         _loc8_;
         _loc9_;
         _loc9_;
         this.§_-mw§[this.§_-mw§.length - 1].x = this.units[param1].x;
         _loc9_;
         this.§_-mw§[this.§_-mw§.length - 1].y = this.units[param1].y;
         var _loc7_:int = Math.round(_loc6_ * 180 / Math.PI) + 90;
         _loc9_;
         _loc9_;
         this.§_-mw§[this.§_-mw§.length - 1].num.text = (_loc7_ < 0?_loc7_ + 360:_loc7_).toString();
         _loc9_;
         _loc9_;
         this.§_-mX§.addChild(this.§_-mw§[this.§_-mw§.length - 1]);
      }
      
      public function §_-3t§(param1:int) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         this.§_-mw§.push(new §case§());
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         this.§_-mw§[this.§_-mw§.length - 1].x = this.gates[param1].x;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         this.§_-mw§[this.§_-mw§.length - 1].y = this.gates[param1].y;
         _loc2_;
         this.§_-mw§[this.§_-mw§.length - 1].num.text = (this.gates[param1].rotation < 0?this.gates[param1].rotation + 360:this.gates[param1].rotation).toString();
         _loc2_;
         this.§_-mX§.addChild(this.§_-mw§[this.§_-mw§.length - 1]);
      }
      
      public function hideLines() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.§_-cO§.graphics.clear();
         _loc2_;
         _loc2_;
         this.§_-wp§();
         _loc2_;
         _loc2_;
         this.§_-3g§();
      }
      
      public function catchSliderRelease(param1:*) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.§_-tk§ = param1;
         _loc2_;
         _loc2_;
         stage.addEventListener(MouseEvent.MOUSE_UP,this.§_-r5§,false,0,true);
      }
      
      public function §_-r5§(param1:MouseEvent) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-r5§);
         _loc2_;
         this.§_-tk§.dragStop();
         _loc3_;
         _loc3_;
         this.§_-tk§ = null;
      }
      
      public function §_-3g§() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:int = this.§_-mw§.length - 1;
         while(_loc1_ >= 0)
         {
            this.§_-mX§.removeChild(this.§_-mw§[_loc1_]);
            _loc3_;
            this.§_-mw§.splice(_loc1_,1);
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc1_--;
            _loc3_;
            _loc3_;
         }
      }
      
      public function §_-Uu§(param1:EditorObject = null) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         if(param1)
         {
            _loc3_;
            if(this.selected)
            {
               _loc2_;
               _loc2_;
               _loc3_;
               this.selected.§_-4O§();
               _loc3_;
            }
            this.selected = param1;
            _loc3_;
            _loc3_;
            this.selected.§_-m4§();
            this.showLines(this.selected);
            _loc2_;
            _loc3_;
            _loc3_;
            this.§_-Qi§.§_-o6§(param1);
            _loc2_;
         }
         else
         {
            _loc3_;
            _loc3_;
            if(this.selected)
            {
               _loc2_;
               _loc3_;
               this.selected.§_-4O§();
               _loc2_;
               _loc2_;
               this.selected.§_-Lp§();
            }
            this.selected = null;
            this.hideLines();
            _loc2_;
            this.§_-Qi§.§_-dW§();
         }
      }
      
      public function exitLevel() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.§_-L1§ = false;
         _loc1_;
         this.§_-Qi§.tweenOff();
      }
      
      public function saveLevel() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.§_-L1§ = true;
         _loc3_;
         _loc3_;
         var _loc1_:String = this.§_-ic§();
         _loc2_;
         Global.lobby_client.submitLevel(_loc1_);
         _loc2_;
         this.§_-Qi§.tweenOff();
      }
      
      public function §_-ic§() : String
      {
         var _loc11_:* = false;
         var _loc12_:* = true;
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc10_:* = 0;
         var _loc3_:Array = new Array();
         var _loc4_:* = 0;
         while(true)
         {
            _loc12_;
            if(_loc4_ >= this.planets.length)
            {
               break;
            }
            _loc11_;
            _loc12_;
            _loc12_;
            if(!this.planets[_loc4_].sun && !this.planets[_loc4_].blackHole)
            {
               _loc11_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc11_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc11_;
               _loc12_;
               _loc12_;
               _loc12_;
               if(this.planets[_loc4_].shield)
               {
                  _loc12_;
               }
               if(this.planets[_loc4_].shield)
               {
                  _loc11_;
                  _loc2_ = "p," + int(this.planets[_loc4_].x) + "," + int(this.planets[_loc4_].y) + "," + this.planets[_loc4_].radius + "," + this.planets[_loc4_].gfxID + "," + this.planets[_loc4_].radioactiveValue + "," + 1;
                  _loc11_;
                  _loc11_;
               }
               else
               {
                  _loc11_;
                  _loc2_ = "p," + int(this.planets[_loc4_].x) + "," + int(this.planets[_loc4_].y) + "," + this.planets[_loc4_].radius + "," + this.planets[_loc4_].gfxID + "," + this.planets[_loc4_].radioactiveValue + "," + 0;
                  _loc11_;
                  _loc11_;
               }
            }
            else
            {
               _loc11_;
               _loc11_;
               _loc11_;
               if(this.planets[_loc4_].sun)
               {
                  _loc12_;
                  _loc12_;
                  _loc11_;
                  _loc11_;
                  _loc12_;
                  _loc12_;
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  _loc12_;
                  _loc12_;
                  _loc2_ = "s," + int(this.planets[_loc4_].x) + "," + int(this.planets[_loc4_].y) + "," + this.planets[_loc4_].radius;
               }
               else if(this.planets[_loc4_].blackHole)
               {
                  _loc11_;
                  _loc12_;
                  _loc11_;
                  _loc11_;
                  _loc2_ = "h," + int(this.planets[_loc4_].x) + "," + int(this.planets[_loc4_].y) + "," + this.planets[_loc4_].radius;
                  _loc11_;
               }
               
            }
            if(!this.planets[_loc4_].sun && !this.planets[_loc4_].blackHole)
            {
               _loc3_.push(_loc2_);
               _loc11_;
               _loc11_;
               _loc4_++;
            }
            else
            {
               _loc3_.push(_loc2_);
               _loc11_;
               _loc11_;
               _loc4_++;
            }
         }
         var _loc5_:* = 0;
         _loc12_;
         while(true)
         {
            _loc11_;
            if(_loc5_ >= this.units.length)
            {
               break;
            }
            _loc11_;
            _loc11_;
            _loc11_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc2_ = "u," + this.units[_loc5_].planetID + "," + this.units[_loc5_].angle + "," + this.units[_loc5_].teamID;
            _loc11_;
            _loc3_.push(_loc2_);
            _loc12_;
            _loc5_++;
            _loc11_;
         }
         var _loc6_:* = 0;
         while(true)
         {
            _loc12_;
            if(_loc6_ >= this.gates.length)
            {
               break;
            }
            _loc11_;
            _loc12_;
            _loc12_;
            _loc11_;
            _loc11_;
            _loc12_;
            _loc10_ = this.gates[_loc6_].rotation;
            _loc12_;
            _loc12_;
            if((this.gates[_loc6_].rotation) < 0)
            {
               _loc11_;
               _loc11_;
               _loc12_;
               _loc12_;
               _loc11_;
               _loc11_;
               _loc10_ = _loc10_ + 360;
            }
            _loc11_;
            _loc11_;
            _loc12_;
            _loc12_;
            _loc11_;
            _loc12_;
            _loc11_;
            _loc2_ = "g," + this.gates[_loc6_].x + "," + this.gates[_loc6_].y + "," + _loc10_ + ",";
            _loc12_;
            _loc12_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            if(this.gates[_loc6_] is §_-T1§)
            {
               _loc11_;
               _loc11_;
               _loc12_;
               _loc11_;
               _loc2_ = _loc2_ + SafeGlobal.GATETYPE_WORMHOLE;
               _loc11_;
               _loc11_;
            }
            else
            {
               _loc11_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               if(this.gates[_loc6_] is §_-fV§)
               {
                  _loc12_;
                  _loc12_;
                  _loc12_;
                  _loc12_;
                  _loc12_;
                  _loc12_;
                  _loc11_;
                  _loc11_;
                  _loc2_ = _loc2_ + SafeGlobal.GATETYPE_SHIELD;
               }
               else if(this.gates[_loc6_] is §_-R7§)
               {
                  _loc11_;
                  _loc11_;
                  _loc2_ = _loc2_ + SafeGlobal.GATETYPE_DISSOLVESHIELD;
               }
               
            }
            _loc3_.push(_loc2_);
            _loc11_;
            _loc6_++;
         }
         var _loc7_:* = 0;
         _loc11_;
         _loc11_;
         while(true)
         {
            _loc11_;
            _loc11_;
            if(_loc7_ >= this.§_-ki§.length)
            {
               break;
            }
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc11_;
            _loc12_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            if(this.§_-ki§[_loc7_].angle < 0)
            {
               _loc11_;
               _loc12_;
            }
            else
            {
               _loc12_;
               _loc11_;
               _loc11_;
            }
            if(this.§_-ki§[_loc7_].angle < 0)
            {
               _loc11_;
               _loc11_;
               _loc2_ = "m," + this.§_-ki§[_loc7_].planetID + "," + (this.§_-ki§[_loc7_].angle + 360) + "," + this.§_-ki§[_loc7_].mineType;
               _loc11_;
               _loc3_.push(_loc2_);
               _loc11_;
               _loc11_;
               _loc7_++;
               _loc11_;
            }
            else
            {
               _loc11_;
               _loc11_;
               _loc2_ = "m," + this.§_-ki§[_loc7_].planetID + "," + this.§_-ki§[_loc7_].angle + "," + this.§_-ki§[_loc7_].mineType;
               _loc11_;
               _loc3_.push(_loc2_);
               _loc11_;
               _loc11_;
               _loc7_++;
               _loc11_;
            }
         }
         var _loc8_:* = 0;
         _loc12_;
         while(true)
         {
            _loc11_;
            if(_loc8_ >= this.barrels.length)
            {
               break;
            }
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            if(this.barrels[_loc8_].angle < 0)
            {
               _loc12_;
               _loc12_;
               _loc12_;
               _loc11_;
            }
            if(this.barrels[_loc8_].angle < 0)
            {
               _loc2_ = "b," + this.barrels[_loc8_].planetID + "," + (this.barrels[_loc8_].angle + 360);
               _loc11_;
               _loc3_.push(_loc2_);
               _loc11_;
               _loc8_++;
               _loc12_;
               _loc12_;
            }
            else
            {
               _loc2_ = "b," + this.barrels[_loc8_].planetID + "," + this.barrels[_loc8_].angle;
               _loc11_;
               _loc3_.push(_loc2_);
               _loc11_;
               _loc8_++;
               _loc12_;
               _loc12_;
            }
         }
         var _loc9_:* = 0;
         _loc11_;
         _loc11_;
         while(_loc9_ < this.§_-1w§.length)
         {
            _loc12_;
            _loc12_;
            _loc2_ = String("k," + this.§_-1w§[_loc9_].x + "," + this.§_-1w§[_loc9_].y);
            _loc12_;
            _loc12_;
            _loc3_.push(_loc2_);
            _loc12_;
            _loc12_;
            _loc9_++;
            _loc11_;
            _loc11_;
         }
         _loc12_;
         _loc12_;
         _loc1_ = _loc3_.join("|");
         return _loc1_;
      }
      
      public function §_-6J§() : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:* = 0;
         while(true)
         {
            _loc4_;
            _loc4_;
            if(_loc1_ >= this.planets.length)
            {
               break;
            }
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            this.planets[_loc1_].boundsSprite.graphics.clear();
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            _loc4_;
            this.planets[_loc1_].boundsSprite.graphics.lineStyle(1,16777215,1);
            _loc4_;
            this.planets[_loc1_].boundsSprite.graphics.drawCircle(0,0,this.planets[_loc1_].radius + 50);
            _loc3_;
            _loc1_++;
            _loc4_;
         }
         var _loc2_:* = 0;
         _loc3_;
         _loc3_;
         while(_loc2_ < this.§_-1w§.length)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            this.§_-1w§[_loc2_].boundsSprite.graphics.clear();
            _loc3_;
            _loc4_;
            _loc4_;
            _loc4_;
            this.§_-1w§[_loc2_].boundsSprite.graphics.lineStyle(1,16777215,1);
            _loc4_;
            this.§_-1w§[_loc2_].boundsSprite.graphics.drawCircle(0,0,this.§_-1w§[_loc2_].radius + 10);
            _loc4_;
            _loc2_++;
            _loc4_;
            _loc4_;
         }
      }
      
      public function §_-wp§() : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:* = 0;
         while(true)
         {
            _loc3_;
            if(_loc1_ >= this.planets.length)
            {
               break;
            }
            this.planets[_loc1_].boundsSprite.graphics.clear();
            _loc4_;
            _loc4_;
            _loc1_++;
            _loc4_;
            _loc4_;
         }
         var _loc2_:* = 0;
         _loc4_;
         while(_loc2_ < this.§_-1w§.length)
         {
            this.§_-1w§[_loc2_].boundsSprite.graphics.clear();
            _loc3_;
            _loc3_;
            _loc2_++;
            _loc4_;
            _loc4_;
         }
      }
      
      public function §_-EE§(param1:Number, param2:Number, param3:Number) : *
      {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc10_;
         _loc10_;
         _loc4_ = param1 - this.§_-1§;
         _loc11_;
         _loc10_;
         _loc10_;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc5_ = param2 - this.§_-1§;
         _loc10_;
         _loc11_;
         _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         if((Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) > this.§_-1§ - param3)
         {
            _loc11_;
            _loc11_;
            return false;
         }
         var _loc7_:* = 0;
         while(true)
         {
            _loc10_;
            _loc10_;
            if(_loc7_ >= this.planets.length)
            {
               break;
            }
            _loc10_;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc11_;
            _loc4_ = this.planets[_loc7_].x - param1;
            _loc10_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc5_ = this.planets[_loc7_].y - param2;
            _loc11_;
            _loc10_;
            _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            if(_loc6_ < this.planets[_loc7_].radius + param3 + 102)
            {
               _loc10_;
               _loc10_;
               return false;
            }
            _loc7_++;
            _loc10_;
            _loc10_;
         }
         var _loc8_:* = 0;
         while(true)
         {
            _loc11_;
            if(_loc8_ >= this.§_-1w§.length)
            {
               break;
            }
            _loc10_;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc11_;
            _loc11_;
            _loc4_ = this.§_-1w§[_loc8_].x - param1;
            _loc11_;
            _loc11_;
            _loc10_;
            _loc5_ = this.§_-1w§[_loc8_].y - param2;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            if(_loc6_ < this.§_-1w§[_loc8_].radius + param3 + 62)
            {
               return false;
            }
            _loc8_++;
            _loc10_;
         }
         var _loc9_:* = 0;
         while(_loc9_ < this.gates.length)
         {
            _loc10_;
            _loc10_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc4_ = this.gates[_loc9_].x - param1;
            _loc11_;
            _loc11_;
            _loc10_;
            _loc11_;
            _loc5_ = this.gates[_loc9_].y - param2;
            _loc11_;
            _loc11_;
            _loc10_;
            _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            if(_loc6_ < this.gates[_loc9_].radius + param3 + 62)
            {
               _loc11_;
               _loc10_;
               _loc10_;
               return false;
            }
            _loc9_++;
            _loc10_;
         }
         return true;
      }
      
      public function §_-Yb§(param1:EditorObject, param2:Number, param3:Number) : *
      {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = 0;
         while(true)
         {
            _loc10_;
            if(_loc7_ >= this.§_-ki§.length)
            {
               break;
            }
            if(param1 is §_-Lf§)
            {
               _loc10_;
               _loc10_;
               _loc4_ = this.§_-ki§[_loc7_].x - param2;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc10_;
               _loc5_ = this.§_-ki§[_loc7_].y - param3;
               _loc10_;
               _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               _loc10_;
               _loc10_;
               _loc11_;
               if((Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) < this.§_-sy§)
               {
                  _loc10_;
                  _loc10_;
                  _loc10_;
                  return false;
               }
            }
            _loc11_;
            if(param1 is §_-s2§)
            {
               _loc10_;
               _loc4_ = this.§_-ki§[_loc7_].x - param2;
               _loc10_;
               _loc11_;
               _loc11_;
               _loc5_ = this.§_-ki§[_loc7_].y - param3;
               _loc10_;
               _loc10_;
               _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               _loc10_;
               _loc10_;
               if((Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) < this.§_-wN§ && !(this.§_-ki§[_loc7_] == param1))
               {
                  return false;
               }
            }
            _loc10_;
            _loc10_;
            if(param1 is §_-r2§)
            {
               _loc10_;
               _loc11_;
               _loc4_ = this.§_-ki§[_loc7_].x - param2;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc5_ = this.§_-ki§[_loc7_].y - param3;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               if((Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) < this.§_-w3§)
               {
                  return false;
               }
            }
            _loc7_++;
            _loc11_;
         }
         var _loc8_:* = 0;
         while(true)
         {
            _loc11_;
            if(_loc8_ >= this.units.length)
            {
               break;
            }
            if(param1 is §_-Lf§)
            {
               _loc10_;
               _loc4_ = this.units[_loc8_].x - param2;
               _loc10_;
               _loc11_;
               _loc5_ = this.units[_loc8_].y - param3;
               _loc11_;
               _loc11_;
               _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               _loc11_;
               _loc11_;
               _loc11_;
               if((Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) < this.§_-9u§ && !(this.units[_loc8_] == param1))
               {
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  return false;
               }
            }
            if(param1 is §_-s2§)
            {
               _loc4_ = this.units[_loc8_].x - param2;
               _loc5_ = this.units[_loc8_].y - param3;
               _loc10_;
               _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               _loc11_;
               _loc11_;
               if((Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) < this.§_-sy§)
               {
                  _loc11_;
                  return false;
               }
            }
            _loc10_;
            if(param1 is §_-r2§)
            {
               _loc10_;
               _loc4_ = this.units[_loc8_].x - param2;
               _loc10_;
               _loc10_;
               _loc5_ = this.units[_loc8_].y - param3;
               _loc11_;
               _loc10_;
               _loc10_;
               _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               if((Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) < this.§_-6F§)
               {
                  _loc11_;
                  _loc11_;
                  return false;
               }
            }
            _loc8_++;
         }
         var _loc9_:* = 0;
         while(_loc9_ < this.barrels.length)
         {
            _loc11_;
            _loc11_;
            if(param1 is §_-Lf§)
            {
               _loc10_;
               _loc4_ = this.barrels[_loc9_].x - param2;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc5_ = this.barrels[_loc9_].y - param3;
               _loc11_;
               _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               _loc11_;
               if((Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) < this.§_-6F§)
               {
                  _loc11_;
                  _loc11_;
                  return false;
               }
            }
            if(param1 is §_-s2§)
            {
               _loc11_;
               _loc11_;
               _loc11_;
               _loc4_ = this.barrels[_loc9_].x - param2;
               _loc5_ = this.barrels[_loc9_].y - param3;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               _loc10_;
               _loc10_;
               _loc11_;
               _loc11_;
               if((Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) < this.§_-6F§)
               {
                  _loc10_;
                  _loc10_;
                  _loc10_;
                  _loc10_;
                  return false;
               }
            }
            if(param1 is §_-r2§ && !(this.barrels[_loc9_] == param1))
            {
               _loc11_;
               _loc4_ = this.barrels[_loc9_].x - param2;
               _loc5_ = this.barrels[_loc9_].y - param3;
               _loc11_;
               _loc11_;
               _loc10_;
               _loc10_;
               _loc11_;
               _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               if((Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) < this.§_-LB§)
               {
                  _loc10_;
                  _loc10_;
                  return false;
               }
            }
            _loc9_++;
            _loc10_;
         }
         return true;
      }
      
      public function §_-QG§(param1:Number, param2:Number, param3:Number) : *
      {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc10_;
         _loc10_;
         _loc11_;
         _loc11_;
         _loc4_ = param1 - this.§_-1§;
         _loc10_;
         _loc10_;
         _loc11_;
         _loc11_;
         _loc5_ = param2 - this.§_-1§;
         _loc10_;
         _loc11_;
         _loc11_;
         _loc10_;
         _loc10_;
         _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         if((Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) > this.§_-1§ - param3)
         {
            _loc11_;
            _loc11_;
            return false;
         }
         var _loc7_:* = 0;
         while(true)
         {
            _loc11_;
            _loc11_;
            if(_loc7_ >= this.planets.length)
            {
               break;
            }
            _loc10_;
            _loc10_;
            _loc10_;
            _loc11_;
            _loc11_;
            _loc10_;
            _loc4_ = this.planets[_loc7_].x - param1;
            _loc11_;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc5_ = this.planets[_loc7_].y - param2;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            if(_loc6_ < this.planets[_loc7_].radius + param3 + 102)
            {
               _loc11_;
               return false;
            }
            _loc7_++;
            _loc11_;
         }
         var _loc8_:* = 0;
         while(true)
         {
            _loc10_;
            _loc10_;
            if(_loc8_ >= this.§_-1w§.length)
            {
               break;
            }
            _loc11_;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc11_;
            _loc11_;
            _loc4_ = this.§_-1w§[_loc8_].x - param1;
            _loc11_;
            _loc10_;
            _loc10_;
            _loc5_ = this.§_-1w§[_loc8_].y - param2;
            _loc11_;
            _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            if(_loc6_ < this.§_-1w§[_loc8_].radius + param3 + 22)
            {
               return false;
            }
            _loc8_++;
         }
         var _loc9_:* = 0;
         while(_loc9_ < this.gates.length)
         {
            _loc11_;
            _loc11_;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc4_ = this.gates[_loc9_].x - param1;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc5_ = this.gates[_loc9_].y - param2;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            if(_loc6_ < this.gates[_loc9_].radius + param3 + 22)
            {
               _loc10_;
               _loc10_;
               _loc10_;
               return false;
            }
            _loc9_++;
            _loc10_;
         }
         return true;
      }
      
      public function §_-aA§(param1:Number, param2:Number, param3:Number) : *
      {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         _loc10_;
         _loc10_;
         _loc11_;
         _loc10_;
         _loc4_ = param1 - this.§_-1§;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc5_ = param2 - this.§_-1§;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         if((Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) > this.§_-1§ - param3)
         {
            _loc10_;
            return false;
         }
         var _loc7_:* = 0;
         while(true)
         {
            _loc11_;
            _loc11_;
            if(_loc7_ >= this.gates.length)
            {
               break;
            }
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc4_ = this.gates[_loc7_].x - param1;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc11_;
            _loc5_ = this.gates[_loc7_].y - param2;
            _loc11_;
            _loc11_;
            _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            if(_loc6_ < this.gates[_loc7_].radius + param3 + 12)
            {
               _loc11_;
               _loc11_;
               return false;
            }
            _loc7_++;
            _loc10_;
         }
         var _loc8_:* = 0;
         while(true)
         {
            _loc10_;
            _loc10_;
            if(_loc8_ >= this.planets.length)
            {
               break;
            }
            _loc10_;
            _loc10_;
            _loc10_;
            _loc11_;
            _loc11_;
            _loc10_;
            _loc4_ = this.planets[_loc8_].x - param1;
            _loc10_;
            _loc11_;
            _loc10_;
            _loc5_ = this.planets[_loc8_].y - param2;
            _loc10_;
            _loc11_;
            _loc11_;
            _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            if(_loc6_ < this.planets[_loc8_].radius + param3 + 62)
            {
               _loc11_;
               _loc11_;
               return false;
            }
            _loc8_++;
         }
         var _loc9_:* = 0;
         while(_loc9_ < this.§_-1w§.length)
         {
            _loc11_;
            _loc11_;
            _loc10_;
            _loc11_;
            _loc11_;
            _loc4_ = this.§_-1w§[_loc9_].x - param1;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc11_;
            _loc5_ = this.§_-1w§[_loc9_].y - param2;
            _loc11_;
            _loc10_;
            _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            if(_loc6_ < this.§_-1w§[_loc9_].radius + param3 + 22)
            {
               _loc10_;
               _loc10_;
               return false;
            }
            _loc9_++;
         }
         return true;
      }
      
      public function checkValid() : *
      {
         var _loc39_:* = false;
         var _loc40_:* = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = 0;
         var _loc8_:* = 0;
         var _loc12_:* = 0;
         var _loc17_:* = 0;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:* = NaN;
         var _loc26_:* = NaN;
         var _loc27_:* = NaN;
         var _loc28_:* = NaN;
         var _loc29_:* = NaN;
         var _loc30_:* = NaN;
         var _loc31_:* = NaN;
         var _loc33_:* = 0;
         var _loc34_:* = 0;
         var _loc35_:* = 0;
         var _loc36_:* = 0;
         var _loc37_:§_-Sc§ = null;
         var _loc38_:* = 0;
         var _loc1_:* = false;
         var _loc6_:* = 0;
         while(true)
         {
            _loc40_;
            _loc40_;
            if(_loc6_ >= this.planets.length)
            {
               break;
            }
            this.planets[_loc6_].valid = true;
            _loc39_;
            _loc39_;
            _loc6_++;
            _loc40_;
         }
         var _loc7_:* = 0;
         while(true)
         {
            _loc40_;
            _loc40_;
            _loc40_;
            _loc40_;
            if(_loc7_ >= this.gates.length)
            {
               break;
            }
            _loc39_;
            _loc40_;
            this.gates[_loc7_].valid = true;
            _loc7_++;
            _loc39_;
         }
         _loc40_;
         _loc40_;
         _loc8_ = 0;
         _loc40_;
         _loc40_;
         while(true)
         {
            _loc39_;
            if(_loc8_ >= this.§_-1w§.length)
            {
               break;
            }
            this.§_-1w§[_loc8_].valid = true;
            _loc8_++;
            _loc39_;
            _loc39_;
         }
         var _loc9_:* = 0;
         _loc40_;
         while(true)
         {
            _loc39_;
            if(_loc9_ >= this.§_-ki§.length)
            {
               break;
            }
            this.§_-ki§[_loc9_].valid = true;
            _loc39_;
            _loc39_;
            _loc9_++;
            _loc40_;
            _loc40_;
         }
         var _loc10_:* = 0;
         _loc39_;
         _loc39_;
         while(true)
         {
            _loc39_;
            _loc39_;
            if(_loc10_ >= this.units.length)
            {
               break;
            }
            this.units[_loc10_].valid = true;
            _loc39_;
            _loc10_++;
            _loc40_;
         }
         var _loc11_:* = 0;
         _loc40_;
         _loc40_;
         while(true)
         {
            _loc40_;
            _loc40_;
            if(_loc11_ >= this.barrels.length)
            {
               break;
            }
            _loc39_;
            _loc39_;
            this.barrels[_loc11_].valid = true;
            _loc40_;
            _loc11_++;
         }
         _loc39_;
         _loc39_;
         _loc39_;
         _loc39_;
         _loc12_ = 0;
         _loc39_;
         _loc39_;
         while(_loc12_ < this.planets.length)
         {
            _loc39_;
            _loc39_;
            _loc39_;
            _loc39_;
            _loc40_;
            _loc35_ = _loc12_ + 1;
            _loc39_;
            while(true)
            {
               _loc39_;
               _loc39_;
               _loc39_;
               if(_loc35_ >= this.planets.length)
               {
                  break;
               }
               _loc40_;
               _loc39_;
               _loc40_;
               _loc39_;
               _loc2_ = this.planets[_loc12_].x - this.planets[_loc35_].x;
               _loc39_;
               _loc39_;
               _loc40_;
               _loc3_ = this.planets[_loc12_].y - this.planets[_loc35_].y;
               _loc4_ = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
               if(_loc4_ < this.planets[_loc12_].radius + this.planets[_loc35_].radius + 100)
               {
                  _loc39_;
                  _loc39_;
                  _loc39_;
                  this.planets[_loc12_].valid = false;
                  this.planets[_loc35_].valid = false;
                  _loc39_;
                  _loc39_;
                  _loc1_ = true;
               }
               _loc35_++;
            }
            _loc12_++;
         }
         var _loc13_:Point = new Point(0,0);
         var _loc14_:Point = new Point(0,0);
         var _loc15_:Point = new Point(0,0);
         var _loc16_:Point = new Point(0,0);
         _loc39_;
         _loc40_;
         _loc7_ = 0;
         while(_loc7_ < this.gates.length)
         {
            _loc13_.x = this.gates[_loc7_].x + 50 * Math.cos(this.gates[_loc7_].rotation * Math.PI / 180);
            _loc13_.y = this.gates[_loc7_].y + 50 * Math.sin(this.gates[_loc7_].rotation * Math.PI / 180);
            _loc14_.x = this.gates[_loc7_].x - 50 * Math.cos(this.gates[_loc7_].rotation * Math.PI / 180);
            _loc40_;
            _loc40_;
            _loc14_.y = this.gates[_loc7_].y - 50 * Math.sin(this.gates[_loc7_].rotation * Math.PI / 180);
            _loc40_;
            _loc40_;
            _loc6_ = 0;
            _loc40_;
            _loc40_;
            while(true)
            {
               _loc39_;
               _loc39_;
               _loc39_;
               if(_loc6_ >= this.planets.length)
               {
                  break;
               }
               _loc39_;
               _loc39_;
               _loc40_;
               _loc2_ = this.planets[_loc6_].x - _loc13_.x;
               _loc40_;
               _loc40_;
               _loc3_ = this.planets[_loc6_].y - _loc13_.y;
               _loc40_;
               _loc40_;
               _loc40_;
               _loc4_ = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
               _loc40_;
               _loc40_;
               _loc40_;
               _loc40_;
               if((Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_)) < this.planets[_loc6_].radius)
               {
                  this.gates[_loc7_].valid = false;
                  _loc40_;
                  _loc40_;
                  this.planets[_loc6_].valid = false;
                  _loc39_;
                  _loc1_ = true;
               }
               _loc39_;
               _loc39_;
               _loc40_;
               _loc40_;
               _loc2_ = this.planets[_loc6_].x - _loc14_.x;
               _loc40_;
               _loc40_;
               _loc40_;
               _loc3_ = this.planets[_loc6_].y - _loc14_.y;
               _loc39_;
               _loc39_;
               _loc39_;
               _loc4_ = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
               _loc39_;
               _loc39_;
               if((Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_)) < this.planets[_loc6_].radius)
               {
                  _loc40_;
                  this.gates[_loc7_].valid = false;
                  _loc40_;
                  this.planets[_loc6_].valid = false;
                  _loc39_;
                  _loc39_;
                  _loc39_;
                  _loc39_;
                  _loc1_ = true;
               }
               _loc40_;
               _loc40_;
               _loc2_ = this.planets[_loc6_].x - this.gates[_loc7_].x;
               _loc39_;
               _loc39_;
               _loc39_;
               _loc40_;
               _loc3_ = this.planets[_loc6_].y - this.gates[_loc7_].y;
               _loc4_ = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
               if(_loc4_ < this.planets[_loc6_].radius)
               {
                  _loc39_;
                  _loc39_;
                  _loc40_;
                  this.gates[_loc7_].valid = false;
                  this.planets[_loc6_].valid = false;
                  _loc40_;
                  _loc40_;
                  _loc1_ = true;
                  _loc39_;
                  _loc39_;
               }
               _loc6_++;
               _loc40_;
            }
            _loc7_++;
         }
         _loc13_ = new Point(0,0);
         _loc14_ = new Point(0,0);
         _loc15_ = new Point(0,0);
         _loc16_ = new Point(0,0);
         _loc7_ = 0;
         while(_loc7_ < this.gates.length)
         {
            _loc13_.x = this.gates[_loc7_].x + 50 * Math.cos(this.gates[_loc7_].rotation * Math.PI / 180);
            _loc13_.y = this.gates[_loc7_].y + 50 * Math.sin(this.gates[_loc7_].rotation * Math.PI / 180);
            _loc39_;
            _loc39_;
            _loc14_.x = this.gates[_loc7_].x - 50 * Math.cos(this.gates[_loc7_].rotation * Math.PI / 180);
            _loc14_.y = this.gates[_loc7_].y - 50 * Math.sin(this.gates[_loc7_].rotation * Math.PI / 180);
            _loc5_ = 0;
            _loc39_;
            while(true)
            {
               _loc39_;
               _loc39_;
               if(_loc5_ >= this.§_-1w§.length)
               {
                  break;
               }
               _loc39_;
               _loc39_;
               _loc2_ = this.§_-1w§[_loc5_].x - _loc13_.x;
               _loc40_;
               _loc40_;
               _loc39_;
               _loc39_;
               _loc39_;
               _loc39_;
               _loc3_ = this.§_-1w§[_loc5_].y - _loc13_.y;
               _loc39_;
               _loc39_;
               _loc4_ = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
               _loc39_;
               _loc39_;
               _loc39_;
               if(_loc4_ < this.§_-1w§[_loc5_].radius)
               {
                  _loc40_;
                  _loc40_;
                  _loc39_;
                  _loc39_;
                  this.gates[_loc7_].valid = false;
                  this.§_-1w§[_loc5_].valid = false;
                  _loc40_;
                  _loc1_ = true;
               }
               _loc39_;
               _loc39_;
               _loc39_;
               _loc2_ = this.§_-1w§[_loc5_].x - _loc14_.x;
               _loc40_;
               _loc40_;
               _loc39_;
               _loc3_ = this.§_-1w§[_loc5_].y - _loc14_.y;
               _loc40_;
               _loc40_;
               _loc4_ = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
               _loc39_;
               _loc39_;
               _loc39_;
               if((Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_)) < this.§_-1w§[_loc5_].radius)
               {
                  _loc39_;
                  _loc39_;
                  _loc39_;
                  _loc39_;
                  this.gates[_loc7_].valid = false;
                  _loc40_;
                  _loc40_;
                  _loc40_;
                  this.§_-1w§[_loc5_].valid = false;
                  _loc1_ = true;
                  _loc39_;
                  _loc39_;
               }
               _loc40_;
               _loc40_;
               _loc40_;
               _loc2_ = this.§_-1w§[_loc5_].x - this.gates[_loc7_].x;
               _loc39_;
               _loc3_ = this.§_-1w§[_loc5_].y - this.gates[_loc7_].y;
               _loc40_;
               _loc39_;
               _loc39_;
               _loc4_ = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
               _loc40_;
               _loc40_;
               _loc39_;
               if((Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_)) < this.§_-1w§[_loc5_].radius)
               {
                  this.gates[_loc7_].valid = false;
                  _loc39_;
                  _loc39_;
                  this.§_-1w§[_loc5_].valid = false;
                  _loc1_ = true;
                  _loc39_;
               }
               _loc5_++;
            }
            _loc39_;
            _loc39_;
            _loc7_++;
            _loc40_;
         }
         _loc17_ = 0;
         while(true)
         {
            _loc40_;
            if(_loc17_ >= this.gates.length)
            {
               break;
            }
            _loc40_;
            _loc36_ = _loc17_ + 1;
            while(true)
            {
               _loc39_;
               _loc39_;
               if(_loc36_ >= this.gates.length)
               {
                  break;
               }
               if((this.gates[_loc17_].valid) || (this.gates[_loc36_].valid))
               {
                  _loc39_;
                  _loc13_.x = this.gates[_loc17_].x + 50 * Math.cos(this.gates[_loc17_].rotation * Math.PI / 180);
                  _loc13_.y = this.gates[_loc17_].y + 50 * Math.sin(this.gates[_loc17_].rotation * Math.PI / 180);
                  _loc39_;
                  _loc39_;
                  _loc14_.x = this.gates[_loc17_].x - 50 * Math.cos(this.gates[_loc17_].rotation * Math.PI / 180);
                  _loc39_;
                  _loc39_;
                  _loc14_.y = this.gates[_loc17_].y - 50 * Math.sin(this.gates[_loc17_].rotation * Math.PI / 180);
                  _loc40_;
                  _loc40_;
                  _loc15_.x = this.gates[_loc36_].x + 50 * Math.cos(this.gates[_loc36_].rotation * Math.PI / 180);
                  _loc15_.y = this.gates[_loc36_].y + 50 * Math.sin(this.gates[_loc36_].rotation * Math.PI / 180);
                  _loc39_;
                  _loc39_;
                  _loc16_.x = this.gates[_loc36_].x - 50 * Math.cos(this.gates[_loc36_].rotation * Math.PI / 180);
                  _loc39_;
                  _loc16_.y = this.gates[_loc36_].y - 50 * Math.sin(this.gates[_loc36_].rotation * Math.PI / 180);
                  _loc37_ = SafeGlobal.§_-sW§(_loc13_,_loc14_,_loc15_,_loc16_,true);
                  if(_loc37_)
                  {
                     _loc40_;
                     _loc40_;
                     _loc39_;
                     this.gates[_loc17_].valid = false;
                     _loc39_;
                     _loc39_;
                     this.gates[_loc36_].valid = false;
                     _loc39_;
                     _loc1_ = true;
                  }
               }
               _loc36_++;
               _loc39_;
            }
            _loc40_;
            _loc17_++;
         }
         _loc17_ = 0;
         _loc40_;
         _loc40_;
         while(true)
         {
            _loc40_;
            _loc40_;
            _loc40_;
            _loc40_;
            if(_loc17_ >= this.gates.length)
            {
               break;
            }
            _loc40_;
            _loc39_;
            _loc39_;
            _loc36_ = _loc17_ + 1;
            while(true)
            {
               _loc39_;
               _loc39_;
               _loc39_;
               if(_loc36_ >= this.gates.length)
               {
                  break;
               }
               _loc39_;
               _loc39_;
               _loc39_;
               if((this.gates[_loc17_].valid) || (this.gates[_loc36_].valid))
               {
                  _loc39_;
                  _loc40_;
                  _loc40_;
                  _loc30_ = this.gates[_loc17_].rotation;
                  _loc31_ = this.gates[_loc36_].rotation;
                  _loc39_;
                  _loc40_;
                  _loc39_;
                  _loc39_;
                  _loc39_;
                  _loc39_;
                  if((_loc30_ == 0 || _loc30_ == 180 || _loc30_ == 360) && (_loc31_ == 0 || _loc31_ == 180 || _loc31_ == 360))
                  {
                     _loc40_;
                     _loc3_ = Math.abs(this.gates[_loc17_].y - this.gates[_loc36_].y);
                     if(_loc3_ < 12)
                     {
                        _loc39_;
                        _loc39_;
                        _loc18_ = this.gates[_loc17_].x - 50;
                        _loc40_;
                        _loc40_;
                        _loc40_;
                        _loc40_;
                        _loc19_ = this.gates[_loc17_].x + 50;
                        _loc39_;
                        _loc39_;
                        _loc39_;
                        _loc39_;
                        _loc39_;
                        _loc20_ = this.gates[_loc36_].x - 50;
                        _loc39_;
                        _loc21_ = this.gates[_loc36_].x + 50;
                        _loc39_;
                        _loc39_;
                        _loc39_;
                        if(_loc20_ >= _loc18_ && _loc20_ <= _loc19_ || _loc21_ <= _loc19_ && _loc21_ >= _loc18_)
                        {
                           _loc39_;
                           _loc39_;
                           this.gates[_loc17_].valid = false;
                           _loc40_;
                           _loc40_;
                           this.gates[_loc36_].valid = false;
                           _loc40_;
                           _loc39_;
                           _loc39_;
                           _loc1_ = true;
                        }
                     }
                  }
                  else
                  {
                     _loc39_;
                     _loc40_;
                     _loc40_;
                     if((_loc30_ == 90 || _loc30_ == 270) && (_loc31_ == 90 || _loc31_ == 270))
                     {
                        _loc2_ = Math.abs(this.gates[_loc17_].x - this.gates[_loc36_].x);
                        _loc39_;
                        _loc39_;
                        if(_loc2_ < 12)
                        {
                           _loc39_;
                           _loc39_;
                           _loc39_;
                           _loc39_;
                           _loc40_;
                           _loc40_;
                           _loc22_ = this.gates[_loc17_].y - 50;
                           _loc39_;
                           _loc39_;
                           _loc40_;
                           _loc40_;
                           _loc23_ = this.gates[_loc17_].y + 50;
                           _loc40_;
                           _loc40_;
                           _loc40_;
                           _loc40_;
                           _loc40_;
                           _loc24_ = this.gates[_loc36_].y - 50;
                           _loc40_;
                           _loc40_;
                           _loc25_ = this.gates[_loc36_].y + 50;
                           _loc39_;
                           if(_loc24_ >= _loc22_ && _loc24_ <= _loc23_ || _loc25_ <= _loc23_ && _loc25_ >= _loc22_)
                           {
                              _loc39_;
                              this.gates[_loc17_].valid = false;
                              _loc39_;
                              this.gates[_loc36_].valid = false;
                              _loc39_;
                              _loc39_;
                              _loc1_ = true;
                           }
                        }
                     }
                  }
               }
               _loc36_++;
            }
            _loc39_;
            _loc39_;
            _loc17_++;
         }
         _loc12_ = 0;
         while(true)
         {
            _loc39_;
            _loc39_;
            if(_loc12_ >= this.planets.length)
            {
               break;
            }
            _loc39_;
            _loc8_ = 0;
            while(_loc8_ < this.§_-1w§.length)
            {
               _loc40_;
               _loc40_;
               _loc40_;
               _loc40_;
               _loc40_;
               _loc2_ = this.planets[_loc12_].x - this.§_-1w§[_loc8_].x;
               _loc3_ = this.planets[_loc12_].y - this.§_-1w§[_loc8_].y;
               _loc4_ = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
               if(_loc4_ < this.planets[_loc12_].radius + this.§_-1w§[_loc8_].radius + 60)
               {
                  this.planets[_loc12_].valid = false;
                  _loc39_;
                  this.§_-1w§[_loc8_].valid = false;
                  _loc1_ = true;
               }
               _loc8_++;
               _loc39_;
            }
            _loc40_;
            _loc12_++;
         }
         var _loc32_:* = 0;
         while(true)
         {
            _loc39_;
            _loc39_;
            if(_loc32_ >= this.§_-1w§.length)
            {
               break;
            }
            _loc38_ = 0;
            while(true)
            {
               _loc40_;
               _loc40_;
               if(_loc38_ >= this.§_-1w§.length)
               {
                  break;
               }
               _loc39_;
               _loc39_;
               if(_loc32_ != _loc38_)
               {
                  _loc39_;
                  _loc39_;
                  _loc39_;
                  _loc39_;
                  _loc39_;
                  _loc40_;
                  _loc40_;
                  _loc2_ = this.§_-1w§[_loc32_].x - this.§_-1w§[_loc38_].x;
                  _loc40_;
                  _loc40_;
                  _loc3_ = this.§_-1w§[_loc32_].y - this.§_-1w§[_loc38_].y;
                  _loc39_;
                  _loc39_;
                  _loc39_;
                  _loc39_;
                  _loc4_ = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
                  _loc40_;
                  _loc39_;
                  if((Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_)) < this.§_-1w§[_loc32_].radius + this.§_-1w§[_loc38_].radius + 20)
                  {
                     _loc40_;
                     _loc40_;
                     _loc40_;
                     _loc40_;
                     this.§_-1w§[_loc32_].valid = false;
                     _loc39_;
                     _loc39_;
                     this.§_-1w§[_loc38_].valid = false;
                     _loc40_;
                     _loc40_;
                     _loc1_ = true;
                  }
               }
               _loc38_++;
            }
            _loc40_;
            _loc40_;
            _loc32_++;
            _loc40_;
            _loc40_;
         }
         _loc39_;
         _loc39_;
         _loc9_ = 0;
         while(_loc9_ < this.§_-ki§.length)
         {
            _loc40_;
            _loc10_ = 0;
            while(true)
            {
               _loc39_;
               _loc39_;
               if(_loc10_ >= this.units.length)
               {
                  break;
               }
               _loc39_;
               _loc2_ = this.§_-ki§[_loc9_].x - this.units[_loc10_].x;
               _loc40_;
               _loc39_;
               _loc39_;
               _loc39_;
               _loc3_ = this.§_-ki§[_loc9_].y - this.units[_loc10_].y;
               _loc39_;
               _loc4_ = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
               _loc40_;
               _loc40_;
               if((Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_)) < this.§_-ki§[_loc9_].radius + this.units[_loc10_].radius)
               {
                  this.§_-ki§[_loc9_].valid = false;
                  _loc39_;
                  _loc39_;
                  _loc40_;
                  this.units[_loc10_].valid = false;
                  _loc39_;
                  _loc39_;
                  _loc39_;
                  _loc1_ = true;
               }
               _loc10_++;
            }
            _loc9_++;
            _loc40_;
            _loc40_;
         }
         _loc11_ = 0;
         _loc40_;
         _loc40_;
         while(_loc11_ < this.barrels.length)
         {
            _loc10_ = 0;
            _loc40_;
            while(true)
            {
               _loc40_;
               if(_loc10_ >= this.units.length)
               {
                  break;
               }
               _loc39_;
               _loc39_;
               _loc2_ = this.barrels[_loc11_].x - this.units[_loc10_].x;
               _loc39_;
               _loc40_;
               _loc40_;
               _loc3_ = this.barrels[_loc11_].y - this.units[_loc10_].y;
               _loc39_;
               _loc4_ = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
               _loc40_;
               if((Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_)) < this.barrels[_loc11_].radius + this.units[_loc10_].radius)
               {
                  _loc40_;
                  _loc40_;
                  _loc39_;
                  _loc40_;
                  _loc40_;
                  this.barrels[_loc11_].valid = false;
                  this.units[_loc10_].valid = false;
                  _loc39_;
                  _loc39_;
                  _loc39_;
                  _loc39_;
                  _loc1_ = true;
                  _loc40_;
                  _loc40_;
               }
               _loc10_++;
               _loc39_;
            }
            _loc40_;
            _loc11_++;
         }
         _loc39_;
         _loc40_;
         _loc9_ = 0;
         while(_loc9_ < this.§_-ki§.length)
         {
            _loc33_ = 0;
            while(true)
            {
               _loc40_;
               _loc40_;
               _loc40_;
               if(_loc33_ >= this.§_-ki§.length)
               {
                  break;
               }
               _loc40_;
               if(_loc9_ != _loc33_)
               {
                  _loc39_;
                  _loc39_;
                  _loc40_;
                  _loc2_ = this.§_-ki§[_loc9_].x - this.§_-ki§[_loc33_].x;
                  _loc39_;
                  _loc3_ = this.§_-ki§[_loc9_].y - this.§_-ki§[_loc33_].y;
                  _loc39_;
                  _loc4_ = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
                  _loc39_;
                  if((Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_)) < this.§_-ki§[_loc9_].radius + this.§_-ki§[_loc33_].radius)
                  {
                     _loc40_;
                     _loc40_;
                     this.§_-ki§[_loc9_].valid = false;
                     this.§_-ki§[_loc33_].valid = false;
                     _loc1_ = true;
                  }
               }
               _loc33_++;
            }
            _loc9_++;
         }
         _loc39_;
         _loc39_;
         _loc11_ = 0;
         while(true)
         {
            _loc39_;
            if(_loc11_ >= this.barrels.length)
            {
               break;
            }
            _loc39_;
            _loc23_ = 0;
            while(true)
            {
               _loc40_;
               if(_loc23_ >= this.barrels.length)
               {
                  break;
               }
               if(_loc11_ != _loc23_)
               {
                  _loc40_;
                  _loc40_;
                  _loc39_;
                  _loc2_ = this.barrels[_loc11_].x - this.barrels[_loc23_].x;
                  _loc40_;
                  _loc40_;
                  _loc40_;
                  _loc3_ = this.barrels[_loc11_].y - this.barrels[_loc23_].y;
                  _loc40_;
                  _loc40_;
                  _loc4_ = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
                  _loc39_;
                  _loc39_;
                  if((Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_)) < this.barrels[_loc11_].radius + this.barrels[_loc23_].radius)
                  {
                     _loc39_;
                     this.barrels[_loc11_].valid = false;
                     _loc39_;
                     _loc39_;
                     this.barrels[_loc23_].valid = false;
                     _loc1_ = true;
                  }
               }
               _loc40_;
               _loc23_++;
               _loc39_;
               _loc39_;
            }
            _loc39_;
            _loc11_++;
         }
         _loc39_;
         _loc39_;
         _loc10_ = 0;
         _loc39_;
         _loc39_;
         while(_loc10_ < this.units.length)
         {
            _loc39_;
            _loc34_ = 0;
            _loc40_;
            _loc40_;
            while(_loc34_ < this.units.length)
            {
               _loc39_;
               if(_loc10_ != _loc34_)
               {
                  _loc39_;
                  _loc39_;
                  _loc40_;
                  _loc39_;
                  _loc39_;
                  _loc39_;
                  _loc2_ = this.units[_loc10_].x - this.units[_loc34_].x;
                  _loc40_;
                  _loc40_;
                  _loc39_;
                  _loc39_;
                  _loc3_ = this.units[_loc10_].y - this.units[_loc34_].y;
                  _loc40_;
                  _loc4_ = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
                  if(_loc4_ < this.units[_loc10_].radius + this.units[_loc34_].radius)
                  {
                     _loc40_;
                     _loc40_;
                     _loc40_;
                     _loc40_;
                     _loc40_;
                     _loc40_;
                     this.units[_loc10_].valid = false;
                     _loc39_;
                     _loc39_;
                     this.units[_loc34_].valid = false;
                     _loc40_;
                     _loc1_ = true;
                  }
               }
               _loc34_++;
               _loc40_;
               _loc40_;
            }
            _loc10_++;
         }
         _loc40_;
         if(this.units.length == 0)
         {
            _loc1_ = true;
            _loc40_;
         }
         if(_loc1_)
         {
            _loc40_;
            _loc40_;
            _loc40_;
            this.§_-Qi§.§_-gO§();
            _loc39_;
            _loc39_;
         }
         else
         {
            this.§_-Qi§.§_-Tb§();
            _loc40_;
         }
         _loc40_;
         _loc40_;
         _loc6_ = 0;
         _loc39_;
         while(_loc6_ < this.planets.length)
         {
            _loc40_;
            _loc40_;
            this.planets[_loc6_].showValid();
            _loc6_++;
         }
         _loc40_;
         _loc40_;
         _loc40_;
         _loc40_;
         _loc7_ = 0;
         while(_loc7_ < this.gates.length)
         {
            _loc40_;
            _loc40_;
            this.gates[_loc7_].showValid();
            _loc7_++;
         }
         _loc8_ = 0;
         while(true)
         {
            _loc39_;
            _loc39_;
            if(_loc8_ >= this.§_-1w§.length)
            {
               break;
            }
            _loc39_;
            this.§_-1w§[_loc8_].showValid();
            _loc40_;
            _loc40_;
            _loc8_++;
         }
         _loc9_ = 0;
         while(true)
         {
            _loc39_;
            _loc39_;
            _loc40_;
            if(_loc9_ >= this.§_-ki§.length)
            {
               break;
            }
            _loc40_;
            _loc40_;
            this.§_-ki§[_loc9_].showValid();
            _loc9_++;
            _loc40_;
            _loc40_;
         }
         _loc40_;
         _loc11_ = 0;
         _loc40_;
         while(true)
         {
            _loc40_;
            _loc40_;
            if(_loc11_ >= this.barrels.length)
            {
               break;
            }
            _loc40_;
            _loc40_;
            this.barrels[_loc11_].showValid();
            _loc40_;
            _loc11_++;
         }
         _loc40_;
         _loc40_;
         _loc10_ = 0;
         _loc39_;
         _loc39_;
         while(_loc10_ < this.units.length)
         {
            this.units[_loc10_].showValid();
            _loc10_++;
            _loc40_;
         }
      }
      
      public function §_-Ty§(param1:PlanetObject) : *
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc2_:* = 0;
         var _loc3_:int = this.planets.indexOf(param1);
         var _loc4_:* = 0;
         while(true)
         {
            _loc8_;
            if(_loc4_ >= this.§_-ki§.length)
            {
               break;
            }
            if(this.§_-ki§[_loc4_].planetID == _loc3_)
            {
               _loc7_;
               _loc7_;
               _loc2_++;
               _loc7_;
            }
            _loc4_++;
            _loc7_;
         }
         var _loc5_:* = 0;
         _loc7_;
         _loc7_;
         while(true)
         {
            _loc8_;
            if(_loc5_ >= this.barrels.length)
            {
               break;
            }
            if(this.barrels[_loc5_].planetID == _loc3_)
            {
               _loc8_;
               _loc8_;
               _loc2_++;
               _loc7_;
            }
            _loc5_++;
            _loc7_;
            _loc7_;
         }
         var _loc6_:* = 0;
         _loc7_;
         _loc7_;
         while(true)
         {
            _loc8_;
            if(_loc6_ >= this.units.length)
            {
               break;
            }
            if(this.units[_loc6_].planetID == _loc3_)
            {
               _loc8_;
               _loc8_;
               _loc2_++;
               _loc8_;
            }
            _loc6_++;
            _loc7_;
            _loc7_;
         }
         return _loc2_;
      }
      
      public function §_-zi§() : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:* = 0;
         while(true)
         {
            _loc4_;
            if(_loc1_ >= this.units.length)
            {
               break;
            }
            _loc1_++;
            _loc4_;
         }
         var _loc2_:* = 0;
         _loc5_;
         _loc5_;
         while(true)
         {
            _loc4_;
            _loc4_;
            if(_loc2_ >= this.barrels.length)
            {
               break;
            }
            _loc2_++;
            _loc5_;
            _loc5_;
         }
         var _loc3_:* = 0;
         _loc4_;
         _loc4_;
         while(_loc3_ < this.§_-ki§.length)
         {
            _loc3_++;
            _loc4_;
         }
      }
      
      public function §_-ap§(param1:int) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfucation" for better results.
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function removeObject(param1:EditorObject) : *
      {
         var _loc13_:* = true;
         var _loc14_:* = false;
         var _loc2_:* = false;
         var _loc3_:* = false;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:§_-T1§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         _loc14_;
         _loc14_;
         if(param1 is PlanetObject && this.§_-Ty§(PlanetObject(param1)) == 0)
         {
            _loc14_;
            _loc14_;
            this.§_-zi§();
            _loc14_;
            _loc14_;
            _loc13_;
            _loc2_ = PlanetObject(param1).sun;
            _loc3_ = PlanetObject(param1).blackHole;
            _loc13_;
            _loc13_;
            _loc13_;
            _loc13_;
            _loc4_ = this.planets.indexOf(param1);
            this.§_-G7§.removeChild(param1);
            _loc13_;
            _loc13_;
            _loc13_;
            this.planets.splice(_loc4_,1);
            this.§_-ap§(_loc4_);
            _loc14_;
            this.§_-zi§();
            _loc14_;
            _loc14_;
            if(_loc2_)
            {
               _loc14_;
               _loc14_;
               _loc13_;
               _loc14_;
               _loc14_;
               this.sun_count--;
            }
            else if(_loc3_)
            {
               _loc13_;
               _loc14_;
               _loc14_;
               this.blackhole_count--;
            }
            else
            {
               _loc13_;
               _loc14_;
               this.planet_count--;
               _loc13_;
            }
            
         }
         else if(param1 is §_-s2§)
         {
            _loc13_;
            _loc13_;
            _loc14_;
            _loc14_;
            _loc5_ = this.§_-ki§.indexOf(param1);
            this.§_-KV§.removeChild(param1);
            _loc14_;
            _loc14_;
            _loc13_;
            _loc14_;
            _loc14_;
            _loc14_;
            this.§_-ki§.splice(_loc5_,1);
            _loc13_;
            _loc14_;
            this.mine_count--;
         }
         else
         {
            _loc13_;
            if(param1 is §_-r2§)
            {
               _loc13_;
               _loc13_;
               _loc6_ = this.barrels.indexOf(param1);
               this.§_-KV§.removeChild(param1);
               _loc13_;
               _loc13_;
               _loc13_;
               _loc14_;
               _loc14_;
               this.barrels.splice(_loc6_,1);
               _loc13_;
               _loc13_;
               _loc13_;
               _loc13_;
               _loc14_;
               _loc14_;
               this.barrel_count--;
            }
            else
            {
               _loc14_;
               if(param1 is §_-T1§)
               {
                  _loc14_;
                  _loc14_;
                  _loc14_;
                  _loc14_;
                  _loc14_;
                  _loc14_;
                  _loc7_ = this.gates.indexOf(param1);
                  _loc14_;
                  _loc8_ = §_-T1§(param1).pair;
                  if(!_loc8_)
                  {
                     _loc14_;
                     §_-T1§(param1).pair = null;
                     this.§_-P§.removeChild(this.gates[_loc7_]);
                     _loc14_;
                     _loc14_;
                     _loc13_;
                     _loc14_;
                     _loc13_;
                     this.gates.splice(_loc7_,1);
                     _loc14_;
                     this.wormhole_count = this.wormhole_count - 1;
                  }
                  else
                  {
                     §_-T1§(param1).pair = null;
                     _loc8_.pair = null;
                     _loc13_;
                     this.§_-P§.removeChild(this.gates[_loc7_]);
                     _loc14_;
                     _loc14_;
                     _loc14_;
                     _loc14_;
                     this.gates.splice(_loc7_,1);
                     _loc14_;
                     _loc14_;
                     _loc14_;
                     _loc14_;
                     _loc7_ = this.gates.indexOf(_loc8_);
                     this.§_-P§.removeChild(this.gates[_loc7_]);
                     _loc14_;
                     this.gates.splice(_loc7_,1);
                     this.wormhole_count = this.wormhole_count - 2;
                  }
               }
               else if(param1 is §_-fV§ || param1 is §_-R7§)
               {
                  _loc13_;
                  _loc13_;
                  _loc9_ = this.gates.indexOf(param1);
                  _loc14_;
                  this.§_-P§.removeChild(this.gates[_loc9_]);
                  _loc13_;
                  _loc13_;
                  this.gates.splice(_loc9_,1);
                  _loc14_;
                  _loc14_;
                  _loc14_;
                  _loc11_.shield_count = _loc12_;
                  _loc13_;
               }
               else if(param1 is §_-xv§)
               {
                  _loc10_ = this.§_-1w§.indexOf(param1);
                  _loc14_;
                  _loc14_;
                  this.§_-ec§.removeChild(this.§_-1w§[_loc10_]);
                  _loc14_;
                  _loc14_;
                  this.§_-1w§.splice(_loc10_,1);
                  _loc13_;
                  _loc13_;
                  _loc14_;
                  _loc14_;
                  _loc11_.skymine_count = _loc12_;
               }
               
               
            }
         }
         
         this.checkValid();
         _loc13_;
         _loc13_;
         this.§_-3g§();
         this.§_-cO§.graphics.clear();
         this.§_-Qi§.§_-dW§();
         this.updateLevelBounds();
      }
   }
}
