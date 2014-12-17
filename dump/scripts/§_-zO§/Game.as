package §_-zO§
{
   import flash.display.MovieClip;
   import com.funkypear.ui.StarMap;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import com.funkypear.ui.CircleBorder;
   import §_-ZN§.WeaponPanelButton;
   import flash.display.Bitmap;
   import flash.utils.Timer;
   import fl.transitions.Tween;
   import §_-ZN§.§_-1E§;
   import flash.events.UncaughtErrorEvent;
   import §_-Hc§.*;
   import §_-uj§.*;
   import §_-CA§.*;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   import flash.geom.Matrix;
   import flash.display.StageQuality;
   import flash.events.KeyboardEvent;
   import §_-8Y§.SoundManager;
   import fl.transitions.TweenEvent;
   import flash.geom.ColorTransform;
   import §_-WX§.§_-Sc§;
   import §_-WX§.§_-i2§;
   import flash.utils.getDefinitionByName;
   import §_-WX§.§_-LG§;
   import §_-3w§.MD5;
   import flash.events.TimerEvent;
   
   public class Game extends MovieClip
   {
      
      public function Game(param1:String, param2:String, param3:String, param4:String)
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         this.planets = [];
         _loc6_;
         _loc6_;
         this.units = [];
         this.§_-N7§ = [];
         _loc6_;
         this.projectiles = [];
         _loc5_;
         _loc5_;
         this.§_-To§ = [];
         this.gates = [];
         this.§_-ki§ = [];
         this.skyMines = [];
         _loc5_;
         this.teams = [];
         this.barrels = [];
         _loc5_;
         _loc5_;
         this.powerUps = [];
         _loc6_;
         this.statuses = [];
         this.§_-9T§ = [];
         _loc5_;
         this.effects = [];
         this.§_-Sn§ = [];
         this.damage = [];
         this.starMap = SafeGlobal.TIMELINE.timeline.starMap;
         _loc5_;
         _loc5_;
         this.§_-e0§ = [];
         _loc6_;
         _loc6_;
         this.messageQueue = [];
         this.stock = [];
         _loc6_;
         _loc6_;
         this.§_-Zx§ = [];
         this.§_-md§ = [];
         _loc6_;
         _loc6_;
         this.mods = [];
         this.§_-KM§ = [];
         _loc5_;
         this.§_-Yv§ = new §_-3b§();
         _loc5_;
         _loc5_;
         this.§_-X8§ = new §_-h8§();
         _loc5_;
         this.§_-kI§ = new §_-I8§();
         this.§_-S4§ = new §_-Gf§();
         _loc5_;
         this.§_-Yq§ = new Point(-1,-1);
         this.§_-4T§ = new §_-pF§(new §_-QF§());
         _loc6_;
         _loc6_;
         this.§_-th§ = new §_-lS§(new §_-f6§());
         this.§_-ri§ = new Array(new §_-lS§(new AssetBarrel()));
         this.explosionBitmaps = [];
         _loc5_;
         _loc5_;
         this.burnBitmaps = [];
         _loc6_;
         this.§_-fS§ = [];
         _loc6_;
         this.§_-8l§ = new Array(new §_-lS§(new §_-b3§()));
         this.§_-M6§ = new Array(new §_-lS§(new §_-4s§()),new §_-lS§(new §_-33§()),new §_-lS§(new §_-hR§()),new §_-lS§(new §_-ky§()),new §_-lS§(new §_-U6§()),new §_-lS§(new §_-J1§()),new §_-lS§(new §_-Ts§()),new §_-lS§(new §_-NO§()),new §_-lS§(new §_-oB§()),new §_-lS§(new §_-Z§()),new §_-lS§(new §_-Lo§()),new §_-lS§(new §_-Ki§()),new §_-lS§(new §_-Ts§()),new §_-lS§(new §_-Ts§()),new §_-lS§(new §_-Ts§()),new §_-lS§(new §_-Ts§()));
         _loc6_;
         this.§_-0i§ = new Array();
         this.§_-TE§ = new Array(new §_-lS§(new §_-Dr§()),new §_-lS§(new §_-Dr§()),new §_-lS§(new §_-uS§()),new §_-lS§(new §_-3Z§()),new §_-lS§(new §_-Dr§()),new §_-lS§(new §_-BH§()),new §_-lS§(new §_-PA§()),new §_-lS§(new §_-jT§()),new §_-lS§(new §_-jG§()),new §_-lS§(new §_-UP§()),new §_-lS§(new §_-Oy§()),new §_-lS§(new §_-Up§()),new §_-lS§(new §_-Dr§()),new §_-lS§(new §_-XA§()),new §_-lS§(new §_-t9§()),new §_-lS§(new §_-Fx§()),new §_-lS§(new §_-fB§()),new §_-lS§(new §_-MX§()),new §_-lS§(new §_-tJ§()),null,new §_-lS§(new §_-vM§()));
         _loc5_;
         this.§_-Dz§ = new Array(new §_-lS§(new §_-g9§()),new §_-lS§(new §_-3K§()));
         this.§_-Zi§ = new Array(new §_-lS§(new AssetStandardMine()),new §_-lS§(new AssetClusterMine()),new §_-lS§(new AssetDrillMine()),new §_-lS§(new §_-C0§()),new §_-lS§(new §_-vs§()),new §_-lS§(new §_-h3§()));
         this.§_-WJ§ = new Array(new §_-lS§(new AssetShield()),new §_-lS§(new AssetDissolveShield()));
         this.wormholeGFX = new Array(new §_-lS§(new §_-Gp§()),new §_-lS§(new §_-PY§()));
         _loc5_;
         this.projGFX = new Array(new §_-lS§(new ProjectileGraphic(0,10)),new §_-lS§(new ProjectileGraphic(0,13)),new §_-lS§(new ProjectileGraphic(11,10)),new §_-lS§(new §_-Ux§()),new §_-lS§(new §_-05§()),null,null,null,new §_-lS§(new ProjectileGraphic(2,14)),new §_-lS§(new ProjectileGraphic(4,10)),new §_-lS§(new §_-dh§()),new §_-lS§(new §_-Xb§()),new §_-lS§(new ProjectileGraphic(2,10)),new §_-lS§(new AssetStandardMine()),new §_-lS§(new AssetDrillMine()),new §_-lS§(new AssetClusterMine()),new §_-lS§(new §_-7C§()),new §_-lS§(new §_-mf§()),new §_-lS§(new ProjectileGraphic(4,14)),new §_-lS§(new §_-sr§()),new §_-lS§(new §_-mf§()),null,null,new §_-lS§(new ProjectileGraphic(7,13)),null,null,null,new §_-lS§(new ProjectileGraphic(6,12)),null,new §_-lS§(new ProjectileGraphic(1,12)),new §_-lS§(new §_-1D§()),null,new §_-lS§(new ProjectileGraphic(2,13)),new §_-lS§(new ProjectileGraphic(7,14)),null,new §_-lS§(new §_-kQ§()),new §_-lS§(new §_-lF§()),null,new §_-lS§(new ProjectileGraphic(5,12)),null,null,null,null,null,null,new §_-lS§(new §_-tt§()),new §_-lS§(new §_-tt§()),new §_-lS§(new ProjectileGraphic(0,10)),null,new §_-lS§(new §_-Ow§()),null,new §_-lS§(new §_-1F§()));
         _loc6_;
         this.particleGFX = [new ParticleGraphic(new §_-X1§(),[16,1,0.5,0.2,0,16777215,16777215]),new ParticleGraphic(new ParticleWhite5(),[10,0.18,0.05,0.8,0.1,13421772,6710886]),new ParticleGraphic(new ParticleWhite5(),[10,0.18,0.6,0.4,0,13421772,6710886]),new ParticleGraphic(new ParticleWhite5(),[10,0.18,0.6,0.4,0,16777215,16777215]),new ParticleGraphic(new ParticleWhite5(),[16,1,0.1,0.4,0.1,16750848,3355443]),new ParticleGraphic(new ParticleWhite6(),[16,1,0.1,0.4,0.1,16750848,3355443]),new ParticleGraphic(new ParticleWhite7(),[16,1,0.1,0.4,0.1,16750848,3355443])];
         this.customParticleGFX = [];
         this.customProjectileGFX = [];
         this.§_-6s§ = [];
         _loc6_;
         this.§_-Hm§ = new §_-lS§(new AssetSkyMine());
         _loc6_;
         _loc6_;
         this.bubbles = new §_-tE§();
         this.chat = new ChatSystem();
         _loc6_;
         this.§_-nL§ = [];
         this.§_-GD§ = SafeGlobal.CLEANUP_NONE;
         this.§_-5H§ = [];
         this.§_-7c§ = new §_-AI§();
         this.§_-jg§ = new §_-MH§();
         this.dot1rect = new Rectangle(0,0,8,8);
         this.dot2rect = new Rectangle(8,0,8,8);
         _loc5_;
         _loc5_;
         this.dot3rect = new Rectangle(16,0,8,8);
         _loc5_;
         this.dot4rect = new Rectangle(24,0,8,8);
         this.dot5rect = new Rectangle(32,0,8,8);
         this.§_-uC§ = new BitmapData(8,8,true,0);
         this.§_-aN§ = [];
         this.§_-Xn§ = new §_-R§();
         this.§_-Bt§ = new §_-zQ§();
         this.§_-v7§ = new Point(0,0);
         _loc6_;
         this.§_-E2§ = new Rectangle();
         this.§_-Rs§ = new Point();
         _loc6_;
         this.§_-0d§ = new Point(0,0);
         _loc6_;
         this.§do§ = new Point(0,0);
         _loc6_;
         _loc6_;
         this.tempProj1Point = new Point();
         this.tempProj2Point = new Point();
         this.tempProj3Point = new Point();
         _loc6_;
         this.tempProj4Point = new Point();
         _loc5_;
         this.tempGateCollPoint1 = new Point();
         _loc5_;
         this.tempGateCollPoint2 = new Point();
         this.tempGateCollPoint3 = new Point();
         this.§_-bn§ = new Rectangle(0,0,1,1);
         _loc6_;
         _loc6_;
         this.§_-lN§ = new Point(0,0);
         _loc5_;
         _loc5_;
         this.§_-b5§ = new Rectangle(0,0,0,0);
         _loc6_;
         _loc6_;
         this.§_-sC§ = new Point(0,0);
         this.§_-xK§ = new Projectile(0,0,0,0,0,false,5,[]);
         _loc6_;
         this.§_-xH§ = new §_-4n§();
         _loc5_;
         this.§_-Km§ = new §_-Dm§();
         _loc5_;
         this.point1A = new Point(0,0);
         this.point1B = new Point(0,0);
         this.point2A = new Point(0,0);
         _loc6_;
         this.point2B = new Point(0,0);
         _loc5_;
         this.camera = new Camera();
         _loc6_;
         _loc6_;
         this.§_-a9§ = new §_-Xq§();
         this.simManager = new SimManager(this.turnTime,this.§_-QA§);
         _loc6_;
         _loc6_;
         this.§_-Yi§ = new TurnTimer(this.turnTime,this.§_-QA§);
         _loc5_;
         this.§_-dp§ = [];
         _loc6_;
         this.§_-m6§ = [];
         this.§_-0s§ = new Point(0,0);
         this.§_-bg§ = new Point(0,0);
         _loc5_;
         _loc5_;
         this.arenaRadius2 = this.§_-3O§ * this.§_-3O§;
         this.§_-Bf§ = new Point(this.§_-3O§,this.§_-3O§);
         _loc6_;
         _loc6_;
         this.currentWeapon = SafeGlobal.WEAPONINFO_BAZOOKA[0];
         _loc6_;
         this.§_-Db§ = SafeGlobal.WEAPONINFO_BAZOOKA;
         _loc6_;
         _loc6_;
         this.screen = new MovieClip();
         this.§_-wP§ = new MovieClip();
         _loc5_;
         this.§_-t6§ = new Sprite();
         this.§_-zY§ = new Sprite();
         _loc5_;
         this.§_-dK§ = new Sprite();
         this.§_-Hf§ = new Sprite();
         this.§_-mh§ = new Sprite();
         this.§_-5G§ = new Sprite();
         this.§_-Zv§ = new Sprite();
         this.§_-7D§ = new Sprite();
         _loc5_;
         this.§_-8u§ = new Sprite();
         this.§_-12§ = new Sprite();
         this.debugLayer = new Sprite();
         this.§_-rI§ = new Sprite();
         _loc6_;
         _loc6_;
         this.statusBar = new Sprite();
         this.§_-vY§ = new §_-1E§();
         _loc6_;
         super();
         SafeGlobal.GAME = this;
         _loc6_;
         _loc6_;
         this.§_-Un§ = getTimer();
         _loc5_;
         _loc5_;
         this.levelData = param1;
         _loc5_;
         _loc5_;
         this.§_-by§ = param2;
         _loc5_;
         _loc5_;
         this.modData = param3;
         this.stockData = param4;
         if(stage)
         {
            this.addedToStage();
            _loc5_;
            _loc5_;
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
         }
         this.starMap.ignoreNextJump();
      }
      
      public var §_-nG§:Boolean = false;
      
      public var planets:Array;
      
      public var units:Array;
      
      public var §_-N7§:Array;
      
      public var projectiles:Array;
      
      public var §_-To§:Array;
      
      public var gates:Array;
      
      public var §_-ki§:Array;
      
      public var skyMines:Array;
      
      public var teams:Array;
      
      public var barrels:Array;
      
      public var powerUps:Array;
      
      public var statuses:Array;
      
      public var §_-9T§:Array;
      
      public var effects:Array;
      
      public var §_-Sn§:Array;
      
      public var damage:Array;
      
      public var §_-RA§:int = 0;
      
      public var starMap:StarMap;
      
      public var §_-e0§:Array;
      
      public var messageQueue:Array;
      
      public var stock:Array;
      
      public var §_-Zx§:Array;
      
      public var §_-md§:Array;
      
      public var mods:Array;
      
      public var §_-KM§:Array;
      
      public var §_-tT§:Number = 5000;
      
      public var §_-mn§:Number = 5000;
      
      public var §_-rB§:Number = -5000;
      
      public var §_-0Q§:Number = -5000;
      
      public var §_-cg§:Number;
      
      public var §_-32§:Number;
      
      public var §_-gK§:Sprite;
      
      public var §_-yt§:Boolean = false;
      
      public var §_-Yv§:§_-3b§;
      
      public var §_-X8§:§_-h8§;
      
      public var §_-kI§:§_-I8§;
      
      public var §_-S4§:§_-Gf§;
      
      public var §_-Yq§:Point;
      
      public var §_-T8§:Boolean = false;
      
      public var §_-qg§:Boolean = false;
      
      public var §_-BD§:int;
      
      public var §_-DX§:int;
      
      public var §_-Bl§:int = 14;
      
      public var §_-yX§:int = 0;
      
      public var §_-UR§:Boolean = false;
      
      public var simOnly:Boolean = false;
      
      public var costumeCacheOnly:Boolean = false;
      
      public var replay:Boolean = false;
      
      public var §_-cf§:int = 0;
      
      public var §_-ms§:int = 0;
      
      public var §_-2h§:int = 0;
      
      public var §_-x5§:int = 0;
      
      public var §_-4g§:Boolean = false;
      
      public var §_-vA§:Boolean = false;
      
      public var §_-4T§:§_-pF§;
      
      public var §_-th§:§_-lS§;
      
      public var §_-ri§:Array;
      
      public var explosionBitmaps:Array;
      
      public var burnBitmaps:Array;
      
      public var §_-fS§:Array;
      
      public var §_-8l§:Array;
      
      public var §_-M6§:Array;
      
      public var §_-0i§:Array;
      
      public var §_-TE§:Array;
      
      public var §_-Dz§:Array;
      
      public var §_-Zi§:Array;
      
      public var §_-WJ§:Array;
      
      public var wormholeGFX:Array;
      
      public var projGFX:Array;
      
      public var particleGFX:Array;
      
      public var customParticleGFX:Array;
      
      public var customProjectileGFX:Array;
      
      public var §_-6s§:Array;
      
      public var §_-Hm§:§_-lS§;
      
      public var bubbles:§_-tE§;
      
      public var chat:ChatSystem;
      
      public var §_-nL§:Array;
      
      public var §_-GD§:int;
      
      public var §_-5H§:Array;
      
      public var §_-7c§:§_-AI§;
      
      public var §_-jg§:BitmapData;
      
      public var dot1rect:Rectangle;
      
      public var dot2rect:Rectangle;
      
      public var dot3rect:Rectangle;
      
      public var dot4rect:Rectangle;
      
      public var dot5rect:Rectangle;
      
      public var §_-XK§:int = 4;
      
      public var §_-uC§:BitmapData;
      
      public var §_-aN§:Array;
      
      public var §_-hV§:CircleBorder;
      
      public var §_-Xn§:§_-R§;
      
      public var §_-Bt§:§_-zQ§;
      
      public var §_-v7§:Point;
      
      public var §_-E2§:Rectangle;
      
      public var §_-Rs§:Point;
      
      public var §_-0d§:Point;
      
      public var §do§:Point;
      
      public var tempProj1Point:Point;
      
      public var tempProj2Point:Point;
      
      public var tempProj3Point:Point;
      
      public var tempProj4Point:Point;
      
      public var tempGateCollPoint1:Point;
      
      public var tempGateCollPoint2:Point;
      
      public var tempGateCollPoint3:Point;
      
      public var §_-bn§:Rectangle;
      
      public var §_-lN§:Point;
      
      public var §_-b5§:Rectangle;
      
      public var §_-sC§:Point;
      
      public var §_-xK§:Projectile;
      
      public var §_-xX§:Boolean = false;
      
      public var §_-Vf§:Boolean = false;
      
      public var §null§:Boolean = false;
      
      public var §_-SA§:Boolean = false;
      
      public var §_-xH§:§_-4n§;
      
      public var §_-Km§:§_-Dm§;
      
      public var §_-dR§:Number = 0.37;
      
      public var §_-OL§:Number = 0.003;
      
      public var §_-q7§:Number = 2;
      
      public var §_-Y0§:Boolean = false;
      
      public var point1A:Point;
      
      public var point1B:Point;
      
      public var point2A:Point;
      
      public var point2B:Point;
      
      public var §_-IF§:String = "";
      
      public var summaryShown:Boolean = false;
      
      public var §_-HC§:int = 0;
      
      public var §_-AG§:int = 0;
      
      public var summaryDamageDealt:int = 0;
      
      public var summaryDamageTaken:int = 0;
      
      public var §_-K7§:int = 0;
      
      public var §_-cw§:int = 0;
      
      public var §_-ef§:int = 0;
      
      public var §_-Ue§:int = 0;
      
      public var §_-Zj§:int = 0;
      
      public var §_-Xe§:int = 0;
      
      public var §_-R8§:int = 0;
      
      public var dynamic:int = 0;
      
      public var §in §:int = 0;
      
      public var §_-cQ§:int = 0;
      
      public var summaryHealthDealt:int = 0;
      
      public var summaryHealthTaken:int = 0;
      
      public var §_-bY§:int = 0;
      
      public var summaryDamageSelf:int = 0;
      
      public var §_-eP§:int = 0;
      
      public var §_-FQ§:int = 0;
      
      public var camera:Camera;
      
      public var §_-a9§:§_-Xq§;
      
      public var weaponPanel:WeaponPanel;
      
      public var §_-oN§:WeaponPanelButton;
      
      public var §_-dV§:BitmapData;
      
      public var §_-G9§:Bitmap;
      
      public var §_-XG§:int = 0;
      
      public var §_-xN§:int = 150;
      
      public var turnTime:int = 30000;
      
      public var §_-QA§:int = 3000;
      
      public var §_-0y§:int = -1;
      
      public var §_-o2§:int = -1;
      
      public var simManager:SimManager;
      
      public var §_-Yi§:TurnTimer;
      
      public var myTurn:Boolean = false;
      
      public var §_-uU§:int = 0;
      
      public var §_-v9§:int = 0;
      
      public var currentTime:int = 0;
      
      public var turnState:String = "begin";
      
      public var timeStep:int = 20;
      
      public var §_-lD§:int = 5000;
      
      public var §_-dp§:Array;
      
      public var §_-F4§:int = 0;
      
      public var §_-m6§:Array;
      
      public var dragging:Boolean = false;
      
      public var §_-0s§:Point;
      
      public var §_-bg§:Point;
      
      public var §_-Vr§:Boolean = false;
      
      public var §_-o4§:Point;
      
      public var §_-Zq§:int = 0;
      
      protected var §_-sH§:Timer;
      
      public var §_-Of§:Boolean = false;
      
      public var § try§:Number = 0;
      
      public var §_-Y5§:Number = 0;
      
      public var §_-Jn§:Number = 0;
      
      public var §_-on§:Number = 0;
      
      public var §_-za§:Number = 300;
      
      public var §_-1T§:Number = 600;
      
      public var §_-3O§:Number = 600;
      
      public var arenaRadius2:Number;
      
      public var §_-Bf§:Point;
      
      public var §_-3c§:Number;
      
      public var boundsRadius2:Number;
      
      public var PI:Number = 3.1415926;
      
      public var currentTeam:int = -1;
      
      public var currentUnit:int = -1;
      
      public var currentWeapon:int;
      
      public var §_-Db§:Array;
      
      public var screen:MovieClip;
      
      public var §_-wP§:MovieClip;
      
      public var §_-t6§:Sprite;
      
      public var §_-zY§:Sprite;
      
      public var §_-dK§:Sprite;
      
      public var §_-Hf§:Sprite;
      
      public var §_-mh§:Sprite;
      
      public var §_-5G§:Sprite;
      
      public var §_-Zv§:Sprite;
      
      public var §_-7D§:Sprite;
      
      public var §_-8u§:Sprite;
      
      public var §_-12§:Sprite;
      
      public var debugLayer:Sprite;
      
      public var §_-rI§:Sprite;
      
      public var statusBar:Sprite;
      
      public var §_-Bk§:Tween;
      
      public var §_-c6§:BitmapData;
      
      public var §_-LN§:Rectangle;
      
      public var §_-xC§:Bitmap;
      
      public var §_-Y§:Number;
      
      public var §_-UM§:Number;
      
      public var §_-0-8§:Number;
      
      public var §_-0-B§:Number;
      
      public var §_-9o§:Number = 700;
      
      public var §_-RT§:Number = 15;
      
      public var §_-81§:Point;
      
      public var §_-qs§:Number = 0;
      
      public var §_-2I§:Number;
      
      public var runningTotal:Number = 0;
      
      public var §_-J3§:Number = 0;
      
      public var §_-Oj§:Number;
      
      public var §_-ld§:Number;
      
      public var §_-CU§:Number;
      
      public var §_-io§:Number;
      
      public var levelData:String = "";
      
      public var §_-by§:String = "";
      
      public var modData:String = "";
      
      public var stockData:String = "";
      
      public var §_-Q3§:Boolean = false;
      
      public var §_-bC§:Boolean = false;
      
      public var §_-Zz§:Boolean = false;
      
      public var §_-LT§:Number = 0;
      
      public var §_-ZF§:Boolean = false;
      
      public var §_-O§:int;
      
      public var §_-wR§:int = 10000;
      
      public var §_-vY§:§_-1E§;
      
      public var §_-Un§:int;
      
      public function §_-SW§(param1:UncaughtErrorEvent) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:* = "";
         var _loc5_:* = 0;
         while(_loc5_ < this.teams.length)
         {
            _loc6_;
            _loc7_;
            _loc7_;
            if(this.teams[_loc5_].teamID == SafeGlobal.playerID)
            {
               _loc6_;
               _loc6_;
               _loc4_ = this.teams[_loc5_].teamName;
               _loc6_;
            }
            _loc5_++;
         }
         _loc7_;
         _loc6_;
         if(param1.error is Error)
         {
            _loc7_;
            _loc7_;
            _loc2_ = Error(param1.error).message;
            _loc7_;
            _loc6_;
            _loc6_;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc6_;
            _loc6_;
            _loc3_ = ">error1 : " + _loc4_ + "  " + param1.error.getStackTrace() + " <";
         }
         else if(param1.error is ErrorEvent)
         {
            _loc7_;
            _loc7_;
            _loc2_ = ErrorEvent(param1.error).text;
            _loc6_;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc7_;
            _loc3_ = ">error2 : " + _loc4_ + "  " + param1.error.getStackTrace() + " <";
         }
         else
         {
            _loc7_;
            _loc2_ = param1.error.toString();
            _loc7_;
            _loc7_;
            _loc6_;
            _loc6_;
            _loc3_ = ">error3 : " + _loc4_ + "  " + param1.error.getStackTrace() + " <";
            _loc6_;
            _loc6_;
         }
         
         if(_loc2_)
         {
            this.sendFlashError(_loc3_);
         }
      }
      
      public function addedToStage(param1:Event = null) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         removeEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
         this.weaponPanel = new WeaponPanel();
         _loc3_;
         _loc3_;
         this.§_-oN§ = new WeaponPanelButton();
         this.§_-T2§();
         _loc2_;
         _loc2_;
         this.§_-Vf§ = true;
         _loc3_;
         if(this.§null§)
         {
            this.tryBuildGame();
         }
      }
      
      public function §_-T2§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.§_-WV§();
         this.§_-xK§.test = true;
         this.§_-DD§();
         this.§_-dV§ = new BitmapData(800,600,true,0);
         _loc2_;
         this.§_-G9§ = new Bitmap(this.§_-dV§);
         _loc2_;
         this.§_-c6§ = new BitmapData(800,600,true,0);
         _loc2_;
         _loc2_;
         this.§_-LN§ = new Rectangle(0,0,this.§_-c6§.rect.width,this.§_-c6§.rect.height);
         this.§_-xC§ = new Bitmap(this.§_-c6§);
         _loc2_;
         addChild(this.§_-G9§);
         addChild(this.screen);
         addChild(this.§_-xC§);
         _loc1_;
         addChild(this.§_-wP§);
         addChild(this.§_-rI§);
         _loc1_;
         this.screen.addChild(this.§_-Zv§);
         this.screen.addChild(this.§_-zY§);
         this.screen.addChild(this.§_-dK§);
         this.screen.addChild(this.§_-Hf§);
         this.screen.addChild(this.§_-mh§);
         _loc2_;
         this.screen.addChild(this.§_-t6§);
         _loc1_;
         this.screen.addChild(this.§_-7D§);
         _loc2_;
         this.screen.addChild(this.§_-8u§);
         this.screen.addChild(this.§_-5G§);
         this.screen.addChild(this.§_-12§);
         _loc2_;
         this.screen.addChild(this.debugLayer);
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(this.weaponPanel != null)
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            _loc1_;
            this.weaponPanel.x = 720;
            _loc1_;
            _loc1_;
            this.weaponPanel.y = 520;
            _loc1_;
            this.§_-yS§();
            _loc1_;
            _loc1_;
         }
         this.§_-dG§();
         _loc1_;
         _loc1_;
         _loc2_;
         _loc1_;
         if(this.§_-oN§ != null)
         {
            _loc1_;
            _loc1_;
            this.§_-Tw§();
         }
         _loc1_;
         _loc1_;
         this.§_-kI§.init(this.§_-th§);
         _loc1_;
         _loc1_;
         this.§_-kI§.animProgress();
         _loc2_;
         this.§_-kI§.updateImage();
         _loc2_;
         _loc2_;
         if(this.weaponPanel != null)
         {
            this.§_-wP§.addChild(this.weaponPanel);
            _loc1_;
            _loc1_;
         }
         if(this.§_-oN§ != null)
         {
            this.§_-wP§.addChild(this.§_-oN§);
            _loc2_;
         }
         this.§_-wP§.addChild(this.statusBar);
         _loc1_;
         this.statusBar.x = 77;
         this.statusBar.y = -50;
         this.statusBar.visible = false;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         this.§_-Km§.x = 3;
         this.§_-Km§.y = 570;
         this.§_-wP§.addChild(this.§_-Km§);
         this.§_-rf§();
         addChild(this.chat);
         this.§_-wP§.addChild(this.§_-Yi§);
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-Yi§.x = 10;
         _loc2_;
         _loc2_;
         this.§_-Yi§.y = 10;
         _loc1_;
         this.§_-Yi§.hideMe();
         _loc1_;
         this.§_-wP§.addChild(this.§_-vY§);
         _loc2_;
         this.§_-wP§.addChild(this.§_-S4§);
         this.§_-vY§.visible = false;
         this.§_-ko§();
         this.screen.addChild(this.§_-Yv§);
         this.screen.addChild(this.bubbles);
         _loc2_;
         _loc2_;
         this.§_-tO§();
         _loc2_;
         this.hideBubbles();
      }
      
      public function displayQuitButton() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         if(!this.§_-ZF§)
         {
            _loc2_;
            _loc1_;
            this.§_-vY§.visible = true;
            _loc2_;
            this.§_-vY§.tweenOn();
         }
      }
      
      public function §_-ZX§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.§_-vY§.tweenOff();
      }
      
      public function §_-Gg§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         _loc1_;
         this.§_-S4§.visible = true;
         _loc2_;
         this.§_-S4§.addEventListener(MouseEvent.CLICK,this.§_-q9§);
      }
      
      public function §_-ko§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         this.§_-S4§.visible = false;
         _loc1_;
         _loc1_;
         this.§_-S4§.removeEventListener(MouseEvent.CLICK,this.§_-q9§);
      }
      
      public function §_-q9§(param1:MouseEvent) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-qg§ = false;
         _loc2_;
         _loc2_;
         this.§_-T8§ = false;
         _loc2_;
         this.§_-Cr§();
         _loc2_;
         this.§_-ko§();
      }
      
      public function mainLoopReplayEditor(param1:int) : void
      {
      }
      
      public function §_-kg§(param1:Event) : *
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = NaN;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         _loc8_;
         if(!this.§_-yt§)
         {
            _loc8_;
            this.currentTime = this.§_-aK§();
            _loc8_;
            _loc8_;
            _loc2_ = this.§_-aK§();
            _loc7_;
            _loc7_;
            this.mainLoopReplayEditor(this.currentTime);
            this.simManager.simWorld(this.currentTime);
            this.§_-Wb§();
            _loc7_;
            this.§_-ml§();
            this.§_-ix§();
            _loc7_;
            this.§_-pY§();
            this.§_-EO§(this.currentTime);
            this.§_-qH§();
            this.§_-h5§();
            _loc8_;
            _loc8_;
            if(this.turnState == "shoot")
            {
               _loc7_;
               _loc7_;
               this.§_-aO§();
            }
            this.§_-Yi§.update(this.currentTime);
            this.§_-9w§();
            _loc7_;
            _loc7_;
            if(!this.simOnly && !this.costumeCacheOnly)
            {
               this.§_-p5§();
               _loc8_;
            }
            _loc7_;
            _loc7_;
            _loc7_;
            _loc7_;
            if((this.myTurn) && (this.§_-T8§) && !this.§_-qg§)
            {
               if(!(this.§_-Yq§.x == mouseX) || !(this.§_-Yq§.y == mouseY))
               {
                  _loc8_;
                  this.§_-T8§ = false;
                  this.§_-qg§ = false;
               }
            }
         }
         if(this.§_-ZF§)
         {
            _loc7_;
            _loc7_;
            _loc8_;
            _loc8_;
            _loc7_;
            _loc7_;
            _loc3_ = getTimer() - this.§_-O§;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc7_;
            _loc4_ = _loc3_ / this.§_-wR§;
            _loc8_;
            this.§_-xH§.iX = this.§_-Bf§.x + Math.cos(2 * this.PI * _loc4_ + this.§_-LT§) * this.§_-3O§ / 2;
            _loc8_;
            this.§_-xH§.iY = this.§_-Bf§.y + Math.sin(2 * this.PI * _loc4_ + this.§_-LT§) * this.§_-3O§ / 2;
            _loc7_;
            _loc7_;
            if(_loc3_ > this.§_-wR§)
            {
               SafeGlobal.game_client.finishGameOver();
               _loc7_;
               this.§_-ZF§ = false;
            }
            _loc5_ = 0;
            while(_loc5_ < this.units.length)
            {
               _loc8_;
               _loc8_;
               _loc6_ = SafeGlobal.GAME.teams[this.units[_loc5_].team].victoryID;
               _loc8_;
               _loc7_;
               _loc8_;
               _loc8_;
               _loc7_;
               _loc7_;
               if(this.units[_loc5_].animState == SafeGlobal.ANIM_UNIT_VICTORY && (_loc6_ == SafeGlobal.ANIM_VICTORY_WORM || _loc6_ == SafeGlobal.ANIM_VICTORY_UNICYCLE))
               {
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  if(this.units[_loc5_].scaleX == 1)
                  {
                     _loc7_;
                     this.§_-8G§(this.units[_loc5_]);
                  }
                  else
                  {
                     this.§_-bl§(this.units[_loc5_]);
                  }
               }
               _loc7_;
               _loc7_;
               _loc7_;
               if(this.units[_loc5_].animState == SafeGlobal.ANIM_UNIT_VICTORY && _loc6_ == SafeGlobal.ANIM_VICTORY_MOONWALK)
               {
                  if(this.units[_loc5_].scaleX == 1)
                  {
                     this.§_-bl§(this.units[_loc5_]);
                  }
                  else
                  {
                     this.§_-8G§(this.units[_loc5_]);
                     _loc8_;
                     _loc8_;
                  }
               }
               _loc5_++;
               _loc8_;
            }
         }
      }
      
      public function §_-pG§() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.camera.§_-He§ = this.§_-3O§;
         _loc3_;
         this.camera.y = _loc1_;
         _loc3_;
         this.camera.x = this.camera.§_-Vx§ = _loc1_;
         _loc3_;
         _loc3_;
         this.§_-SU§();
      }
      
      public function §_-SU§() : *
      {
         var _loc11_:* = false;
         var _loc12_:* = true;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = NaN;
         _loc12_;
         this.§ try§ = this.§_-Bf§.x - (this.§_-3O§ - 300);
         _loc11_;
         this.§_-Y5§ = this.§_-Bf§.x + (this.§_-3O§ - 300);
         _loc11_;
         this.§_-Jn§ = this.§_-Bf§.y - (this.§_-3O§ - 200);
         _loc12_;
         _loc12_;
         this.§_-on§ = this.§_-Bf§.y + (this.§_-3O§ - 200);
         _loc11_;
         _loc12_;
         _loc12_;
         var _loc1_:Number = 2 * this.PI * this.§_-3O§;
         var _loc2_:* = 40;
         var _loc3_:int = int(_loc1_ / _loc2_);
         _loc11_;
         _loc12_;
         _loc3_ = int(_loc3_ / 2) * 2;
         _loc12_;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc12_;
         _loc12_;
         var _loc9_:Number = this.PI * 2 / _loc3_;
         var _loc10_:* = 0;
         while(_loc10_ < _loc3_)
         {
            _loc12_;
            _loc12_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc8_ = _loc9_ * _loc10_;
            _loc4_ = Math.round(this.§_-Bf§.x + Math.cos(_loc8_) * this.§_-3O§);
            _loc12_;
            _loc12_;
            _loc5_ = Math.round(this.§_-Bf§.y + Math.sin(_loc8_) * this.§_-3O§);
            _loc11_;
            _loc11_;
            _loc11_;
            _loc12_;
            _loc12_;
            _loc6_ = 90 - Math.round(_loc8_ * 180 / this.PI);
            _loc11_;
            _loc11_;
            while(true)
            {
               _loc12_;
               if(_loc6_ < 360)
               {
                  break;
               }
               _loc11_;
               _loc12_;
               _loc12_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc6_ = _loc6_ - 360;
               _loc11_;
               _loc11_;
            }
            while(true)
            {
               _loc11_;
               _loc11_;
               if(_loc6_ >= 0)
               {
                  break;
               }
               _loc11_;
               _loc6_ = _loc6_ + 360;
               _loc11_;
               _loc11_;
            }
            _loc12_;
            _loc7_ = Math.floor(_loc6_ / 5);
            this.§_-Sn§.push(new §_-Yd§(_loc4_,_loc5_,_loc6_,_loc7_));
            _loc11_;
            _loc10_++;
            _loc12_;
         }
      }
      
      public function §_-dQ§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.explosionBitmaps[10] = new exp10();
         _loc1_;
         this.explosionBitmaps[15] = new exp15();
         _loc1_;
         _loc2_;
         this.explosionBitmaps[20] = new exp20();
         _loc2_;
         _loc1_;
         this.explosionBitmaps[25] = new exp25();
         _loc1_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         this.explosionBitmaps[30] = new exp30();
         _loc2_;
         this.explosionBitmaps[35] = new exp35();
         _loc2_;
         this.explosionBitmaps[40] = new exp40();
         this.explosionBitmaps[45] = new exp45();
         this.explosionBitmaps[50] = new exp50();
         _loc2_;
         _loc2_;
         _loc2_;
         this.explosionBitmaps[55] = new exp55();
         _loc1_;
         _loc1_;
         this.explosionBitmaps[60] = new exp60();
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         this.explosionBitmaps[70] = new exp70();
         this.burnBitmaps[15] = new burn15();
         _loc1_;
         this.burnBitmaps[20] = new burn20();
         this.burnBitmaps[25] = new burn25();
         this.burnBitmaps[30] = new burn30();
         _loc1_;
         _loc2_;
         _loc1_;
         _loc1_;
         this.burnBitmaps[35] = new burn35();
         this.burnBitmaps[40] = new burn40();
         _loc2_;
         _loc2_;
         this.burnBitmaps[45] = new burn45();
         _loc1_;
         _loc1_;
         this.burnBitmaps[50] = new burn50();
         this.burnBitmaps[55] = new burn55();
         _loc1_;
         _loc1_;
         _loc2_;
         this.burnBitmaps[60] = new burn60();
         _loc2_;
         _loc2_;
         this.burnBitmaps[65] = new burn65();
         _loc2_;
         _loc2_;
         this.burnBitmaps[70] = new burn70();
         this.burnBitmaps[75] = new burn75();
      }
      
      public function generateExplosionBitmap(param1:int) : *
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc2_:int = getTimer();
         var _loc3_:BitmapData = new BitmapData(param1 * 2,param1 * 2,true,0);
         var _loc4_:BitmapData = new BitmapData((param1 + 5) * 2,(param1 + 5) * 2,true,0);
         _loc10_;
         var _loc5_:Number = _loc3_.width / 100;
         var _loc6_:Matrix = new Matrix();
         _loc6_.scale(_loc5_,_loc5_);
         _loc9_;
         _loc9_;
         var _loc7_:Number = _loc4_.width / 100;
         var _loc8_:Matrix = new Matrix();
         _loc8_.scale(_loc7_,_loc7_);
         _loc9_;
         _loc9_;
         stage.quality = StageQuality.LOW;
         _loc3_.draw(this.§_-Bt§,_loc6_);
         stage.quality = StageQuality.HIGH;
         _loc10_;
         _loc10_;
         _loc4_.draw(this.§_-Xn§,_loc8_);
         _loc9_;
         _loc9_;
         _loc9_;
         _loc9_;
         this.explosionBitmaps[param1] = _loc3_;
         this.burnBitmaps[param1 + 5] = _loc4_;
      }
      
      public function §_-qH§() : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         while(_loc3_ < this.units.length)
         {
            _loc4_;
            _loc5_;
            _loc5_;
            _loc4_;
            if(!this.units[_loc3_].dead && !this.units[_loc3_].removed)
            {
               _loc5_;
               _loc5_;
               if(!this.§_-p1§(this.units[_loc3_].iX,this.units[_loc3_].iY))
               {
                  this.§_-N7§[_loc3_].visible = true;
                  this.§_-N7§[_loc3_].x = this.units[_loc3_].iX - this.camera.x + 400;
                  _loc5_;
                  _loc5_;
                  this.§_-N7§[_loc3_].y = this.units[_loc3_].iY - this.camera.y + 300;
                  _loc5_;
                  if(this.§_-N7§[_loc3_].x < this.§_-Bl§)
                  {
                     _loc5_;
                     this.§_-N7§[_loc3_].x = this.§_-Bl§;
                  }
                  if(this.§_-N7§[_loc3_].x > 800 - this.§_-Bl§)
                  {
                     _loc5_;
                     _loc5_;
                     _loc5_;
                     _loc5_;
                     this.§_-N7§[_loc3_].x = 800 - this.§_-Bl§;
                  }
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  if(this.§_-N7§[_loc3_].y < this.§_-Bl§)
                  {
                     _loc4_;
                     _loc4_;
                     _loc5_;
                     _loc5_;
                     this.§_-N7§[_loc3_].y = this.§_-Bl§;
                  }
                  _loc4_;
                  if(this.§_-N7§[_loc3_].y > 600 - this.§_-Bl§)
                  {
                     _loc4_;
                     _loc4_;
                     this.§_-N7§[_loc3_].y = 600 - this.§_-Bl§;
                  }
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  if(this.§_-N7§[_loc3_].x == this.§_-Bl§ && this.§_-N7§[_loc3_].y == this.§_-Bl§)
                  {
                     _loc4_;
                     this.§_-N7§[_loc3_].rotation = 315;
                  }
                  else
                  {
                     _loc4_;
                     _loc4_;
                     if(this.§_-N7§[_loc3_].x == this.§_-Bl§ && this.§_-N7§[_loc3_].y == 600 - this.§_-Bl§)
                     {
                        _loc5_;
                        _loc5_;
                        this.§_-N7§[_loc3_].rotation = 225;
                     }
                     else
                     {
                        _loc4_;
                        if(this.§_-N7§[_loc3_].x == 800 - this.§_-Bl§ && this.§_-N7§[_loc3_].y == this.§_-Bl§)
                        {
                           this.§_-N7§[_loc3_].rotation = 45;
                        }
                        else
                        {
                           _loc5_;
                           if(this.§_-N7§[_loc3_].x == 800 - this.§_-Bl§ && this.§_-N7§[_loc3_].y == 600 - this.§_-Bl§)
                           {
                              _loc5_;
                              this.§_-N7§[_loc3_].rotation = 135;
                              _loc4_;
                              _loc4_;
                           }
                           else
                           {
                              _loc5_;
                              if(this.§_-N7§[_loc3_].x == this.§_-Bl§)
                              {
                                 _loc5_;
                                 _loc5_;
                                 _loc5_;
                                 this.§_-N7§[_loc3_].rotation = 270;
                                 _loc4_;
                                 _loc4_;
                              }
                              else
                              {
                                 _loc4_;
                                 if(this.§_-N7§[_loc3_].x == 800 - this.§_-Bl§)
                                 {
                                    _loc5_;
                                    _loc5_;
                                    this.§_-N7§[_loc3_].rotation = 90;
                                    _loc5_;
                                    _loc5_;
                                 }
                                 else
                                 {
                                    _loc4_;
                                    _loc4_;
                                    if(this.§_-N7§[_loc3_].y == this.§_-Bl§)
                                    {
                                       _loc5_;
                                       this.§_-N7§[_loc3_].rotation = 0;
                                       _loc5_;
                                    }
                                    else
                                    {
                                       _loc5_;
                                       if(this.§_-N7§[_loc3_].y == 600 - this.§_-Bl§)
                                       {
                                          _loc5_;
                                          _loc5_;
                                          _loc5_;
                                          this.§_-N7§[_loc3_].rotation = 180;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               else
               {
                  this.§_-N7§[_loc3_].visible = false;
               }
            }
            _loc3_++;
         }
      }
      
      public function §_-pY§() : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:§_-Yd§ = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         while(_loc4_ < this.§_-Sn§.length)
         {
            _loc1_ = this.§_-Sn§[_loc4_];
            if(this.§_-p1§(_loc1_.x,_loc1_.y))
            {
               _loc5_;
               this.§_-bn§ = this.§_-4T§.getChunk(_loc1_.§_-UD§);
               this.§_-lN§.x = 400 + (_loc1_.x - this.§_-bn§.height / 2) - this.camera.x;
               this.§_-lN§.y = 300 + (_loc1_.y - this.§_-bn§.height / 2) - this.camera.y;
               this.§_-dV§.copyPixels(this.§_-4T§.sheetBD,this.§_-bn§,this.§_-lN§,null,null,true);
               _loc6_;
            }
            _loc4_++;
         }
      }
      
      public function §_-p1§(param1:Number, param2:Number) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(this.camera.x - 430 <= param1 && this.camera.x + 430 >= param1 && this.camera.y - 330 <= param2 && this.camera.y + 330 >= param2)
         {
            _loc3_;
            _loc3_;
            return true;
         }
         return false;
      }
      
      public function §_-se§(param1:Number, param2:Number) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc3_;
         this.§_-BD§ = 0;
         this.§_-DX§ = 0;
         _loc4_;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(param1 - this.camera.x <= -380)
         {
            this.§_-DX§ = 1;
            _loc3_;
         }
         _loc4_;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc3_;
         if(param1 - this.camera.x >= 380)
         {
            this.§_-DX§ = 2;
         }
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(param2 - this.camera.y <= -280)
         {
            _loc4_;
            _loc4_;
            this.§_-BD§ = 1;
         }
         if(param2 - this.camera.y >= 280)
         {
            this.§_-BD§ = 2;
         }
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(this.§_-DX§ == 0 && this.§_-BD§ == 0)
         {
            _loc4_;
            return -1;
         }
         _loc3_;
         _loc3_;
         if(this.§_-DX§ == 0 && this.§_-BD§ == 1)
         {
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            return 0;
         }
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(this.§_-DX§ == 0 && this.§_-BD§ == 2)
         {
            _loc3_;
            _loc3_;
            return 4;
         }
         _loc3_;
         _loc3_;
         if(this.§_-DX§ == 1 && this.§_-BD§ == 0)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            return 6;
         }
         _loc4_;
         _loc4_;
         _loc4_;
         if(this.§_-DX§ == 1 && this.§_-BD§ == 1)
         {
            _loc4_;
            return 7;
         }
         _loc3_;
         _loc3_;
         _loc3_;
         if(this.§_-DX§ == 1 && this.§_-BD§ == 2)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            return 5;
         }
         _loc4_;
         if(this.§_-DX§ == 2 && this.§_-BD§ == 0)
         {
            _loc3_;
            _loc3_;
            return 2;
         }
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc4_;
         if(this.§_-DX§ == 2 && this.§_-BD§ == 1)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            return 1;
         }
         _loc4_;
         _loc4_;
         if(this.§_-DX§ == 2 && this.§_-BD§ == 2)
         {
            return 3;
         }
      }
      
      public function §_-Wb§(param1:Boolean = true) : *
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc2_:* = undefined;
         var _loc3_:§_-nB§ = null;
         var _loc4_:§_-lS§ = null;
         var _loc5_:§_-Kp§ = null;
         var _loc6_:§_-Yd§ = null;
         var _loc8_:* = 0;
         var _loc7_:* = 0;
         while(true)
         {
            _loc9_;
            _loc9_;
            _loc10_;
            if(_loc7_ >= this.§_-9T§.length)
            {
               break;
            }
            _loc10_;
            _loc9_;
            _loc5_ = this.§_-9T§[_loc7_];
            _loc4_ = this.§_-M6§[this.§_-9T§[_loc7_].type];
            _loc10_;
            _loc10_;
            this.§_-Rs§.x = 400 + (_loc5_.x - _loc4_.sheetBD.width / 2) - this.camera.x;
            _loc9_;
            this.§_-Rs§.y = 300 + (_loc5_.y - _loc4_.sheetBD.height / 2) - this.camera.y;
            _loc9_;
            this.§_-c6§.copyPixels(this.§_-0i§[_loc5_.type],this.§_-0i§[_loc5_.type].rect,this.§_-Rs§,null,null,false);
            _loc9_;
            _loc9_;
            _loc7_++;
         }
         _loc9_;
         _loc10_;
         _loc10_;
         _loc8_ = 0;
         _loc9_;
         while(true)
         {
            _loc9_;
            _loc9_;
            _loc10_;
            if(_loc8_ >= this.§_-Zx§.length)
            {
               break;
            }
            _loc9_;
            _loc9_;
            _loc10_;
            _loc10_;
            _loc3_ = this.§_-Zx§[_loc8_];
            _loc9_;
            _loc9_;
            if(_loc3_.custom)
            {
               _loc10_;
               _loc10_;
               _loc9_;
               _loc9_;
               _loc2_ = this.customParticleGFX[_loc3_.pID];
               _loc10_;
               _loc10_;
            }
            else
            {
               _loc2_ = this.particleGFX[_loc3_.pID];
            }
            this.§_-Rs§.x = 400 + (_loc3_.x - _loc2_.width / 2) - this.camera.x;
            _loc10_;
            _loc10_;
            this.§_-Rs§.y = 300 + (_loc3_.y - _loc2_.height / 2) - this.camera.y;
            _loc10_;
            _loc10_;
            this.§_-dV§.copyPixels(_loc2_.cover,_loc2_.coverRectangle,this.§_-Rs§,null,null,false);
            _loc10_;
            _loc10_;
            _loc8_++;
         }
         _loc10_;
         if(param1)
         {
            _loc10_;
            _loc10_;
            _loc8_ = 0;
            _loc10_;
            _loc10_;
            while(_loc8_ < this.§_-Sn§.length)
            {
               _loc6_ = this.§_-Sn§[_loc8_];
               _loc10_;
               _loc10_;
               if(this.§_-p1§(_loc6_.x,_loc6_.y))
               {
                  _loc9_;
                  this.§_-Rs§.x = 400 + (_loc6_.x - this.§_-4T§.frameWidth / 2) - this.camera.x;
                  _loc9_;
                  this.§_-Rs§.y = 300 + (_loc6_.y - this.§_-4T§.frameHeight / 2) - this.camera.y;
                  _loc10_;
                  this.§_-dV§.copyPixels(this.§_-4T§.cover,this.§_-4T§.coverRectangle,this.§_-Rs§,null,null,false);
                  _loc9_;
               }
               _loc8_++;
            }
         }
      }
      
      public function §_-98§(param1:SimObject) : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         _loc6_;
         _loc6_;
         _loc5_;
         var _loc2_:Number = param1.iX - this.§_-Bf§.x;
         _loc6_;
         _loc5_;
         var _loc3_:Number = param1.iY - this.§_-Bf§.y;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc6_;
         _loc6_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         var _loc4_:Number = _loc2_ * _loc2_ + _loc3_ * _loc3_;
         if(_loc4_ <= this.arenaRadius2)
         {
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            return true;
         }
         return false;
      }
      
      public function §_-LX§(param1:Number, param2:Number) : *
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         var _loc3_:Number = param1 - this.§_-Bf§.x;
         _loc6_;
         _loc6_;
         _loc6_;
         var _loc4_:Number = param2 - this.§_-Bf§.y;
         _loc6_;
         _loc6_;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc6_;
         _loc6_;
         var _loc5_:Number = _loc3_ * _loc3_ + _loc4_ * _loc4_;
         if(_loc5_ <= this.arenaRadius2)
         {
            _loc7_;
            _loc6_;
            _loc6_;
            return true;
         }
         return false;
      }
      
      public function §_-ur§(param1:KeyboardEvent) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         _loc4_;
         _loc4_;
         if((this.myTurn) && (this.§_-T8§))
         {
            _loc3_;
            _loc3_;
            this.§_-T8§ = false;
            this.§_-qg§ = false;
         }
         if(this.§_-Q3§)
         {
            stage.focus = this.chat.§_-zV§.input;
         }
         else
         {
            stage.focus = stage;
         }
         var _loc2_:int = param1.keyCode;
         this.§_-nL§[_loc2_] = true;
         _loc4_;
         _loc4_;
         _loc4_;
         if(this.§_-Q3§)
         {
            _loc4_;
            if(_loc2_ == 13)
            {
               _loc4_;
               _loc4_;
               _loc3_;
               _loc3_;
               this.chat.sendMessage();
               _loc3_;
               this.§_-dG§();
            }
            else
            {
               _loc3_;
               if(_loc2_ == 27)
               {
                  _loc3_;
                  this.§_-dG§();
                  _loc4_;
                  _loc4_;
               }
            }
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            if(_loc2_ == 84 || _loc2_ == 13)
            {
               _loc3_;
               if(_loc2_ == 84)
               {
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  this.chat.§_-Wn§ = true;
               }
               else
               {
                  this.chat.§_-Wn§ = false;
               }
               this.§_-Hu§();
               _loc3_;
            }
            if(_loc2_ == 76)
            {
               _loc3_;
               _loc3_;
               _loc4_;
               _loc4_;
               if(!this.§_-Q3§)
               {
                  _loc4_;
                  this.§_-bC§ = !this.§_-bC§;
               }
               _loc3_;
               _loc3_;
               if(this.§_-bC§)
               {
                  this.§_-qY§();
                  _loc4_;
                  _loc4_;
               }
               else
               {
                  this.§_-UJ§();
                  _loc3_;
                  _loc3_;
               }
            }
            if(_loc2_ == 27 && (this.dragging))
            {
               this.§_-KR§();
            }
         }
      }
      
      public function §_-UQ§(param1:KeyboardEvent) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         if(this.§_-Q3§)
         {
            _loc3_;
            _loc3_;
            stage.focus = this.chat.§_-zV§.input;
            _loc4_;
            _loc4_;
         }
         else
         {
            stage.focus = stage;
         }
         var _loc2_:int = param1.keyCode;
         _loc4_;
         this.§_-nL§[_loc2_] = false;
      }
      
      public function §_-9w§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.chat.§_-XP§();
      }
      
      public function addAction(param1:int, param2:int, param3:Object) : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:§_-yR§ = null;
         if(!this.myTurn)
         {
            _loc6_;
            _loc6_;
            _loc5_;
            _loc5_;
            if(!(param1 == SafeGlobal.SIMEVENT_ENDTURN && (param2 == 0 || param2 == 1)))
            {
               if(param1 == SafeGlobal.SIMEVENT_ENDTURN)
               {
                  _loc6_;
                  _loc6_;
               }
               _loc6_;
               if(!(param1 == SafeGlobal.SIMEVENT_PROJECTILE && param3.wepType == -1))
               {
                  _loc4_ = new §_-yR§(param1,param2,param3);
                  _loc6_;
                  this.simManager.addObject(_loc4_);
               }
               _loc5_;
               if(param1 == SafeGlobal.SIMEVENT_PROJECTILE)
               {
                  if(param3.wepType == -1)
                  {
                     _loc4_ = new §_-yR§(SafeGlobal.SIMEVENT_PROJAIM,param2 - 500,param3);
                     _loc6_;
                     _loc6_;
                  }
                  else if(param3.wepType == SafeGlobal.WEAPONINFO_GRAVITEEBALL[0])
                  {
                     _loc4_ = new §_-yR§(SafeGlobal.SIMEVENT_PROJAIM,param2 - 1200,param3);
                  }
                  else
                  {
                     _loc4_ = new §_-yR§(SafeGlobal.SIMEVENT_PROJAIM,param2 - 500,param3);
                  }
                  
                  this.simManager.addObject(_loc4_);
                  _loc5_;
                  _loc5_;
                  if(param3.wepType > -1)
                  {
                     _loc4_ = new §_-yR§(SafeGlobal.SIMEVENT_PROJAIMSTOP,param2 + param3.extraAim,param3);
                     _loc5_;
                     _loc5_;
                     this.simManager.addObject(_loc4_);
                  }
               }
               else
               {
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  if(param1 == SafeGlobal.SIMEVENT_MELEE)
                  {
                     _loc4_ = new §_-yR§(SafeGlobal.SIMEVENT_MELEEAIM,param2 - 500,param3);
                     _loc5_;
                     this.simManager.addObject(_loc4_);
                  }
                  else if(param1 == SafeGlobal.SIMEVENT_GATE)
                  {
                     _loc4_ = new §_-yR§(SafeGlobal.SIMEVENT_GATEAIM,param2 - 500,param3);
                     _loc5_;
                     this.simManager.addObject(_loc4_);
                     _loc4_ = new §_-yR§(SafeGlobal.SIMEVENT_GATEAIMSTOP,param2 + 1000,param3);
                     _loc5_;
                     _loc5_;
                     this.simManager.addObject(_loc4_);
                  }
                  else
                  {
                     _loc5_;
                     _loc5_;
                     _loc6_;
                     _loc6_;
                     if(param1 == SafeGlobal.SIMEVENT_PLANETSELECT)
                     {
                        _loc4_ = new §_-yR§(SafeGlobal.SIMEVENT_PLANETSELECTAIM,param2 - 500,param3);
                        _loc6_;
                        _loc6_;
                        this.simManager.addObject(_loc4_);
                        _loc4_ = new §_-yR§(SafeGlobal.SIMEVENT_PLANETSELECTAIMSTOP,param2 + 1000,param3);
                        _loc5_;
                        this.simManager.addObject(_loc4_);
                     }
                     else if(param1 == SafeGlobal.SIMEVENT_MINE)
                     {
                        _loc4_ = new §_-yR§(SafeGlobal.SIMEVENT_MINEAIM,param2 - 500,param3);
                        _loc5_;
                        _loc5_;
                        this.simManager.addObject(_loc4_);
                        _loc4_ = new §_-yR§(SafeGlobal.SIMEVENT_MINEAIMSTOP,param2,param3);
                        _loc6_;
                        this.simManager.addObject(_loc4_);
                     }
                     
                  }
                  
               }
            }
         }
      }
      
      public function §_-KR§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.dragging)
         {
            if(this.currentWeapon == -1)
            {
               this.dragging = false;
               this.§_-VF§();
               _loc2_;
            }
            else
            {
               _loc1_;
               _loc1_;
               _loc1_;
               _loc1_;
               if(this.§_-Db§[1] == SafeGlobal.WEAPONTYPE_PROJECTILE)
               {
                  _loc1_;
                  this.dragging = false;
                  this.§_-6r§();
                  _loc1_;
                  _loc1_;
                  this.§_-dp§.splice(0);
                  _loc1_;
                  _loc1_;
                  this.§_-o7§();
               }
               else
               {
                  _loc1_;
                  if(this.§_-Db§[1] == SafeGlobal.WEAPONTYPE_MINE)
                  {
                     _loc2_;
                     _loc2_;
                     this.dragging = false;
                     _loc1_;
                     this.§_-WK§();
                  }
                  else
                  {
                     _loc1_;
                     if(this.§_-Db§[1] == SafeGlobal.WEAPONTYPE_MELEE)
                     {
                        _loc2_;
                        this.dragging = false;
                        this.§_-Y9§();
                        _loc1_;
                     }
                     else
                     {
                        _loc1_;
                        _loc1_;
                        if(this.§_-Db§[1] == SafeGlobal.WEAPONTYPE_TELEPORT)
                        {
                           _loc1_;
                           this.dragging = false;
                           _loc1_;
                           this.§_-sx§();
                           _loc2_;
                           _loc2_;
                        }
                        else
                        {
                           _loc2_;
                           _loc2_;
                           if(this.§_-Db§[1] == SafeGlobal.WEAPONTYPE_INCOMING)
                           {
                              this.dragging = false;
                              this.§_-uw§();
                              _loc1_;
                           }
                           else
                           {
                              _loc2_;
                              if(this.§_-Db§[1] == SafeGlobal.WEAPONTYPE_GATE)
                              {
                                 this.dragging = false;
                                 _loc2_;
                                 this.§_-x9§();
                              }
                              else if(this.§_-Db§[1] == SafeGlobal.WEAPONTYPE_PLANETGATE)
                              {
                                 this.dragging = false;
                                 _loc2_;
                                 _loc2_;
                                 this.§_-Wt§();
                              }
                              
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function simObjectWalk(param1:SimObject, param2:Boolean = false) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = 0;
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         if(param1.walkDir == 1)
         {
            _loc5_;
            this.§_-bl§(param1,param2);
            _loc5_;
         }
         else
         {
            _loc4_;
            _loc4_;
            if(param1.walkDir == -1)
            {
               this.§_-8G§(param1,param2);
               _loc5_;
               _loc5_;
            }
         }
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc3_ = param1.lastSimTime;
         _loc4_;
         _loc4_;
         if(this.myTurn)
         {
            _loc5_;
            this.§_-tO§();
            _loc4_;
         }
         else
         {
            this.hideBubbles();
            _loc5_;
            _loc5_;
         }
         if(param1 is Unit)
         {
            param1.updatePoints();
            this.checkMineProximity(Unit(param1),_loc3_);
            _loc5_;
            this.checkPowerUpProximity(param1,_loc3_);
            _loc4_;
         }
         else
         {
            this.checkPowerUpProximity(param1,_loc3_);
            _loc5_;
            _loc5_;
            _loc4_;
            if(param1 is Mine && (Mine(param1).roving) && (Mine(param1).§_-HV§))
            {
               _loc5_;
               this.§_-UO§(Mine(param1),_loc3_);
            }
            this.checkUnitProximity(Mine(param1),_loc3_);
         }
         return _loc3_;
      }
      
      public function doEmitters(param1:Projectile) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc4_;
         _loc4_;
         _loc4_;
         if(!param1.test && !this.simOnly && !this.costumeCacheOnly)
         {
            _loc3_;
            _loc3_;
            if(param1.§_-W5§.length > 1)
            {
               _loc3_;
               param1.§_-W5§.sortOn("pos");
            }
            _loc2_ = 0;
            while(_loc2_ < param1.§_-W5§.length)
            {
               param1.§_-W5§[_loc2_].emit(param1);
               _loc3_;
               _loc3_;
               _loc2_++;
               _loc3_;
            }
         }
      }
      
      public function §_-ml§() : *
      {
         var _loc14_:* = true;
         var _loc15_:* = false;
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         var _loc5_:* = false;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         _loc14_;
         this.camera.§_-zM§();
         var _loc1_:Array = this.simManager.toSim;
         this.§_-tT§ = 5000;
         this.§_-mn§ = 5000;
         this.§_-rB§ = -5000;
         _loc15_;
         _loc15_;
         this.§_-0Q§ = -5000;
         _loc15_;
         _loc15_;
         _loc15_;
         _loc14_;
         _loc14_;
         if((this.§_-a9§.active) && this.turnState == "shoot")
         {
            this.§_-rB§ = this.§_-tT§ = this.§_-a9§.x;
            _loc14_;
            this.§_-0Q§ = this.§_-mn§ = this.§_-a9§.y;
         }
         else if(this.camera.§_-i9§.length > 0)
         {
            _loc2_ = [];
            _loc3_ = [];
            _loc15_;
            _loc15_;
            _loc4_ = 0;
            while(true)
            {
               _loc15_;
               _loc15_;
               if(_loc4_ >= this.camera.§_-i9§.length)
               {
                  break;
               }
               if(this.§_-98§(this.camera.§_-i9§[_loc4_]))
               {
                  _loc2_.push(_loc4_);
                  _loc14_;
                  _loc14_;
               }
               else
               {
                  _loc15_;
                  _loc15_;
                  _loc14_;
                  _loc14_;
                  _loc14_;
                  _loc14_;
                  _loc14_;
                  _loc14_;
                  _loc14_;
                  _loc14_;
                  if(this.camera.§_-i9§[_loc4_].startSimTime == 0 || this.camera.§_-i9§[_loc4_].startSimTime < this.currentTime)
                  {
                     _loc3_.push(_loc4_);
                  }
               }
               _loc4_++;
               _loc15_;
            }
            _loc15_;
            _loc14_;
            _loc14_;
            if(_loc2_.length == 0 && _loc3_.length > 0)
            {
               SoundManager.§_-7§();
               if(this.§_-rB§ < this.camera.§_-i9§[_loc3_[0]].iX)
               {
                  _loc15_;
                  this.§_-rB§ = this.camera.§_-i9§[_loc3_[0]].iX;
                  _loc15_;
                  _loc15_;
               }
               _loc14_;
               _loc14_;
               if(this.§_-tT§ > this.camera.§_-i9§[_loc3_[0]].iX)
               {
                  _loc14_;
                  _loc14_;
                  this.§_-tT§ = this.camera.§_-i9§[_loc3_[0]].iX;
               }
               _loc14_;
               _loc14_;
               if(this.§_-0Q§ < this.camera.§_-i9§[_loc3_[0]].iY)
               {
                  _loc15_;
                  this.§_-0Q§ = this.camera.§_-i9§[_loc3_[0]].iY;
               }
               _loc15_;
               _loc15_;
               if(this.§_-mn§ > this.camera.§_-i9§[_loc3_[0]].iY)
               {
                  _loc14_;
                  _loc14_;
                  this.§_-mn§ = this.camera.§_-i9§[_loc3_[0]].iY;
                  _loc15_;
                  _loc15_;
               }
            }
            else if(_loc2_.length > 0)
            {
               SoundManager.§_-9l§();
               _loc15_;
               _loc15_;
               _loc4_ = 0;
               while(_loc4_ < _loc2_.length)
               {
                  if(this.§_-rB§ < this.camera.§_-i9§[_loc2_[_loc4_]].iX)
                  {
                     _loc15_;
                     _loc15_;
                     this.§_-rB§ = this.camera.§_-i9§[_loc2_[_loc4_]].iX;
                     _loc15_;
                     _loc15_;
                  }
                  _loc15_;
                  _loc15_;
                  if(this.§_-tT§ > this.camera.§_-i9§[_loc2_[_loc4_]].iX)
                  {
                     this.§_-tT§ = this.camera.§_-i9§[_loc2_[_loc4_]].iX;
                  }
                  _loc15_;
                  _loc15_;
                  _loc15_;
                  _loc15_;
                  if(this.§_-0Q§ < this.camera.§_-i9§[_loc2_[_loc4_]].iY)
                  {
                     _loc14_;
                     _loc14_;
                     this.§_-0Q§ = this.camera.§_-i9§[_loc2_[_loc4_]].iY;
                  }
                  if(this.§_-mn§ > this.camera.§_-i9§[_loc2_[_loc4_]].iY)
                  {
                     _loc14_;
                     this.§_-mn§ = this.camera.§_-i9§[_loc2_[_loc4_]].iY;
                  }
                  _loc4_++;
               }
            }
            
         }
         
         _loc15_;
         _loc14_;
         _loc14_;
         if(!(this.§_-tT§ == 5000) && !(this.§_-mn§ == 5000) && !(this.§_-rB§ == -5000) && !(this.§_-0Q§ == -5000))
         {
            _loc15_;
            _loc14_;
            _loc14_;
            this.§_-cg§ = (this.§_-rB§ + this.§_-tT§) / 2;
            _loc15_;
            _loc15_;
            _loc15_;
            _loc14_;
            this.§_-32§ = (this.§_-0Q§ + this.§_-mn§) / 2;
            _loc14_;
            _loc15_;
            _loc15_;
            _loc15_;
            _loc15_;
            _loc15_;
            _loc15_;
            _loc15_;
            _loc15_;
            _loc15_;
            if((this.camera.§_-i9§.length > 0) && (_loc2_) && _loc2_.length > 0)
            {
               _loc14_;
               if(this.§_-cg§ < this.§ try§)
               {
                  this.§_-cg§ = this.§ try§;
                  _loc15_;
               }
               else
               {
                  _loc15_;
                  _loc14_;
                  _loc14_;
                  if(this.§_-cg§ > this.§_-Y5§)
                  {
                     this.§_-cg§ = this.§_-Y5§;
                  }
               }
               _loc15_;
               _loc15_;
               _loc15_;
               _loc15_;
               if(this.§_-32§ < this.§_-Jn§)
               {
                  _loc14_;
                  this.§_-32§ = this.§_-Jn§;
               }
               else if(this.§_-32§ > this.§_-on§)
               {
                  _loc14_;
                  _loc14_;
                  this.§_-32§ = this.§_-on§;
               }
               
            }
            _loc14_;
            this.camera.§_-Vx§ = this.§_-cg§;
            _loc15_;
            _loc15_;
            _loc14_;
            this.camera.§_-He§ = this.§_-32§;
            _loc15_;
            _loc5_ = this.camera.§_-l8§(this.§_-Vr§);
            _loc15_;
            _loc15_;
            _loc15_;
            if(this.§_-dp§.length > 0 && ((_loc5_) || this.§_-RA§ > 0))
            {
               _loc15_;
               _loc15_;
               this.§_-6r§();
            }
            _loc15_;
            _loc15_;
            if(this.§_-RA§ > 0)
            {
               _loc14_;
               _loc14_;
               _loc15_;
               _loc14_;
               _loc14_;
               this.§_-RA§--;
               _loc14_;
               _loc15_;
               _loc8_ = Math.random();
               _loc14_;
               _loc9_ = Math.random();
               _loc15_;
               _loc14_;
               _loc10_ = Math.round((_loc8_ > 0.5?1:-1) * this.§_-RA§ / 2);
               _loc11_ = Math.round((_loc9_ > 0.5?1:-1) * this.§_-RA§ / 2);
               _loc14_;
               _loc14_;
               _loc14_;
               _loc14_;
               _loc14_;
               _loc6_ = 400 - this.camera.x;
               _loc14_;
               _loc14_;
               _loc14_;
               _loc14_;
               _loc14_;
               _loc15_;
               _loc15_;
               _loc15_;
               _loc15_;
               _loc7_ = 300 - this.camera.y;
               this.screen.x = _loc6_;
               _loc15_;
               _loc15_;
               this.screen.y = _loc7_;
               this.screen.x = this.screen.x + _loc10_;
               _loc15_;
               _loc15_;
               this.screen.y = this.screen.y + _loc11_;
               this.§_-G9§.x = _loc10_;
               _loc14_;
               this.§_-G9§.y = _loc11_;
               _loc14_;
               _loc14_;
               _loc14_;
               if(this.§_-dp§.length > 0)
               {
                  this.§_-oS§();
                  _loc15_;
               }
            }
            else
            {
               _loc14_;
               _loc14_;
               _loc14_;
               _loc14_;
               _loc15_;
               _loc15_;
               _loc6_ = 400 - this.camera.x;
               _loc15_;
               _loc7_ = 300 - this.camera.y;
               this.screen.x = _loc6_;
               _loc14_;
               _loc14_;
               this.screen.y = _loc7_;
               this.§_-G9§.x = 0;
               this.§_-G9§.y = 0;
               _loc15_;
               _loc14_;
               _loc14_;
               _loc15_;
               if(this.§_-dp§.length > 0 && (_loc5_))
               {
                  this.§_-oS§();
               }
            }
         }
         else
         {
            this.debugLayer.graphics.clear();
            _loc14_;
            _loc14_;
            SoundManager.§_-9l§();
            _loc15_;
            if(!this.§_-LX§(this.camera.x,this.camera.y))
            {
               this.camera.§_-Vx§ = this.§_-Bf§.x;
               _loc14_;
               this.camera.§_-He§ = this.§_-Bf§.y;
               _loc15_;
            }
            _loc14_;
            _loc14_;
            _loc5_ = this.camera.§_-l8§(false);
            _loc15_;
            _loc15_;
            _loc15_;
            _loc15_;
            if(this.§_-dp§.length > 0 && (_loc5_))
            {
               this.§_-6r§();
               _loc14_;
               _loc14_;
            }
            this.screen.x = 400 - this.camera.x;
            _loc14_;
            _loc14_;
            this.screen.y = 300 - this.camera.y;
            _loc15_;
            if(this.§_-dp§.length > 0 && (_loc5_))
            {
               _loc14_;
               this.§_-oS§();
            }
         }
         this.starMap.moveTo(this.camera.x,this.camera.y);
      }
      
      public function showWaiting() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.§_-Km§.visible = true;
         _loc2_;
         this.bringToFront(this.§_-Km§);
      }
      
      public function §_-rf§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-Km§.visible = false;
      }
      
      public function checkPowerUpProximity(param1:SimObject, param2:int, param3:String = "") : *
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfucation" for better results.
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function §_-EO§(param1:int) : *
      {
         var _loc13_:* = true;
         var _loc14_:* = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = undefined;
         var _loc5_:§_-nB§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = 0;
         var _loc8_:§_-lS§ = null;
         var _loc9_:§_-Kp§ = null;
         var _loc10_:* = 0;
         _loc13_;
         _loc13_;
         _loc13_;
         if(this.§_-Zx§.length > 0)
         {
            _loc14_;
            _loc7_ = this.§_-Zx§.length - 1;
            while(true)
            {
               _loc14_;
               _loc14_;
               _loc14_;
               _loc14_;
               if(_loc7_ < 0)
               {
                  break;
               }
               _loc14_;
               _loc13_;
               _loc13_;
               _loc5_ = this.§_-Zx§[_loc7_];
               _loc14_;
               _loc13_;
               _loc13_;
               _loc13_;
               _loc14_;
               if(param1 < _loc5_.§_-hv§ && (this.§_-p1§(_loc5_.x,_loc5_.y)))
               {
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  _loc14_;
                  _loc14_;
                  _loc14_;
                  _loc6_ = (param1 - _loc5_.§_-RI§) / _loc5_.§_-qb§;
                  _loc14_;
                  _loc14_;
                  if(_loc5_.custom)
                  {
                     _loc13_;
                     _loc13_;
                     _loc13_;
                     _loc13_;
                     _loc4_ = this.customParticleGFX[_loc5_.pID];
                     _loc14_;
                     _loc14_;
                  }
                  else
                  {
                     _loc13_;
                     _loc13_;
                     _loc13_;
                     _loc13_;
                     _loc4_ = this.particleGFX[_loc5_.pID];
                  }
                  this.§_-b5§ = _loc4_.getFrameRect(_loc6_);
                  _loc13_;
                  _loc13_;
                  this.§_-sC§.x = 400 + (_loc5_.x - this.§_-b5§.height / 2) - this.camera.x;
                  _loc14_;
                  this.§_-sC§.y = 300 + (_loc5_.y - this.§_-b5§.height / 2) - this.camera.y;
                  _loc14_;
                  this.§_-dV§.copyPixels(_loc4_.spriteSheet,this.§_-b5§,this.§_-sC§,null,null,true);
                  _loc14_;
                  _loc14_;
               }
               else if(param1 >= _loc5_.§_-hv§)
               {
                  _loc13_;
                  this.§_-md§.push(_loc5_);
                  this.§_-Zx§.splice(_loc7_,1);
               }
               
               _loc14_;
               _loc14_;
               _loc7_--;
            }
            _loc13_;
            _loc13_;
         }
         _loc14_;
         _loc14_;
         if(this.§_-9T§.length > 0)
         {
            _loc14_;
            _loc14_;
            _loc13_;
            _loc10_ = this.§_-9T§.length - 1;
            _loc14_;
            while(_loc10_ >= 0)
            {
               _loc9_ = this.§_-9T§[_loc10_];
               _loc14_;
               _loc14_;
               _loc14_;
               _loc14_;
               _loc9_.life--;
               _loc13_;
               _loc14_;
               _loc13_;
               _loc13_;
               if(this.§_-9T§[_loc10_].life <= 0)
               {
                  _loc14_;
                  _loc14_;
                  _loc13_;
                  this.§_-9T§.splice(_loc10_,1);
                  _loc13_;
               }
               else if(this.§_-p1§(_loc9_.x,_loc9_.y))
               {
                  _loc13_;
                  _loc8_ = this.§_-M6§[_loc9_.type];
                  this.§_-b5§.x = 0;
                  this.§_-b5§.y = 0;
                  this.§_-b5§.width = _loc8_.sheetBD.width;
                  _loc14_;
                  this.§_-b5§.height = _loc8_.sheetBD.height;
                  _loc14_;
                  _loc14_;
                  this.§_-sC§.x = 400 + (_loc9_.x - this.§_-b5§.width / 2) - this.camera.x;
                  this.§_-sC§.y = 300 + (_loc9_.y - this.§_-b5§.height / 2) - this.camera.y;
                  _loc13_;
                  this.§_-c6§.copyPixels(_loc8_.sheetBD,this.§_-b5§,this.§_-sC§,null,null,true);
               }
               
               _loc13_;
               _loc13_;
               _loc10_--;
            }
         }
      }
      
      public function §_-sf§(param1:int) : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:Bitmap = null;
         var _loc4_:Bitmap = null;
         var _loc2_:* = 0;
         while(_loc2_ < this.planets.length)
         {
            _loc3_ = new Bitmap(this.planets[_loc2_].gfx);
            _loc4_ = new Bitmap(this.planets[_loc2_].blank);
            _loc5_;
            _loc5_;
            _loc3_.x = _loc2_ * 200;
            _loc5_;
            _loc5_;
            _loc3_.y = 0 + param1;
            _loc4_.x = _loc2_ * 200;
            _loc5_;
            _loc5_;
            _loc4_.y = 200 + param1;
            this.§_-wP§.addChild(_loc3_);
            _loc6_;
            this.§_-wP§.addChild(_loc4_);
            _loc5_;
            _loc2_++;
         }
      }
      
      public function showDamage(param1:Number, param2:Number, param3:Number, param4:int, param5:int) : *
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc6_:String = null;
         _loc8_;
         _loc7_;
         _loc7_;
         _loc7_;
         if(!this.simOnly && !this.costumeCacheOnly)
         {
            this.damage.push(new §_-nn§());
            _loc7_;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc6_ = param4.toString();
            _loc8_;
            _loc8_;
            _loc7_;
            _loc8_;
            if(param4 < 0)
            {
               _loc7_;
               _loc7_;
               _loc8_;
               _loc6_ = _loc6_.substr(1);
            }
            if(param4 > 0)
            {
               _loc7_;
               _loc7_;
               _loc7_;
               _loc8_;
               _loc8_;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc6_ = "-" + _loc6_;
               _loc7_;
               _loc7_;
            }
            else
            {
               _loc8_;
               _loc8_;
               _loc6_ = "+" + _loc6_;
               _loc7_;
               _loc7_;
            }
            _loc8_;
            _loc7_;
            _loc8_;
            _loc8_;
            this.damage[this.damage.length - 1].container.num.text = _loc6_;
            _loc7_;
            _loc7_;
            this.damage[this.damage.length - 1].container.numshadow.text = _loc6_;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc7_;
            _loc7_;
            _loc8_;
            _loc8_;
            this.damage[this.damage.length - 1].container.num.textColor = SafeGlobal.colour_hex[this.teams[param5].colourID];
            _loc7_;
            _loc8_;
            _loc7_;
            _loc8_;
            this.damage[this.damage.length - 1].x = param1;
            _loc8_;
            _loc7_;
            _loc7_;
            _loc8_;
            _loc8_;
            _loc7_;
            _loc7_;
            this.damage[this.damage.length - 1].y = param2;
            this.damage[this.damage.length - 1].rotation = param3 * 180 / this.PI;
            _loc8_;
            _loc8_;
            this.screen.addChild(this.damage[this.damage.length - 1]);
         }
      }
      
      public function addParticleLine(param1:Number, param2:Number, param3:Number, param4:Number, param5:int, param6:int, param7:Boolean) : *
      {
         var _loc11_:* = true;
         var _loc12_:* = false;
         _loc12_;
         _loc12_;
         _loc12_;
         _loc12_;
         var _loc8_:Number = param1 - param3;
         _loc11_;
         _loc11_;
         _loc11_;
         var _loc9_:Number = param2 - param4;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         _loc12_;
         _loc12_;
         this.§_-Zx§.push(new §_-nB§(param6,param1,param2,0,0,param5,200,param7));
      }
      
      public function addProjParticlesNoFill(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:Boolean, param8:int, param9:Number) : *
      {
         var _loc10_:* = false;
         var _loc11_:* = true;
         _loc11_;
         _loc10_;
         if(this.§_-md§.length == 0)
         {
            _loc11_;
            _loc10_;
            this.§_-Zx§.push(new §_-nB§(param1,param2,param3,0,0,param6,param8,param7));
            _loc10_;
         }
         else
         {
            _loc11_;
            _loc11_;
            _loc10_;
            this.§_-Zx§.push(this.§_-md§[this.§_-md§.length - 1]);
            _loc11_;
            _loc11_;
            _loc11_;
            _loc10_;
            _loc10_;
            _loc11_;
            this.§_-Zx§[this.§_-Zx§.length - 1].setVals(param1,param2,param3,0,0,param6,param8,param7);
            _loc11_;
            _loc11_;
            this.§_-md§.splice(this.§_-md§.length - 1,1);
         }
      }
      
      public function addProjParticles(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:Boolean, param8:int, param9:Number, param10:int = 1) : *
      {
         var _loc23_:* = true;
         var _loc24_:* = false;
         _loc24_;
         _loc24_;
         _loc24_;
         var _loc11_:Number = Math.random() * param9 * 2 - param9;
         _loc24_;
         _loc24_;
         _loc23_;
         _loc23_;
         var _loc12_:Number = Math.random() * param9 * 2 - param9;
         _loc24_;
         var _loc13_:Number = param4 - param2;
         _loc23_;
         var _loc14_:Number = param5 - param3;
         var _loc15_:Number = Math.sqrt(_loc13_ * _loc13_ + _loc14_ * _loc14_);
         _loc23_;
         var _loc16_:int = param10;
         var _loc17_:int = Math.floor(_loc15_ / _loc16_);
         _loc24_;
         _loc23_;
         _loc23_;
         var _loc18_:Number = _loc13_ / _loc17_;
         _loc24_;
         _loc24_;
         _loc23_;
         var _loc19_:Number = _loc14_ / _loc17_;
         _loc23_;
         _loc23_;
         _loc24_;
         _loc24_;
         var _loc20_:Number = _loc11_ * _loc18_;
         _loc23_;
         _loc23_;
         _loc24_;
         _loc24_;
         var _loc21_:Number = _loc12_ * _loc19_;
         var _loc22_:* = 0;
         while(_loc22_ < _loc17_)
         {
            _loc23_;
            _loc23_;
            _loc24_;
            _loc24_;
            _loc24_;
            _loc24_;
            _loc23_;
            _loc11_ = Math.random() * param9 * 2 - param9;
            _loc23_;
            _loc23_;
            _loc12_ = Math.random() * param9 * 2 - param9;
            _loc23_;
            _loc23_;
            _loc23_;
            if(this.§_-md§.length == 0)
            {
               _loc23_;
               _loc23_;
               _loc23_;
               _loc23_;
               _loc23_;
               _loc23_;
               _loc24_;
               _loc24_;
               _loc23_;
               _loc23_;
               _loc24_;
               _loc24_;
               _loc24_;
               _loc23_;
               _loc24_;
               _loc24_;
               _loc24_;
               this.§_-Zx§.push(new §_-nB§(param1,param2 + _loc18_ * _loc22_ + _loc11_ * _loc19_,param3 + _loc19_ * _loc22_ + _loc12_ * _loc18_,_loc20_,_loc21_,param6,param8,param7));
            }
            else
            {
               _loc23_;
               _loc24_;
               this.§_-Zx§.push(this.§_-md§[this.§_-md§.length - 1]);
               _loc23_;
               _loc24_;
               _loc24_;
               _loc23_;
               this.§_-Zx§[this.§_-Zx§.length - 1].setVals(param1,param2 + _loc18_ * _loc22_ + _loc11_ * _loc19_,param3 + _loc19_ * _loc22_ + _loc12_ * _loc18_,_loc20_,_loc21_,param6,param8,param7);
               this.§_-md§.splice(this.§_-md§.length - 1,1);
               _loc23_;
               _loc23_;
            }
            _loc22_++;
         }
      }
      
      public function checkMineProximity(param1:Unit, param2:int) : *
      {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc8_:Mine = null;
         var _loc9_:§_-UC§ = null;
         var _loc6_:* = 0;
         while(true)
         {
            _loc11_;
            _loc11_;
            if(_loc6_ >= this.§_-ki§.length)
            {
               break;
            }
            _loc8_ = this.§_-ki§[_loc6_];
            _loc11_;
            _loc11_;
            _loc11_;
            if((_loc8_.active) && (_loc8_.triggerTime == 0 && !param1.removed && (!_loc8_.ignoreUnit || _loc8_.ignoreUnit && !(param1 == _loc8_.ignoreUnit))) && !this.§_-ZF§)
            {
               _loc11_;
               _loc11_;
               _loc10_;
               _loc3_ = _loc8_.iX - param1.iX;
               _loc10_;
               _loc10_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc4_ = _loc8_.iY - param1.iY;
               _loc10_;
               _loc10_;
               _loc11_;
               _loc5_ = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
               if(_loc5_ <= _loc8_.triggerDistance)
               {
                  _loc11_;
                  if(_loc8_.roving)
                  {
                     _loc10_;
                     _loc10_;
                  }
                  _loc11_;
                  _loc11_;
                  if((_loc8_.roving) || (this.mods[SafeGlobal.MOD_INSTANTMINES]))
                  {
                     _loc10_;
                     _loc8_.triggerMe(param2,20);
                  }
                  else
                  {
                     _loc8_.triggerMe(param2);
                  }
               }
            }
            _loc6_++;
         }
         var _loc7_:* = 0;
         _loc11_;
         _loc11_;
         while(_loc7_ < this.skyMines.length)
         {
            _loc9_ = this.skyMines[_loc7_];
            _loc11_;
            _loc11_;
            _loc10_;
            _loc10_;
            _loc11_;
            if((_loc9_.active) && !_loc9_.§_-Ec§ && !param1.removed && !this.§_-ZF§)
            {
               _loc11_;
               _loc10_;
               _loc3_ = _loc9_.iX - param1.iX;
               _loc11_;
               _loc11_;
               _loc10_;
               _loc10_;
               _loc4_ = _loc9_.iY - param1.iY;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc5_ = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
               if((Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_)) <= _loc9_.triggerDistance)
               {
                  _loc11_;
                  _loc11_;
                  _loc9_.triggerMe(param2);
               }
            }
            _loc7_++;
         }
      }
      
      public function §_-VK§(param1:Unit) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         if(!this.simOnly && !this.costumeCacheOnly && this.turnState == "shoot")
         {
            _loc2_;
            this.§_-Yv§.x = param1.iX;
            _loc2_;
            this.§_-Yv§.y = param1.iY;
            _loc2_;
            this.§_-Yv§.rotation = param1.rotation;
            _loc3_;
            this.§_-Yv§.visible = true;
            this.§_-mh§.setChildIndex(param1,this.§_-mh§.numChildren - 1);
         }
      }
      
      public function §_-tO§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.§_-Yv§.visible = false;
      }
      
      public function §_-tS§(param1:Unit) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc2_;
         this.bubbles.x = param1.iX;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         this.bubbles.y = param1.iY;
         _loc3_;
         _loc3_;
         _loc3_;
         this.bubbles.rotation = param1.rotation;
         _loc3_;
         _loc3_;
         this.bubbles.visible = true;
         _loc3_;
         this.§_-mh§.setChildIndex(param1,this.§_-mh§.numChildren - 1);
      }
      
      public function hideBubbles() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.bubbles.visible = false;
      }
      
      public function animateThisMinesProjectile(param1:Mine) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         while(_loc2_ < this.projectiles.length)
         {
            _loc4_;
            _loc3_;
            _loc4_;
            _loc4_;
            if((this.projectiles[_loc2_].mine) && this.projectiles[_loc2_].mine == param1)
            {
               _loc4_;
               this.projectiles[_loc2_].animate = true;
               _loc3_;
               _loc3_;
            }
            _loc2_++;
            _loc3_;
         }
      }
      
      public function §_-UO§(param1:Mine, param2:int) : *
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:int = this.§_-ki§.length - 1;
         while(_loc6_ >= 0)
         {
            _loc8_;
            _loc8_;
            _loc8_;
            if(this.§_-ki§[_loc6_] != param1)
            {
               _loc8_;
               _loc8_;
               _loc7_;
               _loc3_ = param1.iX - this.§_-ki§[_loc6_].iX;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc4_ = param1.iY - this.§_-ki§[_loc6_].iY;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc5_ = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
               if(_loc5_ < 15)
               {
                  _loc8_;
                  _loc7_;
                  if(this.§_-ki§[_loc6_].payloadCount > 0)
                  {
                     param1.payloadCount = 6;
                  }
                  else if(this.§_-ki§[_loc6_].drillProj)
                  {
                     _loc7_;
                     _loc7_;
                     param1.drillProj = true;
                     _loc7_;
                     _loc7_;
                  }
                  
                  this.removeMine(this.§_-ki§[_loc6_]);
                  _loc8_;
                  param1.damage = param1.damage + 20;
                  _loc7_;
                  param1.§_-H§ = param1.§_-H§ + 8;
                  param1.outerRadius = param1.outerRadius + 8;
                  param1.explosionRadius = param1.explosionRadius + 8;
                  _loc7_;
               }
            }
            _loc8_;
            _loc7_;
            _loc7_;
            _loc6_--;
            _loc8_;
         }
      }
      
      public function checkUnitProximity(param1:Mine, param2:int) : *
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc3_:* = 0;
         while(_loc3_ < this.units.length)
         {
            if((param1.active) && !this.§_-ZF§ && param1.triggerTime == 0 && !this.units[_loc3_].removed)
            {
               _loc7_;
               _loc7_;
               _loc7_;
               _loc4_ = param1.iX - this.units[_loc3_].iX;
               _loc7_;
               _loc7_;
               _loc5_ = param1.iY - this.units[_loc3_].iY;
               _loc8_;
               _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               _loc7_;
               _loc8_;
               _loc8_;
               _loc7_;
               if((param1.roving) && (param1.ignoreUnit && this.units[_loc3_] == param1.ignoreUnit) && _loc6_ > param1.triggerDistance)
               {
                  _loc7_;
                  param1.ignoreUnit = null;
               }
               if(_loc6_ <= param1.triggerDistance && ((!param1.ignoreUnit) || (param1.ignoreUnit && !(this.units[_loc3_] == param1.ignoreUnit))))
               {
                  _loc7_;
                  if(param1.roving)
                  {
                  }
                  if((param1.roving) || (this.mods[SafeGlobal.MOD_INSTANTMINES]))
                  {
                     param1.triggerMe(param2,20);
                  }
                  else
                  {
                     param1.triggerMe(param2);
                     _loc7_;
                  }
               }
            }
            _loc3_++;
            _loc7_;
         }
      }
      
      public function simEvent(param1:§_-yR§) : *
      {
         var _loc72_:* = true;
         var _loc73_:* = false;
         var _loc2_:Unit = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = NaN;
         var _loc10_:String = null;
         var _loc11_:* = false;
         var _loc12_:Point = null;
         var _loc13_:Point = null;
         var _loc14_:Point = null;
         var _loc15_:* = 0;
         var _loc16_:Array = null;
         var _loc17_:String = null;
         var _loc18_:String = null;
         var _loc19_:String = null;
         var _loc20_:Array = null;
         var _loc21_:Array = null;
         var _loc22_:Array = null;
         var _loc23_:* = 0;
         var _loc24_:* = 0;
         var _loc25_:* = 0;
         var _loc26_:* = 0;
         var _loc27_:* = 0;
         var _loc28_:* = 0;
         var _loc29_:* = 0;
         var _loc30_:* = false;
         var _loc31_:* = NaN;
         var _loc32_:* = NaN;
         var _loc33_:* = NaN;
         var _loc34_:* = NaN;
         var _loc35_:* = 0;
         var _loc36_:String = null;
         var _loc37_:Array = null;
         var _loc38_:* = 0;
         var _loc39_:* = 0;
         var _loc40_:* = 0;
         var _loc41_:* = 0;
         var _loc42_:* = NaN;
         var _loc43_:* = NaN;
         var _loc44_:* = NaN;
         var _loc45_:* = 0;
         var _loc46_:* = NaN;
         var _loc47_:* = NaN;
         var _loc48_:* = NaN;
         var _loc49_:* = NaN;
         var _loc50_:* = NaN;
         var _loc51_:* = NaN;
         var _loc52_:* = NaN;
         var _loc53_:* = NaN;
         var _loc54_:* = NaN;
         var _loc55_:* = NaN;
         var _loc56_:* = 0;
         var _loc57_:* = 0;
         var _loc58_:* = 0;
         var _loc59_:* = 0;
         var _loc60_:* = 0;
         var _loc61_:* = false;
         var _loc62_:* = false;
         var _loc63_:* = NaN;
         var _loc64_:* = NaN;
         var _loc65_:* = 0;
         var _loc66_:* = 0;
         var _loc67_:Array = null;
         var _loc68_:* = 0;
         var _loc69_:* = 0;
         var _loc70_:* = 0;
         _loc72_;
         _loc72_;
         _loc72_;
         _loc72_;
         if(param1.type == SafeGlobal.SIMEVENT_STARTWALK)
         {
            _loc73_;
            _loc73_;
            _loc73_;
            if(this.§_-XG§ < param1.time)
            {
               _loc72_;
               _loc72_;
               _loc72_;
               _loc72_;
               _loc72_;
               this.simManager.addObject(this.units[this.currentUnit],"simevent startwalk",true);
               _loc73_;
               _loc73_;
               _loc73_;
               _loc73_;
               _loc72_;
               _loc72_;
               this.units[this.currentUnit].lastSimTime = this.units[this.currentUnit].startSimTime = param1.time;
               _loc73_;
               _loc73_;
               this.units[this.currentUnit].walkDir = param1.extra.walkDir;
               _loc73_;
               _loc72_;
               this.units[this.currentUnit].facing = this.units[this.currentUnit].walkDir;
               _loc72_;
               _loc73_;
               _loc73_;
               this.units[this.currentUnit].doFlip(this.units[this.currentUnit].walkDir * -1);
               _loc72_;
               this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_WALK]);
               _loc72_;
               _loc72_;
               this.simManager.§_-nd§();
               _loc72_;
               this.§_-QY§();
            }
            else
            {
               SafeGlobal.§_-dw§ = SafeGlobal.§_-dw§ + String("walk timeout: " + this.§_-XG§ + "   simevent time: " + param1.time + "|");
            }
         }
         else
         {
            _loc72_;
            _loc72_;
            if(param1.type == SafeGlobal.SIMEVENT_STOPWALK)
            {
               _loc73_;
               _loc73_;
               this.simManager.removeObject(this.units[this.currentUnit],true);
               _loc73_;
               if(this.turnState == "shoot")
               {
                  _loc72_;
                  this.§_-tS§(this.units[this.currentUnit]);
                  this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_THINKINGSETUP,SafeGlobal.ANIM_UNIT_THINKING]);
               }
               else
               {
                  this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
               }
               _loc73_;
               this.units[this.currentUnit].walkDir = 0;
               _loc73_;
               _loc72_;
               if(!this.replay)
               {
                  this.§_-XG§ = param1.time + this.§_-xN§;
               }
               else
               {
                  this.§_-XG§ = 0;
                  _loc73_;
               }
            }
            else
            {
               _loc73_;
               if(param1.type == SafeGlobal.SIMEVENT_ENDTURN)
               {
                  _loc72_;
                  _loc72_;
                  if(this.myTurn)
                  {
                     _loc73_;
                     _loc73_;
                     this.sendEndOfTurn(param1.time);
                     _loc72_;
                     if(this.§_-T8§)
                     {
                        this.§_-qg§ = true;
                        this.§_-Gg§();
                        _loc72_;
                     }
                  }
                  this.simManager.turnOver = true;
                  this.turnState = "end";
                  this.camera.removeTarget(this.units[this.currentUnit]);
                  _loc72_;
                  this.§_-6M§(this.§_-GD§);
                  this.hideBubbles();
                  _loc73_;
                  _loc3_ = this.gates.length - 1;
                  while(true)
                  {
                     _loc72_;
                     if(_loc3_ < 0)
                     {
                        break;
                     }
                     _loc73_;
                     if(this.gates[_loc3_].placing)
                     {
                        _loc73_;
                        _loc73_;
                        this.removeGate(this.gates[_loc3_]);
                     }
                     _loc72_;
                     _loc72_;
                     _loc73_;
                     _loc73_;
                     _loc3_--;
                  }
                  _loc72_;
                  _loc72_;
                  _loc73_;
                  _loc73_;
                  if(this.myTurn)
                  {
                     _loc73_;
                     _loc73_;
                     _loc72_;
                     _loc72_;
                     _loc73_;
                     _loc73_;
                     _loc73_;
                     _loc72_;
                     if(param1.time == this.units[this.currentUnit].lastSimTime && !(this.units[this.currentUnit].walkDir == 0))
                     {
                        this.simObjectWalk(this.units[this.currentUnit],true);
                     }
                  }
                  else
                  {
                     _loc72_;
                     if(this.units[this.currentUnit].walkDir != 0)
                     {
                        _loc73_;
                        _loc73_;
                        _loc4_ = 0;
                        if(param1.time == this.units[this.currentUnit].lastSimTime)
                        {
                           this.simObjectWalk(this.units[this.currentUnit],true);
                           _loc72_;
                           _loc4_ = 20;
                        }
                        _loc72_;
                        _loc72_;
                        this.units[this.currentUnit].walkDir = 0;
                        this.simManager.removeObject(this.units[this.currentUnit]);
                        _loc72_;
                        _loc72_;
                        _loc73_;
                        this.§_-XG§ = param1.time + this.§_-xN§ + _loc4_;
                        _loc72_;
                     }
                  }
                  if(this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_THINKING || this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_WALK)
                  {
                     _loc73_;
                     _loc73_;
                     this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
                  }
                  this.§_-tO§();
                  _loc73_;
                  this.§_-Tw§();
                  this.§_-yS§();
                  _loc73_;
                  _loc73_;
                  this.§_-Yi§.hideMe();
                  _loc72_;
                  _loc72_;
               }
               else
               {
                  _loc73_;
                  _loc73_;
                  if(param1.type == SafeGlobal.SIMEVENT_PROJECTILE)
                  {
                     this.§_-GD§ = SafeGlobal.CLEANUP_PROJECTILE;
                     this.turnState = "retreat";
                     this.hideBubbles();
                     this.§_-tO§();
                     if(param1.extra.wepType == -1)
                     {
                        _loc73_;
                     }
                     else
                     {
                        _loc5_ = SafeGlobal.§_-r§(param1.extra.wepType);
                        _loc6_ = _loc5_[3];
                        _loc73_;
                        _loc73_;
                        _loc7_ = _loc6_[0];
                        _loc73_;
                        _loc8_ = _loc6_[1];
                        _loc73_;
                        _loc73_;
                        _loc9_ = Math.atan2(param1.extra.mY,param1.extra.mX);
                        _loc73_;
                        _loc73_;
                        _loc11_ = true;
                        if(_loc5_[0] == SafeGlobal.WEAPONINFO_CUSTOM[0])
                        {
                           _loc72_;
                           _loc73_;
                           _loc73_;
                           _loc73_;
                           _loc72_;
                           _loc72_;
                           _loc10_ = this.teams[this.units[this.currentUnit].team].customWeaponStrings[0];
                        }
                        else if(_loc5_[0] == SafeGlobal.WEAPONINFO_CUSTOM2[0])
                        {
                           _loc73_;
                           _loc73_;
                           _loc72_;
                           _loc73_;
                           _loc73_;
                           _loc72_;
                           _loc10_ = this.teams[this.units[this.currentUnit].team].customWeaponStrings[1];
                        }
                        else if(_loc5_[0] == SafeGlobal.WEAPONINFO_CUSTOM3[0])
                        {
                           _loc73_;
                           _loc73_;
                           _loc72_;
                           _loc72_;
                           _loc72_;
                           _loc72_;
                           _loc10_ = this.teams[this.units[this.currentUnit].team].customWeaponStrings[2];
                        }
                        else
                        {
                           _loc10_ = _loc5_[4];
                           _loc11_ = false;
                        }
                        
                        
                        _loc12_ = this.units[this.currentUnit].startPoint(_loc7_);
                        _loc13_ = new Point(_loc12_.x,_loc12_.y);
                        _loc72_;
                        _loc72_;
                        _loc12_.x = this.§_-yl§(_loc12_.x);
                        _loc12_.y = this.§_-yl§(_loc12_.y);
                        _loc13_.x = _loc13_.x + Math.cos(_loc9_) * _loc8_;
                        _loc72_;
                        _loc13_.y = _loc13_.y + Math.sin(_loc9_) * _loc8_;
                        _loc73_;
                        _loc13_.x = this.§_-yl§(_loc13_.x);
                        _loc72_;
                        _loc13_.y = this.§_-yl§(_loc13_.y);
                        _loc72_;
                        if(param1.extra.pID == SafeGlobal.PROJTYPE_JETPACK)
                        {
                           _loc73_;
                           _loc73_;
                           _loc72_;
                           _loc14_ = this.units[this.currentUnit].startPoint();
                           this.addUnitProjectile(_loc14_.x,_loc14_.y,param1.extra.mX,param1.extra.mY,param1.time,this.units[this.currentUnit],false);
                           _loc72_;
                           _loc72_;
                           _loc72_;
                           _loc72_;
                           _loc73_;
                           _loc73_;
                           _loc72_;
                           _loc72_;
                           _loc15_ = SoundManager.§_-Ex§(SafeGlobal.FX_JETPACK,10000,true,(this.simOnly) || (this.costumeCacheOnly));
                           _loc72_;
                           _loc72_;
                           _loc73_;
                           _loc73_;
                           this.projectiles[this.projectiles.length - 1].sound_uid = _loc15_;
                           _loc73_;
                           _loc73_;
                           _loc73_;
                           if(this.units[this.currentUnit].poison == 0)
                           {
                              _loc72_;
                              _loc72_;
                              _loc72_;
                              _loc72_;
                              this.units[this.currentUnit].hidePoison();
                           }
                           this.§_-K7§ = 1;
                           _loc73_;
                           _loc73_;
                           _loc72_;
                           _loc73_;
                           this.projectiles[this.projectiles.length - 1].scaleX = this.units[this.currentUnit].scaleX;
                           _loc72_;
                           _loc73_;
                           this.projectiles[this.projectiles.length - 1].init(this.units[this.currentUnit].costume.spriteSheets[SafeGlobal.ANIM_UNIT_JETPACK]);
                           _loc72_;
                           this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_JETPACK]);
                           _loc73_;
                           _loc73_;
                           this.projectiles[this.projectiles.length - 1].useProjString("e,99,2",false);
                        }
                        else if(param1.extra.pID == SafeGlobal.§_-ab§)
                        {
                           _loc14_ = this.units[this.currentUnit].startPoint();
                           _loc72_;
                           this.addUnitProjectile(_loc14_.x,_loc14_.y,param1.extra.mX,param1.extra.mY,param1.time,this.units[this.currentUnit],false);
                           _loc73_;
                           this.units[this.currentUnit].rocketGloves = true;
                           _loc73_;
                           _loc73_;
                           _loc73_;
                           _loc73_;
                           _loc73_;
                           _loc15_ = SoundManager.§_-Ex§(SafeGlobal.FX_JETPACK,10000,true,(this.simOnly) || (this.costumeCacheOnly));
                           _loc73_;
                           _loc73_;
                           this.projectiles[this.projectiles.length - 1].sound_uid = _loc15_;
                           _loc73_;
                           if(this.units[this.currentUnit].poison == 0)
                           {
                              _loc73_;
                              _loc72_;
                              this.units[this.currentUnit].hidePoison();
                              _loc73_;
                              _loc73_;
                           }
                           this.§_-cw§ = 1;
                           _loc73_;
                           _loc72_;
                           _loc72_;
                           this.projectiles[this.projectiles.length - 1].scaleX = this.units[this.currentUnit].scaleX;
                           _loc72_;
                           _loc73_;
                           _loc73_;
                           _loc72_;
                           _loc72_;
                           this.projectiles[this.projectiles.length - 1].init(this.units[this.currentUnit].costume.spriteSheets[SafeGlobal.ANIM_UNIT_ROCKETGLOVES]);
                           this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_ROCKETGLOVES]);
                           _loc72_;
                           _loc72_;
                           this.projectiles[this.projectiles.length - 1].useProjString("e,100,2",false);
                        }
                        else
                        {
                           _loc16_ = _loc10_.split("/");
                           _loc73_;
                           _loc17_ = _loc16_[0];
                           _loc72_;
                           _loc72_;
                           _loc18_ = "";
                           _loc72_;
                           _loc72_;
                           _loc19_ = _loc16_[1];
                           _loc20_ = _loc19_.split(";");
                           _loc25_ = -1;
                           _loc26_ = -1;
                           _loc27_ = -1;
                           _loc73_;
                           _loc73_;
                           _loc28_ = -1;
                           _loc73_;
                           _loc73_;
                           _loc72_;
                           _loc72_;
                           _loc29_ = -1;
                           _loc72_;
                           _loc72_;
                           _loc30_ = false;
                           _loc72_;
                           _loc72_;
                           _loc72_;
                           _loc31_ = 0;
                           _loc73_;
                           _loc32_ = 0;
                           _loc72_;
                           _loc72_;
                           _loc72_;
                           _loc72_;
                           _loc34_ = 0;
                           _loc72_;
                           _loc35_ = 0;
                           _loc36_ = "";
                           _loc37_ = _loc17_.split(";");
                           _loc72_;
                           _loc38_ = 0;
                           _loc72_;
                           _loc72_;
                           while(_loc38_ < _loc37_.length)
                           {
                              _loc22_ = _loc37_[_loc38_].split(",");
                              if(_loc22_[0] == "g")
                              {
                                 _loc73_;
                                 _loc73_;
                                 _loc24_ = int(_loc22_[1]);
                              }
                              else if(_loc22_[0] == "r")
                              {
                                 _loc73_;
                                 _loc73_;
                                 _loc25_ = int(_loc22_[1]);
                                 _loc72_;
                                 _loc72_;
                                 _loc73_;
                                 _loc73_;
                                 _loc26_ = int(_loc22_[2]);
                                 _loc72_;
                              }
                              else if(_loc22_[0] == "m")
                              {
                                 _loc72_;
                                 _loc72_;
                                 _loc27_ = int(_loc22_[1]);
                                 _loc72_;
                                 _loc72_;
                                 _loc28_ = int(_loc22_[2]);
                                 _loc29_ = int(_loc22_[3]);
                                 _loc73_;
                              }
                              else if(_loc22_[0] == "n")
                              {
                                 _loc36_ = _loc22_[1].split("*").join(" ");
                              }
                              else if(_loc22_[0] == "s")
                              {
                                 _loc34_ = Number(_loc22_[1]);
                              }
                              
                              
                              
                              
                              _loc38_++;
                           }
                           _loc72_;
                           _loc72_;
                           _loc72_;
                           _loc72_;
                           _loc72_;
                           if(_loc36_ != "")
                           {
                              _loc73_;
                              _loc73_;
                              this.showMessage(this.units[this.currentUnit].unitName + " used " + _loc36_,SafeGlobal.colour_hex[this.teams[this.units[this.currentUnit].team].colourID]);
                              _loc73_;
                           }
                           _loc39_ = 0;
                           _loc72_;
                           while(_loc39_ < _loc20_.length)
                           {
                              _loc21_ = _loc20_[_loc39_].split(",");
                              if(_loc21_[0] == "g")
                              {
                                 _loc73_;
                                 if(!_loc11_)
                                 {
                                    _loc72_;
                                    _loc73_;
                                    _loc73_;
                                    _loc23_ = int(_loc5_[0]);
                                 }
                                 else
                                 {
                                    _loc23_ = int(_loc21_[2]);
                                 }
                              }
                              else if(_loc21_[0] == "x")
                              {
                                 _loc72_;
                                 _loc30_ = true;
                              }
                              
                              _loc39_++;
                           }
                           _loc72_;
                           _loc72_;
                           _loc40_ = 1;
                           while(_loc40_ < _loc16_.length)
                           {
                              if(_loc40_ > 1)
                              {
                                 _loc72_;
                                 _loc72_;
                                 _loc73_;
                                 _loc18_ = _loc18_ + "/";
                                 _loc73_;
                              }
                              _loc72_;
                              _loc18_ = _loc18_ + _loc16_[_loc40_];
                              _loc73_;
                              _loc40_++;
                           }
                           SafeGlobal.§_-8N§ = String("unit.x = " + this.units[this.currentUnit].iX + ", unit.y = " + this.units[this.currentUnit].iY + " addPoint.x = " + _loc13_.x + ", addPoint.y = " + _loc13_.y);
                           _loc73_;
                           if(_loc25_ != -1)
                           {
                              _loc41_ = 0;
                              _loc72_;
                              _loc72_;
                              while(true)
                              {
                                 _loc73_;
                                 _loc73_;
                                 if(_loc41_ >= _loc25_)
                                 {
                                    break;
                                 }
                                 _loc73_;
                                 _loc72_;
                                 _loc72_;
                                 _loc73_;
                                 _loc73_;
                                 _loc72_;
                                 _loc35_ = (_loc25_ - 1) * _loc26_ * 100;
                                 _loc73_;
                                 if(_loc30_)
                                 {
                                    _loc33_ = Math.atan2(param1.extra.mY,param1.extra.mX);
                                    _loc73_;
                                    _loc31_ = this.§_-yl§(this.§_-9o§ * Math.cos(_loc33_));
                                    _loc73_;
                                    _loc73_;
                                    _loc73_;
                                    _loc32_ = this.§_-yl§(this.§_-9o§ * Math.sin(_loc33_));
                                    this.addProjectile(_loc13_.x,_loc13_.y,_loc31_,_loc32_,param1.time + _loc26_ * _loc41_ * 100,_loc18_,_loc11_,true);
                                    _loc73_;
                                 }
                                 else
                                 {
                                    _loc72_;
                                    _loc72_;
                                    if(_loc34_ > 0)
                                    {
                                       _loc72_;
                                       _loc72_;
                                       _loc72_;
                                       _loc73_;
                                       _loc42_ = this.§_-yl§(_loc34_ * this.PI / 180 / 14);
                                       _loc73_;
                                       _loc72_;
                                       _loc43_ = this.§_-yl§(Math.atan2(param1.extra.mY,param1.extra.mX));
                                       _loc72_;
                                       _loc44_ = this.§_-yl§(Math.sqrt(param1.extra.mX * param1.extra.mX + param1.extra.mY * param1.extra.mY));
                                       _loc72_;
                                       _loc72_;
                                       _loc72_;
                                       _loc72_;
                                       _loc72_;
                                       _loc72_;
                                       _loc73_;
                                       _loc73_;
                                       _loc45_ = int(this.§_-IF§.substr(_loc41_,1)) * 4 - 18;
                                       _loc72_;
                                       _loc46_ = this.§_-yl§(_loc45_ * _loc42_);
                                       _loc73_;
                                       _loc72_;
                                       _loc47_ = this.§_-yl§(_loc44_ * Math.cos(_loc46_ + _loc43_));
                                       _loc72_;
                                       _loc48_ = this.§_-yl§(_loc44_ * Math.sin(_loc46_ + _loc43_));
                                       this.addProjectile(_loc13_.x,_loc13_.y,_loc47_,_loc48_,param1.time + _loc26_ * _loc41_ * 100,_loc18_,_loc11_,true);
                                       _loc72_;
                                       _loc72_;
                                       _loc73_;
                                       _loc73_;
                                       _loc73_;
                                       _loc73_;
                                       this.projectiles[this.projectiles.length - 1].spin = Math.random() > 0.5?10:-10;
                                       _loc73_;
                                       _loc72_;
                                       _loc72_;
                                       _loc73_;
                                       _loc73_;
                                       _loc72_;
                                       _loc72_;
                                       this.projectiles[this.projectiles.length - 1].orientToPath = false;
                                    }
                                    else
                                    {
                                       this.addProjectile(_loc13_.x,_loc13_.y,param1.extra.mX,param1.extra.mY,param1.time + _loc26_ * _loc41_ * 100,_loc18_,_loc11_,true);
                                       _loc72_;
                                       _loc72_;
                                    }
                                 }
                                 _loc73_;
                                 this.projectiles[this.projectiles.length - 1].initialPlanetCheck = true;
                                 _loc72_;
                                 _loc72_;
                                 this.projectiles[this.projectiles.length - 1].initialPoint = _loc12_;
                                 if(_loc41_ > 0)
                                 {
                                    _loc73_;
                                    _loc72_;
                                    _loc72_;
                                    this.projectiles[this.projectiles.length - 1].visible = false;
                                 }
                                 _loc72_;
                                 this.projectiles[this.projectiles.length - 1].setIgnoreUnit(this.currentUnit);
                                 _loc73_;
                                 _loc73_;
                                 _loc72_;
                                 _loc72_;
                                 _loc73_;
                                 this.projectiles[this.projectiles.length - 1].custom = _loc11_;
                                 _loc72_;
                                 _loc72_;
                                 _loc72_;
                                 if(!_loc11_)
                                 {
                                    _loc73_;
                                    _loc73_;
                                    _loc73_;
                                    this.projectiles[this.projectiles.length - 1].init(this.projGFX[_loc23_]);
                                    _loc73_;
                                    _loc73_;
                                 }
                                 else
                                 {
                                    _loc72_;
                                    _loc72_;
                                    _loc73_;
                                    this.projectiles[this.projectiles.length - 1].init(this.customProjectileGFX[_loc23_]);
                                 }
                                 _loc72_;
                                 _loc73_;
                                 this.projectiles[this.projectiles.length - 1].track = true;
                                 _loc41_++;
                                 _loc73_;
                              }
                              _loc73_;
                           }
                           else
                           {
                              _loc72_;
                              if(_loc27_ != -1)
                              {
                                 _loc72_;
                                 _loc72_;
                                 _loc73_;
                                 _loc73_;
                                 _loc72_;
                                 _loc72_;
                                 _loc49_ = _loc28_ * this.PI / 180;
                                 _loc50_ = Math.sqrt(param1.extra.mX * param1.extra.mX + param1.extra.mY * param1.extra.mY);
                                 _loc9_ = Math.atan2(param1.extra.mY,param1.extra.mX);
                                 _loc73_;
                                 _loc73_;
                                 _loc51_ = (_loc27_ - 1) * _loc49_;
                                 _loc72_;
                                 _loc72_;
                                 _loc72_;
                                 _loc52_ = _loc51_ / 2;
                                 _loc72_;
                                 _loc56_ = 0;
                                 _loc72_;
                                 _loc72_;
                                 _loc57_ = 0;
                                 _loc73_;
                                 _loc59_ = 0;
                                 while(true)
                                 {
                                    _loc72_;
                                    if(_loc59_ >= _loc27_)
                                    {
                                       break;
                                    }
                                    _loc72_;
                                    _loc72_;
                                    _loc56_ = _loc56_ + (int(this.§_-IF§.substr(_loc59_,1)) + 1);
                                    _loc59_++;
                                    _loc73_;
                                 }
                                 _loc72_;
                                 _loc72_;
                                 _loc60_ = 0;
                                 _loc72_;
                                 _loc72_;
                                 while(_loc60_ < _loc27_)
                                 {
                                    if(_loc29_ == 0)
                                    {
                                       _loc73_;
                                       _loc73_;
                                       _loc72_;
                                       _loc55_ = _loc9_ - _loc52_ + _loc60_ * _loc49_;
                                       _loc72_;
                                       _loc72_;
                                       _loc72_;
                                       _loc73_;
                                       _loc73_;
                                       _loc53_ = this.§_-yl§(_loc50_ * Math.cos(_loc55_));
                                       _loc73_;
                                       _loc72_;
                                       _loc72_;
                                       _loc54_ = this.§_-yl§(_loc50_ * Math.sin(_loc55_));
                                       _loc73_;
                                       _loc73_;
                                    }
                                    else
                                    {
                                       _loc72_;
                                       _loc72_;
                                       if(_loc29_ == 1)
                                       {
                                          _loc58_ = int(this.§_-IF§.substr(_loc60_,1)) + 1;
                                          _loc73_;
                                          _loc73_;
                                          _loc57_ = _loc57_ + _loc58_;
                                          _loc73_;
                                          _loc72_;
                                          _loc72_;
                                          _loc73_;
                                          _loc73_;
                                          _loc73_;
                                          _loc73_;
                                          _loc73_;
                                          _loc72_;
                                          _loc72_;
                                          _loc55_ = _loc9_ - _loc52_ + _loc51_ / _loc56_ * _loc57_;
                                          _loc73_;
                                          _loc73_;
                                          _loc72_;
                                          _loc72_;
                                          _loc53_ = this.§_-yl§(_loc50_ * Math.cos(_loc55_));
                                          _loc73_;
                                          _loc73_;
                                          _loc73_;
                                          _loc73_;
                                          _loc54_ = this.§_-yl§(_loc50_ * Math.sin(_loc55_));
                                       }
                                    }
                                    _loc73_;
                                    _loc73_;
                                    if(_loc30_)
                                    {
                                       _loc72_;
                                       _loc33_ = Math.atan2(_loc54_,_loc53_);
                                       _loc72_;
                                       _loc72_;
                                       _loc31_ = this.§_-yl§(this.§_-9o§ * Math.cos(_loc33_));
                                       _loc73_;
                                       _loc73_;
                                       _loc73_;
                                       _loc73_;
                                       _loc32_ = this.§_-yl§(this.§_-9o§ * Math.sin(_loc33_));
                                       _loc72_;
                                       this.addProjectile(_loc13_.x,_loc13_.y,_loc31_,_loc32_,param1.time,_loc18_,_loc11_,true);
                                       _loc73_;
                                       _loc73_;
                                    }
                                    else
                                    {
                                       this.addProjectile(_loc13_.x,_loc13_.y,_loc53_,_loc54_,param1.time,_loc18_,_loc11_,true);
                                    }
                                    _loc72_;
                                    _loc72_;
                                    _loc73_;
                                    _loc73_;
                                    this.projectiles[this.projectiles.length - 1].initialPlanetCheck = true;
                                    _loc73_;
                                    _loc72_;
                                    _loc72_;
                                    _loc72_;
                                    this.projectiles[this.projectiles.length - 1].initialPoint = _loc12_;
                                    _loc73_;
                                    this.projectiles[this.projectiles.length - 1].setIgnoreUnit(this.currentUnit);
                                    _loc73_;
                                    _loc73_;
                                    _loc73_;
                                    _loc73_;
                                    this.projectiles[this.projectiles.length - 1].custom = _loc11_;
                                    _loc73_;
                                    _loc73_;
                                    if(!_loc11_)
                                    {
                                       _loc72_;
                                       _loc72_;
                                       _loc72_;
                                       this.projectiles[this.projectiles.length - 1].init(this.projGFX[_loc23_]);
                                    }
                                    else
                                    {
                                       _loc72_;
                                       this.projectiles[this.projectiles.length - 1].init(this.customProjectileGFX[_loc23_]);
                                    }
                                    _loc72_;
                                    _loc72_;
                                    this.projectiles[this.projectiles.length - 1].track = true;
                                    _loc73_;
                                    _loc60_++;
                                 }
                              }
                              else
                              {
                                 _loc73_;
                                 if(_loc30_)
                                 {
                                    _loc72_;
                                    _loc72_;
                                    _loc33_ = Math.atan2(param1.extra.mY,param1.extra.mX);
                                    _loc73_;
                                    _loc73_;
                                    _loc31_ = this.§_-yl§(this.§_-9o§ * Math.cos(_loc33_));
                                    _loc72_;
                                    _loc32_ = this.§_-yl§(this.§_-9o§ * Math.sin(_loc33_));
                                    this.addProjectile(_loc13_.x,_loc13_.y,_loc31_,_loc32_,param1.time,_loc18_,_loc11_,true);
                                    _loc72_;
                                    _loc72_;
                                 }
                                 else
                                 {
                                    this.addProjectile(_loc13_.x,_loc13_.y,param1.extra.mX,param1.extra.mY,param1.time,_loc18_,_loc11_,true);
                                 }
                                 _loc72_;
                                 _loc72_;
                                 _loc72_;
                                 this.projectiles[this.projectiles.length - 1].initialPlanetCheck = true;
                                 _loc73_;
                                 _loc73_;
                                 this.projectiles[this.projectiles.length - 1].initialPoint = _loc12_;
                                 _loc73_;
                                 _loc73_;
                                 _loc72_;
                                 _loc72_;
                                 this.projectiles[this.projectiles.length - 1].setIgnoreUnit(this.currentUnit);
                                 _loc72_;
                                 this.projectiles[this.projectiles.length - 1].custom = _loc11_;
                                 if(!_loc11_)
                                 {
                                    _loc72_;
                                    _loc72_;
                                    _loc72_;
                                    this.projectiles[this.projectiles.length - 1].init(this.projGFX[_loc23_]);
                                 }
                                 else
                                 {
                                    _loc72_;
                                    this.projectiles[this.projectiles.length - 1].init(this.customProjectileGFX[_loc23_]);
                                 }
                                 _loc73_;
                                 _loc73_;
                                 _loc72_;
                                 this.projectiles[this.projectiles.length - 1].track = true;
                              }
                           }
                           if(_loc5_[0] == SafeGlobal.WEAPONINFO_GRAVITEEBALL[0])
                           {
                              this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_GOLFSWING,SafeGlobal.ANIM_UNIT_BOB]);
                              this.projectiles[this.projectiles.length - 1].orientToPath = false;
                           }
                           else
                           {
                              this.addEffect(SafeGlobal.EFFECTS_BAZOOKAFLASH,_loc13_.x,_loc13_.y,int(_loc9_ * 180 / this.PI));
                           }
                        }
                        
                        this.§_-6r§();
                        this.§_-dp§.splice(0);
                        _loc72_;
                        this.§_-Yi§.startRetreat(param1.time,_loc35_);
                        this.simManager.startRetreat(param1.time,_loc35_);
                        if(!this.myTurn)
                        {
                           this.camera.removeTarget(this.units[this.currentUnit]);
                           _loc72_;
                        }
                        this.§_-XG§ = param1.time + _loc35_;
                     }
                     this.§_-tg§();
                     _loc72_;
                     _loc72_;
                     this.§_-Zj§ = 0;
                  }
                  else if(param1.type == SafeGlobal.SIMEVENT_MINE)
                  {
                     this.turnState = "retreat";
                     _loc73_;
                     this.§_-tO§();
                     _loc72_;
                     _loc72_;
                     _loc2_ = this.units[this.currentUnit];
                     this.addMineAtPoint(_loc2_.iX,_loc2_.iY,_loc2_.iR,param1.extra.mineType,_loc2_.locationPlanet,_loc2_.locationShape,_loc2_.locationCurve,_loc2_.locationCurveX,_loc2_.locationCurveY,_loc2_.locationCurveRadius,_loc2_.locationAngle,_loc2_,param1.time,false);
                     _loc72_;
                     this.§_-cQ§ = 1;
                     this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
                     _loc72_;
                     this.§_-Yi§.startRetreat(param1.time);
                     this.simManager.startRetreat(param1.time);
                     _loc73_;
                     _loc73_;
                     if(!this.myTurn)
                     {
                        this.camera.removeTarget(this.units[this.currentUnit]);
                        _loc73_;
                     }
                     this.§_-tg§();
                     this.§_-Zj§ = 0;
                  }
                  else
                  {
                     _loc72_;
                     _loc72_;
                     _loc72_;
                     if(param1.type == SafeGlobal.SIMEVENT_MELEE)
                     {
                        this.turnState = "retreat";
                        this.§_-tO§();
                        _loc72_;
                        _loc72_;
                        _loc72_;
                        _loc2_ = this.units[this.currentUnit];
                        _loc72_;
                        this.melee(param1.time,param1.extra.wepType);
                        _loc72_;
                        _loc72_;
                        this.§_-Yi§.startRetreat(param1.time);
                        _loc72_;
                        _loc72_;
                        this.simManager.startRetreat(param1.time);
                        if(!this.myTurn)
                        {
                           _loc72_;
                           _loc72_;
                           this.camera.removeTarget(this.units[this.currentUnit]);
                        }
                        this.§_-tg§();
                        this.§_-Zj§ = 0;
                     }
                     else
                     {
                        _loc72_;
                        if(param1.type == SafeGlobal.SIMEVENT_INCOMING)
                        {
                           this.turnState = "retreat";
                           _loc72_;
                           _loc72_;
                           this.§_-tO§();
                           _loc72_;
                           _loc72_;
                           _loc73_;
                           _loc73_;
                           this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_TABLET,SafeGlobal.ANIM_UNIT_TABLET,SafeGlobal.ANIM_UNIT_BOB]);
                           _loc72_;
                           _loc72_;
                           _loc73_;
                           _loc2_ = this.units[this.currentUnit];
                           this.incoming(param1.time,param1.extra.wepType,param1.extra.inAngle);
                           this.§_-Yi§.startRetreat(param1.time);
                           this.simManager.startRetreat(param1.time);
                           _loc73_;
                           if(!this.myTurn)
                           {
                              this.camera.removeTarget(this.units[this.currentUnit]);
                              _loc73_;
                              _loc73_;
                           }
                           this.§_-tg§();
                           this.§_-Zj§ = 0;
                        }
                        else
                        {
                           _loc73_;
                           if(param1.type == SafeGlobal.SIMEVENT_GATE)
                           {
                              _loc73_;
                              _loc73_;
                              this.turnState = "retreat";
                              _loc73_;
                              _loc73_;
                              this.§_-tO§();
                              _loc2_ = this.units[this.currentUnit];
                              _loc73_;
                              this.addGate(param1.extra.pX1,param1.extra.pY1,param1.extra.pR1,param1.extra.wepType);
                              _loc73_;
                              _loc72_;
                              _loc72_;
                              _loc72_;
                              _loc72_;
                              if(!(param1.extra.pX2 == -1) && !(param1.extra.pY2 == -1) && !(param1.extra.pR2 == -1))
                              {
                                 this.addGate(param1.extra.pX2,param1.extra.pY2,param1.extra.pR2,param1.extra.wepType);
                                 _loc73_;
                                 _loc72_;
                                 _loc72_;
                                 _loc72_;
                                 this.gates[this.gates.length - 1].pair = this.gates[this.gates.length - 2];
                                 this.gates[this.gates.length - 2].pair = this.gates[this.gates.length - 1];
                              }
                              this.§_-Yi§.startRetreat(param1.time);
                              _loc73_;
                              this.simManager.startRetreat(param1.time);
                              if(!this.myTurn)
                              {
                                 this.camera.removeTarget(this.units[this.currentUnit]);
                              }
                              this.§_-tg§();
                              this.§_-Zj§ = 0;
                           }
                           else if(param1.type == SafeGlobal.SIMEVENT_PLANETSELECT)
                           {
                              this.turnState = "retreat";
                              this.§_-tO§();
                              _loc73_;
                              _loc2_ = this.units[this.currentUnit];
                              _loc72_;
                              if(param1.extra.wepType == SafeGlobal.§_-es§[0])
                              {
                                 _loc73_;
                                 _loc73_;
                                 this.planets[_loc2_.locationPlanet].activateShield(3,true,true);
                              }
                              else
                              {
                                 this.planets[_loc2_.locationPlanet].activateShield(3,false,true);
                              }
                              this.dynamic = 1;
                              this.§_-Yi§.startRetreat(param1.time);
                              this.simManager.startRetreat(param1.time);
                              _loc73_;
                              _loc73_;
                              if(!this.myTurn)
                              {
                                 this.camera.removeTarget(this.units[this.currentUnit]);
                                 _loc73_;
                                 _loc73_;
                              }
                              this.§_-tg§();
                              _loc73_;
                              this.§_-Zj§ = 0;
                           }
                           else if(param1.type == SafeGlobal.SIMEVENT_POINTSELECT)
                           {
                              this.turnState = "retreat";
                              this.§_-tO§();
                              _loc73_;
                              _loc73_;
                              _loc2_ = this.units[this.currentUnit];
                              this.addEffect(SafeGlobal.EFFECTS_TELEPORTOUT,_loc2_.iX,_loc2_.iY,_loc2_.rotation,_loc2_);
                              _loc72_;
                              _loc72_;
                              _loc61_ = false;
                              if(param1.extra.wepType == SafeGlobal.§_-7S§[0])
                              {
                                 _loc72_;
                                 _loc61_ = true;
                              }
                              this.teleportTo(param1.time,_loc2_,param1.extra.planetID,param1.extra.shapeID,param1.extra.curveID,param1.extra.angle,_loc61_);
                              _loc72_;
                              this.§_-Yi§.startRetreat(param1.time);
                              this.simManager.startRetreat(param1.time);
                              if(!this.myTurn)
                              {
                                 _loc72_;
                                 this.camera.removeTarget(this.units[this.currentUnit]);
                              }
                              this.§_-tg§();
                              _loc72_;
                              this.§_-Zj§ = 0;
                           }
                           else if(param1.type == SafeGlobal.SIMEVENT_MELEEAIM)
                           {
                              _loc73_;
                              _loc73_;
                              this.hideBubbles();
                              _loc5_ = SafeGlobal.§_-r§(param1.extra.wepType);
                              if(_loc5_[0] == SafeGlobal.WEAPONINFO_SPACEBALLBAT[0])
                              {
                                 _loc72_;
                                 _loc72_;
                                 _loc72_;
                                 _loc72_;
                                 _loc72_;
                                 this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_SPACEBALLSWINGSETUP,SafeGlobal.ANIM_UNIT_SPACEBALLSWINGHOLD]);
                              }
                              else if(_loc5_[0] == SafeGlobal.WEAPONINFO_FIREPUNCH[0])
                              {
                                 _loc72_;
                                 _loc72_;
                                 _loc72_;
                                 this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_UPPERCUTSETUP,SafeGlobal.ANIM_UNIT_UPPERCUTHOLD]);
                              }
                              else if(_loc5_[0] == SafeGlobal.WEAPONINFO_TAZER[0])
                              {
                                 _loc73_;
                                 _loc73_;
                                 _loc73_;
                                 _loc73_;
                                 this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_TAZERJABSETUP,SafeGlobal.ANIM_UNIT_TAZERJABHOLD]);
                                 _loc73_;
                                 _loc73_;
                              }
                              else if(_loc5_[0] == SafeGlobal.§_-na§[0])
                              {
                                 _loc72_;
                                 this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_ENERGYSWORDSETUP,SafeGlobal.ANIM_UNIT_ENERGYSWORDHOLD]);
                              }
                              
                              
                              
                           }
                           else if(param1.type == SafeGlobal.SIMEVENT_PROJAIM)
                           {
                              _loc72_;
                              this.hideBubbles();
                              _loc73_;
                              _loc73_;
                              this.§_-dp§.splice(0);
                              _loc72_;
                              _loc72_;
                              this.§_-GD§ = SafeGlobal.CLEANUP_PROJECTILE;
                              if(param1.extra.wepType > -1)
                              {
                                 _loc72_;
                                 _loc73_;
                                 this.units[this.currentUnit].scaleX = -1;
                                 _loc72_;
                                 _loc72_;
                                 this.units[this.currentUnit].healthDisplay.scaleX = -1;
                                 _loc72_;
                                 _loc72_;
                                 this.units[this.currentUnit].nameDisplay.scaleX = -1;
                              }
                              _loc73_;
                              _loc73_;
                              _loc2_ = this.units[this.currentUnit];
                              if(param1.extra.wepType == -1)
                              {
                                 _loc72_;
                                 this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_SLEEP,SafeGlobal.ANIM_UNIT_SLEEP,SafeGlobal.ANIM_UNIT_BOB]);
                                 _loc73_;
                                 if(param1.time == -490)
                                 {
                                    this.§_-Xe§ = 1;
                                    _loc73_;
                                    _loc73_;
                                 }
                                 else
                                 {
                                    this.§_-FQ§ = 1;
                                 }
                                 this.§_-Zj§ = 0;
                              }
                              else
                              {
                                 _loc5_ = SafeGlobal.§_-r§(param1.extra.wepType);
                                 if(this.§_-gK§)
                                 {
                                    this.§_-aZ§();
                                    _loc72_;
                                 }
                                 this.§_-gK§ = this.§_-GA§(_loc5_);
                                 this.§_-xK§.§_-yX§ = this.§_-yX§;
                                 this.§_-yX§ = 0;
                                 _loc72_;
                                 _loc72_;
                                 _loc73_;
                                 _loc73_;
                                 _loc62_ = true;
                                 _loc73_;
                                 _loc10_ = "";
                                 _loc72_;
                                 if(_loc5_[0] == SafeGlobal.WEAPONINFO_CUSTOM[0])
                                 {
                                    _loc72_;
                                    _loc72_;
                                    _loc73_;
                                    _loc72_;
                                    _loc72_;
                                    _loc72_;
                                    _loc72_;
                                    _loc72_;
                                    _loc10_ = this.teams[this.units[this.currentUnit].team].customWeaponStrings[0];
                                 }
                                 else if(_loc5_[0] == SafeGlobal.WEAPONINFO_CUSTOM2[0])
                                 {
                                    _loc73_;
                                    _loc72_;
                                    _loc72_;
                                    _loc72_;
                                    _loc72_;
                                    _loc72_;
                                    _loc10_ = this.teams[this.units[this.currentUnit].team].customWeaponStrings[1];
                                    _loc73_;
                                 }
                                 else if(_loc5_[0] == SafeGlobal.WEAPONINFO_CUSTOM3[0])
                                 {
                                    _loc72_;
                                    _loc72_;
                                    _loc72_;
                                    _loc72_;
                                    _loc10_ = this.teams[this.units[this.currentUnit].team].customWeaponStrings[2];
                                    _loc72_;
                                 }
                                 else
                                 {
                                    _loc62_ = false;
                                    _loc72_;
                                    _loc72_;
                                    _loc10_ = _loc5_[4];
                                 }
                                 
                                 
                                 _loc16_ = _loc10_.split("/");
                                 _loc73_;
                                 _loc73_;
                                 _loc17_ = _loc16_[0];
                                 _loc72_;
                                 _loc72_;
                                 _loc19_ = _loc16_[1];
                                 _loc72_;
                                 _loc72_;
                                 this.§_-xK§.§_-s-§ = false;
                                 _loc73_;
                                 _loc73_;
                                 _loc73_;
                                 _loc73_;
                                 if((_loc19_) && !(_loc19_ == ""))
                                 {
                                    this.§_-xK§.useProjString(_loc19_,_loc62_);
                                 }
                                 _loc73_;
                                 _loc73_;
                                 _loc73_;
                                 _loc72_;
                                 _loc73_;
                                 _loc73_;
                                 if(!this.simOnly && !this.costumeCacheOnly && !(_loc5_[0] == SafeGlobal.WEAPONINFO_JETPACK[0]))
                                 {
                                    _loc72_;
                                    _loc72_;
                                    this.§_-Nm§();
                                    _loc72_;
                                 }
                                 _loc63_ = Math.atan2(param1.extra.mY,param1.extra.mX);
                                 _loc72_;
                                 _loc72_;
                                 this.§_-gK§.rotation = (_loc63_ - this.PI) * 180 / this.PI;
                                 _loc73_;
                                 _loc73_;
                                 _loc72_;
                                 _loc72_;
                                 _loc64_ = (_loc63_ - this.units[this.currentUnit].iR) * 180 / this.PI;
                                 _loc73_;
                                 while(true)
                                 {
                                    _loc73_;
                                    _loc73_;
                                    _loc72_;
                                    if(_loc64_ >= 0)
                                    {
                                       break;
                                    }
                                    _loc72_;
                                    _loc72_;
                                    _loc73_;
                                    _loc64_ = _loc64_ + 360;
                                 }
                                 while(true)
                                 {
                                    _loc73_;
                                    if(_loc64_ <= 360)
                                    {
                                       break;
                                    }
                                    _loc72_;
                                    _loc64_ = _loc64_ - 360;
                                    _loc72_;
                                 }
                                 _loc73_;
                                 if(_loc5_[0] == SafeGlobal.WEAPONINFO_JETPACK[0])
                                 {
                                    _loc72_;
                                    _loc72_;
                                    _loc72_;
                                    _loc73_;
                                    _loc73_;
                                    if(_loc64_ < 90 || _loc64_ > 270)
                                    {
                                       _loc73_;
                                       _loc72_;
                                       _loc73_;
                                       _loc73_;
                                       this.units[this.currentUnit].scaleX = -1;
                                       _loc73_;
                                       this.units[this.currentUnit].healthDisplay.scaleX = -1;
                                       this.units[this.currentUnit].nameDisplay.scaleX = -1;
                                       _loc73_;
                                       _loc73_;
                                    }
                                    else
                                    {
                                       this.units[this.currentUnit].scaleX = 1;
                                       _loc72_;
                                       _loc72_;
                                       this.units[this.currentUnit].healthDisplay.scaleX = 1;
                                       _loc73_;
                                       this.units[this.currentUnit].nameDisplay.scaleX = 1;
                                    }
                                 }
                                 else
                                 {
                                    _loc72_;
                                    if(_loc64_ < 90 || _loc64_ > 270)
                                    {
                                       _loc73_;
                                       this.units[this.currentUnit].scaleX = -1;
                                       _loc73_;
                                       _loc73_;
                                       this.units[this.currentUnit].healthDisplay.scaleX = -1;
                                       _loc72_;
                                       _loc73_;
                                       _loc73_;
                                       this.units[this.currentUnit].nameDisplay.scaleX = -1;
                                       this.§_-gK§.scaleY = -1;
                                    }
                                    else
                                    {
                                       this.units[this.currentUnit].scaleX = 1;
                                       _loc73_;
                                       _loc73_;
                                       this.units[this.currentUnit].healthDisplay.scaleX = 1;
                                       _loc73_;
                                       this.units[this.currentUnit].nameDisplay.scaleX = 1;
                                       this.§_-gK§.scaleY = 1;
                                    }
                                 }
                                 _loc6_ = _loc5_[3];
                                 _loc73_;
                                 _loc73_;
                                 _loc65_ = param1.extra.mX;
                                 _loc72_;
                                 _loc72_;
                                 _loc66_ = param1.extra.mY;
                                 _loc73_;
                                 _loc73_;
                                 _loc7_ = _loc6_[0];
                                 _loc8_ = _loc6_[1];
                                 _loc73_;
                                 _loc73_;
                                 _loc9_ = Math.atan2(_loc66_,_loc65_);
                                 _loc73_;
                                 _loc73_;
                                 _loc73_;
                                 _loc73_;
                                 if(!(_loc5_[0] == SafeGlobal.WEAPONINFO_JETPACK[0]) && !(_loc5_[0] == SafeGlobal.§_-Ny§[0]))
                                 {
                                    _loc73_;
                                    _loc73_;
                                    _loc73_;
                                    _loc13_ = this.units[this.currentUnit].startPoint(_loc7_);
                                    _loc12_ = new Point(_loc13_.x,_loc13_.y);
                                    _loc72_;
                                    _loc72_;
                                    _loc13_.x = _loc13_.x + Math.cos(_loc9_) * _loc8_;
                                    _loc13_.y = _loc13_.y + Math.sin(_loc9_) * _loc8_;
                                 }
                                 else
                                 {
                                    _loc13_ = this.units[this.currentUnit].startPoint();
                                    _loc12_ = new Point(_loc13_.x,_loc13_.y);
                                 }
                                 _loc13_.x = this.§_-yl§(_loc13_.x);
                                 _loc73_;
                                 _loc73_;
                                 _loc13_.y = this.§_-yl§(_loc13_.y);
                                 _loc73_;
                                 _loc12_.x = this.§_-yl§(_loc12_.x);
                                 _loc12_.y = this.§_-yl§(_loc12_.y);
                                 _loc72_;
                                 this.§_-xK§.mass = this.§_-fb§();
                                 _loc73_;
                                 _loc73_;
                                 _loc73_;
                                 this.§_-xK§.iX = this.§_-xK§.x = this.§_-xK§.§_-JB§ = _loc13_.x;
                                 _loc73_;
                                 _loc73_;
                                 this.§_-xK§.iY = this.§_-xK§.y = this.§_-xK§.§_-Uv§ = _loc13_.y;
                                 _loc72_;
                                 _loc72_;
                                 if(_loc5_[0] == SafeGlobal.WEAPONINFO_JETPACK[0] || _loc5_[0] == SafeGlobal.§_-Ny§[0])
                                 {
                                    _loc73_;
                                    _loc73_;
                                    _loc72_;
                                    this.§_-xK§.§_-8z§ = true;
                                    _loc73_;
                                    _loc73_;
                                 }
                                 else
                                 {
                                    _loc72_;
                                    _loc72_;
                                    _loc73_;
                                    this.§_-xK§.§_-8z§ = false;
                                 }
                                 this.§_-1p§();
                                 _loc72_;
                                 _loc72_;
                                 _loc72_;
                                 _loc72_;
                                 this.§_-xK§.momX = _loc65_;
                                 _loc72_;
                                 _loc72_;
                                 _loc73_;
                                 this.§_-xK§.momY = _loc66_;
                                 this.§_-Jf§();
                                 _loc72_;
                                 _loc73_;
                                 _loc73_;
                                 this.§_-xK§.initialPlanetCheck = true;
                                 this.§_-xK§.initialPoint = _loc12_;
                                 _loc72_;
                                 _loc72_;
                                 _loc73_;
                                 _loc68_ = 0;
                                 _loc72_;
                                 _loc72_;
                                 this.§_-xK§.startSimTime = this.§_-xK§.lastSimTime = 0;
                                 _loc73_;
                                 this.§_-xK§.setIgnoreUnit(this.currentUnit);
                                 _loc73_;
                                 _loc73_;
                                 while(true)
                                 {
                                    _loc72_;
                                    if(!(!this.§_-xK§.dead && this.§_-dp§.length < Math.floor((this.units[this.currentUnit].accuracy.getInt() + 1) * 1.5) + this.§_-xK§.§_-yX§ * 2 + 12))
                                    {
                                       break;
                                    }
                                    this.§_-xK§.§_-gN§ = true;
                                    this.§_-xK§.§_-eb§(this.timeStep);
                                    _loc72_;
                                    _loc72_;
                                    if(!this.§_-xK§.§_-s-§)
                                    {
                                       this.§_-CM§(this.§_-xK§);
                                    }
                                    _loc72_;
                                    if(this.§_-xK§.dead)
                                    {
                                       _loc67_ = this.addPreviewPoint(this.§_-xK§.§_-p-§.x,this.§_-xK§.§_-p-§.y,_loc68_);
                                    }
                                    else
                                    {
                                       _loc73_;
                                       if(this.§_-xK§.§_-gN§)
                                       {
                                          _loc73_;
                                          _loc67_ = this.addPreviewPoint(this.§_-xK§.x,this.§_-xK§.y,_loc68_);
                                       }
                                       else
                                       {
                                          _loc73_;
                                          _loc73_;
                                          if(this.§_-dp§.length > 0)
                                          {
                                             _loc73_;
                                             _loc73_;
                                             _loc72_;
                                             _loc72_;
                                             _loc72_;
                                             _loc72_;
                                             _loc68_ = this.§_-dp§[this.§_-dp§.length - 1].dist;
                                             _loc72_;
                                             this.§_-81§ = null;
                                             _loc72_;
                                             _loc72_;
                                          }
                                          else
                                          {
                                             _loc68_ = 0;
                                             this.§_-81§ = null;
                                          }
                                       }
                                    }
                                    if(_loc67_.length > 0)
                                    {
                                       _loc73_;
                                       _loc73_;
                                       _loc69_ = 0;
                                       while(_loc69_ < _loc67_.length)
                                       {
                                          this.§_-dp§.push(_loc67_[_loc69_]);
                                          _loc73_;
                                          _loc69_++;
                                       }
                                       _loc67_.splice(0);
                                    }
                                 }
                                 while(this.§_-dp§.length > Math.floor((this.units[this.currentUnit].accuracy.getInt() + 1) * 1.5) + this.§_-xK§.§_-yX§ * 2 + 12)
                                 {
                                    _loc72_;
                                    _loc72_;
                                    this.§_-dp§.splice(this.§_-dp§.length - 1,1);
                                    _loc73_;
                                    _loc73_;
                                 }
                                 _loc72_;
                                 this.§_-oS§();
                                 this.§_-xK§.§_-vx§();
                                 _loc73_;
                                 if(_loc5_[0] == SafeGlobal.WEAPONINFO_JETPACK[0])
                                 {
                                    _loc72_;
                                    _loc72_;
                                    _loc2_.newAnimState([SafeGlobal.ANIM_UNIT_JETPACKAIM]);
                                 }
                                 else if(_loc5_[0] == SafeGlobal.WEAPONINFO_GRAVITEEBALL[0])
                                 {
                                    _loc72_;
                                    _loc2_.newAnimState([SafeGlobal.ANIM_UNIT_GOLFSWINGSETUP,SafeGlobal.ANIM_UNIT_GOLFSWINGHOLD]);
                                    _loc73_;
                                 }
                                 else
                                 {
                                    _loc2_.newAnimState([SafeGlobal.ANIM_UNIT_AIM],false,0,_loc64_);
                                 }
                                 
                              }
                           }
                           else if(param1.type == SafeGlobal.SIMEVENT_PROJAIMSTOP)
                           {
                              this.§_-6M§(SafeGlobal.CLEANUP_PROJECTILE);
                              _loc73_;
                              this.units[this.currentUnit].doFlip(this.units[this.currentUnit].facing * -1);
                              _loc72_;
                           }
                           else
                           {
                              _loc73_;
                              _loc73_;
                              if(param1.type == SafeGlobal.SIMEVENT_GATEAIM)
                              {
                                 this.hideBubbles();
                                 _loc72_;
                                 _loc72_;
                                 _loc72_;
                                 this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_TABLET]);
                                 _loc73_;
                                 _loc73_;
                                 if(param1.extra.wepType == SafeGlobal.GATETYPE_SHIELD)
                                 {
                                    this.addEffect(SafeGlobal.EFFECTS_SHIELDSPAWN,param1.extra.pX1,param1.extra.pY1,param1.extra.pR1);
                                    _loc73_;
                                 }
                                 else if(param1.extra.wepType == SafeGlobal.GATETYPE_DISSOLVESHIELD)
                                 {
                                    this.addEffect(SafeGlobal.EFFECTS_SHIELDDISSOLVESPAWN,param1.extra.pX1,param1.extra.pY1,param1.extra.pR1);
                                 }
                                 
                              }
                              else
                              {
                                 _loc72_;
                                 _loc72_;
                                 if(param1.type == SafeGlobal.SIMEVENT_GATEAIMSTOP)
                                 {
                                    _loc72_;
                                    _loc72_;
                                    this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
                                 }
                                 else
                                 {
                                    _loc72_;
                                    _loc72_;
                                    if(param1.type == SafeGlobal.SIMEVENT_PLANETSELECTAIM)
                                    {
                                       this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_TABLET]);
                                    }
                                    else
                                    {
                                       _loc73_;
                                       if(param1.type == SafeGlobal.SIMEVENT_PLANETSELECTAIMSTOP)
                                       {
                                          _loc73_;
                                          _loc73_;
                                          _loc72_;
                                          this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
                                       }
                                       else
                                       {
                                          _loc72_;
                                          if(param1.type == SafeGlobal.SIMEVENT_MINEAIM)
                                          {
                                             _loc72_;
                                             _loc72_;
                                             _loc70_ = param1.extra.mineType;
                                             _loc72_;
                                             if(_loc70_ == SafeGlobal.MINETYPE_STANDARD)
                                             {
                                                _loc72_;
                                                this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYSTANDARDMINE]);
                                                _loc73_;
                                                _loc73_;
                                             }
                                             else if(_loc70_ == SafeGlobal.MINETYPE_CLUSTER)
                                             {
                                                _loc73_;
                                                _loc73_;
                                                this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYCLUSTERMINE]);
                                                _loc72_;
                                                _loc72_;
                                             }
                                             else
                                             {
                                                _loc73_;
                                                if(_loc70_ == SafeGlobal.MINETYPE_DRILL)
                                                {
                                                   _loc72_;
                                                   this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYDRILLMINE]);
                                                   _loc73_;
                                                }
                                                else if(_loc70_ == SafeGlobal.MINETYPE_ROVER)
                                                {
                                                   _loc73_;
                                                   _loc73_;
                                                   _loc73_;
                                                   _loc72_;
                                                   this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYROVER]);
                                                }
                                                else
                                                {
                                                   _loc73_;
                                                   _loc73_;
                                                   if(_loc70_ == SafeGlobal.MINETYPE_SUPERROVER)
                                                   {
                                                      this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYSUPERROVER]);
                                                      _loc73_;
                                                      _loc73_;
                                                   }
                                                   else
                                                   {
                                                      _loc73_;
                                                      _loc73_;
                                                      if(_loc70_ == SafeGlobal.§_-aF§)
                                                      {
                                                         _loc72_;
                                                         this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYMAGNETICROVER]);
                                                      }
                                                   }
                                                }
                                                
                                             }
                                             
                                          }
                                          else if(param1.type == SafeGlobal.SIMEVENT_MINEAIMSTOP)
                                          {
                                             this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
                                          }
                                          
                                       }
                                    }
                                 }
                              }
                           }
                           
                           
                           
                           
                           
                        }
                     }
                  }
                  
               }
            }
         }
         return param1.time;
      }
      
      public function removeThisMinesProjectile(param1:Mine) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:* = false;
         var _loc3_:int = this.projectiles.length - 1;
         while(_loc3_ >= 0)
         {
            _loc5_;
            _loc5_;
            _loc4_;
            if(this.projectiles[_loc3_].mine == param1)
            {
               this.screen.removeChild(this.projectiles[_loc3_]);
               this.simManager.removeObject(this.projectiles[_loc3_]);
               this.projectiles.splice(_loc3_,1);
               _loc5_;
               _loc5_;
               _loc2_ = true;
            }
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            _loc3_--;
            _loc4_;
            _loc4_;
         }
         if(!_loc2_)
         {
            this.camera.traceTargets();
         }
      }
      
      public function §_-bl§(param1:SimObject, param2:Boolean = false) : *
      {
         var _loc18_:* = false;
         var _loc19_:* = true;
         var _loc4_:§_-pb§ = null;
         var _loc5_:Shape = null;
         var _loc6_:Array = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:§_-pb§ = null;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:Point = null;
         var _loc16_:Point = null;
         var _loc17_:§_-pb§ = null;
         var _loc3_:Number = 20;
         _loc19_;
         _loc18_;
         _loc19_;
         _loc19_;
         if(!(param1 is Unit && this.mods[SafeGlobal.MOD_NOUNITWALK]) && !((this.simManager.turnOver) && param1 is Unit) || (this.§_-ZF§) || (param2))
         {
            while(_loc3_ > 0)
            {
               if(param1.onJoin)
               {
                  _loc18_;
                  _loc18_;
                  _loc18_;
                  _loc7_ = this.§_-yl§(_loc3_ * this.§_-OL§);
                  _loc18_;
                  _loc19_;
                  _loc19_;
                  _loc19_;
                  _loc19_;
                  _loc8_ = this.§_-yl§(this.§_-2T§(param1.joinTargetAngle2 - param1.iR));
                  _loc18_;
                  _loc18_;
                  _loc18_;
                  if((this.§_-yl§(this.§_-2T§(param1.joinTargetAngle2 - param1.iR))) < _loc7_)
                  {
                     _loc18_;
                     _loc18_;
                     _loc19_;
                     _loc5_ = this.planets[param1.locationPlanet].shapes[param1.locationShape];
                     _loc4_ = _loc5_.curves[param1.locationCurve];
                     _loc19_;
                     _loc19_;
                     param1.iR = param1.joinTargetAngle2;
                     _loc19_;
                     _loc19_;
                     param1.onJoin = false;
                     _loc6_ = this.planets[param1.locationPlanet].shapes[param1.locationShape].findJoinForThisAngle(new Point(param1.iX,param1.iY),param1.iR);
                     _loc9_ = _loc5_.curves[_loc6_[0]];
                     param1.locationCurve = _loc6_[0];
                     param1.locationCurveX = _loc9_.x;
                     _loc19_;
                     param1.locationCurveY = _loc9_.y;
                     param1.locationCurveRadius = _loc9_.radius;
                     _loc19_;
                     _loc19_;
                     if(_loc6_[1] == 1)
                     {
                        param1.locationAngle = this.planets[param1.locationPlanet].shapes[param1.locationShape].curves[_loc6_[0]].startAngle;
                     }
                     else
                     {
                        param1.locationAngle = this.planets[param1.locationPlanet].shapes[param1.locationShape].curves[_loc6_[0]].endAngle;
                     }
                  }
                  else
                  {
                     _loc18_;
                     param1.iR = this.§_-yl§(this.§_-2T§(param1.iR + _loc7_));
                  }
               }
               else
               {
                  _loc10_ = param1.locationAngle;
                  _loc18_;
                  _loc11_ = _loc3_ * this.§_-dR§;
                  _loc18_;
                  _loc4_ = this.planets[param1.locationPlanet].shapes[param1.locationShape].curves[param1.locationCurve];
                  _loc18_;
                  _loc12_ = 2 * this.PI * _loc4_.radius;
                  _loc19_;
                  if(_loc4_.origCurve)
                  {
                     _loc19_;
                     _loc19_;
                     _loc19_;
                     _loc13_ = this.§_-yl§(this.§_-2T§(_loc11_ / _loc12_));
                     _loc19_;
                     _loc18_;
                     _loc14_ = this.§_-yl§(this.§_-2T§(_loc4_.endAngle - _loc10_));
                     _loc19_;
                     _loc19_;
                     _loc19_;
                     _loc19_;
                     if((this.§_-yl§(this.§_-2T§(_loc4_.endAngle - _loc10_))) < _loc13_ && !(_loc4_.startAngle == _loc4_.endAngle))
                     {
                        param1.locationAngle = _loc4_.endAngle;
                        _loc15_ = _loc4_.curvePos(_loc4_.endAngle);
                        _loc19_;
                        param1.onJoin = true;
                        _loc6_ = this.planets[param1.locationPlanet].shapes[param1.locationShape].findJoinFor(_loc15_,_loc4_);
                        _loc18_;
                        _loc18_;
                        _loc19_;
                        _loc18_;
                        _loc18_;
                        param1.joinTargetAngle1 = this.§_-yl§(this.§_-2T§(_loc4_.endAngle + this.PI / 2));
                        _loc19_;
                        _loc19_;
                        if(_loc6_[1] == 1)
                        {
                           _loc18_;
                           _loc18_;
                           param1.joinTargetAngle2 = this.§_-yl§(this.§_-2T§(this.planets[param1.locationPlanet].shapes[param1.locationShape].curves[_loc6_[0]].startAngle + this.PI / 2));
                           _loc19_;
                        }
                        else
                        {
                           param1.joinTargetAngle2 = this.§_-yl§(this.§_-2T§(this.planets[param1.locationPlanet].shapes[param1.locationShape].curves[_loc6_[0]].endAngle - this.PI / 2));
                           _loc18_;
                           _loc18_;
                        }
                     }
                     else
                     {
                        _loc18_;
                        param1.locationAngle = this.§_-yl§(this.§_-2T§(param1.locationAngle + _loc13_));
                     }
                     _loc18_;
                     _loc18_;
                     param1.iR = this.§_-yl§(this.§_-2T§(param1.locationAngle + this.PI / 2));
                  }
                  else
                  {
                     _loc19_;
                     _loc19_;
                     _loc13_ = this.§_-yl§(this.§_-2T§(_loc11_ / _loc12_));
                     _loc18_;
                     _loc18_;
                     _loc19_;
                     _loc14_ = this.§_-yl§(this.§_-2T§(_loc10_ - _loc4_.startAngle));
                     _loc19_;
                     _loc19_;
                     if((this.§_-yl§(this.§_-2T§(_loc10_ - _loc4_.startAngle))) < _loc13_ && !(_loc4_.startAngle == _loc4_.endAngle))
                     {
                        _loc19_;
                        param1.locationAngle = _loc4_.startAngle;
                        _loc16_ = _loc4_.curvePos(_loc4_.startAngle);
                        _loc19_;
                        param1.onJoin = true;
                        _loc6_ = this.planets[param1.locationPlanet].shapes[param1.locationShape].findJoinFor(_loc16_,_loc4_);
                        _loc18_;
                        _loc18_;
                        _loc19_;
                        param1.joinTargetAngle1 = this.§_-yl§(this.§_-2T§(_loc4_.startAngle - this.PI / 2));
                        _loc17_ = this.planets[param1.locationPlanet].shapes[param1.locationShape].curves[_loc6_[0]];
                        _loc19_;
                        _loc19_;
                        if(_loc6_[1] == 1)
                        {
                           _loc19_;
                           _loc19_;
                           param1.joinTargetAngle2 = this.§_-yl§(this.§_-2T§(this.planets[param1.locationPlanet].shapes[param1.locationShape].curves[_loc6_[0]].startAngle + this.PI / 2));
                           _loc18_;
                        }
                        else
                        {
                           param1.joinTargetAngle2 = this.§_-yl§(this.§_-2T§(this.planets[param1.locationPlanet].shapes[param1.locationShape].curves[_loc6_[0]].endAngle - this.PI / 2));
                           _loc18_;
                        }
                     }
                     else
                     {
                        _loc19_;
                        param1.locationAngle = this.§_-yl§(this.§_-2T§(param1.locationAngle - _loc13_));
                     }
                     _loc18_;
                     _loc19_;
                     _loc19_;
                     param1.iR = this.§_-yl§(this.§_-2T§(param1.locationAngle - this.PI / 2));
                  }
               }
               _loc3_ = 0;
            }
            _loc18_;
            _loc18_;
         }
         this.§_-e8§(param1);
         _loc19_;
         param1.lastSimTime = param1.lastSimTime + this.timeStep;
      }
      
      public function §_-8G§(param1:SimObject, param2:Boolean = false) : *
      {
         var _loc18_:* = true;
         var _loc19_:* = false;
         var _loc4_:§_-pb§ = null;
         var _loc5_:Shape = null;
         var _loc6_:Array = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:§_-pb§ = null;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:Point = null;
         var _loc16_:Point = null;
         var _loc17_:§_-pb§ = null;
         var _loc3_:Number = 20;
         _loc18_;
         _loc19_;
         _loc18_;
         _loc18_;
         _loc18_;
         if(!(param1 is Unit && this.mods[SafeGlobal.MOD_NOUNITWALK]) && !((this.simManager.turnOver) && param1 is Unit) || (this.§_-ZF§) || (param2))
         {
            while(_loc3_ > 0)
            {
               if(param1.onJoin)
               {
                  _loc18_;
                  _loc18_;
                  _loc7_ = this.§_-yl§(_loc3_ * this.§_-OL§);
                  _loc19_;
                  _loc19_;
                  _loc19_;
                  _loc19_;
                  _loc19_;
                  _loc18_;
                  _loc8_ = this.§_-yl§(this.§_-2T§(param1.iR - param1.joinTargetAngle1));
                  _loc19_;
                  if((this.§_-yl§(this.§_-2T§(param1.iR - param1.joinTargetAngle1))) < _loc7_)
                  {
                     _loc19_;
                     _loc18_;
                     _loc18_;
                     _loc18_;
                     _loc5_ = this.planets[param1.locationPlanet].shapes[param1.locationShape];
                     _loc4_ = _loc5_.curves[param1.locationCurve];
                     _loc19_;
                     _loc19_;
                     param1.iR = param1.joinTargetAngle1;
                     _loc18_;
                     param1.onJoin = false;
                     _loc6_ = this.planets[param1.locationPlanet].shapes[param1.locationShape].findJoinForThisAngle(new Point(param1.iX,param1.iY),param1.iR);
                     _loc9_ = _loc5_.curves[_loc6_[0]];
                     _loc19_;
                     _loc19_;
                     param1.locationCurve = _loc6_[0];
                     param1.locationCurveX = _loc9_.x;
                     _loc18_;
                     _loc18_;
                     param1.locationCurveY = _loc9_.y;
                     param1.locationCurveRadius = _loc9_.radius;
                     if(_loc6_[1] == 1)
                     {
                        param1.locationAngle = this.planets[param1.locationPlanet].shapes[param1.locationShape].curves[_loc6_[0]].startAngle;
                        _loc19_;
                     }
                     else
                     {
                        param1.locationAngle = this.planets[param1.locationPlanet].shapes[param1.locationShape].curves[_loc6_[0]].endAngle;
                        _loc19_;
                        _loc19_;
                     }
                  }
                  else
                  {
                     _loc18_;
                     param1.iR = this.§_-yl§(this.§_-2T§(param1.iR - _loc7_));
                  }
               }
               else
               {
                  _loc19_;
                  _loc19_;
                  _loc10_ = param1.locationAngle;
                  _loc19_;
                  _loc19_;
                  _loc19_;
                  _loc19_;
                  _loc19_;
                  _loc11_ = _loc3_ * this.§_-dR§;
                  _loc4_ = this.planets[param1.locationPlanet].shapes[param1.locationShape].curves[param1.locationCurve];
                  _loc19_;
                  _loc18_;
                  _loc12_ = 2 * this.PI * _loc4_.radius;
                  if(_loc4_.origCurve)
                  {
                     _loc19_;
                     _loc19_;
                     _loc18_;
                     _loc13_ = this.§_-yl§(this.§_-2T§(_loc11_ / _loc12_));
                     _loc18_;
                     _loc18_;
                     _loc14_ = this.§_-yl§(this.§_-2T§(_loc10_ - _loc4_.startAngle));
                     _loc19_;
                     _loc18_;
                     if(_loc14_ < _loc13_ && !(_loc4_.startAngle == _loc4_.endAngle))
                     {
                        _loc19_;
                        param1.locationAngle = _loc4_.startAngle;
                        _loc18_;
                        _loc18_;
                        _loc15_ = _loc4_.curvePos(_loc4_.startAngle);
                        _loc19_;
                        _loc19_;
                        param1.onJoin = true;
                        _loc6_ = this.planets[param1.locationPlanet].shapes[param1.locationShape].findJoinFor(_loc15_,_loc4_);
                        _loc19_;
                        _loc19_;
                        _loc18_;
                        _loc18_;
                        param1.joinTargetAngle2 = this.§_-yl§(this.§_-2T§(_loc4_.startAngle + this.PI / 2));
                        _loc19_;
                        if(_loc6_[1] == 1)
                        {
                           _loc19_;
                           _loc19_;
                           param1.joinTargetAngle1 = this.§_-yl§(this.§_-2T§(this.planets[param1.locationPlanet].shapes[param1.locationShape].curves[_loc6_[0]].startAngle - this.PI / 2));
                           _loc18_;
                        }
                        else
                        {
                           param1.joinTargetAngle1 = this.§_-yl§(this.§_-2T§(this.planets[param1.locationPlanet].shapes[param1.locationShape].curves[_loc6_[0]].endAngle + this.PI / 2));
                           _loc19_;
                           _loc19_;
                        }
                     }
                     else
                     {
                        _loc19_;
                        param1.locationAngle = this.§_-yl§(this.§_-2T§(param1.locationAngle - _loc13_));
                        _loc18_;
                        _loc18_;
                     }
                     _loc19_;
                     _loc18_;
                     _loc18_;
                     param1.iR = this.§_-yl§(this.§_-2T§(param1.locationAngle + this.PI / 2));
                  }
                  else
                  {
                     _loc18_;
                     _loc13_ = this.§_-yl§(this.§_-2T§(_loc11_ / _loc12_));
                     _loc18_;
                     _loc19_;
                     _loc19_;
                     _loc14_ = this.§_-yl§(this.§_-2T§(_loc4_.endAngle - _loc10_));
                     _loc18_;
                     if((this.§_-yl§(this.§_-2T§(_loc4_.endAngle - _loc10_))) < _loc13_ && !(_loc4_.startAngle == _loc4_.endAngle))
                     {
                        _loc19_;
                        _loc19_;
                        param1.locationAngle = _loc4_.endAngle;
                        _loc19_;
                        _loc19_;
                        _loc16_ = _loc4_.curvePos(_loc4_.endAngle);
                        _loc19_;
                        param1.onJoin = true;
                        _loc6_ = this.planets[param1.locationPlanet].shapes[param1.locationShape].findJoinFor(_loc16_,_loc4_);
                        _loc19_;
                        _loc19_;
                        _loc18_;
                        _loc19_;
                        _loc19_;
                        param1.joinTargetAngle2 = this.§_-yl§(this.§_-2T§(_loc4_.endAngle - this.PI / 2));
                        _loc17_ = this.planets[param1.locationPlanet].shapes[param1.locationShape].curves[_loc6_[0]];
                        _loc18_;
                        if(_loc6_[1] == 1)
                        {
                           _loc18_;
                           _loc18_;
                           param1.joinTargetAngle1 = this.§_-yl§(this.§_-2T§(this.planets[param1.locationPlanet].shapes[param1.locationShape].curves[_loc6_[0]].startAngle - this.PI / 2));
                           _loc19_;
                           _loc19_;
                        }
                        else
                        {
                           param1.joinTargetAngle1 = this.§_-yl§(this.§_-2T§(this.planets[param1.locationPlanet].shapes[param1.locationShape].curves[_loc6_[0]].endAngle + this.PI / 2));
                           _loc19_;
                        }
                     }
                     else
                     {
                        _loc18_;
                        _loc18_;
                        param1.locationAngle = this.§_-yl§(this.§_-2T§(param1.locationAngle + _loc13_));
                     }
                     _loc19_;
                     _loc19_;
                     _loc18_;
                     param1.iR = this.§_-yl§(this.§_-2T§(param1.locationAngle - this.PI / 2));
                  }
               }
               _loc3_ = 0;
            }
         }
         this.§_-e8§(param1);
         _loc19_;
         param1.lastSimTime = param1.lastSimTime + this.timeStep;
      }
      
      public function §_-2T§(param1:Number) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         if(param1 < 0)
         {
            while(param1 < 0)
            {
               _loc3_;
               _loc2_;
               _loc2_;
               _loc2_;
               _loc3_;
               _loc3_;
               _loc2_;
               _loc2_;
               var param1:Number = param1 + this.PI * 2;
               _loc2_;
            }
            _loc3_;
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            if(param1 > this.PI * 2)
            {
               _loc2_;
               while(param1 > this.PI * 2)
               {
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  param1 = param1 - this.PI * 2;
                  _loc3_;
               }
            }
         }
         return param1;
      }
      
      public function simMine(param1:Mine) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         param1.§_-eb§();
         var _loc2_:int = param1.lastSimTime;
         _loc4_;
         _loc4_;
         this.removeMine(param1);
         return _loc2_;
      }
      
      public function §_-1p§() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         while(_loc1_ < this.planets.length)
         {
            this.planets[_loc1_].testShieldHealth = this.planets[_loc1_].shieldHealth;
            _loc3_;
            _loc3_;
            _loc1_++;
            _loc3_;
         }
      }
      
      public function simProj(param1:Projectile) : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         param1.§_-eb§(this.timeStep);
         _loc6_;
         _loc6_;
         _loc5_;
         _loc5_;
         if(!param1.insidePlanet && !param1.§_-s-§)
         {
            _loc6_;
            this.§_-CM§(param1);
            _loc6_;
            _loc6_;
         }
         if((param1.unit) && (param1.unit.fire))
         {
            _loc6_;
            _loc6_;
            _loc5_;
            _loc5_;
            param1.unit.fireCount++;
            _loc5_;
            _loc5_;
            _loc5_;
            if(param1.unit.fireCount >= 10)
            {
               _loc6_;
               _loc5_;
               _loc5_;
               param1.unit.fireCount = 0;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               param1.unit.takeDamage(5,"fire");
               _loc6_;
               _loc6_;
               _loc6_;
               if(param1.unit.health <= 0)
               {
                  param1.init(param1.unit.costume.spriteSheets[SafeGlobal.ANIM_UNIT_FLYINGDEAD]);
                  _loc6_;
                  _loc6_;
                  param1.unit.newAnimState([SafeGlobal.ANIM_UNIT_FLYINGDEAD]);
                  param1.orientToPath = false;
                  param1.spin = 4;
                  param1.animStep = -1;
                  param1.unit.fire = false;
                  _loc5_;
                  _loc5_;
                  param1.§_-p2§();
               }
            }
         }
         var _loc2_:* = param1.lastSimTime;
         _loc5_;
         if(param1.dead)
         {
            _loc6_;
            _loc6_;
            this.§_-rK§(param1);
            _loc5_;
            this.removeProjectile(param1);
         }
         return _loc2_;
      }
      
      public function §_-fb§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc1_;
         return this.§_-yl§(1.3 * this.PI * 5 * 5 * 5);
      }
      
      public function §_-aO§() : *
      {
         var _loc59_:* = false;
         var _loc60_:* = true;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:Point = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = false;
         var _loc8_:String = null;
         var _loc9_:Array = null;
         var _loc10_:String = null;
         var _loc11_:String = null;
         var _loc12_:Array = null;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:* = NaN;
         var _loc16_:Point = null;
         var _loc17_:Point = null;
         var _loc18_:Array = null;
         var _loc19_:* = 0;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = 0;
         var _loc23_:Gate = null;
         var _loc24_:* = 0;
         var _loc25_:* = 0;
         var _loc26_:* = NaN;
         var _loc27_:* = 0;
         var _loc28_:* = NaN;
         var _loc29_:* = NaN;
         var _loc30_:* = NaN;
         var _loc31_:* = NaN;
         var _loc32_:* = NaN;
         var _loc33_:* = NaN;
         var _loc34_:* = NaN;
         var _loc35_:* = NaN;
         var _loc36_:* = NaN;
         var _loc37_:* = 0;
         var _loc38_:* = 0;
         var _loc39_:* = 0;
         var _loc40_:* = NaN;
         var _loc41_:* = NaN;
         var _loc42_:Point = null;
         var _loc43_:Array = null;
         var _loc44_:Planet = null;
         var _loc45_:Shape = null;
         var _loc46_:§_-pb§ = null;
         var _loc47_:Point = null;
         var _loc48_:Point = null;
         var _loc49_:Array = null;
         var _loc50_:* = 0;
         var _loc51_:* = 0;
         var _loc52_:* = 0;
         var _loc53_:§_-pb§ = null;
         var _loc54_:* = 0;
         var _loc55_:* = 0;
         var _loc56_:* = NaN;
         var _loc57_:* = NaN;
         _loc59_;
         if(this.§_-Vr§)
         {
            _loc59_;
            _loc59_;
            this.§_-v7§.x = this.§_-o4§.x - (mouseX - this.§_-0s§.x);
            _loc60_;
            _loc60_;
            this.§_-v7§.y = this.§_-o4§.y - (mouseY - this.§_-0s§.y);
            _loc59_;
            _loc59_;
            this.§_-a9§.active = true;
            this.§_-a9§.x = this.§_-v7§.x + 400;
            _loc59_;
            this.§_-a9§.y = this.§_-v7§.y + 300;
            _loc59_;
            _loc59_;
            _loc60_;
            _loc60_;
            _loc60_;
            _loc59_;
            _loc59_;
            if(this.§_-a9§.x < this.§ try§)
            {
               _loc60_;
               _loc59_;
               this.§_-a9§.x = this.§ try§;
               _loc60_;
               _loc60_;
            }
            else
            {
               _loc60_;
               _loc59_;
               if(this.§_-a9§.x > this.§_-Y5§)
               {
                  _loc59_;
                  _loc59_;
                  _loc59_;
                  this.§_-a9§.x = this.§_-Y5§;
                  _loc60_;
               }
            }
            _loc59_;
            _loc59_;
            if(this.§_-a9§.y < this.§_-Jn§)
            {
               _loc60_;
               _loc60_;
               _loc60_;
               this.§_-a9§.y = this.§_-Jn§;
               _loc60_;
               _loc60_;
            }
            else
            {
               _loc60_;
               _loc60_;
               _loc60_;
               if(this.§_-a9§.y > this.§_-on§)
               {
                  this.§_-a9§.y = this.§_-on§;
               }
            }
         }
         else
         {
            _loc59_;
            _loc59_;
            _loc59_;
            _loc60_;
            _loc60_;
            if((this.dragging) && this.currentWeapon == -1 && (!(this.§_-bg§.x == this.screen.mouseX) || !(this.§_-bg§.y == this.screen.mouseY)))
            {
               _loc59_;
               _loc59_;
               _loc59_;
               _loc1_ = this.§_-bg§.x - this.§_-0s§.x;
               _loc2_ = this.§_-bg§.y - this.§_-0s§.y;
               _loc60_;
               _loc60_;
               _loc60_;
               _loc3_ = this.units[this.currentUnit].startPoint();
               _loc59_;
               _loc60_;
               _loc4_ = _loc3_.x - this.screen.mouseX;
               _loc60_;
               _loc59_;
               _loc59_;
               _loc5_ = _loc3_.y - this.screen.mouseY;
               _loc59_;
               _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               if(_loc6_ >= 30)
               {
                  _loc60_;
                  _loc60_;
                  _loc60_;
                  _loc60_;
                  _loc60_;
                  if(this.units[this.currentUnit].animState != SafeGlobal.ANIM_UNIT_SLEEP)
                  {
                     _loc60_;
                     _loc60_;
                     _loc59_;
                     this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_SLEEP]);
                  }
               }
               else
               {
                  _loc59_;
                  _loc59_;
                  _loc59_;
                  if(this.units[this.currentUnit].animState != SafeGlobal.ANIM_UNIT_BOB)
                  {
                     this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
                     _loc60_;
                  }
               }
               this.§_-bg§.x = this.screen.mouseX;
               this.§_-bg§.y = this.screen.mouseY;
            }
            else
            {
               _loc60_;
               _loc60_;
               _loc60_;
               _loc59_;
               _loc59_;
               if((this.dragging) && this.§_-Db§[1] == SafeGlobal.WEAPONTYPE_PROJECTILE && (!(this.§_-bg§.x == this.screen.mouseX) || !(this.§_-bg§.y == this.screen.mouseY)))
               {
                  this.§_-5G§.graphics.clear();
                  _loc59_;
                  _loc59_;
                  _loc60_;
                  _loc60_;
                  this.§_-xK§.active = false;
                  _loc60_;
                  this.§_-xK§.dead = false;
                  _loc59_;
                  _loc7_ = true;
                  _loc59_;
                  _loc59_;
                  _loc60_;
                  if(this.§_-Db§[0] == SafeGlobal.WEAPONINFO_CUSTOM[0])
                  {
                     _loc60_;
                     _loc60_;
                     _loc59_;
                     _loc60_;
                     _loc60_;
                     _loc60_;
                     _loc8_ = this.teams[this.units[this.currentUnit].team].customWeaponStrings[0];
                  }
                  else
                  {
                     _loc59_;
                     _loc59_;
                     _loc59_;
                     if(this.§_-Db§[0] == SafeGlobal.WEAPONINFO_CUSTOM2[0])
                     {
                        _loc59_;
                        _loc59_;
                        _loc59_;
                        _loc60_;
                        _loc60_;
                        _loc60_;
                        _loc8_ = this.teams[this.units[this.currentUnit].team].customWeaponStrings[1];
                     }
                     else
                     {
                        _loc59_;
                        if(this.§_-Db§[0] == SafeGlobal.WEAPONINFO_CUSTOM3[0])
                        {
                           _loc60_;
                           _loc60_;
                           _loc60_;
                           _loc8_ = this.teams[this.units[this.currentUnit].team].customWeaponStrings[2];
                        }
                        else
                        {
                           _loc7_ = false;
                           _loc60_;
                           _loc60_;
                           _loc8_ = this.§_-Db§[4];
                        }
                     }
                  }
                  _loc9_ = _loc8_.split("/");
                  _loc59_;
                  _loc10_ = _loc9_[0];
                  _loc59_;
                  _loc60_;
                  _loc60_;
                  _loc11_ = _loc9_[1];
                  _loc59_;
                  this.§_-xK§.§_-s-§ = false;
                  _loc59_;
                  _loc59_;
                  _loc60_;
                  _loc60_;
                  if((_loc11_) && !(_loc11_ == ""))
                  {
                     _loc60_;
                     this.§_-xK§.useProjString(_loc11_,_loc7_);
                  }
                  _loc59_;
                  this.§_-xK§.§_-l2§ = "";
                  _loc60_;
                  _loc60_;
                  this.§_-xK§.mass = this.§_-fb§();
                  _loc60_;
                  _loc60_;
                  this.§_-bg§.x = this.screen.mouseX;
                  _loc60_;
                  this.§_-bg§.y = this.screen.mouseY;
                  _loc59_;
                  _loc59_;
                  _loc60_;
                  _loc60_;
                  _loc60_;
                  _loc1_ = this.§_-bg§.x - this.§_-0s§.x;
                  _loc2_ = this.§_-bg§.y - this.§_-0s§.y;
                  _loc3_ = this.units[this.currentUnit].startPoint();
                  _loc59_;
                  _loc59_;
                  _loc59_;
                  _loc59_;
                  _loc4_ = _loc3_.x - this.screen.mouseX;
                  _loc60_;
                  _loc60_;
                  _loc60_;
                  _loc60_;
                  _loc60_;
                  _loc5_ = _loc3_.y - this.screen.mouseY;
                  _loc59_;
                  _loc59_;
                  _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
                  if(_loc6_ >= 30)
                  {
                     _loc60_;
                     _loc59_;
                     _loc60_;
                     _loc60_;
                     if(!(this.§_-Db§[0] == SafeGlobal.WEAPONINFO_JETPACK[0]) && !(this.§_-Db§[0] == SafeGlobal.WEAPONINFO_GRAVITEEBALL[0]))
                     {
                        this.§_-Nm§();
                     }
                     _loc12_ = this.§_-Db§[3];
                     _loc59_;
                     _loc59_;
                     _loc13_ = _loc12_[0];
                     _loc60_;
                     _loc60_;
                     _loc14_ = _loc12_[1];
                     _loc59_;
                     _loc59_;
                     _loc15_ = Math.atan2(_loc2_,_loc1_);
                     _loc60_;
                     _loc59_;
                     _loc59_;
                     _loc59_;
                     _loc59_;
                     _loc59_;
                     _loc59_;
                     if(!(this.§_-Db§[0] == SafeGlobal.WEAPONINFO_JETPACK[0]) && !(this.§_-Db§[0] == SafeGlobal.§_-Ny§[0]))
                     {
                        _loc59_;
                        _loc60_;
                        _loc60_;
                        _loc16_ = this.units[this.currentUnit].startPoint(_loc13_);
                        _loc17_ = new Point(_loc16_.x,_loc16_.y);
                        _loc16_.x = _loc16_.x + Math.cos(_loc15_) * _loc14_;
                        _loc16_.y = _loc16_.y + Math.sin(_loc15_) * _loc14_;
                     }
                     else
                     {
                        _loc16_ = this.units[this.currentUnit].startPoint();
                        _loc17_ = new Point(_loc16_.x,_loc16_.y);
                     }
                     _loc16_.x = this.§_-yl§(_loc16_.x);
                     _loc60_;
                     _loc16_.y = this.§_-yl§(_loc16_.y);
                     _loc17_.x = this.§_-yl§(_loc17_.x);
                     _loc59_;
                     _loc59_;
                     _loc17_.y = this.§_-yl§(_loc17_.y);
                     _loc59_;
                     _loc59_;
                     _loc60_;
                     _loc59_;
                     _loc59_;
                     this.§_-xK§.iX = this.§_-xK§.x = this.§_-xK§.§_-JB§ = _loc16_.x;
                     _loc59_;
                     _loc59_;
                     _loc59_;
                     _loc59_;
                     this.§_-xK§.iY = this.§_-xK§.y = this.§_-xK§.§_-Uv§ = _loc16_.y;
                     _loc60_;
                     _loc60_;
                     _loc60_;
                     _loc60_;
                     if(this.§_-Db§[0] == SafeGlobal.WEAPONINFO_JETPACK[0] || this.§_-Db§[0] == SafeGlobal.§_-Ny§[0])
                     {
                        _loc60_;
                        _loc60_;
                        _loc60_;
                        _loc60_;
                        this.§_-xK§.§_-8z§ = true;
                     }
                     else
                     {
                        _loc59_;
                        _loc59_;
                        _loc59_;
                        this.§_-xK§.§_-8z§ = false;
                     }
                     this.§_-1p§();
                     _loc59_;
                     _loc59_;
                     _loc59_;
                     _loc59_;
                     _loc59_;
                     this.§_-xK§.momX = _loc1_ * this.§_-q7§;
                     _loc59_;
                     this.§_-xK§.momY = _loc2_ * this.§_-q7§;
                     this.§_-Jf§();
                     this.§_-xK§.initialPlanetCheck = true;
                     _loc59_;
                     this.§_-xK§.initialPoint = _loc17_;
                     _loc60_;
                     _loc60_;
                     _loc19_ = 0;
                     _loc59_;
                     _loc59_;
                     _loc60_;
                     this.§_-xK§.startSimTime = this.§_-xK§.lastSimTime = 0;
                     this.§_-xK§.setIgnoreUnit(this.currentUnit);
                     while(true)
                     {
                        _loc59_;
                        _loc59_;
                        if(!(!this.§_-xK§.dead && this.§_-dp§.length < Math.floor((this.units[this.currentUnit].accuracy.getInt() + 1) * 1.5) + this.§_-xK§.§_-yX§ * 2 + 12))
                        {
                           break;
                        }
                        this.§_-xK§.§_-gN§ = true;
                        _loc60_;
                        _loc60_;
                        this.§_-xK§.§_-eb§(this.timeStep);
                        if(!this.§_-xK§.§_-s-§)
                        {
                           this.§_-CM§(this.§_-xK§);
                           _loc60_;
                        }
                        _loc60_;
                        if(this.§_-xK§.dead)
                        {
                           _loc18_ = this.addPreviewPoint(this.§_-xK§.§_-p-§.x,this.§_-xK§.§_-p-§.y,_loc19_);
                           _loc60_;
                           _loc60_;
                        }
                        else if(this.§_-xK§.§_-gN§)
                        {
                           _loc18_ = this.addPreviewPoint(this.§_-xK§.x,this.§_-xK§.y,_loc19_);
                        }
                        else
                        {
                           _loc59_;
                           _loc59_;
                           if(this.§_-dp§.length > 0)
                           {
                              _loc59_;
                              _loc59_;
                              _loc60_;
                              _loc60_;
                              _loc59_;
                              _loc59_;
                              _loc19_ = this.§_-dp§[this.§_-dp§.length - 1].dist;
                              _loc60_;
                              _loc60_;
                              this.§_-81§ = null;
                              _loc59_;
                           }
                           else
                           {
                              _loc19_ = 0;
                              this.§_-81§ = null;
                              _loc59_;
                              _loc59_;
                           }
                        }
                        
                        if(_loc18_.length > 0)
                        {
                           _loc59_;
                           _loc59_;
                           _loc60_;
                           _loc22_ = 0;
                           _loc59_;
                           while(_loc22_ < _loc18_.length)
                           {
                              this.§_-dp§.push(_loc18_[_loc22_]);
                              _loc60_;
                              _loc22_++;
                           }
                           _loc59_;
                           _loc18_.splice(0);
                        }
                     }
                     while(this.§_-dp§.length > Math.floor((this.units[this.currentUnit].accuracy.getInt() + 1) * 1.5) + this.§_-xK§.§_-yX§ * 2 + 12)
                     {
                        this.§_-dp§.splice(this.§_-dp§.length - 1,1);
                        _loc60_;
                     }
                     this.§_-oS§();
                     _loc60_;
                     _loc60_;
                     this.§_-xK§.§_-vx§();
                     _loc20_ = Math.atan2(_loc2_,_loc1_);
                     if(this.§_-gK§)
                     {
                        _loc59_;
                        this.§_-gK§.rotation = (_loc20_ - this.PI) * 180 / this.PI;
                     }
                     _loc59_;
                     _loc59_;
                     _loc21_ = (_loc20_ - this.units[this.currentUnit].iR) * 180 / this.PI;
                     _loc59_;
                     while(true)
                     {
                        _loc60_;
                        if(_loc21_ >= 0)
                        {
                           break;
                        }
                        _loc59_;
                        _loc59_;
                        _loc21_ = _loc21_ + 360;
                        _loc59_;
                        _loc59_;
                     }
                     _loc60_;
                     while(true)
                     {
                        _loc60_;
                        if(_loc21_ <= 360)
                        {
                           break;
                        }
                        _loc59_;
                        _loc59_;
                        _loc60_;
                        _loc60_;
                        _loc60_;
                        _loc21_ = _loc21_ - 360;
                     }
                     _loc60_;
                     _loc60_;
                     _loc60_;
                     _loc60_;
                     if(this.§_-Db§[0] == SafeGlobal.WEAPONINFO_JETPACK[0])
                     {
                        _loc59_;
                        _loc59_;
                        if(_loc21_ < 90 || _loc21_ > 270)
                        {
                           _loc60_;
                           _loc60_;
                           _loc59_;
                           this.units[this.currentUnit].scaleX = -1;
                           _loc59_;
                           _loc59_;
                           this.units[this.currentUnit].healthDisplay.scaleX = -1;
                           _loc59_;
                           _loc59_;
                           this.units[this.currentUnit].nameDisplay.scaleX = -1;
                           _loc60_;
                           _loc60_;
                        }
                        else
                        {
                           this.units[this.currentUnit].scaleX = 1;
                           _loc59_;
                           _loc59_;
                           this.units[this.currentUnit].healthDisplay.scaleX = 1;
                           this.units[this.currentUnit].nameDisplay.scaleX = 1;
                           _loc60_;
                        }
                        this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_JETPACKAIM]);
                     }
                     else
                     {
                        _loc59_;
                        _loc59_;
                        _loc59_;
                        if(_loc21_ < 90 || _loc21_ > 270)
                        {
                           this.units[this.currentUnit].scaleX = -1;
                           _loc60_;
                           _loc60_;
                           _loc60_;
                           this.units[this.currentUnit].healthDisplay.scaleX = -1;
                           _loc60_;
                           this.units[this.currentUnit].nameDisplay.scaleX = -1;
                           _loc59_;
                           if(this.§_-gK§)
                           {
                              _loc60_;
                              _loc60_;
                              this.§_-gK§.scaleY = -1;
                           }
                        }
                        else
                        {
                           this.units[this.currentUnit].scaleX = 1;
                           _loc59_;
                           _loc60_;
                           _loc60_;
                           _loc59_;
                           _loc59_;
                           this.units[this.currentUnit].healthDisplay.scaleX = 1;
                           _loc60_;
                           _loc60_;
                           this.units[this.currentUnit].nameDisplay.scaleX = 1;
                           if(this.§_-gK§)
                           {
                              this.§_-gK§.scaleY = 1;
                           }
                        }
                        _loc59_;
                        _loc59_;
                        if(this.§_-Db§[0] == SafeGlobal.WEAPONINFO_GRAVITEEBALL[0])
                        {
                           _loc60_;
                           _loc60_;
                           _loc59_;
                           if(!(this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_GOLFSWINGSETUP) && !(this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_GOLFSWINGHOLD))
                           {
                              _loc59_;
                              this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_GOLFSWINGSETUP,SafeGlobal.ANIM_UNIT_GOLFSWINGHOLD]);
                              _loc60_;
                              _loc60_;
                           }
                        }
                        else
                        {
                           this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_AIM],false,0,_loc21_);
                        }
                     }
                     this.screen.setChildIndex(this.§_-12§,this.screen.numChildren - 1);
                  }
                  else
                  {
                     _loc59_;
                     _loc60_;
                     _loc60_;
                     if(this.units[this.currentUnit].animState != SafeGlobal.ANIM_UNIT_BOB)
                     {
                        _loc60_;
                        _loc60_;
                        _loc60_;
                        _loc60_;
                        _loc60_;
                        this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
                        _loc59_;
                        _loc59_;
                     }
                     this.§_-6r§();
                     _loc59_;
                     _loc59_;
                     this.§_-dp§.splice(0);
                     _loc59_;
                     this.§_-QY§();
                  }
               }
               else
               {
                  _loc59_;
                  _loc59_;
                  if((this.dragging) && this.§_-Db§[1] == SafeGlobal.WEAPONTYPE_MINE && (!(this.§_-bg§.x == this.screen.mouseX) || !(this.§_-bg§.y == this.screen.mouseY)))
                  {
                     _loc59_;
                     _loc59_;
                     _loc1_ = this.§_-bg§.x - this.§_-0s§.x;
                     _loc2_ = this.§_-bg§.y - this.§_-0s§.y;
                     _loc59_;
                     _loc59_;
                     _loc59_;
                     _loc3_ = this.units[this.currentUnit].startPoint();
                     _loc60_;
                     _loc59_;
                     _loc59_;
                     _loc60_;
                     _loc4_ = _loc3_.x - this.screen.mouseX;
                     _loc59_;
                     _loc59_;
                     _loc5_ = _loc3_.y - this.screen.mouseY;
                     _loc59_;
                     _loc59_;
                     _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
                     if(_loc6_ >= 30)
                     {
                        _loc60_;
                        _loc60_;
                        _loc60_;
                        _loc60_;
                        if(this.§_-Db§[0] == SafeGlobal.WEAPONINFO_MINE[0] && !(this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_LAYSTANDARDMINE))
                        {
                           _loc59_;
                           this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYSTANDARDMINE]);
                        }
                        else
                        {
                           _loc60_;
                           _loc60_;
                           _loc59_;
                           _loc59_;
                           _loc59_;
                           if(this.§_-Db§[0] == SafeGlobal.WEAPONINFO_CLUSTERMINE[0] && !(this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_LAYCLUSTERMINE))
                           {
                              _loc59_;
                              _loc59_;
                              _loc59_;
                              _loc59_;
                              this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYCLUSTERMINE]);
                           }
                           else
                           {
                              _loc59_;
                              _loc59_;
                              _loc59_;
                              if(this.§_-Db§[0] == SafeGlobal.WEAPONINFO_DRILLMINE[0] && !(this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_LAYDRILLMINE))
                              {
                                 this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYDRILLMINE]);
                              }
                              else
                              {
                                 _loc59_;
                                 _loc59_;
                                 _loc59_;
                                 if(this.§_-Db§[0] == SafeGlobal.WEAPONINFO_ROVER[0] && !(this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_LAYROVER))
                                 {
                                    _loc60_;
                                    _loc60_;
                                    _loc60_;
                                    this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYROVER]);
                                    _loc59_;
                                    _loc59_;
                                 }
                                 else
                                 {
                                    _loc59_;
                                    if(this.§_-Db§[0] == SafeGlobal.WEAPONINFO_SUPERROVER[0] && !(this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_LAYSUPERROVER))
                                    {
                                       _loc60_;
                                       this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYSUPERROVER]);
                                    }
                                    else if(this.§_-Db§[0] == SafeGlobal.§_-0q§[0] && !(this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_LAYMAGNETICROVER))
                                    {
                                       _loc60_;
                                       _loc60_;
                                       this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYMAGNETICROVER]);
                                    }
                                    
                                 }
                              }
                           }
                        }
                     }
                     else if(this.units[this.currentUnit].animState != SafeGlobal.ANIM_UNIT_BOB)
                     {
                        _loc59_;
                        _loc59_;
                        this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
                     }
                     
                     this.§_-bg§.x = this.screen.mouseX;
                     this.§_-bg§.y = this.screen.mouseY;
                  }
                  else
                  {
                     _loc60_;
                     _loc60_;
                     if((this.dragging) && this.§_-Db§[1] == SafeGlobal.WEAPONTYPE_GATE && (!(this.§_-bg§.x == this.screen.mouseX) || !(this.§_-bg§.y == this.screen.mouseY)))
                     {
                        _loc23_ = this.gates[this.gates.length - 1];
                        _loc59_;
                        _loc59_;
                        _loc60_;
                        _loc60_;
                        _loc24_ = _loc23_.iX - this.screen.mouseX;
                        _loc60_;
                        _loc59_;
                        _loc59_;
                        _loc60_;
                        _loc60_;
                        _loc25_ = _loc23_.iY - this.screen.mouseY;
                        _loc59_;
                        _loc60_;
                        _loc59_;
                        _loc59_;
                        _loc26_ = Math.atan2(_loc25_,_loc24_);
                        _loc60_;
                        _loc60_;
                        _loc27_ = (Math.atan2(_loc25_,_loc24_)) * 180 / this.PI;
                        _loc60_;
                        _loc23_.iR = _loc23_.rotation = _loc27_;
                     }
                     else
                     {
                        _loc60_;
                        _loc60_;
                        _loc60_;
                        if((this.dragging) && this.§_-Db§[1] == SafeGlobal.WEAPONTYPE_INCOMING)
                        {
                           _loc60_;
                           _loc60_;
                           _loc28_ = mouseX - 400;
                           _loc29_ = mouseY - 300;
                           _loc59_;
                           _loc59_;
                           _loc59_;
                           _loc59_;
                           _loc30_ = Math.atan2(_loc29_,_loc28_);
                           _loc59_;
                           _loc59_;
                           _loc60_;
                           _loc60_;
                           this.§_-kI§.iR = _loc30_;
                           _loc59_;
                           _loc59_;
                           _loc59_;
                           _loc59_;
                           _loc59_;
                           this.§_-kI§.rotation = this.§_-kI§.iR * 180 / this.PI + 90;
                           _loc60_;
                           _loc59_;
                           _loc59_;
                           _loc59_;
                           _loc60_;
                           _loc60_;
                           _loc59_;
                           _loc60_;
                           _loc60_;
                           _loc60_;
                           this.§_-kI§.iX = this.§_-kI§.x = (this.§_-3O§ + 25) * Math.cos(_loc30_) + this.§_-Bf§.x;
                           _loc60_;
                           _loc60_;
                           _loc59_;
                           _loc59_;
                           this.§_-kI§.iY = this.§_-kI§.y = (this.§_-3O§ + 25) * Math.sin(_loc30_) + this.§_-Bf§.y;
                           _loc60_;
                           _loc60_;
                        }
                        else
                        {
                           _loc59_;
                           if((this.dragging) && this.§_-Db§[1] == SafeGlobal.WEAPONTYPE_MELEE)
                           {
                              _loc60_;
                              this.§_-bg§.x = this.screen.mouseX;
                              _loc60_;
                              _loc60_;
                              this.§_-bg§.y = this.screen.mouseY;
                              _loc1_ = this.screen.mouseX - this.§_-0s§.x;
                              _loc60_;
                              _loc60_;
                              _loc60_;
                              _loc60_;
                              _loc59_;
                              _loc2_ = this.screen.mouseY - this.§_-0s§.y;
                              _loc3_ = this.units[this.currentUnit].startPoint();
                              _loc59_;
                              _loc59_;
                              _loc59_;
                              _loc4_ = _loc3_.x - this.screen.mouseX;
                              _loc60_;
                              _loc59_;
                              _loc59_;
                              _loc5_ = _loc3_.y - this.screen.mouseY;
                              _loc59_;
                              _loc59_;
                              _loc59_;
                              _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
                              if(_loc6_ >= 30)
                              {
                                 _loc59_;
                                 _loc59_;
                                 _loc59_;
                                 _loc60_;
                                 _loc60_;
                                 _loc59_;
                                 _loc59_;
                                 _loc60_;
                                 if(this.§_-Db§[0] == SafeGlobal.WEAPONINFO_SPACEBALLBAT[0] && !(this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_SPACEBALLSWINGSETUP) && !(this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_SPACEBALLSWINGHOLD))
                                 {
                                    _loc60_;
                                    this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_SPACEBALLSWINGSETUP,SafeGlobal.ANIM_UNIT_SPACEBALLSWINGHOLD]);
                                 }
                                 else
                                 {
                                    _loc59_;
                                    _loc59_;
                                    _loc59_;
                                    _loc59_;
                                    _loc59_;
                                    _loc59_;
                                    if(this.§_-Db§[0] == SafeGlobal.WEAPONINFO_FIREPUNCH[0] && !(this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_UPPERCUTSETUP) && !(this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_UPPERCUTHOLD))
                                    {
                                       this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_UPPERCUTSETUP,SafeGlobal.ANIM_UNIT_UPPERCUTHOLD]);
                                    }
                                    else
                                    {
                                       _loc59_;
                                       if(this.§_-Db§[0] == SafeGlobal.WEAPONINFO_TAZER[0] && !(this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_TAZERJABSETUP) && !(this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_TAZERJABHOLD))
                                       {
                                          _loc59_;
                                          _loc59_;
                                          this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_TAZERJABSETUP,SafeGlobal.ANIM_UNIT_TAZERJABHOLD]);
                                       }
                                       else
                                       {
                                          _loc60_;
                                          _loc60_;
                                          _loc60_;
                                          _loc60_;
                                          if(this.§_-Db§[0] == SafeGlobal.§_-na§[0] && !(this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_ENERGYSWORDSETUP) && !(this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_ENERGYSWORDHOLD))
                                          {
                                             _loc59_;
                                             _loc59_;
                                             _loc59_;
                                             _loc60_;
                                             this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_ENERGYSWORDSETUP,SafeGlobal.ANIM_UNIT_ENERGYSWORDHOLD]);
                                             _loc59_;
                                          }
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 _loc60_;
                                 if(this.units[this.currentUnit].animState != SafeGlobal.ANIM_UNIT_BOB)
                                 {
                                    _loc59_;
                                    this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
                                 }
                              }
                           }
                           else
                           {
                              _loc59_;
                              if((this.dragging) && this.§_-Db§[1] == SafeGlobal.WEAPONTYPE_PLANETGATE)
                              {
                                 _loc59_;
                                 _loc59_;
                                 _loc1_ = this.screen.mouseX - this.§_-0s§.x;
                                 _loc60_;
                                 _loc60_;
                                 _loc60_;
                                 _loc2_ = this.screen.mouseY - this.§_-0s§.y;
                                 _loc3_ = this.units[this.currentUnit].startPoint();
                                 _loc59_;
                                 _loc60_;
                                 _loc4_ = _loc3_.x - this.screen.mouseX;
                                 _loc59_;
                                 _loc59_;
                                 _loc60_;
                                 _loc60_;
                                 _loc5_ = _loc3_.y - this.screen.mouseY;
                                 _loc59_;
                                 _loc59_;
                                 _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
                                 if(_loc6_ >= 30)
                                 {
                                    _loc60_;
                                    _loc60_;
                                    _loc60_;
                                    _loc60_;
                                    _loc60_;
                                    if(this.units[this.currentUnit].animState != SafeGlobal.ANIM_UNIT_TABLET)
                                    {
                                       _loc59_;
                                       _loc60_;
                                       this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_TABLET]);
                                       _loc59_;
                                       _loc59_;
                                    }
                                 }
                                 else
                                 {
                                    _loc59_;
                                    _loc59_;
                                    _loc60_;
                                    _loc60_;
                                    if(this.units[this.currentUnit].animState != SafeGlobal.ANIM_UNIT_BOB)
                                    {
                                       _loc60_;
                                       _loc60_;
                                       this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
                                    }
                                 }
                              }
                              else
                              {
                                 _loc60_;
                                 _loc60_;
                                 if((this.dragging) && this.§_-Db§[1] == SafeGlobal.WEAPONTYPE_TELEPORT)
                                 {
                                    _loc60_;
                                    _loc60_;
                                    _loc59_;
                                    _loc59_;
                                    _loc1_ = this.screen.mouseX - this.§_-0s§.x;
                                    _loc2_ = this.screen.mouseY - this.§_-0s§.y;
                                    _loc3_ = this.units[this.currentUnit].startPoint();
                                    _loc60_;
                                    _loc60_;
                                    _loc4_ = _loc3_.x - this.screen.mouseX;
                                    _loc60_;
                                    _loc59_;
                                    _loc5_ = _loc3_.y - this.screen.mouseY;
                                    _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
                                    _loc60_;
                                    if(_loc6_ >= 30)
                                    {
                                       _loc60_;
                                       _loc60_;
                                       _loc59_;
                                       _loc59_;
                                       if(this.units[this.currentUnit].animState != SafeGlobal.ANIM_UNIT_TABLET)
                                       {
                                          _loc59_;
                                          _loc59_;
                                          this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_TABLET]);
                                       }
                                       if(!this.screen.contains(this.§_-7c§))
                                       {
                                          _loc59_;
                                          _loc59_;
                                          this.screen.addChild(this.§_-7c§);
                                       }
                                       _loc60_;
                                       _loc59_;
                                       this.§_-7c§.visible = true;
                                       _loc36_ = 1.0E15;
                                       _loc42_ = new Point(0,0);
                                       _loc47_ = new Point(0,0);
                                       _loc48_ = new Point(0,0);
                                       _loc49_ = [];
                                       _loc59_;
                                       _loc60_;
                                       _loc50_ = 0;
                                       _loc60_;
                                       _loc60_;
                                       while(true)
                                       {
                                          _loc59_;
                                          if(_loc50_ >= this.planets.length)
                                          {
                                             break;
                                          }
                                          _loc60_;
                                          _loc44_ = this.planets[_loc50_];
                                          _loc59_;
                                          _loc59_;
                                          _loc60_;
                                          if(!_loc44_.sun && !_loc44_.blackHole)
                                          {
                                             _loc59_;
                                             _loc59_;
                                             _loc60_;
                                             _loc54_ = 0;
                                             _loc59_;
                                             _loc59_;
                                             while(_loc54_ < _loc44_.shapes.length)
                                             {
                                                _loc45_ = this.planets[_loc50_].shapes[_loc54_];
                                                _loc59_;
                                                _loc59_;
                                                _loc60_;
                                                _loc60_;
                                                _loc55_ = 0;
                                                _loc60_;
                                                while(_loc55_ < _loc45_.curves.length)
                                                {
                                                   _loc46_ = _loc45_.curves[_loc55_];
                                                   _loc60_;
                                                   _loc60_;
                                                   _loc59_;
                                                   _loc34_ = _loc46_.x - this.screen.mouseX;
                                                   _loc60_;
                                                   _loc60_;
                                                   _loc35_ = _loc46_.y - this.screen.mouseY;
                                                   _loc59_;
                                                   _loc60_;
                                                   _loc56_ = this.§_-yl§(this.§_-2T§(Math.atan2(_loc35_,_loc34_)));
                                                   _loc60_;
                                                   _loc60_;
                                                   _loc57_ = this.§_-yl§(this.§_-2T§(_loc56_ + this.PI));
                                                   if(this.§_-7L§(_loc56_,_loc46_.startAngle,_loc46_.endAngle))
                                                   {
                                                      _loc49_.push([_loc50_,_loc54_,_loc55_,_loc56_]);
                                                      _loc60_;
                                                   }
                                                   else
                                                   {
                                                      _loc49_.push([_loc50_,_loc54_,_loc55_,_loc46_.startAngle]);
                                                      _loc60_;
                                                      _loc49_.push([_loc50_,_loc54_,_loc55_,_loc46_.endAngle]);
                                                   }
                                                   if(this.§_-7L§(_loc57_,_loc46_.startAngle,_loc46_.endAngle))
                                                   {
                                                      _loc60_;
                                                      _loc60_;
                                                      _loc49_.push([_loc50_,_loc54_,_loc55_,_loc57_]);
                                                      _loc60_;
                                                   }
                                                   else
                                                   {
                                                      _loc49_.push([_loc50_,_loc54_,_loc55_,_loc46_.startAngle]);
                                                      _loc49_.push([_loc50_,_loc54_,_loc55_,_loc46_.endAngle]);
                                                      _loc59_;
                                                      _loc59_;
                                                   }
                                                   _loc55_++;
                                                }
                                                _loc59_;
                                                _loc54_++;
                                             }
                                             _loc59_;
                                             _loc59_;
                                          }
                                          _loc50_++;
                                       }
                                       _loc60_;
                                       _loc60_;
                                       _loc52_ = 0;
                                       _loc60_;
                                       _loc60_;
                                       while(_loc52_ < _loc49_.length)
                                       {
                                          _loc59_;
                                          _loc59_;
                                          _loc42_ = this.planets[_loc49_[_loc52_][0]].shapes[_loc49_[_loc52_][1]].curves[_loc49_[_loc52_][2]].curvePos(_loc49_[_loc52_][3]);
                                          _loc59_;
                                          _loc31_ = this.screen.mouseX - _loc42_.x;
                                          _loc60_;
                                          _loc32_ = this.screen.mouseY - _loc42_.y;
                                          _loc60_;
                                          _loc60_;
                                          _loc60_;
                                          _loc59_;
                                          _loc59_;
                                          _loc33_ = Math.sqrt(_loc31_ * _loc31_ + _loc32_ * _loc32_);
                                          if((Math.sqrt(_loc31_ * _loc31_ + _loc32_ * _loc32_)) < _loc36_)
                                          {
                                             _loc36_ = _loc33_;
                                             _loc60_;
                                             _loc60_;
                                             _loc51_ = _loc52_;
                                             _loc59_;
                                             _loc59_;
                                          }
                                          _loc52_++;
                                       }
                                       _loc53_ = this.planets[_loc49_[_loc51_][0]].shapes[_loc49_[_loc51_][1]].curves[_loc49_[_loc51_][2]];
                                       _loc42_ = _loc53_.curvePos(_loc49_[_loc51_][3]);
                                       _loc59_;
                                       _loc59_;
                                       _loc59_;
                                       _loc59_;
                                       this.§_-7c§.x = _loc42_.x;
                                       _loc60_;
                                       _loc59_;
                                       this.§_-7c§.y = _loc42_.y;
                                       _loc59_;
                                       _loc59_;
                                       if(_loc53_.origCurve)
                                       {
                                          _loc59_;
                                          _loc59_;
                                          _loc60_;
                                          _loc59_;
                                          _loc59_;
                                          this.§_-7c§.rotation = (_loc49_[_loc51_][3] + this.PI / 2) * 180 / this.PI;
                                          _loc59_;
                                       }
                                       else
                                       {
                                          _loc59_;
                                          _loc59_;
                                          this.§_-7c§.rotation = (_loc49_[_loc51_][3] - this.PI / 2) * 180 / this.PI;
                                       }
                                    }
                                    else
                                    {
                                       this.§_-7c§.visible = false;
                                       _loc59_;
                                       _loc59_;
                                       _loc59_;
                                       _loc59_;
                                       if(this.units[this.currentUnit].animState != SafeGlobal.ANIM_UNIT_BOB)
                                       {
                                          _loc60_;
                                          this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function toggleWeaponPanel() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         if(this.weaponPanel.visible)
         {
            _loc2_;
            this.§_-yS§();
            _loc2_;
            _loc2_;
         }
         else
         {
            this.§_-cP§();
         }
      }
      
      public function cheatCleanUp() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.§_-m8§();
         _loc1_;
         _loc1_;
         this.§_-0T§();
         _loc1_;
         _loc1_;
         this.sendEndSim();
      }
      
      public function §_-yS§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         if((this.weaponPanel) && (this.weaponPanel.visible))
         {
            _loc2_;
            _loc2_;
            _loc2_;
            if(this.weaponPanel != null)
            {
               this.weaponPanel.visible = false;
            }
            _loc2_;
            if(this.§_-oN§ != null)
            {
               this.§_-oN§.tweenOnWeaponName();
            }
         }
      }
      
      public function §_-Tw§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         if(this.§_-oN§ != null)
         {
            _loc2_;
            _loc2_;
            this.§_-oN§.visible = false;
         }
      }
      
      public function activateUnactiveMines(param1:int) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc3_;
         _loc3_;
         _loc2_ = 0;
         while(_loc2_ < this.§_-ki§.length)
         {
            _loc3_;
            _loc3_;
            if(!this.§_-ki§[_loc2_].active)
            {
               _loc4_;
               _loc4_;
               this.§_-ki§[_loc2_].active = true;
               _loc3_;
               _loc3_;
               this.checkUnitProximity(this.§_-ki§[_loc2_],param1);
               _loc4_;
            }
            _loc2_++;
            _loc4_;
            _loc4_;
         }
      }
      
      public function §_-cP§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(this.weaponPanel != null)
         {
            _loc1_;
            _loc2_;
            this.weaponPanel.§_-Kj§();
            _loc2_;
            _loc2_;
            this.weaponPanel.visible = true;
            _loc1_;
            _loc1_;
         }
         _loc2_;
         if(this.§_-oN§ != null)
         {
            _loc2_;
            this.§_-oN§.§_-5w§();
         }
      }
      
      public function showWeaponPanelButton() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(!this.simOnly && !this.costumeCacheOnly && !this.replay)
         {
            _loc2_;
            _loc2_;
            _loc1_;
            if(this.§_-oN§ != null)
            {
               _loc1_;
               this.§_-oN§.visible = true;
            }
         }
      }
      
      public function §_-Qr§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc1_;
         if(!this.simOnly && !this.costumeCacheOnly && !this.replay)
         {
            _loc2_;
            _loc2_;
            this.§_-Bk§ = new Tween(this.statusBar,"y",null,this.statusBar.y,14,10,false);
            _loc1_;
            this.statusBar.visible = true;
         }
      }
      
      public function §_-tg§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.§_-Bk§ = new Tween(this.statusBar,"y",null,this.statusBar.y,-50,10,false);
         _loc2_;
         _loc2_;
         this.§_-Bk§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-lY§);
      }
      
      public function §_-lY§(param1:TweenEvent) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.statusBar.visible = false;
         _loc2_;
         this.§_-Bk§.removeEventListener(TweenEvent.MOTION_FINISH,this.§_-lY§);
      }
      
      public function §_-6r§() : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc3_;
         if(!this.simOnly && !this.costumeCacheOnly)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc1_ = this.§_-dp§.length;
            _loc4_;
            _loc2_ = 0;
            while(_loc2_ < _loc1_)
            {
               this.§do§.x = this.§_-dp§[_loc2_].x - this.§_-XK§ + this.screen.x;
               _loc3_;
               this.§do§.y = this.§_-dp§[_loc2_].y - this.§_-XK§ + this.screen.y;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc3_;
               _loc3_;
               if(_loc2_ == 10)
               {
                  _loc3_;
                  _loc3_;
               }
               this.§_-c6§.copyPixels(this.§_-uC§,this.§_-uC§.rect,this.§do§,null,null,false);
               _loc4_;
               _loc2_++;
               _loc3_;
               _loc3_;
            }
         }
      }
      
      public function §_-oS§() : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = NaN;
         var _loc4_:* = 0;
         _loc5_;
         _loc6_;
         _loc6_;
         _loc5_;
         if(!this.simOnly && !this.costumeCacheOnly)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc1_ = this.§_-dp§.length;
            _loc6_;
            _loc2_ = Math.floor((this.units[this.currentUnit].accuracy.getInt() + 1) * 1.5) + this.§_-xK§.§_-yX§ * 2 + 12;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc3_ = _loc2_ / 5;
            _loc5_;
            _loc4_ = 0;
            while(_loc4_ < _loc1_)
            {
               this.§_-0d§.x = this.§_-dp§[_loc4_].x - this.§_-XK§ + this.screen.x;
               _loc5_;
               _loc5_;
               this.§_-0d§.y = this.§_-dp§[_loc4_].y - this.§_-XK§ + this.screen.y;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               if(_loc4_ == 10)
               {
               }
               _loc6_;
               if(_loc4_ < _loc3_)
               {
                  this.§_-c6§.copyPixels(this.§_-jg§,this.dot1rect,this.§_-0d§,null,null,true);
               }
               else
               {
                  _loc6_;
                  _loc5_;
                  if(_loc4_ < _loc3_ * 2)
                  {
                     _loc6_;
                     _loc6_;
                     this.§_-c6§.copyPixels(this.§_-jg§,this.dot2rect,this.§_-0d§,null,null,true);
                     _loc5_;
                     _loc5_;
                  }
                  else
                  {
                     _loc5_;
                     _loc5_;
                     _loc6_;
                     _loc6_;
                     if(_loc4_ < _loc3_ * 3)
                     {
                        this.§_-c6§.copyPixels(this.§_-jg§,this.dot3rect,this.§_-0d§,null,null,true);
                     }
                     else
                     {
                        _loc6_;
                        if(_loc4_ < _loc3_ * 4)
                        {
                           _loc6_;
                           _loc6_;
                           this.§_-c6§.copyPixels(this.§_-jg§,this.dot4rect,this.§_-0d§,null,null,true);
                        }
                        else
                        {
                           this.§_-c6§.copyPixels(this.§_-jg§,this.dot5rect,this.§_-0d§,null,null,true);
                        }
                     }
                  }
               }
               _loc4_++;
            }
         }
      }
      
      public function selectWeapon(param1:int) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.currentWeapon = param1;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(this.currentWeapon == -1)
         {
            this.§_-Db§ = [-1,-1,-1,-1,"",-1];
            _loc3_;
            _loc3_;
         }
         else
         {
            this.§_-Db§ = SafeGlobal.§_-r§(param1);
         }
         _loc3_;
         _loc3_;
         if(this.§_-oN§ != null)
         {
            _loc2_;
            this.§_-oN§.§_-iN§(param1);
            _loc2_;
         }
         this.§_-yS§();
         _loc3_;
         _loc3_;
         if(this.§_-Db§[1] == SafeGlobal.WEAPONTYPE_GATE)
         {
            _loc3_;
            this.§_-F4§ = this.§_-Db§[3];
            _loc2_;
         }
         else
         {
            this.§_-F4§ = 0;
            _loc3_;
            _loc3_;
         }
         if(this.currentWeapon == 1)
         {
            this.onSelectClusterBazooka();
         }
      }
      
      public function §_-Iq§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.§_-Zv§.visible = false;
         _loc1_;
         this.§_-zY§.visible = false;
         this.§_-dK§.visible = false;
         _loc1_;
         this.§_-Hf§.visible = false;
         this.§_-mh§.visible = false;
         this.§_-t6§.visible = false;
         _loc1_;
         _loc1_;
         this.§_-7D§.visible = false;
         this.§_-8u§.visible = false;
         this.§_-5G§.visible = false;
         this.§_-12§.visible = false;
         this.debugLayer.visible = false;
      }
      
      public function §_-3o§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.§_-Zv§.visible = true;
         _loc1_;
         this.§_-zY§.visible = true;
         this.§_-dK§.visible = true;
         _loc2_;
         _loc2_;
         this.§_-Hf§.visible = true;
         _loc1_;
         this.§_-mh§.visible = true;
         this.§_-t6§.visible = true;
         this.§_-7D§.visible = true;
         this.§_-8u§.visible = true;
         this.§_-5G§.visible = true;
         _loc2_;
         _loc2_;
         this.§_-12§.visible = true;
         this.debugLayer.visible = true;
      }
      
      public function buildLevel() : *
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfucation" for better results.
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function requestCacheState() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         SafeGlobal.game_client.requestLatestCache();
      }
      
      public function §_-0U§() : *
      {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         _loc9_;
         _loc9_;
         _loc9_;
         _loc9_;
         _loc4_ = 0;
         _loc8_;
         _loc5_ = 0;
         while(true)
         {
            _loc8_;
            _loc8_;
            _loc9_;
            _loc9_;
            if(_loc5_ >= this.planets.length)
            {
               break;
            }
            _loc8_;
            _loc9_;
            _loc9_;
            _loc9_;
            _loc1_ = this.planets[_loc5_].x - this.§_-1T§;
            _loc9_;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc2_ = this.planets[_loc5_].y - this.§_-1T§;
            _loc3_ = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
            _loc8_;
            _loc9_;
            _loc9_;
            _loc9_;
            if(_loc3_ + this.planets[_loc5_].radius > _loc4_)
            {
               _loc8_;
               _loc8_;
               _loc4_ = _loc3_ + this.planets[_loc5_].radius;
            }
            _loc5_++;
         }
         _loc8_;
         _loc6_ = 0;
         _loc8_;
         _loc8_;
         while(true)
         {
            _loc9_;
            _loc9_;
            _loc9_;
            if(_loc6_ >= this.gates.length)
            {
               break;
            }
            _loc8_;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc9_;
            _loc1_ = this.gates[_loc6_].x - this.§_-1T§;
            _loc9_;
            _loc9_;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc2_ = this.gates[_loc6_].y - this.§_-1T§;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc3_ = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
            _loc8_;
            _loc9_;
            _loc9_;
            _loc9_;
            _loc9_;
            if(_loc3_ + 50 > _loc4_)
            {
               _loc8_;
               _loc4_ = _loc3_ + 50;
            }
            _loc6_++;
            _loc8_;
            _loc8_;
         }
         _loc9_;
         _loc7_ = 0;
         while(_loc7_ < this.skyMines.length)
         {
            _loc9_;
            _loc9_;
            _loc9_;
            _loc9_;
            _loc1_ = this.skyMines[_loc7_].x - this.§_-1T§;
            _loc8_;
            _loc2_ = this.skyMines[_loc7_].y - this.§_-1T§;
            _loc9_;
            _loc3_ = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
            _loc9_;
            _loc9_;
            _loc9_;
            _loc9_;
            _loc9_;
            if(_loc3_ + 10 > _loc4_)
            {
               _loc8_;
               _loc9_;
               _loc9_;
               _loc8_;
               _loc8_;
               _loc4_ = _loc3_ + 10;
            }
            _loc7_++;
            _loc9_;
            _loc9_;
         }
         _loc9_;
         if(_loc4_ > this.§_-1T§)
         {
            _loc4_ = this.§_-1T§;
         }
         _loc8_;
         _loc8_;
         _loc9_;
         _loc9_;
         _loc4_ = _loc4_ + 80;
         if((_loc4_ + 80) < this.§_-za§)
         {
            _loc4_ = this.§_-za§;
         }
         this.§_-3O§ = this.§_-yl§(_loc4_);
         _loc9_;
         _loc9_;
         _loc9_;
         this.arenaRadius2 = this.§_-yl§(this.§_-3O§ * this.§_-3O§);
         _loc9_;
         this.§_-3c§ = this.§_-yl§(this.§_-3O§ + 1000);
         _loc8_;
         _loc8_;
         this.boundsRadius2 = this.§_-yl§(this.§_-3c§ * this.§_-3c§);
      }
      
      public function cacheLoop(param1:Event) : *
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:* = false;
         var _loc3_:* = 0;
         _loc7_;
         _loc7_;
         _loc2_ = false;
         _loc7_;
         _loc7_;
         _loc3_ = 0;
         while(true)
         {
            if(_loc3_ >= this.§_-e0§.length)
            {
               _loc7_;
               break;
            }
            _loc7_;
            _loc6_;
            if(this.§_-e0§[_loc3_].processQueue.length > 0)
            {
               this.§_-e0§[_loc3_].processQueueItem();
               _loc6_;
               _loc6_;
               _loc2_ = true;
               _loc7_;
               _loc7_;
               _loc7_;
               this.§_-ms§--;
               this.updatePlayerCache(SafeGlobal.playerID,1 - this.§_-ms§ / this.§_-cf§);
               _loc6_;
               _loc6_;
               this.sendUpdateCache(1 - this.§_-ms§ / this.§_-cf§);
               break;
            }
            _loc3_++;
         }
         if(!_loc2_)
         {
            this.cacheLoopFinished();
         }
      }
      
      public function latestPlayerCache(param1:String) : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Array = null;
         var _loc3_:* = 0;
         var _loc4_:Array = null;
         _loc2_ = param1.split("|");
         _loc6_;
         _loc6_;
         _loc3_ = 0;
         while(_loc3_ < _loc2_.length)
         {
            _loc4_ = _loc2_[_loc3_].split(",");
            _loc5_;
            this.§_-5H§[int(_loc4_[0])].width = 800 * Number(_loc4_[1]);
            _loc5_;
            _loc3_++;
         }
      }
      
      public function cacheLoopFinished() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.sendUpdateCache(1);
         _loc2_;
         _loc2_;
         removeEventListener(Event.ENTER_FRAME,this.cacheLoop);
         _loc2_;
         this.§_-nv§();
      }
      
      public function §_-nv§() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         _loc2_;
         _loc2_;
         this.§_-dQ§();
         _loc2_;
         this.§_-hM§();
         _loc2_;
         _loc1_ = 0;
         while(_loc1_ < this.units.length)
         {
            _loc2_;
            this.units[_loc1_].costume = this.§_-e0§[this.units[_loc1_].costumeID];
            if(this.units[_loc1_].team == 0)
            {
               this.units[_loc1_].newAnimState([SafeGlobal.ANIM_UNIT_TELEPORTIN,SafeGlobal.ANIM_UNIT_BOB]);
            }
            else if(this.units[_loc1_].team == 1)
            {
               this.units[_loc1_].newAnimState([SafeGlobal.ANIM_UNIT_WAIT,SafeGlobal.ANIM_UNIT_TELEPORTIN,SafeGlobal.ANIM_UNIT_BOB]);
            }
            else
            {
               _loc2_;
               if(this.units[_loc1_].team == 2)
               {
                  _loc2_;
                  _loc2_;
                  _loc3_;
                  this.units[_loc1_].newAnimState([SafeGlobal.ANIM_UNIT_WAIT,SafeGlobal.ANIM_UNIT_WAIT,SafeGlobal.ANIM_UNIT_TELEPORTIN,SafeGlobal.ANIM_UNIT_BOB]);
               }
               else if(this.units[_loc1_].team == 3)
               {
                  this.units[_loc1_].newAnimState([SafeGlobal.ANIM_UNIT_WAIT,SafeGlobal.ANIM_UNIT_WAIT,SafeGlobal.ANIM_UNIT_WAIT,SafeGlobal.ANIM_UNIT_TELEPORTIN,SafeGlobal.ANIM_UNIT_BOB]);
                  _loc2_;
               }
               
            }
            
            _loc1_++;
            _loc3_;
            _loc3_;
         }
         _loc3_;
         _loc3_;
         this.finishBuildLevel();
         this.§_-xX§ = true;
         this.bringToFront(this.§_-Yi§);
         _loc3_;
         this.§_-ja§();
         this.§_-pG§();
      }
      
      public function addCacheLoadingBar() : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:* = 0;
         var _loc2_:ColorTransform = null;
         _loc3_;
         _loc3_;
         _loc1_ = 0;
         while(_loc1_ < this.teams.length)
         {
            _loc2_ = new ColorTransform();
            _loc2_.color = SafeGlobal.colour_hex[this.teams[_loc1_].colourID];
            _loc3_;
            _loc3_;
            _loc4_;
            this.§_-5H§.push(new §_-AV§());
            _loc4_;
            _loc4_;
            _loc3_;
            _loc4_;
            this.§_-5H§[_loc1_].x = 0;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            this.§_-5H§[_loc1_].y = 595 - _loc1_ * 5;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            this.§_-5H§[_loc1_].width = 1;
            this.§_-5H§[_loc1_].transform.colorTransform = _loc2_;
            _loc3_;
            this.§_-wP§.addChild(this.§_-5H§[_loc1_]);
            _loc1_++;
         }
      }
      
      public function removeCacheLoadingBar() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         _loc2_;
         _loc2_;
         _loc1_ = 0;
         while(_loc1_ < this.teams.length)
         {
            if(this.§_-wP§.contains(this.§_-5H§[_loc1_]))
            {
               _loc2_;
               _loc2_;
               this.§_-wP§.removeChild(this.§_-5H§[_loc1_]);
               _loc3_;
            }
            _loc1_++;
            _loc2_;
            _loc2_;
         }
      }
      
      public function §_-ja§() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         _loc3_;
         _loc3_;
         _loc1_ = 0;
         while(_loc1_ < this.teams.length)
         {
            if(this.teams[_loc1_].droppedOutEarly)
            {
               _loc3_;
               this.displayDropOut(_loc1_);
               _loc3_;
               _loc3_;
            }
            _loc1_++;
            _loc2_;
         }
      }
      
      public function §_-hM§() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         _loc3_;
         _loc3_;
         if(this.§_-0i§.length == 0)
         {
            _loc3_;
            _loc1_ = 0;
            while(_loc1_ < this.§_-M6§.length)
            {
               this.§_-0i§.push(new BitmapData(this.§_-M6§[_loc1_].frameWidth,this.§_-M6§[_loc1_].frameHeight,true,0));
               _loc2_;
               _loc1_++;
               _loc2_;
            }
         }
      }
      
      public function bringToFront(param1:Sprite) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         param1.parent.setChildIndex(param1,param1.parent.numChildren - 1);
      }
      
      public function §_-DD§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         SafeGlobal.orderSetupReady = true;
         _loc1_;
         this.tryBuildGame();
      }
      
      public function tryBuildGame() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         if((SafeGlobal.orderDisplayFinished) && (SafeGlobal.orderSetupReady))
         {
            _loc1_;
            this.§null§ = true;
            _loc1_;
            if(this.§_-Vf§)
            {
               _loc1_;
               _loc1_;
               this.buildLevel();
            }
         }
      }
      
      public function unitsAfk(param1:int) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc4_;
         _loc4_;
         _loc2_ = 0;
         while(_loc2_ < this.units.length)
         {
            _loc3_;
            _loc4_;
            _loc4_;
            if(this.units[_loc2_].team == param1)
            {
               _loc4_;
               _loc4_;
               this.units[_loc2_].newAnimState([SafeGlobal.ANIM_UNIT_SLEEP]);
               _loc4_;
               _loc4_;
            }
            _loc2_++;
            _loc4_;
            _loc4_;
         }
      }
      
      public function unitsAfkBack(param1:int) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc3_;
         _loc2_ = 0;
         while(_loc2_ < this.units.length)
         {
            _loc4_;
            _loc4_;
            _loc3_;
            if(this.units[_loc2_].team == param1)
            {
               _loc4_;
               this.units[_loc2_].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
               _loc4_;
            }
            _loc2_++;
            _loc3_;
            _loc3_;
         }
      }
      
      public function sendSetupReady() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         SafeGlobal.game_client.sendSetupReady();
      }
      
      public function §_-Cr§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         SafeGlobal.game_client.sendAFKBack();
      }
      
      public function generateCustomParticle(param1:int, param2:Number, param3:Number, param4:uint, param5:uint, param6:Number, param7:Number, param8:Number) : *
      {
         var _loc11_:* = true;
         var _loc12_:* = false;
         var _loc9_:* = 0;
         var _loc10_:* = undefined;
         _loc12_;
         _loc12_;
         _loc12_;
         _loc9_ = this.customParticleGFX.length;
         _loc12_;
         _loc11_;
         _loc11_;
         _loc11_;
         if(param1 == SafeGlobal.PARTICLETYPE_CIRCLE)
         {
            _loc11_;
            _loc10_ = new ParticleGraphic(new ParticleWhite5(),[30,param2,param3,param6,param7,param4,param5]);
            _loc12_;
         }
         else
         {
            _loc12_;
            _loc12_;
            _loc12_;
            if(param1 == SafeGlobal.PARTICLETYPE_RING)
            {
               _loc11_;
               _loc11_;
               _loc10_ = new ParticleGraphic(new §_-X1§(),[16,param2,param3,param6,param7,param4,param5]);
            }
            else if(param1 == SafeGlobal.§_-SS§)
            {
               _loc10_ = new §_-H5§(new §_-5x§(),[16,param2,param3,param6,param7,0,7,param4,param5]);
            }
            
         }
         this.customParticleGFX.push(_loc10_);
         return _loc9_;
      }
      
      public function generateCustomProjectile(param1:int, param2:int) : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:* = 0;
         var _loc4_:§_-lS§ = null;
         _loc5_;
         _loc3_ = this.customProjectileGFX.length;
         _loc4_ = new §_-lS§(new ProjectileGraphic(param1,param2));
         _loc5_;
         _loc5_;
         this.customProjectileGFX.push(_loc4_);
         return _loc3_;
      }
      
      public function generateCustomWeapon(param1:int, param2:int) : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:* = 0;
         var _loc4_:Sprite = null;
         _loc5_;
         _loc5_;
         _loc3_ = this.§_-6s§.length;
         _loc4_ = Sprite(new WeaponGraphic(param1,param2));
         _loc5_;
         this.§_-6s§.push(_loc4_);
         return _loc3_;
      }
      
      public function §_-p5§() : *
      {
         var _loc13_:* = false;
         var _loc14_:* = true;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc1_:int = getTimer();
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         _loc13_;
         _loc13_;
         _loc4_ = 0;
         while(_loc4_ < this.planets.length)
         {
            if(this.planets[_loc4_].blackHole)
            {
               _loc13_;
               _loc13_;
               this.planets[_loc4_].rotation = this.planets[_loc4_].rotation - 1;
               _loc14_;
               _loc14_;
            }
            _loc4_++;
            _loc13_;
            _loc13_;
         }
         _loc5_ = 0;
         while(true)
         {
            _loc13_;
            if(_loc5_ >= this.units.length)
            {
               break;
            }
            this.units[_loc5_].animProgress();
            if(this.§_-p1§(this.units[_loc5_].iX,this.units[_loc5_].iY))
            {
               _loc14_;
               _loc14_;
               _loc13_;
               _loc13_;
               this.units[_loc5_].updateImage();
               _loc2_++;
               _loc14_;
               _loc14_;
            }
            else
            {
               _loc3_++;
            }
            _loc5_++;
            _loc13_;
            _loc13_;
         }
         _loc13_;
         _loc6_ = 0;
         _loc13_;
         _loc13_;
         while(true)
         {
            _loc14_;
            _loc14_;
            if(_loc6_ >= this.§_-ki§.length)
            {
               break;
            }
            _loc14_;
            _loc14_;
            _loc13_;
            this.§_-ki§[_loc6_].animProgress(this.currentTime);
            _loc14_;
            _loc14_;
            if(this.§_-p1§(this.§_-ki§[_loc6_].iX,this.§_-ki§[_loc6_].iY))
            {
               _loc14_;
               _loc14_;
               this.§_-ki§[_loc6_].updateImage();
               _loc2_++;
            }
            else
            {
               _loc3_++;
               _loc14_;
               _loc14_;
            }
            _loc6_++;
            _loc14_;
            _loc14_;
         }
         _loc13_;
         _loc7_ = 0;
         _loc14_;
         while(true)
         {
            _loc14_;
            _loc14_;
            _loc14_;
            if(_loc7_ >= this.skyMines.length)
            {
               break;
            }
            this.skyMines[_loc7_].animProgress(this.currentTime);
            _loc14_;
            _loc14_;
            if(this.§_-p1§(this.skyMines[_loc7_].iX,this.skyMines[_loc7_].iY))
            {
               _loc13_;
               _loc13_;
               this.skyMines[_loc7_].updateImage();
               _loc13_;
               _loc13_;
               _loc2_++;
            }
            else
            {
               _loc3_++;
               _loc13_;
            }
            _loc7_++;
         }
         _loc14_;
         _loc13_;
         _loc13_;
         _loc8_ = 0;
         while(_loc8_ < this.gates.length)
         {
            this.gates[_loc8_].animProgress();
            if(this.§_-p1§(this.gates[_loc8_].iX,this.gates[_loc8_].iY))
            {
               _loc14_;
               _loc14_;
               this.gates[_loc8_].updateImage();
               _loc2_++;
               _loc14_;
            }
            else
            {
               _loc3_++;
            }
            _loc8_++;
         }
         _loc4_ = 0;
         _loc14_;
         while(true)
         {
            _loc13_;
            if(_loc4_ >= this.projectiles.length)
            {
               break;
            }
            _loc13_;
            _loc13_;
            this.projectiles[_loc4_].animProgress();
            _loc13_;
            _loc13_;
            if(this.§_-p1§(this.projectiles[_loc4_].iX,this.projectiles[_loc4_].iY))
            {
               _loc13_;
               this.projectiles[_loc4_].updateImage();
               _loc13_;
               _loc13_;
               _loc2_++;
            }
            else
            {
               _loc3_++;
            }
            _loc4_++;
            _loc14_;
         }
         _loc9_ = 0;
         while(true)
         {
            _loc13_;
            if(_loc9_ >= this.barrels.length)
            {
               break;
            }
            _loc13_;
            _loc13_;
            _loc13_;
            this.barrels[_loc9_].animProgress();
            _loc14_;
            _loc14_;
            if(this.§_-p1§(this.barrels[_loc9_].iX,this.barrels[_loc9_].iY))
            {
               _loc13_;
               _loc13_;
               this.barrels[_loc9_].updateImage();
               _loc14_;
               _loc14_;
               _loc2_++;
               _loc14_;
               _loc14_;
            }
            else
            {
               _loc3_++;
               _loc14_;
               _loc14_;
            }
            _loc9_++;
            _loc13_;
         }
         _loc13_;
         _loc10_ = 0;
         while(_loc10_ < this.powerUps.length)
         {
            _loc13_;
            this.powerUps[_loc10_].animProgress();
            if(this.§_-p1§(this.powerUps[_loc10_].iX,this.powerUps[_loc10_].iY))
            {
               this.powerUps[_loc10_].updateImage();
               _loc2_++;
            }
            else
            {
               _loc3_++;
               _loc13_;
               _loc13_;
            }
            _loc10_++;
            _loc13_;
            _loc13_;
         }
         _loc13_;
         _loc13_;
         _loc13_;
         _loc11_ = this.§_-To§.length - 1;
         while(true)
         {
            _loc13_;
            _loc13_;
            if(_loc11_ < 0)
            {
               break;
            }
            this.§_-To§[_loc11_].animProgress();
            if(this.§_-p1§(this.§_-To§[_loc11_].iX,this.§_-To§[_loc11_].iY))
            {
               _loc14_;
               _loc14_;
               this.§_-To§[_loc11_].updateImage();
               _loc2_++;
            }
            else
            {
               _loc3_++;
               _loc14_;
               _loc14_;
            }
            _loc13_;
            if(this.§_-To§[_loc11_].dead)
            {
               this.§_-3a§(this.§_-To§[_loc11_]);
               _loc14_;
               _loc14_;
            }
            _loc14_;
            _loc14_;
            _loc11_--;
            _loc14_;
            _loc14_;
         }
         _loc14_;
         _loc14_;
         _loc13_;
         _loc13_;
         _loc11_ = this.effects.length - 1;
         _loc14_;
         _loc14_;
         while(true)
         {
            _loc13_;
            if(_loc11_ < 0)
            {
               break;
            }
            _loc13_;
            this.effects[_loc11_].animProgress();
            if(this.§_-p1§(this.effects[_loc11_].iX,this.effects[_loc11_].iY))
            {
               this.effects[_loc11_].updateImage();
               _loc2_++;
               _loc13_;
            }
            else
            {
               _loc3_++;
            }
            if(this.effects[_loc11_].dead)
            {
               this.§_-E7§(this.effects[_loc11_]);
            }
            _loc11_--;
            _loc13_;
            _loc13_;
         }
         _loc14_;
         _loc14_;
         _loc13_;
         _loc12_ = this.damage.length - 1;
         while(_loc12_ >= 0)
         {
            if(this.damage[_loc12_].currentFrame >= this.damage[_loc12_].totalFrames - 1)
            {
               this.screen.removeChild(this.damage[_loc12_]);
               this.damage.splice(_loc12_,1);
            }
            _loc13_;
            _loc13_;
            _loc14_;
            _loc12_--;
            _loc13_;
            _loc13_;
         }
      }
      
      public function §_-vP§() : *
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         _loc6_;
         _loc6_;
         _loc7_;
         _loc7_;
         _loc1_ = -1;
         _loc6_;
         _loc7_;
         _loc7_;
         _loc2_ = 0;
         _loc6_;
         _loc7_;
         _loc3_ = 0;
         _loc7_;
         _loc5_ = 0;
         while(true)
         {
            _loc6_;
            _loc6_;
            if(_loc5_ >= this.gates.length)
            {
               break;
            }
            _loc6_;
            _loc6_;
            _loc7_;
            _loc6_;
            _loc6_;
            if(this.gates[_loc5_] is Wormhole)
            {
               _loc6_;
               _loc6_;
               _loc6_;
               _loc4_ = _loc5_;
               _loc3_++;
               _loc7_;
            }
            _loc5_++;
         }
         _loc6_;
         if(_loc3_ % 2 == 1)
         {
            this.removeGate(this.gates[_loc4_]);
         }
         _loc7_;
         _loc5_ = 0;
         while(_loc5_ < this.gates.length)
         {
            _loc6_;
            _loc6_;
            _loc6_;
            if(this.gates[_loc5_] is Wormhole)
            {
               _loc6_;
               if(_loc1_ == -1)
               {
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc1_ = _loc5_;
                  _loc7_;
                  _loc7_;
               }
               else
               {
                  _loc6_;
                  _loc6_;
                  _loc7_;
                  _loc7_;
                  this.gates[_loc1_].pair = this.gates[_loc5_];
                  _loc6_;
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  this.gates[_loc5_].pair = this.gates[_loc1_];
                  _loc7_;
                  _loc6_;
                  this.gates[_loc5_].changeColour(_loc2_);
                  _loc6_;
                  this.gates[_loc1_].changeColour(_loc2_);
                  _loc1_ = -1;
                  _loc7_;
                  _loc2_++;
                  _loc7_;
               }
            }
            _loc5_++;
            _loc6_;
            _loc6_;
         }
      }
      
      public function updateTeamHealths() : *
      {
         var _loc12_:* = false;
         var _loc13_:* = true;
         var _loc1_:* = 0;
         var _loc2_:Array = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:Array = null;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = false;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         _loc13_;
         _loc1_ = 0;
         while(_loc1_ < this.teams.length)
         {
            this.teams[_loc1_].updateHealth();
            _loc13_;
            _loc13_;
            _loc1_++;
            _loc12_;
         }
         _loc2_ = [];
         _loc3_ = 0;
         _loc13_;
         _loc1_ = 0;
         while(true)
         {
            _loc13_;
            _loc12_;
            if(_loc1_ >= this.teams.length)
            {
               break;
            }
            if(this.teams[_loc1_].totalHealth > _loc3_)
            {
               _loc12_;
               _loc12_;
               _loc13_;
               _loc13_;
               _loc3_ = this.teams[_loc1_].totalHealth;
            }
            _loc12_;
            this.teams[_loc1_].tempPos = -1;
            _loc2_.push(_loc1_);
            _loc1_++;
         }
         _loc1_ = 0;
         _loc13_;
         _loc13_;
         while(true)
         {
            _loc13_;
            _loc13_;
            _loc13_;
            if(_loc1_ >= this.teams.length)
            {
               break;
            }
            _loc12_;
            _loc12_;
            this.statuses[_loc1_].setMaxHealth(_loc3_);
            _loc12_;
            _loc12_;
            _loc1_++;
            _loc12_;
         }
         _loc13_;
         _loc13_;
         _loc1_ = 0;
         _loc12_;
         while(true)
         {
            _loc13_;
            if(_loc1_ >= this.teams.length)
            {
               break;
            }
            _loc13_;
            if((this.§_-vA§) && this.teams[_loc1_].totalHealth <= 0 && !this.teams[_loc1_].displayedKnockedOut)
            {
               this.§_-0-D§(_loc1_);
               _loc13_;
               this.teams[_loc1_].displayedKnockedOut = true;
            }
            _loc1_++;
            _loc13_;
         }
         _loc12_;
         if(this.§_-vA§)
         {
            _loc6_ = [-1,-1,-1,-1,-1];
            while(_loc2_.length > 0)
            {
               _loc13_;
               _loc13_;
               _loc8_ = _loc2_.length;
               _loc9_ = false;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc1_ = 0;
               _loc12_;
               while(true)
               {
                  _loc12_;
                  if(_loc1_ >= _loc2_.length)
                  {
                     break;
                  }
                  if(this.teams[_loc2_[_loc1_]].finalPos == _loc8_)
                  {
                     _loc13_;
                     _loc13_;
                     _loc6_[_loc8_] = _loc2_[_loc1_];
                     _loc9_ = true;
                     _loc12_;
                     _loc12_;
                     _loc2_.splice(_loc1_,1);
                     _loc13_;
                     break;
                  }
                  _loc1_++;
                  _loc12_;
               }
               _loc13_;
               _loc13_;
               if(!_loc9_)
               {
                  _loc1_ = 0;
                  while(_loc1_ < _loc2_.length)
                  {
                     _loc13_;
                     _loc13_;
                     _loc13_;
                     _loc13_;
                     if(this.teams[_loc2_[_loc1_]].totalHealth <= 0 || (this.teams[_loc2_[_loc1_]].droppedOut))
                     {
                        _loc12_;
                        this.teams[_loc2_[_loc1_]].finalPos = _loc8_;
                        _loc6_[_loc8_] = _loc2_[_loc1_];
                        _loc13_;
                        _loc13_;
                        _loc9_ = true;
                        _loc13_;
                        _loc13_;
                        _loc2_.splice(_loc1_,1);
                        break;
                     }
                     _loc1_++;
                  }
               }
               _loc13_;
               if(!_loc9_)
               {
                  _loc13_;
                  _loc10_ = 10000;
                  _loc12_;
                  _loc12_;
                  _loc12_;
                  _loc11_ = -1;
                  _loc12_;
                  _loc12_;
                  _loc1_ = 0;
                  while(true)
                  {
                     _loc13_;
                     _loc13_;
                     if(_loc1_ >= _loc2_.length)
                     {
                        break;
                     }
                     if(this.teams[_loc2_[_loc1_]].totalHealth < _loc10_)
                     {
                        _loc12_;
                        _loc13_;
                        _loc10_ = this.teams[_loc2_[_loc1_]].totalHealth;
                        _loc11_ = _loc1_;
                     }
                     _loc1_++;
                  }
                  _loc6_[_loc8_] = _loc2_[_loc11_];
                  _loc9_ = true;
                  _loc2_.splice(_loc11_,1);
                  _loc13_;
                  _loc13_;
               }
            }
            _loc13_;
            _loc7_ = 0;
            _loc13_;
            while(_loc7_ < 5)
            {
               if(_loc6_[_loc7_] != -1)
               {
                  this.statuses[_loc6_[_loc7_]].moveTo(_loc7_ - 1);
                  _loc12_;
               }
               _loc7_++;
               _loc13_;
               _loc13_;
            }
         }
      }
      
      public function §_-nM§(param1:int, param2:int) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:* = 0;
         _loc4_;
         _loc4_;
         _loc3_ = 0;
         while(_loc3_ < this.§_-aN§.length)
         {
            _loc5_;
            _loc4_;
            _loc4_;
            _loc5_;
            if(this.§_-aN§[_loc3_].teamID == param1 && this.§_-aN§[_loc3_].unitID == param2)
            {
               _loc5_;
               return this.§_-aN§[_loc3_];
            }
            _loc3_++;
            _loc4_;
            _loc4_;
         }
      }
      
      public function checkBounds(param1:Projectile) : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         _loc6_;
         _loc6_;
         _loc6_;
         if(!param1.test)
         {
            _loc6_;
            _loc6_;
            _loc2_ = param1.iX - this.§_-Bf§.x;
            _loc3_ = param1.iY - this.§_-Bf§.y;
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc4_ = _loc2_ * _loc2_ + _loc3_ * _loc3_;
            if((_loc2_ * _loc2_ + _loc3_ * _loc3_) > this.boundsRadius2)
            {
               _loc5_;
               _loc5_;
               _loc6_;
               _loc6_;
               if((param1.unit) && !param1.unit.removed)
               {
                  _loc6_;
                  _loc6_;
                  this.removeUnit(param1.unit);
                  param1.unit = null;
                  this.updateTeamHealths();
                  SoundManager.§_-xT§(SafeGlobal.FX_JETPACK,param1.sound_uid);
               }
               if(param1.mine)
               {
                  this.removeMine(param1.mine);
                  param1.mine = null;
                  _loc6_;
               }
               this.simManager.removeObject(param1);
               this.removeProjectile(param1);
            }
         }
      }
      
      public function §_-ix§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.§_-Q3§)
         {
            _loc2_;
            _loc2_;
            if(this.§_-nL§[65])
            {
               _loc1_;
               _loc1_;
               _loc2_;
               _loc2_;
               _loc1_;
               _loc1_;
               _loc2_;
               this.§_-a9§.x = this.§_-a9§.x - 15;
               _loc2_;
               _loc1_;
               _loc1_;
               if(this.§_-a9§.x < this.§ try§)
               {
                  _loc1_;
                  _loc1_;
                  this.§_-a9§.x = this.§ try§;
               }
               _loc1_;
               _loc1_;
               _loc2_;
               _loc2_;
               this.§_-a9§.active = true;
            }
            if(this.§_-nL§[68])
            {
               _loc1_;
               _loc1_;
               _loc1_;
               _loc1_;
               _loc1_;
               _loc1_;
               _loc1_;
               _loc1_;
               _loc1_;
               _loc1_;
               _loc1_;
               _loc1_;
               this.§_-a9§.x = this.§_-a9§.x + 15;
               _loc2_;
               _loc1_;
               _loc1_;
               _loc1_;
               _loc2_;
               _loc2_;
               if(this.§_-a9§.x > this.§_-Y5§)
               {
                  _loc2_;
                  this.§_-a9§.x = this.§_-Y5§;
                  _loc2_;
                  _loc2_;
               }
               _loc1_;
               _loc1_;
               _loc2_;
               _loc2_;
               this.§_-a9§.active = true;
               _loc2_;
            }
            _loc1_;
            _loc2_;
            if(this.§_-nL§[87])
            {
               _loc2_;
               _loc2_;
               _loc1_;
               _loc2_;
               _loc1_;
               _loc1_;
               this.§_-a9§.y = this.§_-a9§.y - 15;
               _loc2_;
               _loc2_;
               _loc1_;
               _loc1_;
               if(this.§_-a9§.y < this.§_-Jn§)
               {
                  _loc2_;
                  _loc2_;
                  this.§_-a9§.y = this.§_-Jn§;
                  _loc2_;
                  _loc2_;
               }
               _loc2_;
               _loc2_;
               _loc2_;
               this.§_-a9§.active = true;
            }
            if(this.§_-nL§[83])
            {
               this.§_-a9§.y = this.§_-a9§.y + 15;
               _loc2_;
               _loc1_;
               if(this.§_-a9§.y > this.§_-on§)
               {
                  _loc2_;
                  _loc2_;
                  this.§_-a9§.y = this.§_-on§;
               }
               this.§_-a9§.active = true;
               _loc2_;
               _loc2_;
            }
         }
         if((this.myTurn) && !this.§_-Q3§)
         {
            _loc1_;
            _loc2_;
            _loc2_;
            this.units[this.currentUnit].oldWalkDir = this.units[this.currentUnit].walkDir;
            _loc2_;
            this.units[this.currentUnit].walkDir = 0;
            _loc1_;
            if(((this.§_-nL§[37] || this.§_-nL§[81]) && !this.simManager.turnOver && !this.mods[SafeGlobal.MOD_NOUNITWALK] && this.§_-XG§ < this.currentTime) && (!this.dragging) && (this.units[this.currentUnit].oldWalkDir == 0 || this.units[this.currentUnit].oldWalkDir == -1))
            {
               _loc1_;
               _loc2_;
               _loc2_;
               this.units[this.currentUnit].walkDir = this.units[this.currentUnit].walkDir - 1;
               _loc2_;
               _loc2_;
            }
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            if(((this.§_-nL§[39] || this.§_-nL§[69]) && !this.simManager.turnOver && !this.mods[SafeGlobal.MOD_NOUNITWALK] && this.§_-XG§ < this.currentTime) && (!this.dragging) && (this.units[this.currentUnit].oldWalkDir == 0 || this.units[this.currentUnit].oldWalkDir == 1))
            {
               _loc1_;
               _loc1_;
               this.units[this.currentUnit].walkDir = this.units[this.currentUnit].walkDir + 1;
            }
            _loc1_;
            _loc1_;
            _loc2_;
            _loc2_;
            if(this.units[this.currentUnit].oldWalkDir == 0 && !(this.units[this.currentUnit].walkDir == 0) && !this.mods[SafeGlobal.MOD_NOUNITWALK] && !this.simManager.turnOver && (this.simManager.§_-wE§() > this.currentTime || this.simManager.§_-wE§() == -1) && (!this.§_-4g§ || (this.§_-UR§)))
            {
               _loc2_;
               _loc2_;
               _loc1_;
               this.units[this.currentUnit].lastSimTime = this.currentTime;
               _loc2_;
               this.sendStartWalk(this.currentTime,this.units[this.currentUnit].walkDir);
               _loc1_;
               _loc1_;
               _loc1_;
               _loc2_;
               _loc2_;
               this.simManager.addObject(this.units[this.currentUnit],"",true);
               _loc2_;
               this.§_-QY§();
               _loc1_;
               this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_WALK]);
               _loc1_;
               _loc1_;
               _loc1_;
               _loc1_;
               _loc1_;
               _loc1_;
               this.units[this.currentUnit].doFlip(this.units[this.currentUnit].walkDir * -1);
               _loc2_;
               _loc2_;
            }
            _loc2_;
            _loc2_;
            _loc2_;
            if(!(this.units[this.currentUnit].oldWalkDir == 0) && this.units[this.currentUnit].walkDir == 0 && !this.mods[SafeGlobal.MOD_NOUNITWALK])
            {
               _loc1_;
               this.§_-XG§ = this.units[this.currentUnit].lastSimTime + this.§_-xN§;
               _loc1_;
               _loc1_;
               this.simManager.removeObject(this.units[this.currentUnit],true);
               _loc1_;
               _loc2_;
               _loc2_;
               _loc1_;
               _loc1_;
               if(!this.simManager.turnOver && (this.simManager.§_-wE§() > this.currentTime || this.simManager.§_-wE§() == -1))
               {
                  this.sendStopWalk(this.units[this.currentUnit].lastSimTime);
               }
               this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
               this.§_-VK§(this.units[this.currentUnit]);
               _loc1_;
               _loc1_;
            }
            _loc2_;
            _loc2_;
            if(!(this.units[this.currentUnit].walkDir == 0) && !this.mods[SafeGlobal.MOD_NOUNITWALK])
            {
               this.units[this.currentUnit].facing = this.units[this.currentUnit].walkDir;
            }
         }
      }
      
      public function §_-ZL§(param1:Projectile, param2:SimObject, param3:Point, param4:Point) : *
      {
         var _loc16_:* = true;
         var _loc17_:* = false;
         var _loc5_:§_-Sc§ = null;
         var _loc6_:§_-Sc§ = null;
         var _loc7_:§_-Sc§ = null;
         var _loc8_:§_-Sc§ = null;
         var _loc9_:Array = null;
         var _loc10_:* = 0;
         var _loc11_:* = NaN;
         var _loc12_:* = 0;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         _loc17_;
         _loc17_;
         _loc16_;
         _loc16_;
         _loc16_;
         _loc16_;
         if(!param2.hidden && !param2.dead)
         {
            _loc5_ = this.§_-sW§(param2.point1,param2.point2,param3,param4);
            _loc6_ = this.§_-sW§(param2.point2,param2.point3,param3,param4);
            _loc7_ = this.§_-sW§(param2.point3,param2.point4,param3,param4);
            _loc16_;
            _loc17_;
            _loc17_;
            if((_loc5_) || (_loc6_) || (_loc7_))
            {
               _loc16_;
               _loc16_;
               _loc9_ = [];
            }
            if(_loc5_)
            {
               _loc16_;
               _loc9_.push(_loc5_);
               _loc17_;
            }
            if(_loc6_)
            {
               _loc16_;
               _loc16_;
               _loc9_.push(_loc6_);
               _loc17_;
               _loc17_;
            }
            if(_loc7_)
            {
               _loc9_.push(_loc7_);
            }
            if(_loc9_)
            {
               if(_loc9_.length > 1)
               {
                  _loc17_;
                  _loc17_;
                  _loc16_;
                  _loc11_ = 1000000;
                  _loc17_;
                  _loc17_;
                  _loc12_ = 0;
                  while(_loc12_ < _loc9_.length)
                  {
                     _loc17_;
                     _loc13_ = _loc9_[_loc12_].x - param1.§_-JB§;
                     _loc14_ = _loc9_[_loc12_].y - param1.§_-Uv§;
                     _loc17_;
                     _loc17_;
                     _loc16_;
                     _loc16_;
                     _loc17_;
                     _loc17_;
                     _loc16_;
                     _loc17_;
                     _loc16_;
                     _loc15_ = _loc13_ * _loc13_ + _loc14_ * _loc14_;
                     _loc17_;
                     if((_loc13_ * _loc13_ + _loc14_ * _loc14_) < _loc11_)
                     {
                        _loc17_;
                        _loc11_ = _loc15_;
                        _loc17_;
                        _loc17_;
                        _loc17_;
                        _loc16_;
                        _loc10_ = _loc12_;
                     }
                     _loc12_++;
                     _loc17_;
                  }
                  _loc8_ = _loc9_[_loc10_];
               }
               else if(_loc9_.length == 1)
               {
                  _loc8_ = _loc9_[0];
               }
               
            }
         }
         if(_loc8_)
         {
            _loc16_;
            _loc16_;
            return _loc8_;
         }
         return null;
      }
      
      public function collisionProjectileObjects(param1:Projectile) : *
      {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc5_:§_-Sc§ = null;
         var _loc6_:Array = null;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         _loc10_;
         this.tempProj1Point.x = param1.iX;
         _loc10_;
         _loc10_;
         this.tempProj1Point.y = param1.iY;
         _loc10_;
         this.tempProj2Point.x = param1.§_-JB§;
         _loc10_;
         this.tempProj2Point.y = param1.§_-Uv§;
         var _loc2_:* = -1;
         var _loc3_:* = -1;
         var _loc4_:* = -1;
         _loc11_;
         _loc11_;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc11_;
         _loc11_;
         if(((!param1.unit) || (param1.unit && param1.unit.rocketGloves)) && !param1.mine)
         {
            _loc11_;
            _loc7_ = 0;
            while(true)
            {
               _loc11_;
               _loc11_;
               _loc10_;
               _loc10_;
               if(_loc7_ >= this.units.length)
               {
                  break;
               }
               _loc10_;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc11_;
               _loc11_;
               if(param1.ignoreUnit == -1 || !(param1.ignoreUnit == _loc7_) || param1.ignoreUnit == _loc7_ && param1.§_-EZ§ < param1.lastSimTime)
               {
                  _loc11_;
                  _loc11_;
                  _loc5_ = this.§_-ZL§(param1,this.units[_loc7_],this.tempProj1Point,this.tempProj2Point);
                  if(_loc5_)
                  {
                     _loc10_;
                     _loc10_;
                     if(!_loc6_)
                     {
                        _loc10_;
                        _loc10_;
                        _loc6_ = [];
                     }
                     _loc6_.push(new §_-i2§(_loc5_.x,_loc5_.y,SafeGlobal.COLLTYPE_OBJECT,1,_loc5_.angle));
                     _loc11_;
                     _loc11_;
                     _loc6_[_loc6_.length - 1].objectType = SafeGlobal.OBJECTTYPE_UNIT;
                     _loc11_;
                     _loc6_[_loc6_.length - 1].objectID = _loc7_;
                     _loc11_;
                     _loc11_;
                     _loc10_;
                     _loc2_ = _loc7_;
                  }
               }
               _loc7_++;
               _loc11_;
            }
            if(!param1.unit)
            {
               _loc10_;
               _loc8_ = 0;
               _loc11_;
               _loc11_;
               while(true)
               {
                  _loc10_;
                  _loc10_;
                  _loc10_;
                  _loc10_;
                  if(_loc8_ >= this.barrels.length)
                  {
                     break;
                  }
                  _loc5_ = this.§_-ZL§(param1,this.barrels[_loc8_],this.tempProj1Point,this.tempProj2Point);
                  if(_loc5_)
                  {
                     if(!_loc6_)
                     {
                        _loc6_ = [];
                     }
                     _loc6_.push(new §_-i2§(_loc5_.x,_loc5_.y,SafeGlobal.COLLTYPE_OBJECT,1,_loc5_.angle));
                     _loc6_[_loc6_.length - 1].objectType = SafeGlobal.OBJECTTYPE_BARREL;
                     _loc6_[_loc6_.length - 1].objectID = _loc8_;
                     _loc10_;
                     _loc10_;
                     _loc11_;
                     _loc11_;
                     _loc3_ = _loc8_;
                     _loc11_;
                  }
                  _loc8_++;
               }
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc9_ = 0;
               _loc11_;
               while(_loc9_ < this.powerUps.length)
               {
                  _loc5_ = this.§_-ZL§(param1,this.powerUps[_loc9_],this.tempProj1Point,this.tempProj2Point);
                  if(_loc5_)
                  {
                     _loc11_;
                     _loc11_;
                     if(!_loc6_)
                     {
                        _loc6_ = [];
                     }
                     _loc6_.push(new §_-i2§(_loc5_.x,_loc5_.y,SafeGlobal.COLLTYPE_OBJECT,1,_loc5_.angle));
                     _loc6_[_loc6_.length - 1].objectType = SafeGlobal.OBJECTTYPE_POWERUP;
                     _loc6_[_loc6_.length - 1].objectID = _loc9_;
                     _loc10_;
                     _loc10_;
                     _loc10_;
                     _loc4_ = _loc9_;
                  }
                  _loc9_++;
               }
               _loc11_;
               _loc11_;
            }
         }
         if(_loc6_)
         {
            return _loc6_;
         }
         return null;
      }
      
      public function §_-lC§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : *
      {
         var _loc19_:* = false;
         var _loc20_:* = true;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         _loc8_ = param6 - param4;
         _loc19_;
         _loc20_;
         _loc20_;
         _loc19_;
         _loc19_;
         _loc9_ = param7 - param5;
         _loc20_;
         _loc20_;
         _loc10_ = _loc8_ * _loc8_ + _loc9_ * _loc9_;
         _loc19_;
         _loc19_;
         _loc20_;
         _loc19_;
         _loc19_;
         _loc19_;
         _loc19_;
         _loc19_;
         _loc19_;
         _loc20_;
         _loc19_;
         _loc19_;
         _loc11_ = 2 * (_loc8_ * (param4 - param1) + _loc9_ * (param5 - param2));
         _loc19_;
         _loc19_;
         _loc20_;
         _loc19_;
         _loc19_;
         _loc20_;
         _loc20_;
         _loc20_;
         _loc12_ = (param4 - param1) * (param4 - param1) + (param5 - param2) * (param5 - param2) - param3 * param3;
         _loc19_;
         _loc19_;
         _loc19_;
         _loc19_;
         _loc20_;
         _loc20_;
         _loc13_ = _loc11_ * _loc11_ - 4 * _loc10_ * _loc12_;
         _loc20_;
         _loc20_;
         _loc20_;
         if(_loc10_ <= 1.0E-7 || _loc13_ < 0)
         {
            _loc20_;
            _loc20_;
            _loc20_;
            return [];
         }
         _loc19_;
         _loc19_;
         if(_loc13_ == 0)
         {
            _loc19_;
            _loc19_;
            _loc19_;
            _loc19_;
            _loc20_;
            _loc20_;
            _loc20_;
            _loc20_;
            _loc20_;
            _loc14_ = -_loc11_ / (2 * _loc10_);
            _loc20_;
            _loc20_;
            return [];
         }
         _loc20_;
         _loc20_;
         _loc14_ = (-_loc11_ + Math.sqrt(_loc13_)) / (2 * _loc10_);
         _loc20_;
         _loc20_;
         _loc20_;
         _loc19_;
         _loc15_ = param4 + _loc14_ * _loc8_;
         _loc19_;
         _loc19_;
         _loc20_;
         _loc16_ = param5 + _loc14_ * _loc9_;
         _loc20_;
         _loc20_;
         _loc20_;
         _loc19_;
         _loc19_;
         _loc20_;
         _loc14_ = (-_loc11_ - Math.sqrt(_loc13_)) / (2 * _loc10_);
         _loc20_;
         _loc20_;
         _loc19_;
         _loc20_;
         _loc17_ = param4 + _loc14_ * _loc8_;
         _loc19_;
         _loc19_;
         _loc20_;
         _loc20_;
         _loc18_ = param5 + _loc14_ * _loc9_;
         return [new Point(_loc15_,_loc16_),new Point(_loc17_,_loc18_)];
      }
      
      public function collisionProjectilePlanetGate(param1:Projectile) : *
      {
         var _loc16_:* = false;
         var _loc17_:* = true;
         var _loc2_:Array = null;
         var _loc3_:* = 0;
         var _loc4_:Array = null;
         var _loc5_:* = 0;
         var _loc6_:* = false;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         _loc16_;
         _loc16_;
         _loc3_ = 0;
         while(_loc3_ < this.planets.length)
         {
            _loc17_;
            _loc17_;
            if(!param1.test && this.planets[_loc3_].shieldHealth > 0 || (param1.test) && this.planets[_loc3_].testShieldHealth > 0)
            {
               _loc16_;
               _loc16_;
               _loc4_ = this.§_-lC§(this.planets[_loc3_].x,this.planets[_loc3_].y,this.planets[_loc3_].radius + 50,param1.§_-JB§,param1.§_-Uv§,param1.iX,param1.iY);
               _loc17_;
               _loc5_ = 0;
               while(_loc5_ <= 1)
               {
                  if(_loc4_.length > 0)
                  {
                     _loc16_;
                     _loc6_ = false;
                     _loc16_;
                     _loc16_;
                     _loc16_;
                     _loc17_;
                     _loc17_;
                     if(this.planets[_loc3_].shieldShootOut)
                     {
                        _loc17_;
                        _loc17_;
                        _loc16_;
                        _loc16_;
                        _loc16_;
                        _loc16_;
                        _loc7_ = this.planets[_loc3_].x - param1.§_-JB§;
                        _loc8_ = this.planets[_loc3_].y - param1.§_-Uv§;
                        _loc16_;
                        _loc17_;
                        _loc17_;
                        _loc9_ = Math.sqrt(_loc7_ * _loc7_ + _loc8_ * _loc8_);
                        _loc17_;
                        if((Math.sqrt(_loc7_ * _loc7_ + _loc8_ * _loc8_)) > this.planets[_loc3_].radius + 50)
                        {
                           _loc17_;
                           _loc17_;
                           _loc17_;
                           _loc6_ = true;
                        }
                     }
                     else
                     {
                        _loc6_ = true;
                     }
                     if(_loc6_)
                     {
                        _loc17_;
                        _loc17_;
                        _loc10_ = this.§_-yl§(_loc4_[_loc5_].x);
                        _loc17_;
                        _loc11_ = this.§_-yl§(_loc4_[_loc5_].y);
                        _loc16_;
                        _loc16_;
                        _loc12_ = param1.§_-JB§ > param1.iX?param1.iX:param1.§_-JB§;
                        _loc16_;
                        _loc16_;
                        if(param1.§_-JB§ > param1.iX)
                        {
                           _loc16_;
                           _loc16_;
                           _loc16_;
                           _loc16_;
                        }
                        if(param1.§_-JB§ > param1.iX)
                        {
                           _loc17_;
                           _loc13_ = param1.§_-JB§;
                           _loc16_;
                           _loc17_;
                           _loc17_;
                           if(param1.§_-Uv§ > param1.iY)
                           {
                              _loc17_;
                           }
                           else
                           {
                              _loc17_;
                           }
                           if(param1.§_-Uv§ > param1.iY)
                           {
                              _loc14_ = param1.iY;
                              _loc16_;
                              _loc17_;
                              _loc17_;
                              _loc15_ = param1.§_-Uv§ > param1.iY?param1.§_-Uv§:param1.iY;
                              _loc16_;
                              _loc16_;
                              _loc17_;
                              _loc17_;
                              _loc16_;
                              _loc16_;
                              _loc17_;
                              if(_loc10_ >= _loc12_ && _loc10_ <= _loc13_ && _loc11_ >= _loc14_ && _loc11_ <= _loc15_)
                              {
                                 if(!_loc2_)
                                 {
                                    _loc16_;
                                    _loc2_ = [];
                                 }
                                 _loc2_.push(new §_-i2§(_loc10_,_loc11_,SafeGlobal.COLLTYPE_PLANETGATE,1));
                                 _loc17_;
                                 _loc2_[_loc2_.length - 1].planetGateID = _loc3_;
                              }
                              else if(param1.test)
                              {
                              }
                              
                           }
                           else
                           {
                              _loc14_ = param1.§_-Uv§;
                              _loc16_;
                              _loc17_;
                              _loc17_;
                              _loc15_ = param1.§_-Uv§ > param1.iY?param1.§_-Uv§:param1.iY;
                              _loc16_;
                              _loc16_;
                              _loc17_;
                              _loc17_;
                              _loc16_;
                              _loc16_;
                              _loc17_;
                              if(_loc10_ >= _loc12_ && _loc10_ <= _loc13_ && _loc11_ >= _loc14_ && _loc11_ <= _loc15_)
                              {
                                 if(!_loc2_)
                                 {
                                    _loc16_;
                                    _loc2_ = [];
                                 }
                                 _loc2_.push(new §_-i2§(_loc10_,_loc11_,SafeGlobal.COLLTYPE_PLANETGATE,1));
                                 _loc17_;
                                 _loc2_[_loc2_.length - 1].planetGateID = _loc3_;
                              }
                              else if(param1.test)
                              {
                              }
                              
                           }
                        }
                        else
                        {
                           _loc17_;
                           _loc13_ = param1.iX;
                           _loc16_;
                           _loc17_;
                           _loc17_;
                           if(param1.§_-Uv§ > param1.iY)
                           {
                              _loc17_;
                           }
                           else
                           {
                              _loc17_;
                           }
                           if(param1.§_-Uv§ > param1.iY)
                           {
                              _loc14_ = param1.iY;
                              _loc16_;
                              _loc17_;
                              _loc17_;
                              _loc15_ = param1.§_-Uv§ > param1.iY?param1.§_-Uv§:param1.iY;
                              _loc16_;
                              _loc16_;
                              _loc17_;
                              _loc17_;
                              _loc16_;
                              _loc16_;
                              _loc17_;
                              if(_loc10_ >= _loc12_ && _loc10_ <= _loc13_ && _loc11_ >= _loc14_ && _loc11_ <= _loc15_)
                              {
                                 if(!_loc2_)
                                 {
                                    _loc16_;
                                    _loc2_ = [];
                                 }
                                 _loc2_.push(new §_-i2§(_loc10_,_loc11_,SafeGlobal.COLLTYPE_PLANETGATE,1));
                                 _loc17_;
                                 _loc2_[_loc2_.length - 1].planetGateID = _loc3_;
                              }
                              else if(param1.test)
                              {
                              }
                              
                           }
                           else
                           {
                              _loc14_ = param1.§_-Uv§;
                              _loc16_;
                              _loc17_;
                              _loc17_;
                              _loc15_ = param1.§_-Uv§ > param1.iY?param1.§_-Uv§:param1.iY;
                              _loc16_;
                              _loc16_;
                              _loc17_;
                              _loc17_;
                              _loc16_;
                              _loc16_;
                              _loc17_;
                              if(_loc10_ >= _loc12_ && _loc10_ <= _loc13_ && _loc11_ >= _loc14_ && _loc11_ <= _loc15_)
                              {
                                 if(!_loc2_)
                                 {
                                    _loc16_;
                                    _loc2_ = [];
                                 }
                                 _loc2_.push(new §_-i2§(_loc10_,_loc11_,SafeGlobal.COLLTYPE_PLANETGATE,1));
                                 _loc17_;
                                 _loc2_[_loc2_.length - 1].planetGateID = _loc3_;
                              }
                              else if(param1.test)
                              {
                              }
                              
                           }
                        }
                     }
                  }
                  _loc5_++;
                  _loc17_;
                  _loc17_;
               }
            }
            _loc3_++;
            _loc16_;
         }
         return _loc2_;
      }
      
      public function collisionProjectileProjectile(param1:Projectile) : *
      {
         var _loc13_:* = false;
         var _loc14_:* = true;
         var _loc2_:Array = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:Projectile = null;
         var _loc12_:* = 0;
         _loc13_;
         _loc12_ = 0;
         while(_loc12_ < this.projectiles.length)
         {
            _loc11_ = this.projectiles[_loc12_];
            _loc13_;
            if(!(_loc11_ == param1) && !_loc11_.dead)
            {
               _loc14_;
               _loc14_;
               _loc14_;
               _loc13_;
               _loc13_;
               _loc14_;
               if((param1.unit) && (!_loc11_.unit && !_loc11_.mine) || (!param1.unit && !param1.mine) && (_loc11_.unit))
               {
                  _loc14_;
                  _loc14_;
                  _loc3_ = param1.iX - _loc11_.iX;
                  _loc4_ = param1.iY - _loc11_.iY;
                  _loc14_;
                  _loc14_;
                  _loc5_ = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
                  if(_loc5_ < 15)
                  {
                     _loc13_;
                     _loc13_;
                     if(param1.unit)
                     {
                        _loc13_;
                        _loc13_;
                        _loc7_ = param1.iX - _loc11_.§_-JB§;
                        _loc14_;
                        _loc14_;
                        _loc14_;
                        _loc13_;
                        _loc13_;
                        _loc8_ = param1.iY - _loc11_.§_-Uv§;
                        _loc6_ = this.§_-yl§(Math.atan2(_loc8_,_loc7_));
                        _loc14_;
                        _loc9_ = this.§_-yl§(param1.iX - 15 * Math.cos(_loc6_));
                        _loc13_;
                        _loc13_;
                        _loc10_ = this.§_-yl§(param1.iY - 15 * Math.sin(_loc6_));
                        _loc14_;
                        _loc14_;
                     }
                     else
                     {
                        _loc14_;
                        _loc7_ = _loc11_.iX - param1.§_-JB§;
                        _loc13_;
                        _loc13_;
                        _loc8_ = _loc11_.iY - param1.§_-Uv§;
                        _loc13_;
                        _loc6_ = this.§_-yl§(Math.atan2(_loc8_,_loc7_));
                        _loc14_;
                        _loc14_;
                        _loc14_;
                        _loc14_;
                        _loc9_ = this.§_-yl§(_loc11_.iX - 15 * Math.cos(_loc6_));
                        _loc14_;
                        _loc14_;
                        _loc10_ = this.§_-yl§(_loc11_.iY - 15 * Math.sin(_loc6_));
                     }
                     if(!_loc2_)
                     {
                        _loc2_ = [];
                     }
                     _loc2_.push(new §_-i2§(_loc9_,_loc10_,SafeGlobal.§_-Hl§,1));
                     if(param1.unit)
                     {
                        _loc2_[_loc2_.length - 1].projectileID = _loc12_;
                     }
                     else
                     {
                        _loc2_[_loc2_.length - 1].projectileID = this.projectiles.indexOf(param1);
                     }
                  }
               }
            }
            _loc12_++;
         }
         return _loc2_;
      }
      
      public function collisionProjectileSkyMine(param1:Projectile) : *
      {
         var _loc12_:* = false;
         var _loc13_:* = true;
         var _loc2_:Array = null;
         var _loc3_:* = 0;
         var _loc4_:Array = null;
         var _loc5_:* = 0;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         _loc13_;
         _loc3_ = 0;
         while(_loc3_ < this.skyMines.length)
         {
            _loc4_ = this.§_-lC§(this.skyMines[_loc3_].x,this.skyMines[_loc3_].y,10,param1.§_-JB§,param1.§_-Uv§,param1.iX,param1.iY);
            _loc12_;
            _loc12_;
            _loc13_;
            _loc5_ = 0;
            while(_loc5_ <= 1)
            {
               if(_loc4_.length > 0)
               {
                  _loc13_;
                  _loc6_ = this.§_-yl§(_loc4_[_loc5_].x);
                  _loc7_ = this.§_-yl§(_loc4_[_loc5_].y);
                  _loc12_;
                  if(param1.§_-JB§ > param1.iX)
                  {
                     _loc13_;
                     _loc13_;
                  }
                  else
                  {
                     _loc13_;
                     _loc13_;
                  }
                  if(param1.§_-JB§ > param1.iX)
                  {
                     _loc8_ = param1.iX;
                     _loc12_;
                     _loc12_;
                     _loc12_;
                     _loc12_;
                     _loc13_;
                     _loc13_;
                     if(param1.§_-JB§ > param1.iX)
                     {
                        _loc12_;
                        _loc12_;
                     }
                     if(param1.§_-JB§ > param1.iX)
                     {
                        _loc9_ = param1.§_-JB§;
                        _loc13_;
                        _loc12_;
                        if(param1.§_-Uv§ > param1.iY)
                        {
                           _loc12_;
                        }
                        else
                        {
                           _loc13_;
                           _loc13_;
                        }
                        if(param1.§_-Uv§ > param1.iY)
                        {
                           _loc12_;
                           _loc10_ = param1.iY;
                           _loc13_;
                           if(param1.§_-Uv§ > param1.iY)
                           {
                              _loc12_;
                           }
                           if(param1.§_-Uv§ > param1.iY)
                           {
                              _loc11_ = param1.§_-Uv§;
                              _loc12_;
                              _loc12_;
                              _loc12_;
                              _loc13_;
                              _loc12_;
                              _loc12_;
                              if(_loc6_ >= _loc8_ && _loc6_ <= _loc9_ && _loc7_ >= _loc10_ && _loc7_ <= _loc11_)
                              {
                                 _loc13_;
                                 _loc13_;
                                 if(!_loc2_)
                                 {
                                    _loc2_ = [];
                                 }
                                 _loc2_.push(new §_-i2§(_loc6_,_loc7_,SafeGlobal.§_-Ib§,1));
                                 _loc12_;
                                 _loc12_;
                                 _loc2_[_loc2_.length - 1].skyMineID = _loc3_;
                                 _loc13_;
                                 _loc13_;
                              }
                           }
                           else
                           {
                              _loc11_ = param1.iY;
                              _loc12_;
                              _loc12_;
                              _loc12_;
                              _loc13_;
                              _loc12_;
                              _loc12_;
                              if(_loc6_ >= _loc8_ && _loc6_ <= _loc9_ && _loc7_ >= _loc10_ && _loc7_ <= _loc11_)
                              {
                                 _loc13_;
                                 _loc13_;
                                 if(!_loc2_)
                                 {
                                    _loc2_ = [];
                                 }
                                 _loc2_.push(new §_-i2§(_loc6_,_loc7_,SafeGlobal.§_-Ib§,1));
                                 _loc12_;
                                 _loc12_;
                                 _loc2_[_loc2_.length - 1].skyMineID = _loc3_;
                                 _loc13_;
                                 _loc13_;
                              }
                           }
                        }
                        else
                        {
                           _loc12_;
                           _loc10_ = param1.§_-Uv§;
                           _loc13_;
                           if(param1.§_-Uv§ > param1.iY)
                           {
                              _loc12_;
                           }
                           if(param1.§_-Uv§ > param1.iY)
                           {
                              _loc11_ = param1.§_-Uv§;
                              _loc12_;
                              _loc12_;
                              _loc12_;
                              _loc13_;
                              _loc12_;
                              _loc12_;
                              if(_loc6_ >= _loc8_ && _loc6_ <= _loc9_ && _loc7_ >= _loc10_ && _loc7_ <= _loc11_)
                              {
                                 _loc13_;
                                 _loc13_;
                                 if(!_loc2_)
                                 {
                                    _loc2_ = [];
                                 }
                                 _loc2_.push(new §_-i2§(_loc6_,_loc7_,SafeGlobal.§_-Ib§,1));
                                 _loc12_;
                                 _loc12_;
                                 _loc2_[_loc2_.length - 1].skyMineID = _loc3_;
                                 _loc13_;
                                 _loc13_;
                              }
                           }
                           else
                           {
                              _loc11_ = param1.iY;
                              _loc12_;
                              _loc12_;
                              _loc12_;
                              _loc13_;
                              _loc12_;
                              _loc12_;
                              if(_loc6_ >= _loc8_ && _loc6_ <= _loc9_ && _loc7_ >= _loc10_ && _loc7_ <= _loc11_)
                              {
                                 _loc13_;
                                 _loc13_;
                                 if(!_loc2_)
                                 {
                                    _loc2_ = [];
                                 }
                                 _loc2_.push(new §_-i2§(_loc6_,_loc7_,SafeGlobal.§_-Ib§,1));
                                 _loc12_;
                                 _loc12_;
                                 _loc2_[_loc2_.length - 1].skyMineID = _loc3_;
                                 _loc13_;
                                 _loc13_;
                              }
                           }
                        }
                     }
                     else
                     {
                        _loc9_ = param1.iX;
                        _loc13_;
                        _loc12_;
                        if(param1.§_-Uv§ > param1.iY)
                        {
                           _loc12_;
                        }
                        else
                        {
                           _loc13_;
                           _loc13_;
                        }
                        if(param1.§_-Uv§ > param1.iY)
                        {
                           _loc12_;
                           _loc10_ = param1.iY;
                           _loc13_;
                           if(param1.§_-Uv§ > param1.iY)
                           {
                              _loc12_;
                           }
                           if(param1.§_-Uv§ > param1.iY)
                           {
                              _loc11_ = param1.§_-Uv§;
                              _loc12_;
                              _loc12_;
                              _loc12_;
                              _loc13_;
                              _loc12_;
                              _loc12_;
                              if(_loc6_ >= _loc8_ && _loc6_ <= _loc9_ && _loc7_ >= _loc10_ && _loc7_ <= _loc11_)
                              {
                                 _loc13_;
                                 _loc13_;
                                 if(!_loc2_)
                                 {
                                    _loc2_ = [];
                                 }
                                 _loc2_.push(new §_-i2§(_loc6_,_loc7_,SafeGlobal.§_-Ib§,1));
                                 _loc12_;
                                 _loc12_;
                                 _loc2_[_loc2_.length - 1].skyMineID = _loc3_;
                                 _loc13_;
                                 _loc13_;
                              }
                           }
                           else
                           {
                              _loc11_ = param1.iY;
                              _loc12_;
                              _loc12_;
                              _loc12_;
                              _loc13_;
                              _loc12_;
                              _loc12_;
                              if(_loc6_ >= _loc8_ && _loc6_ <= _loc9_ && _loc7_ >= _loc10_ && _loc7_ <= _loc11_)
                              {
                                 _loc13_;
                                 _loc13_;
                                 if(!_loc2_)
                                 {
                                    _loc2_ = [];
                                 }
                                 _loc2_.push(new §_-i2§(_loc6_,_loc7_,SafeGlobal.§_-Ib§,1));
                                 _loc12_;
                                 _loc12_;
                                 _loc2_[_loc2_.length - 1].skyMineID = _loc3_;
                                 _loc13_;
                                 _loc13_;
                              }
                           }
                        }
                        else
                        {
                           _loc12_;
                           _loc10_ = param1.§_-Uv§;
                           _loc13_;
                           if(param1.§_-Uv§ > param1.iY)
                           {
                              _loc12_;
                           }
                           if(param1.§_-Uv§ > param1.iY)
                           {
                              _loc11_ = param1.§_-Uv§;
                              _loc12_;
                              _loc12_;
                              _loc12_;
                              _loc13_;
                              _loc12_;
                              _loc12_;
                              if(_loc6_ >= _loc8_ && _loc6_ <= _loc9_ && _loc7_ >= _loc10_ && _loc7_ <= _loc11_)
                              {
                                 _loc13_;
                                 _loc13_;
                                 if(!_loc2_)
                                 {
                                    _loc2_ = [];
                                 }
                                 _loc2_.push(new §_-i2§(_loc6_,_loc7_,SafeGlobal.§_-Ib§,1));
                                 _loc12_;
                                 _loc12_;
                                 _loc2_[_loc2_.length - 1].skyMineID = _loc3_;
                                 _loc13_;
                                 _loc13_;
                              }
                           }
                           else
                           {
                              _loc11_ = param1.iY;
                              _loc12_;
                              _loc12_;
                              _loc12_;
                              _loc13_;
                              _loc12_;
                              _loc12_;
                              if(_loc6_ >= _loc8_ && _loc6_ <= _loc9_ && _loc7_ >= _loc10_ && _loc7_ <= _loc11_)
                              {
                                 _loc13_;
                                 _loc13_;
                                 if(!_loc2_)
                                 {
                                    _loc2_ = [];
                                 }
                                 _loc2_.push(new §_-i2§(_loc6_,_loc7_,SafeGlobal.§_-Ib§,1));
                                 _loc12_;
                                 _loc12_;
                                 _loc2_[_loc2_.length - 1].skyMineID = _loc3_;
                                 _loc13_;
                                 _loc13_;
                              }
                           }
                        }
                     }
                  }
                  else
                  {
                     _loc8_ = param1.§_-JB§;
                     _loc12_;
                     _loc12_;
                     _loc12_;
                     _loc12_;
                     _loc13_;
                     _loc13_;
                     if(param1.§_-JB§ > param1.iX)
                     {
                        _loc12_;
                        _loc12_;
                     }
                     if(param1.§_-JB§ > param1.iX)
                     {
                        _loc9_ = param1.§_-JB§;
                        _loc13_;
                        _loc12_;
                        if(param1.§_-Uv§ > param1.iY)
                        {
                           _loc12_;
                        }
                        else
                        {
                           _loc13_;
                           _loc13_;
                        }
                        if(param1.§_-Uv§ > param1.iY)
                        {
                           _loc12_;
                           _loc10_ = param1.iY;
                           _loc13_;
                           if(param1.§_-Uv§ > param1.iY)
                           {
                              _loc12_;
                           }
                           if(param1.§_-Uv§ > param1.iY)
                           {
                              _loc11_ = param1.§_-Uv§;
                              _loc12_;
                              _loc12_;
                              _loc12_;
                              _loc13_;
                              _loc12_;
                              _loc12_;
                              if(_loc6_ >= _loc8_ && _loc6_ <= _loc9_ && _loc7_ >= _loc10_ && _loc7_ <= _loc11_)
                              {
                                 _loc13_;
                                 _loc13_;
                                 if(!_loc2_)
                                 {
                                    _loc2_ = [];
                                 }
                                 _loc2_.push(new §_-i2§(_loc6_,_loc7_,SafeGlobal.§_-Ib§,1));
                                 _loc12_;
                                 _loc12_;
                                 _loc2_[_loc2_.length - 1].skyMineID = _loc3_;
                                 _loc13_;
                                 _loc13_;
                              }
                           }
                           else
                           {
                              _loc11_ = param1.iY;
                              _loc12_;
                              _loc12_;
                              _loc12_;
                              _loc13_;
                              _loc12_;
                              _loc12_;
                              if(_loc6_ >= _loc8_ && _loc6_ <= _loc9_ && _loc7_ >= _loc10_ && _loc7_ <= _loc11_)
                              {
                                 _loc13_;
                                 _loc13_;
                                 if(!_loc2_)
                                 {
                                    _loc2_ = [];
                                 }
                                 _loc2_.push(new §_-i2§(_loc6_,_loc7_,SafeGlobal.§_-Ib§,1));
                                 _loc12_;
                                 _loc12_;
                                 _loc2_[_loc2_.length - 1].skyMineID = _loc3_;
                                 _loc13_;
                                 _loc13_;
                              }
                           }
                        }
                        else
                        {
                           _loc12_;
                           _loc10_ = param1.§_-Uv§;
                           _loc13_;
                           if(param1.§_-Uv§ > param1.iY)
                           {
                              _loc12_;
                           }
                           if(param1.§_-Uv§ > param1.iY)
                           {
                              _loc11_ = param1.§_-Uv§;
                              _loc12_;
                              _loc12_;
                              _loc12_;
                              _loc13_;
                              _loc12_;
                              _loc12_;
                              if(_loc6_ >= _loc8_ && _loc6_ <= _loc9_ && _loc7_ >= _loc10_ && _loc7_ <= _loc11_)
                              {
                                 _loc13_;
                                 _loc13_;
                                 if(!_loc2_)
                                 {
                                    _loc2_ = [];
                                 }
                                 _loc2_.push(new §_-i2§(_loc6_,_loc7_,SafeGlobal.§_-Ib§,1));
                                 _loc12_;
                                 _loc12_;
                                 _loc2_[_loc2_.length - 1].skyMineID = _loc3_;
                                 _loc13_;
                                 _loc13_;
                              }
                           }
                           else
                           {
                              _loc11_ = param1.iY;
                              _loc12_;
                              _loc12_;
                              _loc12_;
                              _loc13_;
                              _loc12_;
                              _loc12_;
                              if(_loc6_ >= _loc8_ && _loc6_ <= _loc9_ && _loc7_ >= _loc10_ && _loc7_ <= _loc11_)
                              {
                                 _loc13_;
                                 _loc13_;
                                 if(!_loc2_)
                                 {
                                    _loc2_ = [];
                                 }
                                 _loc2_.push(new §_-i2§(_loc6_,_loc7_,SafeGlobal.§_-Ib§,1));
                                 _loc12_;
                                 _loc12_;
                                 _loc2_[_loc2_.length - 1].skyMineID = _loc3_;
                                 _loc13_;
                                 _loc13_;
                              }
                           }
                        }
                     }
                     else
                     {
                        _loc9_ = param1.iX;
                        _loc13_;
                        _loc12_;
                        if(param1.§_-Uv§ > param1.iY)
                        {
                           _loc12_;
                        }
                        else
                        {
                           _loc13_;
                           _loc13_;
                        }
                        if(param1.§_-Uv§ > param1.iY)
                        {
                           _loc12_;
                           _loc10_ = param1.iY;
                           _loc13_;
                           if(param1.§_-Uv§ > param1.iY)
                           {
                              _loc12_;
                           }
                           if(param1.§_-Uv§ > param1.iY)
                           {
                              _loc11_ = param1.§_-Uv§;
                              _loc12_;
                              _loc12_;
                              _loc12_;
                              _loc13_;
                              _loc12_;
                              _loc12_;
                              if(_loc6_ >= _loc8_ && _loc6_ <= _loc9_ && _loc7_ >= _loc10_ && _loc7_ <= _loc11_)
                              {
                                 _loc13_;
                                 _loc13_;
                                 if(!_loc2_)
                                 {
                                    _loc2_ = [];
                                 }
                                 _loc2_.push(new §_-i2§(_loc6_,_loc7_,SafeGlobal.§_-Ib§,1));
                                 _loc12_;
                                 _loc12_;
                                 _loc2_[_loc2_.length - 1].skyMineID = _loc3_;
                                 _loc13_;
                                 _loc13_;
                              }
                           }
                           else
                           {
                              _loc11_ = param1.iY;
                              _loc12_;
                              _loc12_;
                              _loc12_;
                              _loc13_;
                              _loc12_;
                              _loc12_;
                              if(_loc6_ >= _loc8_ && _loc6_ <= _loc9_ && _loc7_ >= _loc10_ && _loc7_ <= _loc11_)
                              {
                                 _loc13_;
                                 _loc13_;
                                 if(!_loc2_)
                                 {
                                    _loc2_ = [];
                                 }
                                 _loc2_.push(new §_-i2§(_loc6_,_loc7_,SafeGlobal.§_-Ib§,1));
                                 _loc12_;
                                 _loc12_;
                                 _loc2_[_loc2_.length - 1].skyMineID = _loc3_;
                                 _loc13_;
                                 _loc13_;
                              }
                           }
                        }
                        else
                        {
                           _loc12_;
                           _loc10_ = param1.§_-Uv§;
                           _loc13_;
                           if(param1.§_-Uv§ > param1.iY)
                           {
                              _loc12_;
                           }
                           if(param1.§_-Uv§ > param1.iY)
                           {
                              _loc11_ = param1.§_-Uv§;
                              _loc12_;
                              _loc12_;
                              _loc12_;
                              _loc13_;
                              _loc12_;
                              _loc12_;
                              if(_loc6_ >= _loc8_ && _loc6_ <= _loc9_ && _loc7_ >= _loc10_ && _loc7_ <= _loc11_)
                              {
                                 _loc13_;
                                 _loc13_;
                                 if(!_loc2_)
                                 {
                                    _loc2_ = [];
                                 }
                                 _loc2_.push(new §_-i2§(_loc6_,_loc7_,SafeGlobal.§_-Ib§,1));
                                 _loc12_;
                                 _loc12_;
                                 _loc2_[_loc2_.length - 1].skyMineID = _loc3_;
                                 _loc13_;
                                 _loc13_;
                              }
                           }
                           else
                           {
                              _loc11_ = param1.iY;
                              _loc12_;
                              _loc12_;
                              _loc12_;
                              _loc13_;
                              _loc12_;
                              _loc12_;
                              if(_loc6_ >= _loc8_ && _loc6_ <= _loc9_ && _loc7_ >= _loc10_ && _loc7_ <= _loc11_)
                              {
                                 _loc13_;
                                 _loc13_;
                                 if(!_loc2_)
                                 {
                                    _loc2_ = [];
                                 }
                                 _loc2_.push(new §_-i2§(_loc6_,_loc7_,SafeGlobal.§_-Ib§,1));
                                 _loc12_;
                                 _loc12_;
                                 _loc2_[_loc2_.length - 1].skyMineID = _loc3_;
                                 _loc13_;
                                 _loc13_;
                              }
                           }
                        }
                     }
                  }
               }
               _loc5_++;
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function collisionProjectileGate(param1:Projectile) : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:§_-Sc§ = null;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         _loc5_;
         _loc4_ = 0;
         while(_loc4_ < this.gates.length)
         {
            this.tempGateCollPoint1.x = param1.iX;
            _loc6_;
            this.tempGateCollPoint1.y = param1.iY;
            _loc5_;
            _loc5_;
            this.tempGateCollPoint2.x = param1.§_-JB§;
            _loc6_;
            _loc6_;
            this.tempGateCollPoint2.y = param1.§_-Uv§;
            _loc6_;
            _loc6_;
            _loc2_ = this.§_-sW§(this.gates[_loc4_].pointA,this.gates[_loc4_].pointB,this.tempGateCollPoint1,this.tempGateCollPoint2);
            _loc5_;
            if(_loc2_)
            {
               _loc5_;
               _loc5_;
               if(!_loc3_)
               {
                  _loc6_;
                  _loc6_;
                  _loc3_ = [];
               }
               _loc3_.push(new §_-i2§(_loc2_.x,_loc2_.y,SafeGlobal.COLLTYPE_GATE,1,_loc2_.angle));
               _loc5_;
               _loc5_;
               _loc3_[_loc3_.length - 1].gateID = _loc4_;
               _loc5_;
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function transportProjectile(param1:Projectile, param2:Point, param3:Wormhole, param4:int) : *
      {
         var _loc17_:* = false;
         var _loc18_:* = true;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Point = null;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         _loc18_;
         _loc17_;
         _loc17_;
         _loc5_ = param2.x - param3.pointA.x;
         _loc18_;
         _loc6_ = param2.y - param3.pointA.y;
         _loc17_;
         _loc7_ = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         if(!param1.test)
         {
            this.addEffect(SafeGlobal.EFFECTS_WORMHOLEFLASH,param2.x,param2.y,param3.rotation);
         }
         _loc17_;
         _loc8_ = Math.atan2(param1.iY - param1.§_-Uv§,param1.iX - param1.§_-JB§);
         _loc17_;
         _loc17_;
         _loc9_ = _loc8_ - param3.angle;
         _loc10_ = param3.pair.angle + _loc9_;
         _loc11_ = this.§_-yl§(Math.sqrt(param1.momX * param1.momX + param1.momY * param1.momY));
         param1.momX = this.§_-yl§(Math.cos(_loc10_) * _loc11_);
         param1.momY = this.§_-yl§(Math.sin(_loc10_) * _loc11_);
         _loc12_ = new Point(0,0);
         _loc12_.x = param3.pair.pointA.x - _loc7_ * Math.cos(param3.pair.angle);
         _loc17_;
         _loc17_;
         _loc12_.y = param3.pair.pointA.y - _loc7_ * Math.sin(param3.pair.angle);
         _loc18_;
         _loc18_;
         _loc15_ = param3.angle - _loc8_;
         while(true)
         {
            _loc18_;
            if(_loc15_ > this.PI * -1)
            {
               break;
            }
            _loc18_;
            _loc17_;
            _loc17_;
            _loc18_;
            _loc17_;
            _loc15_ = _loc15_ + this.PI * 2;
         }
         while(_loc15_ > this.PI)
         {
            _loc18_;
            _loc18_;
            _loc15_ = _loc15_ - this.PI * 2;
            _loc18_;
         }
         _loc18_;
         if(_loc15_ >= 0)
         {
            _loc17_;
            _loc17_;
            _loc13_ = _loc12_.x + Math.cos(param3.pair.angle - this.PI / 2);
            _loc14_ = _loc12_.y + Math.sin(param3.pair.angle - this.PI / 2);
         }
         else
         {
            _loc18_;
            _loc18_;
            _loc13_ = _loc12_.x + Math.cos(param3.pair.angle + this.PI / 2);
            _loc14_ = _loc12_.y + Math.sin(param3.pair.angle + this.PI / 2);
         }
         param1.iX = param1.§_-JB§ = this.§_-yl§(_loc13_);
         param1.iY = param1.§_-Uv§ = this.§_-yl§(_loc14_);
         param1.x = param1.iX;
         param1.y = param1.iY;
         _loc17_;
         param1.§_-Xx§();
         _loc18_;
         _loc18_;
         if(!param1.test)
         {
            _loc18_;
            this.addEffect(SafeGlobal.EFFECTS_WORMHOLEFLASH,_loc12_.x,_loc12_.y,param3.pair.rotation);
         }
      }
      
      public function reflectProjectile(param1:Projectile, param2:Point, param3:Number, param4:Number, param5:Boolean) : *
      {
         var _loc15_:* = true;
         var _loc16_:* = false;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var param3:Number = this.§_-yl§(param3);
         _loc15_;
         _loc16_;
         _loc16_;
         _loc16_;
         _loc6_ = param3 - this.PI / 2;
         _loc16_;
         _loc16_;
         _loc7_ = Math.atan2(param1.iY - param1.§_-Uv§,param1.iX - param1.§_-JB§);
         _loc16_;
         _loc16_;
         _loc8_ = _loc6_ - _loc7_;
         _loc16_;
         _loc15_;
         _loc15_;
         _loc15_;
         _loc16_;
         _loc16_;
         _loc16_;
         _loc9_ = this.§_-yl§(_loc6_ + _loc8_ + this.PI);
         _loc10_ = param2.x;
         _loc15_;
         _loc11_ = param2.y;
         _loc15_;
         _loc15_;
         _loc15_;
         _loc15_;
         _loc12_ = param3 - _loc7_;
         while(true)
         {
            _loc15_;
            _loc15_;
            _loc16_;
            _loc15_;
            _loc15_;
            if(_loc12_ > this.PI * -1)
            {
               break;
            }
            _loc16_;
            _loc16_;
            _loc16_;
            _loc16_;
            _loc16_;
            _loc16_;
            _loc12_ = _loc12_ + this.PI * 2;
         }
         while(_loc12_ > this.PI)
         {
            _loc16_;
            _loc15_;
            _loc15_;
            _loc12_ = _loc12_ - this.PI * 2;
         }
         if(_loc12_ >= 0)
         {
            _loc16_;
            _loc16_;
            if(param1.test)
            {
            }
            _loc16_;
            if(param5)
            {
               param1.iX = param1.§_-JB§ = this.§_-yl§(_loc10_ + Math.cos(param3 + this.PI / 2));
               param1.iY = param1.§_-Uv§ = this.§_-yl§(_loc11_ + Math.sin(param3 + this.PI / 2));
            }
            else
            {
               _loc15_;
               _loc15_;
               param1.iX = param1.§_-JB§ = this.§_-yl§(_loc10_ + param1.radius * Math.cos(param3 + this.PI / 2));
               _loc16_;
               param1.iY = param1.§_-Uv§ = this.§_-yl§(_loc11_ + param1.radius * Math.sin(param3 + this.PI / 2));
            }
         }
         else
         {
            _loc15_;
            if(param1.test)
            {
            }
            _loc15_;
            _loc15_;
            if(param5)
            {
               param1.iX = param1.§_-JB§ = this.§_-yl§(_loc10_ + Math.cos(param3 - this.PI / 2));
               param1.iY = param1.§_-Uv§ = this.§_-yl§(_loc11_ + Math.sin(param3 - this.PI / 2));
            }
            else
            {
               _loc16_;
               param1.iX = param1.§_-JB§ = this.§_-yl§(_loc10_ + param1.radius * Math.cos(param3 - this.PI / 2));
               _loc15_;
               _loc15_;
               _loc16_;
               param1.iY = param1.§_-Uv§ = this.§_-yl§(_loc11_ + param1.radius * Math.sin(param3 - this.PI / 2));
            }
         }
         param1.x = param1.iX;
         param1.y = param1.iY;
         param1.ignoreUnit = -1;
         _loc15_;
         _loc13_ = this.§_-yl§(Math.sqrt(param1.momX * param1.momX + param1.momY * param1.momY));
         _loc15_;
         _loc16_;
         _loc16_;
         param1.momX = this.§_-yl§(Math.cos(_loc9_) * _loc13_ * param4);
         _loc15_;
         _loc15_;
         _loc16_;
         param1.momY = this.§_-yl§(Math.sin(_loc9_) * _loc13_ * param4);
         _loc15_;
         _loc16_;
         _loc16_;
         if(!param1.test)
         {
            _loc15_;
            if(!param5)
            {
               _loc16_;
               _loc15_;
               _loc16_;
               _loc16_;
               SoundManager.§_-wF§(SafeGlobal.FX_BALL_BOUNCE,(this.simOnly) || (this.costumeCacheOnly));
               _loc16_;
            }
            else
            {
               _loc15_;
               _loc15_;
               _loc15_;
               _loc15_;
               _loc16_;
               SoundManager.§_-wF§(SafeGlobal.FX_SHIELD_BOUNCE,(this.simOnly) || (this.costumeCacheOnly));
            }
         }
      }
      
      public function dissolveProjectile(param1:Projectile) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!param1.test)
         {
            _loc3_;
            _loc2_;
            this.simManager.removeObject(param1);
            _loc3_;
            if(param1.unit)
            {
               this.removeUnit(param1.unit);
               _loc3_;
               this.updateTeamHealths();
               _loc2_;
               _loc2_;
            }
            if(param1.mine)
            {
               _loc3_;
               this.simManager.removeObject(param1.mine);
               _loc3_;
               this.removeMine(param1.mine);
               _loc3_;
               param1.mine = null;
            }
            this.removeProjectile(param1);
         }
      }
      
      public function collisionProjectilePlanet(param1:Projectile, param2:Point = null, param3:Point = null) : *
      {
         var _loc15_:* = false;
         var _loc16_:* = true;
         var _loc4_:Array = null;
         var _loc5_:* = 0;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:Array = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         _loc15_;
         _loc15_;
         if(!param2 && !param3)
         {
            this.point1A.x = param1.iX;
            this.point1A.y = param1.iY;
            _loc16_;
            this.point1B.x = param1.§_-JB§;
            _loc16_;
            this.point1B.y = param1.§_-Uv§;
         }
         else
         {
            this.point1A.x = param2.x;
            this.point1A.y = param2.y;
            _loc15_;
            this.point1B.x = param3.x;
            this.point1B.y = param3.y;
         }
         _loc11_ = 0;
         while(_loc11_ < this.planets.length)
         {
            _loc4_ = this.planets[_loc11_].findIntersects(this.point1A,this.point1B);
            if(_loc4_.length > 0)
            {
               _loc16_;
               if(!_loc10_)
               {
                  _loc10_ = [];
               }
               _loc16_;
               _loc12_ = 0;
               _loc15_;
               while(_loc12_ < _loc4_.length)
               {
                  _loc16_;
                  _loc13_ = _loc4_[_loc12_][0].x;
                  _loc15_;
                  _loc14_ = _loc4_[_loc12_][0].y;
                  _loc16_;
                  _loc10_.push(new §_-i2§(_loc13_,_loc14_,SafeGlobal.COLLTYPE_PLANET,1));
                  _loc10_[_loc10_.length - 1].planetID = _loc11_;
                  _loc16_;
                  _loc10_[_loc10_.length - 1].shapeID = _loc4_[_loc12_][2];
                  _loc10_[_loc10_.length - 1].curveID = _loc4_[_loc12_][1];
                  _loc12_++;
               }
            }
            _loc11_++;
         }
         _loc15_;
         if(_loc10_)
         {
            _loc15_;
            return _loc10_;
         }
         return null;
      }
      
      public function §_-K2§(param1:MouseEvent) : *
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:Point = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         _loc2_ = this.units[this.currentUnit].startPoint();
         this.§_-bg§.x = 0;
         _loc6_;
         _loc6_;
         this.§_-bg§.y = 0;
         _loc7_;
         _loc7_;
         _loc6_;
         _loc6_;
         _loc3_ = _loc2_.x - this.screen.mouseX;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc4_ = _loc2_.y - this.screen.mouseY;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc5_ = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         if((_loc5_ < 30 || this.§_-Db§[1] == SafeGlobal.WEAPONTYPE_GATE) && (this.myTurn) && this.units[this.currentUnit].walkDir == 0)
         {
            this.§_-tO§();
            if(this.turnState == "shoot")
            {
               _loc7_;
               if(this.currentWeapon == -1)
               {
                  this.dragging = true;
                  stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
                  stage.addEventListener(MouseEvent.MOUSE_UP,this.§_-sh§);
                  _loc6_;
                  this.§_-yS§();
                  _loc7_;
                  _loc7_;
                  this.§_-0s§ = this.units[this.currentUnit].startPoint();
               }
               else
               {
                  _loc7_;
                  if(this.§_-Db§[1] == SafeGlobal.WEAPONTYPE_PROJECTILE)
                  {
                     _loc7_;
                     this.units[this.currentUnit].scaleX = -1;
                     _loc6_;
                     this.units[this.currentUnit].healthDisplay.scaleX = -1;
                     _loc7_;
                     _loc7_;
                     this.units[this.currentUnit].nameDisplay.scaleX = -1;
                     _loc7_;
                     this.dragging = true;
                     this.§_-GD§ = SafeGlobal.CLEANUP_PROJECTILE;
                     _loc6_;
                     _loc6_;
                     this.§_-0s§ = this.units[this.currentUnit].startPoint();
                     if(this.§_-gK§)
                     {
                        _loc7_;
                        this.§_-aZ§();
                        _loc7_;
                     }
                     if(this.§_-Db§[0] != SafeGlobal.WEAPONINFO_GRAVITEEBALL[0])
                     {
                        _loc6_;
                        _loc6_;
                        this.§_-gK§ = this.§_-GA§(this.§_-Db§);
                     }
                     this.§_-xK§.§_-yX§ = this.§_-yX§;
                     this.§_-yX§ = 0;
                     _loc6_;
                     stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
                     stage.addEventListener(MouseEvent.MOUSE_UP,this.§_-XE§);
                     _loc6_;
                     _loc6_;
                     this.§_-yS§();
                     _loc6_;
                  }
                  else
                  {
                     _loc6_;
                     if(this.§_-Db§[1] == SafeGlobal.WEAPONTYPE_MINE)
                     {
                        this.dragging = true;
                        _loc7_;
                        _loc7_;
                        this.§_-0s§ = this.units[this.currentUnit].startPoint();
                        this.§_-GD§ = SafeGlobal.CLEANUP_MINE;
                        _loc7_;
                        _loc7_;
                        if(this.§_-Db§[0] == SafeGlobal.WEAPONINFO_MINE[0])
                        {
                           _loc7_;
                           _loc7_;
                           this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYSTANDARDMINE]);
                        }
                        else
                        {
                           _loc7_;
                           if(this.§_-Db§[0] == SafeGlobal.WEAPONINFO_CLUSTERMINE[0])
                           {
                              _loc6_;
                              _loc7_;
                              _loc7_;
                              this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYCLUSTERMINE]);
                              _loc7_;
                           }
                           else
                           {
                              _loc7_;
                              if(this.§_-Db§[0] == SafeGlobal.WEAPONINFO_DRILLMINE[0])
                              {
                                 _loc7_;
                                 this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYDRILLMINE]);
                                 _loc6_;
                              }
                              else if(this.§_-Db§[0] == SafeGlobal.WEAPONINFO_ROVER[0])
                              {
                                 _loc7_;
                                 this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYROVER]);
                              }
                              else
                              {
                                 _loc7_;
                                 if(this.§_-Db§[0] == SafeGlobal.WEAPONINFO_SUPERROVER[0])
                                 {
                                    _loc7_;
                                    this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYSUPERROVER]);
                                 }
                                 else
                                 {
                                    _loc7_;
                                    if(this.§_-Db§[0] == SafeGlobal.§_-0q§[0])
                                    {
                                       _loc7_;
                                       this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYMAGNETICROVER]);
                                       _loc6_;
                                       _loc6_;
                                    }
                                 }
                              }
                              
                           }
                        }
                        stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
                        stage.addEventListener(MouseEvent.MOUSE_UP,this.§_-KU§);
                        _loc6_;
                        _loc6_;
                        this.§_-yS§();
                     }
                     else
                     {
                        _loc7_;
                        _loc7_;
                        if(this.§_-Db§[1] == SafeGlobal.WEAPONTYPE_GATE)
                        {
                           _loc6_;
                           _loc6_;
                           this.dragging = true;
                           _loc6_;
                           this.§_-0s§ = new Point(this.screen.mouseX,this.screen.mouseY);
                           this.§_-GD§ = SafeGlobal.CLEANUP_GATE;
                           _loc6_;
                           _loc6_;
                           this.addGate(this.§_-0s§.x,this.§_-0s§.y,0,this.§_-Db§[2]);
                           this.gates[this.gates.length - 1].placing = true;
                           this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_TABLET]);
                           stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
                           stage.addEventListener(MouseEvent.MOUSE_UP,this.§_-7a§);
                           this.§_-yS§();
                        }
                        else
                        {
                           _loc7_;
                           _loc7_;
                           _loc7_;
                           if(this.§_-Db§[1] == SafeGlobal.WEAPONTYPE_PLANETGATE)
                           {
                              this.§_-0s§ = this.units[this.currentUnit].startPoint();
                              _loc7_;
                              _loc7_;
                              this.dragging = true;
                              _loc6_;
                              _loc7_;
                              _loc7_;
                              _loc7_;
                              this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_TABLET]);
                              this.§_-GD§ = SafeGlobal.CLEANUP_PLANETGATE;
                              stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
                              _loc6_;
                              _loc6_;
                              stage.addEventListener(MouseEvent.MOUSE_UP,this.§_-Tm§);
                              _loc6_;
                              this.§_-yS§();
                              _loc6_;
                           }
                           else if(this.§_-Db§[1] == SafeGlobal.WEAPONTYPE_TELEPORT)
                           {
                              _loc6_;
                              this.§_-0s§ = this.units[this.currentUnit].startPoint();
                              _loc6_;
                              _loc6_;
                              stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
                              stage.addEventListener(MouseEvent.MOUSE_UP,this.§_-DK§);
                              _loc7_;
                              _loc7_;
                              _loc6_;
                              _loc6_;
                              _loc6_;
                              this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_TABLET]);
                              this.§_-GD§ = SafeGlobal.CLEANUP_TELEPORT;
                              this.§_-yS§();
                              _loc6_;
                              _loc6_;
                              this.dragging = true;
                              _loc7_;
                              _loc7_;
                           }
                           else
                           {
                              _loc7_;
                              _loc7_;
                              if(this.§_-Db§[1] == SafeGlobal.WEAPONTYPE_INCOMING)
                              {
                                 this.§_-GD§ = SafeGlobal.CLEANUP_INCOMING;
                                 stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
                                 _loc7_;
                                 stage.addEventListener(MouseEvent.MOUSE_UP,this.incomingDragStop);
                                 this.screen.addChild(this.§_-kI§);
                                 _loc7_;
                                 _loc7_;
                                 this.camera.addTarget(this.§_-kI§,-1,"incoming");
                                 _loc6_;
                                 this.camera.removeTarget(this.units[this.currentUnit]);
                                 _loc6_;
                                 _loc6_;
                                 this.§_-a9§.active = false;
                                 this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_TABLET]);
                                 _loc6_;
                                 _loc6_;
                                 this.dragging = true;
                                 _loc7_;
                                 _loc7_;
                                 this.§_-yS§();
                                 _loc6_;
                                 _loc6_;
                              }
                              else if(this.§_-Db§[1] == SafeGlobal.WEAPONTYPE_MELEE)
                              {
                                 this.§_-GD§ = SafeGlobal.CLEANUP_MELEE;
                                 _loc7_;
                                 _loc7_;
                                 this.§_-0s§ = this.units[this.currentUnit].startPoint();
                                 _loc7_;
                                 _loc7_;
                                 stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
                                 _loc7_;
                                 _loc7_;
                                 stage.addEventListener(MouseEvent.MOUSE_UP,this.§_-iD§);
                                 if(this.§_-Db§[0] == SafeGlobal.WEAPONINFO_SPACEBALLBAT[0])
                                 {
                                    _loc6_;
                                    this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_SPACEBALLSWINGSETUP,SafeGlobal.ANIM_UNIT_SPACEBALLSWINGHOLD]);
                                 }
                                 else if(this.§_-Db§[0] == SafeGlobal.WEAPONINFO_FIREPUNCH[0])
                                 {
                                    _loc6_;
                                    _loc6_;
                                    this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_UPPERCUTSETUP,SafeGlobal.ANIM_UNIT_UPPERCUTHOLD]);
                                    _loc7_;
                                    _loc7_;
                                 }
                                 else
                                 {
                                    _loc6_;
                                    if(this.§_-Db§[0] == SafeGlobal.WEAPONINFO_TAZER[0])
                                    {
                                       this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_TAZERJABSETUP,SafeGlobal.ANIM_UNIT_TAZERJABHOLD]);
                                    }
                                    else
                                    {
                                       _loc7_;
                                       if(this.§_-Db§[0] == SafeGlobal.§_-na§[0])
                                       {
                                          _loc6_;
                                          this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_ENERGYSWORDSETUP,SafeGlobal.ANIM_UNIT_ENERGYSWORDHOLD]);
                                       }
                                    }
                                 }
                                 
                                 this.dragging = true;
                                 _loc6_;
                                 _loc6_;
                                 this.§_-yS§();
                                 _loc7_;
                                 _loc7_;
                              }
                              
                           }
                           
                        }
                     }
                  }
               }
            }
         }
         else
         {
            this.§_-Vr§ = true;
            this.§_-0s§ = new Point(mouseX,mouseY);
            this.§_-o4§ = new Point(this.screen.x * -1,this.screen.y * -1);
            _loc7_;
            _loc7_;
            _loc7_;
            this.§_-a9§.x = this.§_-o4§.x + 400;
            _loc7_;
            _loc7_;
            this.§_-a9§.y = this.§_-o4§.y + 300;
            this.§_-a9§.active = true;
            stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
            _loc7_;
            stage.addEventListener(MouseEvent.MOUSE_UP,this.§_-n0§);
         }
      }
      
      public function addGate(param1:int, param2:int, param3:int, param4:int) : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         _loc6_;
         _loc6_;
         _loc5_;
         _loc5_;
         if(param4 == SafeGlobal.GATETYPE_SHIELD)
         {
            _loc6_;
            this.gates.push(new §_-ed§(param1,param2,param3));
            _loc6_;
            _loc5_;
            _loc5_;
            _loc6_;
            this.gates[this.gates.length - 1].animStep = Math.floor(Math.random() * 13);
            _loc5_;
            _loc5_;
            this.gates[this.gates.length - 1].init(this.§_-WJ§[param4]);
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc6_;
            _loc5_;
            this.gates[this.gates.length - 1].gfx.visible = false;
         }
         else
         {
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            if(param4 == SafeGlobal.GATETYPE_DISSOLVESHIELD)
            {
               this.gates.push(new §_-dk§(param1,param2,param3));
               this.gates[this.gates.length - 1].init(this.§_-WJ§[param4]);
            }
            else if(param4 == SafeGlobal.GATETYPE_WORMHOLE)
            {
               this.gates.push(new Wormhole(param1,param2,param3));
            }
            
         }
         this.§in § = 1;
         this.§_-zY§.addChild(this.gates[this.gates.length - 1]);
      }
      
      public function addMine(param1:int, param2:int, param3:int) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         _loc5_;
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         if(param3 == SafeGlobal.MINETYPE_STANDARD)
         {
            this.§_-ki§.push(new §_-gf§(param1,param2));
            _loc5_;
         }
         else
         {
            _loc4_;
            _loc4_;
            if(param3 == SafeGlobal.MINETYPE_DRILL)
            {
               _loc5_;
               _loc5_;
               this.§_-ki§.push(new §_-c4§(param1,param2));
               _loc5_;
               _loc5_;
            }
            else
            {
               _loc4_;
               _loc5_;
               _loc5_;
               if(param3 == SafeGlobal.MINETYPE_CLUSTER)
               {
                  _loc5_;
                  _loc5_;
                  this.§_-ki§.push(new §_-t5§(param1,param2));
                  _loc4_;
               }
               else
               {
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  if(param3 == SafeGlobal.MINETYPE_ROVER)
                  {
                     _loc5_;
                     this.§_-ki§.push(new Rover(param1,param2));
                     _loc4_;
                     _loc4_;
                  }
                  else
                  {
                     _loc4_;
                     _loc4_;
                     _loc4_;
                     if(param3 == SafeGlobal.MINETYPE_SUPERROVER)
                     {
                        _loc4_;
                        _loc5_;
                        _loc5_;
                        this.§_-ki§.push(new §_-9s§(param1,param2));
                     }
                     else if(param3 == SafeGlobal.§_-aF§)
                     {
                        _loc5_;
                        this.§_-ki§.push(new §_-H-§(param1,param2));
                     }
                     
                  }
               }
            }
         }
         _loc5_;
         _loc4_;
         _loc4_;
         if(!this.simOnly && !this.costumeCacheOnly)
         {
            _loc4_;
            this.§_-t6§.addChild(this.§_-ki§[this.§_-ki§.length - 1]);
            this.§_-ki§[this.§_-ki§.length - 1].init(this.§_-Zi§[param3]);
         }
      }
      
      public function addBarrel(param1:int, param2:int) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         _loc4_;
         this.barrels.push(new Barrel(param1,param2));
         _loc4_;
         _loc3_;
         _loc4_;
         this.barrels[this.barrels.length - 1].updatePoints();
         _loc4_;
         _loc3_;
         _loc3_;
         if(!this.simOnly && !this.costumeCacheOnly)
         {
            _loc3_;
            this.§_-dK§.addChild(this.barrels[this.barrels.length - 1]);
            _loc4_;
            _loc4_;
            this.barrels[this.barrels.length - 1].init(this.§_-ri§[0],true);
         }
      }
      
      public function addSkyMine(param1:Number, param2:Number) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         this.skyMines.push(new §_-UC§(param1,param2));
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(!this.simOnly && !this.costumeCacheOnly)
         {
            _loc4_;
            this.§_-t6§.addChild(this.skyMines[this.skyMines.length - 1]);
            _loc3_;
            _loc3_;
            this.skyMines[this.skyMines.length - 1].init(this.§_-Hm§);
         }
      }
      
      public function §_-qY§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.chat.§_-CL§();
      }
      
      public function §_-UJ§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.chat.§_-kN§();
      }
      
      public function §_-Hu§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         if(!this.§_-UR§)
         {
            _loc2_;
            this.§_-Q3§ = true;
            _loc1_;
            _loc1_;
            this.chat.§_-Vd§();
         }
      }
      
      public function §_-dG§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-Q3§ = false;
         _loc1_;
         this.chat.§_-Ld§();
      }
      
      public function §_-GA§(param1:Array) : *
      {
         var _loc20_:* = true;
         var _loc21_:* = false;
         var _loc2_:Array = null;
         var _loc3_:* = 0;
         var _loc4_:Array = null;
         var _loc5_:ColorTransform = null;
         var _loc6_:Sprite = null;
         var _loc7_:Sprite = null;
         var _loc8_:MovieClip = null;
         var _loc9_:MovieClip = null;
         var _loc10_:* = 0;
         var _loc11_:String = null;
         var _loc13_:Array = null;
         var _loc14_:String = null;
         var _loc15_:Array = null;
         var _loc16_:Array = null;
         var _loc17_:* = 0;
         var _loc18_:Class = null;
         var _loc19_:Array = null;
         _loc2_ = param1[3];
         _loc21_;
         _loc21_;
         _loc21_;
         _loc20_;
         _loc3_ = param1[0];
         _loc4_ = param1[5];
         _loc5_ = new ColorTransform();
         _loc5_.color = SafeGlobal.colour_hex[this.teams[this.units[this.currentUnit].team].colourID];
         _loc6_ = new Sprite();
         var _loc12_:* = false;
         _loc21_;
         _loc21_;
         _loc20_;
         _loc20_;
         _loc20_;
         _loc21_;
         _loc21_;
         _loc21_;
         _loc21_;
         if(_loc3_ == SafeGlobal.WEAPONINFO_CUSTOM[0] || _loc3_ == SafeGlobal.WEAPONINFO_CUSTOM2[0] || _loc3_ == SafeGlobal.WEAPONINFO_CUSTOM3[0])
         {
            _loc12_ = true;
            _loc21_;
            _loc20_;
            _loc20_;
            _loc20_;
            if(_loc3_ == SafeGlobal.WEAPONINFO_CUSTOM[0])
            {
               _loc20_;
               _loc20_;
               _loc21_;
               _loc21_;
               _loc21_;
               _loc21_;
               _loc21_;
               _loc11_ = this.teams[this.units[this.currentUnit].team].customWeaponStrings[0];
            }
            else
            {
               _loc21_;
               _loc21_;
               _loc20_;
               _loc20_;
               _loc20_;
               if(_loc3_ == SafeGlobal.WEAPONINFO_CUSTOM2[0])
               {
                  _loc20_;
                  _loc21_;
                  _loc21_;
                  _loc21_;
                  _loc21_;
                  _loc20_;
                  _loc11_ = this.teams[this.units[this.currentUnit].team].customWeaponStrings[1];
               }
               else if(_loc3_ == SafeGlobal.WEAPONINFO_CUSTOM3[0])
               {
                  _loc20_;
                  _loc11_ = this.teams[this.units[this.currentUnit].team].customWeaponStrings[2];
               }
               
            }
            _loc13_ = _loc11_.split("/");
            _loc21_;
            _loc21_;
            _loc14_ = _loc13_[0];
            _loc16_ = _loc14_.split(";");
            _loc20_;
            _loc17_ = 0;
            while(_loc17_ < _loc16_.length)
            {
               _loc15_ = _loc16_[_loc17_].split(",");
               if(_loc15_[0] == "g")
               {
                  _loc20_;
                  _loc20_;
                  _loc10_ = int(_loc15_[2]);
                  _loc20_;
                  _loc20_;
               }
               else if(_loc15_[0] == "p")
               {
                  _loc20_;
                  _loc20_;
                  this.§_-yX§ = int(_loc15_[1]);
                  _loc20_;
                  _loc20_;
               }
               
               _loc17_++;
            }
            _loc7_ = this.§_-6s§[_loc10_];
         }
         else
         {
            _loc18_ = getDefinitionByName("WeaponGFX" + _loc3_) as Class;
            _loc7_ = new _loc18_() as Sprite;
            _loc19_ = SafeGlobal.§_-r§(_loc3_);
            _loc20_;
            _loc20_;
            _loc11_ = _loc19_[4];
            _loc13_ = _loc11_.split("/");
            _loc20_;
            _loc20_;
            _loc14_ = _loc13_[0];
            _loc16_ = _loc14_.split(";");
            _loc21_;
            _loc20_;
            _loc20_;
            _loc17_ = 0;
            _loc20_;
            while(_loc17_ < _loc16_.length)
            {
               _loc15_ = _loc16_[_loc17_].split(",");
               if(_loc15_[0] == "p")
               {
                  _loc20_;
                  this.§_-yX§ = int(_loc15_[1]);
                  _loc20_;
                  _loc20_;
               }
               _loc17_++;
            }
         }
         _loc21_;
         if(!(_loc2_ == SafeGlobal.AIMTYPE_MELEE) && !(_loc2_ == SafeGlobal.AIMTYPE_FEET) && !(param1[0] == SafeGlobal.WEAPONINFO_JETPACK[0]))
         {
            _loc7_.x = _loc4_[1];
            _loc7_.y = _loc4_[2];
            _loc6_.addChild(_loc7_);
            if(_loc4_[3] != "x")
            {
               _loc8_ = new HandClip1();
               _loc8_.x = _loc4_[3];
               _loc20_;
               _loc8_.y = _loc4_[4];
               _loc20_;
               _loc8_.inside.transform.colorTransform = _loc5_;
               _loc20_;
               _loc6_.addChild(_loc8_);
               _loc9_ = new HandClip1();
               _loc9_.x = _loc4_[5];
               _loc21_;
               _loc9_.y = _loc4_[6];
               _loc21_;
               _loc21_;
               _loc9_.inside.transform.colorTransform = _loc5_;
               _loc21_;
               _loc6_.addChild(_loc9_);
            }
            _loc6_.x = this.units[this.currentUnit].x + Math.cos(this.units[this.currentUnit].iR - this.PI / 2) * _loc2_[1];
            _loc20_;
            _loc6_.y = this.units[this.currentUnit].y + Math.sin(this.units[this.currentUnit].iR - this.PI / 2) * _loc2_[1];
            _loc6_.rotation = this.units[this.currentUnit].iR * 180 / this.PI;
            _loc21_;
            _loc6_.scaleX = this.units[this.currentUnit].scaleX;
         }
         return _loc6_;
      }
      
      public function §_-aZ§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         while(this.§_-gK§.numChildren > 0)
         {
            this.§_-gK§.removeChildAt(0);
            _loc1_;
            _loc1_;
         }
         _loc1_;
         _loc1_;
         this.§_-gK§ = null;
      }
      
      public function addPowerUp(param1:int, param2:int, param3:int, param4:int, param5:int, param6:Number) : *
      {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc7_:Point = null;
         _loc9_;
         _loc10_;
         _loc10_;
         _loc9_;
         if(param1 == SafeGlobal.POWERUPTYPE_HEALTH)
         {
            _loc9_;
            _loc9_;
            _loc9_;
            this.powerUps.push(new §_-Or§());
            _loc9_;
         }
         else if(param1 == SafeGlobal.POWERUPTYPE_WEAPON)
         {
            _loc9_;
            _loc9_;
            _loc10_;
            _loc10_;
            this.powerUps.push(new §_-Qu§());
            _loc9_;
            _loc9_;
            _loc10_;
            this.powerUps[this.powerUps.length - 1].weaponID = param2;
         }
         
         _loc7_ = this.planets[param3].shapes[param4].curves[param5].curvePos(param6);
         _loc10_;
         _loc10_;
         _loc10_;
         _loc10_;
         this.powerUps[this.powerUps.length - 1].x = this.powerUps[this.powerUps.length - 1].iX = _loc7_.x;
         _loc10_;
         _loc9_;
         _loc10_;
         this.powerUps[this.powerUps.length - 1].y = this.powerUps[this.powerUps.length - 1].iY = _loc7_.y;
         _loc10_;
         _loc10_;
         _loc10_;
         this.powerUps[this.powerUps.length - 1].locationPlanet = param3;
         _loc9_;
         this.powerUps[this.powerUps.length - 1].locationShape = param4;
         _loc10_;
         _loc10_;
         _loc9_;
         this.powerUps[this.powerUps.length - 1].locationCurve = param5;
         _loc9_;
         _loc9_;
         this.powerUps[this.powerUps.length - 1].locationAngle = param6;
         if(this.planets[param3].shapes[param4].curves[param5].origCurve)
         {
            _loc9_;
            _loc10_;
            _loc10_;
            this.powerUps[this.powerUps.length - 1].iR = this.§_-yl§(this.§_-2T§(param6) + this.PI / 2);
         }
         else
         {
            _loc9_;
            _loc10_;
            _loc10_;
            this.powerUps[this.powerUps.length - 1].iR = this.§_-yl§(this.§_-2T§(param6) - this.PI / 2);
         }
         _loc10_;
         this.powerUps[this.powerUps.length - 1].rotation = this.powerUps[this.powerUps.length - 1].iR * 180 / this.PI;
         this.§_-Hf§.addChild(this.powerUps[this.powerUps.length - 1]);
         this.powerUps[this.powerUps.length - 1].init(this.§_-Dz§[param1]);
         _loc10_;
         _loc10_;
         this.camera.addTarget(this.powerUps[this.powerUps.length - 1],30,"addpowerup");
         this.powerUps[this.powerUps.length - 1].updatePoints();
      }
      
      public function addMineAtPoint(param1:Number, param2:Number, param3:Number, param4:int, param5:int, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Number, param12:Unit, param13:int, param14:Boolean = true) : *
      {
         var _loc18_:* = false;
         var _loc19_:* = true;
         var _loc15_:Mine = null;
         var _loc16_:* = 0;
         _loc18_;
         _loc18_;
         if(param4 == SafeGlobal.MINETYPE_STANDARD)
         {
            _loc18_;
            _loc18_;
            this.§_-ki§.push(new §_-gf§(-1,-1));
            _loc18_;
            _loc18_;
            _loc18_;
            this.§_-ki§[this.§_-ki§.length - 1].active = param14;
            _loc18_;
            _loc18_;
            if(!param14)
            {
               _loc18_;
               _loc18_;
               _loc18_;
               _loc19_;
               _loc19_;
               _loc19_;
               _loc19_;
               this.simManager.addObject(this.§_-ki§[this.§_-ki§.length - 1]);
               _loc18_;
               _loc18_;
               _loc19_;
               _loc19_;
               this.§_-ki§[this.§_-ki§.length - 1].lastSimTime = this.§_-ki§[this.§_-ki§.length - 1].startSimTime = param13 + this.§_-QA§;
            }
            else
            {
               _loc18_;
               _loc18_;
               this.§_-ki§[this.§_-ki§.length - 1].lastSimTime = this.§_-ki§[this.§_-ki§.length - 1].startSimTime = param13;
            }
         }
         else
         {
            _loc19_;
            _loc19_;
            if(param4 == SafeGlobal.MINETYPE_DRILL)
            {
               _loc19_;
               this.§_-ki§.push(new §_-c4§(-1,-1));
               _loc18_;
               _loc18_;
               this.§_-ki§[this.§_-ki§.length - 1].active = param14;
               _loc18_;
               _loc18_;
               if(!param14)
               {
                  _loc19_;
                  _loc19_;
                  _loc19_;
                  _loc19_;
                  _loc19_;
                  _loc19_;
                  this.simManager.addObject(this.§_-ki§[this.§_-ki§.length - 1]);
                  _loc19_;
                  this.§_-ki§[this.§_-ki§.length - 1].lastSimTime = this.§_-ki§[this.§_-ki§.length - 1].startSimTime = param13 + this.§_-QA§;
                  _loc18_;
               }
               else
               {
                  _loc19_;
                  _loc19_;
                  this.§_-ki§[this.§_-ki§.length - 1].lastSimTime = this.§_-ki§[this.§_-ki§.length - 1].startSimTime = param13;
                  _loc18_;
               }
            }
            else
            {
               _loc19_;
               _loc19_;
               if(param4 == SafeGlobal.MINETYPE_CLUSTER)
               {
                  _loc19_;
                  this.§_-ki§.push(new §_-t5§(-1,-1));
                  _loc19_;
                  _loc19_;
                  _loc19_;
                  this.§_-ki§[this.§_-ki§.length - 1].active = param14;
                  if(!param14)
                  {
                     this.simManager.addObject(this.§_-ki§[this.§_-ki§.length - 1]);
                     _loc18_;
                     _loc18_;
                     this.§_-ki§[this.§_-ki§.length - 1].lastSimTime = this.§_-ki§[this.§_-ki§.length - 1].startSimTime = param13 + this.§_-QA§;
                  }
                  else
                  {
                     this.§_-ki§[this.§_-ki§.length - 1].lastSimTime = this.§_-ki§[this.§_-ki§.length - 1].startSimTime = param13;
                  }
               }
               else
               {
                  _loc18_;
                  _loc18_;
                  if(param4 == SafeGlobal.MINETYPE_ROVER)
                  {
                     _loc18_;
                     this.§_-ki§.push(new Rover(-1,-1));
                     _loc19_;
                     _loc18_;
                     _loc18_;
                     this.§_-ki§[this.§_-ki§.length - 1].ignoreUnit = param12;
                     _loc19_;
                     _loc19_;
                     this.§_-ki§[this.§_-ki§.length - 1].lastSimTime = this.§_-ki§[this.§_-ki§.length - 1].startSimTime = param13;
                  }
                  else
                  {
                     _loc19_;
                     _loc19_;
                     _loc19_;
                     _loc19_;
                     if(param4 == SafeGlobal.MINETYPE_SUPERROVER)
                     {
                        this.§_-ki§.push(new §_-9s§(-1,-1));
                        _loc18_;
                        _loc18_;
                        _loc18_;
                        this.§_-ki§[this.§_-ki§.length - 1].ignoreUnit = param12;
                        _loc18_;
                        _loc19_;
                        _loc19_;
                        this.§_-ki§[this.§_-ki§.length - 1].lastSimTime = this.§_-ki§[this.§_-ki§.length - 1].startSimTime = param13;
                     }
                     else if(param4 == SafeGlobal.§_-aF§)
                     {
                        this.§_-ki§.push(new §_-H-§(-1,-1));
                        _loc19_;
                        this.§_-ki§[this.§_-ki§.length - 1].ignoreUnit = param12;
                        _loc19_;
                        _loc19_;
                        this.§_-ki§[this.§_-ki§.length - 1].lastSimTime = this.§_-ki§[this.§_-ki§.length - 1].startSimTime = param13;
                     }
                     
                  }
               }
            }
         }
         _loc15_ = this.§_-ki§[this.§_-ki§.length - 1];
         if(_loc15_.roving)
         {
            _loc15_.walkDir = this.units[this.currentUnit].facing;
            _loc19_;
            _loc15_.scaleX = _loc15_.walkDir;
            this.simManager.addObject(_loc15_);
            _loc18_;
            _loc19_;
            _loc19_;
            _loc18_;
            _loc19_;
            _loc18_;
            _loc18_;
            _loc16_ = SoundManager.§_-Ex§(SafeGlobal.FX_ROVER,10000,true,(this.simOnly) || (this.costumeCacheOnly));
            _loc15_.sound_uid = _loc16_;
         }
         this.§_-t6§.addChild(_loc15_);
         _loc18_;
         _loc18_;
         this.§_-ki§[this.§_-ki§.length - 1].init(this.§_-Zi§[param4]);
         _loc15_.iX = _loc15_.x = param1;
         _loc15_.iY = _loc15_.y = param2;
         _loc15_.locationPlanet = param5;
         _loc15_.locationShape = param6;
         _loc18_;
         _loc18_;
         _loc15_.locationCurve = param7;
         _loc15_.locationCurveX = param8;
         _loc18_;
         _loc18_;
         _loc15_.locationCurveY = param9;
         _loc15_.locationCurveRadius = param10;
         _loc19_;
         _loc15_.iR = param3;
         _loc18_;
         _loc15_.rotation = _loc15_.iR * 180 / this.PI;
         _loc19_;
         _loc15_.locationAngle = param11;
      }
      
      public function §_-n0§(param1:MouseEvent) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
         _loc2_;
         _loc2_;
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-n0§);
         _loc3_;
         _loc3_;
         this.§_-Vr§ = false;
      }
      
      public function §_-XE§(param1:MouseEvent) : *
      {
         var _loc67_:* = false;
         var _loc68_:* = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:Point = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:Array = null;
         var _loc11_:Array = null;
         var _loc12_:§_-yR§ = null;
         var _loc13_:Point = null;
         var _loc14_:* = 0;
         var _loc15_:* = 0;
         var _loc16_:* = 0;
         var _loc17_:* = NaN;
         var _loc18_:String = null;
         var _loc19_:* = false;
         var _loc20_:Array = null;
         var _loc21_:Point = null;
         var _loc22_:Point = null;
         var _loc23_:String = null;
         var _loc24_:String = null;
         var _loc25_:String = null;
         var _loc26_:Array = null;
         var _loc27_:Array = null;
         var _loc28_:Array = null;
         var _loc29_:* = 0;
         var _loc30_:* = 0;
         var _loc31_:* = 0;
         var _loc32_:* = 0;
         var _loc33_:* = 0;
         var _loc34_:* = 0;
         var _loc35_:* = 0;
         var _loc36_:* = 0;
         var _loc37_:* = false;
         var _loc38_:* = NaN;
         var _loc39_:* = NaN;
         var _loc40_:* = NaN;
         var _loc41_:* = NaN;
         var _loc42_:String = null;
         var _loc43_:Array = null;
         var _loc44_:* = 0;
         var _loc45_:* = 0;
         var _loc46_:* = 0;
         var _loc47_:* = 0;
         var _loc48_:* = NaN;
         var _loc49_:* = NaN;
         var _loc50_:* = NaN;
         var _loc51_:* = 0;
         var _loc52_:* = NaN;
         var _loc53_:* = NaN;
         var _loc54_:* = NaN;
         var _loc55_:* = NaN;
         var _loc56_:* = NaN;
         var _loc57_:* = NaN;
         var _loc58_:* = NaN;
         var _loc59_:* = NaN;
         var _loc60_:* = NaN;
         var _loc61_:* = NaN;
         var _loc62_:* = 0;
         var _loc63_:* = 0;
         var _loc64_:* = 0;
         var _loc65_:* = 0;
         var _loc66_:* = 0;
         if(this.myTurn)
         {
            if(this.turnState == "shoot")
            {
               this.§_-6r§();
               _loc68_;
               _loc68_;
               _loc67_;
               _loc68_;
               _loc68_;
               this.§_-dp§.splice(0);
               this.dragging = false;
               _loc68_;
               _loc68_;
               _loc68_;
               _loc2_ = this.§_-bg§.x - this.§_-0s§.x;
               _loc67_;
               _loc3_ = this.§_-bg§.y - this.§_-0s§.y;
               _loc4_ = this.units[this.currentUnit].startPoint();
               _loc68_;
               _loc68_;
               _loc67_;
               _loc5_ = _loc4_.x - this.screen.mouseX;
               _loc68_;
               _loc68_;
               _loc6_ = _loc4_.y - this.screen.mouseY;
               _loc67_;
               _loc68_;
               _loc68_;
               _loc7_ = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
               if((Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_)) >= 30)
               {
                  _loc68_;
                  _loc68_;
                  _loc68_;
                  _loc67_;
                  _loc67_;
                  _loc67_;
                  _loc68_;
                  _loc68_;
                  _loc8_ = _loc2_ * this.§_-q7§;
                  _loc68_;
                  _loc9_ = _loc3_ * this.§_-q7§;
                  _loc10_ = SafeGlobal.§_-r§(this.currentWeapon);
                  _loc11_ = _loc10_[3];
                  _loc67_;
                  _loc67_;
                  _loc67_;
                  if(this.§_-Db§[0] == SafeGlobal.WEAPONINFO_JETPACK[0])
                  {
                     _loc67_;
                     _loc67_;
                     _loc67_;
                     _loc67_;
                     _loc67_;
                     _loc13_ = this.units[this.currentUnit].startPoint();
                     this.addUnitProjectile(_loc13_.x,_loc13_.y,_loc8_,_loc9_,this.currentTime,this.units[this.currentUnit],false);
                     _loc67_;
                     _loc68_;
                     _loc67_;
                     _loc67_;
                     _loc68_;
                     _loc68_;
                     _loc67_;
                     _loc14_ = SoundManager.§_-Ex§(SafeGlobal.FX_JETPACK,10000,true,(this.simOnly) || (this.costumeCacheOnly));
                     _loc67_;
                     _loc67_;
                     _loc67_;
                     _loc67_;
                     this.projectiles[this.projectiles.length - 1].sound_uid = _loc14_;
                     _loc68_;
                     _loc68_;
                     _loc68_;
                     this.projectiles[this.projectiles.length - 1].useProjString("e,99,2",false);
                     _loc68_;
                     if(this.units[this.currentUnit].poison == 0)
                     {
                        _loc67_;
                        _loc67_;
                        _loc67_;
                        _loc67_;
                        this.units[this.currentUnit].hidePoison();
                        _loc67_;
                        _loc67_;
                     }
                     this.§_-K7§ = 1;
                     _loc67_;
                     _loc67_;
                     _loc67_;
                     _loc68_;
                     _loc68_;
                     this.projectiles[this.projectiles.length - 1].scaleX = this.units[this.currentUnit].scaleX;
                     _loc67_;
                     _loc67_;
                     this.projectiles[this.projectiles.length - 1].init(this.units[this.currentUnit].costume.spriteSheets[SafeGlobal.ANIM_UNIT_JETPACK]);
                     this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_JETPACK]);
                     this.projectiles[this.projectiles.length - 1].track = false;
                     stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-XE§);
                     _loc68_;
                     stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
                  }
                  else
                  {
                     _loc67_;
                     _loc68_;
                     _loc68_;
                     if(this.§_-Db§[0] == SafeGlobal.§_-Ny§[0])
                     {
                        _loc13_ = this.units[this.currentUnit].startPoint();
                        this.addUnitProjectile(_loc13_.x,_loc13_.y,_loc8_,_loc9_,this.currentTime,this.units[this.currentUnit],false);
                        _loc67_;
                        _loc68_;
                        _loc67_;
                        this.units[this.currentUnit].rocketGloves = true;
                        _loc68_;
                        _loc68_;
                        _loc67_;
                        _loc68_;
                        _loc68_;
                        _loc14_ = SoundManager.§_-Ex§(SafeGlobal.FX_JETPACK,10000,true,(this.simOnly) || (this.costumeCacheOnly));
                        _loc68_;
                        _loc68_;
                        _loc68_;
                        _loc67_;
                        this.projectiles[this.projectiles.length - 1].sound_uid = _loc14_;
                        _loc67_;
                        _loc68_;
                        _loc68_;
                        _loc68_;
                        this.projectiles[this.projectiles.length - 1].useProjString("e,100,2",false);
                        _loc68_;
                        _loc68_;
                        if(this.units[this.currentUnit].poison == 0)
                        {
                           _loc68_;
                           _loc68_;
                           this.units[this.currentUnit].hidePoison();
                        }
                        this.§_-cw§ = 1;
                        _loc67_;
                        _loc67_;
                        this.projectiles[this.projectiles.length - 1].scaleX = this.units[this.currentUnit].scaleX;
                        _loc67_;
                        _loc67_;
                        _loc67_;
                        _loc67_;
                        _loc67_;
                        _loc67_;
                        _loc68_;
                        this.projectiles[this.projectiles.length - 1].init(this.units[this.currentUnit].costume.spriteSheets[SafeGlobal.ANIM_UNIT_ROCKETGLOVES]);
                        _loc68_;
                        _loc68_;
                        _loc68_;
                        this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_ROCKETGLOVES]);
                        this.projectiles[this.projectiles.length - 1].track = false;
                        stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-XE§);
                        stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
                     }
                     else
                     {
                        _loc68_;
                        _loc15_ = _loc11_[0];
                        _loc16_ = _loc11_[1];
                        _loc67_;
                        _loc67_;
                        _loc17_ = Math.atan2(_loc9_,_loc8_);
                        _loc67_;
                        _loc67_;
                        _loc19_ = true;
                        _loc68_;
                        if(_loc10_[0] == SafeGlobal.WEAPONINFO_CUSTOM[0])
                        {
                           _loc68_;
                           _loc67_;
                           _loc67_;
                           _loc67_;
                           _loc67_;
                           _loc18_ = this.teams[this.units[this.currentUnit].team].customWeaponStrings[0];
                           _loc67_;
                           _loc67_;
                        }
                        else if(_loc10_[0] == SafeGlobal.WEAPONINFO_CUSTOM2[0])
                        {
                           _loc68_;
                           _loc68_;
                           _loc68_;
                           _loc68_;
                           _loc68_;
                           _loc68_;
                           _loc18_ = this.teams[this.units[this.currentUnit].team].customWeaponStrings[1];
                           _loc68_;
                        }
                        else if(_loc10_[0] == SafeGlobal.WEAPONINFO_CUSTOM3[0])
                        {
                           _loc68_;
                           _loc67_;
                           _loc67_;
                           _loc18_ = this.teams[this.units[this.currentUnit].team].customWeaponStrings[2];
                           _loc67_;
                           _loc67_;
                        }
                        else
                        {
                           _loc19_ = false;
                           _loc68_;
                           _loc67_;
                           _loc18_ = _loc10_[4];
                        }
                        
                        
                        _loc20_ = _loc18_.split("/");
                        _loc21_ = this.units[this.currentUnit].startPoint(_loc15_);
                        _loc22_ = new Point(_loc21_.x,_loc21_.y);
                        _loc68_;
                        _loc68_;
                        _loc21_.x = this.§_-yl§(_loc21_.x);
                        _loc68_;
                        _loc21_.y = this.§_-yl§(_loc21_.y);
                        _loc22_.x = _loc22_.x + Math.cos(_loc17_) * _loc16_;
                        _loc68_;
                        _loc22_.y = _loc22_.y + Math.sin(_loc17_) * _loc16_;
                        _loc22_.x = this.§_-yl§(_loc22_.x);
                        _loc22_.y = this.§_-yl§(_loc22_.y);
                        _loc68_;
                        _loc68_;
                        _loc67_;
                        _loc23_ = _loc20_[0];
                        _loc24_ = "";
                        _loc68_;
                        _loc68_;
                        _loc25_ = _loc20_[1];
                        _loc26_ = _loc25_.split(";");
                        _loc68_;
                        _loc31_ = -1;
                        _loc68_;
                        _loc67_;
                        _loc67_;
                        _loc32_ = -1;
                        _loc68_;
                        _loc33_ = -1;
                        _loc34_ = -1;
                        _loc67_;
                        _loc67_;
                        _loc67_;
                        _loc35_ = -1;
                        _loc67_;
                        _loc36_ = 0;
                        _loc37_ = false;
                        _loc68_;
                        _loc68_;
                        _loc68_;
                        _loc68_;
                        _loc68_;
                        _loc38_ = 0;
                        _loc68_;
                        _loc68_;
                        _loc39_ = 0;
                        _loc41_ = 0;
                        _loc42_ = "";
                        _loc43_ = _loc23_.split(";");
                        _loc67_;
                        _loc44_ = 0;
                        while(true)
                        {
                           _loc67_;
                           _loc67_;
                           if(_loc44_ >= _loc43_.length)
                           {
                              break;
                           }
                           _loc28_ = _loc43_[_loc44_].split(",");
                           if(_loc28_[0] == "g")
                           {
                              _loc67_;
                              _loc67_;
                              _loc30_ = int(_loc28_[1]);
                           }
                           else if(_loc28_[0] == "r")
                           {
                              _loc67_;
                              _loc31_ = int(_loc28_[1]);
                              _loc68_;
                              _loc68_;
                              _loc32_ = int(_loc28_[2]);
                              _loc68_;
                           }
                           else if(_loc28_[0] == "m")
                           {
                              _loc67_;
                              _loc68_;
                              _loc68_;
                              _loc33_ = int(_loc28_[1]);
                              _loc67_;
                              _loc67_;
                              _loc67_;
                              _loc34_ = int(_loc28_[2]);
                              _loc35_ = int(_loc28_[3]);
                           }
                           else if(_loc28_[0] == "n")
                           {
                              _loc42_ = _loc28_[1].split("*").join(" ");
                           }
                           else if(_loc28_[0] == "s")
                           {
                              _loc41_ = Number(_loc28_[1]);
                              _loc67_;
                           }
                           
                           
                           
                           
                           _loc44_++;
                        }
                        _loc68_;
                        _loc67_;
                        _loc67_;
                        if(_loc42_ != "")
                        {
                           _loc68_;
                           _loc68_;
                           this.showMessage(this.units[this.currentUnit].unitName + " used " + _loc42_,SafeGlobal.colour_hex[this.teams[this.units[this.currentUnit].team].colourID]);
                        }
                        _loc68_;
                        _loc45_ = 0;
                        _loc68_;
                        while(_loc45_ < _loc26_.length)
                        {
                           _loc27_ = _loc26_[_loc45_].split(",");
                           if(_loc27_[0] == "g")
                           {
                              _loc67_;
                              _loc67_;
                              _loc67_;
                              if(!_loc19_)
                              {
                                 _loc67_;
                                 _loc67_;
                                 _loc29_ = int(_loc10_[0]);
                                 _loc68_;
                              }
                              else
                              {
                                 _loc29_ = int(_loc27_[2]);
                              }
                           }
                           else if(_loc27_[0] == "x")
                           {
                              _loc37_ = true;
                              _loc67_;
                           }
                           
                           _loc45_++;
                        }
                        _loc68_;
                        stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-XE§);
                        stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
                        _loc68_;
                        _loc68_;
                        _loc46_ = 1;
                        _loc67_;
                        while(true)
                        {
                           _loc67_;
                           if(_loc46_ >= _loc20_.length)
                           {
                              break;
                           }
                           _loc67_;
                           _loc67_;
                           _loc68_;
                           _loc68_;
                           if(_loc46_ > 1)
                           {
                              _loc68_;
                              _loc68_;
                              _loc24_ = _loc24_ + "/";
                           }
                           _loc68_;
                           _loc24_ = _loc24_ + _loc20_[_loc46_];
                           _loc46_++;
                        }
                        SafeGlobal.§_-8N§ = String("unit.x = " + this.units[this.currentUnit].iX + ", unit.y = " + this.units[this.currentUnit].iY + " addPoint.x = " + _loc22_.x + ", addPoint.y = " + _loc22_.y);
                        if(_loc31_ != -1)
                        {
                           _loc47_ = 0;
                           _loc68_;
                           _loc68_;
                           while(true)
                           {
                              _loc68_;
                              if(_loc47_ >= _loc31_)
                              {
                                 break;
                              }
                              _loc68_;
                              _loc67_;
                              _loc67_;
                              _loc67_;
                              _loc36_ = (_loc31_ - 1) * _loc32_ * 100;
                              _loc68_;
                              _loc68_;
                              if(_loc37_)
                              {
                                 _loc67_;
                                 _loc40_ = Math.atan2(_loc9_,_loc8_);
                                 _loc68_;
                                 _loc68_;
                                 _loc68_;
                                 _loc38_ = this.§_-yl§(this.§_-9o§ * Math.cos(_loc40_));
                                 _loc67_;
                                 _loc67_;
                                 _loc39_ = this.§_-yl§(this.§_-9o§ * Math.sin(_loc40_));
                                 _loc67_;
                                 _loc67_;
                                 this.addProjectile(_loc22_.x,_loc22_.y,_loc38_,_loc39_,this.currentTime + _loc32_ * _loc47_ * 100,_loc24_,_loc19_,true);
                                 _loc68_;
                                 _loc68_;
                              }
                              else
                              {
                                 _loc67_;
                                 _loc67_;
                                 if(_loc41_ > 0)
                                 {
                                    _loc68_;
                                    _loc68_;
                                    _loc68_;
                                    _loc67_;
                                    _loc67_;
                                    _loc67_;
                                    _loc67_;
                                    _loc48_ = this.§_-yl§(_loc41_ * this.PI / 180 / 14);
                                    _loc49_ = this.§_-yl§(Math.atan2(_loc9_,_loc8_));
                                    _loc68_;
                                    _loc68_;
                                    _loc50_ = this.§_-yl§(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_));
                                    _loc67_;
                                    _loc67_;
                                    _loc68_;
                                    _loc68_;
                                    _loc67_;
                                    _loc67_;
                                    _loc68_;
                                    _loc68_;
                                    _loc51_ = int(this.§_-IF§.substr(_loc47_,1)) * 4 - 18;
                                    _loc52_ = this.§_-yl§(_loc51_ * _loc48_);
                                    _loc67_;
                                    _loc68_;
                                    _loc68_;
                                    _loc53_ = this.§_-yl§(_loc50_ * Math.cos(_loc52_ + _loc49_));
                                    _loc67_;
                                    _loc67_;
                                    _loc68_;
                                    _loc68_;
                                    _loc67_;
                                    _loc54_ = this.§_-yl§(_loc50_ * Math.sin(_loc52_ + _loc49_));
                                    this.addProjectile(_loc22_.x,_loc22_.y,_loc53_,_loc54_,this.currentTime + _loc32_ * _loc47_ * 100,_loc24_,_loc19_,true);
                                    _loc67_;
                                    this.projectiles[this.projectiles.length - 1].spin = Math.random() > 0.5?10:-10;
                                    _loc67_;
                                    this.projectiles[this.projectiles.length - 1].orientToPath = false;
                                 }
                                 else
                                 {
                                    this.addProjectile(_loc22_.x,_loc22_.y,_loc8_,_loc9_,this.currentTime + _loc32_ * _loc47_ * 100,_loc24_,_loc19_,true);
                                 }
                              }
                              _loc67_;
                              _loc68_;
                              this.projectiles[this.projectiles.length - 1].initialPlanetCheck = true;
                              _loc68_;
                              _loc68_;
                              _loc67_;
                              this.projectiles[this.projectiles.length - 1].initialPoint = _loc21_;
                              if(_loc47_ > 0)
                              {
                                 _loc68_;
                                 _loc68_;
                                 this.projectiles[this.projectiles.length - 1].visible = false;
                                 _loc68_;
                                 _loc68_;
                              }
                              _loc68_;
                              _loc68_;
                              this.projectiles[this.projectiles.length - 1].setIgnoreUnit(this.currentUnit);
                              _loc67_;
                              _loc67_;
                              if(!_loc19_)
                              {
                                 this.projectiles[this.projectiles.length - 1].init(this.projGFX[_loc29_]);
                              }
                              else
                              {
                                 _loc68_;
                                 this.projectiles[this.projectiles.length - 1].init(this.customProjectileGFX[_loc29_]);
                                 _loc67_;
                              }
                              _loc67_;
                              this.projectiles[this.projectiles.length - 1].track = true;
                              _loc47_++;
                           }
                           _loc68_;
                           _loc68_;
                        }
                        else
                        {
                           _loc67_;
                           _loc67_;
                           if(_loc33_ != -1)
                           {
                              _loc68_;
                              _loc68_;
                              _loc67_;
                              _loc55_ = _loc34_ * this.PI / 180;
                              _loc56_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
                              _loc67_;
                              _loc17_ = Math.atan2(_loc9_,_loc8_);
                              _loc68_;
                              _loc57_ = (_loc33_ - 1) * _loc55_;
                              _loc67_;
                              _loc58_ = _loc57_ / 2;
                              _loc68_;
                              _loc68_;
                              _loc62_ = 0;
                              _loc67_;
                              _loc67_;
                              _loc63_ = 0;
                              _loc67_;
                              _loc65_ = 0;
                              _loc68_;
                              while(true)
                              {
                                 _loc68_;
                                 if(_loc65_ >= _loc33_)
                                 {
                                    break;
                                 }
                                 _loc68_;
                                 _loc68_;
                                 _loc62_ = _loc62_ + (int(this.§_-IF§.substr(_loc65_,1)) + 1);
                                 _loc65_++;
                                 _loc68_;
                                 _loc68_;
                              }
                              _loc68_;
                              _loc68_;
                              _loc68_;
                              _loc66_ = 0;
                              while(_loc66_ < _loc33_)
                              {
                                 _loc68_;
                                 if(_loc35_ == 0)
                                 {
                                    _loc67_;
                                    _loc67_;
                                    _loc61_ = _loc17_ - _loc58_ + _loc66_ * _loc55_;
                                    _loc68_;
                                    _loc68_;
                                    _loc68_;
                                    _loc59_ = this.§_-yl§(_loc56_ * Math.cos(_loc61_));
                                    _loc67_;
                                    _loc67_;
                                    _loc67_;
                                    _loc68_;
                                    _loc68_;
                                    _loc60_ = this.§_-yl§(_loc56_ * Math.sin(_loc61_));
                                    _loc67_;
                                 }
                                 else
                                 {
                                    _loc68_;
                                    _loc68_;
                                    if(_loc35_ == 1)
                                    {
                                       _loc67_;
                                       _loc64_ = int(this.§_-IF§.substr(_loc66_,1)) + 1;
                                       _loc63_ = _loc63_ + _loc64_;
                                       _loc68_;
                                       _loc67_;
                                       _loc67_;
                                       _loc67_;
                                       _loc68_;
                                       _loc68_;
                                       _loc68_;
                                       _loc61_ = _loc17_ - _loc58_ + _loc57_ / _loc62_ * _loc63_;
                                       _loc67_;
                                       _loc67_;
                                       _loc68_;
                                       _loc59_ = this.§_-yl§(_loc56_ * Math.cos(_loc61_));
                                       _loc68_;
                                       _loc60_ = this.§_-yl§(_loc56_ * Math.sin(_loc61_));
                                    }
                                 }
                                 _loc67_;
                                 _loc67_;
                                 if(_loc37_)
                                 {
                                    _loc67_;
                                    _loc40_ = Math.atan2(_loc60_,_loc59_);
                                    _loc68_;
                                    _loc67_;
                                    _loc67_;
                                    _loc38_ = this.§_-yl§(this.§_-9o§ * Math.cos(_loc40_));
                                    _loc68_;
                                    _loc67_;
                                    _loc67_;
                                    _loc39_ = this.§_-yl§(this.§_-9o§ * Math.sin(_loc40_));
                                    _loc67_;
                                    this.addProjectile(_loc22_.x,_loc22_.y,_loc38_,_loc39_,this.currentTime,_loc24_,_loc19_,true);
                                 }
                                 else
                                 {
                                    this.addProjectile(_loc22_.x,_loc22_.y,_loc59_,_loc60_,this.currentTime,_loc24_,_loc19_,true);
                                 }
                                 _loc67_;
                                 this.projectiles[this.projectiles.length - 1].initialPlanetCheck = true;
                                 _loc67_;
                                 _loc67_;
                                 _loc67_;
                                 _loc67_;
                                 this.projectiles[this.projectiles.length - 1].initialPoint = _loc21_;
                                 _loc68_;
                                 _loc67_;
                                 _loc67_;
                                 _loc68_;
                                 _loc68_;
                                 _loc68_;
                                 this.projectiles[this.projectiles.length - 1].setIgnoreUnit(this.currentUnit);
                                 _loc68_;
                                 if(!_loc19_)
                                 {
                                    _loc68_;
                                    _loc68_;
                                    _loc67_;
                                    _loc67_;
                                    _loc67_;
                                    this.projectiles[this.projectiles.length - 1].init(this.projGFX[_loc29_]);
                                 }
                                 else
                                 {
                                    this.projectiles[this.projectiles.length - 1].init(this.customProjectileGFX[_loc29_]);
                                    _loc67_;
                                    _loc67_;
                                 }
                                 _loc67_;
                                 _loc67_;
                                 this.projectiles[this.projectiles.length - 1].track = true;
                                 _loc68_;
                                 _loc66_++;
                                 _loc68_;
                                 _loc68_;
                              }
                           }
                           else
                           {
                              _loc68_;
                              if(_loc37_)
                              {
                                 _loc68_;
                                 _loc68_;
                                 _loc40_ = Math.atan2(_loc9_,_loc8_);
                                 _loc68_;
                                 _loc38_ = this.§_-yl§(this.§_-9o§ * Math.cos(_loc40_));
                                 _loc67_;
                                 _loc67_;
                                 _loc39_ = this.§_-yl§(this.§_-9o§ * Math.sin(_loc40_));
                                 this.addProjectile(_loc22_.x,_loc22_.y,_loc38_,_loc39_,this.currentTime,_loc24_,_loc19_,true);
                              }
                              else
                              {
                                 this.addProjectile(_loc22_.x,_loc22_.y,_loc8_,_loc9_,this.currentTime,_loc24_,_loc19_,true);
                              }
                              _loc67_;
                              _loc68_;
                              _loc68_;
                              this.projectiles[this.projectiles.length - 1].initialPlanetCheck = true;
                              _loc68_;
                              this.projectiles[this.projectiles.length - 1].initialPoint = _loc21_;
                              _loc68_;
                              _loc68_;
                              _loc67_;
                              _loc67_;
                              this.projectiles[this.projectiles.length - 1].setIgnoreUnit(this.currentUnit);
                              _loc67_;
                              if(!_loc19_)
                              {
                                 _loc67_;
                                 _loc68_;
                                 this.projectiles[this.projectiles.length - 1].init(this.projGFX[_loc29_]);
                                 _loc67_;
                                 _loc67_;
                              }
                              else
                              {
                                 this.projectiles[this.projectiles.length - 1].init(this.customProjectileGFX[_loc29_]);
                                 _loc68_;
                                 _loc68_;
                              }
                              this.projectiles[this.projectiles.length - 1].track = true;
                           }
                        }
                        _loc67_;
                        _loc67_;
                        if(this.§_-Db§[0] == SafeGlobal.WEAPONINFO_GRAVITEEBALL[0])
                        {
                           _loc68_;
                           this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_GOLFSWING,SafeGlobal.ANIM_UNIT_BOB]);
                           _loc68_;
                           this.projectiles[this.projectiles.length - 1].orientToPath = false;
                        }
                        else
                        {
                           _loc68_;
                           _loc12_ = new §_-yR§(SafeGlobal.SIMEVENT_PROJAIMSTOP,this.currentTime + 200 + _loc36_,new Object());
                           _loc68_;
                           _loc68_;
                           this.simManager.addObject(_loc12_);
                           _loc67_;
                           _loc67_;
                           this.addEffect(SafeGlobal.EFFECTS_BAZOOKAFLASH,_loc22_.x,_loc22_.y,int(_loc17_ * 180 / this.PI));
                        }
                     }
                  }
                  this.simManager.§_-pW§("PROJ DRAG STOP");
                  _loc67_;
                  _loc67_;
                  this.§_-Zj§ = 0;
                  _loc67_;
                  _loc67_;
                  _loc67_;
                  _loc67_;
                  _loc68_;
                  _loc68_;
                  _loc68_;
                  if(this.§_-Db§[0] == SafeGlobal.WEAPONINFO_JETPACK[0] || this.§_-Db§[0] == SafeGlobal.§_-Ny§[0])
                  {
                     _loc12_ = new §_-yR§(SafeGlobal.SIMEVENT_ENDTURN,this.currentTime,null);
                     _loc68_;
                     _loc68_;
                  }
                  else
                  {
                     _loc67_;
                     _loc67_;
                     _loc12_ = new §_-yR§(SafeGlobal.SIMEVENT_ENDTURN,this.currentTime + this.§_-QA§ + _loc36_,null);
                  }
                  _loc67_;
                  _loc67_;
                  this.simManager.addObject(_loc12_);
                  this.sendFireProjectile(this.currentTime,this.currentWeapon,_loc8_,_loc9_);
                  this.§_-Tw§();
                  this.turnState = "retreat";
                  this.§_-tO§();
                  _loc67_;
                  _loc67_;
                  _loc67_;
                  _loc67_;
                  this.§_-N7§[this.currentUnit].makeUnselected();
                  this.§_-tg§();
                  this.§_-v9§ = this.currentTime;
                  this.§_-Yi§.startRetreat(this.currentTime,_loc36_);
                  _loc67_;
                  this.simManager.startRetreat(this.currentTime,_loc36_);
                  _loc67_;
                  this.§_-XG§ = this.currentTime + _loc36_;
               }
               else
               {
                  this.§_-o7§();
               }
            }
            else
            {
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-XE§);
               _loc67_;
               stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
               _loc67_;
               _loc67_;
               this.dragging = false;
               _loc68_;
               this.§_-6M§(this.§_-GD§);
            }
            this.units[this.currentUnit].doFlip(this.units[this.currentUnit].facing * -1);
         }
      }
      
      public function §_-VF§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
         _loc2_;
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-sh§);
         _loc1_;
         _loc1_;
         stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
         _loc1_;
         _loc1_;
         this.§_-VK§(this.units[this.currentUnit]);
      }
      
      public function §_-o7§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
         _loc2_;
         _loc2_;
         this.§_-6M§(this.§_-GD§);
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-XE§);
         _loc2_;
         _loc2_;
         stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
         this.§_-VK§(this.units[this.currentUnit]);
         this.units[this.currentUnit].doFlip(this.units[this.currentUnit].facing * -1);
         _loc1_;
         this.onCancelShot();
      }
      
      public function §_-WK§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
         _loc1_;
         _loc1_;
         this.§_-6M§(this.§_-GD§);
         _loc1_;
         _loc1_;
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-KU§);
         _loc1_;
         stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
         _loc2_;
         this.§_-VK§(this.units[this.currentUnit]);
      }
      
      public function §_-Y9§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
         _loc2_;
         _loc2_;
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-iD§);
         _loc2_;
         stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
         _loc1_;
         _loc1_;
         this.§_-VK§(this.units[this.currentUnit]);
      }
      
      public function §_-sx§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-DK§);
         _loc2_;
         stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
         if(this.screen.contains(this.§_-7c§))
         {
            this.screen.removeChild(this.§_-7c§);
         }
         this.§_-VK§(this.units[this.currentUnit]);
      }
      
      public function §_-uw§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.incomingDragStop);
         stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
         this.screen.removeChild(this.§_-kI§);
         _loc2_;
         _loc2_;
         this.camera.removeTarget(this.§_-kI§);
         _loc2_;
         _loc2_;
         this.camera.addTarget(this.units[this.currentUnit],-1,"escincomingDragStop");
         _loc2_;
         this.§_-GD§ = SafeGlobal.CLEANUP_NONE;
         this.§_-VK§(this.units[this.currentUnit]);
      }
      
      public function §_-x9§() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
         _loc3_;
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-7a§);
         _loc3_;
         _loc3_;
         stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
         _loc2_;
         _loc1_ = this.gates.length - 1;
         while(_loc1_ >= 0)
         {
            if(this.gates[_loc1_].placing)
            {
               _loc2_;
               _loc2_;
               this.removeGate(this.gates[_loc1_]);
               _loc2_;
               _loc2_;
            }
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            _loc1_--;
            _loc3_;
         }
         _loc3_;
         this.§_-VK§(this.units[this.currentUnit]);
      }
      
      public function §_-Wt§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
         _loc2_;
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-Tm§);
         _loc1_;
         stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
         _loc1_;
         _loc1_;
         this.§_-VK§(this.units[this.currentUnit]);
      }
      
      public function §_-KU§(param1:MouseEvent) : *
      {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:Point = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Unit = null;
         var _loc9_:§_-yR§ = null;
         _loc10_;
         _loc10_;
         if(this.myTurn)
         {
            _loc10_;
            _loc10_;
            if(this.turnState == "shoot")
            {
               _loc10_;
               this.dragging = false;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc2_ = this.§_-bg§.x - this.§_-0s§.x;
               _loc11_;
               _loc3_ = this.§_-bg§.y - this.§_-0s§.y;
               _loc11_;
               _loc11_;
               _loc4_ = this.units[this.currentUnit].startPoint();
               _loc10_;
               _loc10_;
               _loc10_;
               _loc5_ = _loc4_.x - this.screen.mouseX;
               _loc11_;
               _loc11_;
               _loc10_;
               _loc6_ = _loc4_.y - this.screen.mouseY;
               _loc10_;
               _loc11_;
               _loc7_ = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
               if(_loc7_ >= 30)
               {
                  _loc10_;
                  _loc10_;
                  this.sendLayMine(this.currentTime,this.currentWeapon);
                  _loc10_;
                  _loc10_;
                  this.§_-Tw§();
                  _loc10_;
                  _loc8_ = this.units[this.currentUnit];
                  _loc11_;
                  this.addMineAtPoint(_loc8_.iX,_loc8_.iY,_loc8_.iR,this.§_-Db§[2],_loc8_.locationPlanet,_loc8_.locationShape,_loc8_.locationCurve,_loc8_.locationCurveX,_loc8_.locationCurveY,_loc8_.locationCurveRadius,_loc8_.locationAngle,_loc8_,this.currentTime,false);
                  _loc10_;
                  _loc10_;
                  this.§_-cQ§ = 1;
                  stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-KU§);
                  stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
                  this.turnState = "retreat";
                  _loc10_;
                  this.§_-tO§();
                  this.§_-N7§[this.currentUnit].makeUnselected();
                  this.§_-tg§();
                  this.simManager.§_-pW§("MINEDRAGSTOP");
                  this.§_-Zj§ = 0;
                  _loc9_ = new §_-yR§(SafeGlobal.SIMEVENT_ENDTURN,this.currentTime + this.§_-QA§,null);
                  _loc10_;
                  _loc10_;
                  _loc10_;
                  this.simManager.addObject(_loc9_);
                  _loc10_;
                  _loc10_;
                  this.§_-v9§ = this.currentTime;
                  _loc10_;
                  _loc10_;
                  this.§_-Yi§.startRetreat(this.currentTime);
                  _loc10_;
                  this.simManager.startRetreat(this.currentTime);
                  _loc11_;
               }
               else
               {
                  this.§_-WK§();
               }
               this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
            }
            else
            {
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-KU§);
               _loc10_;
               stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
               this.dragging = false;
               this.§_-6M§(this.§_-GD§);
            }
         }
      }
      
      public function §_-sh§(param1:MouseEvent) : *
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:Point = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:§_-yR§ = null;
         _loc9_;
         if(this.myTurn)
         {
            _loc10_;
            _loc10_;
            _loc9_;
            _loc9_;
            _loc9_;
            _loc2_ = this.§_-bg§.x - this.§_-0s§.x;
            _loc9_;
            _loc9_;
            _loc3_ = this.§_-bg§.y - this.§_-0s§.y;
            _loc4_ = this.units[this.currentUnit].startPoint();
            _loc9_;
            _loc9_;
            _loc10_;
            _loc10_;
            _loc5_ = _loc4_.x - this.screen.mouseX;
            _loc10_;
            _loc10_;
            _loc9_;
            _loc9_;
            _loc10_;
            _loc6_ = _loc4_.y - this.screen.mouseY;
            _loc9_;
            _loc7_ = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
            if(_loc7_ >= 30)
            {
               if(this.turnState == "shoot")
               {
                  this.dragging = false;
                  _loc9_;
                  _loc9_;
                  this.§_-Tw§();
                  _loc9_;
                  _loc9_;
                  stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-sh§);
                  _loc10_;
                  _loc10_;
                  stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
                  _loc10_;
                  this.turnState = "end";
                  this.§_-tO§();
                  _loc10_;
                  _loc9_;
                  this.§_-N7§[this.currentUnit].makeUnselected();
                  this.simManager.§_-pW§("SKIPDRAGSTOP");
                  _loc9_;
                  _loc9_;
                  this.§_-FQ§ = 1;
                  _loc9_;
                  _loc8_ = new §_-yR§(SafeGlobal.SIMEVENT_ENDTURN,this.currentTime,null);
                  _loc9_;
                  this.simManager.addObject(_loc8_);
                  _loc9_;
                  this.sendFireProjectile(this.currentTime,-1,0,0);
                  _loc10_;
                  this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_SLEEP,SafeGlobal.ANIM_UNIT_SLEEP,SafeGlobal.ANIM_UNIT_BOB]);
               }
               else
               {
                  stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-sh§);
                  stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
                  this.dragging = false;
                  _loc9_;
               }
            }
            else
            {
               this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
               this.dragging = false;
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-sh§);
               stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
               this.§_-VK§(this.units[this.currentUnit]);
            }
         }
      }
      
      public function doPlanetBumps(param1:Projectile, param2:Boolean = false) : *
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc3_:* = 0;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         _loc8_;
         _loc3_ = 0;
         while(_loc3_ < this.planets.length)
         {
            _loc7_;
            _loc7_;
            _loc8_;
            _loc8_;
            _loc4_ = param1.iX - this.planets[_loc3_].x;
            _loc8_;
            _loc8_;
            _loc7_;
            _loc7_;
            _loc8_;
            _loc5_ = param1.iY - this.planets[_loc3_].y;
            _loc8_;
            _loc8_;
            _loc7_;
            _loc7_;
            _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            if(_loc6_ <= 7 + this.planets[_loc3_].radius)
            {
               _loc8_;
               this.planets[_loc3_].placeBump(param1,param2);
               _loc8_;
            }
            _loc3_++;
            _loc7_;
            _loc7_;
         }
      }
      
      public function §_-6M§(param1:int) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1 == SafeGlobal.CLEANUP_PROJECTILE)
         {
            _loc2_;
            _loc2_;
            this.§_-QY§();
            this.§_-6r§();
            this.§_-dp§.splice(0);
            if(this.units[this.currentUnit].walkDir == 0)
            {
               _loc2_;
               _loc2_;
               this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
            }
         }
         else
         {
            _loc3_;
            _loc3_;
            if(param1 == SafeGlobal.CLEANUP_INCOMING)
            {
               _loc2_;
               this.dragging = false;
               _loc3_;
               _loc3_;
               this.screen.removeChild(this.§_-kI§);
               _loc2_;
               this.camera.removeTarget(this.§_-kI§);
               _loc2_;
               this.camera.addTarget(this.units[this.currentUnit],-1,"incomingDragStop");
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.incomingDragStop);
               stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
            }
            else if(param1 == SafeGlobal.CLEANUP_MINE)
            {
               this.dragging = false;
               _loc3_;
               this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
               _loc2_;
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-KU§);
               _loc3_;
               _loc3_;
               stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
               _loc2_;
            }
            else if(param1 == SafeGlobal.CLEANUP_TELEPORT)
            {
               _loc2_;
               _loc2_;
               this.dragging = false;
               this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
               if(this.screen.contains(this.§_-7c§))
               {
                  _loc2_;
                  _loc2_;
                  this.screen.removeChild(this.§_-7c§);
                  _loc2_;
                  _loc2_;
               }
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-DK§);
               _loc2_;
               stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
               _loc3_;
               _loc3_;
            }
            else
            {
               _loc3_;
               _loc3_;
               if(param1 == SafeGlobal.CLEANUP_GATE)
               {
                  this.dragging = false;
                  _loc2_;
                  this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
                  _loc2_;
                  stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-7a§);
                  _loc2_;
                  _loc2_;
                  stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
                  _loc3_;
                  _loc3_;
               }
               else if(param1 == SafeGlobal.CLEANUP_PLANETGATE)
               {
                  this.dragging = false;
                  _loc3_;
                  _loc3_;
                  this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
                  _loc3_;
                  _loc3_;
                  stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-Tm§);
                  _loc2_;
                  _loc2_;
                  stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
               }
               else if(param1 == SafeGlobal.CLEANUP_MELEE)
               {
                  this.dragging = false;
                  this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
                  stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-iD§);
                  _loc3_;
                  _loc3_;
                  stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
               }
               
               
            }
            
            
         }
         this.§_-GD§ = SafeGlobal.CLEANUP_NONE;
      }
      
      public function §_-WO§() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         _loc3_;
         _loc3_;
         _loc1_ = 0;
         while(_loc1_ < this.units.length)
         {
            this.units[_loc1_].ignoreRocketGloves = false;
            _loc3_;
            _loc3_;
            _loc1_++;
            _loc2_;
            _loc2_;
         }
      }
      
      public function §_-DK§(param1:MouseEvent) : *
      {
         var _loc37_:* = true;
         var _loc38_:* = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:Point = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = 0;
         var _loc15_:* = 0;
         var _loc16_:* = 0;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:Point = null;
         var _loc20_:Array = null;
         var _loc21_:Planet = null;
         var _loc22_:Shape = null;
         var _loc23_:§_-pb§ = null;
         var _loc24_:Point = null;
         var _loc25_:Point = null;
         var _loc26_:Array = null;
         var _loc27_:* = 0;
         var _loc28_:* = 0;
         var _loc29_:* = 0;
         var _loc30_:Unit = null;
         var _loc31_:* = false;
         var _loc32_:§_-yR§ = null;
         var _loc33_:* = 0;
         var _loc34_:* = 0;
         var _loc35_:* = NaN;
         var _loc36_:* = NaN;
         _loc37_;
         if(this.myTurn)
         {
            _loc37_;
            if(this.turnState == "shoot")
            {
               _loc38_;
               _loc38_;
               this.dragging = false;
               _loc38_;
               _loc38_;
               _loc37_;
               _loc2_ = this.screen.mouseX - this.§_-0s§.x;
               _loc38_;
               _loc3_ = this.screen.mouseY - this.§_-0s§.y;
               _loc4_ = this.units[this.currentUnit].startPoint();
               _loc37_;
               _loc37_;
               _loc5_ = _loc4_.x - this.screen.mouseX;
               _loc38_;
               _loc37_;
               _loc37_;
               _loc6_ = _loc4_.y - this.screen.mouseY;
               _loc37_;
               _loc37_;
               _loc38_;
               _loc38_;
               _loc7_ = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
               if(_loc7_ >= 30)
               {
                  _loc38_;
                  _loc37_;
                  _loc37_;
                  _loc37_;
                  if(this.units[this.currentUnit].animState != SafeGlobal.ANIM_UNIT_TABLET)
                  {
                     _loc38_;
                     this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_TABLET]);
                     _loc37_;
                     _loc37_;
                  }
                  _loc13_ = 1.0E15;
                  _loc19_ = new Point(0,0);
                  _loc24_ = new Point(0,0);
                  _loc25_ = new Point(0,0);
                  _loc26_ = [];
                  _loc38_;
                  _loc38_;
                  _loc27_ = 0;
                  while(true)
                  {
                     _loc37_;
                     _loc37_;
                     if(_loc27_ >= this.planets.length)
                     {
                        break;
                     }
                     _loc38_;
                     _loc38_;
                     _loc38_;
                     _loc38_;
                     _loc21_ = this.planets[_loc27_];
                     _loc38_;
                     _loc37_;
                     _loc37_;
                     if(!_loc21_.sun && !_loc21_.blackHole)
                     {
                        _loc38_;
                        _loc38_;
                        _loc38_;
                        _loc33_ = 0;
                        _loc38_;
                        _loc38_;
                        while(_loc33_ < _loc21_.shapes.length)
                        {
                           _loc22_ = this.planets[_loc27_].shapes[_loc33_];
                           _loc37_;
                           _loc37_;
                           _loc37_;
                           _loc34_ = 0;
                           _loc38_;
                           _loc38_;
                           while(_loc34_ < _loc22_.curves.length)
                           {
                              _loc23_ = _loc22_.curves[_loc34_];
                              _loc37_;
                              _loc37_;
                              _loc11_ = _loc23_.x - this.screen.mouseX;
                              _loc37_;
                              _loc37_;
                              _loc12_ = _loc23_.y - this.screen.mouseY;
                              _loc37_;
                              _loc37_;
                              _loc37_;
                              _loc35_ = this.§_-yl§(this.§_-2T§(Math.atan2(_loc12_,_loc11_)));
                              _loc37_;
                              _loc36_ = this.§_-yl§(this.§_-2T§(_loc35_ + this.PI));
                              if(this.§_-7L§(_loc35_,_loc23_.startAngle,_loc23_.endAngle))
                              {
                                 _loc38_;
                                 _loc38_;
                                 _loc26_.push([_loc27_,_loc33_,_loc34_,_loc35_]);
                              }
                              else
                              {
                                 _loc26_.push([_loc27_,_loc33_,_loc34_,_loc23_.startAngle]);
                                 _loc26_.push([_loc27_,_loc33_,_loc34_,_loc23_.endAngle]);
                                 _loc37_;
                              }
                              if(this.§_-7L§(_loc36_,_loc23_.startAngle,_loc23_.endAngle))
                              {
                                 _loc38_;
                                 _loc26_.push([_loc27_,_loc33_,_loc34_,_loc36_]);
                                 _loc37_;
                              }
                              else
                              {
                                 _loc26_.push([_loc27_,_loc33_,_loc34_,_loc23_.startAngle]);
                                 _loc38_;
                                 _loc26_.push([_loc27_,_loc33_,_loc34_,_loc23_.endAngle]);
                              }
                              _loc34_++;
                           }
                           _loc37_;
                           _loc37_;
                           _loc33_++;
                        }
                        _loc37_;
                        _loc37_;
                     }
                     _loc27_++;
                  }
                  _loc37_;
                  _loc29_ = 0;
                  while(true)
                  {
                     _loc38_;
                     _loc38_;
                     if(_loc29_ >= _loc26_.length)
                     {
                        break;
                     }
                     _loc38_;
                     _loc19_ = this.planets[_loc26_[_loc29_][0]].shapes[_loc26_[_loc29_][1]].curves[_loc26_[_loc29_][2]].curvePos(_loc26_[_loc29_][3]);
                     _loc38_;
                     _loc37_;
                     _loc8_ = this.screen.mouseX - _loc19_.x;
                     _loc9_ = this.screen.mouseY - _loc19_.y;
                     _loc38_;
                     _loc38_;
                     _loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
                     if((Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) < _loc13_)
                     {
                        _loc13_ = _loc10_;
                        _loc38_;
                        _loc37_;
                        _loc28_ = _loc29_;
                        _loc37_;
                        _loc37_;
                     }
                     _loc29_++;
                  }
                  _loc37_;
                  _loc14_ = _loc26_[_loc28_][0];
                  _loc37_;
                  _loc37_;
                  _loc15_ = _loc26_[_loc28_][1];
                  _loc16_ = _loc26_[_loc28_][2];
                  _loc17_ = int(_loc26_[_loc28_][3] * 100000);
                  _loc37_;
                  this.sendTeleportTo(this.currentTime,this.currentWeapon,_loc14_,_loc15_,_loc16_,_loc17_);
                  this.§_-Tw§();
                  _loc30_ = this.units[this.currentUnit];
                  this.addEffect(SafeGlobal.EFFECTS_TELEPORTOUT,_loc30_.iX,_loc30_.iY,_loc30_.rotation,_loc30_);
                  _loc38_;
                  _loc31_ = false;
                  if(this.currentWeapon == SafeGlobal.§_-7S§[0])
                  {
                     _loc31_ = true;
                  }
                  this.teleportTo(this.currentTime,_loc30_,_loc14_,_loc15_,_loc16_,_loc17_,_loc31_);
                  this.turnState = "retreat";
                  _loc37_;
                  this.§_-N7§[this.currentUnit].makeUnselected();
                  this.§_-tg§();
                  this.simManager.§_-pW§("TELEDRAGSTOP");
                  _loc37_;
                  _loc37_;
                  this.§_-Zj§ = 0;
                  _loc32_ = new §_-yR§(SafeGlobal.SIMEVENT_ENDTURN,this.currentTime + 20,null);
                  _loc37_;
                  this.simManager.addObject(_loc32_);
                  _loc38_;
                  _loc38_;
                  this.§_-v9§ = this.currentTime;
                  _loc38_;
                  this.§_-Yi§.startRetreat(this.currentTime - this.§_-QA§);
                  _loc37_;
                  this.simManager.startRetreat(this.currentTime - this.§_-QA§);
               }
               else
               {
                  this.§_-VK§(this.units[this.currentUnit]);
               }
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-DK§);
               _loc37_;
               _loc37_;
               stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
               if(this.screen.contains(this.§_-7c§))
               {
                  this.screen.removeChild(this.§_-7c§);
               }
            }
            else
            {
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-DK§);
               _loc38_;
               stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
               _loc37_;
               _loc37_;
               this.dragging = false;
               _loc37_;
               _loc37_;
               this.§_-6M§(this.§_-GD§);
            }
         }
      }
      
      public function incomingDragStop(param1:MouseEvent) : *
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = 0;
         var _loc6_:Unit = null;
         var _loc7_:§_-yR§ = null;
         if(this.myTurn)
         {
            if(this.turnState == "shoot")
            {
               _loc9_;
               this.dragging = false;
               _loc9_;
               this.screen.removeChild(this.§_-kI§);
               _loc8_;
               _loc8_;
               _loc8_;
               this.camera.removeTarget(this.§_-kI§);
               this.camera.addTarget(this.units[this.currentUnit],-1,"incomingDragStop");
               this.§_-GD§ = SafeGlobal.CLEANUP_NONE;
               _loc9_;
               _loc8_;
               _loc8_;
               _loc2_ = mouseX - 400;
               _loc8_;
               _loc8_;
               _loc9_;
               _loc8_;
               _loc8_;
               _loc3_ = mouseY - 300;
               _loc4_ = Math.atan2(_loc3_,_loc2_);
               _loc5_ = Math.round(_loc4_ * 180 / this.PI);
               this.sendIncoming(this.currentTime,this.currentWeapon,_loc5_);
               _loc9_;
               _loc9_;
               this.§_-Tw§();
               _loc6_ = this.units[this.currentUnit];
               this.incoming(this.currentTime,this.currentWeapon,_loc5_);
               _loc8_;
               _loc8_;
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.incomingDragStop);
               stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
               _loc8_;
               _loc8_;
               this.turnState = "retreat";
               this.§_-N7§[this.currentUnit].makeUnselected();
               this.§_-tg§();
               _loc8_;
               this.simManager.§_-pW§("INCOMINGDRAGSTOP");
               _loc8_;
               this.§_-Zj§ = 0;
               _loc7_ = new §_-yR§(SafeGlobal.SIMEVENT_ENDTURN,this.currentTime + this.§_-QA§,null);
               _loc8_;
               _loc8_;
               this.simManager.addObject(_loc7_);
               _loc8_;
               _loc8_;
               this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
               _loc9_;
               _loc9_;
               this.§_-v9§ = this.currentTime;
               _loc9_;
               this.§_-Yi§.startRetreat(this.currentTime);
               _loc9_;
               _loc9_;
               this.simManager.startRetreat(this.currentTime);
            }
            else
            {
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.incomingDragStop);
               _loc9_;
               _loc9_;
               stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
               _loc8_;
               _loc8_;
               this.dragging = false;
               _loc9_;
               _loc9_;
               this.§_-6M§(this.§_-GD§);
            }
         }
      }
      
      public function §_-iD§(param1:MouseEvent) : *
      {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:Point = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Unit = null;
         var _loc9_:§_-yR§ = null;
         _loc11_;
         _loc11_;
         if(this.myTurn)
         {
            _loc10_;
            if(this.turnState == "shoot")
            {
               this.dragging = false;
               _loc10_;
               _loc11_;
               _loc11_;
               _loc10_;
               _loc2_ = this.screen.mouseX - this.§_-0s§.x;
               _loc3_ = this.screen.mouseY - this.§_-0s§.y;
               _loc4_ = this.units[this.currentUnit].startPoint();
               _loc10_;
               _loc11_;
               _loc5_ = _loc4_.x - this.screen.mouseX;
               _loc10_;
               _loc10_;
               _loc6_ = _loc4_.y - this.screen.mouseY;
               _loc10_;
               _loc11_;
               _loc11_;
               _loc7_ = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
               if(_loc7_ >= 30)
               {
                  _loc10_;
                  _loc10_;
                  this.sendMelee(this.currentTime,this.currentWeapon);
                  _loc10_;
                  this.§_-Tw§();
                  _loc8_ = this.units[this.currentUnit];
                  this.melee(this.currentTime,this.currentWeapon);
                  this.turnState = "retreat";
                  this.§_-N7§[this.currentUnit].makeUnselected();
                  _loc11_;
                  _loc11_;
                  this.§_-tg§();
                  this.simManager.§_-pW§("MELEEDRAGSTOP");
                  this.§_-Zj§ = 0;
                  _loc9_ = new §_-yR§(SafeGlobal.SIMEVENT_ENDTURN,this.currentTime + this.§_-QA§,null);
                  _loc10_;
                  _loc10_;
                  _loc11_;
                  this.simManager.addObject(_loc9_);
                  _loc11_;
                  this.§_-v9§ = this.currentTime;
                  _loc10_;
                  this.§_-Yi§.startRetreat(this.currentTime);
                  _loc10_;
                  this.simManager.startRetreat(this.currentTime);
               }
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-iD§);
               stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
            }
            else
            {
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-iD§);
               stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
               this.dragging = false;
               this.§_-6M§(this.§_-GD§);
            }
         }
      }
      
      public function melee(param1:int, param2:int) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         if(param2 == SafeGlobal.WEAPONINFO_SPACEBALLBAT[0])
         {
            this.§_-Uf§(param1);
            _loc4_;
         }
         else
         {
            _loc4_;
            _loc3_;
            _loc3_;
            if(param2 == SafeGlobal.WEAPONINFO_TAZER[0])
            {
               this.§_-vC§(param1);
               _loc4_;
            }
            else
            {
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               if(param2 == SafeGlobal.WEAPONINFO_FIREPUNCH[0])
               {
                  _loc3_;
                  this.§_-Np§(param1);
                  _loc3_;
               }
               else if(param2 == SafeGlobal.§_-na§[0])
               {
                  this.§_-qj§(param1);
               }
               
            }
         }
      }
      
      public function §_-Uf§(param1:int) : *
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc2_:Array = null;
         var _loc3_:Point = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         _loc7_;
         this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_SPACEBALLSWING,SafeGlobal.ANIM_UNIT_BOB]);
         _loc2_ = this.§_-OZ§(this.units[this.currentUnit]);
         _loc8_;
         _loc8_;
         if(_loc2_.length > 0)
         {
            _loc7_;
            _loc7_;
            _loc6_ = 0;
            while(_loc6_ < _loc2_.length)
            {
               _loc3_ = _loc2_[_loc6_].startPoint();
               _loc7_;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc4_ = this.units[this.currentUnit].facing * 800 * Math.cos(this.units[this.currentUnit].iR - this.PI / 8 * this.units[this.currentUnit].facing);
               _loc7_;
               _loc7_;
               _loc8_;
               _loc5_ = this.units[this.currentUnit].facing * 800 * Math.sin(this.units[this.currentUnit].iR - this.PI / 8 * this.units[this.currentUnit].facing);
               _loc8_;
               _loc8_;
               this.addUnitProjectile(_loc3_.x,_loc3_.y,_loc4_,_loc5_,param1,_loc2_[_loc6_],true);
               _loc7_;
               _loc7_;
               if(_loc2_[_loc6_].poison == 0)
               {
                  _loc8_;
                  _loc8_;
                  _loc2_[_loc6_].hidePoison();
               }
               _loc2_[_loc6_].hideMe();
               _loc2_[_loc6_].takeDamage(SafeGlobal.MELEEDAMAGE_SPACEBALLBAT);
               if(_loc2_[_loc6_].health > 0)
               {
                  _loc8_;
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  this.projectiles[this.projectiles.length - 1].init(_loc2_[_loc6_].costume.spriteSheets[SafeGlobal.ANIM_UNIT_FLYING]);
                  _loc2_[_loc6_].newAnimState([SafeGlobal.ANIM_UNIT_FLYING]);
               }
               else
               {
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  _loc8_;
                  _loc8_;
                  this.projectiles[this.projectiles.length - 1].init(_loc2_[_loc6_].costume.spriteSheets[SafeGlobal.ANIM_UNIT_FLYINGDEAD]);
                  _loc8_;
                  _loc2_[_loc6_].newAnimState([SafeGlobal.ANIM_UNIT_FLYINGDEAD]);
                  _loc8_;
                  _loc8_;
                  _loc7_;
                  _loc7_;
                  _loc8_;
                  _loc8_;
                  this.projectiles[this.projectiles.length - 1].orientToPath = false;
                  _loc7_;
                  _loc7_;
                  this.projectiles[this.projectiles.length - 1].spin = 4;
                  _loc7_;
                  _loc2_[_loc6_].fire = false;
               }
               _loc6_++;
            }
            _loc7_;
            _loc7_;
            _loc8_;
            _loc8_;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc7_;
            SoundManager.§_-wF§(SafeGlobal.FX_PUNCH,(this.simOnly) || (this.costumeCacheOnly));
         }
      }
      
      public function §_-vC§(param1:int) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Array = null;
         var _loc3_:* = 0;
         _loc4_;
         _loc4_;
         this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_TAZERJAB,SafeGlobal.ANIM_UNIT_BOB]);
         _loc2_ = this.§_-OZ§(this.units[this.currentUnit]);
         _loc5_;
         _loc5_;
         if(_loc2_.length > 0)
         {
            _loc4_;
            _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               _loc2_[_loc3_].newAnimState([SafeGlobal.ANIM_UNIT_TAZED,SafeGlobal.ANIM_UNIT_BOB]);
               _loc2_[_loc3_].takeDamage(SafeGlobal.MELEEDAMAGE_TAZER);
               if(_loc2_[_loc3_].health <= 0)
               {
                  _loc4_;
                  _loc4_;
                  SafeGlobal.GAME.addEffect(SafeGlobal.§_-5o§,_loc2_[_loc3_].x,_loc2_[_loc3_].y,_loc2_[_loc3_].rotation,_loc2_[_loc3_]);
                  _loc5_;
                  this.removeUnit(_loc2_[_loc3_]);
                  this.updateTeamHealths();
                  _loc5_;
               }
               _loc3_++;
            }
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            SoundManager.§_-wF§(SafeGlobal.FX_ELECTROCUTE,(this.simOnly) || (this.costumeCacheOnly));
         }
      }
      
      public function §_-qj§(param1:int) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Array = null;
         var _loc3_:* = 0;
         _loc5_;
         this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_ENERGYSWORD,SafeGlobal.ANIM_UNIT_BOB]);
         _loc2_ = this.§_-OZ§(this.units[this.currentUnit]);
         _loc5_;
         _loc5_;
         if(_loc2_.length > 0)
         {
            _loc5_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               _loc2_[_loc3_].newAnimState([SafeGlobal.ANIM_UNIT_TAZED,SafeGlobal.ANIM_UNIT_BOB]);
               _loc4_;
               _loc2_[_loc3_].takeDamage(SafeGlobal.§_-ud§);
               if(_loc2_[_loc3_].health <= 0)
               {
                  SafeGlobal.GAME.addEffect(SafeGlobal.§_-5o§,_loc2_[_loc3_].x,_loc2_[_loc3_].y,_loc2_[_loc3_].rotation,_loc2_[_loc3_]);
                  this.removeUnit(_loc2_[_loc3_]);
                  this.updateTeamHealths();
                  _loc5_;
                  _loc5_;
               }
               _loc3_++;
            }
            _loc5_;
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            SoundManager.§_-wF§(SafeGlobal.FX_ELECTROCUTE,(this.simOnly) || (this.costumeCacheOnly));
         }
      }
      
      public function §_-Np§(param1:int) : *
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc2_:Array = null;
         var _loc3_:Point = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         _loc8_;
         _loc8_;
         this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_UPPERCUT,SafeGlobal.ANIM_UNIT_BOB]);
         _loc2_ = this.§_-OZ§(this.units[this.currentUnit]);
         _loc8_;
         if(_loc2_.length > 0)
         {
            _loc8_;
            _loc6_ = 0;
            while(_loc6_ < _loc2_.length)
            {
               _loc3_ = _loc2_[_loc6_].startPoint();
               _loc7_;
               _loc7_;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc7_;
               _loc8_;
               _loc4_ = this.units[this.currentUnit].facing * 400 * Math.cos(this.units[this.currentUnit].iR - this.PI / 4 * this.units[this.currentUnit].facing);
               _loc8_;
               _loc7_;
               _loc8_;
               _loc5_ = this.units[this.currentUnit].facing * 400 * Math.sin(this.units[this.currentUnit].iR - this.PI / 4 * this.units[this.currentUnit].facing);
               _loc7_;
               this.addUnitProjectile(_loc3_.x,_loc3_.y,_loc4_,_loc5_,param1,_loc2_[_loc6_],true);
               _loc7_;
               _loc8_;
               _loc8_;
               _loc7_;
               this.projectiles[this.projectiles.length - 1].init(_loc2_[_loc6_].costume.spriteSheets[SafeGlobal.ANIM_UNIT_FLYING]);
               _loc2_[_loc6_].newAnimState([SafeGlobal.ANIM_UNIT_FLYING]);
               _loc7_;
               _loc8_;
               _loc8_;
               this.projectiles[this.projectiles.length - 1].animStep = -1;
               _loc7_;
               _loc7_;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc8_;
               this.projectiles[this.projectiles.length - 1].unit.newAnimState([SafeGlobal.ANIM_UNIT_FLYING]);
               _loc7_;
               _loc7_;
               _loc7_;
               _loc8_;
               _loc8_;
               this.projectiles[this.projectiles.length - 1].setupEmittors(SafeGlobal.TRAILTYPE_NONE,[]);
               _loc8_;
               _loc8_;
               this.projectiles[this.projectiles.length - 1].showFire();
               if(_loc2_[_loc6_].poison == 0)
               {
                  _loc2_[_loc6_].hidePoison();
               }
               _loc2_[_loc6_].hideMe();
               _loc2_[_loc6_].takeDamage(SafeGlobal.MELEEDAMAGE_FIREPUNCH);
               _loc2_[_loc6_].fire = true;
               _loc8_;
               _loc8_;
               _loc2_[_loc6_].fireCount = 0;
               _loc6_++;
            }
            _loc8_;
            _loc8_;
            _loc8_;
            _loc7_;
            _loc7_;
            SoundManager.§_-wF§(SafeGlobal.FX_PUNCH,(this.simOnly) || (this.costumeCacheOnly));
         }
      }
      
      public function §_-OZ§(param1:Unit) : *
      {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc2_:Point = null;
         var _loc3_:Point = null;
         var _loc4_:Point = null;
         var _loc5_:Point = null;
         var _loc6_:Array = null;
         var _loc7_:* = 0;
         var _loc8_:* = undefined;
         _loc2_ = param1.§_-Fb§();
         _loc3_ = new Point(_loc2_.x + param1.facing * 40 * Math.cos(param1.iR),_loc2_.y + param1.facing * 40 * Math.sin(param1.iR));
         _loc6_ = [];
         _loc10_;
         _loc10_;
         _loc7_ = 0;
         while(_loc7_ < this.units.length)
         {
            _loc9_;
            _loc9_;
            _loc9_;
            _loc9_;
            _loc9_;
            _loc9_;
            if(!(this.units[_loc7_] == param1) && !this.units[_loc7_].dead)
            {
               _loc10_;
               _loc4_ = new Point(this.units[_loc7_].iX,this.units[_loc7_].iY);
               _loc5_ = this.units[_loc7_].topPoint();
               _loc8_ = this.§_-sW§(_loc2_,_loc3_,_loc4_,_loc5_);
               if(_loc8_)
               {
                  _loc10_;
                  _loc10_;
                  _loc6_.push(this.units[_loc7_]);
               }
            }
            _loc7_++;
            _loc10_;
         }
         return _loc6_;
      }
      
      public function incoming(param1:int, param2:int, param3:int) : *
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc8_;
         _loc8_;
         _loc4_ = param3 * this.PI / 180;
         _loc8_;
         _loc5_ = this.§_-yl§(100 * Math.cos(_loc4_ + this.PI));
         _loc6_ = this.§_-yl§(100 * Math.sin(_loc4_ + this.PI));
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         if(param2 == SafeGlobal.WEAPONINFO_METEORSTRIKE[0])
         {
            _loc7_;
            this.addMeteors(SafeGlobal.INCOMINGINFO_METEORSTRIKE,_loc5_,_loc6_,param1,param3);
         }
         else
         {
            _loc7_;
            _loc7_;
            _loc7_;
            _loc8_;
            _loc8_;
            if(param2 == SafeGlobal.WEAPONINFO_METEORSHOWER[0])
            {
               this.addMeteors(SafeGlobal.INCOMINGINFO_METEORSHOWER,_loc5_,_loc6_,param1,param3);
               _loc8_;
               _loc8_;
            }
            else
            {
               _loc8_;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc8_;
               if(param2 == SafeGlobal.WEAPONINFO_METEORSTORM[0])
               {
                  _loc7_;
                  _loc7_;
                  this.addMeteors(SafeGlobal.INCOMINGINFO_METEORSTORM,_loc5_,_loc6_,param1,param3);
                  _loc8_;
                  _loc8_;
               }
               else if(param2 == SafeGlobal.§_-5U§[0])
               {
                  _loc8_;
                  this.addMeteors(SafeGlobal.§_-iF§,_loc5_,_loc6_,param1,param3);
               }
               
            }
         }
      }
      
      public function addMeteors(param1:Array, param2:Number, param3:Number, param4:int, param5:int) : *
      {
         var _loc30_:* = true;
         var _loc31_:* = false;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = 0;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:Array = null;
         var _loc24_:* = 0;
         var _loc25_:* = 0;
         var _loc26_:* = 0;
         var _loc27_:* = NaN;
         var _loc28_:* = 0;
         var _loc29_:* = 0;
         _loc30_;
         _loc30_;
         _loc31_;
         _loc30_;
         _loc30_;
         _loc6_ = param1[0];
         _loc30_;
         _loc30_;
         _loc31_;
         _loc31_;
         _loc7_ = param1[1];
         _loc30_;
         _loc31_;
         _loc31_;
         _loc31_;
         _loc31_;
         _loc8_ = param1[2];
         _loc31_;
         _loc31_;
         _loc30_;
         _loc30_;
         _loc30_;
         _loc9_ = param1[3];
         _loc31_;
         _loc31_;
         _loc31_;
         _loc31_;
         _loc31_;
         _loc10_ = param1[4];
         _loc30_;
         _loc30_;
         _loc11_ = param1[5];
         _loc14_ = 0;
         _loc23_ = [];
         _loc30_;
         _loc30_;
         _loc24_ = 0;
         while(true)
         {
            _loc30_;
            _loc30_;
            _loc31_;
            if(_loc24_ >= _loc8_)
            {
               break;
            }
            _loc12_ = Number(this.§_-IF§.substr(_loc14_,1));
            _loc31_;
            _loc31_;
            _loc31_;
            _loc31_;
            _loc30_;
            _loc30_;
            _loc30_;
            _loc30_;
            _loc30_;
            _loc15_ = this.§_-yl§(_loc12_ * 0.11 * _loc6_);
            _loc14_++;
            _loc13_ = Number(this.§_-IF§.substr(_loc14_,1));
            _loc30_;
            _loc30_;
            _loc31_;
            _loc31_;
            _loc31_;
            _loc31_;
            _loc16_ = this.§_-yl§(_loc13_ * 0.11 * _loc7_);
            _loc14_++;
            _loc31_;
            _loc31_;
            _loc31_;
            _loc31_;
            _loc17_ = _loc15_ - _loc6_ / 2;
            _loc30_;
            _loc31_;
            _loc30_;
            _loc30_;
            _loc18_ = _loc16_ - _loc7_ / 2;
            _loc31_;
            _loc31_;
            _loc30_;
            _loc21_ = this.§_-yl§(Math.atan2(_loc18_,_loc17_));
            _loc31_;
            _loc31_;
            _loc30_;
            _loc30_;
            _loc22_ = this.§_-yl§(Math.sqrt(_loc17_ * _loc17_ + _loc18_ * _loc18_));
            _loc30_;
            _loc23_.push([_loc21_,_loc22_,SafeGlobal.PROJTYPE_METEORSMALL]);
            _loc31_;
            _loc31_;
            _loc24_++;
         }
         _loc31_;
         _loc31_;
         _loc30_;
         _loc30_;
         _loc25_ = 0;
         _loc31_;
         while(true)
         {
            _loc31_;
            _loc30_;
            _loc30_;
            if(_loc25_ >= _loc9_)
            {
               break;
            }
            _loc31_;
            _loc31_;
            _loc12_ = Number(this.§_-IF§.substr(_loc14_,1));
            _loc30_;
            _loc30_;
            _loc30_;
            _loc31_;
            _loc15_ = this.§_-yl§(_loc12_ * 0.11 * _loc6_);
            _loc14_++;
            _loc30_;
            _loc13_ = Number(this.§_-IF§.substr(_loc14_,1));
            _loc30_;
            _loc31_;
            _loc31_;
            _loc31_;
            _loc30_;
            _loc30_;
            _loc16_ = this.§_-yl§(_loc13_ * 0.11 * _loc7_);
            _loc14_++;
            _loc31_;
            _loc31_;
            _loc30_;
            _loc31_;
            _loc30_;
            _loc30_;
            _loc17_ = _loc15_ - _loc6_ / 2;
            _loc31_;
            _loc31_;
            _loc30_;
            _loc30_;
            _loc31_;
            _loc30_;
            _loc30_;
            _loc18_ = _loc16_ - _loc7_ / 2;
            _loc30_;
            _loc21_ = this.§_-yl§(Math.atan2(_loc18_,_loc17_));
            _loc30_;
            _loc30_;
            _loc30_;
            _loc22_ = this.§_-yl§(Math.sqrt(_loc17_ * _loc17_ + _loc18_ * _loc18_));
            _loc23_.push([_loc21_,_loc22_,SafeGlobal.PROJTYPE_METEORMEDIUM]);
            _loc25_++;
            _loc30_;
         }
         _loc26_ = 0;
         _loc30_;
         while(true)
         {
            _loc31_;
            _loc31_;
            if(_loc26_ >= _loc10_)
            {
               break;
            }
            _loc31_;
            _loc31_;
            _loc12_ = Number(this.§_-IF§.substr(_loc14_,1));
            _loc31_;
            _loc31_;
            _loc31_;
            _loc30_;
            _loc30_;
            _loc31_;
            _loc31_;
            _loc15_ = this.§_-yl§(_loc12_ * 0.11 * _loc6_);
            _loc31_;
            _loc31_;
            _loc14_++;
            _loc13_ = Number(this.§_-IF§.substr(_loc14_,1));
            _loc30_;
            _loc30_;
            _loc31_;
            _loc31_;
            _loc30_;
            _loc16_ = this.§_-yl§(_loc13_ * 0.11 * _loc7_);
            _loc30_;
            _loc14_++;
            _loc31_;
            _loc31_;
            _loc31_;
            _loc31_;
            _loc17_ = _loc15_ - _loc6_ / 2;
            _loc30_;
            _loc31_;
            _loc31_;
            _loc30_;
            _loc30_;
            _loc31_;
            _loc18_ = _loc16_ - _loc7_ / 2;
            _loc21_ = this.§_-yl§(Math.atan2(_loc18_,_loc17_));
            _loc31_;
            _loc22_ = this.§_-yl§(Math.sqrt(_loc17_ * _loc17_ + _loc18_ * _loc18_));
            _loc23_.push([_loc21_,_loc22_,SafeGlobal.PROJTYPE_METEORLARGE]);
            _loc26_++;
         }
         _loc31_;
         _loc31_;
         _loc25_ = 0;
         _loc31_;
         while(_loc25_ < _loc11_)
         {
            _loc30_;
            _loc30_;
            _loc12_ = Number(this.§_-IF§.substr(_loc14_,1));
            _loc31_;
            _loc31_;
            _loc30_;
            _loc31_;
            _loc15_ = this.§_-yl§(_loc12_ * 0.11 * _loc6_);
            _loc14_++;
            _loc30_;
            _loc30_;
            _loc13_ = Number(this.§_-IF§.substr(_loc14_,1));
            _loc30_;
            _loc31_;
            _loc30_;
            _loc30_;
            _loc30_;
            _loc16_ = this.§_-yl§(_loc13_ * 0.11 * _loc7_);
            _loc14_++;
            _loc31_;
            _loc31_;
            _loc30_;
            _loc30_;
            _loc31_;
            _loc31_;
            _loc17_ = _loc15_ - _loc6_ / 2;
            _loc30_;
            _loc30_;
            _loc30_;
            _loc18_ = _loc16_ - _loc7_ / 2;
            _loc31_;
            _loc31_;
            _loc21_ = this.§_-yl§(Math.atan2(_loc18_,_loc17_));
            _loc31_;
            _loc31_;
            _loc22_ = this.§_-yl§(Math.sqrt(_loc17_ * _loc17_ + _loc18_ * _loc18_));
            _loc31_;
            _loc31_;
            _loc23_.push([_loc21_,_loc22_,SafeGlobal.PROJTYPE_MINE]);
            _loc31_;
            _loc25_++;
            _loc31_;
         }
         _loc31_;
         _loc31_;
         _loc30_;
         _loc30_;
         _loc27_ = this.§_-yl§(param5 * this.PI / 180);
         _loc31_;
         _loc28_ = 0;
         _loc31_;
         _loc31_;
         while(_loc28_ < _loc23_.length)
         {
            _loc30_;
            _loc30_;
            _loc30_;
            _loc31_;
            _loc31_;
            _loc19_ = this.§_-yl§(Math.cos(_loc23_[_loc28_][0] + _loc27_) * _loc23_[_loc28_][1] + (this.§_-3O§ + 250) * Math.cos(_loc27_) + this.§_-Bf§.x);
            _loc30_;
            _loc30_;
            _loc31_;
            _loc31_;
            _loc30_;
            _loc30_;
            _loc30_;
            _loc20_ = this.§_-yl§(Math.sin(_loc23_[_loc28_][0] + _loc27_) * _loc23_[_loc28_][1] + (this.§_-3O§ + 250) * Math.sin(_loc27_) + this.§_-Bf§.y);
            _loc30_;
            _loc30_;
            _loc29_ = 3000;
            _loc30_;
            if((this.replay) || (this.simOnly))
            {
            }
            if(_loc23_[_loc28_][2] == SafeGlobal.PROJTYPE_METEORSMALL)
            {
               _loc30_;
               this.addProjectile(_loc19_,_loc20_,param2,param3,param4 + _loc29_,"g,30;e,96,4;d,2,2",false,false);
               _loc30_;
               _loc30_;
               this.projectiles[this.projectiles.length - 1].radius = 10;
               _loc31_;
               _loc31_;
               this.projectiles[this.projectiles.length - 1].visible = false;
            }
            else if(_loc23_[_loc28_][2] == SafeGlobal.PROJTYPE_METEORMEDIUM)
            {
               this.addProjectile(_loc19_,_loc20_,param2,param3,param4 + _loc29_,"g,35;e,97,5;d,3,4",false,false);
               _loc30_;
               _loc30_;
               _loc31_;
               _loc31_;
               _loc30_;
               _loc30_;
               this.projectiles[this.projectiles.length - 1].radius = 15;
               _loc30_;
               this.projectiles[this.projectiles.length - 1].visible = false;
               _loc30_;
               _loc30_;
            }
            else if(_loc23_[_loc28_][2] == SafeGlobal.PROJTYPE_METEORLARGE)
            {
               this.addProjectile(_loc19_,_loc20_,param2,param3,param4 + _loc29_,"g,36;e,98,6;d,4,6",false,false);
               _loc31_;
               _loc31_;
               _loc31_;
               _loc31_;
               this.projectiles[this.projectiles.length - 1].radius = 20;
               _loc30_;
               _loc30_;
               _loc31_;
               _loc31_;
               this.projectiles[this.projectiles.length - 1].visible = false;
            }
            else if(_loc23_[_loc28_][2] == SafeGlobal.PROJTYPE_MINE)
            {
               this.§_-ki§.push(new §_-gf§(-1,0));
               _loc30_;
               if(!this.simOnly && !this.costumeCacheOnly)
               {
                  this.§_-t6§.addChild(this.§_-ki§[this.§_-ki§.length - 1]);
                  this.§_-ki§[this.§_-ki§.length - 1].init(this.§_-Zi§[0]);
               }
               this.§_-ki§[this.§_-ki§.length - 1].iX = _loc19_;
               _loc30_;
               _loc30_;
               _loc30_;
               _loc30_;
               _loc30_;
               this.§_-ki§[this.§_-ki§.length - 1].iY = _loc20_;
               _loc30_;
               _loc30_;
               this.addMineProjectile(_loc19_,_loc20_,param2,param3,param4 + _loc29_,this.§_-ki§[this.§_-ki§.length - 1]);
               _loc30_;
               _loc31_;
               this.projectiles[this.projectiles.length - 1].init(this.projGFX[SafeGlobal.WEAPONINFO_MINE[0]]);
               _loc31_;
               _loc30_;
               _loc31_;
               this.projectiles[this.projectiles.length - 1].visible = false;
               this.projectiles[this.projectiles.length - 1].spin = 3 + 2 * Math.random();
               _loc30_;
               _loc30_;
               this.projectiles[this.projectiles.length - 1].rotation = 360 * Math.random();
            }
            
            
            
            _loc28_++;
            _loc30_;
            _loc30_;
         }
      }
      
      public function teleportTo(param1:int, param2:Unit, param3:int, param4:int, param5:int, param6:int, param7:Boolean = false) : *
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc8_:* = NaN;
         _loc8_ = this.§_-yl§(param6 / 100000);
         if(param2.poison == 0)
         {
            _loc9_;
            param2.hidePoison();
         }
         _loc9_;
         if(param7)
         {
            _loc10_;
            _loc10_;
            this.addMineAtPoint(param2.iX,param2.iY,param2.iR,SafeGlobal.MINETYPE_STANDARD,param2.locationPlanet,param2.locationShape,param2.locationCurve,param2.locationCurveX,param2.locationCurveY,param2.locationCurveRadius,param2.locationAngle,param2,param1,false);
            this.§_-cQ§ = 1;
         }
         param2.locationPlanet = param3;
         param2.locationShape = param4;
         param2.locationCurve = param5;
         _loc10_;
         param2.locationAngle = _loc8_;
         param2.locationCurveX = this.planets[param2.locationPlanet].shapes[param2.locationShape].curves[param2.locationCurve].x;
         _loc10_;
         param2.locationCurveY = this.planets[param2.locationPlanet].shapes[param2.locationShape].curves[param2.locationCurve].y;
         param2.locationCurveRadius = this.planets[param2.locationPlanet].shapes[param2.locationShape].curves[param2.locationCurve].radius;
         param2.onJoin = false;
         _loc9_;
         _loc10_;
         if(this.planets[param3].radioactive > 0)
         {
            _loc10_;
            param2.showPoison();
         }
         _loc9_;
         _loc10_;
         _loc10_;
         _loc10_;
         SoundManager.§_-wF§(SafeGlobal.FX_TELEPORT,(this.simOnly) || (this.costumeCacheOnly));
         if(param7)
         {
            this.checkUnitProximity(this.§_-ki§[this.§_-ki§.length - 1],param1);
            _loc10_;
         }
         this.§_-Ue§ = 1;
         param2.newAnimState([SafeGlobal.ANIM_UNIT_TELEPORTIN,SafeGlobal.ANIM_UNIT_BOB]);
         if(this.planets[param2.locationPlanet].shapes[param2.locationShape].curves[param2.locationCurve].origCurve)
         {
            param2.iR = this.§_-yl§(this.§_-2T§(param2.locationAngle + this.PI / 2));
         }
         else
         {
            param2.iR = this.§_-yl§(this.§_-2T§(param2.locationAngle - this.PI / 2));
            _loc9_;
            _loc9_;
         }
         this.§_-e8§(param2);
         this.checkMineProximity(param2,param1);
         this.checkPowerUpProximity(param2,param1);
      }
      
      public function removeStock(param1:int) : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         _loc5_;
         if(param1 > 0)
         {
            _loc6_;
            _loc6_;
            _loc6_;
            _loc5_;
            _loc5_;
            this.stock[param1]--;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc5_;
            _loc5_;
            if(this.stock[param1] < 0)
            {
               _loc6_;
               _loc6_;
               this.stock[param1] = 0;
            }
         }
      }
      
      public function §_-e8§(param1:SimObject) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:§_-pb§ = null;
         _loc2_ = this.planets[param1.locationPlanet].shapes[param1.locationShape].curves[param1.locationCurve];
         _loc3_;
         _loc3_;
         _loc3_;
         param1.iX = this.§_-yl§(_loc2_.x + _loc2_.radius * Math.cos(param1.locationAngle));
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         param1.iY = this.§_-yl§(_loc2_.y + _loc2_.radius * Math.sin(param1.locationAngle));
         param1.x = param1.iX;
         param1.y = param1.iY;
         _loc4_;
         _loc4_;
         _loc3_;
         param1.rotation = param1.iR * 180 / this.PI;
         param1.updatePoints();
      }
      
      public function §_-7a§(param1:MouseEvent) : *
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc2_:Gate = null;
         var _loc3_:Unit = null;
         var _loc4_:* = 0;
         var _loc5_:§_-yR§ = null;
         _loc9_;
         _loc9_;
         if(this.myTurn)
         {
            _loc9_;
            _loc9_;
            if(this.turnState == "shoot")
            {
               _loc2_ = this.gates[this.gates.length - 1];
               _loc3_ = this.units[this.currentUnit];
               this.dragging = false;
               _loc2_.§_-Mv§(_loc2_.iX,_loc2_.iY,_loc2_.iR);
               _loc9_;
               _loc9_;
               _loc2_.placing = false;
               this.§_-Tw§();
               _loc9_;
               _loc9_;
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-7a§);
               _loc8_;
               _loc8_;
               stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
               _loc9_;
               _loc9_;
               _loc9_;
               this.§_-F4§--;
               _loc8_;
               this.§_-m6§.push(new Array(_loc2_.iX,_loc2_.iY,_loc2_.iR));
               _loc8_;
               if(this.§_-F4§ <= 0)
               {
                  _loc9_;
                  this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
                  _loc9_;
                  _loc9_;
                  _loc9_;
                  if(this.§_-m6§.length == 1)
                  {
                     _loc9_;
                     _loc9_;
                     this.sendPlaceGate(this.currentTime,this.currentWeapon,this.§_-m6§[0][0],this.§_-m6§[0][1],this.§_-m6§[0][2]);
                     _loc8_;
                     _loc8_;
                  }
                  else
                  {
                     _loc9_;
                     _loc9_;
                     if(this.§_-m6§.length == 2)
                     {
                        this.sendPlaceGate(this.currentTime,this.currentWeapon,this.§_-m6§[0][0],this.§_-m6§[0][1],this.§_-m6§[0][2],this.§_-m6§[1][0],this.§_-m6§[1][1],this.§_-m6§[1][2]);
                        _loc8_;
                        _loc8_;
                        _loc9_;
                        _loc9_;
                        _loc9_;
                        this.gates[this.gates.length - 1].pair = this.gates[this.gates.length - 2];
                        this.gates[this.gates.length - 2].pair = this.gates[this.gates.length - 1];
                        _loc8_;
                        _loc8_;
                     }
                  }
                  _loc4_ = 0;
                  while(_loc4_ < this.§_-m6§.length)
                  {
                     _loc8_;
                     _loc8_;
                     _loc8_;
                     this.§_-m6§.splice(0,1);
                     _loc4_++;
                     _loc9_;
                     _loc9_;
                  }
                  this.turnState = "retreat";
                  this.§_-N7§[this.currentUnit].makeUnselected();
                  _loc8_;
                  this.§_-tg§();
                  this.simManager.§_-pW§("GATEDRAGSTOP");
                  _loc9_;
                  this.§_-Zj§ = 0;
                  _loc9_;
                  _loc9_;
                  _loc5_ = new §_-yR§(SafeGlobal.SIMEVENT_ENDTURN,this.currentTime + this.§_-QA§ - this.timeStep,null);
                  _loc9_;
                  _loc9_;
                  this.simManager.addObject(_loc5_);
                  _loc9_;
                  this.§_-v9§ = this.currentTime;
                  _loc8_;
                  _loc8_;
                  this.§_-Yi§.startRetreat(this.currentTime);
                  _loc9_;
                  _loc9_;
                  this.simManager.startRetreat(this.currentTime);
               }
            }
            else
            {
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-7a§);
               _loc8_;
               _loc8_;
               stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
               _loc8_;
               this.dragging = false;
               _loc8_;
               this.§_-6M§(this.§_-GD§);
            }
         }
      }
      
      public function §_-Tm§(param1:MouseEvent) : *
      {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:Point = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Unit = null;
         var _loc9_:§_-yR§ = null;
         if(this.myTurn)
         {
            if(this.turnState == "shoot")
            {
               this.dragging = false;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc2_ = this.screen.mouseX - this.§_-0s§.x;
               _loc3_ = this.screen.mouseY - this.§_-0s§.y;
               _loc4_ = this.units[this.currentUnit].startPoint();
               _loc10_;
               _loc10_;
               _loc11_;
               _loc11_;
               _loc5_ = _loc4_.x - this.screen.mouseX;
               _loc11_;
               _loc11_;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc6_ = _loc4_.y - this.screen.mouseY;
               _loc11_;
               _loc11_;
               _loc10_;
               _loc10_;
               _loc7_ = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
               if(_loc7_ >= 30)
               {
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  _loc8_ = this.units[this.currentUnit];
                  _loc11_;
                  _loc10_;
                  if(this.§_-Db§[0] == SafeGlobal.§_-es§[0])
                  {
                     _loc11_;
                     _loc11_;
                     _loc11_;
                     _loc11_;
                     this.planets[_loc8_.locationPlanet].activateShield(3,true,true);
                  }
                  else
                  {
                     _loc11_;
                     this.planets[_loc8_.locationPlanet].activateShield(3,false,true);
                     _loc11_;
                     _loc11_;
                  }
                  this.dynamic = 1;
                  this.sendPlacePlanetGate(this.currentTime,this.currentWeapon);
                  _loc11_;
                  this.§_-Tw§();
                  this.turnState = "retreat";
                  this.§_-N7§[this.currentUnit].makeUnselected();
                  this.§_-tg§();
                  this.simManager.§_-pW§("PLANETGATEDRAGSTOP");
                  _loc11_;
                  this.§_-Zj§ = 0;
                  _loc11_;
                  _loc11_;
                  _loc9_ = new §_-yR§(SafeGlobal.SIMEVENT_ENDTURN,this.currentTime + this.§_-QA§ - this.timeStep,null);
                  _loc10_;
                  _loc10_;
                  _loc10_;
                  _loc10_;
                  this.simManager.addObject(_loc9_);
                  _loc10_;
                  this.§_-v9§ = this.currentTime;
                  _loc10_;
                  _loc10_;
                  this.§_-Yi§.startRetreat(this.currentTime);
                  _loc10_;
                  this.simManager.startRetreat(this.currentTime);
               }
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-Tm§);
               _loc11_;
               _loc11_;
               stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
               _loc11_;
               _loc11_;
               this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
            }
            else
            {
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-Tm§);
               _loc11_;
               stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
               this.dragging = false;
               _loc11_;
               _loc11_;
               this.§_-6M§(this.§_-GD§);
            }
         }
      }
      
      public function §_-QY§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         if(this.§_-gK§)
         {
            _loc2_;
            if(this.§_-12§.contains(this.§_-gK§))
            {
               _loc1_;
               this.§_-12§.removeChild(this.§_-gK§);
            }
         }
      }
      
      public function §_-Nm§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         if(!(this.§_-gK§ == null) && !this.§_-12§.contains(this.§_-gK§))
         {
            _loc1_;
            this.§_-12§.addChild(this.§_-gK§);
         }
      }
      
      public function jiggleUnits(param1:Planet, param2:int) : *
      {
         var _loc13_:* = true;
         var _loc14_:* = false;
         var _loc3_:Unit = null;
         var _loc4_:Mine = null;
         var _loc5_:Shape = null;
         var _loc6_:§_-pb§ = null;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = false;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:Point = null;
         _loc14_;
         _loc14_;
         _loc7_ = 0;
         while(true)
         {
            _loc14_;
            _loc14_;
            _loc13_;
            if(_loc7_ >= this.units.length)
            {
               break;
            }
            _loc14_;
            _loc13_;
            _loc14_;
            _loc14_;
            if(!this.units[_loc7_].hidden && !this.units[_loc7_].removed && !this.units[_loc7_].dead)
            {
               _loc9_ = false;
               _loc13_;
               _loc13_;
               _loc13_;
               _loc13_;
               _loc13_;
               _loc3_ = this.units[_loc7_];
               _loc13_;
               _loc14_;
               if(this.planets[_loc3_.locationPlanet] == param1)
               {
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  _loc10_ = 0;
                  _loc13_;
                  while(_loc10_ < param1.shapes.length)
                  {
                     _loc5_ = param1.shapes[_loc10_];
                     _loc14_;
                     _loc14_;
                     _loc13_;
                     _loc13_;
                     _loc11_ = 0;
                     _loc13_;
                     _loc13_;
                     while(_loc11_ < _loc5_.curves.length)
                     {
                        _loc6_ = _loc5_.curves[_loc11_];
                        _loc13_;
                        _loc13_;
                        _loc14_;
                        _loc14_;
                        _loc13_;
                        _loc14_;
                        _loc14_;
                        if(_loc3_.locationCurveX == _loc6_.x && _loc3_.locationCurveY == _loc6_.y && _loc3_.locationCurveRadius == _loc6_.radius && (this.§_-7L§(_loc3_.locationAngle,_loc6_.startAngle,_loc6_.endAngle)))
                        {
                           if(_loc3_.locationShape == _loc10_)
                           {
                              _loc14_;
                              _loc14_;
                           }
                           else if(_loc3_.locationCurve == _loc11_)
                           {
                              _loc14_;
                           }
                           
                           _loc3_.locationCurve = _loc11_;
                           _loc3_.locationShape = _loc10_;
                           _loc9_ = true;
                           _loc13_;
                        }
                        else
                        {
                           _loc14_;
                           _loc14_;
                           if(_loc3_.locationCurveX == _loc6_.x && _loc3_.locationCurveY == _loc6_.y && _loc3_.locationCurveRadius == _loc6_.radius)
                           {
                           }
                        }
                        _loc11_++;
                     }
                     _loc13_;
                     _loc10_++;
                  }
                  _loc13_;
                  _loc13_;
                  if(!_loc9_)
                  {
                     _loc12_ = _loc3_.startPoint();
                     _loc13_;
                     this.§_-Az§(_loc12_.x,_loc12_.y,0,0,10,15,param2);
                  }
               }
            }
            _loc7_++;
            _loc14_;
         }
         _loc13_;
         _loc13_;
         _loc8_ = 0;
         _loc13_;
         _loc13_;
         while(_loc8_ < this.§_-ki§.length)
         {
            _loc14_;
            _loc14_;
            _loc14_;
            if(this.§_-ki§[_loc8_].roving)
            {
               _loc14_;
               _loc14_;
               _loc9_ = false;
               _loc4_ = this.§_-ki§[_loc8_];
               _loc14_;
               _loc14_;
               _loc14_;
               if(this.planets[_loc4_.locationPlanet] == param1)
               {
                  _loc14_;
                  _loc13_;
                  _loc13_;
                  _loc10_ = 0;
                  _loc13_;
                  _loc13_;
                  while(_loc10_ < param1.shapes.length)
                  {
                     _loc5_ = param1.shapes[_loc10_];
                     _loc13_;
                     _loc14_;
                     _loc14_;
                     _loc11_ = 0;
                     _loc13_;
                     _loc13_;
                     while(_loc11_ < _loc5_.curves.length)
                     {
                        _loc6_ = _loc5_.curves[_loc11_];
                        _loc13_;
                        _loc13_;
                        _loc13_;
                        _loc14_;
                        _loc14_;
                        if(_loc4_.locationCurveX == _loc6_.x && _loc4_.locationCurveY == _loc6_.y && _loc4_.locationCurveRadius == _loc6_.radius && (this.§_-7L§(_loc4_.locationAngle,_loc6_.startAngle,_loc6_.endAngle)))
                        {
                           if(_loc4_.locationShape != _loc10_)
                           {
                              if(_loc4_.locationCurve == _loc11_)
                              {
                              }
                           }
                           _loc4_.locationCurve = _loc11_;
                           _loc13_;
                           _loc4_.locationShape = _loc10_;
                           _loc14_;
                           _loc9_ = true;
                        }
                        else
                        {
                           _loc13_;
                           _loc13_;
                           _loc14_;
                           if(_loc4_.locationCurveX == _loc6_.x && _loc4_.locationCurveY == _loc6_.y && _loc4_.locationCurveRadius == _loc6_.radius)
                           {
                           }
                        }
                        _loc11_++;
                     }
                     _loc14_;
                     _loc14_;
                     _loc10_++;
                  }
                  _loc13_;
                  if(!_loc9_)
                  {
                     _loc14_;
                     _loc4_.triggerMe(param2,20);
                  }
               }
            }
            _loc8_++;
         }
      }
      
      public function §_-7L§(param1:Number, param2:Number, param3:Number) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         if(param2 == param3)
         {
            return true;
         }
         if(param3 < param2)
         {
            _loc4_;
            _loc4_;
            _loc5_;
            var param3:Number = this.§_-yl§(param3 + this.PI * 2);
         }
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(param1 >= param2 && param1 <= param3 || param1 + this.PI * 2 >= param2 && param1 + this.PI * 2 <= param3)
         {
            _loc4_;
            return true;
         }
         return false;
      }
      
      public function showSkillShot(param1:int, param2:Number, param3:Number) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.§_-6M§(this.§_-GD§);
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(!this.simOnly && !this.costumeCacheOnly)
         {
            _loc5_;
            _loc5_;
            _loc4_;
            if(param1 == SafeGlobal.SKILLMARKER_LONGSHOT)
            {
               _loc4_;
               _loc4_;
               this.§_-9T§.push(new §_-I7§(param2,param3));
            }
            else if(param1 == SafeGlobal.SKILLMARKER_SUPERLONGSHOT)
            {
               _loc5_;
               _loc5_;
               this.§_-9T§.push(new §_-Wo§(param2,param3));
            }
            else
            {
               _loc5_;
               if(param1 == SafeGlobal.SKILLMARKER_ULTRALONGSHOT)
               {
                  _loc5_;
                  _loc5_;
                  this.§_-9T§.push(new §_-ux§(param2,param3));
                  _loc5_;
                  _loc5_;
               }
               else
               {
                  _loc5_;
                  _loc5_;
                  if(param1 == SafeGlobal.SKILLMARKER_MEGALONGSHOT)
                  {
                     _loc4_;
                     _loc5_;
                     this.§_-9T§.push(new §_-Ws§(param2,param3));
                     _loc5_;
                     _loc5_;
                  }
                  else
                  {
                     _loc5_;
                     if(param1 == SafeGlobal.SKILLMARKER_HALFORBIT)
                     {
                        _loc4_;
                        this.§_-9T§.push(new §_-Hn§(param2,param3));
                     }
                     else if(param1 == SafeGlobal.SKILLMARKER_FULLORBIT)
                     {
                        _loc4_;
                        _loc5_;
                        _loc5_;
                        this.§_-9T§.push(new §_-J2§(param2,param3));
                        _loc5_;
                        _loc5_;
                     }
                     else if(param1 == SafeGlobal.SKILLMARKER_BOUNCE)
                     {
                        _loc5_;
                        _loc4_;
                        this.§_-9T§.push(new §_-0b§(param2,param3));
                        _loc4_;
                     }
                     else
                     {
                        _loc4_;
                        _loc4_;
                        if(param1 == SafeGlobal.SKILLMARKER_SUPERBOUNCE)
                        {
                           _loc4_;
                           this.§_-9T§.push(new §_-jb§(param2,param3));
                           _loc5_;
                        }
                        else
                        {
                           _loc4_;
                           if(param1 == SafeGlobal.SKILLMARKER_ULTRABOUNCE)
                           {
                              this.§_-9T§.push(new §_-il§(param2,param3));
                           }
                           else
                           {
                              _loc5_;
                              _loc5_;
                              _loc5_;
                              _loc5_;
                              if(param1 == SafeGlobal.SKILLMARKER_MEGABOUNCE)
                              {
                                 this.§_-9T§.push(new §_-v2§(param2,param3));
                              }
                              else
                              {
                                 _loc5_;
                                 _loc4_;
                                 _loc4_;
                                 if(param1 == SafeGlobal.SKILLMARKER_DIG)
                                 {
                                    _loc5_;
                                    _loc5_;
                                    this.§_-9T§.push(new §_-B3§(param2,param3));
                                    _loc5_;
                                 }
                                 else if(param1 == SafeGlobal.SKILLMARKER_WORMHOLE)
                                 {
                                    this.§_-9T§.push(new §_-eg§(param2,param3));
                                    _loc4_;
                                 }
                                 
                              }
                           }
                        }
                     }
                     
                     
                  }
               }
            }
            
            this.§_-9T§[this.§_-9T§.length - 1].type = param1;
         }
      }
      
      public function showPoisonProjectiles(param1:Unit) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc4_;
         _loc4_;
         _loc2_ = 0;
         while(_loc2_ < this.projectiles.length)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            if((this.projectiles[_loc2_].unit) && this.projectiles[_loc2_].unit == param1)
            {
               _loc3_;
               this.projectiles[_loc2_].showPoisonBubbles();
               _loc3_;
            }
            _loc2_++;
            _loc3_;
         }
      }
      
      public function hidePoisonProjectiles(param1:Unit) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc4_;
         _loc4_;
         _loc2_ = 0;
         while(_loc2_ < this.projectiles.length)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc4_;
            if((this.projectiles[_loc2_].unit) && this.projectiles[_loc2_].unit == param1)
            {
               _loc3_;
               this.projectiles[_loc2_].hidePoisonBubbles();
               _loc4_;
            }
            _loc2_++;
            _loc4_;
         }
      }
      
      public function addProjectile(param1:Number, param2:Number, param3:Number, param4:Number, param5:int, param6:String, param7:Boolean, param8:Boolean = false) : *
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
         _loc10_;
         _loc10_;
         _loc9_;
         this.projectiles.push(new Projectile(param1,param2,param3,param4,param5,param8,5,[]));
         _loc9_;
         this.screen.addChild(this.projectiles[this.projectiles.length - 1]);
         _loc9_;
         _loc9_;
         _loc10_;
         _loc10_;
         _loc9_;
         _loc9_;
         _loc10_;
         this.projectiles[this.projectiles.length - 1].useProjString(param6,param7);
         _loc10_;
         _loc10_;
         this.projectiles[this.projectiles.length - 1].hasSmoke = true;
         _loc10_;
         _loc10_;
         this.simManager.addObject(this.projectiles[this.projectiles.length - 1],"addproj " + param5);
      }
      
      public function §_-aK§() : *
      {
         var _loc1_:* = undefined;
         _loc1_ = getTimer() - this.§_-uU§;
         return _loc1_;
      }
      
      public function §_-eR§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.sendEndOfTurn(this.§_-aK§());
      }
      
      public function addExplosion(param1:Number, param2:Number, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int = -1) : *
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfucation" for better results.
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function §_-Jf§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.§_-6r§();
         _loc2_;
         _loc2_;
         this.§_-81§ = null;
         _loc1_;
         this.§_-dp§.splice(0);
         _loc2_;
         _loc2_;
         this.§_-xK§.dead = false;
      }
      
      public function displayDropOut(param1:int) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:* = false;
         var _loc3_:* = 0;
         _loc5_;
         _loc5_;
         this.showMessage(this.teams[param1].teamName + " has left the game",SafeGlobal.colour_hex[this.teams[param1].colourID],false);
         _loc4_;
         this.teams[param1].droppedOut = true;
         _loc4_;
         _loc4_;
         this.hideBubbles();
         _loc5_;
         _loc5_;
         _loc2_ = false;
         _loc4_;
         _loc4_;
         _loc3_ = 0;
         while(_loc3_ < this.units.length)
         {
            _loc4_;
            _loc4_;
            if(this.units[_loc3_].team == param1)
            {
               _loc4_;
               _loc4_;
               _loc5_;
               _loc5_;
               this.units[_loc3_].willCry = true;
               _loc4_;
               _loc5_;
               if(_loc3_ == this.currentUnit)
               {
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc2_ = true;
               }
            }
            _loc4_;
            if(_loc3_ == this.currentUnit)
            {
               this.§_-Zj§ = 0;
               this.§_-R8§ = 1;
               _loc4_;
               this.hideBubbles();
            }
            _loc3_++;
         }
         _loc4_;
         _loc4_;
         _loc4_;
         this.statuses[param1].alpha = 0.5;
         this.statuses[param1].hideBar();
         _loc4_;
         this.updateTeamHealths();
         if(!_loc2_)
         {
            this.§false§();
         }
      }
      
      public function displayAfkKick(param1:int) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc4_;
         this.showMessage(this.teams[param1].teamName + " been kicked for being AFK",SafeGlobal.colour_hex[this.teams[param1].colourID],false);
         _loc4_;
         this.teams[param1].droppedOut = true;
         _loc3_;
         _loc3_;
         this.hideBubbles();
         _loc3_;
         _loc2_ = 0;
         while(_loc2_ < this.units.length)
         {
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            if(this.units[_loc2_].team == param1)
            {
               _loc4_;
               _loc4_;
               _loc4_;
               this.units[_loc2_].willCry = true;
               _loc3_;
               _loc3_;
            }
            _loc4_;
            if(_loc2_ == this.currentUnit)
            {
               _loc4_;
               _loc4_;
               this.§_-Zj§ = 0;
               this.§_-R8§ = 1;
               this.hideBubbles();
               _loc4_;
               _loc4_;
            }
            _loc2_++;
         }
         _loc3_;
         _loc4_;
         this.statuses[param1].alpha = 0.5;
         this.statuses[param1].hideBar();
         _loc3_;
         this.updateTeamHealths();
      }
      
      public function §_-0-D§(param1:int) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.showMessage(this.teams[param1].teamName + " has been eliminated",SafeGlobal.colour_hex[this.teams[param1].colourID],false);
      }
      
      public function addPreviewPoint(param1:Number, param2:Number, param3:int = 0) : *
      {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc4_:Array = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = 0;
         if(!this.§_-81§)
         {
            this.§_-81§ = new Point(param1,param2);
            _loc10_;
            _loc10_;
            this.§_-qs§ = this.§_-RT§;
            this.runningTotal = this.§_-J3§ = 0;
         }
         else
         {
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc5_ = this.§_-81§.x - param1;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc6_ = this.§_-81§.y - param2;
            _loc7_ = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
            _loc10_;
            this.§_-Oj§ = _loc5_ / _loc7_;
            _loc10_;
            _loc10_;
            this.§_-ld§ = _loc6_ / _loc7_;
            _loc10_;
            this.§_-J3§ = this.runningTotal;
            _loc11_;
            _loc11_;
            this.runningTotal = this.runningTotal + _loc7_;
            _loc8_ = 0;
            while(this.§_-qs§ <= this.runningTotal)
            {
               _loc11_;
               _loc11_;
               this.§_-2I§ = this.§_-qs§ - this.§_-J3§;
               this.§_-CU§ = this.§_-81§.x - this.§_-2I§ * this.§_-Oj§;
               _loc10_;
               _loc10_;
               this.§_-io§ = this.§_-81§.y - this.§_-2I§ * this.§_-ld§;
               _loc10_;
               _loc10_;
               if(!_loc4_)
               {
                  _loc4_ = [];
               }
               _loc4_.push(new §_-LG§(this.§_-CU§,this.§_-io§,this.§_-qs§ + param3));
               _loc10_;
               _loc10_;
               _loc11_;
               _loc11_;
               this.§_-qs§ = this.§_-qs§ + this.§_-RT§;
               _loc8_++;
            }
         }
         this.§_-81§.x = param1;
         _loc11_;
         _loc11_;
         this.§_-81§.y = param2;
         if(_loc4_)
         {
            return _loc4_;
         }
         return this.§_-KM§;
      }
      
      public function explodeBarrel(param1:Barrel, param2:int) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         this.addExplosion(param1.iX,param1.iY,param1.explosionRadius,param1.outerRadius,param1.damage,param1.damage,param2);
         _loc3_;
         this.§_-pJ§(param1);
      }
      
      public function explodePowerUp(param1:PowerUp, param2:int) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         this.addExplosion(param1.iX,param1.iY,param1.explosionRadius,param1.outerRadius,param1.damage,param1.damage,param2);
         _loc4_;
         this.§_-mG§(param1);
      }
      
      public function stopRoverFx(param1:int) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         SoundManager.§_-xT§(SafeGlobal.FX_ROVER,param1);
      }
      
      public function explodeSkyMine(param1:§_-UC§) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.addExplosion(param1.iX,param1.iY,param1.explosionRadius,param1.outerRadius,param1.damage,param1.damage,param1.lastSimTime);
         _loc2_;
         _loc2_;
         this.simManager.removeObject(param1);
         _loc2_;
         this.§_-Xl§(param1);
      }
      
      public function explodeMine(param1:Mine) : *
      {
         var _loc18_:* = false;
         var _loc19_:* = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:Point = null;
         var _loc8_:* = 0;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = 0;
         var _loc17_:* = 0;
         _loc18_;
         _loc18_;
         _loc18_;
         _loc19_;
         if(param1.damage > 0)
         {
            _loc18_;
            _loc18_;
            this.addExplosion(param1.iX,param1.iY,param1.explosionRadius,param1.outerRadius,param1.damage,param1.damage,param1.lastSimTime);
            _loc18_;
         }
         if(param1.payloadCount > 0)
         {
            _loc19_;
            _loc19_;
            _loc19_;
            _loc19_;
            _loc18_;
            _loc18_;
            _loc19_;
            _loc18_;
            _loc18_;
            _loc5_ = this.PI / 2 / param1.payloadCount;
            _loc19_;
            _loc19_;
            _loc19_;
            _loc6_ = param1.iR - 3 * this.PI / 4;
            _loc7_ = new Point(param1.iX,param1.iY);
            _loc18_;
            _loc18_;
            _loc8_ = 0;
            while(_loc8_ < param1.payloadCount)
            {
               _loc18_;
               _loc18_;
               _loc18_;
               _loc19_;
               _loc9_ = _loc5_ * _loc8_;
               _loc18_;
               _loc10_ = this.§_-yl§(200 * Math.cos(_loc6_ + _loc9_));
               _loc11_ = this.§_-yl§(200 * Math.sin(_loc6_ + _loc9_));
               this.addProjectile(param1.iX,param1.iY,_loc10_,_loc11_,param1.lastSimTime,param1.§_-l2§,false,false);
               _loc19_;
               _loc19_;
               _loc19_;
               _loc18_;
               _loc18_;
               _loc18_;
               _loc18_;
               this.projectiles[this.projectiles.length - 1].initialPlanetCheck = true;
               this.projectiles[this.projectiles.length - 1].initialPoint = _loc7_;
               _loc8_++;
            }
         }
         _loc18_;
         if(param1.drillProj)
         {
            _loc19_;
            _loc12_ = this.§_-yl§(200 * Math.cos(param1.iR + this.PI / 2));
            _loc19_;
            _loc19_;
            _loc13_ = this.§_-yl§(200 * Math.sin(param1.iR + this.PI / 2));
            _loc18_;
            _loc18_;
            _loc14_ = this.§_-yl§(param1.iX - Math.cos(param1.iR + this.PI / 2));
            _loc19_;
            _loc15_ = this.§_-yl§(param1.iY - Math.sin(param1.iR + this.PI / 2));
            this.addProjectile(_loc14_,_loc15_,_loc12_,_loc13_,param1.lastSimTime,param1.§_-5p§,false,false);
         }
         _loc19_;
         if(param1.emp)
         {
            _loc19_;
            this.addEffect(SafeGlobal.EFFECTS_SHOCKWAVEEMP,this.§_-ki§[_loc16_].iX,this.§_-ki§[_loc16_].iY,this.§_-ki§[_loc16_].empRadius);
            _loc18_;
            _loc16_ = this.§_-ki§.length - 1;
            while(true)
            {
               _loc18_;
               _loc18_;
               _loc18_;
               _loc18_;
               if(_loc16_ < 0)
               {
                  break;
               }
               if(param1 != this.§_-ki§[_loc16_])
               {
                  _loc18_;
                  _loc18_;
                  _loc2_ = this.§_-ki§[_loc16_].iX - param1.iX;
                  _loc19_;
                  _loc19_;
                  _loc18_;
                  _loc3_ = this.§_-ki§[_loc16_].iY - param1.iY;
                  _loc19_;
                  _loc19_;
                  _loc4_ = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
                  _loc18_;
                  _loc18_;
                  _loc18_;
                  _loc18_;
                  _loc19_;
                  if(this.§_-ki§[_loc16_].triggerTime == 0 && _loc4_ <= param1.empRadius)
                  {
                     this.§_-ki§[_loc16_].damage = int(this.§_-ki§[_loc16_].damage * (1 + param1.§_-Qc§ * 0.1));
                     _loc18_;
                     _loc19_;
                     _loc19_;
                     this.§_-ki§[_loc16_].outerRadius = this.§_-ki§[_loc16_].outerRadius + 2 * param1.§_-Qc§;
                     _loc18_;
                     _loc19_;
                     this.§_-ki§[_loc16_].explosionRadius = this.§_-ki§[_loc16_].explosionRadius + 2 * param1.§_-Qc§;
                     _loc19_;
                     _loc19_;
                     _loc18_;
                     _loc18_;
                     _loc18_;
                     this.§_-ki§[_loc16_].emp = true;
                     _loc18_;
                     _loc18_;
                     _loc18_;
                     this.§_-ki§[_loc16_].triggerMe(param1.lastSimTime,0);
                  }
               }
               _loc18_;
               _loc16_--;
            }
            _loc19_;
            _loc19_;
            _loc17_ = this.skyMines.length - 1;
            while(_loc17_ >= 0)
            {
               _loc18_;
               _loc18_;
               _loc2_ = this.skyMines[_loc17_].iX - param1.iX;
               _loc18_;
               _loc18_;
               _loc19_;
               _loc3_ = this.skyMines[_loc17_].iY - param1.iY;
               _loc4_ = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
               if(_loc4_ <= param1.empRadius)
               {
                  _loc19_;
                  this.skyMines[_loc17_].damage = int(this.skyMines[_loc17_].damage * (1 + param1.§_-Qc§ * 0.1));
                  _loc19_;
                  this.skyMines[_loc17_].outerRadius = this.skyMines[_loc17_].outerRadius + 2 * param1.§_-Qc§;
                  _loc18_;
                  _loc18_;
                  _loc18_;
                  this.skyMines[_loc17_].explosionRadius = this.skyMines[_loc17_].explosionRadius + 2 * param1.§_-Qc§;
                  this.skyMines[_loc17_].triggerMe(param1.lastSimTime);
               }
               _loc19_;
               _loc17_--;
            }
         }
      }
      
      public function §_-rK§(param1:Projectile) : *
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function gameOver() : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         _loc3_;
         _loc3_;
         this.§_-ZX§();
         _loc4_;
         _loc1_ = 0;
         while(_loc1_ < this.units.length)
         {
            _loc3_;
            _loc4_;
            _loc4_;
            _loc2_ = SafeGlobal.game_over_data.team_data[this.units[_loc1_].team].medal;
            _loc3_;
            _loc3_;
            if(_loc2_ == 1)
            {
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               this.units[_loc1_].newAnimState([SafeGlobal.ANIM_UNIT_VICTORY]);
            }
            else
            {
               this.units[_loc1_].newAnimState([SafeGlobal.ANIM_UNIT_CRY]);
            }
            _loc1_++;
            _loc4_;
            _loc4_;
         }
         this.§_-Yi§.hideMe();
         this.§_-rf§();
         this.§_-tO§();
         _loc4_;
         _loc4_;
         this.§_-aW§();
         this.startPanning();
         this.§_-ZF§ = true;
         _loc4_;
         _loc4_;
         this.§_-Wb§(false);
         this.§_-m8§();
         _loc4_;
         this.§_-0T§();
         this.§_-O§ = getTimer();
      }
      
      public function §_-aW§() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         _loc3_;
         _loc1_ = 0;
         while(_loc1_ < this.units.length)
         {
            this.units[_loc1_].healthDisplay.visible = false;
            _loc2_;
            _loc2_;
            _loc1_++;
            _loc3_;
            _loc3_;
         }
      }
      
      public function startPanning() : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:* = 0;
         _loc4_;
         _loc4_;
         this.§_-yS§();
         _loc5_;
         _loc5_;
         this.§_-Tw§();
         _loc4_;
         _loc5_;
         _loc5_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc1_ = this.camera.x - this.§_-Bf§.x;
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         _loc2_ = this.camera.y - this.§_-Bf§.y;
         _loc5_;
         _loc5_;
         _loc3_ = 0;
         while(_loc3_ < this.units.length)
         {
            _loc3_++;
            _loc5_;
         }
         _loc4_;
         this.§_-LT§ = Math.atan2(_loc2_,_loc1_);
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         this.camera.emptyList();
         _loc5_;
         _loc5_;
         this.camera.addTarget(this.§_-xH§,-1,"startPanning");
      }
      
      public function allSickBobOnPlanet(param1:Planet) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         _loc4_;
         _loc5_;
         _loc5_;
         _loc2_ = this.planets.indexOf(param1);
         _loc4_;
         _loc4_;
         _loc3_ = 0;
         while(_loc3_ < this.units.length)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            if(this.units[_loc3_].locationPlanet == _loc2_)
            {
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               this.units[_loc3_].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
               _loc5_;
               _loc5_;
               this.units[_loc3_].hidePoison();
               _loc4_;
               _loc4_;
            }
            _loc3_++;
            _loc5_;
            _loc5_;
         }
      }
      
      public function §_-Az§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int, param8:int = -1) : *
      {
         var _loc33_:* = true;
         var _loc34_:* = false;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:Point = null;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc21_:* = 0;
         var _loc22_:* = 0;
         var _loc23_:* = 0;
         var _loc24_:§_-yR§ = null;
         var _loc25_:Point = null;
         var _loc26_:Point = null;
         var _loc27_:* = NaN;
         var _loc28_:* = NaN;
         var _loc29_:* = NaN;
         var _loc30_:* = NaN;
         var _loc31_:* = NaN;
         var _loc32_:* = NaN;
         var _loc20_:* = false;
         _loc34_;
         _loc21_ = 0;
         while(true)
         {
            _loc34_;
            _loc34_;
            _loc33_;
            if(_loc21_ >= this.units.length)
            {
               break;
            }
            _loc34_;
            _loc33_;
            _loc33_;
            if(!this.units[_loc21_].dead)
            {
               _loc34_;
               _loc34_;
               _loc34_;
               _loc34_;
               if(this.units[_loc21_].hidden)
               {
                  _loc14_ = new Point(this.units[_loc21_].iX,this.units[_loc21_].iY);
                  _loc34_;
                  _loc34_;
               }
               else
               {
                  _loc34_;
                  _loc34_;
                  _loc14_ = this.units[_loc21_].startPoint();
               }
               _loc9_ = _loc14_.x - param1;
               _loc34_;
               _loc34_;
               _loc10_ = _loc14_.y - param2;
               _loc11_ = Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_);
               _loc33_;
               _loc33_;
               _loc19_ = Math.atan2(_loc10_,_loc9_);
               _loc33_;
               _loc33_;
               _loc33_;
               _loc33_;
               if(_loc11_ <= param6)
               {
                  _loc34_;
                  if(this.units[this.currentUnit] == this.units[_loc21_])
                  {
                     _loc34_;
                     _loc34_;
                     _loc34_;
                     _loc23_ = this.projectiles.length - 1;
                     _loc33_;
                     while(true)
                     {
                        _loc33_;
                        if(_loc23_ < 0)
                        {
                           break;
                        }
                        _loc33_;
                        _loc33_;
                        _loc33_;
                        _loc34_;
                        _loc34_;
                        if((this.projectiles[_loc23_].skillShot) && this.projectiles[_loc23_].startSimTime > param7)
                        {
                           this.removeProjectile(this.projectiles[_loc23_]);
                           _loc34_;
                           _loc34_;
                        }
                        _loc34_;
                        _loc34_;
                        _loc33_;
                        _loc33_;
                        _loc23_--;
                     }
                     _loc33_;
                     this.simManager.§_-nd§();
                     _loc34_;
                     _loc34_;
                     this.units[this.currentUnit].walkDir = 0;
                     _loc34_;
                     _loc34_;
                     _loc33_;
                     this.simManager.removeObject(this.units[this.currentUnit]);
                     this.§_-4g§ = true;
                     _loc33_;
                     _loc33_;
                     this.§_-tO§();
                     if(this.myTurn)
                     {
                        _loc33_;
                        if(this.simManager.§_-pW§("APPLY FORCE"))
                        {
                           _loc33_;
                           this.§_-Zj§ = 0;
                           _loc33_;
                           _loc33_;
                           _loc24_ = new §_-yR§(SafeGlobal.SIMEVENT_ENDTURN,param7,null);
                           _loc34_;
                           _loc34_;
                           this.simManager.addObject(_loc24_);
                        }
                     }
                     else
                     {
                        this.§_-6M§(SafeGlobal.CLEANUP_PROJECTILE);
                        _loc33_;
                     }
                     this.§_-Yi§.hideMe();
                  }
                  _loc33_;
                  if(_loc11_ <= param5)
                  {
                     _loc16_ = param3;
                     _loc33_;
                     _loc17_ = param4;
                  }
                  else
                  {
                     _loc33_;
                     _loc33_;
                     _loc33_;
                     _loc15_ = _loc11_ - param5;
                     _loc34_;
                     _loc34_;
                     _loc34_;
                     _loc18_ = param6 - param5;
                     _loc33_;
                     _loc33_;
                     _loc34_;
                     _loc34_;
                     _loc34_;
                     _loc34_;
                     _loc34_;
                     _loc34_;
                     _loc33_;
                     _loc16_ = param3 * (_loc18_ - _loc15_) / _loc18_;
                     _loc34_;
                     _loc34_;
                     _loc34_;
                     _loc34_;
                     _loc17_ = param4 * (_loc18_ - _loc15_) / _loc18_;
                  }
                  _loc16_ = Math.floor(_loc16_);
                  _loc17_ = Math.floor(_loc17_);
                  this.units[_loc21_].takeDamage(_loc16_);
                  if(!(this.units[_loc21_].team == this.currentTeam) && (this.myTurn))
                  {
                     _loc33_;
                     _loc33_;
                     _loc20_ = true;
                     _loc33_;
                  }
                  this.updateTeamHealths();
                  _loc33_;
                  _loc33_;
                  _loc33_;
                  _loc33_;
                  _loc12_ = this.§_-yl§(_loc17_ * Math.cos(_loc19_) * 6);
                  _loc33_;
                  _loc33_;
                  _loc33_;
                  _loc13_ = this.§_-yl§(_loc17_ * Math.sin(_loc19_) * 6);
                  _loc33_;
                  if(!this.units[_loc21_].hidden)
                  {
                     this.addUnitProjectile(_loc14_.x,_loc14_.y,_loc12_,_loc13_,param7,this.units[_loc21_],true);
                     _loc34_;
                     _loc34_;
                     _loc34_;
                     _loc34_;
                     _loc34_;
                     this.projectiles[this.projectiles.length - 1].mass = (this.units[_loc21_].health < 0?0:this.units[_loc21_].health / 2) + 100;
                     _loc34_;
                     if(this.mods[SafeGlobal.MOD_HEAVYUNITS])
                     {
                        _loc33_;
                        _loc33_;
                        _loc33_;
                        this.projectiles[this.projectiles.length - 1].mass = this.projectiles[this.projectiles.length - 1].mass * 2;
                     }
                     _loc34_;
                     _loc34_;
                     if(this.units[_loc21_].poison == 0)
                     {
                        _loc34_;
                        this.units[_loc21_].hidePoison();
                        _loc33_;
                        _loc33_;
                     }
                     if(this.units[_loc21_].fire)
                     {
                        _loc34_;
                        _loc34_;
                        this.projectiles[this.projectiles.length - 1].init(this.units[_loc21_].costume.spriteSheets[SafeGlobal.ANIM_UNIT_FLYING]);
                        this.units[_loc21_].newAnimState([SafeGlobal.ANIM_UNIT_FLYING]);
                        _loc33_;
                        this.projectiles[this.projectiles.length - 1].animStep = -1;
                        _loc33_;
                        this.projectiles[this.projectiles.length - 1].unit.newAnimState([SafeGlobal.ANIM_UNIT_FLYING]);
                        _loc34_;
                        this.projectiles[this.projectiles.length - 1].setupEmittors(SafeGlobal.TRAILTYPE_NONE,[]);
                        _loc34_;
                        _loc34_;
                        this.projectiles[this.projectiles.length - 1].showFire();
                     }
                     else
                     {
                        _loc33_;
                        _loc33_;
                        if(this.units[_loc21_].health <= 0)
                        {
                           _loc34_;
                           _loc34_;
                           _loc33_;
                           this.projectiles[this.projectiles.length - 1].init(this.units[_loc21_].costume.spriteSheets[SafeGlobal.ANIM_UNIT_FLYINGDEAD]);
                           _loc34_;
                           this.units[_loc21_].newAnimState([SafeGlobal.ANIM_UNIT_FLYINGDEAD]);
                           _loc34_;
                           _loc34_;
                           _loc34_;
                           _loc34_;
                           _loc34_;
                           _loc34_;
                           this.projectiles[this.projectiles.length - 1].orientToPath = false;
                           _loc33_;
                           _loc34_;
                           this.projectiles[this.projectiles.length - 1].spin = 4;
                           _loc33_;
                           _loc33_;
                           this.projectiles[this.projectiles.length - 1].animStep = -1;
                        }
                        else
                        {
                           _loc33_;
                           this.projectiles[this.projectiles.length - 1].init(this.units[_loc21_].costume.spriteSheets[SafeGlobal.ANIM_UNIT_FLYING]);
                           _loc33_;
                           this.units[_loc21_].newAnimState([SafeGlobal.ANIM_UNIT_FLYING]);
                        }
                     }
                  }
                  else
                  {
                     _loc34_;
                     _loc34_;
                     _loc23_ = 0;
                     while(_loc23_ < this.projectiles.length)
                     {
                        _loc33_;
                        _loc33_;
                        _loc34_;
                        _loc34_;
                        if(this.projectiles[_loc23_].unit == this.units[_loc21_])
                        {
                           _loc34_;
                           _loc34_;
                           _loc34_;
                           this.projectiles[_loc23_].momX = this.projectiles[_loc23_].momX + _loc12_;
                           _loc34_;
                           _loc34_;
                           this.projectiles[_loc23_].momY = this.projectiles[_loc23_].momY + _loc13_;
                           this.projectiles[_loc23_].mass = (this.units[_loc21_].health < 0?0:this.units[_loc21_].health / 2) + 100;
                           _loc33_;
                           _loc33_;
                           if(this.mods[SafeGlobal.MOD_HEAVYUNITS])
                           {
                              _loc33_;
                              _loc33_;
                              _loc33_;
                              this.projectiles[_loc23_].mass = this.projectiles[_loc23_].mass * 2;
                              _loc34_;
                              _loc34_;
                           }
                           if(!this.projectiles[_loc23_].unit.fallDamage)
                           {
                              _loc34_;
                              _loc34_;
                              _loc33_;
                              _loc33_;
                              if(!this.projectiles[_loc23_].unit.fallDamage)
                              {
                                 SoundManager.§_-xT§(SafeGlobal.FX_JETPACK,this.projectiles[_loc23_].sound_uid);
                              }
                              _loc33_;
                              _loc33_;
                              this.projectiles[_loc23_].unit.fallDamage = true;
                              _loc34_;
                              _loc33_;
                              _loc33_;
                              this.projectiles[_loc23_].unit.rocketGloves = false;
                              _loc33_;
                              _loc33_;
                              _loc33_;
                              this.projectiles[_loc23_].init(this.projectiles[_loc23_].unit.costume.spriteSheets[SafeGlobal.ANIM_UNIT_FLYING]);
                              _loc34_;
                              _loc33_;
                              this.projectiles[_loc23_].animStep = -1;
                              _loc34_;
                              this.projectiles[_loc23_].unit.newAnimState([SafeGlobal.ANIM_UNIT_FLYING]);
                              _loc33_;
                              _loc33_;
                              _loc33_;
                              this.projectiles[_loc23_].setupEmittors(SafeGlobal.TRAILTYPE_NONE,[]);
                           }
                           _loc33_;
                           if(this.projectiles[_loc23_].unit.health <= 0)
                           {
                              this.projectiles[_loc23_].init(this.projectiles[_loc23_].unit.costume.spriteSheets[SafeGlobal.ANIM_UNIT_FLYINGDEAD]);
                              _loc33_;
                              _loc33_;
                              _loc33_;
                              this.projectiles[_loc23_].unit.newAnimState([SafeGlobal.ANIM_UNIT_FLYINGDEAD]);
                              _loc34_;
                              this.projectiles[_loc23_].orientToPath = false;
                              _loc33_;
                              _loc34_;
                              _loc34_;
                              this.projectiles[_loc23_].spin = 4;
                              _loc34_;
                              _loc34_;
                              this.projectiles[_loc23_].animStep = -1;
                              _loc33_;
                           }
                           break;
                        }
                        _loc23_++;
                     }
                  }
               }
            }
            _loc21_++;
         }
         _loc34_;
         _loc34_;
         _loc33_;
         _loc33_;
         _loc22_ = 0;
         while(_loc22_ < this.§_-ki§.length)
         {
            _loc34_;
            _loc34_;
            if(!this.§_-ki§[_loc22_].dead && !(this.§_-ki§[_loc22_].roving && this.§_-ki§[_loc22_].triggerTime > 0))
            {
               _loc33_;
               _loc33_;
               if(this.§_-ki§[_loc22_].roving)
               {
                  _loc34_;
                  _loc34_;
                  _loc33_;
                  this.§_-ki§[_loc22_].triggerMe(param7,20);
               }
               else
               {
                  _loc14_ = this.§_-ki§[_loc22_].startPoint();
                  _loc34_;
                  _loc34_;
                  _loc9_ = _loc14_.x - param1;
                  _loc34_;
                  _loc10_ = _loc14_.y - param2;
                  _loc11_ = Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_);
                  _loc19_ = Math.atan2(_loc10_,_loc9_);
                  if(_loc11_ <= param6)
                  {
                     _loc33_;
                     _loc33_;
                     _loc33_;
                     _loc33_;
                     if(_loc11_ <= param5)
                     {
                        _loc16_ = param3;
                        _loc34_;
                        _loc34_;
                        _loc17_ = param4;
                     }
                     else
                     {
                        _loc15_ = _loc11_ - param5;
                        _loc33_;
                        _loc33_;
                        _loc33_;
                        _loc33_;
                        _loc33_;
                        _loc18_ = param6 - param5;
                        _loc34_;
                        _loc34_;
                        _loc34_;
                        _loc34_;
                        _loc33_;
                        _loc33_;
                        _loc16_ = param3 * (_loc18_ - _loc15_) / _loc18_;
                        _loc33_;
                        _loc33_;
                        _loc33_;
                        _loc33_;
                        _loc34_;
                        _loc17_ = param4 * (_loc18_ - _loc15_) / _loc18_;
                     }
                     _loc33_;
                     _loc16_ = Math.floor(_loc16_);
                     _loc33_;
                     _loc34_;
                     _loc34_;
                     _loc17_ = Math.floor(_loc17_);
                     _loc34_;
                     _loc33_;
                     _loc33_;
                     _loc34_;
                     _loc12_ = this.§_-yl§(_loc17_ * Math.cos(_loc19_) * 6);
                     _loc33_;
                     _loc33_;
                     _loc13_ = this.§_-yl§(_loc17_ * Math.sin(_loc19_) * 6);
                     _loc33_;
                     _loc33_;
                     if(!this.§_-ki§[_loc22_].hidden)
                     {
                        _loc25_ = new Point(this.§_-ki§[_loc22_].iX + 7 * Math.cos(this.§_-ki§[_loc22_].iR + this.PI / 2),this.§_-ki§[_loc22_].iY + 7 * Math.sin(this.§_-ki§[_loc22_].iR + this.PI / 2));
                        _loc26_ = new Point(this.§_-ki§[_loc22_].iX + 7 * Math.cos(this.§_-ki§[_loc22_].iR - this.PI / 2),this.§_-ki§[_loc22_].iY + 7 * Math.sin(this.§_-ki§[_loc22_].iR - this.PI / 2));
                        _loc34_;
                        _loc34_;
                        _loc27_ = _loc25_.x - param1;
                        _loc33_;
                        _loc28_ = _loc25_.y - param2;
                        _loc33_;
                        _loc29_ = Math.sqrt(_loc27_ * _loc27_ + _loc28_ * _loc28_);
                        _loc33_;
                        _loc33_;
                        _loc30_ = _loc26_.x - param1;
                        _loc33_;
                        _loc34_;
                        _loc31_ = _loc26_.y - param2;
                        _loc32_ = Math.sqrt(_loc30_ * _loc30_ + _loc31_ * _loc31_);
                        _loc33_;
                        _loc33_;
                        this.addMineProjectile(_loc14_.x,_loc14_.y,_loc12_,_loc13_,param7,this.§_-ki§[_loc22_]);
                        _loc34_;
                        if(this.§_-ki§[_loc22_].mineType == SafeGlobal.MINETYPE_STANDARD)
                        {
                           _loc33_;
                           _loc34_;
                           _loc33_;
                           this.projectiles[this.projectiles.length - 1].init(this.projGFX[SafeGlobal.WEAPONINFO_MINE[0]]);
                        }
                        else
                        {
                           _loc33_;
                           _loc33_;
                           _loc34_;
                           _loc34_;
                           if(this.§_-ki§[_loc22_].mineType == SafeGlobal.MINETYPE_DRILL)
                           {
                              _loc33_;
                              _loc33_;
                              _loc33_;
                              _loc33_;
                              _loc34_;
                              _loc34_;
                              this.projectiles[this.projectiles.length - 1].init(this.projGFX[SafeGlobal.WEAPONINFO_DRILLMINE[0]]);
                           }
                           else
                           {
                              _loc34_;
                              if(this.§_-ki§[_loc22_].mineType == SafeGlobal.MINETYPE_CLUSTER)
                              {
                                 _loc34_;
                                 _loc33_;
                                 _loc33_;
                                 _loc33_;
                                 this.projectiles[this.projectiles.length - 1].init(this.projGFX[SafeGlobal.WEAPONINFO_CLUSTERMINE[0]]);
                                 _loc34_;
                              }
                           }
                        }
                        _loc34_;
                        _loc34_;
                        _loc33_;
                        this.projectiles[this.projectiles.length - 1].spin = (_loc32_ - _loc29_) * _loc17_ / 10;
                        _loc34_;
                        _loc34_;
                        this.projectiles[this.projectiles.length - 1].rotation = this.§_-ki§[_loc22_].iR * 180 / this.PI;
                     }
                     else
                     {
                        _loc33_;
                        _loc23_ = 0;
                        while(_loc23_ < this.projectiles.length)
                        {
                           _loc33_;
                           _loc34_;
                           if(this.projectiles[_loc23_].mine == this.§_-ki§[_loc22_])
                           {
                              _loc33_;
                              _loc34_;
                              _loc34_;
                              this.projectiles[_loc23_].momX = this.projectiles[_loc23_].momX + _loc12_;
                              this.projectiles[_loc23_].momY = this.projectiles[_loc23_].momY + _loc13_;
                              _loc33_;
                              _loc33_;
                              break;
                           }
                           _loc23_++;
                        }
                     }
                  }
               }
            }
            _loc22_++;
         }
      }
      
      public function addUnitProjectile(param1:Number, param2:Number, param3:Number, param4:Number, param5:int, param6:Unit, param7:Boolean) : *
      {
         var _loc8_:* = false;
         var _loc9_:* = true;
         _loc9_;
         _loc9_;
         this.projectiles.push(new Projectile(param1,param2,param3,param4,param5,false,5,[]));
         this.screen.addChild(this.projectiles[this.projectiles.length - 1]);
         _loc9_;
         _loc9_;
         this.simManager.addObject(this.projectiles[this.projectiles.length - 1],"addunitproj");
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc9_;
         _loc8_;
         _loc8_;
         this.projectiles[this.projectiles.length - 1].fallStartTime = param5;
         if(param6.poison)
         {
            _loc8_;
            _loc8_;
            _loc8_;
            _loc9_;
            _loc9_;
            this.projectiles[this.projectiles.length - 1].showPoisonBubbles();
            _loc8_;
         }
         this.projectiles[this.projectiles.length - 1].setUnit(param6);
         param6.hideMe(param7);
      }
      
      public function addMineProjectile(param1:Number, param2:Number, param3:Number, param4:Number, param5:int, param6:Mine) : *
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         _loc8_;
         _loc8_;
         _loc8_;
         this.projectiles.push(new Projectile(param1,param2,param3,param4,param5,false,5,[]));
         _loc8_;
         _loc8_;
         this.screen.addChild(this.projectiles[this.projectiles.length - 1]);
         this.simManager.addObject(this.projectiles[this.projectiles.length - 1],"addmineproj");
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         this.projectiles[this.projectiles.length - 1].setMine(param6);
         _loc7_;
         param6.hideMe();
         if(param6.triggerTime == 0)
         {
            _loc8_;
            _loc8_;
            _loc8_;
            _loc7_;
            this.projectiles[this.projectiles.length - 1].animate = false;
         }
         else
         {
            this.projectiles[this.projectiles.length - 1].animate = true;
         }
      }
      
      public function §_-CM§(param1:Projectile) : *
      {
         var _loc19_:* = true;
         var _loc20_:* = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = 0;
         var _loc15_:* = NaN;
         var _loc16_:Planet = null;
         var _loc17_:* = 0;
         var _loc18_:* = 0;
         _loc2_ = 0;
         _loc3_ = 0;
         _loc19_;
         _loc19_;
         _loc4_ = 0;
         _loc20_;
         _loc5_ = 0;
         _loc19_;
         _loc19_;
         _loc6_ = 0;
         _loc19_;
         _loc19_;
         _loc20_;
         _loc20_;
         _loc8_ = 0;
         _loc19_;
         _loc19_;
         _loc19_;
         _loc9_ = 0;
         _loc19_;
         _loc19_;
         _loc10_ = 0;
         _loc19_;
         _loc19_;
         _loc14_ = 5000;
         _loc17_ = 0;
         while(_loc17_ < this.planets.length)
         {
            _loc16_ = this.planets[_loc17_];
            _loc20_;
            _loc20_;
            _loc20_;
            _loc19_;
            _loc19_;
            _loc20_;
            _loc19_;
            _loc19_;
            _loc20_;
            _loc19_;
            _loc19_;
            _loc12_ = _loc16_.initialMass * param1.mass / (_loc16_.radius * _loc16_.radius) / _loc14_;
            _loc19_;
            _loc18_ = 0;
            while(_loc18_ < this.planets[_loc17_].shapes.length)
            {
               _loc19_;
               _loc19_;
               _loc20_;
               _loc20_;
               _loc13_ = _loc16_.shapes[_loc18_].mass / _loc16_.initialMass;
               _loc20_;
               _loc20_;
               _loc11_ = Math.floor(_loc12_ * _loc13_ * 100000) / 100000;
               _loc20_;
               _loc19_;
               _loc19_;
               _loc19_;
               _loc7_ = _loc16_.shapes[_loc18_].mass * param1.mass;
               _loc20_;
               _loc8_ = param1.iX - _loc16_.shapes[_loc18_].center.x;
               _loc20_;
               _loc20_;
               _loc9_ = param1.iY - _loc16_.shapes[_loc18_].center.y;
               _loc20_;
               _loc20_;
               _loc20_;
               _loc20_;
               _loc19_;
               _loc20_;
               _loc20_;
               _loc20_;
               _loc20_;
               _loc20_;
               _loc10_ = _loc8_ * _loc8_ + _loc9_ * _loc9_;
               _loc20_;
               _loc19_;
               _loc19_;
               _loc19_;
               _loc19_;
               _loc2_ = Math.floor(_loc7_ / _loc10_ / _loc14_ * 100000) / 100000;
               _loc20_;
               _loc20_;
               _loc20_;
               if(_loc2_ > _loc11_ && !_loc16_.blackHole)
               {
                  _loc2_ = _loc11_;
                  _loc19_;
                  _loc19_;
               }
               _loc15_ = Math.atan2(_loc9_,_loc8_);
               _loc19_;
               _loc19_;
               _loc20_;
               _loc3_ = Math.cos(_loc15_) * _loc2_;
               _loc20_;
               _loc20_;
               _loc4_ = Math.sin(_loc15_) * _loc2_;
               _loc19_;
               _loc20_;
               _loc20_;
               _loc5_ = Math.floor((_loc5_ + _loc3_) * 100000) / 100000;
               _loc19_;
               _loc19_;
               _loc20_;
               _loc20_;
               _loc6_ = Math.floor((_loc6_ + _loc4_) * 100000) / 100000;
               _loc20_;
               _loc18_++;
               _loc20_;
               _loc20_;
            }
            _loc20_;
            _loc17_++;
         }
         _loc19_;
         param1.momX = Math.floor((param1.momX - _loc5_) * 100000) / 100000;
         _loc19_;
         param1.momY = Math.floor((param1.momY - _loc6_) * 100000) / 100000;
      }
      
      public function checkSpecialPlanetProximity(param1:Projectile) : *
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = 0;
         _loc7_;
         _loc7_;
         _loc5_ = 0;
         while(_loc5_ < this.planets.length)
         {
            _loc7_;
            _loc7_;
            _loc6_;
            _loc6_;
            if(this.planets[_loc5_].sun)
            {
               _loc7_;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc2_ = this.planets[_loc5_].x - param1.iX;
               _loc6_;
               _loc6_;
               _loc7_;
               _loc7_;
               _loc6_;
               _loc7_;
               _loc7_;
               _loc3_ = this.planets[_loc5_].y - param1.iY;
               _loc4_ = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
               _loc6_;
               _loc6_;
               _loc7_;
               _loc6_;
               if((param1.unit && !param1.fire) && (param1.unit.health > 0) && _loc4_ <= this.planets[_loc5_].radius + 30)
               {
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  param1.unit.fire = true;
                  _loc7_;
                  _loc7_;
                  param1.init(param1.unit.costume.spriteSheets[SafeGlobal.ANIM_UNIT_FLYING]);
                  param1.animStep = -1;
                  _loc6_;
                  _loc7_;
                  _loc6_;
                  param1.unit.newAnimState([SafeGlobal.ANIM_UNIT_FLYING]);
                  _loc7_;
                  _loc7_;
                  _loc6_;
                  _loc6_;
                  if(!param1.unit.fallDamage)
                  {
                     _loc6_;
                     _loc6_;
                     SoundManager.§_-xT§(SafeGlobal.FX_JETPACK,param1.sound_uid);
                     _loc7_;
                  }
                  _loc6_;
                  _loc6_;
                  param1.unit.fallDamage = true;
                  _loc7_;
                  _loc7_;
                  param1.unit.rocketGloves = false;
                  param1.setupEmittors(SafeGlobal.TRAILTYPE_NONE,[]);
                  _loc7_;
                  _loc7_;
                  param1.showFire();
                  _loc6_;
               }
            }
            else
            {
               _loc7_;
               _loc7_;
               _loc7_;
               if(this.planets[_loc5_].blackHole)
               {
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc7_;
                  _loc2_ = this.planets[_loc5_].x - param1.iX;
                  _loc7_;
                  _loc3_ = this.planets[_loc5_].y - param1.iY;
                  _loc4_ = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
                  _loc7_;
                  if((param1.unit) && (param1.unit.poison < 10) && _loc4_ <= this.planets[_loc5_].radius + 30)
                  {
                     param1.unit.poison = 10;
                     _loc7_;
                     _loc7_;
                     param1.unit.showPoison();
                     _loc6_;
                     _loc6_;
                  }
               }
            }
            _loc5_++;
         }
      }
      
      public function displayTurnSummary() : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:String = null;
         var _loc2_:* = false;
         _loc4_;
         _loc4_;
         _loc3_;
         if(!this.§_-UR§ && !this.simOnly && !this.costumeCacheOnly)
         {
            _loc4_;
            _loc2_ = false;
            _loc4_;
            _loc3_;
            _loc3_;
            _loc4_;
            _loc3_;
            _loc3_;
            if(this.summaryDamageDealt == 0 && this.summaryDamageTaken == 0)
            {
               _loc3_;
               if(this.§_-R8§ == 1)
               {
                  _loc2_ = true;
               }
               else
               {
                  _loc4_;
                  if(this.§_-FQ§ == 1)
                  {
                     _loc3_;
                     _loc3_;
                     _loc3_;
                     _loc1_ = this.units[this.currentUnit].unitName + " skipped their turn";
                     _loc4_;
                  }
                  else
                  {
                     _loc3_;
                     if(this.§_-K7§ == 1)
                     {
                        _loc3_;
                        _loc3_;
                        _loc3_;
                        _loc3_;
                        _loc1_ = this.units[this.currentUnit].unitName + " used a Jetpack";
                     }
                     else
                     {
                        _loc4_;
                        _loc4_;
                        if(this.§_-cw§ == 1)
                        {
                           _loc4_;
                           _loc1_ = this.units[this.currentUnit].unitName + " used Rocket Gloves";
                           _loc4_;
                        }
                        else
                        {
                           _loc4_;
                           if(this.§_-cQ§ == 1 && this.§_-Ue§ == 1)
                           {
                              _loc4_;
                              _loc4_;
                              _loc3_;
                              _loc1_ = this.units[this.currentUnit].unitName + " teleported and left a Mine behind";
                           }
                           else
                           {
                              _loc3_;
                              _loc3_;
                              if(this.§_-ef§ == 1)
                              {
                                 _loc4_;
                                 _loc4_;
                                 _loc3_;
                                 _loc4_;
                                 _loc4_;
                                 _loc1_ = this.units[this.currentUnit].unitName + " detoxed a planet";
                              }
                              else if(this.§_-Ue§ == 1)
                              {
                                 _loc4_;
                                 _loc3_;
                                 _loc1_ = this.units[this.currentUnit].unitName + " teleported";
                                 _loc3_;
                                 _loc3_;
                              }
                              else
                              {
                                 _loc4_;
                                 _loc4_;
                                 if(this.§_-Xe§ == 1)
                                 {
                                    _loc4_;
                                    _loc1_ = this.units[this.currentUnit].unitName + " is AFK";
                                 }
                                 else if(this.§_-Zj§ == 1)
                                 {
                                    _loc3_;
                                    _loc1_ = this.units[this.currentUnit].unitName + " ran out of time";
                                 }
                                 else
                                 {
                                    _loc4_;
                                    if(this.§in § == 1)
                                    {
                                       _loc3_;
                                       _loc3_;
                                       _loc3_;
                                       _loc3_;
                                       _loc1_ = this.units[this.currentUnit].unitName + " placed a Shield";
                                    }
                                    else
                                    {
                                       _loc4_;
                                       if(this.dynamic == 1)
                                       {
                                          _loc4_;
                                          _loc4_;
                                          _loc1_ = this.units[this.currentUnit].unitName + " placed a Planet Shield";
                                       }
                                       else
                                       {
                                          _loc3_;
                                          _loc3_;
                                          if(this.§_-cQ§ == 1)
                                          {
                                             _loc4_;
                                             _loc4_;
                                             _loc4_;
                                             _loc1_ = this.units[this.currentUnit].unitName + " placed a Mine";
                                             _loc3_;
                                             _loc3_;
                                          }
                                          else
                                          {
                                             _loc4_;
                                             _loc4_;
                                             _loc3_;
                                             _loc3_;
                                             if(this.summaryHealthDealt >= this.summaryHealthTaken && (this.summaryHealthDealt > 0 || this.summaryHealthTaken > 0))
                                             {
                                                _loc4_;
                                                _loc4_;
                                                _loc4_;
                                                _loc4_;
                                                _loc1_ = this.units[this.currentUnit].unitName + " healed the enemy!";
                                                _loc4_;
                                                _loc4_;
                                             }
                                             else if(this.summaryHealthTaken > this.summaryHealthDealt && (this.summaryHealthDealt > 0 || this.summaryHealthTaken > 0))
                                             {
                                                _loc1_ = this.units[this.currentUnit].unitName + " healed their own team";
                                                _loc3_;
                                                _loc3_;
                                             }
                                             else
                                             {
                                                _loc3_;
                                                _loc3_;
                                                if(this.§_-eP§ == 1)
                                                {
                                                   _loc3_;
                                                   _loc3_;
                                                   _loc4_;
                                                   _loc4_;
                                                   _loc4_;
                                                   _loc1_ = this.units[this.currentUnit].unitName + " radiated a planet";
                                                }
                                                else
                                                {
                                                   _loc4_;
                                                   _loc4_;
                                                   _loc3_;
                                                   _loc3_;
                                                   if(this.§_-eP§ > 1)
                                                   {
                                                      _loc3_;
                                                      _loc3_;
                                                      _loc3_;
                                                      _loc4_;
                                                      _loc4_;
                                                      _loc1_ = this.units[this.currentUnit].unitName + " radiated " + this.§_-eP§ + " planets";
                                                      _loc3_;
                                                      _loc3_;
                                                   }
                                                   else
                                                   {
                                                      _loc3_;
                                                      _loc3_;
                                                      _loc3_;
                                                      _loc3_;
                                                      _loc3_;
                                                      _loc3_;
                                                      _loc1_ = this.units[this.currentUnit].unitName + " missed every unit!";
                                                      _loc4_;
                                                   }
                                                }
                                             }
                                             
                                          }
                                       }
                                    }
                                 }
                                 
                              }
                              
                           }
                        }
                     }
                  }
               }
            }
            else
            {
               _loc4_;
               _loc4_;
               if(this.§_-HC§ > this.§_-AG§)
               {
                  if(this.§_-HC§ == 1)
                  {
                     _loc3_;
                     _loc1_ = this.units[this.currentUnit].unitName + " killed an enemy unit";
                  }
                  else
                  {
                     _loc4_;
                     if(this.§_-HC§ > 1)
                     {
                        _loc3_;
                        _loc3_;
                        _loc4_;
                        _loc3_;
                        _loc3_;
                        _loc3_;
                        _loc3_;
                        _loc1_ = this.units[this.currentUnit].unitName + " killed " + this.§_-HC§ + " enemy units";
                     }
                  }
               }
               else if(this.§_-AG§ >= this.§_-HC§ && this.§_-AG§ > 0)
               {
                  _loc3_;
                  _loc4_;
                  _loc4_;
                  _loc3_;
                  _loc3_;
                  if(this.§_-AG§ == 1 && this.§_-bY§ == 1)
                  {
                     _loc3_;
                     _loc3_;
                     _loc1_ = this.units[this.currentUnit].unitName + " killed themself!";
                     _loc3_;
                  }
                  else
                  {
                     _loc4_;
                     if(this.§_-AG§ == 1 && this.§_-bY§ == 0)
                     {
                        _loc4_;
                        _loc1_ = this.units[this.currentUnit].unitName + " killed a team mate";
                     }
                     else
                     {
                        _loc4_;
                        if(this.§_-AG§ > 1)
                        {
                           _loc4_;
                           _loc4_;
                           _loc1_ = this.units[this.currentUnit].unitName + " killed " + this.§_-AG§ + " team mates";
                        }
                     }
                  }
               }
               else if(this.§_-HC§ == 0 && this.§_-AG§ == 0)
               {
                  if(this.summaryDamageDealt > this.summaryDamageTaken)
                  {
                     _loc3_;
                     _loc3_;
                     _loc3_;
                     _loc3_;
                     _loc4_;
                     _loc1_ = this.units[this.currentUnit].unitName + " damaged the enemy";
                  }
                  else if(this.summaryDamageTaken >= this.summaryDamageDealt)
                  {
                     _loc3_;
                     _loc1_ = this.units[this.currentUnit].unitName + " damaged their own team";
                  }
                  else
                  {
                     _loc3_;
                     _loc3_;
                     _loc3_;
                     _loc3_;
                     if(this.summaryDamageDealt == 0 && this.summaryDamageTaken == this.summaryDamageSelf)
                     {
                        _loc3_;
                        _loc1_ = this.units[this.currentUnit].unitName + " damaged themself!";
                        _loc4_;
                     }
                  }
                  
               }
               
               
            }
            if(!_loc2_)
            {
               this.showMessage(_loc1_,SafeGlobal.colour_hex[this.teams[this.currentTeam].colourID],true);
            }
         }
      }
      
      public function bringUnitToFront(param1:Unit) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-mh§.setChildIndex(param1,this.§_-mh§.numChildren - 1);
         _loc3_;
         _loc3_;
         if(this.currentUnit > -1)
         {
            _loc2_;
            _loc2_;
            this.§_-mh§.setChildIndex(this.units[this.currentUnit],this.§_-mh§.numChildren - 1);
         }
      }
      
      public function §false§() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         _loc2_;
         _loc2_;
         _loc1_ = 0;
         while(_loc1_ < this.units.length)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            if((this.units[_loc1_].willCry) && !this.units[_loc1_].crying)
            {
               _loc3_;
               _loc3_;
               _loc2_;
               _loc3_;
               this.units[_loc1_].crying = true;
               _loc3_;
               this.units[_loc1_].newAnimState([SafeGlobal.ANIM_UNIT_CRY]);
               _loc2_;
               _loc2_;
            }
            _loc1_++;
            _loc2_;
         }
      }
      
      public function AFKKick() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:§_-JI§ = null;
         _loc2_;
         SafeGlobal.game_client.sendAFKKicked();
         _loc2_;
         this.§_-ko§();
         _loc1_ = new §_-JI§();
         _loc3_;
         _loc3_;
         addChild(_loc1_);
      }
      
      public function startTurn(param1:int, param2:int, param3:String, param4:String) : *
      {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc5_:* = false;
         var _loc6_:* = 0;
         var _loc7_:§_-yR§ = null;
         var _loc8_:Array = null;
         this.removeCacheLoadingBar();
         this.§false§();
         _loc9_;
         _loc9_;
         SafeGlobal.§_-8N§ = "";
         SafeGlobal.§_-dw§ = "";
         _loc9_;
         _loc9_;
         _loc10_;
         _loc10_;
         if(!this.§_-Y0§)
         {
            _loc9_;
            this.§_-Y0§ = true;
            addEventListener(Event.ENTER_FRAME,this.§_-kg§);
            stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
            stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§_-ur§);
            stage.addEventListener(KeyboardEvent.KEY_UP,this.§_-UQ§);
         }
         _loc10_;
         _loc10_;
         if(!this.§_-SA§)
         {
            _loc9_;
            _loc9_;
            this.§_-SA§ = true;
            this.chat.§_-jB§();
         }
         this.§_-4g§ = false;
         _loc10_;
         _loc10_;
         this.§_-vA§ = true;
         this.§_-01§();
         _loc10_;
         _loc10_;
         this.§_-rf§();
         this.§_-Yi§.reset();
         this.§_-mu§();
         _loc10_;
         _loc10_;
         this.§_-XG§ = 0;
         this.§_-tO§();
         _loc10_;
         this.camera.emptyList();
         _loc9_;
         _loc9_;
         this.updateTeamHealths();
         this.currentTeam = param1;
         _loc10_;
         _loc10_;
         _loc10_;
         this.simManager.endOfTurnEffectsDone = false;
         this.simManager.turnOver = false;
         _loc9_;
         _loc5_ = false;
         _loc6_ = 0;
         while(true)
         {
            _loc9_;
            _loc9_;
            if(_loc6_ >= this.units.length)
            {
               break;
            }
            _loc9_;
            _loc10_;
            _loc10_;
            _loc10_;
            if(this.units[_loc6_].team == param1 && this.units[_loc6_].unitID == param2)
            {
               this.currentUnit = _loc6_;
               _loc9_;
               _loc9_;
               _loc9_;
               _loc9_;
               _loc9_;
               this.units[_loc6_].current = true;
               _loc10_;
               this.§_-N7§[_loc6_].makeSelected();
               this.bringToFront(this.§_-N7§[_loc6_]);
               _loc9_;
               _loc9_;
               this.camera.addTarget(this.units[this.currentUnit],-1,"unit startTurn");
               _loc10_;
               _loc10_;
               _loc9_;
               _loc9_;
               _loc9_;
               _loc9_;
               this.§_-a9§.x = this.units[this.currentUnit].iX;
               _loc10_;
               _loc10_;
               this.§_-a9§.y = this.units[this.currentUnit].iY;
               this.§_-a9§.active = false;
               _loc10_;
               _loc10_;
               _loc5_ = true;
               _loc9_;
               _loc9_;
               this.units[this.currentUnit].showName(true);
               _loc9_;
               _loc9_;
            }
            else
            {
               _loc9_;
               this.units[_loc6_].current = false;
               _loc10_;
               _loc10_;
               this.§_-N7§[_loc6_].makeUnselected();
            }
            _loc6_++;
         }
         _loc10_;
         _loc10_;
         if(!_loc5_)
         {
            _loc10_;
            _loc10_;
         }
         this.§_-Qr§();
         if(SafeGlobal.playerID == param1)
         {
            _loc9_;
            _loc9_;
            _loc10_;
            _loc10_;
            _loc9_;
            SoundManager.§_-wF§(SafeGlobal.§package§,(this.simOnly) || (this.costumeCacheOnly));
            this.myTurn = true;
            _loc10_;
            this.§_-uU§ = getTimer();
            this.turnState = "shoot";
            if(!this.§_-qg§)
            {
               this.§_-Yq§.x = mouseX;
               _loc9_;
               this.§_-Yq§.y = mouseY;
               this.§_-T8§ = true;
               _loc10_;
               _loc10_;
            }
            this.displayYourTurn(param1);
            _loc7_ = new §_-yR§(SafeGlobal.SIMEVENT_ENDTURN,this.turnTime - this.timeStep,null);
            _loc10_;
            _loc10_;
            _loc9_;
            this.simManager.addObject(_loc7_);
            if(this.§_-qg§)
            {
               _loc9_;
               this.simManager.§_-pW§("AFKTIMEOUT");
               this.sendFireProjectile(10,-1,0,0);
               _loc7_ = new §_-yR§(SafeGlobal.SIMEVENT_ENDTURN,10,null);
               this.simManager.addObject(_loc7_);
               this.turnState = "end";
               this.§_-tO§();
               _loc9_;
               _loc9_;
               this.§_-N7§[this.currentUnit].makeUnselected();
               _loc9_;
               _loc9_;
               this.§_-Xe§ = 1;
               _loc9_;
               _loc9_;
               this.§_-Zj§ = 0;
            }
         }
         else
         {
            this.§_-tS§(this.units[this.currentUnit]);
            _loc9_;
            this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_THINKINGSETUP,SafeGlobal.ANIM_UNIT_THINKING]);
            this.myTurn = false;
            this.§_-uU§ = getTimer() + this.§_-lD§;
            this.turnState = "shoot";
            this.§_-N7§[this.currentUnit].makeUnselected();
            this.showMessage(this.teams[param1].teamName + "\'s turn",SafeGlobal.colour_hex[this.teams[param1].colourID]);
            this.§_-Tw§();
         }
         this.§_-mA§(param1);
         _loc9_;
         _loc9_;
         _loc9_;
         _loc10_;
         _loc10_;
         if(param3 != "")
         {
            _loc8_ = param3.split(",");
            _loc9_;
            this.addPowerUp(_loc8_[0],_loc8_[1],_loc8_[2],_loc8_[3],_loc8_[4],_loc8_[5]);
         }
         this.§_-IF§ = param4;
         _loc10_;
         _loc10_;
         this.simManager.sentEndSim = false;
         this.§_-HN§();
      }
      
      public function §_-HN§() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         _loc3_;
         _loc1_ = 0;
         while(_loc1_ < this.planets.length)
         {
            _loc3_;
            _loc2_;
            _loc2_;
            if(this.planets[_loc1_].blackHole)
            {
               _loc2_;
               this.planets[_loc1_].turnStartRotation = this.§_-yl§(Number(this.§_-IF§.substr(0,3)) % 360 * 180 / this.PI);
               _loc2_;
               _loc2_;
            }
            _loc1_++;
            _loc2_;
            _loc2_;
         }
      }
      
      public function §_-y-§(param1:int) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-uU§ = this.§_-uU§ + param1;
      }
      
      public function killDeadUnit(param1:Unit) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.addExplosion(param1.iX,param1.iY,param1.explosionRadius,param1.outerRadius,param1.damage,25,param1.lastSimTime);
         _loc3_;
         _loc3_;
         this.simManager.removeObject(param1);
         _loc3_;
         _loc3_;
         this.removeUnit(param1);
         return param1.lastSimTime;
      }
      
      public function §_-Yh§() : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         _loc3_;
         this.§_-5G§.graphics.clear();
         _loc4_;
         this.§_-5G§.graphics.lineStyle(4,16711680);
         _loc4_;
         _loc4_;
         _loc1_ = 0;
         while(_loc1_ < this.planets.length)
         {
            _loc3_;
            _loc3_;
            _loc2_ = 0;
            _loc4_;
            _loc4_;
            while(true)
            {
               _loc4_;
               _loc4_;
               _loc3_;
               if(_loc2_ >= this.planets[_loc1_].shapes.length)
               {
                  break;
               }
               _loc2_++;
               _loc3_;
            }
            _loc4_;
            _loc1_++;
            _loc4_;
         }
      }
      
      public function checkNameDisplay() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-Zz§ = true;
      }
      
      public function §_-h5§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc2_;
         _loc1_;
         if((this.§_-Zz§) && getTimer() - this.units[this.currentUnit].nameDisplayStartTime > 3000)
         {
            _loc2_;
            this.units[this.currentUnit].hideName();
            _loc1_;
            this.§_-Zz§ = false;
         }
      }
      
      public function showMessage(param1:String, param2:uint, param3:Boolean = true) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         _loc4_;
         _loc4_;
         if(!this.§_-UR§ && !this.replay && !this.simOnly && !this.costumeCacheOnly)
         {
            _loc4_;
            _loc4_;
            this.messageQueue.push(new ScreenMessage(param1,param2,param3));
            _loc4_;
            _loc4_;
            _loc4_;
            if(this.messageQueue.length == 1)
            {
               addChild(this.messageQueue[0]);
               this.messageQueue[0].myTween.start();
            }
         }
      }
      
      public function retreatOver() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc1_;
         if(!(this.turnState == "end") && !this.§_-UR§)
         {
            _loc1_;
            this.turnState = "waiting";
         }
      }
      
      public function turnOverNoShot() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc1_;
         _loc2_;
         if(!(this.turnState == "end") && !this.§_-UR§)
         {
            _loc1_;
            this.turnState = "waiting";
            _loc2_;
            _loc2_;
         }
         this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
      }
      
      public function §_-tA§(param1:String, param2:uint, param3:String, param4:Boolean) : *
      {
         var _loc13_:* = true;
         var _loc14_:* = false;
         var _loc5_:Class = null;
         var _loc6_:Sprite = null;
         var _loc7_:Sprite = null;
         var _loc8_:Array = null;
         var _loc9_:ColorTransform = null;
         var _loc10_:* = 0;
         var _loc11_:String = null;
         var _loc12_:§_-yv§ = null;
         _loc7_ = new Sprite();
         _loc8_ = [];
         _loc9_ = new ColorTransform();
         _loc9_.color = param2;
         _loc13_;
         _loc13_;
         _loc10_ = 0;
         while(_loc10_ < param1.length)
         {
            _loc14_;
            _loc14_;
            _loc14_;
            if(param1.substr(_loc10_,1) != " ")
            {
               _loc14_;
               _loc14_;
               _loc14_;
               _loc14_;
               _loc13_;
               if(param1.substr(_loc10_,1) == "\'")
               {
                  _loc14_;
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  _loc11_ = param3 + "_Apost";
               }
               else
               {
                  _loc14_;
                  _loc14_;
                  if((param4) && param1.substr(_loc10_,1).toLowerCase() == param1.substr(_loc10_,1))
                  {
                     _loc13_;
                     _loc13_;
                     _loc13_;
                     _loc14_;
                     _loc13_;
                     _loc13_;
                     _loc13_;
                     _loc14_;
                     _loc14_;
                     _loc13_;
                     _loc13_;
                     _loc13_;
                     _loc13_;
                     _loc13_;
                     _loc11_ = param3 + "_l" + param1.substr(_loc10_,1).toUpperCase();
                     _loc14_;
                     _loc14_;
                  }
                  else
                  {
                     _loc14_;
                     _loc11_ = param3 + "_" + param1.substr(_loc10_,1).toUpperCase();
                     _loc13_;
                     _loc13_;
                  }
               }
               _loc5_ = getDefinitionByName(_loc11_) as Class;
               _loc12_ = new _loc5_() as §_-yv§;
               _loc12_.col.transform.colorTransform = _loc9_;
               _loc7_.addChild(_loc12_);
               _loc13_;
               _loc13_;
               if(_loc8_.length == 0)
               {
                  _loc12_.x = 0;
                  _loc13_;
                  _loc13_;
               }
               else
               {
                  _loc12_.x = _loc8_[_loc8_.length - 1].x + _loc8_[_loc8_.length - 1].width + 5;
                  if(param1.substr(_loc10_ - 1,1) == " ")
                  {
                     _loc12_.x = _loc12_.x + 10;
                  }
               }
               _loc8_.push(_loc12_);
            }
            _loc10_++;
            _loc13_;
         }
         _loc7_.cacheAsBitmap = true;
         return _loc7_;
      }
      
      public function showNextMessage() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         removeChild(this.messageQueue[0]);
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.messageQueue.splice(0,1);
         _loc1_;
         _loc1_;
         _loc1_;
         if(this.messageQueue.length > 0)
         {
            _loc2_;
            _loc2_;
            addChild(this.messageQueue[0]);
            _loc1_;
            _loc1_;
            this.messageQueue[0].myTween.start();
         }
      }
      
      public function §_-1g§() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         _loc3_;
         _loc1_ = this.§_-Zx§.length - 1;
         while(_loc1_ >= 0)
         {
            this.§_-Zx§.splice(_loc1_,1);
            _loc2_;
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            _loc1_--;
            _loc3_;
         }
      }
      
      public function §_-tD§() : *
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         _loc8_;
         _loc8_;
         _loc1_ = this.§_-xa§();
         _loc7_;
         _loc2_ = this.§_-w§();
         _loc8_;
         _loc8_;
         _loc3_ = this.§_-4-§();
         _loc7_;
         _loc4_ = this.§_-hI§();
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc5_ = _loc1_ + _loc2_ + _loc3_ + _loc4_;
         _loc8_;
         _loc8_;
         _loc6_ = MD5.hash(_loc5_.toUpperCase()).toUpperCase();
         return _loc6_;
      }
      
      public function getMD5s() : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc1_ = this.§_-xa§();
         _loc6_;
         _loc5_;
         _loc2_ = this.§_-w§();
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc3_ = this.§_-4-§();
         _loc5_;
         _loc5_;
         _loc4_ = this.§_-hI§();
         return [_loc1_,_loc2_,_loc3_,_loc4_];
      }
      
      public function §_-w§() : *
      {
         return MD5.hash(this.generatePlanetsString());
      }
      
      public function generatePlanetsString() : *
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         _loc9_;
         _loc9_;
         _loc9_;
         _loc1_ = "";
         _loc9_;
         _loc2_ = "";
         _loc3_ = [];
         _loc9_;
         _loc9_;
         _loc4_ = 0;
         while(_loc4_ < this.planets.length)
         {
            _loc8_;
            _loc2_ = "";
            _loc8_;
            _loc8_;
            _loc8_;
            if(this.planets[_loc4_].sun)
            {
               _loc9_;
               _loc8_;
               _loc2_ = _loc2_ + "s:";
               _loc8_;
               _loc8_;
               _loc9_;
               _loc9_;
               _loc9_;
               _loc2_ = _loc2_ + this.planets[_loc4_].x;
               _loc9_;
               _loc8_;
               _loc9_;
               _loc9_;
               _loc2_ = _loc2_ + ",";
               _loc8_;
               _loc9_;
               _loc9_;
               _loc8_;
               _loc8_;
               _loc2_ = _loc2_ + this.planets[_loc4_].y;
               _loc8_;
               _loc2_ = _loc2_ + ",";
               _loc8_;
               _loc2_ = _loc2_ + this.planets[_loc4_].radius;
               _loc9_;
               _loc9_;
            }
            else
            {
               _loc8_;
               _loc9_;
               _loc9_;
               if(this.planets[_loc4_].blackHole)
               {
                  _loc2_ = _loc2_ + "h:";
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc9_;
                  _loc9_;
                  _loc8_;
                  _loc8_;
                  _loc2_ = _loc2_ + this.planets[_loc4_].x;
                  _loc2_ = _loc2_ + ",";
                  _loc2_ = _loc2_ + this.planets[_loc4_].y;
                  _loc9_;
                  _loc9_;
                  _loc8_;
                  _loc8_;
                  _loc2_ = _loc2_ + ",";
                  _loc8_;
                  _loc2_ = _loc2_ + this.planets[_loc4_].radius;
               }
               else
               {
                  _loc9_;
                  _loc2_ = _loc2_ + "p:";
                  _loc9_;
                  _loc9_;
                  _loc9_;
                  _loc2_ = _loc2_ + this.planets[_loc4_].x;
                  _loc9_;
                  _loc9_;
                  _loc9_;
                  _loc9_;
                  _loc9_;
                  _loc2_ = _loc2_ + ",";
                  _loc8_;
                  _loc9_;
                  _loc9_;
                  _loc8_;
                  _loc8_;
                  _loc9_;
                  _loc2_ = _loc2_ + this.planets[_loc4_].y;
                  _loc8_;
                  _loc9_;
                  _loc9_;
                  _loc2_ = _loc2_ + ",";
                  _loc9_;
                  _loc2_ = _loc2_ + this.planets[_loc4_].radius;
                  _loc8_;
                  _loc9_;
                  _loc9_;
                  _loc2_ = _loc2_ + ":";
                  _loc9_;
                  _loc9_;
                  _loc6_ = 0;
                  while(true)
                  {
                     _loc9_;
                     if(_loc6_ >= this.planets[_loc4_].shapes.length)
                     {
                        break;
                     }
                     _loc9_;
                     _loc9_;
                     if(_loc6_ != 0)
                     {
                        _loc9_;
                        _loc9_;
                        _loc2_ = _loc2_ + ";";
                     }
                     _loc9_;
                     _loc9_;
                     _loc7_ = 0;
                     _loc8_;
                     while(true)
                     {
                        _loc9_;
                        _loc9_;
                        _loc9_;
                        if(_loc7_ >= this.planets[_loc4_].shapes[_loc6_].curves.length)
                        {
                           break;
                        }
                        if(_loc7_ != 0)
                        {
                           _loc8_;
                           _loc8_;
                           _loc8_;
                           _loc2_ = _loc2_ + ",";
                        }
                        _loc2_ = _loc2_ + this.planets[_loc4_].shapes[_loc6_].curves[_loc7_].x;
                        _loc8_;
                        _loc8_;
                        _loc9_;
                        _loc9_;
                        _loc2_ = _loc2_ + ",";
                        _loc8_;
                        _loc8_;
                        _loc8_;
                        _loc8_;
                        _loc8_;
                        _loc8_;
                        _loc9_;
                        _loc2_ = _loc2_ + this.planets[_loc4_].shapes[_loc6_].curves[_loc7_].y;
                        _loc9_;
                        _loc9_;
                        _loc2_ = _loc2_ + ",";
                        _loc8_;
                        _loc9_;
                        _loc2_ = _loc2_ + this.planets[_loc4_].shapes[_loc6_].curves[_loc7_].radius;
                        _loc8_;
                        _loc8_;
                        _loc9_;
                        _loc9_;
                        _loc2_ = _loc2_ + ",";
                        _loc9_;
                        _loc2_ = _loc2_ + this.planets[_loc4_].shapes[_loc6_].curves[_loc7_].startAngle;
                        _loc2_ = _loc2_ + ",";
                        _loc9_;
                        _loc9_;
                        _loc2_ = _loc2_ + this.planets[_loc4_].shapes[_loc6_].curves[_loc7_].endAngle;
                        _loc7_++;
                     }
                     _loc8_;
                     _loc8_;
                     _loc6_++;
                     _loc9_;
                  }
                  _loc8_;
                  _loc9_;
                  _loc9_;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc2_ = _loc2_ + (":" + this.planets[_loc4_].gfxID.toString());
                  _loc8_;
                  _loc8_;
                  _loc9_;
                  _loc9_;
                  _loc8_;
                  _loc2_ = _loc2_ + (":" + this.planets[_loc4_].radioactive.toString());
                  _loc8_;
                  _loc8_;
                  _loc9_;
                  _loc9_;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc2_ = _loc2_ + (":" + this.planets[_loc4_].shieldHealth.toString() + ",");
                  _loc9_;
                  _loc9_;
                  _loc8_;
                  _loc9_;
                  _loc9_;
                  _loc8_;
                  _loc8_;
                  if(this.planets[_loc4_].shieldHealth > 0 && this.planets[_loc4_].shieldShootOut == true)
                  {
                     _loc9_;
                     _loc9_;
                     _loc2_ = _loc2_ + "1";
                  }
                  else
                  {
                     _loc9_;
                     _loc9_;
                     _loc2_ = _loc2_ + "0";
                     _loc8_;
                  }
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc9_;
                  _loc9_;
                  _loc2_ = _loc2_ + (":" + this.planets[_loc4_].initialMass.toString());
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc2_ = _loc2_ + (":" + this.planets[_loc4_].initialArea.toString());
               }
            }
            _loc3_.push(_loc2_);
            _loc4_++;
         }
         _loc9_;
         _loc1_ = _loc3_.join("|");
         var _loc5_:String = MD5.hash(_loc1_);
         return _loc1_;
      }
      
      public function §_-4-§() : *
      {
         return MD5.hash(this.generateObjectsString());
      }
      
      public function generateObjectsString(param1:Boolean = false) : *
      {
         var _loc11_:* = true;
         var _loc12_:* = false;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:Array = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         _loc12_;
         _loc11_;
         _loc2_ = "";
         _loc11_;
         _loc11_;
         _loc3_ = "";
         _loc4_ = [];
         _loc11_;
         _loc5_ = 0;
         while(true)
         {
            _loc12_;
            if(_loc5_ >= this.units.length)
            {
               break;
            }
            _loc3_ = "u:";
            _loc11_;
            _loc12_;
            _loc3_ = _loc3_ + this.units[_loc5_].iX;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc3_ = _loc3_ + this.units[_loc5_].iY;
            _loc12_;
            _loc12_;
            _loc11_;
            _loc11_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + this.units[_loc5_].iR;
            _loc3_ = _loc3_ + ",";
            _loc11_;
            _loc11_;
            _loc3_ = _loc3_ + this.units[_loc5_].locationPlanet;
            _loc12_;
            _loc12_;
            _loc11_;
            _loc11_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + this.units[_loc5_].locationShape;
            _loc11_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc11_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + this.units[_loc5_].locationCurve;
            _loc12_;
            _loc12_;
            _loc11_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + this.units[_loc5_].locationAngle;
            _loc12_;
            _loc3_ = _loc3_ + ",";
            _loc11_;
            _loc11_;
            _loc12_;
            _loc12_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc3_ = _loc3_ + this.units[_loc5_].poison;
            _loc12_;
            _loc11_;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + ",";
            _loc11_;
            _loc11_;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + this.units[_loc5_].team;
            _loc11_;
            _loc11_;
            _loc12_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc12_;
            if(this.units[_loc5_].dead == true)
            {
               _loc12_;
               _loc12_;
            }
            if(this.units[_loc5_].dead == true)
            {
               _loc3_ = _loc3_ + 1;
               _loc12_;
               _loc12_;
               _loc3_ = _loc3_ + ",";
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc3_ = _loc3_ + this.units[_loc5_].health;
               _loc11_;
               _loc3_ = _loc3_ + ",";
               _loc3_ = _loc3_ + this.units[_loc5_].accuracy.getInt();
               _loc12_;
               _loc12_;
               _loc11_;
               if((param1) && (this.units[_loc5_].onJoin))
               {
                  _loc12_;
                  _loc11_;
                  _loc11_;
                  _loc12_;
                  _loc12_;
                  _loc3_ = _loc3_ + ",";
                  _loc12_;
                  _loc12_;
                  _loc11_;
                  _loc12_;
                  _loc12_;
                  _loc3_ = _loc3_ + this.units[_loc5_].joinTargetAngle1;
                  _loc3_ = _loc3_ + ",";
                  _loc11_;
                  _loc12_;
                  _loc12_;
                  _loc3_ = _loc3_ + this.units[_loc5_].joinTargetAngle2;
               }
               _loc4_.push(_loc3_);
               _loc11_;
               _loc5_++;
               _loc11_;
               _loc11_;
            }
            else
            {
               _loc3_ = _loc3_ + 0;
               _loc12_;
               _loc12_;
               _loc3_ = _loc3_ + ",";
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc3_ = _loc3_ + this.units[_loc5_].health;
               _loc11_;
               _loc3_ = _loc3_ + ",";
               _loc3_ = _loc3_ + this.units[_loc5_].accuracy.getInt();
               _loc12_;
               _loc12_;
               _loc11_;
               if((param1) && (this.units[_loc5_].onJoin))
               {
                  _loc12_;
                  _loc11_;
                  _loc11_;
                  _loc12_;
                  _loc12_;
                  _loc3_ = _loc3_ + ",";
                  _loc12_;
                  _loc12_;
                  _loc11_;
                  _loc12_;
                  _loc12_;
                  _loc3_ = _loc3_ + this.units[_loc5_].joinTargetAngle1;
                  _loc3_ = _loc3_ + ",";
                  _loc11_;
                  _loc12_;
                  _loc12_;
                  _loc3_ = _loc3_ + this.units[_loc5_].joinTargetAngle2;
               }
               _loc4_.push(_loc3_);
               _loc11_;
               _loc5_++;
               _loc11_;
               _loc11_;
            }
         }
         _loc12_;
         _loc6_ = 0;
         while(true)
         {
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            if(_loc6_ >= this.barrels.length)
            {
               break;
            }
            _loc3_ = "b:";
            _loc11_;
            _loc11_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + this.barrels[_loc6_].iX;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc12_;
            _loc11_;
            _loc11_;
            _loc3_ = _loc3_ + this.barrels[_loc6_].iY;
            _loc11_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc12_;
            _loc11_;
            _loc3_ = _loc3_ + this.barrels[_loc6_].iR;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc12_;
            _loc12_;
            _loc11_;
            _loc11_;
            _loc3_ = _loc3_ + ",";
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc3_ = _loc3_ + this.barrels[_loc6_].locationPlanet;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + this.barrels[_loc6_].locationShape;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc3_ = _loc3_ + this.barrels[_loc6_].locationCurve;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + ",";
            _loc11_;
            _loc11_;
            _loc12_;
            _loc3_ = _loc3_ + this.barrels[_loc6_].locationAngle;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc12_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + "0";
            _loc4_.push(_loc3_);
            _loc6_++;
            _loc11_;
         }
         _loc12_;
         _loc12_;
         _loc7_ = 0;
         while(true)
         {
            _loc11_;
            if(_loc7_ >= this.§_-ki§.length)
            {
               break;
            }
            _loc3_ = "m:";
            _loc3_ = _loc3_ + this.§_-ki§[_loc7_].iX;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + this.§_-ki§[_loc7_].iY;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + ",";
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc12_;
            _loc3_ = _loc3_ + this.§_-ki§[_loc7_].iR;
            _loc12_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + this.§_-ki§[_loc7_].locationPlanet;
            _loc11_;
            _loc11_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc11_;
            _loc3_ = _loc3_ + this.§_-ki§[_loc7_].locationShape;
            _loc11_;
            _loc11_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc11_;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + this.§_-ki§[_loc7_].locationCurve;
            _loc11_;
            _loc11_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc12_;
            _loc11_;
            _loc3_ = _loc3_ + this.§_-ki§[_loc7_].locationAngle;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + this.§_-ki§[_loc7_].mineType;
            _loc11_;
            _loc4_.push(_loc3_);
            _loc7_++;
         }
         _loc8_ = 0;
         while(true)
         {
            _loc11_;
            _loc11_;
            _loc11_;
            if(_loc8_ >= this.powerUps.length)
            {
               break;
            }
            _loc3_ = "p:";
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + this.powerUps[_loc8_].iX;
            _loc3_ = _loc3_ + ",";
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc3_ = _loc3_ + this.powerUps[_loc8_].iY;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + ",";
            _loc11_;
            _loc11_;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + this.powerUps[_loc8_].iR;
            _loc11_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc11_;
            _loc11_;
            _loc3_ = _loc3_ + this.powerUps[_loc8_].locationPlanet;
            _loc11_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc12_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc3_ = _loc3_ + this.powerUps[_loc8_].locationShape;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + this.powerUps[_loc8_].locationCurve;
            _loc12_;
            _loc11_;
            _loc3_ = _loc3_ + ",";
            _loc11_;
            _loc11_;
            _loc11_;
            _loc3_ = _loc3_ + this.powerUps[_loc8_].locationAngle;
            _loc12_;
            _loc11_;
            _loc11_;
            _loc3_ = _loc3_ + ",";
            _loc11_;
            _loc11_;
            _loc11_;
            _loc12_;
            _loc3_ = _loc3_ + this.powerUps[_loc8_].powerUpType;
            _loc11_;
            _loc11_;
            _loc12_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc3_ = _loc3_ + this.powerUps[_loc8_].weaponID;
            _loc4_.push(_loc3_);
            _loc12_;
            _loc12_;
            _loc8_++;
         }
         _loc9_ = 0;
         _loc11_;
         _loc11_;
         while(_loc9_ < this.skyMines.length)
         {
            _loc3_ = "k:";
            _loc12_;
            _loc3_ = _loc3_ + this.skyMines[_loc9_].iX;
            _loc3_ = _loc3_ + ",";
            _loc11_;
            _loc11_;
            _loc12_;
            _loc3_ = _loc3_ + this.skyMines[_loc9_].iY;
            _loc11_;
            _loc11_;
            _loc4_.push(_loc3_);
            _loc11_;
            _loc9_++;
         }
         _loc2_ = _loc4_.join("|");
         _loc11_;
         _loc11_;
         var _loc10_:String = MD5.hash(_loc2_);
         return _loc2_;
      }
      
      public function §_-hI§() : *
      {
         return MD5.hash(this.generateGatesString());
      }
      
      public function generateGatesString() : *
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         var _loc6_:* = 0;
         _loc7_;
         _loc8_;
         _loc1_ = "";
         _loc7_;
         _loc7_;
         _loc2_ = "";
         _loc3_ = [];
         _loc7_;
         _loc7_;
         _loc4_ = 0;
         while(_loc4_ < this.gates.length)
         {
            _loc8_;
            _loc8_;
            _loc6_ = Math.round(this.gates[_loc4_].angle * 180 / this.PI);
            _loc8_;
            _loc7_;
            _loc7_;
            if(this.gates[_loc4_].gateType == SafeGlobal.GATETYPE_SHIELD)
            {
               _loc7_;
               _loc7_;
               _loc2_ = "s:";
               _loc8_;
               _loc8_;
               _loc7_;
               _loc7_;
               _loc2_ = _loc2_ + this.gates[_loc4_].iX;
               _loc7_;
               _loc7_;
               _loc2_ = _loc2_ + ",";
               _loc7_;
               _loc7_;
               _loc2_ = _loc2_ + this.gates[_loc4_].iY;
               _loc7_;
               _loc8_;
               _loc2_ = _loc2_ + ",";
               _loc8_;
               _loc7_;
               _loc8_;
               _loc8_;
               _loc2_ = _loc2_ + _loc6_;
               _loc2_ = _loc2_ + ",";
               _loc7_;
               _loc7_;
               _loc8_;
               _loc7_;
               _loc7_;
               _loc2_ = _loc2_ + this.gates[_loc4_].life;
               _loc7_;
               _loc7_;
            }
            else
            {
               _loc7_;
               _loc7_;
               _loc8_;
               _loc8_;
               if(this.gates[_loc4_].gateType == SafeGlobal.GATETYPE_DISSOLVESHIELD)
               {
                  _loc7_;
                  _loc7_;
                  _loc2_ = "d:";
                  _loc7_;
                  _loc7_;
                  _loc8_;
                  _loc2_ = _loc2_ + this.gates[_loc4_].iX;
                  _loc8_;
                  _loc2_ = _loc2_ + ",";
                  _loc7_;
                  _loc7_;
                  _loc2_ = _loc2_ + this.gates[_loc4_].iY;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc7_;
                  _loc2_ = _loc2_ + ",";
                  _loc8_;
                  _loc8_;
                  _loc7_;
                  _loc7_;
                  _loc8_;
                  _loc8_;
                  _loc7_;
                  _loc7_;
                  _loc2_ = _loc2_ + _loc6_;
                  _loc7_;
                  _loc7_;
                  _loc2_ = _loc2_ + ",";
                  _loc7_;
                  _loc8_;
                  _loc8_;
                  _loc7_;
                  _loc2_ = _loc2_ + this.gates[_loc4_].life;
                  _loc7_;
               }
               else if(this.gates[_loc4_].gateType == SafeGlobal.GATETYPE_WORMHOLE)
               {
                  _loc8_;
                  _loc8_;
                  _loc2_ = "w:";
                  _loc7_;
                  _loc8_;
                  _loc2_ = _loc2_ + this.gates[_loc4_].iX;
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  _loc2_ = _loc2_ + ",";
                  _loc2_ = _loc2_ + this.gates[_loc4_].iY;
                  _loc7_;
                  _loc7_;
                  _loc2_ = _loc2_ + ",";
                  _loc7_;
                  _loc7_;
                  _loc2_ = _loc2_ + _loc6_;
               }
               
            }
            _loc3_.push(_loc2_);
            _loc4_++;
         }
         _loc8_;
         _loc1_ = _loc3_.join("|");
         var _loc5_:String = MD5.hash(_loc1_);
         return _loc1_;
      }
      
      public function §_-xa§() : *
      {
         return MD5.hash(this.generateStockString());
      }
      
      public function generateStockString() : *
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc1_:String = null;
         var _loc2_:* = 0;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         var _loc5_:String = null;
         _loc8_;
         _loc8_;
         _loc7_;
         _loc7_;
         _loc8_;
         _loc1_ = this.turnTime.toString() + "," + this.§_-QA§.toString() + "|";
         _loc8_;
         _loc2_ = 0;
         while(_loc2_ < this.stock.length)
         {
            _loc8_;
            _loc2_;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc1_ = _loc1_ + "3";
            _loc8_;
            _loc8_;
            _loc2_++;
            _loc8_;
         }
         _loc8_;
         _loc1_ = _loc1_ + "|";
         _loc3_ = [];
         _loc8_;
         _loc4_ = 0;
         while(_loc4_ < this.mods.length)
         {
            if(this.mods[_loc4_])
            {
               _loc3_.push(_loc4_);
            }
            _loc4_++;
         }
         _loc8_;
         _loc8_;
         _loc5_ = _loc3_.join(",");
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc1_ = _loc1_ + _loc5_;
         _loc7_;
         var _loc6_:String = MD5.hash(_loc1_);
         return _loc1_;
      }
      
      public function pauseForError() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.§_-wP§.addChild(this.§_-X8§);
         _loc1_;
         _loc1_;
         this.§_-yt§ = true;
      }
      
      public function §_-GM§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.§_-m8§();
         _loc1_;
         this.§_-0T§();
         _loc1_;
         _loc1_;
         this.§_-V4§();
         _loc2_;
         _loc2_;
         this.§_-wP§.removeChild(this.§_-X8§);
         _loc2_;
         this.§_-yt§ = false;
      }
      
      public function §_-V4§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         this.simManager.§_-qt§();
         _loc1_;
         _loc1_;
         this.simManager.§_-pW§("RESTARTTURN");
         _loc2_;
         _loc2_;
         this.showWeaponPanelButton();
         _loc2_;
         _loc2_;
         this.turnState = "shoot";
      }
      
      public function §_-m8§() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         _loc3_;
         _loc3_;
         this.§_-Wb§();
         _loc3_;
         _loc3_;
         _loc1_ = this.projectiles.length - 1;
         while(_loc1_ >= 0)
         {
            this.removeProjectile(this.projectiles[_loc1_]);
            _loc2_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc1_--;
            _loc2_;
            _loc2_;
         }
      }
      
      public function §_-0T§() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         _loc3_;
         _loc3_;
         _loc1_ = this.§_-ki§.length - 1;
         while(_loc1_ >= 0)
         {
            if(this.§_-ki§[_loc1_].roving)
            {
               _loc3_;
               _loc3_;
               this.removeMine(this.§_-ki§[_loc1_]);
               _loc3_;
            }
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            _loc1_--;
            _loc3_;
            _loc3_;
         }
      }
      
      public function rebuildGame(param1:int, param2:String, param3:String, param4:String, param5:String) : *
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfucation" for better results.
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function §_-sO§() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         _loc3_;
         _loc3_;
         _loc1_ = this.planets.length - 1;
         while(_loc1_ >= 0)
         {
            this.§_-zY§.removeChild(this.planets[_loc1_]);
            _loc2_;
            this.planets.splice(_loc1_,1);
            _loc2_;
            _loc3_;
            _loc3_;
            _loc1_--;
            _loc3_;
            _loc3_;
         }
      }
      
      public function §_-xe§() : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         _loc5_;
         _loc1_ = this.skyMines.length - 1;
         while(true)
         {
            _loc5_;
            _loc5_;
            if(_loc1_ < 0)
            {
               break;
            }
            if(this.§_-t6§.contains(this.skyMines[_loc1_]))
            {
               this.§_-t6§.removeChild(this.skyMines[_loc1_]);
            }
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            _loc5_;
            this.skyMines.splice(_loc1_,1);
            _loc5_;
            _loc5_;
            _loc1_--;
         }
         _loc5_;
         _loc5_;
         _loc2_ = this.§_-ki§.length - 1;
         while(true)
         {
            _loc6_;
            _loc6_;
            if(_loc2_ < 0)
            {
               break;
            }
            if(this.§_-t6§.contains(this.§_-ki§[_loc2_]))
            {
               _loc5_;
               _loc5_;
               this.§_-t6§.removeChild(this.§_-ki§[_loc2_]);
            }
            _loc5_;
            _loc5_;
            this.§_-ki§.splice(_loc2_,1);
            _loc6_;
            _loc2_--;
         }
         _loc6_;
         _loc6_;
         _loc5_;
         _loc3_ = this.barrels.length - 1;
         while(true)
         {
            _loc6_;
            if(_loc3_ < 0)
            {
               break;
            }
            if(this.§_-dK§.contains(this.barrels[_loc3_]))
            {
               this.§_-dK§.removeChild(this.barrels[_loc3_]);
               _loc5_;
               _loc5_;
            }
            _loc5_;
            _loc6_;
            _loc6_;
            this.barrels.splice(_loc3_,1);
            _loc3_--;
            _loc5_;
         }
         _loc6_;
         _loc5_;
         _loc5_;
         _loc4_ = this.powerUps.length - 1;
         _loc5_;
         _loc5_;
         while(_loc4_ >= 0)
         {
            if(this.§_-Hf§.contains(this.powerUps[_loc4_]))
            {
               this.§_-Hf§.removeChild(this.powerUps[_loc4_]);
               _loc6_;
               _loc6_;
            }
            this.powerUps.splice(_loc4_,1);
            _loc5_;
            _loc6_;
            _loc6_;
            _loc4_--;
            _loc6_;
         }
      }
      
      public function §_-L5§() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         _loc2_;
         _loc2_;
         _loc1_ = this.gates.length - 1;
         while(_loc1_ >= 0)
         {
            this.§_-zY§.removeChild(this.gates[_loc1_]);
            _loc3_;
            _loc3_;
            this.gates.splice(_loc1_,1);
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc1_--;
            _loc3_;
         }
      }
      
      public function §_-WV§() : *
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc1_:String = null;
         var _loc2_:* = 0;
         var _loc3_:String = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         _loc7_;
         _loc7_;
         _loc1_ = "";
         _loc7_;
         _loc2_ = 0;
         while(true)
         {
            _loc8_;
            _loc8_;
            _loc8_;
            if(_loc2_ >= this.planets.length)
            {
               break;
            }
            _loc7_;
            _loc7_;
            _loc5_ = 0;
            _loc7_;
            while(true)
            {
               _loc8_;
               _loc8_;
               if(_loc5_ >= this.planets[_loc2_].shapes.length)
               {
                  break;
               }
               _loc6_ = 0;
               _loc7_;
               _loc7_;
               while(true)
               {
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  if(_loc6_ >= this.planets[_loc2_].shapes[_loc5_].points.length)
                  {
                     break;
                  }
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  _loc1_ = _loc1_ + (this.planets[_loc2_].shapes[_loc5_].points[_loc6_].x.toString() + ",");
                  _loc7_;
                  _loc7_;
                  _loc8_;
                  _loc7_;
                  _loc7_;
                  _loc8_;
                  _loc8_;
                  _loc7_;
                  _loc1_ = _loc1_ + (this.planets[_loc2_].shapes[_loc5_].points[_loc6_].y.toString() + ",");
                  _loc6_++;
               }
               _loc5_++;
            }
            _loc7_;
            _loc7_;
            _loc2_++;
         }
         _loc8_;
         _loc3_ = "";
         _loc8_;
         _loc4_ = 0;
         _loc8_;
         _loc8_;
         while(_loc4_ < this.units.length)
         {
            if(!this.units[_loc4_].dead)
            {
               _loc8_;
               _loc7_;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc7_;
               _loc7_;
               _loc3_ = _loc3_ + (this.units[_loc4_].iX + "," + this.units[_loc4_].iY + "," + this.units[_loc4_].iR + ",");
            }
            _loc4_++;
         }
      }
      
      public function removeUnit(param1:Unit) : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:* = 0;
         _loc6_;
         _loc6_;
         _loc5_;
         _loc5_;
         _loc2_ = this.units.indexOf(param1);
         _loc5_;
         _loc6_;
         _loc6_;
         this.§_-N7§[_loc2_].visible = false;
         param1.health = 0;
         param1.dead = true;
         param1.removed = true;
         param1.hideMe();
         this.updateTeamHealths();
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc6_;
         if(param1.team == this.currentTeam && this.teams[param1.team].teamBattleID == -1 || this.teams[param1.team].teamBattleID == this.teams[this.currentTeam].teamBattleID && !(this.teams[param1.team].teamBattleID == -1))
         {
            _loc6_;
            if(param1.summarizeDeath)
            {
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               this.§_-AG§++;
            }
            if(_loc2_ == this.currentUnit)
            {
               _loc6_;
               if(param1.summarizeDeath)
               {
                  this.§_-bY§ = 1;
               }
            }
         }
         else if(param1.summarizeDeath)
         {
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            this.§_-HC§++;
         }
         
         if(this.teams[param1.team].totalHealth == 0)
         {
            this.statuses[param1.team].alpha = 0.5;
            this.statuses[param1.team].hideBar();
         }
      }
      
      public function removeMine(param1:Mine) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         this.camera.removeTarget(param1);
         this.simManager.removeObject(param1);
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc2_ = this.§_-ki§.indexOf(param1);
         _loc4_;
         _loc4_;
         if(_loc2_ != -1)
         {
            if(this.§_-t6§.contains(this.§_-ki§[_loc2_]))
            {
               this.§_-t6§.removeChild(param1);
               _loc4_;
            }
            this.§_-ki§.splice(_loc2_,1);
         }
      }
      
      public function §_-Xl§(param1:§_-UC§) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         this.camera.removeTarget(param1);
         _loc3_;
         _loc3_;
         _loc2_ = this.skyMines.indexOf(param1);
         _loc4_;
         if(_loc2_ != -1)
         {
            if(this.§_-t6§.contains(param1))
            {
               _loc3_;
               _loc3_;
               this.§_-t6§.removeChild(param1);
            }
            this.skyMines.splice(_loc2_,1);
         }
      }
      
      public function §_-pJ§(param1:Barrel) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc2_ = this.barrels.indexOf(param1);
         _loc3_;
         if(_loc2_ != -1)
         {
            _loc3_;
            if(this.§_-dK§.contains(this.barrels[_loc2_]))
            {
               _loc4_;
               this.§_-dK§.removeChild(this.barrels[_loc2_]);
               _loc3_;
               _loc3_;
            }
         }
         this.barrels.splice(_loc2_,1);
      }
      
      public function §_-3a§(param1:Explosion) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         this.camera.removeTarget(param1);
         _loc3_;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc2_ = this.§_-To§.indexOf(param1);
         if(_loc2_ != -1)
         {
            if(this.§_-7D§.contains(this.§_-To§[_loc2_]))
            {
               _loc3_;
               _loc3_;
               this.§_-7D§.removeChild(this.§_-To§[_loc2_]);
            }
         }
         this.§_-To§.splice(_loc2_,1);
      }
      
      public function §_-01§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.summaryShown = false;
         this.§_-HC§ = 0;
         this.§_-AG§ = 0;
         this.summaryDamageDealt = 0;
         _loc2_;
         _loc2_;
         this.summaryDamageTaken = 0;
         this.§_-K7§ = 0;
         this.§_-cw§ = 0;
         _loc1_;
         _loc1_;
         this.§_-ef§ = 0;
         _loc1_;
         this.§_-Ue§ = 0;
         this.§_-Zj§ = 1;
         _loc1_;
         _loc1_;
         this.§_-Xe§ = 0;
         this.§_-R8§ = 0;
         _loc2_;
         this.dynamic = 0;
         _loc2_;
         this.§in § = 0;
         this.§_-cQ§ = 0;
         _loc1_;
         this.summaryHealthDealt = 0;
         this.summaryHealthTaken = 0;
         this.§_-bY§ = 0;
         this.summaryDamageSelf = 0;
         _loc2_;
         this.§_-eP§ = 0;
         this.§_-FQ§ = 0;
      }
      
      public function addEffect(param1:int, param2:Number, param3:Number, param4:int, param5:Unit = null) : *
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         _loc7_;
         _loc7_;
         _loc7_;
         if(!this.simOnly && !this.costumeCacheOnly)
         {
            _loc7_;
            _loc7_;
            if(param1 == SafeGlobal.EFFECTS_UNITHITBOUNCESHIELD)
            {
               _loc7_;
               this.effects.push(new §_-kW§(param2,param3));
               _loc8_;
               _loc8_;
               this.effects[this.effects.length - 1].init(param5.costume.spriteSheets[SafeGlobal.ANIM_UNIT_BOUNCESHIELDDEATH]);
               _loc8_;
               param5.newAnimState([SafeGlobal.ANIM_UNIT_BOUNCESHIELDDEATH]);
               _loc8_;
               _loc8_;
               this.effects[this.effects.length - 1].rotation = param4;
               _loc8_;
            }
            else if(param1 == SafeGlobal.EFFECTS_UNITHITDISSOLVESHIELD)
            {
               _loc7_;
               _loc7_;
               this.effects.push(new §_-tQ§(param2,param3));
               _loc7_;
               _loc7_;
               _loc7_;
               _loc8_;
               _loc8_;
               this.effects[this.effects.length - 1].init(param5.costume.spriteSheets[SafeGlobal.ANIM_UNIT_DISSOLVESHIELDDEATH]);
               param5.newAnimState([SafeGlobal.ANIM_UNIT_DISSOLVESHIELDDEATH]);
               _loc7_;
               this.effects[this.effects.length - 1].rotation = param4;
            }
            else if(param1 == SafeGlobal.EFFECTS_PROJHITBOUNCESHIELD)
            {
               _loc8_;
               this.effects.push(new §_-tF§(param2,param3));
               _loc8_;
               _loc8_;
               this.effects[this.effects.length - 1].init(this.§_-TE§[SafeGlobal.EFFECTS_PROJHITBOUNCESHIELD]);
               _loc7_;
               _loc7_;
            }
            else
            {
               _loc8_;
               _loc8_;
               if(param1 == SafeGlobal.EFFECTS_PROJHITDISSOLVESHIELD)
               {
                  this.effects.push(new §_-FF§(param2,param3));
                  _loc8_;
                  _loc8_;
                  this.effects[this.effects.length - 1].init(this.§_-TE§[SafeGlobal.EFFECTS_PROJHITDISSOLVESHIELD]);
               }
               else if(param1 == SafeGlobal.EFFECTS_WORMHOLEFLASH)
               {
                  _loc8_;
                  _loc8_;
                  if(this.§_-p4§(SafeGlobal.EFFECTS_WORMHOLEFLASH) < 10)
                  {
                     _loc7_;
                     _loc7_;
                     this.effects.push(new §_-a2§(param2,param3));
                     _loc8_;
                     _loc8_;
                     _loc7_;
                     this.effects[this.effects.length - 1].init(this.§_-TE§[SafeGlobal.EFFECTS_WORMHOLEFLASH]);
                     _loc8_;
                     _loc8_;
                     _loc7_;
                     this.effects[this.effects.length - 1].rotation = param4 + 90;
                     _loc7_;
                  }
               }
               else
               {
                  _loc7_;
                  if(param1 == SafeGlobal.EFFECTS_SHOCKWAVEPUSH)
                  {
                     _loc7_;
                     this.effects.push(new §_-T5§(param2,param3));
                     _loc7_;
                     _loc7_;
                     this.effects[this.effects.length - 1].init(this.§_-TE§[SafeGlobal.EFFECTS_SHOCKWAVEPUSH]);
                     _loc7_;
                     _loc7_;
                     this.effects[this.effects.length - 1].scaleX = this.effects[this.effects.length - 1].scaleY = param4 / 50;
                  }
                  else
                  {
                     _loc8_;
                     _loc8_;
                     if(param1 == SafeGlobal.EFFECTS_SHOCKWAVEEMP)
                     {
                        _loc8_;
                        this.effects.push(new §_-yu§(param2,param3));
                        _loc8_;
                        _loc8_;
                        _loc7_;
                        this.effects[this.effects.length - 1].init(this.§_-TE§[SafeGlobal.EFFECTS_SHOCKWAVEEMP]);
                        _loc8_;
                        _loc8_;
                        _loc7_;
                        _loc7_;
                        this.effects[this.effects.length - 1].scaleX = this.effects[this.effects.length - 1].scaleY = param4 / 50;
                        _loc8_;
                     }
                     else
                     {
                        _loc8_;
                        if(param1 == SafeGlobal.EFFECTS_SHOCKWAVEFIRE)
                        {
                           this.effects.push(new §_-Pl§(param2,param3));
                           _loc7_;
                           _loc7_;
                           _loc7_;
                           this.effects[this.effects.length - 1].init(this.§_-TE§[SafeGlobal.EFFECTS_SHOCKWAVEFIRE]);
                           _loc8_;
                           _loc8_;
                           _loc8_;
                           this.effects[this.effects.length - 1].scaleX = this.effects[this.effects.length - 1].scaleY = param4 / 50;
                        }
                        else
                        {
                           _loc8_;
                           if(param1 == SafeGlobal.EFFECTS_SHOCKWAVEPOISON)
                           {
                              _loc8_;
                              _loc8_;
                              this.effects.push(new §_-iW§(param2,param3));
                              this.effects[this.effects.length - 1].init(this.§_-TE§[SafeGlobal.EFFECTS_SHOCKWAVEPOISON]);
                              _loc8_;
                              this.effects[this.effects.length - 1].scaleX = this.effects[this.effects.length - 1].scaleY = param4 / 50;
                              _loc8_;
                              _loc8_;
                           }
                           else
                           {
                              _loc7_;
                              _loc7_;
                              if(param1 == SafeGlobal.EFFECTS_SHOCKWAVEHEALTH)
                              {
                                 this.effects.push(new §_-PH§(param2,param3));
                                 _loc7_;
                                 _loc7_;
                                 _loc7_;
                                 this.effects[this.effects.length - 1].init(this.§_-TE§[SafeGlobal.EFFECTS_SHOCKWAVEHEALTH]);
                                 _loc8_;
                                 _loc8_;
                                 _loc8_;
                                 _loc8_;
                                 _loc8_;
                                 this.effects[this.effects.length - 1].scaleX = this.effects[this.effects.length - 1].scaleY = param4 / 50;
                              }
                              else if(param1 == SafeGlobal.EFFECTS_COLLECTHEALTH)
                              {
                                 _loc7_;
                                 _loc7_;
                                 _loc7_;
                                 _loc7_;
                                 this.effects.push(new §_-MW§(param2,param3));
                                 _loc8_;
                                 _loc8_;
                                 _loc8_;
                                 this.effects[this.effects.length - 1].init(this.§_-TE§[SafeGlobal.EFFECTS_COLLECTHEALTH]);
                                 _loc8_;
                                 _loc8_;
                                 _loc7_;
                                 _loc7_;
                                 _loc7_;
                                 this.effects[this.effects.length - 1].rotation = param4;
                              }
                              else if(param1 == SafeGlobal.EFFECTS_COLLECTWEAPON)
                              {
                                 _loc8_;
                                 this.effects.push(new §_-NN§(param2,param3));
                                 this.effects[this.effects.length - 1].init(this.§_-TE§[SafeGlobal.EFFECTS_COLLECTWEAPON]);
                                 this.effects[this.effects.length - 1].rotation = param4;
                              }
                              else
                              {
                                 _loc8_;
                                 if(param1 == SafeGlobal.EFFECTS_TELEPORTOUT)
                                 {
                                    this.effects.push(new §_-o5§(param2,param3));
                                    _loc8_;
                                    _loc8_;
                                    _loc8_;
                                    _loc8_;
                                    this.effects[this.effects.length - 1].init(param5.costume.spriteSheets[SafeGlobal.ANIM_UNIT_TELEPORTOUT]);
                                    _loc8_;
                                    this.effects[this.effects.length - 1].rotation = param4;
                                    this.effects[this.effects.length - 1].scaleX = param5.scaleX;
                                 }
                                 else
                                 {
                                    _loc7_;
                                    _loc7_;
                                    _loc8_;
                                    if(param1 == SafeGlobal.EFFECTS_BAZOOKAFLASH)
                                    {
                                       _loc8_;
                                       this.effects.push(new §_-Yg§(param2,param3));
                                       _loc8_;
                                       _loc8_;
                                       this.effects[this.effects.length - 1].init(this.§_-TE§[SafeGlobal.EFFECTS_BAZOOKAFLASH]);
                                       _loc8_;
                                       _loc8_;
                                       _loc8_;
                                       this.effects[this.effects.length - 1].rotation = param4;
                                       _loc8_;
                                    }
                                    else
                                    {
                                       _loc7_;
                                       _loc7_;
                                       if(param1 == SafeGlobal.EFFECTS_SUNBLAST)
                                       {
                                          this.effects.push(new §_-B§(param2,param3));
                                          _loc8_;
                                          _loc8_;
                                          _loc7_;
                                          _loc7_;
                                          _loc7_;
                                          _loc7_;
                                          this.effects[this.effects.length - 1].init(this.§_-TE§[SafeGlobal.EFFECTS_SUNBLAST]);
                                          _loc8_;
                                          this.effects[this.effects.length - 1].rotation = param4;
                                          _loc7_;
                                       }
                                       else
                                       {
                                          _loc8_;
                                          if(param1 == SafeGlobal.EFFECTS_SHIELDCOLLAPSE)
                                          {
                                             _loc8_;
                                             this.effects.push(new §_-M7§(param2,param3));
                                             _loc7_;
                                             _loc7_;
                                             _loc8_;
                                             _loc8_;
                                             this.effects[this.effects.length - 1].init(this.§_-TE§[SafeGlobal.EFFECTS_SHIELDCOLLAPSE]);
                                             _loc8_;
                                             _loc8_;
                                             _loc8_;
                                             this.effects[this.effects.length - 1].rotation = param4;
                                          }
                                          else
                                          {
                                             _loc8_;
                                             _loc8_;
                                             if(param1 == SafeGlobal.EFFECTS_SHIELDDISSOLVECOLLAPSE)
                                             {
                                                _loc8_;
                                                _loc8_;
                                                this.effects.push(new §_-Ph§(param2,param3));
                                                _loc8_;
                                                _loc8_;
                                                _loc8_;
                                                _loc8_;
                                                this.effects[this.effects.length - 1].init(this.§_-TE§[SafeGlobal.EFFECTS_SHIELDDISSOLVECOLLAPSE]);
                                                _loc8_;
                                                _loc8_;
                                                this.effects[this.effects.length - 1].rotation = param4;
                                             }
                                             else if(param1 == SafeGlobal.EFFECTS_SHIELDSPAWN)
                                             {
                                                _loc8_;
                                                this.effects.push(new §_-ZM§(param2,param3));
                                                this.effects[this.effects.length - 1].init(this.§_-TE§[SafeGlobal.EFFECTS_SHIELDSPAWN]);
                                                _loc8_;
                                                _loc8_;
                                                this.effects[this.effects.length - 1].rotation = param4;
                                             }
                                             else
                                             {
                                                _loc8_;
                                                if(param1 == SafeGlobal.EFFECTS_SHIELDDISSOLVESPAWN)
                                                {
                                                   _loc7_;
                                                   _loc7_;
                                                   this.effects.push(new §_-nu§(param2,param3));
                                                   _loc7_;
                                                   _loc8_;
                                                   _loc7_;
                                                   _loc7_;
                                                   this.effects[this.effects.length - 1].init(this.§_-TE§[SafeGlobal.EFFECTS_SHIELDDISSOLVESPAWN]);
                                                   _loc8_;
                                                   _loc8_;
                                                   _loc8_;
                                                   _loc8_;
                                                   this.effects[this.effects.length - 1].rotation = param4;
                                                }
                                                else if(param1 == SafeGlobal.§_-5o§)
                                                {
                                                   _loc8_;
                                                   _loc8_;
                                                   _loc7_;
                                                   this.effects.push(new §_-tQ§(param2,param3));
                                                   _loc7_;
                                                   this.effects[this.effects.length - 1].init(param5.costume.spriteSheets[SafeGlobal.ANIM_UNIT_TAZED]);
                                                   param5.newAnimState([SafeGlobal.ANIM_UNIT_TAZED]);
                                                   _loc8_;
                                                   _loc7_;
                                                   _loc7_;
                                                   _loc8_;
                                                   _loc8_;
                                                   this.effects[this.effects.length - 1].rotation = param4;
                                                   _loc8_;
                                                   _loc8_;
                                                   _loc8_;
                                                   this.effects[this.effects.length - 1].scaleX = param5.scaleX;
                                                }
                                                else
                                                {
                                                   _loc8_;
                                                   if(param1 == SafeGlobal.§_-jS§)
                                                   {
                                                      _loc8_;
                                                      this.effects.push(new §_-yh§(param2,param3));
                                                      _loc8_;
                                                      _loc7_;
                                                      _loc7_;
                                                      _loc8_;
                                                      _loc8_;
                                                      this.effects[this.effects.length - 1].init(this.§_-TE§[SafeGlobal.§_-jS§]);
                                                      _loc8_;
                                                      _loc8_;
                                                      this.effects[this.effects.length - 1].rotation = param4;
                                                   }
                                                }
                                                
                                             }
                                             
                                          }
                                       }
                                    }
                                 }
                              }
                              
                              
                           }
                        }
                     }
                  }
               }
               
            }
            
            
            this.effects[this.effects.length - 1].type = param1;
            this.§_-8u§.addChild(this.effects[this.effects.length - 1]);
            this.camera.addTarget(this.effects[this.effects.length - 1],30,"effect addeffect " + param1);
            _loc8_;
            _loc8_;
         }
         else if(this.costumeCacheOnly)
         {
            _loc8_;
            _loc8_;
            _loc8_;
            if(param1 == SafeGlobal.EFFECTS_UNITHITBOUNCESHIELD)
            {
               _loc8_;
               _loc8_;
               param5.newAnimState([SafeGlobal.ANIM_UNIT_BOUNCESHIELDDEATH]);
               _loc8_;
            }
            else
            {
               _loc7_;
               _loc7_;
               if(param1 == SafeGlobal.EFFECTS_UNITHITDISSOLVESHIELD)
               {
                  param5.newAnimState([SafeGlobal.ANIM_UNIT_DISSOLVESHIELDDEATH]);
               }
               else
               {
                  _loc7_;
                  if(param1 == SafeGlobal.§_-5o§)
                  {
                     param5.newAnimState([SafeGlobal.ANIM_UNIT_TAZED]);
                  }
                  else if(param1 == SafeGlobal.EFFECTS_TELEPORTOUT)
                  {
                     param5.newAnimState([SafeGlobal.ANIM_UNIT_TELEPORTOUT]);
                  }
                  
               }
            }
         }
         
      }
      
      public function §_-E7§(param1:§_-kl§) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc2_ = this.effects.indexOf(param1);
         if(_loc2_ != -1)
         {
            _loc4_;
            this.camera.removeTarget(this.effects[_loc2_]);
            if(this.§_-8u§.contains(this.effects[_loc2_]))
            {
               this.§_-8u§.removeChild(this.effects[_loc2_]);
            }
            this.effects.splice(_loc2_,1);
         }
      }
      
      public function §_-p4§(param1:int) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         _loc4_;
         _loc5_;
         _loc2_ = 0;
         _loc5_;
         _loc3_ = 0;
         while(true)
         {
            _loc5_;
            if(_loc3_ >= this.effects.length)
            {
               break;
            }
            if(this.effects[_loc3_].type == param1)
            {
               _loc4_;
               _loc2_++;
               _loc5_;
               _loc5_;
            }
            _loc3_++;
            _loc4_;
            _loc4_;
         }
         return _loc2_;
      }
      
      public function §_-mG§(param1:PowerUp) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc2_ = this.powerUps.indexOf(param1);
         _loc3_;
         _loc3_;
         if(_loc2_ != -1)
         {
            _loc3_;
            _loc3_;
            if(this.§_-Hf§.contains(this.powerUps[_loc2_]))
            {
               _loc4_;
               this.§_-Hf§.removeChild(this.powerUps[_loc2_]);
               _loc4_;
            }
            this.powerUps.splice(_loc2_,1);
         }
      }
      
      public function removeProjectile(param1:Projectile) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         if(param1.insidePlanet)
         {
            _loc4_;
            _loc4_;
            SoundManager.§_-xT§(SafeGlobal.FX_DRILL,param1.sound_uid);
         }
         this.screen.removeChild(param1);
         this.camera.removeTarget(param1);
         _loc3_;
         _loc3_;
         _loc2_ = this.projectiles.indexOf(param1);
         _loc4_;
         _loc4_;
         this.projectiles.splice(_loc2_,1);
         _loc3_;
         _loc3_;
         this.simManager.removeObject(param1);
      }
      
      public function removeGate(param1:Gate) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc3_;
         this.§_-zY§.removeChild(param1);
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc2_ = this.gates.indexOf(param1);
         _loc4_;
         _loc4_;
         this.gates.splice(_loc2_,1);
      }
      
      public function §_-ai§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.§_-hV§ = new CircleBorder(this.§_-3O§);
         _loc1_;
         _loc1_;
         this.screen.addChild(this.§_-hV§);
         _loc1_;
         _loc2_;
         this.§_-hV§.x = this.§_-Bf§.x;
         _loc1_;
         this.§_-hV§.y = this.§_-Bf§.y;
      }
      
      public function §_-hl§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.screen.removeChild(this.§_-hV§);
      }
      
      public function destroyGame() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         _loc3_;
         _loc3_;
         this.§_-ai§();
         removeEventListener(Event.ENTER_FRAME,this.§_-kg§);
         _loc3_;
         _loc3_;
         removeEventListener(Event.ENTER_FRAME,this.cacheLoop);
         this.starMap = null;
         _loc3_;
         _loc3_;
         stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§_-ur§);
         _loc3_;
         stage.removeEventListener(KeyboardEvent.KEY_UP,this.§_-UQ§);
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-XE§);
         _loc2_;
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-KU§);
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-7a§);
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-Tm§);
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-DK§);
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.incomingDragStop);
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-iD§);
         _loc3_;
         _loc3_;
         _loc1_ = 0;
         while(_loc1_ < this.units.length)
         {
            _loc3_;
            _loc3_;
            _loc2_;
            this.units[_loc1_].removeListeners();
            _loc1_++;
            _loc3_;
         }
         _loc3_;
         _loc3_;
         this.§_-nL§.splice(0);
         if(this.§_-UR§)
         {
            if(this.§_-sH§ != null)
            {
               this.§_-sH§.stop();
               _loc2_;
               this.§_-sH§.removeEventListener(TimerEvent.TIMER,this.callback);
               this.§_-sH§ = null;
            }
         }
         SafeGlobal.TIMELINE.destroyGame(this);
      }
      
      public function callback(param1:TimerEvent) : *
      {
      }
      
      public function finalDestroy() : *
      {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         _loc10_;
         _loc10_;
         SafeGlobal.TIMELINE.timeline.starMap.ignoreNextJump();
         _loc11_;
         _loc11_;
         _loc1_ = this.units.length - 1;
         while(_loc1_ >= 0)
         {
            this.§_-mh§.removeChild(this.units[_loc1_]);
            _loc11_;
            this.units[_loc1_].destroyMe();
            _loc11_;
            _loc11_;
            _loc10_;
            this.units.splice(_loc1_,1);
            _loc11_;
            _loc11_;
            _loc1_--;
            _loc11_;
            _loc11_;
         }
         _loc10_;
         _loc10_;
         _loc2_ = this.§_-ki§.length - 1;
         _loc10_;
         while(true)
         {
            _loc11_;
            _loc11_;
            _loc11_;
            if(_loc2_ < 0)
            {
               break;
            }
            if(this.§_-t6§.contains(this.§_-ki§[_loc2_]))
            {
               this.§_-t6§.removeChild(this.§_-ki§[_loc2_]);
            }
            _loc10_;
            this.§_-ki§[_loc2_].destroyMe();
            _loc10_;
            _loc10_;
            _loc10_;
            _loc11_;
            this.§_-ki§.splice(_loc2_,1);
            _loc10_;
            _loc10_;
            _loc2_--;
         }
         _loc10_;
         _loc11_;
         _loc3_ = this.gates.length - 1;
         while(true)
         {
            _loc11_;
            _loc11_;
            if(_loc3_ < 0)
            {
               break;
            }
            this.§_-zY§.removeChild(this.gates[_loc3_]);
            _loc11_;
            _loc11_;
            _loc11_;
            this.gates[_loc3_].destroyMe();
            _loc11_;
            _loc11_;
            this.gates.splice(_loc3_,1);
            _loc10_;
            _loc10_;
            _loc11_;
            _loc11_;
            _loc3_--;
            _loc10_;
         }
         _loc11_;
         _loc10_;
         _loc10_;
         _loc4_ = this.§_-To§.length - 1;
         while(true)
         {
            _loc10_;
            if(_loc4_ < 0)
            {
               break;
            }
            if(this.§_-7D§.contains(this.§_-To§[_loc4_]))
            {
               _loc11_;
               this.§_-7D§.removeChild(this.§_-To§[_loc4_]);
               _loc10_;
            }
            _loc11_;
            this.§_-To§[_loc4_].destroyMe();
            this.§_-To§.splice(_loc3_,1);
            _loc10_;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc11_;
            _loc4_--;
         }
         _loc10_;
         _loc10_;
         _loc11_;
         _loc11_;
         _loc5_ = this.planets.length - 1;
         while(_loc5_ >= 0)
         {
            this.§_-zY§.removeChild(this.planets[_loc5_]);
            _loc10_;
            this.planets[_loc5_].destroyMe();
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            this.planets.splice(_loc5_,1);
            _loc10_;
            _loc10_;
            _loc11_;
            _loc11_;
            _loc10_;
            _loc5_--;
         }
         _loc11_;
         _loc11_;
         _loc11_;
         _loc1_ = this.§_-N7§.length - 1;
         while(_loc1_ >= 0)
         {
            this.§_-wP§.removeChild(this.§_-N7§[_loc1_]);
            _loc10_;
            _loc10_;
            _loc10_;
            _loc11_;
            this.§_-N7§[_loc1_].destroyMe();
            this.§_-N7§.splice(_loc1_,1);
            _loc11_;
            _loc11_;
            _loc1_--;
         }
         _loc5_ = this.projectiles.length - 1;
         _loc11_;
         while(_loc5_ >= 0)
         {
            if(this.screen.contains(this.projectiles[_loc5_]))
            {
               _loc10_;
               _loc10_;
               this.screen.removeChild(this.projectiles[_loc5_]);
               _loc10_;
               _loc10_;
            }
            _loc10_;
            this.projectiles[_loc5_].destroyMe();
            _loc11_;
            _loc11_;
            _loc11_;
            this.projectiles.splice(_loc5_,1);
            _loc10_;
            _loc10_;
            _loc10_;
            _loc5_--;
         }
         _loc10_;
         _loc10_;
         _loc6_ = this.teams.length - 1;
         _loc11_;
         _loc11_;
         while(true)
         {
            _loc11_;
            if(_loc6_ < 0)
            {
               break;
            }
            _loc10_;
            _loc10_;
            _loc11_;
            _loc11_;
            this.teams[_loc6_].destroyMe();
            _loc11_;
            _loc11_;
            _loc10_;
            this.teams.splice(_loc6_,1);
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc6_--;
         }
         _loc10_;
         _loc10_;
         _loc7_ = this.barrels.length - 1;
         _loc11_;
         while(_loc7_ >= 0)
         {
            if(this.§_-dK§.contains(this.barrels[_loc7_]))
            {
               this.§_-dK§.removeChild(this.barrels[_loc7_]);
            }
            _loc10_;
            _loc10_;
            _loc11_;
            _loc11_;
            this.barrels[_loc7_].destroyMe();
            _loc10_;
            _loc11_;
            _loc11_;
            this.barrels.splice(_loc7_,1);
            _loc10_;
            _loc7_--;
         }
         _loc10_;
         _loc10_;
         _loc10_;
         _loc5_ = this.powerUps.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§_-Hf§.contains(this.powerUps[_loc5_]))
            {
               this.§_-Hf§.removeChild(this.powerUps[_loc5_]);
            }
            _loc11_;
            _loc11_;
            this.powerUps[_loc5_].destroyMe();
            _loc10_;
            _loc11_;
            _loc11_;
            _loc10_;
            this.powerUps.splice(_loc5_,1);
            _loc5_--;
         }
         _loc11_;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc8_ = this.statuses.length - 1;
         _loc11_;
         _loc11_;
         while(true)
         {
            _loc11_;
            if(_loc8_ < 0)
            {
               break;
            }
            if(this.statusBar.contains(this.statuses[_loc8_]))
            {
               _loc10_;
               _loc10_;
               this.statusBar.removeChild(this.statuses[_loc8_]);
               _loc11_;
            }
            this.statuses[_loc8_].destroyMe();
            _loc10_;
            _loc10_;
            _loc10_;
            _loc11_;
            _loc11_;
            this.statuses.splice(_loc8_,1);
            _loc10_;
            _loc8_--;
         }
         _loc11_;
         _loc2_ = this.§_-9T§.length - 1;
         while(true)
         {
            _loc11_;
            _loc11_;
            if(_loc2_ < 0)
            {
               break;
            }
            _loc10_;
            _loc11_;
            this.§_-9T§[_loc2_].destroyMe();
            _loc11_;
            _loc11_;
            _loc10_;
            _loc10_;
            this.§_-9T§.splice(_loc2_,1);
            _loc10_;
            _loc2_--;
            _loc11_;
            _loc11_;
         }
         _loc10_;
         _loc10_;
         _loc10_;
         _loc4_ = this.effects.length - 1;
         while(_loc4_ >= 0)
         {
            this.§_-8u§.removeChild(this.effects[_loc4_]);
            _loc11_;
            this.effects[_loc4_].destroyMe();
            _loc10_;
            _loc10_;
            _loc11_;
            this.effects.splice(_loc4_,1);
            _loc11_;
            _loc4_--;
         }
         _loc11_;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc7_ = this.§_-Sn§.length - 1;
         while(_loc7_ >= 0)
         {
            this.§_-Sn§[_loc7_].destroyMe();
            _loc10_;
            this.§_-Sn§.splice(_loc7_,1);
            _loc10_;
            _loc10_;
            _loc10_;
            _loc7_--;
            _loc10_;
            _loc10_;
         }
         _loc10_;
         _loc10_;
         _loc11_;
         _loc9_ = this.damage.length - 1;
         _loc10_;
         _loc10_;
         while(_loc9_ >= 0)
         {
            this.screen.removeChild(this.damage[_loc9_]);
            _loc10_;
            this.damage[_loc9_].destroyMe();
            _loc10_;
            _loc10_;
            this.damage.splice(_loc9_,1);
            _loc9_--;
         }
         _loc10_;
         _loc10_;
         SafeGlobal.GAME = null;
      }
      
      public function §_-sW§(param1:Point, param2:Point, param3:Point, param4:Point, param5:Boolean = true) : §_-Sc§
      {
         var _loc27_:* = true;
         var _loc28_:* = false;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:* = NaN;
         var _loc26_:§_-Sc§ = null;
         if(param1.x > param2.x)
         {
            _loc27_;
            _loc27_;
            _loc6_ = param2.x;
            _loc28_;
            _loc28_;
            _loc28_;
            _loc28_;
            _loc7_ = param1.x;
            _loc27_;
         }
         else
         {
            _loc27_;
            _loc27_;
            _loc6_ = param1.x;
            _loc27_;
            _loc7_ = param2.x;
            _loc27_;
         }
         if(param3.x > param4.x)
         {
            _loc10_ = param4.x;
            _loc27_;
            _loc27_;
            _loc11_ = param3.x;
            _loc28_;
            _loc28_;
         }
         else
         {
            _loc10_ = param3.x;
            _loc28_;
            _loc28_;
            _loc11_ = param4.x;
            _loc28_;
         }
         if(param1.y > param2.y)
         {
            _loc8_ = param2.y;
            _loc27_;
            _loc27_;
            _loc9_ = param1.y;
         }
         else
         {
            _loc8_ = param1.y;
            _loc9_ = param2.y;
            _loc27_;
            _loc27_;
         }
         if(param3.y > param4.y)
         {
            _loc27_;
            _loc27_;
            _loc12_ = param4.y;
            _loc27_;
            _loc27_;
            _loc13_ = param3.y;
            _loc28_;
         }
         else
         {
            _loc27_;
            _loc12_ = param3.y;
            _loc13_ = param4.y;
         }
         _loc28_;
         _loc28_;
         _loc28_;
         _loc27_;
         if(_loc7_ < _loc10_ || _loc11_ < _loc6_ || _loc9_ < _loc12_ || _loc13_ < _loc8_)
         {
            _loc27_;
            return null;
         }
         _loc27_;
         _loc27_;
         _loc14_ = param2.y - param1.y;
         _loc28_;
         _loc28_;
         _loc27_;
         _loc27_;
         _loc16_ = param1.x - param2.x;
         _loc28_;
         _loc28_;
         _loc18_ = param2.x * param1.y - param1.x * param2.y;
         _loc28_;
         _loc28_;
         _loc15_ = param4.y - param3.y;
         _loc28_;
         _loc27_;
         _loc27_;
         _loc17_ = param3.x - param4.x;
         _loc27_;
         _loc27_;
         _loc19_ = param4.x * param3.y - param3.x * param4.y;
         _loc28_;
         _loc28_;
         _loc27_;
         _loc28_;
         _loc27_;
         _loc27_;
         _loc20_ = _loc14_ * _loc17_ - _loc15_ * _loc16_;
         if((_loc14_ * _loc17_ - _loc15_ * _loc16_) == 0)
         {
            _loc28_;
            _loc28_;
            return null;
         }
         _loc28_;
         _loc28_;
         _loc28_;
         _loc28_;
         _loc21_ = Math.floor((_loc16_ * _loc19_ - _loc17_ * _loc18_) / _loc20_ * 100000) / 100000;
         _loc28_;
         _loc28_;
         _loc27_;
         _loc27_;
         _loc22_ = Math.floor((_loc15_ * _loc18_ - _loc14_ * _loc19_) / _loc20_ * 100000) / 100000;
         _loc27_;
         if(param5)
         {
            _loc27_;
            _loc27_;
            _loc27_;
            _loc27_;
            _loc28_;
            _loc27_;
            _loc27_;
            _loc28_;
            _loc28_;
            _loc28_;
            _loc28_;
            _loc28_;
            _loc27_;
            _loc27_;
            _loc27_;
            if((_loc21_ - param2.x) * (_loc21_ - param2.x) + (_loc22_ - param2.y) * (_loc22_ - param2.y) > (param1.x - param2.x) * (param1.x - param2.x) + (param1.y - param2.y) * (param1.y - param2.y))
            {
               _loc28_;
               _loc28_;
               return null;
            }
            _loc27_;
            _loc28_;
            _loc27_;
            _loc27_;
            _loc27_;
            _loc27_;
            _loc28_;
            if((_loc21_ - param1.x) * (_loc21_ - param1.x) + (_loc22_ - param1.y) * (_loc22_ - param1.y) > (param1.x - param2.x) * (param1.x - param2.x) + (param1.y - param2.y) * (param1.y - param2.y))
            {
               _loc28_;
               _loc28_;
               _loc27_;
               return null;
            }
            _loc27_;
            _loc27_;
            _loc27_;
            _loc28_;
            _loc27_;
            _loc27_;
            _loc28_;
            _loc28_;
            _loc28_;
            _loc28_;
            _loc28_;
            _loc28_;
            if((_loc21_ - param4.x) * (_loc21_ - param4.x) + (_loc22_ - param4.y) * (_loc22_ - param4.y) > (param3.x - param4.x) * (param3.x - param4.x) + (param3.y - param4.y) * (param3.y - param4.y))
            {
               _loc28_;
               _loc28_;
               _loc28_;
               return null;
            }
            _loc27_;
            _loc27_;
            _loc27_;
            _loc27_;
            _loc28_;
            _loc28_;
            _loc27_;
            _loc27_;
            _loc28_;
            _loc27_;
            _loc27_;
            _loc27_;
            _loc27_;
            if((_loc21_ - param3.x) * (_loc21_ - param3.x) + (_loc22_ - param3.y) * (_loc22_ - param3.y) > (param3.x - param4.x) * (param3.x - param4.x) + (param3.y - param4.y) * (param3.y - param4.y))
            {
               _loc28_;
               _loc28_;
               return null;
            }
         }
         _loc27_;
         _loc27_;
         _loc23_ = param2.x - param1.x;
         _loc27_;
         _loc27_;
         _loc28_;
         _loc27_;
         _loc24_ = param2.y - param1.y;
         _loc25_ = Math.floor(Math.atan2(_loc24_,_loc23_) * 100000) / 100000;
         _loc26_ = new §_-Sc§();
         _loc26_.x = _loc21_;
         _loc27_;
         _loc27_;
         _loc26_.y = _loc22_;
         _loc28_;
         _loc28_;
         _loc26_.angle = _loc25_;
         return _loc26_;
      }
      
      public function §_-yl§(param1:Number) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = NaN;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc2_ = Math.floor(param1 * 100000) / 100000;
         return _loc2_;
      }
      
      public function finishBuildLevel() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         SafeGlobal.game_client.sendSetupReady();
      }
      
      public function swapLobbyToGame() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-3o§();
         _loc2_;
         _loc2_;
         SafeGlobal.TIMELINE.removeLobbyGameDisplay();
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         SoundManager.§_-wF§(SafeGlobal.FX_TELEPORT,(this.simOnly) || (this.costumeCacheOnly));
      }
      
      public function sendUpdateCache(param1:Number) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         SafeGlobal.game_client.sendUpdateCache(param1);
      }
      
      public function updatePlayerCache(param1:int, param2:Number) : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:* = false;
         var _loc4_:* = 0;
         _loc5_;
         _loc5_;
         _loc5_;
         if(this.§_-5H§.length > param1)
         {
            _loc6_;
            this.§_-5H§[param1].width = 800 * param2;
            _loc6_;
            _loc3_ = true;
            _loc5_;
            _loc4_ = 0;
            while(_loc4_ < this.teams.length)
            {
               if(this.§_-5H§[_loc4_].width < 800)
               {
                  _loc6_;
                  _loc6_;
                  _loc5_;
                  _loc3_ = false;
                  _loc6_;
               }
               _loc4_++;
               _loc6_;
               _loc6_;
            }
            _loc6_;
            if(_loc3_)
            {
               _loc5_;
               _loc5_;
               this.removeCacheLoadingBar();
            }
         }
      }
      
      public function sendEndOfTurn(param1:int) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         if(param1 != 0)
         {
            _loc3_;
            SafeGlobal.game_client.endOfTurn(param1);
         }
      }
      
      public function sendEndSim() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         SafeGlobal.game_client.sendEndSim(this.§_-tD§());
      }
      
      public function sendFireProjectile(param1:int, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         _loc6_;
         SafeGlobal.game_client.fireProjectile(param1,param2,param3,param4);
      }
      
      public function sendLayMine(param1:int, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         SafeGlobal.game_client.layMine(param1,param2);
      }
      
      public function sendTeleportTo(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int) : void
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         _loc8_;
         SafeGlobal.game_client.teleportTo(param1,param2,param3,param4,param5,param6);
      }
      
      public function sendStartWalk(param1:int, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc4_;
         SafeGlobal.game_client.sendStartWalk(param1,param2);
      }
      
      public function sendStopWalk(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         SafeGlobal.game_client.sendStopWalk(param1);
      }
      
      public function sendIncoming(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         SafeGlobal.game_client.incoming(param1,param2,param3);
      }
      
      public function sendMelee(param1:int, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         SafeGlobal.game_client.melee(param1,param2);
      }
      
      public function sendPlaceGate(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int = -1, param7:int = -1, param8:int = -1) : void
      {
         var _loc9_:* = false;
         var _loc10_:* = true;
         _loc9_;
         _loc9_;
         SafeGlobal.game_client.placeGate(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function sendFlashError(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         SafeGlobal.game_client.sendFlashError(param1);
      }
      
      public function sendPlacePlanetGate(param1:int, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         SafeGlobal.game_client.placePlanetGate(param1,param2);
      }
      
      public function displayYourTurn(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.showMessage("It\'s your turn",SafeGlobal.colour_hex[this.teams[param1].colourID]);
         _loc2_;
         this.selectWeapon(0);
         _loc3_;
         _loc3_;
         this.showWeaponPanelButton();
         _loc3_;
         this.§_-oN§.tweenOnWeaponName();
         _loc2_;
         _loc2_;
         this.§_-VK§(this.units[this.currentUnit]);
      }
      
      public function §_-mA§(param1:int) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc3_;
         _loc2_ = 0;
         while(_loc2_ < this.statuses.length)
         {
            _loc4_;
            if(_loc2_ == param1)
            {
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc4_;
               this.statuses[_loc2_].makeTextBig();
               _loc3_;
            }
            else
            {
               this.statuses[_loc2_].makeTextNormal();
               _loc3_;
            }
            _loc2_++;
            _loc3_;
         }
      }
      
      public function §_-mu§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-Yi§.showMe();
      }
      
      public function onCollectAmmo() : void
      {
      }
      
      public function onCollectHealth() : void
      {
      }
      
      public function onDestroyAmmo() : void
      {
      }
      
      public function onDestroyHealth() : void
      {
      }
      
      public function onShootClusterBazooka() : void
      {
      }
      
      public function onSelectClusterBazooka() : void
      {
      }
      
      public function onCancelShot() : void
      {
      }
      
      public function hideGameOverObjects() : *
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         _loc7_;
         _loc7_;
         _loc1_ = this.units.length - 1;
         while(true)
         {
            _loc7_;
            if(_loc1_ < 0)
            {
               break;
            }
            this.units[_loc1_].visible = false;
            _loc6_;
            _loc6_;
            _loc1_--;
         }
         _loc7_;
         _loc7_;
         _loc7_;
         _loc2_ = this.§_-To§.length - 1;
         while(true)
         {
            _loc7_;
            _loc7_;
            if(_loc2_ < 0)
            {
               break;
            }
            this.§_-To§[_loc2_].visible = false;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc6_;
            _loc2_--;
         }
         _loc7_;
         _loc7_;
         _loc6_;
         _loc6_;
         _loc1_ = this.§_-N7§.length - 1;
         while(_loc1_ >= 0)
         {
            this.§_-N7§[_loc1_].visible = false;
            _loc1_--;
            _loc6_;
            _loc6_;
         }
         _loc3_ = this.projectiles.length - 1;
         while(_loc3_ >= 0)
         {
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            this.projectiles[_loc3_].visible = false;
            _loc3_--;
         }
         _loc6_;
         _loc6_;
         _loc7_;
         _loc3_ = this.powerUps.length - 1;
         while(true)
         {
            _loc7_;
            if(_loc3_ < 0)
            {
               break;
            }
            this.powerUps[_loc3_].visible = false;
            _loc7_;
            _loc7_;
            _loc3_--;
         }
         _loc7_;
         _loc7_;
         _loc4_ = this.§_-9T§.length - 1;
         while(true)
         {
            _loc7_;
            if(_loc4_ < 0)
            {
               break;
            }
            this.§_-9T§[_loc4_].visible = false;
            _loc7_;
            _loc6_;
            _loc4_--;
         }
         _loc7_;
         _loc7_;
         _loc6_;
         _loc2_ = this.effects.length - 1;
         while(true)
         {
            _loc7_;
            _loc6_;
            if(_loc2_ < 0)
            {
               break;
            }
            this.effects[_loc2_].visible = false;
            _loc2_--;
         }
         _loc7_;
         _loc5_ = this.damage.length - 1;
         _loc7_;
         while(_loc5_ >= 0)
         {
            this.damage[_loc5_].visible = false;
            _loc5_--;
         }
      }
   }
}
