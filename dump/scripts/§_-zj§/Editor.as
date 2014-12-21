package §_-zj§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.display.BitmapData;
   import flash.display.Bitmap;
   import §_-JH§.§_-oH§;
   import flash.geom.Rectangle;
   import com.funkypear.ui.CircleBorder;
   import fl.transitions.Tween;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   import §_-JH§.§each §;
   import §_-bk§.§_-qD§;
   import flash.filters.BlurFilter;
   import flash.geom.ColorTransform;
   import §_-bk§.§_-pM§;
   
   public class Editor extends MovieClip
   {
      
      public function Editor(param1:String = "p,130,570,96,37|p,970,630,92,32|p,590,240,92,4|p,600,930,87,13|u,3,-38,0|u,3,-83,0|u,3,-161,0|u,3,37,0|u,3,85,0|u,3,168,0|u,1,-93,1|u,1,-16,1|u,1,-54,1|u,1,-158,1|u,1,18,1|u,1,101,1|u,0,16,2|u,0,-5,2|u,0,-172,2|u,0,-49,2|u,0,-101,2|u,0,-147,2|u,2,-34,3|u,2,24,3|u,2,70,3|u,2,-141,3|u,2,137,3|u,2,-173,3|g,820,860,48,2|g,330,810,-39,2|g,310,320,45,2|g,890,300,-36,2|g,550,630,43,0|g,550,550,-43,0|g,640,550,41,0|g,650,640,-39,0", param2:Number = -0.123456789, param3:Number = -0.123456789)
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         this.§_-BT§ = new Sprite();
         _loc5_;
         this.§_-p-§ = new Sprite();
         _loc5_;
         _loc5_;
         this.§_-yN§ = new Sprite();
         this.§_-eO§ = new Sprite();
         this.§_-le§ = new Sprite();
         this.§_-Ql§ = new Sprite();
         _loc5_;
         this.§_-a3§ = new Sprite();
         _loc5_;
         _loc5_;
         this.§_-e-§ = new Sprite();
         this.screen = new Sprite();
         _loc5_;
         _loc5_;
         this.§_-gX§ = new Array();
         _loc6_;
         this.planets = new Array();
         this.units = new Array();
         this.§_-KM§ = new Array();
         this.gates = new Array();
         _loc5_;
         _loc5_;
         this.barrels = new Array();
         this.§_-I6§ = new Array();
         _loc5_;
         _loc5_;
         this.§_-05§ = [];
         _loc5_;
         _loc5_;
         this.§_-wr§ = new §_-oH§(new §_-N6§());
         this.§_-sY§ = new Rectangle(0,0,1,1);
         this.§_-Zq§ = new Point(0,0);
         this.§_-uJ§ = new Point();
         this.§_-Xb§ = new Point(0,0);
         _loc6_;
         _loc6_;
         super();
         this.levelData = param1;
         var _loc4_:* = "";
         _loc5_;
         _loc5_;
         if(Global.custom_maps.length > Global.selected_map_slot)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            if(Global.custom_maps[Global.selected_map_slot] != null)
            {
               _loc5_;
               _loc6_;
               _loc5_;
               _loc4_ = (Global.custom_maps[Global.selected_map_slot] as §_-qD§).mapData;
            }
         }
         if(_loc4_ != "")
         {
            this.§_-ml§ = true;
            _loc5_;
         }
         else
         {
            this.§_-ml§ = false;
         }
         _loc6_;
         _loc6_;
         _loc6_;
         _loc5_;
         if(!(param2 == -0.123456789) && !(param3 == -0.123456789))
         {
            this.§_-tF§ = param2;
            this.§_-c1§ = param3;
         }
         Global.EDITOR = this;
         _loc6_;
         _loc6_;
         if(stage)
         {
            _loc6_;
            _loc6_;
            this.addedToStage();
            _loc6_;
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.addedToStage,false,0,true);
         }
      }
      
      public var §_-BT§:Sprite;
      
      public var §_-p-§:Sprite;
      
      public var §_-yN§:Sprite;
      
      public var §_-eO§:Sprite;
      
      public var §_-le§:Sprite;
      
      public var §_-Ql§:Sprite;
      
      public var §_-a3§:Sprite;
      
      public var §_-e-§:Sprite;
      
      public var screen:Sprite;
      
      public var §_-hZ§:§_-R5§;
      
      public var §_-gX§:Array;
      
      public var planets:Array;
      
      public var units:Array;
      
      public var §_-KM§:Array;
      
      public var gates:Array;
      
      public var barrels:Array;
      
      public var §_-I6§:Array;
      
      public var §_-6b§;
      
      public var dragging:EditorObject;
      
      public var selected:EditorObject;
      
      public var §_-sc§:Point;
      
      public var §_-9W§:Point;
      
      public var §_-cN§:Boolean = false;
      
      public var §_-Y6§:int = 200;
      
      public var §_-gS§:int = 600;
      
      public var §_-nN§:int = 150;
      
      public var §_-ja§:Number = 30;
      
      public var §_-js§:Number = 40;
      
      public var §case §:Number = 30;
      
      public var §_-bx§:Number = 15;
      
      public var §_-LY§:Number = 15;
      
      public var §_-t5§:Number = 20;
      
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
      
      public var §_-05§:Array;
      
      public var §_-gI§:BitmapData;
      
      public var §_-5t§:Bitmap;
      
      public var §_-wr§:§_-oH§;
      
      public var §_-sY§:Rectangle;
      
      public var §_-Zq§:Point;
      
      public var §_-uJ§:Point;
      
      private var circle_border:CircleBorder;
      
      private var §_-1j§:Boolean = false;
      
      public var §_-Xb§:Point;
      
      private var §_-ol§:Tween;
      
      private var §_-KD§:Tween;
      
      private var §_-z8§:Tween;
      
      private var §_-Xg§:Tween;
      
      private var §_-tF§:Number;
      
      private var §_-c1§:Number;
      
      public var §_-2o§:Boolean = false;
      
      public var §_-ml§:Boolean = false;
      
      public function startTest() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         Global.editor_test_map = this.§_-Dy§();
         _loc2_;
         _loc2_;
         this.§_-hZ§.tweenOff(false);
      }
      
      public function cleanUp() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(hasEventListener(Event.ADDED_TO_STAGE))
         {
            _loc3_;
            _loc3_;
            removeEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
            _loc4_;
            _loc4_;
         }
         if(hasEventListener(Event.ENTER_FRAME))
         {
            _loc4_;
            removeEventListener(Event.ENTER_FRAME,this.§_-Tx§);
            _loc3_;
         }
         if(stage.hasEventListener(MouseEvent.MOUSE_DOWN))
         {
            _loc4_;
            stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-4t§);
         }
         if(stage.hasEventListener(MouseEvent.MOUSE_UP))
         {
            try
            {
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-K5§);
               _loc3_;
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-27§);
               _loc4_;
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-cT§);
               _loc3_;
               _loc3_;
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-Nr§);
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
            _loc3_;
            removeEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
         }
         this.§_-gI§ = new BitmapData(800,600,true,0);
         _loc3_;
         _loc3_;
         this.§_-5t§ = new Bitmap(this.§_-gI§);
         addChild(this.§_-5t§);
         addChild(this.screen);
         _loc2_;
         _loc2_;
         addChild(this.§_-BT§);
         _loc2_;
         this.screen.x = this.§_-tF§;
         _loc2_;
         this.screen.y = this.§_-c1§;
         this.screen.addChild(this.§_-p-§);
         _loc3_;
         this.screen.addChild(this.§_-le§);
         this.screen.addChild(this.§_-yN§);
         this.screen.addChild(this.§_-eO§);
         this.screen.addChild(this.§_-Ql§);
         this.screen.addChild(this.§_-a3§);
         this.screen.addChild(this.§_-e-§);
         _loc3_;
         this.§_-hZ§ = new §_-R5§();
         this.§_-BT§.addChild(this.§_-hZ§);
         _loc2_;
         _loc2_;
         this.§_-hZ§.x = 1055;
         this.§_-hZ§.y = 42;
         _loc2_;
         if(this.levelData != "")
         {
            this.§_-VT§();
         }
         this.§_-HA§(0.8);
         _loc2_;
         this.updateLevelBounds();
         addEventListener(Event.ENTER_FRAME,this.§_-Tx§,false,0,true);
         _loc2_;
         _loc2_;
         stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-4t§,false,0,true);
         _loc2_;
         _loc2_;
         this.checkValid();
         _loc3_;
         SafeGlobal.TIMELINE.bringSoundButtonsToFront();
      }
      
      public function finishTweenOn() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.§_-1j§ = true;
         _loc2_;
         _loc2_;
         this.§_-TJ§();
         _loc1_;
         _loc1_;
         this.updateLevelBounds();
      }
      
      public function §_-JN§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         if(this.§_-p-§.numChildren > 0)
         {
            while(this.§_-p-§.numChildren > 0)
            {
               this.§_-p-§.removeChildAt(0);
            }
         }
         if(this.§_-le§.numChildren > 0)
         {
            _loc1_;
            while(this.§_-le§.numChildren > 0)
            {
               this.§_-le§.removeChildAt(0);
            }
         }
         if(this.§_-yN§.numChildren > 0)
         {
            while(this.§_-yN§.numChildren > 0)
            {
               this.§_-yN§.removeChildAt(0);
               _loc2_;
               _loc2_;
            }
         }
         if(this.§_-eO§.numChildren > 0)
         {
            _loc2_;
            while(this.§_-eO§.numChildren > 0)
            {
               this.§_-eO§.removeChildAt(0);
               _loc1_;
            }
         }
         if(this.§_-Ql§.numChildren > 0)
         {
            while(this.§_-Ql§.numChildren > 0)
            {
               this.§_-Ql§.removeChildAt(0);
            }
         }
         _loc2_;
         _loc2_;
         this.planets.length = 0;
         _loc1_;
         _loc1_;
         this.planets = new Array();
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         this.§_-KM§.length = 0;
         this.§_-KM§ = new Array();
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.units.length = 0;
         this.units = new Array();
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.gates.length = 0;
         _loc2_;
         _loc2_;
         this.gates = new Array();
         this.§_-I6§.length = 0;
         _loc1_;
         _loc1_;
         this.§_-I6§ = new Array();
         _loc1_;
         _loc1_;
         this.planet_count = 0;
         _loc2_;
         this.sun_count = 0;
         _loc1_;
         _loc1_;
         this.shield_count = 0;
         this.wormhole_count = 0;
         _loc1_;
         this.mine_count = 0;
         _loc2_;
         _loc2_;
         this.barrel_count = 0;
         _loc1_;
         this.skymine_count = 0;
         this.blackhole_count = 0;
      }
      
      public function §_-VT§() : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:Array = null;
         var _loc1_:Array = this.levelData.split("|");
         var _loc3_:* = 0;
         while(true)
         {
            _loc6_;
            _loc6_;
            if(_loc3_ >= _loc1_.length)
            {
               break;
            }
            _loc2_ = _loc1_[_loc3_].split(",");
            if(_loc2_[0] == "p")
            {
               if(_loc2_.length > 5)
               {
                  this.addPlanet(_loc2_[1],_loc2_[2],_loc2_[3],_loc2_[4],_loc2_[5],_loc2_[6]);
                  _loc7_;
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
               _loc7_;
               _loc7_;
               this.addBlackHole(_loc2_[1],_loc2_[2],_loc2_[3],-1);
            }
            else if(_loc2_[0] == "u")
            {
               _loc7_;
               this.§_-go§(_loc2_[1],_loc2_[2],_loc2_[3]);
               _loc7_;
               _loc7_;
            }
            else if(_loc2_[0] == "m")
            {
               _loc6_;
               _loc6_;
               this.addMine(_loc2_[3],_loc2_[1],_loc2_[2]);
            }
            else if(_loc2_[0] == "b")
            {
               this.addBarrel(_loc2_[1],_loc2_[2]);
               _loc7_;
            }
            else if(_loc2_[0] == "g")
            {
               _loc7_;
               _loc7_;
               _loc6_;
               _loc6_;
               if(_loc2_[4] == SafeGlobal.GATETYPE_DISSOLVESHIELD || _loc2_[4] == SafeGlobal.GATETYPE_SHIELD)
               {
                  _loc6_;
                  this.addShield(_loc2_[4],_loc2_[1],_loc2_[2],_loc2_[3]);
               }
               else if(_loc2_[4] == SafeGlobal.GATETYPE_WORMHOLE)
               {
                  this.§_-F1§(_loc2_[1],_loc2_[2],_loc2_[3]);
                  _loc6_;
               }
               
            }
            else if(_loc2_[0] == "k")
            {
               this.addSkyMine(_loc2_[1],_loc2_[2]);
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
            _loc7_;
            if(this.gates[_loc5_] is §_-5N§)
            {
               _loc7_;
               _loc6_;
               _loc6_;
               if(_loc4_ == -1)
               {
                  _loc6_;
                  _loc6_;
                  _loc4_ = _loc5_;
               }
               else
               {
                  _loc7_;
                  _loc7_;
                  _loc6_;
                  this.gates[_loc4_].pair = this.gates[_loc5_];
                  this.gates[_loc5_].pair = this.gates[_loc4_];
                  _loc6_;
                  _loc6_;
                  _loc7_;
                  _loc7_;
                  _loc4_ = -1;
               }
            }
            _loc5_++;
            _loc6_;
         }
      }
      
      public function reloadLevelData(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.levelData = param1;
      }
      
      public function §_-Tx§(param1:Event) : *
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
         _loc13_;
         if((this.dragging) && getTimer() - this.dragging.§_-s5§ >= this.§_-nN§)
         {
            _loc13_;
            _loc13_;
            _loc13_;
            _loc13_;
            if(this.dragging.§_-wR§)
            {
               _loc13_;
               _loc13_;
               this.§_-zW§(this.dragging,this.screen.mouseX,this.screen.mouseY);
               _loc14_;
               this.checkValid();
               _loc14_;
               _loc14_;
            }
            else
            {
               _loc13_;
               _loc14_;
               _loc14_;
               _loc2_ = Math.round((this.screen.mouseX - this.dragging.§_-mD§.x) / 10) * 10;
               _loc14_;
               _loc14_;
               _loc3_ = Math.round((this.screen.mouseY - this.dragging.§_-mD§.y) / 10) * 10;
               _loc14_;
               _loc13_;
               _loc13_;
               _loc4_ = _loc2_ - this.§_-gS§;
               _loc13_;
               _loc14_;
               _loc14_;
               _loc14_;
               _loc14_;
               _loc5_ = _loc3_ - this.§_-gS§;
               _loc13_;
               _loc13_;
               _loc13_;
               _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               _loc13_;
               _loc14_;
               _loc13_;
               if(this.dragging is PlanetObject)
               {
                  _loc14_;
                  _loc13_;
                  _loc13_;
                  if(_loc6_ > this.§_-gS§ - PlanetObject(this.dragging).radius)
                  {
                     _loc7_ = Math.atan2(_loc5_,_loc4_);
                     _loc14_;
                     _loc2_ = Math.floor(this.§_-gS§ + (this.§_-gS§ - PlanetObject(this.dragging).radius) * Math.cos(_loc7_));
                     _loc3_ = Math.floor(this.§_-gS§ + (this.§_-gS§ - PlanetObject(this.dragging).radius) * Math.sin(_loc7_));
                  }
               }
               else if(_loc6_ > this.§_-gS§)
               {
                  _loc13_;
                  _loc13_;
                  _loc7_ = Math.atan2(_loc5_,_loc4_);
                  _loc14_;
                  _loc2_ = Math.floor(this.§_-gS§ + this.§_-gS§ * Math.cos(_loc7_));
                  _loc3_ = Math.floor(this.§_-gS§ + this.§_-gS§ * Math.sin(_loc7_));
               }
               
               _loc14_;
               _loc14_;
               _loc14_;
               this.dragging.x = _loc2_;
               this.dragging.y = _loc3_;
               this.checkValid();
               this.dragging.§_-Te§();
               _loc13_;
               if(this.dragging is PlanetObject)
               {
                  _loc13_;
                  _loc13_;
                  _loc8_ = 0;
                  while(true)
                  {
                     _loc13_;
                     _loc13_;
                     _loc13_;
                     if(_loc8_ >= this.§_-KM§.length)
                     {
                        break;
                     }
                     if(this.§_-KM§[_loc8_].planetID == this.dragging.id)
                     {
                        _loc14_;
                        _loc14_;
                        _loc13_;
                        _loc14_;
                        this.§_-KM§[_loc8_].x = this.dragging.x + this.§_-KM§[_loc8_].planetDistance.x;
                        this.§_-KM§[_loc8_].y = this.dragging.y + this.§_-KM§[_loc8_].planetDistance.y;
                     }
                     _loc8_++;
                     _loc14_;
                     _loc14_;
                  }
                  _loc13_;
                  _loc13_;
                  _loc9_ = 0;
                  _loc14_;
                  _loc14_;
                  while(true)
                  {
                     _loc14_;
                     _loc14_;
                     _loc14_;
                     _loc14_;
                     if(_loc9_ >= this.units.length)
                     {
                        break;
                     }
                     _loc13_;
                     _loc14_;
                     if(this.units[_loc9_].planetID == this.dragging.id)
                     {
                        this.units[_loc9_].x = this.dragging.x + this.units[_loc9_].planetDistance.x;
                        _loc14_;
                        _loc14_;
                        _loc13_;
                        this.units[_loc9_].y = this.dragging.y + this.units[_loc9_].planetDistance.y;
                        _loc14_;
                        _loc14_;
                     }
                     _loc9_++;
                     _loc13_;
                  }
                  _loc14_;
                  _loc10_ = 0;
                  while(true)
                  {
                     _loc13_;
                     if(_loc10_ >= this.barrels.length)
                     {
                        break;
                     }
                     if(this.barrels[_loc10_].planetID == this.dragging.id)
                     {
                        this.barrels[_loc10_].x = this.dragging.x + this.barrels[_loc10_].planetDistance.x;
                        _loc14_;
                        _loc14_;
                        this.barrels[_loc10_].y = this.dragging.y + this.barrels[_loc10_].planetDistance.y;
                     }
                     _loc10_++;
                     _loc14_;
                  }
                  _loc14_;
                  _loc14_;
               }
               this.updateLevelBounds();
            }
            this.showLines(this.dragging);
         }
         else if(this.§_-6b§)
         {
            _loc13_;
            this.§_-6b§.knob.x = Math.round(this.§_-6b§.mouseX);
            if(this.§_-6b§.knob.x < this.§_-6b§.minX)
            {
               _loc14_;
               _loc14_;
               this.§_-6b§.knob.x = this.§_-6b§.minX;
               _loc13_;
            }
            else if(this.§_-6b§.knob.x > this.§_-6b§.maxX)
            {
               this.§_-6b§.knob.x = this.§_-6b§.maxX;
            }
            
            this.§_-6b§.processPosition();
            _loc14_;
         }
         else if(this.§_-sc§)
         {
            if(!this.§_-cN§)
            {
               this.§_-cN§ = true;
               _loc13_;
               SafeGlobal.TIMELINE.timeline.starMap.ignoreNextJump();
            }
            _loc14_;
            _loc13_;
            _loc11_ = mouseX - this.§_-sc§.x;
            _loc14_;
            _loc14_;
            _loc12_ = mouseY - this.§_-sc§.y;
            this.screen.x = this.§_-9W§.x + _loc11_;
            _loc14_;
            _loc14_;
            this.screen.y = this.§_-9W§.y + _loc12_;
            if(this.screen.x < -650)
            {
               this.screen.x = -650;
            }
            else if(this.screen.x > 100)
            {
               this.screen.x = 100;
               _loc13_;
               _loc13_;
            }
            
            if(this.screen.y < -700)
            {
               this.screen.y = -700;
               _loc14_;
               _loc14_;
            }
            else if(this.screen.y > 100)
            {
               this.screen.y = 100;
            }
            
            SafeGlobal.TIMELINE.timeline.starMap.moveTo(0 - this.screen.x,0 - this.screen.y);
            _loc13_;
            this.§_-8B§();
         }
         
         
      }
      
      public function §_-Ut§(param1:Number) : *
      {
         var _loc12_:* = false;
         var _loc13_:* = true;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = NaN;
         _loc12_;
         this.§_-05§ = new Array();
         _loc13_;
         _loc13_;
         _loc13_;
         var _loc2_:Number = 2 * Math.PI * param1;
         var _loc3_:* = 40;
         var _loc4_:int = int(_loc2_ / _loc3_);
         _loc12_;
         _loc12_;
         _loc12_;
         _loc12_;
         _loc4_ = int(_loc4_ / 2) * 2;
         _loc13_;
         _loc12_;
         _loc12_;
         var _loc10_:Number = Math.PI * 2 / _loc4_;
         var _loc11_:* = 0;
         while(_loc11_ < _loc4_)
         {
            _loc13_;
            _loc13_;
            _loc12_;
            _loc9_ = _loc10_ * _loc11_;
            _loc12_;
            _loc12_;
            _loc5_ = Math.round(600 + Math.cos(_loc9_) * param1);
            _loc12_;
            _loc13_;
            _loc6_ = Math.round(600 + Math.sin(_loc9_) * param1);
            _loc13_;
            _loc13_;
            _loc7_ = 90 - Math.round(_loc9_ * 180 / Math.PI);
            while(true)
            {
               _loc13_;
               if(_loc7_ < 360)
               {
                  break;
               }
               _loc12_;
               _loc12_;
               _loc13_;
               _loc13_;
               _loc12_;
               _loc12_;
               _loc7_ = _loc7_ - 360;
               _loc13_;
               _loc13_;
            }
            while(true)
            {
               _loc12_;
               _loc12_;
               if(_loc7_ >= 0)
               {
                  break;
               }
               _loc12_;
               _loc12_;
               _loc7_ = _loc7_ + 360;
               _loc12_;
               _loc12_;
            }
            _loc8_ = Math.floor(_loc7_ / 5);
            _loc13_;
            _loc13_;
            this.§_-05§.push(new §each §(_loc5_,_loc6_,_loc7_,_loc8_));
            _loc11_++;
            _loc12_;
            _loc12_;
         }
      }
      
      public function §_-8B§(param1:Number = -1) : *
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:§each § = null;
         _loc6_;
         this.§_-qm§();
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         while(_loc5_ < this.§_-05§.length)
         {
            _loc2_ = this.§_-05§[_loc5_];
            if(this.§_-Lh§(_loc2_.x,_loc2_.y))
            {
               _loc7_;
               this.§_-sY§ = this.§_-wr§.getChunk(_loc2_.§_-7c§);
               this.§_-Zq§.x = this.screen.x - 400 + (400 + (_loc2_.x - this.§_-sY§.height / 2));
               this.§_-Zq§.y = this.screen.y - 300 + (300 + (_loc2_.y - this.§_-sY§.height / 2));
               this.§_-gI§.copyPixels(this.§_-wr§.sheetBD,this.§_-sY§,this.§_-Zq§,null,null,true);
            }
            _loc5_++;
         }
      }
      
      public function §_-qm§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-gI§.fillRect(this.§_-gI§.rect,0);
      }
      
      public function §_-Lh§(param1:*, param2:*) : *
      {
         return true;
      }
      
      public function updateLevelBounds() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.screen.graphics.clear();
         _loc2_;
         _loc2_;
         var _loc1_:Number = this.§_-5d§();
         _loc3_;
         _loc3_;
         if(_loc1_ > 50)
         {
            if(this.§_-1j§)
            {
               _loc3_;
               this.§_-Ut§(_loc1_);
               this.§_-8B§();
               _loc3_;
            }
         }
         this.screen.graphics.lineStyle(1,16777215,0.75);
         this.screen.graphics.moveTo(this.§_-gS§ - 20,this.§_-gS§);
         this.screen.graphics.lineTo(this.§_-gS§ + 20,this.§_-gS§);
         _loc2_;
         this.screen.graphics.moveTo(this.§_-gS§,this.§_-gS§ - 20);
         this.screen.graphics.lineTo(this.§_-gS§,this.§_-gS§ + 20);
      }
      
      public function §_-5d§() : Number
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc3_;
         var _loc1_:String = this.§_-Dy§();
         var _loc2_:Number = 535;
         _loc3_;
         _loc3_;
         if(_loc1_ != "")
         {
            _loc4_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc2_ = SafeGlobal.§_-5k§(_loc1_);
         }
         return _loc2_;
      }
      
      public function §_-TQ§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.§_-2o§)
         {
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            if(Global.custom_maps.length > Global.selected_map_slot)
            {
               _loc2_;
               _loc2_;
               if(Global.custom_maps[Global.selected_map_slot] != null)
               {
                  this.levelData = (Global.custom_maps[Global.selected_map_slot] as §_-qD§).mapData;
               }
               else
               {
                  this.levelData = "";
               }
            }
            else
            {
               this.levelData = "";
               _loc1_;
            }
            this.§_-JN§();
            _loc2_;
            this.§_-VT§();
         }
         this.§_-le§.visible = false;
         this.screen.graphics.clear();
         this.§_-JP§();
         this.§_-a3§.graphics.clear();
         removeChild(this.§_-5t§);
         this.§_-5t§ = null;
         _loc1_;
         _loc1_;
         this.§_-gI§.dispose();
         this.§_-gI§ = null;
         this.§_-HA§(0.8);
      }
      
      public function §_-HA§(param1:Number) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         _loc4_;
         var _loc2_:Number = this.§_-5d§();
         _loc5_;
         this.circle_border = new CircleBorder(_loc2_);
         _loc5_;
         _loc5_;
         _loc4_;
         _loc4_;
         this.circle_border.x = 600;
         _loc4_;
         _loc4_;
         this.circle_border.y = 600;
         var _loc3_:BlurFilter = new BlurFilter(2,2,1);
         _loc5_;
         this.circle_border.filters = [_loc3_];
         _loc4_;
         this.screen.addChild(this.circle_border);
      }
      
      public function §_-TJ§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         if(this.circle_border != null)
         {
            _loc1_;
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
            if(_loc2_ >= this.§_-KM§.length)
            {
               break;
            }
            this.§_-zW§(this.§_-KM§[_loc2_],this.§_-KM§[_loc2_].x,this.§_-KM§[_loc2_].y);
            _loc9_;
            _loc2_++;
            _loc10_;
         }
         var _loc3_:* = 0;
         _loc10_;
         while(true)
         {
            _loc9_;
            _loc9_;
            if(_loc3_ >= this.units.length)
            {
               break;
            }
            this.§_-zW§(this.units[_loc3_],this.units[_loc3_].x,this.units[_loc3_].y);
            _loc10_;
            _loc10_;
            _loc3_++;
            _loc9_;
            _loc9_;
         }
         var _loc4_:* = 0;
         _loc9_;
         while(_loc4_ < this.barrels.length)
         {
            this.§_-zW§(this.barrels[_loc4_],this.barrels[_loc4_].x,this.barrels[_loc4_].y);
            _loc9_;
            _loc9_;
            _loc4_++;
            _loc9_;
         }
         _loc9_;
         _loc9_;
         var _loc5_:Number = this.planets[param1].x - this.§_-gS§;
         _loc10_;
         var _loc6_:Number = this.planets[param1].y - this.§_-gS§;
         var _loc7_:Number = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         _loc9_;
         _loc9_;
         if(_loc7_ > this.§_-gS§ - this.planets[param1].radius)
         {
            _loc10_;
            _loc8_ = Math.atan2(_loc6_,_loc5_);
            _loc10_;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc9_;
            _loc9_;
            this.planets[param1].x = this.§_-gS§ + (this.§_-gS§ - this.planets[param1].radius) * Math.cos(_loc8_);
            this.planets[param1].y = this.§_-gS§ + (this.§_-gS§ - this.planets[param1].radius) * Math.sin(_loc8_);
            _loc10_;
         }
         this.checkValid();
         this.§_-1l§();
         this.updateLevelBounds();
         this.showLines(this.planets[param1]);
      }
      
      public function §_-4t§(param1:MouseEvent) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(param1.target == param1.currentTarget && !(param1.target == this))
         {
            stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-4t§);
            _loc2_;
            stage.addEventListener(MouseEvent.MOUSE_UP,this.§_-K5§,false,0,true);
            _loc3_;
            _loc3_;
         }
         else if(param1.target == this)
         {
            stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-4t§);
            _loc3_;
            stage.addEventListener(MouseEvent.MOUSE_UP,this.§_-27§,false,0,true);
            _loc2_;
            this.§_-sc§ = new Point(mouseX,mouseY);
            _loc3_;
            this.§_-9W§ = new Point(this.screen.x,this.screen.y);
            this.§_-ZU§();
         }
         
      }
      
      public function §_-27§(param1:MouseEvent) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-4t§);
         _loc3_;
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-27§);
         _loc3_;
         this.§_-sc§ = null;
         _loc2_;
         this.§_-9W§ = null;
      }
      
      public function §_-K5§(param1:MouseEvent) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-4t§);
         _loc3_;
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-K5§);
         _loc3_;
         this.§_-ZU§();
      }
      
      public function §_-zW§(param1:EditorObject, param2:Number, param3:Number) : *
      {
         var _loc12_:* = true;
         var _loc13_:* = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         _loc12_;
         _loc12_;
         var _loc7_:Number = 5.0E9;
         var _loc8_:Number = -1;
         var _loc9_:* = 0;
         while(_loc9_ < this.planets.length)
         {
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            if(!this.planets[_loc9_].sun && !this.planets[_loc9_].blackHole)
            {
               _loc12_;
               _loc12_;
               _loc13_;
               _loc13_;
               _loc13_;
               _loc12_;
               _loc12_;
               _loc4_ = param2 - this.planets[_loc9_].x;
               _loc13_;
               _loc13_;
               _loc12_;
               _loc12_;
               _loc5_ = param3 - this.planets[_loc9_].y;
               _loc13_;
               _loc13_;
               _loc13_;
               _loc13_;
               _loc12_;
               _loc12_;
               _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               if((Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) < _loc7_)
               {
                  _loc13_;
                  _loc13_;
                  _loc7_ = _loc6_;
                  _loc13_;
                  _loc8_ = _loc9_;
                  _loc12_;
                  _loc12_;
               }
            }
            _loc9_++;
            _loc13_;
         }
         _loc12_;
         _loc13_;
         _loc13_;
         _loc13_;
         _loc12_;
         _loc4_ = param2 - this.planets[_loc8_].x;
         _loc12_;
         _loc12_;
         _loc12_;
         _loc5_ = param3 - this.planets[_loc8_].y;
         var _loc10_:Number = Math.atan2(_loc5_,_loc4_);
         var _loc11_:int = Math.round(_loc10_ * 180 / Math.PI);
         param1.planetID = _loc8_;
         _loc13_;
         _loc13_;
         param1.angle = _loc11_;
         param1.rotation = _loc11_ + 90;
         _loc12_;
         _loc12_;
         param1.x = this.planets[_loc8_].x + this.planets[_loc8_].radius * Math.cos(_loc10_);
         param1.y = this.planets[_loc8_].y + this.planets[_loc8_].radius * Math.sin(_loc10_);
         param1.planetDistance.x = param1.x - this.planets[_loc8_].x;
         param1.planetDistance.y = param1.y - this.planets[_loc8_].y;
      }
      
      public function §_-Sv§(param1:Number, param2:Number) : *
      {
         var _loc11_:* = true;
         var _loc12_:* = false;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         _loc11_;
         _loc11_;
         var _loc6_:Number = 5.0E9;
         var _loc7_:Number = -1;
         var _loc8_:* = 0;
         while(_loc8_ < this.planets.length)
         {
            _loc11_;
            _loc12_;
            _loc12_;
            _loc11_;
            if(!this.planets[_loc8_].sun && !this.planets[_loc8_].blackHole)
            {
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc3_ = param1 - this.planets[_loc8_].x;
               _loc12_;
               _loc11_;
               _loc11_;
               _loc4_ = param2 - this.planets[_loc8_].y;
               _loc12_;
               _loc12_;
               _loc5_ = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
               if((Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_)) < _loc6_)
               {
                  _loc11_;
                  _loc11_;
                  _loc6_ = _loc5_;
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  _loc7_ = _loc8_;
               }
            }
            _loc8_++;
         }
         _loc11_;
         _loc11_;
         _loc12_;
         _loc12_;
         _loc3_ = param1 - this.planets[_loc7_].x;
         _loc4_ = param2 - this.planets[_loc7_].y;
         var _loc9_:Number = Math.atan2(_loc4_,_loc3_);
         var _loc10_:int = Math.round(_loc9_ * 180 / Math.PI);
         _loc11_;
         this.§_-Xb§.x = this.planets[_loc7_].x + this.planets[_loc7_].radius * Math.cos(_loc9_);
         _loc12_;
         this.§_-Xb§.y = this.planets[_loc7_].y + this.planets[_loc7_].radius * Math.sin(_loc9_);
         return this.§_-Xb§;
      }
      
      public function addPlanet(param1:Number = -1, param2:Number = -1, param3:Number = -1, param4:int = -1, param5:int = 0, param6:int = 0) : *
      {
         var _loc13_:* = false;
         var _loc14_:* = true;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = false;
         var _loc10_:* = 0;
         _loc14_;
         _loc14_;
         _loc13_;
         if(this.planet_count < Global.TOTAL_EDITOR_PLANETS)
         {
            _loc13_;
            _loc14_;
            _loc14_;
            _loc13_;
            _loc14_;
            if(param1 == -1 && param2 == -1 && param3 == -1 && param4 == -1)
            {
               _loc13_;
               this.planets.push(new PlanetObject(false));
               this.§_-p-§.addChild(this.planets[this.planets.length - 1]);
               _loc9_ = false;
               _loc14_;
               _loc14_;
               _loc10_ = 0;
               while(true)
               {
                  _loc13_;
                  _loc13_;
                  _loc14_;
                  if(!(!_loc9_ && _loc10_ < 500))
                  {
                     break;
                  }
                  _loc10_++;
                  _loc13_;
                  _loc13_;
                  _loc14_;
                  _loc14_;
                  _loc14_;
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  _loc14_;
                  _loc14_;
                  _loc7_ = 0 - this.screen.x + 400 + _loc10_ * Math.cos(_loc10_);
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  _loc8_ = 0 - this.screen.y + 300 + _loc10_ * Math.sin(_loc10_);
                  _loc14_;
                  _loc14_;
                  _loc14_;
                  _loc9_ = this.§_-nQ§(_loc7_,_loc8_,this.planets[this.planets.length - 1].radius);
                  _loc13_;
                  _loc13_;
               }
               _loc14_;
               _loc14_;
               _loc14_;
               _loc14_;
               if(_loc10_ == 500)
               {
               }
               _loc13_;
               this.planets[this.planets.length - 1].x = _loc7_;
               this.planets[this.planets.length - 1].y = _loc8_;
            }
            else
            {
               _loc13_;
               _loc13_;
               this.planets.push(new PlanetObject(false,false,param3,param4));
               _loc14_;
               _loc14_;
               this.§_-p-§.addChild(this.planets[this.planets.length - 1]);
               _loc14_;
               _loc14_;
               this.planets[this.planets.length - 1].x = param1;
               _loc13_;
               _loc13_;
               _loc14_;
               _loc14_;
               this.planets[this.planets.length - 1].y = param2;
               _loc13_;
               _loc13_;
            }
            _loc13_;
            _loc13_;
            _loc14_;
            if(param5 > 0)
            {
               this.planets[this.planets.length - 1].setRadioactiveValue(param5);
            }
            if(param6 == 1)
            {
               _loc13_;
               _loc14_;
               _loc14_;
               this.planets[this.planets.length - 1].turnOnShield();
            }
            _loc14_;
            _loc14_;
            _loc14_;
            _loc13_;
            _loc13_;
            this.planets[this.planets.length - 1].id = this.planets.length - 1;
            this.planets[this.planets.length - 1].init();
            _loc13_;
            _loc13_;
            this.updateLevelBounds();
            _loc14_;
            _loc14_;
            this.checkValid();
            _loc14_;
            _loc14_;
            _loc13_;
            _loc13_;
            _loc14_;
            this.planet_count++;
            this.§_-hZ§.§_-IQ§();
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
         _loc12_;
         if(this.sun_count < Global.TOTAL_EDITOR_SUNS)
         {
            _loc11_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc11_;
            _loc12_;
            _loc12_;
            if(param1 == -1 && param2 == -1 && param3 == -1 && param4 == -1)
            {
               this.planets.push(new PlanetObject(true));
               this.§_-p-§.addChild(this.planets[this.planets.length - 1]);
               _loc7_ = false;
               _loc8_ = 0;
               while(true)
               {
                  _loc12_;
                  _loc11_;
                  _loc11_;
                  if(!(!_loc7_ && _loc8_ < 500))
                  {
                     break;
                  }
                  _loc8_++;
                  _loc12_;
                  _loc11_;
                  _loc11_;
                  _loc12_;
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  _loc12_;
                  _loc5_ = 0 - this.screen.x + 400 + _loc8_ * Math.cos(_loc8_);
                  _loc12_;
                  _loc12_;
                  _loc12_;
                  _loc12_;
                  _loc12_;
                  _loc12_;
                  _loc12_;
                  _loc6_ = 0 - this.screen.y + 300 + _loc8_ * Math.sin(_loc8_);
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  _loc7_ = this.§_-nQ§(_loc5_,_loc6_,this.planets[this.planets.length - 1].radius);
                  _loc12_;
               }
               _loc12_;
               if(_loc8_ == 500)
               {
               }
               _loc11_;
               _loc11_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               this.planets[this.planets.length - 1].x = _loc5_;
               _loc11_;
               _loc12_;
               _loc12_;
               this.planets[this.planets.length - 1].y = _loc6_;
               _loc11_;
               _loc11_;
            }
            else
            {
               this.planets.push(new PlanetObject(true,false,param3,param4));
               _loc11_;
               _loc11_;
               this.§_-p-§.addChild(this.planets[this.planets.length - 1]);
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               this.planets[this.planets.length - 1].x = param1;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               this.planets[this.planets.length - 1].y = param2;
            }
            _loc11_;
            _loc11_;
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
            _loc11_;
            _loc12_;
            _loc12_;
            _loc11_;
            _loc11_;
            this.sun_count++;
            _loc12_;
            this.§_-hZ§.§_-IQ§();
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
         _loc11_;
         _loc12_;
         _loc12_;
         if(this.blackhole_count < Global.§_-Tq§)
         {
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc11_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            if(param1 == -1 && param2 == -1 && param3 == -1 && param4 == -1)
            {
               _loc11_;
               this.planets.push(new PlanetObject(false,true));
               this.§_-p-§.addChild(this.planets[this.planets.length - 1]);
               _loc7_ = false;
               _loc12_;
               _loc12_;
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
                  _loc11_;
                  _loc12_;
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  _loc12_;
                  _loc12_;
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  _loc5_ = 0 - this.screen.x + 400 + _loc8_ * Math.cos(_loc8_);
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  _loc6_ = 0 - this.screen.y + 300 + _loc8_ * Math.sin(_loc8_);
                  _loc12_;
                  _loc7_ = this.§_-nQ§(_loc5_,_loc6_,this.planets[this.planets.length - 1].radius);
               }
               if(_loc8_ == 500)
               {
               }
               _loc12_;
               _loc12_;
               _loc11_;
               _loc11_;
               _loc11_;
               this.planets[this.planets.length - 1].x = _loc5_;
               _loc11_;
               _loc11_;
               _loc12_;
               _loc12_;
               this.planets[this.planets.length - 1].y = _loc6_;
               _loc12_;
               _loc12_;
            }
            else
            {
               _loc11_;
               this.planets.push(new PlanetObject(false,true,param3,param4));
               this.§_-p-§.addChild(this.planets[this.planets.length - 1]);
               _loc11_;
               _loc11_;
               _loc11_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               this.planets[this.planets.length - 1].x = param1;
               _loc11_;
               _loc11_;
               _loc12_;
               this.planets[this.planets.length - 1].y = param2;
            }
            _loc11_;
            _loc11_;
            _loc11_;
            this.planets[this.planets.length - 1].id = this.planets.length - 1;
            _loc11_;
            this.planets[this.planets.length - 1].init();
            this.updateLevelBounds();
            _loc11_;
            _loc11_;
            this.checkValid();
            _loc12_;
            _loc12_;
            _loc12_;
            _loc11_;
            this.blackhole_count++;
            this.§_-hZ§.§_-IQ§();
         }
      }
      
      public function addShield(param1:int, param2:int = -1, param3:int = -1, param4:int = -1) : *
      {
         var _loc11_:* = true;
         var _loc12_:* = false;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = false;
         var _loc8_:* = 0;
         _loc11_;
         _loc11_;
         _loc11_;
         if(this.shield_count < Global.TOTAL_EDITOR_SHIELDS)
         {
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            if(param1 == SafeGlobal.GATETYPE_SHIELD)
            {
               _loc11_;
               this.gates.push(new §_-zO§());
            }
            else
            {
               _loc12_;
               _loc11_;
               _loc11_;
               if(param1 == SafeGlobal.GATETYPE_DISSOLVESHIELD)
               {
                  this.gates.push(new §_-ch§());
                  _loc12_;
               }
            }
            this.§_-eO§.addChild(this.gates[this.gates.length - 1]);
            _loc12_;
            _loc12_;
            _loc11_;
            _loc11_;
            _loc11_;
            if(param2 == -1 && param3 == -1 && param4 == -1)
            {
               _loc7_ = false;
               _loc12_;
               _loc12_;
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
                  _loc11_;
                  _loc11_;
                  _loc5_ = Math.floor(0 - this.screen.x + 400 + _loc8_ * Math.cos(_loc8_));
                  _loc12_;
                  _loc6_ = Math.floor(0 - this.screen.y + 300 + _loc8_ * Math.sin(_loc8_));
                  _loc11_;
                  _loc11_;
                  _loc7_ = this.§_-5Y§(_loc5_,_loc6_,this.gates[this.gates.length - 1].radius);
               }
               if(_loc8_ == 500)
               {
               }
               _loc11_;
               _loc11_;
               _loc12_;
               _loc11_;
               _loc11_;
               this.gates[this.gates.length - 1].x = _loc5_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               this.gates[this.gates.length - 1].y = _loc6_;
            }
            else
            {
               _loc12_;
               _loc12_;
               _loc11_;
               _loc11_;
               _loc11_;
               this.gates[this.gates.length - 1].x = param2;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               this.gates[this.gates.length - 1].y = param3;
               _loc11_;
               _loc12_;
               _loc12_;
               _loc12_;
               this.gates[this.gates.length - 1].rotation = param4;
            }
            this.gates[this.gates.length - 1].init();
            this.updateLevelBounds();
            this.checkValid();
            _loc11_;
            _loc11_;
            _loc11_;
            this.shield_count++;
            this.§_-hZ§.§_-IQ§();
         }
      }
      
      public function §_-F1§(param1:int, param2:int, param3:int) : *
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         _loc7_;
         if(this.wormhole_count < Global.TOTAL_EDITOR_WORMHOLES)
         {
            _loc6_;
            _loc7_;
            this.gates.push(new §_-5N§());
            this.§_-eO§.addChild(this.gates[this.gates.length - 1]);
            _loc7_;
            _loc7_;
            _loc7_;
            this.gates[this.gates.length - 1].x = param1;
            _loc6_;
            _loc6_;
            _loc6_;
            this.gates[this.gates.length - 1].y = param2;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc7_;
            this.gates[this.gates.length - 1].rotation = param3;
            _loc7_;
            _loc7_;
            _loc7_;
            this.gates[this.gates.length - 1].init();
            this.updateLevelBounds();
            this.checkValid();
            _loc6_;
            _loc6_;
            _loc7_;
            _loc7_;
            _loc7_;
            this.wormhole_count++;
            if(Math.floor((this.wormhole_count - 1) / 2) == 0)
            {
               _loc7_;
               _loc6_;
               this.gates[this.gates.length - 1].blue.visible = true;
               _loc6_;
               _loc6_;
               _loc7_;
               _loc7_;
               this.gates[this.gates.length - 1].orange.visible = false;
               _loc7_;
               _loc7_;
            }
            else if(Math.floor((this.wormhole_count - 1) / 2) == 1)
            {
               _loc7_;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc6_;
               _loc6_;
               _loc6_;
               this.gates[this.gates.length - 1].blue.visible = false;
               this.gates[this.gates.length - 1].orange.visible = true;
               _loc7_;
            }
            
            this.§_-hZ§.§_-IQ§();
         }
      }
      
      public function addWormholes() : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:* = false;
         var _loc4_:* = 0;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         if(this.wormhole_count < Global.TOTAL_EDITOR_WORMHOLES)
         {
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            this.gates.push(new §_-5N§());
            _loc5_;
            this.§_-eO§.addChild(this.gates[this.gates.length - 1]);
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            if(this.wormhole_count == 0)
            {
               _loc5_;
               _loc5_;
               _loc6_;
               _loc5_;
               this.gates[this.gates.length - 1].blue.visible = true;
               _loc6_;
               _loc6_;
               _loc6_;
               _loc6_;
               _loc6_;
               _loc6_;
               this.gates[this.gates.length - 1].orange.visible = false;
               _loc5_;
               _loc5_;
            }
            else
            {
               _loc6_;
               _loc6_;
               if(this.wormhole_count == 2)
               {
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  this.gates[this.gates.length - 1].blue.visible = false;
                  _loc5_;
                  this.gates[this.gates.length - 1].orange.visible = true;
                  _loc6_;
                  _loc6_;
               }
            }
            _loc3_ = false;
            _loc6_;
            _loc6_;
            _loc4_ = 0;
            while(true)
            {
               _loc6_;
               _loc5_;
               _loc6_;
               if(!(!_loc3_ && _loc4_ < 500))
               {
                  break;
               }
               _loc4_++;
               _loc6_;
               _loc6_;
               _loc5_;
               _loc1_ = Math.floor(0 - this.screen.x + 400 + _loc4_ * Math.cos(_loc4_));
               _loc5_;
               _loc2_ = Math.floor(0 - this.screen.y + 300 + _loc4_ * Math.sin(_loc4_));
               _loc3_ = this.§_-5Y§(_loc1_,_loc2_,this.gates[this.gates.length - 1].radius);
            }
            _loc6_;
            _loc6_;
            _loc5_;
            _loc5_;
            if(_loc4_ == 500)
            {
               _loc6_;
            }
            _loc5_;
            _loc5_;
            this.gates[this.gates.length - 1].x = _loc1_;
            _loc5_;
            _loc5_;
            this.gates[this.gates.length - 1].y = _loc2_;
            _loc5_;
            _loc5_;
            _loc5_;
            this.gates[this.gates.length - 1].init();
            _loc5_;
            _loc5_;
            this.gates.push(new §_-5N§());
            this.§_-eO§.addChild(this.gates[this.gates.length - 1]);
            _loc5_;
            _loc6_;
            _loc6_;
            if(this.wormhole_count == 0)
            {
               _loc6_;
               _loc5_;
               _loc5_;
               this.gates[this.gates.length - 1].blue.visible = true;
               _loc5_;
               _loc5_;
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
                  this.gates[this.gates.length - 1].blue.visible = false;
                  _loc5_;
                  this.gates[this.gates.length - 1].orange.visible = true;
               }
            }
            _loc3_ = false;
            _loc4_ = 0;
            _loc6_;
            while(true)
            {
               _loc5_;
               _loc5_;
               _loc5_;
               if(!(!_loc3_ && _loc4_ < 500))
               {
                  break;
               }
               _loc4_++;
               _loc6_;
               _loc6_;
               _loc5_;
               _loc1_ = Math.floor(0 - this.screen.x + 400 + _loc4_ * Math.cos(_loc4_));
               _loc5_;
               _loc2_ = Math.floor(0 - this.screen.y + 300 + _loc4_ * Math.sin(_loc4_));
               _loc5_;
               _loc3_ = this.§_-5Y§(_loc1_,_loc2_,this.gates[this.gates.length - 1].radius);
            }
            _loc6_;
            _loc6_;
            if(_loc4_ == 500)
            {
               _loc5_;
               _loc5_;
            }
            _loc5_;
            _loc5_;
            this.gates[this.gates.length - 1].x = _loc1_;
            _loc6_;
            _loc6_;
            _loc6_;
            this.gates[this.gates.length - 1].y = _loc2_;
            _loc5_;
            _loc6_;
            this.gates[this.gates.length - 1].init();
            _loc6_;
            this.gates[this.gates.length - 1].pair = this.gates[this.gates.length - 2];
            this.gates[this.gates.length - 2].pair = this.gates[this.gates.length - 1];
            _loc5_;
            _loc5_;
            this.updateLevelBounds();
            this.checkValid();
            this.wormhole_count = this.wormhole_count + 2;
            this.§_-hZ§.§_-IQ§();
         }
      }
      
      public function addSkyMine(param1:int = -1, param2:int = -1) : *
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = false;
         var _loc6_:* = 0;
         _loc9_;
         _loc10_;
         _loc10_;
         _loc10_;
         if(this.skymine_count < Global.§_-AH§)
         {
            _loc9_;
            _loc9_;
            this.§_-I6§.push(new §_-hn§());
            this.§_-Ql§.addChild(this.§_-I6§[this.§_-I6§.length - 1]);
            _loc10_;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc9_;
            _loc10_;
            _loc10_;
            if(param1 == -1 && param2 == -1)
            {
               _loc5_ = false;
               _loc6_ = 0;
               while(true)
               {
                  _loc10_;
                  _loc10_;
                  _loc9_;
                  if(!(!_loc5_ && _loc6_ < 500))
                  {
                     break;
                  }
                  _loc6_++;
                  _loc9_;
                  _loc9_;
                  _loc9_;
                  _loc10_;
                  _loc10_;
                  _loc10_;
                  _loc9_;
                  _loc9_;
                  _loc10_;
                  _loc10_;
                  _loc3_ = 0 - this.screen.x + 400 + _loc6_ * Math.cos(_loc6_);
                  _loc9_;
                  _loc9_;
                  _loc9_;
                  _loc9_;
                  _loc9_;
                  _loc10_;
                  _loc4_ = 0 - this.screen.y + 300 + _loc6_ * Math.sin(_loc6_);
                  _loc10_;
                  _loc5_ = this.§_-AQ§(_loc3_,_loc4_,this.§_-I6§[this.§_-I6§.length - 1].radius);
                  _loc9_;
               }
               if(_loc6_ == 500)
               {
                  _loc10_;
               }
               _loc10_;
               _loc9_;
               _loc10_;
               this.§_-I6§[this.§_-I6§.length - 1].x = _loc3_;
               _loc10_;
               _loc9_;
               _loc9_;
               _loc9_;
               _loc9_;
               _loc9_;
               this.§_-I6§[this.§_-I6§.length - 1].y = _loc4_;
            }
            else
            {
               _loc10_;
               _loc10_;
               _loc9_;
               _loc9_;
               this.§_-I6§[this.§_-I6§.length - 1].x = param1;
               _loc10_;
               _loc10_;
               _loc9_;
               _loc9_;
               _loc10_;
               this.§_-I6§[this.§_-I6§.length - 1].y = param2;
               _loc9_;
               _loc9_;
            }
            this.§_-I6§[this.§_-I6§.length - 1].init();
            this.updateLevelBounds();
            _loc9_;
            _loc9_;
            this.checkValid();
            _loc10_;
            _loc10_;
            this.skymine_count++;
            this.§_-hZ§.§_-IQ§();
         }
      }
      
      public function addUnitMarkers() : *
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
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
         this.units.push(new §_-iF§());
         _loc10_;
         this.§_-le§.addChild(this.units[_loc5_]);
         _loc10_;
         _loc10_;
         _loc9_;
         this.units[_loc5_].teamID = Math.floor(_loc5_ / 6);
         _loc10_;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc10_;
         this.units[_loc5_].order = _loc5_ % 6;
         this.units[_loc5_].updateImage();
         _loc9_;
         _loc6_ = new ColorTransform();
         _loc6_.color = SafeGlobal.teamCols[this.units[_loc5_].teamID];
         _loc9_;
         _loc9_;
         _loc10_;
         _loc9_;
         this.units[_loc5_].col.transform.colorTransform = _loc6_;
         _loc10_;
         _loc7_ = false;
         _loc9_;
         _loc8_ = 0;
         while(true)
         {
            _loc10_;
            _loc10_;
            _loc10_;
            _loc10_;
            !_loc7_ && _loc8_ < 500;
            _loc8_++;
            _loc10_;
            _loc10_;
            _loc1_ = Math.floor(Math.random() * this.planets.length);
            _loc9_;
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
            _loc3_ = this.planets[_loc1_].x + this.planets[_loc1_].radius * Math.cos(_loc2_);
            _loc9_;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc4_ = this.planets[_loc1_].y + this.planets[_loc1_].radius * Math.sin(_loc2_);
            _loc9_;
            _loc9_;
            _loc9_;
            _loc7_ = this.§_-Rz§(this.units[_loc5_],_loc3_,_loc4_);
         }
      }
      
      public function §_-go§(param1:int, param2:int, param3:int) : *
      {
         var _loc8_:* = false;
         var _loc9_:* = true;
         _loc8_;
         _loc8_;
         _loc9_;
         _loc9_;
         this.units.push(new §_-iF§());
         var _loc4_:int = this.units.length - 1;
         _loc8_;
         _loc8_;
         this.§_-le§.addChild(this.units[_loc4_]);
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc9_;
         this.units[_loc4_].teamID = param3;
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
         _loc8_;
         this.units[_loc4_].col.transform.colorTransform = _loc5_;
         var _loc6_:Number = this.planets[param1].x + Math.cos(param2 * Math.PI / 180) * this.planets[param1].radius;
         var _loc7_:Number = this.planets[param1].y + Math.sin(param2 * Math.PI / 180) * this.planets[param1].radius;
         _loc8_;
         this.§_-zW§(this.units[_loc4_],_loc6_,_loc7_);
         _loc9_;
         _loc9_;
         this.units[_loc4_].init();
         _loc9_;
         this.units_placed = true;
         _loc8_;
         this.§_-hZ§.§_-O7§();
      }
      
      public function swapMineType(param1:§_-ZA§, param2:int) : void
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc3_:int = param1.angle;
         var _loc4_:int = param1.planetID;
         var _loc5_:* = 0;
         while(true)
         {
            if(_loc5_ >= this.§_-KM§.length)
            {
               _loc8_;
               _loc8_;
               break;
            }
            _loc9_;
            _loc9_;
            _loc9_;
            _loc9_;
            if(this.§_-KM§[_loc5_] == param1)
            {
               _loc9_;
               this.§_-yN§.removeChild(this.§_-KM§[_loc5_]);
               this.§_-KM§.splice(_loc5_,1);
               _loc8_;
               _loc8_;
               _loc9_;
               _loc9_;
               _loc9_;
               this.mine_count--;
               break;
            }
            _loc5_++;
         }
         this.addMine(param2,_loc4_,_loc3_);
         _loc8_;
         _loc8_;
         this.§_-ZU§(this.§_-KM§[this.§_-KM§.length - 1]);
      }
      
      public function swapShieldType(param1:§_-IU§, param2:int) : void
      {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc3_:int = param1.rotation;
         var _loc4_:Number = param1.x;
         var _loc5_:Number = param1.y;
         var _loc6_:* = 0;
         while(true)
         {
            if(_loc6_ >= this.gates.length)
            {
               _loc10_;
               _loc10_;
               break;
            }
            _loc10_;
            _loc10_;
            if(this.gates[_loc6_] == param1)
            {
               _loc10_;
               _loc10_;
               this.§_-eO§.removeChild(this.gates[_loc6_]);
               this.gates.splice(_loc6_,1);
               _loc10_;
               _loc10_;
               _loc10_;
               _loc9_;
               _loc9_;
               this.shield_count--;
               break;
            }
            _loc6_++;
            _loc10_;
            _loc10_;
         }
         this.addShield(param2,_loc4_,_loc5_,_loc3_);
         this.§_-ZU§(this.gates[this.gates.length - 1]);
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
         _loc11_;
         _loc12_;
         if(this.mine_count < Global.TOTAL_EDITOR_MINES)
         {
            _loc12_;
            _loc11_;
            _loc11_;
            _loc11_;
            if(param1 == SafeGlobal.MINETYPE_STANDARD)
            {
               _loc12_;
               this.§_-KM§.push(new §_-UP§());
               _loc11_;
            }
            else
            {
               _loc11_;
               _loc11_;
               _loc11_;
               if(param1 == SafeGlobal.MINETYPE_DRILL)
               {
                  _loc12_;
                  this.§_-KM§.push(new §_-lF§());
               }
               else
               {
                  _loc11_;
                  _loc11_;
                  if(param1 == SafeGlobal.MINETYPE_CLUSTER)
                  {
                     _loc11_;
                     this.§_-KM§.push(new §_-0-f§());
                     _loc11_;
                     _loc11_;
                  }
               }
            }
            this.§_-yN§.addChild(this.§_-KM§[this.§_-KM§.length - 1]);
            _loc12_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            if(!(param2 == -1) && !(param3 == -1))
            {
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc4_ = this.planets[param2].x + Math.cos(param3 * Math.PI / 180) * this.planets[param2].radius;
               _loc5_ = this.planets[param2].y + Math.sin(param3 * Math.PI / 180) * this.planets[param2].radius;
            }
            else
            {
               _loc6_ = false;
               _loc11_;
               _loc11_;
               _loc7_ = 0;
               while(true)
               {
                  _loc12_;
                  _loc12_;
                  _loc12_;
                  if(!(!_loc6_ && _loc7_ < 500))
                  {
                     break;
                  }
                  _loc7_++;
                  _loc11_;
                  _loc11_;
                  _loc12_;
                  _loc12_;
                  _loc12_;
                  _loc12_;
                  _loc11_;
                  _loc11_;
                  _loc12_;
                  _loc4_ = 0 - this.screen.x + 400 + _loc7_ * Math.cos(_loc7_);
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  _loc12_;
                  _loc12_;
                  _loc5_ = 0 - this.screen.y + 300 + _loc7_ * Math.sin(_loc7_);
                  _loc8_ = this.§_-Sv§(_loc4_,_loc5_);
                  _loc12_;
                  _loc6_ = this.§_-Rz§(this.§_-KM§[this.§_-KM§.length - 1],_loc8_.x,_loc8_.y);
               }
               if(_loc7_ == 500)
               {
                  _loc11_;
                  _loc11_;
               }
            }
            this.§_-zW§(this.§_-KM§[this.§_-KM§.length - 1],_loc4_,_loc5_);
            this.§_-KM§[this.§_-KM§.length - 1].init();
            _loc11_;
            _loc11_;
            _loc12_;
            _loc12_;
            _loc12_;
            this.mine_count++;
            _loc12_;
            this.§_-hZ§.§_-IQ§();
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
         _loc11_;
         _loc10_;
         _loc10_;
         if(this.barrel_count < Global.TOTAL_EDITOR_BARRELS)
         {
            _loc11_;
            _loc11_;
            _loc11_;
            this.barrels.push(new §_-lf§());
            this.§_-yN§.addChild(this.barrels[this.barrels.length - 1]);
            _loc10_;
            _loc10_;
            _loc11_;
            _loc10_;
            _loc11_;
            _loc11_;
            if(!(param1 == -1) && !(param2 == -1))
            {
               _loc10_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc10_;
               _loc3_ = this.planets[param1].x + Math.cos(param2 * Math.PI / 180) * this.planets[param1].radius;
               _loc10_;
               _loc10_;
               _loc4_ = this.planets[param1].y + Math.sin(param2 * Math.PI / 180) * this.planets[param1].radius;
            }
            else
            {
               _loc6_ = false;
               _loc11_;
               _loc7_ = 0;
               while(true)
               {
                  _loc11_;
                  _loc11_;
                  if(!(!_loc6_ && _loc7_ < 500))
                  {
                     break;
                  }
                  _loc7_++;
                  _loc10_;
                  _loc10_;
                  _loc10_;
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  _loc10_;
                  _loc10_;
                  _loc3_ = 0 - this.screen.x + 400 + _loc7_ * Math.cos(_loc7_);
                  _loc10_;
                  _loc10_;
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  _loc4_ = 0 - this.screen.y + 300 + _loc7_ * Math.sin(_loc7_);
                  _loc5_ = this.§_-Sv§(_loc3_,_loc4_);
                  _loc10_;
                  _loc10_;
                  _loc6_ = this.§_-Rz§(this.barrels[this.barrels.length - 1],_loc5_.x,_loc5_.y);
               }
               if(_loc7_ == 500)
               {
               }
            }
            this.§_-zW§(this.barrels[this.barrels.length - 1],_loc3_,_loc4_);
            _loc10_;
            this.barrels[this.barrels.length - 1].init();
            _loc11_;
            _loc11_;
            _loc11_;
            this.barrel_count++;
            this.§_-hZ§.§_-IQ§();
         }
      }
      
      public function startDragging(param1:EditorObject) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.dragging = param1;
         _loc2_;
         _loc2_;
         _loc3_;
         this.dragging.§_-mD§.x = param1.mouseX;
         _loc3_;
         this.dragging.§_-mD§.y = param1.mouseY;
         this.dragging.§_-Ax§();
         this.§_-ZU§();
         this.showLines(this.dragging);
         _loc3_;
         stage.addEventListener(MouseEvent.MOUSE_UP,this.§_-cT§,false,0,true);
      }
      
      public function §_-cT§(param1:MouseEvent = null) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         this.dragging.§_-bU§();
         _loc2_;
         this.dragging.init();
         _loc2_;
         this.hideLines();
         this.dragging.§_-et§();
         if(getTimer() - this.dragging.§_-s5§ < this.§_-nN§)
         {
            _loc2_;
            this.§_-ZU§(this.dragging);
         }
         this.dragging = null;
         _loc2_;
         if(param1)
         {
            stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-cT§);
         }
      }
      
      public function showLines(param1:EditorObject) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         _loc4_;
         _loc4_;
         this.§_-JP§();
         _loc4_;
         this.§_-a3§.graphics.clear();
         _loc4_;
         if(param1 is PlanetObject)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc2_ = this.planets.indexOf(param1);
            _loc5_;
            _loc5_;
            _loc3_ = 0;
            while(true)
            {
               _loc5_;
               _loc5_;
               if(_loc3_ >= this.planets.length)
               {
                  break;
               }
               if(_loc2_ != _loc3_)
               {
                  this.§_-VZ§(_loc2_,_loc3_);
               }
               _loc3_++;
            }
            this.§_-1l§();
            _loc5_;
            param1.§_-3K§();
            _loc4_;
         }
         else
         {
            _loc5_;
            if(param1 is §_-ZA§)
            {
               _loc4_;
               _loc2_ = this.§_-KM§.indexOf(param1);
               this.§_-wb§(_loc2_,this.§_-KM§[_loc2_].planetID);
            }
            else if(param1 is §_-lf§)
            {
               _loc5_;
               _loc4_;
               _loc5_;
               _loc2_ = this.barrels.indexOf(param1);
               this.§_-eu§(_loc2_,this.barrels[_loc2_].planetID);
            }
            else if(param1 is §_-iF§)
            {
               _loc5_;
               _loc5_;
               _loc2_ = this.units.indexOf(param1);
               this.§_-Ki§(_loc2_,this.units[_loc2_].planetID);
               _loc5_;
            }
            else
            {
               _loc4_;
               _loc5_;
               if(param1 is §_-zO§ || param1 is §_-ch§ || param1 is §_-5N§)
               {
                  _loc4_;
                  _loc4_;
                  _loc5_;
                  _loc2_ = this.gates.indexOf(param1);
                  this.§_-mQ§(_loc2_);
               }
               else if(param1 is §_-hn§)
               {
                  _loc2_ = this.§_-I6§.indexOf(param1);
                  this.§_-8M§(_loc2_);
                  _loc5_;
                  this.§_-1l§();
               }
               
            }
            
            
         }
      }
      
      public function §_-VZ§(param1:int, param2:int) : *
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
         _loc15_;
         _loc15_;
         if(param1 != param2)
         {
            _loc15_;
            _loc16_;
            _loc16_;
            _loc3_ = this.planets[param2].x - this.planets[param1].x;
            _loc16_;
            _loc15_;
            _loc4_ = this.planets[param2].y - this.planets[param1].y;
            _loc16_;
            _loc16_;
            _loc15_;
            _loc15_;
            _loc5_ = Math.ceil(Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_));
            if((Math.ceil(Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_))) > this.planets[param1].radius + this.planets[param2].radius + 100)
            {
               _loc15_;
               _loc6_ = Math.atan2(_loc4_,_loc3_);
               _loc15_;
               _loc15_;
               _loc15_;
               _loc7_ = int(_loc6_ * 180 / Math.PI);
               _loc16_;
               _loc16_;
               _loc16_;
               _loc15_;
               _loc15_;
               _loc8_ = (this.planets[param1].x + this.planets[param2].x) / 2;
               _loc16_;
               _loc16_;
               _loc9_ = (this.planets[param1].y + this.planets[param2].y) / 2;
               _loc15_;
               _loc15_;
               this.§_-gX§.push(new §_-ua§());
               _loc16_;
               _loc16_;
               _loc15_;
               this.§_-gX§[this.§_-gX§.length - 1].x = _loc8_;
               _loc15_;
               _loc16_;
               this.§_-gX§[this.§_-gX§.length - 1].y = _loc9_;
               _loc16_;
               _loc16_;
               _loc16_;
               _loc16_;
               _loc16_;
               _loc16_;
               if(_loc7_ >= -180 && _loc7_ < -90 || _loc7_ > 90 && _loc7_ <= 180)
               {
                  _loc16_;
                  _loc16_;
                  _loc16_;
                  this.§_-gX§[this.§_-gX§.length - 1].rotation = _loc7_ - 180;
               }
               else
               {
                  _loc15_;
                  _loc15_;
                  this.§_-gX§[this.§_-gX§.length - 1].rotation = _loc7_;
               }
               this.§_-e-§.addChild(this.§_-gX§[this.§_-gX§.length - 1]);
               _loc15_;
               _loc15_;
               _loc15_;
               this.§_-gX§[this.§_-gX§.length - 1].num.text = _loc5_.toString();
               _loc16_;
               _loc15_;
               _loc15_;
               _loc10_ = this.planets[param1].x + Math.cos(_loc6_) * this.planets[param1].radius;
               _loc15_;
               _loc15_;
               _loc11_ = this.planets[param1].y + Math.sin(_loc6_) * this.planets[param1].radius;
               _loc15_;
               _loc16_;
               _loc16_;
               _loc12_ = this.planets[param2].x + Math.cos(_loc6_ - Math.PI) * this.planets[param2].radius;
               _loc15_;
               _loc15_;
               _loc13_ = this.planets[param2].y + Math.sin(_loc6_ - Math.PI) * this.planets[param2].radius;
               _loc15_;
               this.§_-gX§.push(new §_-oQ§());
               _loc15_;
               _loc15_;
               _loc15_;
               _loc15_;
               _loc16_;
               this.§_-gX§[this.§_-gX§.length - 1].x = _loc10_;
               _loc15_;
               _loc15_;
               this.§_-gX§[this.§_-gX§.length - 1].y = _loc11_;
               _loc15_;
               _loc15_;
               _loc14_ = Math.round(_loc6_ * 180 / Math.PI) + 90;
               _loc15_;
               _loc15_;
               this.§_-gX§[this.§_-gX§.length - 1].num.text = (_loc14_ < 0?_loc14_ + 360:_loc14_).toString();
               this.§_-e-§.addChild(this.§_-gX§[this.§_-gX§.length - 1]);
               _loc15_;
               _loc15_;
               this.§_-a3§.graphics.lineStyle(2,16777215,1);
               this.§_-a3§.graphics.moveTo(_loc10_,_loc11_);
               this.§_-a3§.graphics.lineTo(_loc12_,_loc13_);
            }
         }
      }
      
      public function §_-8M§(param1:int) : *
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
         var _loc2_:* = 0;
         while(_loc2_ < this.§_-I6§.length)
         {
            _loc15_;
            _loc16_;
            _loc16_;
            if(_loc2_ != param1)
            {
               _loc15_;
               _loc3_ = this.§_-I6§[_loc2_].x - this.§_-I6§[param1].x;
               _loc15_;
               _loc15_;
               _loc4_ = this.§_-I6§[_loc2_].y - this.§_-I6§[param1].y;
               _loc15_;
               _loc15_;
               _loc16_;
               _loc16_;
               _loc5_ = Math.ceil(Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_));
               _loc16_;
               _loc16_;
               if((Math.ceil(Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_))) > this.§_-I6§[_loc2_].radius + this.§_-I6§[param1].radius + 10)
               {
                  _loc15_;
                  _loc15_;
                  _loc6_ = Math.atan2(_loc4_,_loc3_);
                  _loc16_;
                  _loc16_;
                  _loc7_ = int(_loc6_ * 180 / Math.PI);
                  _loc16_;
                  _loc16_;
                  _loc8_ = (this.§_-I6§[param1].x + this.§_-I6§[_loc2_].x) / 2;
                  _loc16_;
                  _loc15_;
                  _loc15_;
                  _loc9_ = (this.§_-I6§[param1].y + this.§_-I6§[_loc2_].y) / 2;
                  this.§_-gX§.push(new §_-ua§());
                  _loc15_;
                  this.§_-gX§[this.§_-gX§.length - 1].x = _loc8_;
                  this.§_-gX§[this.§_-gX§.length - 1].y = _loc9_;
                  _loc16_;
                  _loc16_;
                  _loc16_;
                  _loc16_;
                  _loc15_;
                  _loc16_;
                  _loc16_;
                  if(_loc7_ >= -180 && _loc7_ < -90 || _loc7_ > 90 && _loc7_ <= 180)
                  {
                     _loc15_;
                     _loc15_;
                     _loc15_;
                     this.§_-gX§[this.§_-gX§.length - 1].rotation = _loc7_ - 180;
                  }
                  else
                  {
                     _loc15_;
                     _loc16_;
                     _loc16_;
                     this.§_-gX§[this.§_-gX§.length - 1].rotation = _loc7_;
                  }
                  this.§_-e-§.addChild(this.§_-gX§[this.§_-gX§.length - 1]);
                  _loc16_;
                  this.§_-gX§[this.§_-gX§.length - 1].num.text = _loc5_.toString();
                  _loc15_;
                  _loc15_;
                  _loc16_;
                  _loc15_;
                  _loc16_;
                  _loc16_;
                  _loc10_ = this.§_-I6§[param1].x + Math.cos(_loc6_) * this.§_-I6§[param1].radius;
                  _loc16_;
                  _loc16_;
                  _loc16_;
                  _loc11_ = this.§_-I6§[param1].y + Math.sin(_loc6_) * this.§_-I6§[param1].radius;
                  _loc16_;
                  _loc12_ = this.§_-I6§[_loc2_].x + Math.cos(_loc6_ - Math.PI) * this.§_-I6§[_loc2_].radius;
                  _loc15_;
                  _loc13_ = this.§_-I6§[_loc2_].y + Math.sin(_loc6_ - Math.PI) * this.§_-I6§[_loc2_].radius;
                  _loc16_;
                  this.§_-gX§.push(new §_-oQ§());
                  _loc15_;
                  _loc16_;
                  this.§_-gX§[this.§_-gX§.length - 1].x = _loc10_;
                  this.§_-gX§[this.§_-gX§.length - 1].y = _loc11_;
                  _loc16_;
                  _loc14_ = Math.round(_loc6_ * 180 / Math.PI) + 90;
                  _loc16_;
                  _loc16_;
                  this.§_-gX§[this.§_-gX§.length - 1].num.text = (_loc14_ < 0?_loc14_ + 360:_loc14_).toString();
                  this.§_-e-§.addChild(this.§_-gX§[this.§_-gX§.length - 1]);
                  _loc15_;
                  this.§_-a3§.graphics.lineStyle(2,16777215,1);
                  this.§_-a3§.graphics.moveTo(_loc10_,_loc11_);
                  this.§_-a3§.graphics.lineTo(_loc12_,_loc13_);
                  _loc16_;
               }
            }
            _loc2_++;
         }
      }
      
      public function comeBack() : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         if(this.screen.x < -650)
         {
            _loc3_;
            _loc3_;
            _loc1_ = this.screen.x + 650;
            _loc3_;
            this.screen.x = -650;
         }
         else if(this.screen.x > 100)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc1_ = this.screen.x - 100;
            this.screen.x = 100;
            _loc3_;
            _loc3_;
         }
         
         if(this.screen.y < -700)
         {
            _loc4_;
            _loc2_ = this.screen.y + 700;
            this.screen.y = -700;
            _loc3_;
            _loc3_;
         }
         else if(this.screen.y > 100)
         {
            _loc3_;
            _loc4_;
            _loc4_;
            _loc2_ = this.screen.y - 100;
            this.screen.y = 100;
         }
         
         _loc3_;
         _loc3_;
         SafeGlobal.TIMELINE.timeline.starMap.ignoreNext = true;
         _loc3_;
         _loc3_;
         SafeGlobal.TIMELINE.timeline.starMap.moveTo(0,0);
         _loc3_;
         _loc3_;
         SafeGlobal.TIMELINE.timeline.starMap.ignoreNext = false;
         _loc3_;
         SafeGlobal.TIMELINE.timeline.starMap.moveTo(0 - _loc1_,0 - _loc2_);
         this.§_-8B§();
      }
      
      public function §_-wb§(param1:int, param2:int) : *
      {
         var _loc8_:* = false;
         var _loc9_:* = true;
         _loc9_;
         this.§_-a3§.graphics.lineStyle(2,16777215,1);
         _loc9_;
         this.§_-a3§.graphics.moveTo(this.§_-KM§[param1].x,this.§_-KM§[param1].y);
         _loc8_;
         _loc8_;
         this.§_-a3§.graphics.lineTo(this.planets[param2].x,this.planets[param2].y);
         _loc8_;
         _loc8_;
         _loc9_;
         this.§_-gX§.push(new §_-oQ§());
         _loc8_;
         var _loc3_:Number = this.§_-KM§[param1].x - this.planets[param2].x;
         _loc9_;
         _loc9_;
         var _loc4_:Number = this.§_-KM§[param1].y - this.planets[param2].y;
         var _loc5_:Number = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
         var _loc6_:Number = Math.atan2(_loc4_,_loc3_);
         _loc9_;
         _loc9_;
         _loc9_;
         _loc9_;
         _loc8_;
         _loc9_;
         _loc9_;
         this.§_-gX§[this.§_-gX§.length - 1].x = this.§_-KM§[param1].x;
         _loc8_;
         _loc8_;
         this.§_-gX§[this.§_-gX§.length - 1].y = this.§_-KM§[param1].y;
         var _loc7_:int = Math.round(_loc6_ * 180 / Math.PI) + 90;
         _loc8_;
         this.§_-gX§[this.§_-gX§.length - 1].num.text = (_loc7_ < 0?_loc7_ + 360:_loc7_).toString();
         _loc9_;
         this.§_-e-§.addChild(this.§_-gX§[this.§_-gX§.length - 1]);
      }
      
      public function §_-eu§(param1:int, param2:int) : *
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         _loc9_;
         _loc9_;
         this.§_-a3§.graphics.lineStyle(2,16777215,1);
         _loc9_;
         this.§_-a3§.graphics.moveTo(this.barrels[param1].x,this.barrels[param1].y);
         _loc9_;
         this.§_-a3§.graphics.lineTo(this.planets[param2].x,this.planets[param2].y);
         _loc9_;
         _loc9_;
         this.§_-gX§.push(new §_-oQ§());
         _loc8_;
         var _loc3_:Number = this.barrels[param1].x - this.planets[param2].x;
         _loc8_;
         var _loc4_:Number = this.barrels[param1].y - this.planets[param2].y;
         var _loc5_:Number = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
         var _loc6_:Number = Math.atan2(_loc4_,_loc3_);
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc9_;
         _loc9_;
         this.§_-gX§[this.§_-gX§.length - 1].x = this.barrels[param1].x;
         _loc9_;
         this.§_-gX§[this.§_-gX§.length - 1].y = this.barrels[param1].y;
         var _loc7_:int = Math.round(_loc6_ * 180 / Math.PI) + 90;
         _loc8_;
         _loc8_;
         this.§_-gX§[this.§_-gX§.length - 1].num.text = (_loc7_ < 0?_loc7_ + 360:_loc7_).toString();
         _loc8_;
         this.§_-e-§.addChild(this.§_-gX§[this.§_-gX§.length - 1]);
      }
      
      public function §_-Ki§(param1:int, param2:int) : *
      {
         var _loc8_:* = false;
         var _loc9_:* = true;
         _loc8_;
         _loc8_;
         this.§_-a3§.graphics.lineStyle(2,16777215,1);
         _loc9_;
         this.§_-a3§.graphics.moveTo(this.units[param1].x,this.units[param1].y);
         _loc9_;
         _loc9_;
         this.§_-a3§.graphics.lineTo(this.planets[param2].x,this.planets[param2].y);
         _loc9_;
         _loc9_;
         _loc8_;
         this.§_-gX§.push(new §_-oQ§());
         _loc8_;
         var _loc3_:Number = this.units[param1].x - this.planets[param2].x;
         _loc8_;
         var _loc4_:Number = this.units[param1].y - this.planets[param2].y;
         var _loc5_:Number = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
         var _loc6_:Number = Math.atan2(_loc4_,_loc3_);
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc9_;
         this.§_-gX§[this.§_-gX§.length - 1].x = this.units[param1].x;
         _loc9_;
         _loc9_;
         this.§_-gX§[this.§_-gX§.length - 1].y = this.units[param1].y;
         var _loc7_:int = Math.round(_loc6_ * 180 / Math.PI) + 90;
         _loc9_;
         _loc9_;
         this.§_-gX§[this.§_-gX§.length - 1].num.text = (_loc7_ < 0?_loc7_ + 360:_loc7_).toString();
         _loc8_;
         this.§_-e-§.addChild(this.§_-gX§[this.§_-gX§.length - 1]);
      }
      
      public function §_-mQ§(param1:int) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc2_;
         this.§_-gX§.push(new §_-oQ§());
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-gX§[this.§_-gX§.length - 1].x = this.gates[param1].x;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         this.§_-gX§[this.§_-gX§.length - 1].y = this.gates[param1].y;
         _loc2_;
         this.§_-gX§[this.§_-gX§.length - 1].num.text = (this.gates[param1].rotation < 0?this.gates[param1].rotation + 360:this.gates[param1].rotation).toString();
         _loc2_;
         this.§_-e-§.addChild(this.§_-gX§[this.§_-gX§.length - 1]);
      }
      
      public function hideLines() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.§_-a3§.graphics.clear();
         _loc2_;
         _loc2_;
         this.§_-yh§();
         _loc2_;
         this.§_-JP§();
      }
      
      public function catchSliderRelease(param1:*) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-6b§ = param1;
         _loc3_;
         _loc3_;
         stage.addEventListener(MouseEvent.MOUSE_UP,this.§_-Nr§,false,0,true);
      }
      
      public function §_-Nr§(param1:MouseEvent) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-Nr§);
         _loc2_;
         this.§_-6b§.dragStop();
         _loc2_;
         this.§_-6b§ = null;
      }
      
      public function §_-JP§() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:int = this.§_-gX§.length - 1;
         while(_loc1_ >= 0)
         {
            this.§_-e-§.removeChild(this.§_-gX§[_loc1_]);
            _loc2_;
            _loc2_;
            this.§_-gX§.splice(_loc1_,1);
            _loc2_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc1_--;
            _loc3_;
         }
      }
      
      public function §_-ZU§(param1:EditorObject = null) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         if(param1)
         {
            _loc3_;
            _loc3_;
            if(this.selected)
            {
               _loc3_;
               _loc3_;
               _loc2_;
               _loc2_;
               this.selected.§_-yM§();
            }
            this.selected = param1;
            _loc3_;
            _loc3_;
            this.selected.§_-X2§();
            this.showLines(this.selected);
            _loc2_;
            _loc3_;
            _loc3_;
            this.§_-hZ§.§_-0-b§(param1);
         }
         else
         {
            _loc2_;
            if(this.selected)
            {
               _loc2_;
               _loc2_;
               this.selected.§_-yM§();
               _loc2_;
               _loc2_;
               this.selected.§_-et§();
               _loc3_;
               _loc3_;
            }
            this.selected = null;
            this.hideLines();
            _loc3_;
            _loc3_;
            this.§_-hZ§.§_-Ty§();
         }
      }
      
      public function exitLevel() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.§_-2o§ = false;
         _loc1_;
         this.§_-hZ§.tweenOff();
      }
      
      public function saveLevel() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-2o§ = true;
         _loc2_;
         _loc2_;
         var _loc1_:String = this.§_-Dy§();
         _loc3_;
         Global.lobby_client.submitLevel(_loc1_);
         _loc3_;
         _loc3_;
         this.§_-hZ§.tweenOff();
      }
      
      public function §_-Dy§() : String
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
            _loc11_;
            if(_loc4_ >= this.planets.length)
            {
               break;
            }
            _loc11_;
            _loc11_;
            _loc11_;
            _loc12_;
            _loc12_;
            if(!this.planets[_loc4_].sun && !this.planets[_loc4_].blackHole)
            {
               _loc11_;
               _loc11_;
               _loc12_;
               _loc12_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
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
               _loc11_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               if(this.planets[_loc4_].shield)
               {
                  _loc11_;
                  _loc12_;
               }
               if(this.planets[_loc4_].shield)
               {
                  _loc12_;
                  _loc12_;
                  _loc2_ = "p," + int(this.planets[_loc4_].x) + "," + int(this.planets[_loc4_].y) + "," + this.planets[_loc4_].radius + "," + this.planets[_loc4_].gfxID + "," + this.planets[_loc4_].radioactiveValue + "," + 1;
               }
               else
               {
                  _loc12_;
                  _loc12_;
                  _loc2_ = "p," + int(this.planets[_loc4_].x) + "," + int(this.planets[_loc4_].y) + "," + this.planets[_loc4_].radius + "," + this.planets[_loc4_].gfxID + "," + this.planets[_loc4_].radioactiveValue + "," + 0;
               }
            }
            else
            {
               _loc12_;
               _loc12_;
               _loc11_;
               if(this.planets[_loc4_].sun)
               {
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  _loc12_;
                  _loc11_;
                  _loc11_;
                  _loc12_;
                  _loc12_;
                  _loc11_;
                  _loc11_;
                  _loc12_;
                  _loc12_;
                  _loc11_;
                  _loc2_ = "s," + int(this.planets[_loc4_].x) + "," + int(this.planets[_loc4_].y) + "," + this.planets[_loc4_].radius;
                  _loc11_;
               }
               else if(this.planets[_loc4_].blackHole)
               {
                  _loc12_;
                  _loc12_;
                  _loc12_;
                  _loc12_;
                  _loc2_ = "h," + int(this.planets[_loc4_].x) + "," + int(this.planets[_loc4_].y) + "," + this.planets[_loc4_].radius;
               }
               
            }
            if(!this.planets[_loc4_].sun && !this.planets[_loc4_].blackHole)
            {
               _loc3_.push(_loc2_);
               _loc12_;
               _loc4_++;
            }
            else
            {
               _loc3_.push(_loc2_);
               _loc12_;
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
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc12_;
            _loc12_;
            _loc11_;
            _loc12_;
            _loc11_;
            _loc2_ = "u," + this.units[_loc5_].planetID + "," + this.units[_loc5_].angle + "," + this.units[_loc5_].teamID;
            _loc11_;
            _loc11_;
            _loc3_.push(_loc2_);
            _loc11_;
            _loc11_;
            _loc5_++;
            _loc12_;
         }
         var _loc6_:* = 0;
         while(true)
         {
            _loc12_;
            _loc12_;
            if(_loc6_ >= this.gates.length)
            {
               break;
            }
            _loc12_;
            _loc12_;
            _loc11_;
            _loc11_;
            _loc12_;
            _loc10_ = this.gates[_loc6_].rotation;
            _loc12_;
            _loc11_;
            if((this.gates[_loc6_].rotation) < 0)
            {
               _loc12_;
               _loc12_;
               _loc11_;
               _loc11_;
               _loc10_ = _loc10_ + 360;
               _loc11_;
            }
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc2_ = "g," + this.gates[_loc6_].x + "," + this.gates[_loc6_].y + "," + _loc10_ + ",";
            _loc11_;
            _loc11_;
            _loc11_;
            _loc12_;
            if(this.gates[_loc6_] is §_-5N§)
            {
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc12_;
               _loc12_;
               _loc2_ = _loc2_ + SafeGlobal.GATETYPE_WORMHOLE;
               _loc12_;
               _loc12_;
            }
            else
            {
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc12_;
               if(this.gates[_loc6_] is §_-zO§)
               {
                  _loc11_;
                  _loc11_;
                  _loc12_;
                  _loc11_;
                  _loc11_;
                  _loc2_ = _loc2_ + SafeGlobal.GATETYPE_SHIELD;
                  _loc12_;
                  _loc12_;
               }
               else if(this.gates[_loc6_] is §_-ch§)
               {
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  _loc2_ = _loc2_ + SafeGlobal.GATETYPE_DISSOLVESHIELD;
               }
               
            }
            _loc3_.push(_loc2_);
            _loc6_++;
         }
         var _loc7_:* = 0;
         _loc11_;
         while(true)
         {
            _loc12_;
            if(_loc7_ >= this.§_-KM§.length)
            {
               break;
            }
            _loc11_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc11_;
            _loc11_;
            _loc11_;
            if(this.§_-KM§[_loc7_].angle < 0)
            {
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
            }
            else
            {
               _loc11_;
               _loc11_;
               _loc11_;
            }
            if(this.§_-KM§[_loc7_].angle < 0)
            {
               _loc2_ = "m," + this.§_-KM§[_loc7_].planetID + "," + (this.§_-KM§[_loc7_].angle + 360) + "," + this.§_-KM§[_loc7_].mineType;
               _loc11_;
               _loc11_;
               _loc3_.push(_loc2_);
               _loc11_;
               _loc7_++;
               _loc11_;
               _loc11_;
            }
            else
            {
               _loc2_ = "m," + this.§_-KM§[_loc7_].planetID + "," + this.§_-KM§[_loc7_].angle + "," + this.§_-KM§[_loc7_].mineType;
               _loc11_;
               _loc11_;
               _loc3_.push(_loc2_);
               _loc11_;
               _loc7_++;
               _loc11_;
               _loc11_;
            }
         }
         var _loc8_:* = 0;
         _loc11_;
         _loc11_;
         while(true)
         {
            _loc11_;
            if(_loc8_ >= this.barrels.length)
            {
               break;
            }
            _loc12_;
            _loc12_;
            _loc11_;
            _loc11_;
            _loc12_;
            _loc11_;
            _loc11_;
            _loc12_;
            _loc11_;
            if(this.barrels[_loc8_].angle < 0)
            {
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc11_;
               _loc11_;
            }
            if(this.barrels[_loc8_].angle < 0)
            {
               _loc2_ = "b," + this.barrels[_loc8_].planetID + "," + (this.barrels[_loc8_].angle + 360);
               _loc11_;
               _loc11_;
               _loc3_.push(_loc2_);
               _loc12_;
               _loc8_++;
               _loc11_;
            }
            else
            {
               _loc2_ = "b," + this.barrels[_loc8_].planetID + "," + this.barrels[_loc8_].angle;
               _loc11_;
               _loc11_;
               _loc3_.push(_loc2_);
               _loc12_;
               _loc8_++;
               _loc11_;
            }
         }
         var _loc9_:* = 0;
         _loc11_;
         _loc11_;
         while(_loc9_ < this.§_-I6§.length)
         {
            _loc12_;
            _loc12_;
            _loc2_ = String("k," + this.§_-I6§[_loc9_].x + "," + this.§_-I6§[_loc9_].y);
            _loc11_;
            _loc11_;
            _loc3_.push(_loc2_);
            _loc11_;
            _loc9_++;
            _loc12_;
            _loc12_;
         }
         _loc12_;
         _loc12_;
         _loc11_;
         _loc11_;
         _loc1_ = _loc3_.join("|");
         return _loc1_;
      }
      
      public function §_-1l§() : *
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
            _loc3_;
            _loc3_;
            this.planets[_loc1_].boundsSprite.graphics.clear();
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            this.planets[_loc1_].boundsSprite.graphics.lineStyle(1,16777215,1);
            _loc3_;
            _loc3_;
            this.planets[_loc1_].boundsSprite.graphics.drawCircle(0,0,this.planets[_loc1_].radius + 50);
            _loc3_;
            _loc1_++;
            _loc3_;
            _loc3_;
         }
         var _loc2_:* = 0;
         _loc4_;
         while(_loc2_ < this.§_-I6§.length)
         {
            _loc3_;
            _loc4_;
            this.§_-I6§[_loc2_].boundsSprite.graphics.clear();
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            this.§_-I6§[_loc2_].boundsSprite.graphics.lineStyle(1,16777215,1);
            _loc4_;
            _loc4_;
            this.§_-I6§[_loc2_].boundsSprite.graphics.drawCircle(0,0,this.§_-I6§[_loc2_].radius + 10);
            _loc4_;
            _loc2_++;
            _loc4_;
         }
      }
      
      public function §_-yh§() : *
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
            this.planets[_loc1_].boundsSprite.graphics.clear();
            _loc3_;
            _loc3_;
            _loc1_++;
            _loc4_;
         }
         var _loc2_:* = 0;
         _loc3_;
         while(_loc2_ < this.§_-I6§.length)
         {
            this.§_-I6§[_loc2_].boundsSprite.graphics.clear();
            _loc4_;
            _loc2_++;
            _loc4_;
            _loc4_;
         }
      }
      
      public function §_-nQ§(param1:Number, param2:Number, param3:Number) : *
      {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         _loc11_;
         _loc11_;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc4_ = param1 - this.§_-gS§;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc10_;
         _loc10_;
         _loc5_ = param2 - this.§_-gS§;
         _loc10_;
         _loc10_;
         _loc11_;
         _loc11_;
         _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         if((Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) > this.§_-gS§ - param3)
         {
            _loc10_;
            return false;
         }
         var _loc7_:* = 0;
         while(true)
         {
            _loc11_;
            if(_loc7_ >= this.planets.length)
            {
               break;
            }
            _loc10_;
            _loc10_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc10_;
            _loc4_ = this.planets[_loc7_].x - param1;
            _loc11_;
            _loc10_;
            _loc11_;
            _loc11_;
            _loc5_ = this.planets[_loc7_].y - param2;
            _loc11_;
            _loc11_;
            _loc10_;
            _loc10_;
            _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            if(_loc6_ < this.planets[_loc7_].radius + param3 + 102)
            {
               _loc10_;
               _loc10_;
               return false;
            }
            _loc7_++;
            _loc11_;
            _loc11_;
         }
         var _loc8_:* = 0;
         _loc11_;
         _loc11_;
         while(true)
         {
            _loc10_;
            _loc10_;
            if(_loc8_ >= this.§_-I6§.length)
            {
               break;
            }
            _loc10_;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc11_;
            _loc11_;
            _loc10_;
            _loc4_ = this.§_-I6§[_loc8_].x - param1;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc5_ = this.§_-I6§[_loc8_].y - param2;
            _loc11_;
            _loc11_;
            _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            if(_loc6_ < this.§_-I6§[_loc8_].radius + param3 + 62)
            {
               return false;
            }
            _loc8_++;
            _loc11_;
         }
         var _loc9_:* = 0;
         while(_loc9_ < this.gates.length)
         {
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc4_ = this.gates[_loc9_].x - param1;
            _loc11_;
            _loc11_;
            _loc5_ = this.gates[_loc9_].y - param2;
            _loc11_;
            _loc11_;
            _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            if(_loc6_ < this.gates[_loc9_].radius + param3 + 62)
            {
               _loc11_;
               return false;
            }
            _loc9_++;
            _loc11_;
            _loc11_;
         }
         return true;
      }
      
      public function §_-Rz§(param1:EditorObject, param2:Number, param3:Number) : *
      {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = 0;
         while(true)
         {
            _loc11_;
            if(_loc7_ >= this.§_-KM§.length)
            {
               break;
            }
            _loc11_;
            if(param1 is §_-iF§)
            {
               _loc11_;
               _loc11_;
               _loc10_;
               _loc11_;
               _loc4_ = this.§_-KM§[_loc7_].x - param2;
               _loc11_;
               _loc11_;
               _loc5_ = this.§_-KM§[_loc7_].y - param3;
               _loc11_;
               _loc11_;
               _loc10_;
               _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               _loc11_;
               _loc11_;
               if((Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) < this.§_-js§)
               {
                  _loc10_;
                  return false;
               }
            }
            _loc10_;
            if(param1 is §_-ZA§)
            {
               _loc11_;
               _loc11_;
               _loc4_ = this.§_-KM§[_loc7_].x - param2;
               _loc10_;
               _loc11_;
               _loc5_ = this.§_-KM§[_loc7_].y - param3;
               _loc10_;
               _loc11_;
               _loc11_;
               _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               _loc11_;
               if((Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) < this.§_-bx§ && !(this.§_-KM§[_loc7_] == param1))
               {
                  _loc10_;
                  _loc11_;
                  _loc11_;
                  return false;
               }
            }
            if(param1 is §_-lf§)
            {
               _loc11_;
               _loc10_;
               _loc10_;
               _loc4_ = this.§_-KM§[_loc7_].x - param2;
               _loc5_ = this.§_-KM§[_loc7_].y - param3;
               _loc11_;
               _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               if((Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) < this.§_-LY§)
               {
                  _loc11_;
                  _loc11_;
                  return false;
               }
            }
            _loc7_++;
            _loc11_;
            _loc11_;
         }
         var _loc8_:* = 0;
         _loc10_;
         while(true)
         {
            _loc11_;
            _loc11_;
            if(_loc8_ >= this.units.length)
            {
               break;
            }
            if(param1 is §_-iF§)
            {
               _loc10_;
               _loc11_;
               _loc10_;
               _loc10_;
               _loc4_ = this.units[_loc8_].x - param2;
               _loc11_;
               _loc10_;
               _loc10_;
               _loc5_ = this.units[_loc8_].y - param3;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               _loc10_;
               _loc10_;
               if((Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) < this.§_-ja§ && !(this.units[_loc8_] == param1))
               {
                  _loc10_;
                  _loc10_;
                  return false;
               }
            }
            _loc10_;
            if(param1 is §_-ZA§)
            {
               _loc11_;
               _loc11_;
               _loc11_;
               _loc4_ = this.units[_loc8_].x - param2;
               _loc10_;
               _loc5_ = this.units[_loc8_].y - param3;
               _loc11_;
               _loc11_;
               _loc10_;
               _loc10_;
               _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               _loc11_;
               if((Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) < this.§_-js§)
               {
                  return false;
               }
            }
            _loc10_;
            _loc10_;
            if(param1 is §_-lf§)
            {
               _loc4_ = this.units[_loc8_].x - param2;
               _loc10_;
               _loc5_ = this.units[_loc8_].y - param3;
               _loc11_;
               _loc11_;
               _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               if((Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) < this.§case §)
               {
                  return false;
               }
            }
            _loc8_++;
            _loc10_;
            _loc10_;
         }
         var _loc9_:* = 0;
         while(_loc9_ < this.barrels.length)
         {
            if(param1 is §_-iF§)
            {
               _loc10_;
               _loc4_ = this.barrels[_loc9_].x - param2;
               _loc10_;
               _loc10_;
               _loc11_;
               _loc11_;
               _loc5_ = this.barrels[_loc9_].y - param3;
               _loc10_;
               _loc10_;
               _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               _loc10_;
               if((Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) < this.§case §)
               {
                  _loc10_;
                  return false;
               }
            }
            if(param1 is §_-ZA§)
            {
               _loc4_ = this.barrels[_loc9_].x - param2;
               _loc10_;
               _loc11_;
               _loc11_;
               _loc10_;
               _loc10_;
               _loc5_ = this.barrels[_loc9_].y - param3;
               _loc11_;
               _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               _loc10_;
               if((Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) < this.§case §)
               {
                  _loc11_;
                  _loc11_;
                  _loc10_;
                  return false;
               }
            }
            if(param1 is §_-lf§ && !(this.barrels[_loc9_] == param1))
            {
               _loc11_;
               _loc11_;
               _loc10_;
               _loc10_;
               _loc11_;
               _loc11_;
               _loc4_ = this.barrels[_loc9_].x - param2;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc5_ = this.barrels[_loc9_].y - param3;
               _loc10_;
               _loc10_;
               _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               if((Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) < this.§_-t5§)
               {
                  return false;
               }
            }
            _loc9_++;
         }
         return true;
      }
      
      public function §_-AQ§(param1:Number, param2:Number, param3:Number) : *
      {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc4_ = param1 - this.§_-gS§;
         _loc10_;
         _loc10_;
         _loc11_;
         _loc11_;
         _loc5_ = param2 - this.§_-gS§;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         if((Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) > this.§_-gS§ - param3)
         {
            _loc10_;
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
            _loc11_;
            _loc11_;
            _loc11_;
            _loc10_;
            _loc10_;
            _loc11_;
            _loc11_;
            _loc4_ = this.planets[_loc7_].x - param1;
            _loc11_;
            _loc11_;
            _loc10_;
            _loc5_ = this.planets[_loc7_].y - param2;
            _loc10_;
            _loc11_;
            _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            if(_loc6_ < this.planets[_loc7_].radius + param3 + 102)
            {
               _loc10_;
               return false;
            }
            _loc7_++;
            _loc11_;
            _loc11_;
         }
         var _loc8_:* = 0;
         while(true)
         {
            _loc10_;
            if(_loc8_ >= this.§_-I6§.length)
            {
               break;
            }
            _loc11_;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc11_;
            _loc4_ = this.§_-I6§[_loc8_].x - param1;
            _loc11_;
            _loc11_;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc5_ = this.§_-I6§[_loc8_].y - param2;
            _loc11_;
            _loc11_;
            _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            if(_loc6_ < this.§_-I6§[_loc8_].radius + param3 + 22)
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
            _loc10_;
            _loc4_ = this.gates[_loc9_].x - param1;
            _loc11_;
            _loc11_;
            _loc10_;
            _loc11_;
            _loc5_ = this.gates[_loc9_].y - param2;
            _loc11_;
            _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            if(_loc6_ < this.gates[_loc9_].radius + param3 + 22)
            {
               _loc11_;
               _loc11_;
               _loc11_;
               return false;
            }
            _loc9_++;
         }
         return true;
      }
      
      public function §_-5Y§(param1:Number, param2:Number, param3:Number) : *
      {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc4_ = param1 - this.§_-gS§;
         _loc10_;
         _loc10_;
         _loc11_;
         _loc11_;
         _loc10_;
         _loc11_;
         _loc5_ = param2 - this.§_-gS§;
         _loc10_;
         _loc10_;
         _loc11_;
         _loc11_;
         _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         if((Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) > this.§_-gS§ - param3)
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
            _loc10_;
            _loc10_;
            _loc10_;
            _loc11_;
            _loc11_;
            _loc4_ = this.gates[_loc7_].x - param1;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc5_ = this.gates[_loc7_].y - param2;
            _loc11_;
            _loc10_;
            _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            if(_loc6_ < this.gates[_loc7_].radius + param3 + 12)
            {
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
            _loc10_;
            if(_loc8_ >= this.planets.length)
            {
               break;
            }
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc4_ = this.planets[_loc8_].x - param1;
            _loc10_;
            _loc10_;
            _loc5_ = this.planets[_loc8_].y - param2;
            _loc11_;
            _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            if(_loc6_ < this.planets[_loc8_].radius + param3 + 62)
            {
               return false;
            }
            _loc8_++;
            _loc10_;
            _loc10_;
         }
         var _loc9_:* = 0;
         while(_loc9_ < this.§_-I6§.length)
         {
            _loc10_;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc4_ = this.§_-I6§[_loc9_].x - param1;
            _loc10_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc5_ = this.§_-I6§[_loc9_].y - param2;
            _loc10_;
            _loc10_;
            _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            if(_loc6_ < this.§_-I6§[_loc9_].radius + param3 + 22)
            {
               _loc11_;
               _loc11_;
               return false;
            }
            _loc9_++;
         }
         return true;
      }
      
      public function checkValid() : *
      {
         this.§_-hZ§.§_-m0§();
      }
      
      public function §_-3A§(param1:PlanetObject) : *
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc2_:* = 0;
         var _loc3_:int = this.planets.indexOf(param1);
         var _loc4_:* = 0;
         while(true)
         {
            _loc7_;
            if(_loc4_ >= this.§_-KM§.length)
            {
               break;
            }
            if(this.§_-KM§[_loc4_].planetID == _loc3_)
            {
               _loc7_;
               _loc2_++;
               _loc7_;
               _loc7_;
            }
            _loc4_++;
            _loc7_;
            _loc7_;
         }
         var _loc5_:* = 0;
         _loc8_;
         while(true)
         {
            _loc8_;
            if(_loc5_ >= this.barrels.length)
            {
               break;
            }
            if(this.barrels[_loc5_].planetID == _loc3_)
            {
               _loc7_;
               _loc2_++;
               _loc8_;
            }
            _loc5_++;
            _loc7_;
         }
         var _loc6_:* = 0;
         _loc8_;
         while(true)
         {
            _loc8_;
            if(_loc6_ >= this.units.length)
            {
               break;
            }
            if(this.units[_loc6_].planetID == _loc3_)
            {
               _loc7_;
               _loc7_;
               _loc2_++;
               _loc7_;
               _loc7_;
            }
            _loc6_++;
            _loc8_;
            _loc8_;
         }
         return _loc2_;
      }
      
      public function §_-ni§() : void
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
         _loc4_;
         _loc4_;
         while(true)
         {
            _loc5_;
            _loc5_;
            if(_loc2_ >= this.barrels.length)
            {
               break;
            }
            _loc2_++;
            _loc5_;
            _loc5_;
         }
         var _loc3_:* = 0;
         _loc5_;
         while(_loc3_ < this.§_-KM§.length)
         {
            _loc3_++;
            _loc4_;
         }
      }
      
      public function §_-xv§(param1:int) : void
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
         var _loc8_:§_-5N§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         _loc13_;
         _loc13_;
         _loc13_;
         if(param1 is PlanetObject && this.§_-3A§(PlanetObject(param1)) == 0)
         {
            this.§_-ni§();
            _loc14_;
            _loc2_ = PlanetObject(param1).sun;
            _loc14_;
            _loc14_;
            _loc14_;
            _loc3_ = PlanetObject(param1).blackHole;
            _loc14_;
            _loc4_ = this.planets.indexOf(param1);
            this.§_-p-§.removeChild(param1);
            _loc13_;
            _loc13_;
            _loc13_;
            _loc13_;
            this.planets.splice(_loc4_,1);
            this.§_-xv§(_loc4_);
            _loc13_;
            this.§_-ni§();
            _loc14_;
            _loc14_;
            if(_loc2_)
            {
               _loc14_;
               _loc14_;
               _loc13_;
               this.sun_count--;
               _loc13_;
               _loc13_;
            }
            else if(_loc3_)
            {
               _loc14_;
               _loc14_;
               _loc14_;
               this.blackhole_count--;
            }
            else
            {
               _loc14_;
               _loc14_;
               this.planet_count--;
               _loc13_;
            }
            
         }
         else if(param1 is §_-ZA§)
         {
            _loc13_;
            _loc5_ = this.§_-KM§.indexOf(param1);
            this.§_-yN§.removeChild(param1);
            _loc13_;
            _loc13_;
            _loc14_;
            this.§_-KM§.splice(_loc5_,1);
            _loc14_;
            _loc14_;
            _loc14_;
            _loc14_;
            this.mine_count--;
         }
         else if(param1 is §_-lf§)
         {
            _loc14_;
            _loc14_;
            _loc14_;
            _loc6_ = this.barrels.indexOf(param1);
            this.§_-yN§.removeChild(param1);
            _loc14_;
            _loc14_;
            this.barrels.splice(_loc6_,1);
            _loc14_;
            _loc14_;
            _loc14_;
            _loc13_;
            this.barrel_count--;
         }
         else if(param1 is §_-5N§)
         {
            _loc14_;
            _loc7_ = this.gates.indexOf(param1);
            _loc14_;
            _loc8_ = §_-5N§(param1).pair;
            if(!_loc8_)
            {
               §_-5N§(param1).pair = null;
               this.§_-eO§.removeChild(this.gates[_loc7_]);
               _loc13_;
               _loc13_;
               _loc13_;
               _loc14_;
               _loc14_;
               this.gates.splice(_loc7_,1);
               this.wormhole_count = this.wormhole_count - 1;
            }
            else
            {
               §_-5N§(param1).pair = null;
               _loc8_.pair = null;
               this.§_-eO§.removeChild(this.gates[_loc7_]);
               _loc13_;
               _loc14_;
               _loc14_;
               _loc14_;
               _loc14_;
               this.gates.splice(_loc7_,1);
               _loc13_;
               _loc13_;
               _loc7_ = this.gates.indexOf(_loc8_);
               this.§_-eO§.removeChild(this.gates[_loc7_]);
               this.gates.splice(_loc7_,1);
               this.wormhole_count = this.wormhole_count - 2;
            }
         }
         else if(param1 is §_-zO§ || param1 is §_-ch§)
         {
            _loc13_;
            _loc9_ = this.gates.indexOf(param1);
            _loc13_;
            this.§_-eO§.removeChild(this.gates[_loc9_]);
            _loc14_;
            _loc14_;
            _loc13_;
            _loc14_;
            _loc14_;
            this.gates.splice(_loc9_,1);
            _loc14_;
            _loc14_;
            _loc14_;
            _loc14_;
            _loc11_.shield_count = _loc12_;
         }
         else if(param1 is §_-hn§)
         {
            _loc13_;
            _loc13_;
            _loc14_;
            _loc10_ = this.§_-I6§.indexOf(param1);
            this.§_-Ql§.removeChild(this.§_-I6§[_loc10_]);
            this.§_-I6§.splice(_loc10_,1);
            _loc14_;
            _loc14_;
            _loc13_;
            _loc13_;
            _loc11_.skymine_count = _loc12_;
         }
         
         
         
         
         
         this.checkValid();
         this.§_-JP§();
         _loc13_;
         _loc13_;
         this.§_-a3§.graphics.clear();
         _loc13_;
         this.§_-hZ§.§_-Ty§();
         _loc13_;
         this.updateLevelBounds();
      }
   }
}
