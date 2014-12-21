package §_-JH§
{
   import flash.display.MovieClip;
   import com.funkypear.ui.StarMap;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import com.funkypear.ui.CircleBorder;
   import §_-bY§.WeaponPanelButton;
   import flash.display.Bitmap;
   import flash.utils.Timer;
   import fl.transitions.Tween;
   import §_-bY§.§_-4m§;
   import flash.events.UncaughtErrorEvent;
   import §_-SQ§.*;
   import §_-1u§.*;
   import §_-9X§.*;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   import flash.geom.Matrix;
   import flash.display.StageQuality;
   import flash.events.KeyboardEvent;
   import §_-4M§.SoundManager;
   import fl.transitions.TweenEvent;
   import flash.geom.ColorTransform;
   import §_-bk§.§_-pM§;
   import §_-bk§.§_-Kw§;
   import flash.utils.getDefinitionByName;
   import §_-bk§.§_-nx§;
   import §_-1Q§.MD5;
   import flash.events.TimerEvent;
   
   public class Game extends MovieClip
   {
      
      public function Game(param1:String, param2:String, param3:String, param4:String)
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         this.planets = [];
         this.units = [];
         this.§_-Nb§ = [];
         _loc6_;
         this.projectiles = [];
         _loc5_;
         _loc5_;
         this.§_-pf§ = [];
         this.gates = [];
         _loc6_;
         _loc6_;
         this.§_-KM§ = [];
         _loc5_;
         _loc5_;
         this.skyMines = [];
         this.teams = [];
         this.barrels = [];
         this.powerUps = [];
         this.statuses = [];
         this.§_-B4§ = [];
         this.effects = [];
         this.§_-05§ = [];
         this.damage = [];
         _loc5_;
         _loc5_;
         this.starMap = SafeGlobal.TIMELINE.timeline.starMap;
         this.§_-h2§ = [];
         _loc6_;
         _loc6_;
         this.messageQueue = [];
         this.stock = [];
         this.§_-5P§ = [];
         this.§_-fI§ = [];
         _loc6_;
         this.mods = [];
         _loc6_;
         this.§_-f§ = [];
         this.§_-W1§ = new §_-Vc§();
         _loc6_;
         this.§_-O-§ = new §_-bH§();
         this.§_-na§ = new §_-0-H§();
         _loc6_;
         _loc6_;
         this.§_-Xu§ = new §_-0Y§();
         _loc6_;
         this.§_-Ke§ = new Point(-1,-1);
         this.§_-wr§ = new §_-oH§(new §_-N6§());
         this.§_-oL§ = new §_-TN§(new §_-7e§());
         _loc5_;
         _loc5_;
         this.§_-9N§ = new Array(new §_-TN§(new AssetBarrel()));
         _loc6_;
         _loc6_;
         this.explosionBitmaps = [];
         this.burnBitmaps = [];
         this.§_-EZ§ = [];
         this.§_-Cw§ = new Array(new §_-TN§(new §_-ge§()));
         this.§_-YZ§ = new Array(new §_-TN§(new §_-8s§()),new §_-TN§(new §_-kS§()),new §_-TN§(new §_-FK§()),new §_-TN§(new §_-SJ§()),new §_-TN§(new §_-Xz§()),new §_-TN§(new §_-yW§()),new §_-TN§(new §_-Kc§()),new §_-TN§(new §_-fA§()),new §_-TN§(new §_-Ks§()),new §_-TN§(new §_-cL§()),new §_-TN§(new §_-XJ§()),new §_-TN§(new §_-1z§()),new §_-TN§(new §_-Kc§()),new §_-TN§(new §_-Kc§()),new §_-TN§(new §_-Kc§()),new §_-TN§(new §_-Kc§()));
         _loc5_;
         this.§_-vT§ = new Array();
         _loc5_;
         _loc5_;
         this.§_-jM§ = new Array(new §_-TN§(new §_-2n§()),new §_-TN§(new §_-2n§()),new §_-TN§(new §_-sz§()),new §_-TN§(new §_-tk§()),new §_-TN§(new §_-2n§()),new §_-TN§(new §_-ws§()),new §_-TN§(new §_-DC§()),new §_-TN§(new §_-Mm§()),new §_-TN§(new §_-I4§()),new §_-TN§(new §_-mG§()),new §_-TN§(new §_-hj§()),new §_-TN§(new §_-EG§()),new §_-TN§(new §_-2n§()),new §_-TN§(new §_-85§()),new §_-TN§(new §_-Dh§()),new §_-TN§(new §_-l8§()),new §_-TN§(new §_-Sm§()),new §_-TN§(new §_-Xj§()),new §_-TN§(new §_-5§()),null,new §_-TN§(new §_-A8§()));
         _loc5_;
         _loc5_;
         this.§_-wa§ = new Array(new §_-TN§(new §_-PC§()),new §_-TN§(new §_-KX§()));
         this.§_-HT§ = new Array(new §_-TN§(new AssetStandardMine()),new §_-TN§(new AssetClusterMine()),new §_-TN§(new AssetDrillMine()),new §_-TN§(new §_-SB§()),new §_-TN§(new §_-Zl§()),new §_-TN§(new §_-pR§()));
         this.§_-WL§ = new Array(new §_-TN§(new AssetShield()),new §_-TN§(new AssetDissolveShield()));
         this.wormholeGFX = new Array(new §_-TN§(new §_-Xq§()),new §_-TN§(new §_-71§()));
         this.projGFX = new Array(new §_-TN§(new ProjectileGraphic(0,10)),new §_-TN§(new ProjectileGraphic(0,13)),new §_-TN§(new ProjectileGraphic(11,10)),new §_-TN§(new §_-pS§()),new §_-TN§(new §_-11§()),null,null,null,new §_-TN§(new ProjectileGraphic(2,14)),new §_-TN§(new ProjectileGraphic(4,10)),new §_-TN§(new §_-VH§()),new §_-TN§(new § null§()),new §_-TN§(new ProjectileGraphic(2,10)),new §_-TN§(new AssetStandardMine()),new §_-TN§(new AssetDrillMine()),new §_-TN§(new AssetClusterMine()),new §_-TN§(new §_-WN§()),new §_-TN§(new §_-fD§()),new §_-TN§(new ProjectileGraphic(4,14)),new §_-TN§(new §_-YX§()),new §_-TN§(new §_-fD§()),null,null,new §_-TN§(new ProjectileGraphic(7,13)),null,null,null,new §_-TN§(new ProjectileGraphic(6,12)),null,new §_-TN§(new ProjectileGraphic(1,12)),new §_-TN§(new §_-vd§()),null,new §_-TN§(new ProjectileGraphic(2,13)),new §_-TN§(new ProjectileGraphic(7,14)),null,new §_-TN§(new §_-hi§()),new §_-TN§(new §_-h-§()),null,new §_-TN§(new ProjectileGraphic(5,12)),null,null,null,null,null,null,new §_-TN§(new §_-9D§()),new §_-TN§(new §_-9D§()),new §_-TN§(new ProjectileGraphic(0,10)),null,new §_-TN§(new §_-v9§()),null,new §_-TN§(new §_-O4§()));
         this.particleGFX = [new ParticleGraphic(new §_-PO§(),[16,1,0.5,0.2,0,16777215,16777215]),new ParticleGraphic(new ParticleWhite5(),[10,0.18,0.05,0.8,0.1,13421772,6710886]),new ParticleGraphic(new ParticleWhite5(),[10,0.18,0.6,0.4,0,13421772,6710886]),new ParticleGraphic(new ParticleWhite5(),[10,0.18,0.6,0.4,0,16777215,16777215]),new ParticleGraphic(new ParticleWhite5(),[16,1,0.1,0.4,0.1,16750848,3355443]),new ParticleGraphic(new ParticleWhite6(),[16,1,0.1,0.4,0.1,16750848,3355443]),new ParticleGraphic(new ParticleWhite7(),[16,1,0.1,0.4,0.1,16750848,3355443])];
         this.customParticleGFX = [];
         this.customProjectileGFX = [];
         this.§_-Us§ = [];
         this.§_-wC§ = new §_-TN§(new AssetSkyMine());
         _loc6_;
         _loc6_;
         this.bubbles = new §_-DO§();
         this.chat = new ChatSystem();
         _loc5_;
         _loc5_;
         this.§_-wl§ = [];
         this.§_-OZ§ = SafeGlobal.CLEANUP_NONE;
         _loc6_;
         this.§_-ct§ = [];
         this.§_-Ho§ = new §_-4f§();
         this.§_-KB§ = new §_-nH§();
         this.dot1rect = new Rectangle(0,0,8,8);
         this.dot2rect = new Rectangle(8,0,8,8);
         _loc5_;
         _loc5_;
         this.dot3rect = new Rectangle(16,0,8,8);
         this.dot4rect = new Rectangle(24,0,8,8);
         this.dot5rect = new Rectangle(32,0,8,8);
         _loc5_;
         this.§_-k6§ = new BitmapData(8,8,true,0);
         this.§_-X6§ = [];
         _loc6_;
         this.§_-TK§ = new §_-jV§();
         this.§_-Bb§ = new §_-pT§();
         this.§_-mj§ = new Point(0,0);
         _loc5_;
         this.§_-Um§ = new Rectangle();
         this.§_-uJ§ = new Point();
         this.§_-pp§ = new Point(0,0);
         _loc6_;
         _loc6_;
         this.§_-lq§ = new Point(0,0);
         this.tempProj1Point = new Point();
         this.tempProj2Point = new Point();
         this.tempProj3Point = new Point();
         _loc6_;
         _loc6_;
         this.tempProj4Point = new Point();
         _loc5_;
         this.tempGateCollPoint1 = new Point();
         this.tempGateCollPoint2 = new Point();
         this.tempGateCollPoint3 = new Point();
         _loc6_;
         this.§_-sY§ = new Rectangle(0,0,1,1);
         this.§_-Zq§ = new Point(0,0);
         this.§_-kc§ = new Rectangle(0,0,0,0);
         _loc6_;
         _loc6_;
         this.§_-E7§ = new Point(0,0);
         _loc5_;
         this.§_-D0§ = new Projectile(0,0,0,0,0,false,5,[]);
         this.§_-jA§ = new §_-Pk§();
         _loc5_;
         this.§_-pa§ = new §_-zS§();
         this.point1A = new Point(0,0);
         _loc5_;
         _loc5_;
         this.point1B = new Point(0,0);
         this.point2A = new Point(0,0);
         this.point2B = new Point(0,0);
         _loc5_;
         _loc5_;
         this.camera = new Camera();
         _loc6_;
         _loc6_;
         this.§_-7X§ = new §_-N3§();
         _loc6_;
         _loc6_;
         this.simManager = new SimManager(this.turnTime,this.§_-Kp§);
         _loc6_;
         this.§_-Jz§ = new TurnTimer(this.turnTime,this.§_-Kp§);
         _loc6_;
         this.§_-QM§ = [];
         this.§_-si§ = [];
         _loc5_;
         _loc5_;
         this.§_-yD§ = new Point(0,0);
         this.§_-M-§ = new Point(0,0);
         _loc6_;
         _loc6_;
         this.arenaRadius2 = this.§_-nP§ * this.§_-nP§;
         this.§_-Sr§ = new Point(this.§_-nP§,this.§_-nP§);
         _loc5_;
         _loc5_;
         this.currentWeapon = SafeGlobal.WEAPONINFO_BAZOOKA[0];
         _loc6_;
         _loc6_;
         this.§_-qH§ = SafeGlobal.WEAPONINFO_BAZOOKA;
         this.screen = new MovieClip();
         _loc5_;
         this.§_-pn§ = new MovieClip();
         this.§_-wd§ = new Sprite();
         this.§_-Fp§ = new Sprite();
         this.§_-Ib§ = new Sprite();
         _loc6_;
         _loc6_;
         this.§_-0h§ = new Sprite();
         this.§_-vb§ = new Sprite();
         this.§_-vF§ = new Sprite();
         _loc6_;
         _loc6_;
         this.§_-Pm§ = new Sprite();
         this.§_-p7§ = new Sprite();
         this.§_-2p§ = new Sprite();
         this.§_-Ds§ = new Sprite();
         this.debugLayer = new Sprite();
         this.§_-RB§ = new Sprite();
         _loc6_;
         _loc6_;
         this.statusBar = new Sprite();
         _loc6_;
         _loc6_;
         this.§_-SW§ = new §_-4m§();
         _loc6_;
         super();
         SafeGlobal.GAME = this;
         _loc6_;
         this.§_-ET§ = getTimer();
         _loc6_;
         _loc6_;
         this.levelData = param1;
         _loc6_;
         _loc6_;
         this.§_-o5§ = param2;
         this.modData = param3;
         this.stockData = param4;
         if(stage)
         {
            _loc6_;
            this.addedToStage();
            _loc5_;
            _loc5_;
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
            _loc6_;
         }
         this.starMap.ignoreNextJump();
      }
      
      public var §_-xt§:Boolean = false;
      
      public var planets:Array;
      
      public var units:Array;
      
      public var §_-Nb§:Array;
      
      public var projectiles:Array;
      
      public var §_-pf§:Array;
      
      public var gates:Array;
      
      public var §_-KM§:Array;
      
      public var skyMines:Array;
      
      public var teams:Array;
      
      public var barrels:Array;
      
      public var powerUps:Array;
      
      public var statuses:Array;
      
      public var §_-B4§:Array;
      
      public var effects:Array;
      
      public var §_-05§:Array;
      
      public var damage:Array;
      
      public var §_-Xa§:int = 0;
      
      public var starMap:StarMap;
      
      public var §_-h2§:Array;
      
      public var messageQueue:Array;
      
      public var stock:Array;
      
      public var §_-5P§:Array;
      
      public var §_-fI§:Array;
      
      public var mods:Array;
      
      public var §_-f§:Array;
      
      public var §_-ME§:Number = 5000;
      
      public var §_-ok§:Number = 5000;
      
      public var §_-bI§:Number = -5000;
      
      public var §_-rN§:Number = -5000;
      
      public var §_-rH§:Number;
      
      public var §_-WD§:Number;
      
      public var §_-2M§:Sprite;
      
      public var §_-nD§:Boolean = false;
      
      public var §_-W1§:§_-Vc§;
      
      public var §_-O-§:§_-bH§;
      
      public var §_-na§:§_-0-H§;
      
      public var §_-Xu§:§_-0Y§;
      
      public var §_-Ke§:Point;
      
      public var §_-3o§:Boolean = false;
      
      public var §_-hM§:Boolean = false;
      
      public var §_-jd§:int;
      
      public var §_-Jg§:int;
      
      public var §_-5D§:int = 14;
      
      public var §_-un§:int = 0;
      
      public var §_-i-§:Boolean = false;
      
      public var simOnly:Boolean = false;
      
      public var costumeCacheOnly:Boolean = false;
      
      public var replay:Boolean = false;
      
      public var §_-sL§:int = 0;
      
      public var §_-nv§:int = 0;
      
      public var §_-U7§:int = 0;
      
      public var §_-tO§:int = 0;
      
      public var §_-Vm§:Boolean = false;
      
      public var §_-qI§:Boolean = false;
      
      public var §_-wr§:§_-oH§;
      
      public var §_-oL§:§_-TN§;
      
      public var §_-9N§:Array;
      
      public var explosionBitmaps:Array;
      
      public var burnBitmaps:Array;
      
      public var §_-EZ§:Array;
      
      public var §_-Cw§:Array;
      
      public var §_-YZ§:Array;
      
      public var §_-vT§:Array;
      
      public var §_-jM§:Array;
      
      public var §_-wa§:Array;
      
      public var §_-HT§:Array;
      
      public var §_-WL§:Array;
      
      public var wormholeGFX:Array;
      
      public var projGFX:Array;
      
      public var particleGFX:Array;
      
      public var customParticleGFX:Array;
      
      public var customProjectileGFX:Array;
      
      public var §_-Us§:Array;
      
      public var §_-wC§:§_-TN§;
      
      public var bubbles:§_-DO§;
      
      public var chat:ChatSystem;
      
      public var §_-wl§:Array;
      
      public var §_-OZ§:int;
      
      public var §_-ct§:Array;
      
      public var §_-Ho§:§_-4f§;
      
      public var §_-KB§:BitmapData;
      
      public var dot1rect:Rectangle;
      
      public var dot2rect:Rectangle;
      
      public var dot3rect:Rectangle;
      
      public var dot4rect:Rectangle;
      
      public var dot5rect:Rectangle;
      
      public var §_-P7§:int = 4;
      
      public var §_-k6§:BitmapData;
      
      public var §_-X6§:Array;
      
      public var §_-Z3§:CircleBorder;
      
      public var §_-TK§:§_-jV§;
      
      public var §_-Bb§:§_-pT§;
      
      public var §_-mj§:Point;
      
      public var §_-Um§:Rectangle;
      
      public var §_-uJ§:Point;
      
      public var §_-pp§:Point;
      
      public var §_-lq§:Point;
      
      public var tempProj1Point:Point;
      
      public var tempProj2Point:Point;
      
      public var tempProj3Point:Point;
      
      public var tempProj4Point:Point;
      
      public var tempGateCollPoint1:Point;
      
      public var tempGateCollPoint2:Point;
      
      public var tempGateCollPoint3:Point;
      
      public var §_-sY§:Rectangle;
      
      public var §_-Zq§:Point;
      
      public var §_-kc§:Rectangle;
      
      public var §_-E7§:Point;
      
      public var §_-D0§:Projectile;
      
      public var §_-aF§:Boolean = false;
      
      public var §_-BW§:Boolean = false;
      
      public var §_-Z7§:Boolean = false;
      
      public var §_-re§:Boolean = false;
      
      public var §_-jA§:§_-Pk§;
      
      public var §_-pa§:§_-zS§;
      
      public var §_-Gn§:Number = 0.37;
      
      public var §_-CO§:Number = 0.003;
      
      public var §_-j6§:Number = 2;
      
      public var §_-g1§:Boolean = false;
      
      public var point1A:Point;
      
      public var point1B:Point;
      
      public var point2A:Point;
      
      public var point2B:Point;
      
      public var §_-fz§:String = "";
      
      public var summaryShown:Boolean = false;
      
      public var §_-dk§:int = 0;
      
      public var §_-Ob§:int = 0;
      
      public var summaryDamageDealt:int = 0;
      
      public var summaryDamageTaken:int = 0;
      
      public var §_-i7§:int = 0;
      
      public var §_-pc§:int = 0;
      
      public var § true§:int = 0;
      
      public var §_-Qp§:int = 0;
      
      public var §_-lc§:int = 0;
      
      public var §_-MA§:int = 0;
      
      public var §_-L-§:int = 0;
      
      public var §_-lQ§:int = 0;
      
      public var §_-nU§:int = 0;
      
      public var §_-9-§:int = 0;
      
      public var summaryHealthDealt:int = 0;
      
      public var summaryHealthTaken:int = 0;
      
      public var §_-Nt§:int = 0;
      
      public var summaryDamageSelf:int = 0;
      
      public var §_-o1§:int = 0;
      
      public var §function§:int = 0;
      
      public var camera:Camera;
      
      public var §_-7X§:§_-N3§;
      
      public var weaponPanel:WeaponPanel;
      
      public var §_-5K§:WeaponPanelButton;
      
      public var §_-gI§:BitmapData;
      
      public var §_-5t§:Bitmap;
      
      public var §_-d3§:int = 0;
      
      public var §_-Pi§:int = 150;
      
      public var turnTime:int = 30000;
      
      public var §_-Kp§:int = 3000;
      
      public var §_-2Q§:int = -1;
      
      public var §_-vy§:int = -1;
      
      public var simManager:SimManager;
      
      public var §_-Jz§:TurnTimer;
      
      public var myTurn:Boolean = false;
      
      public var §_-Y8§:int = 0;
      
      public var §_-MT§:int = 0;
      
      public var currentTime:int = 0;
      
      public var turnState:String = "begin";
      
      public var timeStep:int = 20;
      
      public var §_-rR§:int = 5000;
      
      public var §_-QM§:Array;
      
      public var §_-1R§:int = 0;
      
      public var §_-si§:Array;
      
      public var dragging:Boolean = false;
      
      public var §_-yD§:Point;
      
      public var §_-M-§:Point;
      
      public var §_-QI§:Boolean = false;
      
      public var §_-Wz§:Point;
      
      public var §_-sK§:int = 0;
      
      protected var §_-GV§:Timer;
      
      public var §_-WT§:Boolean = false;
      
      public var §_-2R§:Number = 0;
      
      public var §_-M8§:Number = 0;
      
      public var §_-WW§:Number = 0;
      
      public var §_-dw§:Number = 0;
      
      public var §_-Yv§:Number = 300;
      
      public var §_-1w§:Number = 600;
      
      public var §_-nP§:Number = 600;
      
      public var arenaRadius2:Number;
      
      public var §_-Sr§:Point;
      
      public var §_-sb§:Number;
      
      public var boundsRadius2:Number;
      
      public var PI:Number = 3.1415926;
      
      public var currentTeam:int = -1;
      
      public var currentUnit:int = -1;
      
      public var currentWeapon:int;
      
      public var §_-qH§:Array;
      
      public var screen:MovieClip;
      
      public var §_-pn§:MovieClip;
      
      public var §_-wd§:Sprite;
      
      public var §_-Fp§:Sprite;
      
      public var §_-Ib§:Sprite;
      
      public var §_-0h§:Sprite;
      
      public var §_-vb§:Sprite;
      
      public var §_-vF§:Sprite;
      
      public var §_-Pm§:Sprite;
      
      public var §_-p7§:Sprite;
      
      public var §_-2p§:Sprite;
      
      public var §_-Ds§:Sprite;
      
      public var debugLayer:Sprite;
      
      public var §_-RB§:Sprite;
      
      public var statusBar:Sprite;
      
      public var §_-Ps§:Tween;
      
      public var §_-0-j§:BitmapData;
      
      public var §_-89§:Rectangle;
      
      public var §_-w6§:Bitmap;
      
      public var §_-10§:Number;
      
      public var §_-u4§:Number;
      
      public var §_-JK§:Number;
      
      public var §_-v3§:Number;
      
      public var §_-zf§:Number = 700;
      
      public var §_-qj§:Number = 15;
      
      public var §_-DZ§:Point;
      
      public var §_-HU§:Number = 0;
      
      public var §_-gV§:Number;
      
      public var runningTotal:Number = 0;
      
      public var §_-oj§:Number = 0;
      
      public var §_-Sk§:Number;
      
      public var §_-pW§:Number;
      
      public var §_-fb§:Number;
      
      public var §_-m-§:Number;
      
      public var levelData:String = "";
      
      public var §_-o5§:String = "";
      
      public var modData:String = "";
      
      public var stockData:String = "";
      
      public var §_-Tl§:Boolean = false;
      
      public var §_-pr§:Boolean = false;
      
      public var §_-7C§:Boolean = false;
      
      public var §_-6c§:Number = 0;
      
      public var §_-eS§:Boolean = false;
      
      public var §_-Zv§:int;
      
      public var §break§:int = 10000;
      
      public var §_-SW§:§_-4m§;
      
      public var §_-ET§:int;
      
      public function §_-9T§(param1:UncaughtErrorEvent) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:* = "";
         var _loc5_:* = 0;
         while(_loc5_ < this.teams.length)
         {
            _loc7_;
            _loc6_;
            _loc6_;
            if(this.teams[_loc5_].teamID == SafeGlobal.playerID)
            {
               _loc7_;
               _loc4_ = this.teams[_loc5_].teamName;
            }
            _loc5_++;
            _loc6_;
         }
         _loc7_;
         if(param1.error is Error)
         {
            _loc7_;
            _loc2_ = Error(param1.error).message;
            _loc6_;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc3_ = ">error1 : " + _loc4_ + "  " + param1.error.getStackTrace() + " <";
            _loc6_;
         }
         else if(param1.error is ErrorEvent)
         {
            _loc6_;
            _loc6_;
            _loc2_ = ErrorEvent(param1.error).text;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc3_ = ">error2 : " + _loc4_ + "  " + param1.error.getStackTrace() + " <";
            _loc6_;
         }
         else
         {
            _loc6_;
            _loc2_ = param1.error.toString();
            _loc7_;
            _loc6_;
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
         _loc3_;
         removeEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
         _loc2_;
         this.weaponPanel = new WeaponPanel();
         this.§_-5K§ = new WeaponPanelButton();
         _loc3_;
         this.§_-rX§();
         _loc3_;
         this.§_-BW§ = true;
         _loc3_;
         _loc3_;
         if(this.§_-Z7§)
         {
            this.tryBuildGame();
         }
      }
      
      public function §_-rX§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.§_-QZ§();
         _loc1_;
         this.§_-D0§.test = true;
         _loc2_;
         _loc2_;
         this.§_-VY§();
         this.§_-gI§ = new BitmapData(800,600,true,0);
         this.§_-5t§ = new Bitmap(this.§_-gI§);
         this.§_-0-j§ = new BitmapData(800,600,true,0);
         this.§_-89§ = new Rectangle(0,0,this.§_-0-j§.rect.width,this.§_-0-j§.rect.height);
         this.§_-w6§ = new Bitmap(this.§_-0-j§);
         addChild(this.§_-5t§);
         addChild(this.screen);
         _loc1_;
         addChild(this.§_-w6§);
         addChild(this.§_-pn§);
         addChild(this.§_-RB§);
         _loc2_;
         this.screen.addChild(this.§_-Pm§);
         this.screen.addChild(this.§_-Fp§);
         this.screen.addChild(this.§_-Ib§);
         _loc1_;
         _loc1_;
         this.screen.addChild(this.§_-0h§);
         this.screen.addChild(this.§_-vb§);
         this.screen.addChild(this.§_-wd§);
         this.screen.addChild(this.§_-p7§);
         this.screen.addChild(this.§_-2p§);
         this.screen.addChild(this.§_-vF§);
         this.screen.addChild(this.§_-Ds§);
         this.screen.addChild(this.debugLayer);
         _loc2_;
         _loc1_;
         if(this.weaponPanel != null)
         {
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            this.weaponPanel.x = 720;
            _loc1_;
            _loc1_;
            this.weaponPanel.y = 520;
            _loc1_;
            this.§_-g5§();
         }
         this.§_-eX§();
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         if(this.§_-5K§ != null)
         {
            this.§_-M2§();
            _loc1_;
            _loc1_;
         }
         _loc2_;
         _loc2_;
         this.§_-na§.init(this.§_-oL§);
         _loc2_;
         _loc1_;
         this.§_-na§.animProgress();
         this.§_-na§.updateImage();
         if(this.weaponPanel != null)
         {
            this.§_-pn§.addChild(this.weaponPanel);
         }
         if(this.§_-5K§ != null)
         {
            this.§_-pn§.addChild(this.§_-5K§);
            _loc2_;
         }
         this.§_-pn§.addChild(this.statusBar);
         this.statusBar.x = 77;
         this.statusBar.y = -50;
         this.statusBar.visible = false;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         this.§_-pa§.x = 3;
         this.§_-pa§.y = 570;
         this.§_-pn§.addChild(this.§_-pa§);
         _loc2_;
         this.§_-fP§();
         addChild(this.chat);
         this.§_-pn§.addChild(this.§_-Jz§);
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc2_;
         this.§_-Jz§.x = 10;
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-Jz§.y = 10;
         this.§_-Jz§.hideMe();
         _loc1_;
         _loc1_;
         this.§_-pn§.addChild(this.§_-SW§);
         this.§_-pn§.addChild(this.§_-Xu§);
         this.§_-SW§.visible = false;
         this.§_-vM§();
         this.screen.addChild(this.§_-W1§);
         _loc2_;
         this.screen.addChild(this.bubbles);
         _loc2_;
         this.§_-PE§();
         _loc1_;
         _loc1_;
         this.hideBubbles();
      }
      
      public function displayQuitButton() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         if(!this.§_-eS§)
         {
            _loc2_;
            _loc1_;
            this.§_-SW§.visible = true;
            _loc1_;
            _loc1_;
            this.§_-SW§.tweenOn();
         }
      }
      
      public function §_-vJ§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.§_-SW§.tweenOff();
      }
      
      public function §_-uz§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc2_;
         this.§_-Xu§.visible = true;
         _loc2_;
         this.§_-Xu§.addEventListener(MouseEvent.CLICK,this.§_-1O§);
      }
      
      public function §_-vM§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         this.§_-Xu§.visible = false;
         _loc1_;
         _loc1_;
         this.§_-Xu§.removeEventListener(MouseEvent.CLICK,this.§_-1O§);
      }
      
      public function §_-1O§(param1:MouseEvent) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-hM§ = false;
         _loc3_;
         _loc3_;
         this.§_-3o§ = false;
         _loc3_;
         _loc3_;
         this.§_-jJ§();
         _loc2_;
         this.§_-vM§();
      }
      
      public function mainLoopReplayEditor(param1:int) : void
      {
      }
      
      public function §_-Tx§(param1:Event) : *
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = NaN;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         _loc8_;
         if(!this.§_-nD§)
         {
            this.currentTime = this.§_-b0§();
            _loc7_;
            _loc2_ = this.§_-b0§();
            _loc8_;
            _loc8_;
            this.mainLoopReplayEditor(this.currentTime);
            this.simManager.simWorld(this.currentTime);
            this.§_-qm§();
            this.§_-Hy§();
            _loc8_;
            this.§_-mF§();
            _loc7_;
            _loc7_;
            this.§_-8B§();
            this.§_-5v§(this.currentTime);
            this.§_-hF§();
            this.§_-Qb§();
            _loc8_;
            if(this.turnState == "shoot")
            {
               this.§_-MM§();
            }
            this.§_-Jz§.update(this.currentTime);
            _loc8_;
            this.§_-Yq§();
            _loc7_;
            _loc7_;
            _loc7_;
            if(!this.simOnly && !this.costumeCacheOnly)
            {
               this.§_-2j§();
            }
            _loc7_;
            _loc8_;
            _loc8_;
            if((this.myTurn) && (this.§_-3o§) && !this.§_-hM§)
            {
               _loc7_;
               if(!(this.§_-Ke§.x == mouseX) || !(this.§_-Ke§.y == mouseY))
               {
                  this.§_-3o§ = false;
                  this.§_-hM§ = false;
                  _loc7_;
                  _loc7_;
               }
            }
         }
         if(this.§_-eS§)
         {
            _loc8_;
            _loc8_;
            _loc8_;
            _loc7_;
            _loc7_;
            _loc3_ = getTimer() - this.§_-Zv§;
            _loc7_;
            _loc8_;
            _loc7_;
            _loc7_;
            _loc4_ = _loc3_ / this.§break§;
            _loc8_;
            _loc8_;
            this.§_-jA§.iX = this.§_-Sr§.x + Math.cos(2 * this.PI * _loc4_ + this.§_-6c§) * this.§_-nP§ / 2;
            this.§_-jA§.iY = this.§_-Sr§.y + Math.sin(2 * this.PI * _loc4_ + this.§_-6c§) * this.§_-nP§ / 2;
            _loc7_;
            _loc7_;
            if(_loc3_ > this.§break§)
            {
               SafeGlobal.game_client.finishGameOver();
               _loc8_;
               _loc8_;
               this.§_-eS§ = false;
            }
            _loc5_ = 0;
            while(_loc5_ < this.units.length)
            {
               _loc8_;
               _loc6_ = SafeGlobal.GAME.teams[this.units[_loc5_].team].victoryID;
               _loc8_;
               _loc8_;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc8_;
               _loc8_;
               if(this.units[_loc5_].animState == SafeGlobal.ANIM_UNIT_VICTORY && (_loc6_ == SafeGlobal.ANIM_VICTORY_WORM || _loc6_ == SafeGlobal.ANIM_VICTORY_UNICYCLE))
               {
                  _loc7_;
                  _loc7_;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  if(this.units[_loc5_].scaleX == 1)
                  {
                     _loc7_;
                     this.§_-yZ§(this.units[_loc5_]);
                     _loc8_;
                     _loc8_;
                  }
                  else
                  {
                     this.§_-Nf§(this.units[_loc5_]);
                  }
               }
               _loc7_;
               _loc7_;
               _loc7_;
               if(this.units[_loc5_].animState == SafeGlobal.ANIM_UNIT_VICTORY && _loc6_ == SafeGlobal.ANIM_VICTORY_MOONWALK)
               {
                  _loc8_;
                  if(this.units[_loc5_].scaleX == 1)
                  {
                     this.§_-Nf§(this.units[_loc5_]);
                  }
                  else
                  {
                     this.§_-yZ§(this.units[_loc5_]);
                     _loc7_;
                     _loc7_;
                  }
               }
               _loc5_++;
               _loc8_;
               _loc8_;
            }
         }
      }
      
      public function §_-Co§() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.camera.§_-Cu§ = this.§_-nP§;
         _loc2_;
         this.camera.y = _loc1_;
         _loc2_;
         this.camera.x = this.camera.§_-lJ§ = _loc1_;
         _loc2_;
         _loc2_;
         this.§_-Ut§();
      }
      
      public function §_-Ut§() : *
      {
         var _loc11_:* = true;
         var _loc12_:* = false;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = NaN;
         _loc11_;
         this.§_-2R§ = this.§_-Sr§.x - (this.§_-nP§ - 300);
         _loc12_;
         _loc12_;
         this.§_-M8§ = this.§_-Sr§.x + (this.§_-nP§ - 300);
         _loc12_;
         this.§_-WW§ = this.§_-Sr§.y - (this.§_-nP§ - 200);
         _loc12_;
         _loc12_;
         this.§_-dw§ = this.§_-Sr§.y + (this.§_-nP§ - 200);
         _loc11_;
         _loc11_;
         _loc12_;
         _loc12_;
         var _loc1_:Number = 2 * this.PI * this.§_-nP§;
         var _loc2_:* = 40;
         var _loc3_:int = int(_loc1_ / _loc2_);
         _loc12_;
         _loc11_;
         _loc3_ = int(_loc3_ / 2) * 2;
         _loc12_;
         _loc12_;
         _loc12_;
         _loc12_;
         _loc12_;
         _loc11_;
         var _loc9_:Number = this.PI * 2 / _loc3_;
         var _loc10_:* = 0;
         while(_loc10_ < _loc3_)
         {
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc8_ = _loc9_ * _loc10_;
            _loc12_;
            _loc12_;
            _loc4_ = Math.round(this.§_-Sr§.x + Math.cos(_loc8_) * this.§_-nP§);
            _loc11_;
            _loc11_;
            _loc5_ = Math.round(this.§_-Sr§.y + Math.sin(_loc8_) * this.§_-nP§);
            _loc12_;
            _loc6_ = 90 - Math.round(_loc8_ * 180 / this.PI);
            while(true)
            {
               _loc11_;
               _loc11_;
               _loc12_;
               if(_loc6_ < 360)
               {
                  break;
               }
               _loc12_;
               _loc12_;
               _loc12_;
               _loc6_ = _loc6_ - 360;
            }
            _loc12_;
            while(true)
            {
               _loc11_;
               _loc11_;
               if(_loc6_ >= 0)
               {
                  break;
               }
               _loc12_;
               _loc12_;
               _loc12_;
               _loc6_ = _loc6_ + 360;
               _loc11_;
            }
            _loc7_ = Math.floor(_loc6_ / 5);
            this.§_-05§.push(new §each §(_loc4_,_loc5_,_loc6_,_loc7_));
            _loc10_++;
            _loc11_;
            _loc11_;
         }
      }
      
      public function §_-hv§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         this.explosionBitmaps[10] = new exp10();
         _loc1_;
         _loc1_;
         _loc1_;
         this.explosionBitmaps[15] = new exp15();
         _loc1_;
         _loc1_;
         _loc1_;
         this.explosionBitmaps[20] = new exp20();
         _loc2_;
         this.explosionBitmaps[25] = new exp25();
         _loc1_;
         _loc1_;
         _loc2_;
         this.explosionBitmaps[30] = new exp30();
         this.explosionBitmaps[35] = new exp35();
         this.explosionBitmaps[40] = new exp40();
         _loc1_;
         this.explosionBitmaps[45] = new exp45();
         _loc1_;
         _loc2_;
         _loc2_;
         this.explosionBitmaps[50] = new exp50();
         this.explosionBitmaps[55] = new exp55();
         _loc2_;
         _loc1_;
         _loc1_;
         this.explosionBitmaps[60] = new exp60();
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         this.explosionBitmaps[70] = new exp70();
         this.burnBitmaps[15] = new burn15();
         _loc1_;
         _loc1_;
         this.burnBitmaps[20] = new burn20();
         _loc2_;
         _loc2_;
         this.burnBitmaps[25] = new burn25();
         this.burnBitmaps[30] = new burn30();
         _loc2_;
         _loc2_;
         this.burnBitmaps[35] = new burn35();
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.burnBitmaps[40] = new burn40();
         _loc2_;
         this.burnBitmaps[45] = new burn45();
         this.burnBitmaps[50] = new burn50();
         _loc1_;
         this.burnBitmaps[55] = new burn55();
         _loc1_;
         _loc1_;
         this.burnBitmaps[60] = new burn60();
         _loc1_;
         this.burnBitmaps[65] = new burn65();
         _loc2_;
         _loc2_;
         _loc2_;
         this.burnBitmaps[70] = new burn70();
         _loc1_;
         this.burnBitmaps[75] = new burn75();
      }
      
      public function generateExplosionBitmap(param1:int) : *
      {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc2_:int = getTimer();
         var _loc3_:BitmapData = new BitmapData(param1 * 2,param1 * 2,true,0);
         var _loc4_:BitmapData = new BitmapData((param1 + 5) * 2,(param1 + 5) * 2,true,0);
         _loc9_;
         var _loc5_:Number = _loc3_.width / 100;
         var _loc6_:Matrix = new Matrix();
         _loc6_.scale(_loc5_,_loc5_);
         _loc10_;
         _loc10_;
         var _loc7_:Number = _loc4_.width / 100;
         var _loc8_:Matrix = new Matrix();
         _loc8_.scale(_loc7_,_loc7_);
         _loc9_;
         stage.quality = StageQuality.LOW;
         _loc3_.draw(this.§_-Bb§,_loc6_);
         stage.quality = StageQuality.HIGH;
         _loc10_;
         _loc4_.draw(this.§_-TK§,_loc8_);
         _loc9_;
         _loc9_;
         _loc9_;
         this.explosionBitmaps[param1] = _loc3_;
         this.burnBitmaps[param1 + 5] = _loc4_;
      }
      
      public function §_-hF§() : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         while(_loc3_ < this.units.length)
         {
            _loc4_;
            if(!this.units[_loc3_].dead && !this.units[_loc3_].removed)
            {
               _loc4_;
               _loc4_;
               if(!this.§_-Lh§(this.units[_loc3_].iX,this.units[_loc3_].iY))
               {
                  _loc4_;
                  _loc4_;
                  _loc4_;
                  this.§_-Nb§[_loc3_].visible = true;
                  _loc4_;
                  this.§_-Nb§[_loc3_].x = this.units[_loc3_].iX - this.camera.x + 400;
                  _loc5_;
                  this.§_-Nb§[_loc3_].y = this.units[_loc3_].iY - this.camera.y + 300;
                  _loc5_;
                  if(this.§_-Nb§[_loc3_].x < this.§_-5D§)
                  {
                     this.§_-Nb§[_loc3_].x = this.§_-5D§;
                  }
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  if(this.§_-Nb§[_loc3_].x > 800 - this.§_-5D§)
                  {
                     this.§_-Nb§[_loc3_].x = 800 - this.§_-5D§;
                  }
                  _loc4_;
                  _loc4_;
                  if(this.§_-Nb§[_loc3_].y < this.§_-5D§)
                  {
                     _loc4_;
                     _loc4_;
                     this.§_-Nb§[_loc3_].y = this.§_-5D§;
                     _loc4_;
                     _loc4_;
                  }
                  if(this.§_-Nb§[_loc3_].y > 600 - this.§_-5D§)
                  {
                     _loc5_;
                     this.§_-Nb§[_loc3_].y = 600 - this.§_-5D§;
                     _loc5_;
                     _loc5_;
                  }
                  _loc5_;
                  _loc5_;
                  _loc4_;
                  _loc4_;
                  _loc4_;
                  if(this.§_-Nb§[_loc3_].x == this.§_-5D§ && this.§_-Nb§[_loc3_].y == this.§_-5D§)
                  {
                     this.§_-Nb§[_loc3_].rotation = 315;
                  }
                  else
                  {
                     _loc4_;
                     _loc5_;
                     _loc5_;
                     if(this.§_-Nb§[_loc3_].x == this.§_-5D§ && this.§_-Nb§[_loc3_].y == 600 - this.§_-5D§)
                     {
                        _loc4_;
                        _loc4_;
                        _loc4_;
                        this.§_-Nb§[_loc3_].rotation = 225;
                     }
                     else
                     {
                        _loc4_;
                        _loc4_;
                        _loc4_;
                        _loc4_;
                        if(this.§_-Nb§[_loc3_].x == 800 - this.§_-5D§ && this.§_-Nb§[_loc3_].y == this.§_-5D§)
                        {
                           _loc5_;
                           this.§_-Nb§[_loc3_].rotation = 45;
                        }
                        else if(this.§_-Nb§[_loc3_].x == 800 - this.§_-5D§ && this.§_-Nb§[_loc3_].y == 600 - this.§_-5D§)
                        {
                           _loc5_;
                           this.§_-Nb§[_loc3_].rotation = 135;
                           _loc5_;
                        }
                        else if(this.§_-Nb§[_loc3_].x == this.§_-5D§)
                        {
                           _loc4_;
                           _loc4_;
                           this.§_-Nb§[_loc3_].rotation = 270;
                        }
                        else
                        {
                           _loc5_;
                           if(this.§_-Nb§[_loc3_].x == 800 - this.§_-5D§)
                           {
                              this.§_-Nb§[_loc3_].rotation = 90;
                              _loc4_;
                              _loc4_;
                           }
                           else if(this.§_-Nb§[_loc3_].y == this.§_-5D§)
                           {
                              _loc4_;
                              _loc4_;
                              this.§_-Nb§[_loc3_].rotation = 0;
                           }
                           else
                           {
                              _loc5_;
                              _loc4_;
                              if(this.§_-Nb§[_loc3_].y == 600 - this.§_-5D§)
                              {
                                 _loc4_;
                                 this.§_-Nb§[_loc3_].rotation = 180;
                              }
                           }
                           
                        }
                        
                        
                     }
                  }
               }
               else
               {
                  this.§_-Nb§[_loc3_].visible = false;
               }
            }
            _loc3_++;
         }
      }
      
      public function §_-8B§() : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:§each § = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         while(_loc4_ < this.§_-05§.length)
         {
            _loc1_ = this.§_-05§[_loc4_];
            if(this.§_-Lh§(_loc1_.x,_loc1_.y))
            {
               this.§_-sY§ = this.§_-wr§.getChunk(_loc1_.§_-7c§);
               _loc6_;
               _loc6_;
               this.§_-Zq§.x = 400 + (_loc1_.x - this.§_-sY§.height / 2) - this.camera.x;
               _loc5_;
               _loc5_;
               this.§_-Zq§.y = 300 + (_loc1_.y - this.§_-sY§.height / 2) - this.camera.y;
               _loc5_;
               _loc5_;
               this.§_-gI§.copyPixels(this.§_-wr§.sheetBD,this.§_-sY§,this.§_-Zq§,null,null,true);
            }
            _loc4_++;
         }
      }
      
      public function §_-Lh§(param1:Number, param2:Number) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(this.camera.x - 430 <= param1 && this.camera.x + 430 >= param1 && this.camera.y - 330 <= param2 && this.camera.y + 330 >= param2)
         {
            _loc4_;
            return true;
         }
         return false;
      }
      
      public function §_-K3§(param1:Number, param2:Number) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.§_-jd§ = 0;
         _loc3_;
         this.§_-Jg§ = 0;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc4_;
         if(param1 - this.camera.x <= -380)
         {
            this.§_-Jg§ = 1;
         }
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         if(param1 - this.camera.x >= 380)
         {
            this.§_-Jg§ = 2;
         }
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc3_;
         if(param2 - this.camera.y <= -280)
         {
            this.§_-jd§ = 1;
         }
         _loc4_;
         if(param2 - this.camera.y >= 280)
         {
            this.§_-jd§ = 2;
         }
         _loc4_;
         _loc4_;
         if(this.§_-Jg§ == 0 && this.§_-jd§ == 0)
         {
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            return -1;
         }
         _loc3_;
         _loc3_;
         if(this.§_-Jg§ == 0 && this.§_-jd§ == 1)
         {
            return 0;
         }
         _loc3_;
         _loc3_;
         if(this.§_-Jg§ == 0 && this.§_-jd§ == 2)
         {
            _loc4_;
            _loc4_;
            _loc3_;
            return 4;
         }
         _loc4_;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         if(this.§_-Jg§ == 1 && this.§_-jd§ == 0)
         {
            _loc4_;
            _loc4_;
            return 6;
         }
         _loc3_;
         _loc3_;
         if(this.§_-Jg§ == 1 && this.§_-jd§ == 1)
         {
            return 7;
         }
         if(this.§_-Jg§ == 1 && this.§_-jd§ == 2)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            return 5;
         }
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(this.§_-Jg§ == 2 && this.§_-jd§ == 0)
         {
            _loc4_;
            _loc4_;
            return 2;
         }
         _loc4_;
         if(this.§_-Jg§ == 2 && this.§_-jd§ == 1)
         {
            _loc4_;
            return 1;
         }
         if(this.§_-Jg§ == 2 && this.§_-jd§ == 2)
         {
            return 3;
         }
      }
      
      public function §_-qm§(param1:Boolean = true) : *
      {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc2_:* = undefined;
         var _loc3_:§_-7v§ = null;
         var _loc4_:§_-TN§ = null;
         var _loc5_:§_-TE§ = null;
         var _loc6_:§each § = null;
         var _loc8_:* = 0;
         var _loc7_:* = 0;
         while(true)
         {
            _loc9_;
            _loc9_;
            if(_loc7_ >= this.§_-B4§.length)
            {
               break;
            }
            _loc10_;
            _loc10_;
            _loc10_;
            _loc5_ = this.§_-B4§[_loc7_];
            _loc4_ = this.§_-YZ§[this.§_-B4§[_loc7_].type];
            _loc9_;
            _loc9_;
            this.§_-uJ§.x = 400 + (_loc5_.x - _loc4_.sheetBD.width / 2) - this.camera.x;
            _loc10_;
            _loc10_;
            this.§_-uJ§.y = 300 + (_loc5_.y - _loc4_.sheetBD.height / 2) - this.camera.y;
            _loc10_;
            this.§_-0-j§.copyPixels(this.§_-vT§[_loc5_.type],this.§_-vT§[_loc5_.type].rect,this.§_-uJ§,null,null,false);
            _loc9_;
            _loc7_++;
         }
         _loc9_;
         _loc10_;
         _loc8_ = 0;
         _loc9_;
         _loc9_;
         while(true)
         {
            _loc9_;
            _loc10_;
            _loc10_;
            if(_loc8_ >= this.§_-5P§.length)
            {
               break;
            }
            _loc10_;
            _loc10_;
            _loc10_;
            _loc3_ = this.§_-5P§[_loc8_];
            _loc9_;
            _loc9_;
            if(_loc3_.custom)
            {
               _loc9_;
               _loc9_;
               _loc9_;
               _loc9_;
               _loc2_ = this.customParticleGFX[_loc3_.pID];
               _loc10_;
            }
            else
            {
               _loc2_ = this.particleGFX[_loc3_.pID];
            }
            this.§_-uJ§.x = 400 + (_loc3_.x - _loc2_.width / 2) - this.camera.x;
            _loc9_;
            this.§_-uJ§.y = 300 + (_loc3_.y - _loc2_.height / 2) - this.camera.y;
            _loc10_;
            this.§_-gI§.copyPixels(_loc2_.cover,_loc2_.coverRectangle,this.§_-uJ§,null,null,false);
            _loc9_;
            _loc9_;
            _loc8_++;
         }
         _loc10_;
         _loc10_;
         if(param1)
         {
            _loc10_;
            _loc10_;
            _loc10_;
            _loc8_ = 0;
            _loc10_;
            _loc10_;
            while(_loc8_ < this.§_-05§.length)
            {
               _loc6_ = this.§_-05§[_loc8_];
               _loc10_;
               if(this.§_-Lh§(_loc6_.x,_loc6_.y))
               {
                  _loc9_;
                  this.§_-uJ§.x = 400 + (_loc6_.x - this.§_-wr§.frameWidth / 2) - this.camera.x;
                  _loc10_;
                  _loc10_;
                  this.§_-uJ§.y = 300 + (_loc6_.y - this.§_-wr§.frameHeight / 2) - this.camera.y;
                  _loc9_;
                  this.§_-gI§.copyPixels(this.§_-wr§.cover,this.§_-wr§.coverRectangle,this.§_-uJ§,null,null,false);
                  _loc9_;
               }
               _loc8_++;
            }
         }
      }
      
      public function §_-Nz§(param1:SimObject) : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         _loc6_;
         _loc6_;
         _loc6_;
         var _loc2_:Number = param1.iX - this.§_-Sr§.x;
         _loc5_;
         _loc5_;
         var _loc3_:Number = param1.iY - this.§_-Sr§.y;
         _loc5_;
         _loc5_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         var _loc4_:Number = _loc2_ * _loc2_ + _loc3_ * _loc3_;
         if(_loc4_ <= this.arenaRadius2)
         {
            _loc6_;
            _loc6_;
            return true;
         }
         return false;
      }
      
      public function §_-Dt§(param1:Number, param2:Number) : *
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         _loc7_;
         _loc6_;
         _loc6_;
         var _loc3_:Number = param1 - this.§_-Sr§.x;
         _loc6_;
         _loc6_;
         _loc6_;
         var _loc4_:Number = param2 - this.§_-Sr§.y;
         _loc7_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc6_;
         var _loc5_:Number = _loc3_ * _loc3_ + _loc4_ * _loc4_;
         if(_loc5_ <= this.arenaRadius2)
         {
            _loc7_;
            _loc7_;
            _loc7_;
            return true;
         }
         return false;
      }
      
      public function §_-54§(param1:KeyboardEvent) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         _loc4_;
         if((this.myTurn) && (this.§_-3o§))
         {
            _loc4_;
            this.§_-3o§ = false;
            this.§_-hM§ = false;
         }
         if(this.§_-Tl§)
         {
            stage.focus = this.chat.§_-nc§.input;
            _loc4_;
         }
         else
         {
            stage.focus = stage;
         }
         var _loc2_:int = param1.keyCode;
         this.§_-wl§[_loc2_] = true;
         if(this.§_-Tl§)
         {
            _loc4_;
            if(_loc2_ == 13)
            {
               _loc4_;
               _loc4_;
               this.chat.sendMessage();
               _loc3_;
               this.§_-eX§();
            }
            else if(_loc2_ == 27)
            {
               this.§_-eX§();
               _loc4_;
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
               _loc4_;
               _loc4_;
               _loc4_;
               if(_loc2_ == 84)
               {
                  _loc4_;
                  _loc4_;
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  this.chat.§_-Rc§ = true;
                  _loc3_;
                  _loc3_;
               }
               else
               {
                  this.chat.§_-Rc§ = false;
                  _loc4_;
                  _loc4_;
               }
               this.§_-nb§();
            }
            _loc3_;
            if(_loc2_ == 76)
            {
               _loc3_;
               _loc3_;
               if(!this.§_-Tl§)
               {
                  _loc3_;
                  _loc4_;
                  this.§_-pr§ = !this.§_-pr§;
               }
               if(this.§_-pr§)
               {
                  _loc3_;
                  _loc3_;
                  this.§_-BU§();
               }
               else
               {
                  this.§_-ls§();
               }
            }
            if(_loc2_ == 27 && (this.dragging))
            {
               this.§_-Jc§();
            }
         }
      }
      
      public function §_-W9§(param1:KeyboardEvent) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         if(this.§_-Tl§)
         {
            _loc3_;
            _loc3_;
            stage.focus = this.chat.§_-nc§.input;
            _loc4_;
         }
         else
         {
            stage.focus = stage;
         }
         var _loc2_:int = param1.keyCode;
         _loc4_;
         _loc4_;
         this.§_-wl§[_loc2_] = false;
      }
      
      public function §_-Yq§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.chat.§_-VS§();
      }
      
      public function addAction(param1:int, param2:int, param3:Object) : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:§_-U4§ = null;
         if(!this.myTurn)
         {
            _loc6_;
            _loc6_;
            _loc5_;
            if(!(param1 == SafeGlobal.SIMEVENT_ENDTURN && (param2 == 0 || param2 == 1)))
            {
               _loc6_;
               if(param1 == SafeGlobal.SIMEVENT_ENDTURN)
               {
                  _loc5_;
                  _loc5_;
               }
               if(!(param1 == SafeGlobal.SIMEVENT_PROJECTILE && param3.wepType == -1))
               {
                  _loc4_ = new §_-U4§(param1,param2,param3);
                  _loc6_;
                  this.simManager.addObject(_loc4_);
               }
               if(param1 == SafeGlobal.SIMEVENT_PROJECTILE)
               {
                  if(param3.wepType == -1)
                  {
                     _loc6_;
                     _loc4_ = new §_-U4§(SafeGlobal.SIMEVENT_PROJAIM,param2 - 500,param3);
                     _loc5_;
                  }
                  else if(param3.wepType == SafeGlobal.WEAPONINFO_GRAVITEEBALL[0])
                  {
                     _loc5_;
                     _loc4_ = new §_-U4§(SafeGlobal.SIMEVENT_PROJAIM,param2 - 1200,param3);
                  }
                  else
                  {
                     _loc4_ = new §_-U4§(SafeGlobal.SIMEVENT_PROJAIM,param2 - 500,param3);
                  }
                  
                  this.simManager.addObject(_loc4_);
                  _loc5_;
                  _loc5_;
                  if(param3.wepType > -1)
                  {
                     _loc4_ = new §_-U4§(SafeGlobal.SIMEVENT_PROJAIMSTOP,param2 + param3.extraAim,param3);
                     _loc6_;
                     _loc6_;
                     this.simManager.addObject(_loc4_);
                  }
               }
               else if(param1 == SafeGlobal.SIMEVENT_MELEE)
               {
                  _loc4_ = new §_-U4§(SafeGlobal.SIMEVENT_MELEEAIM,param2 - 500,param3);
                  _loc6_;
                  this.simManager.addObject(_loc4_);
               }
               else
               {
                  _loc5_;
                  if(param1 == SafeGlobal.SIMEVENT_GATE)
                  {
                     _loc6_;
                     _loc6_;
                     _loc4_ = new §_-U4§(SafeGlobal.SIMEVENT_GATEAIM,param2 - 500,param3);
                     _loc5_;
                     this.simManager.addObject(_loc4_);
                     _loc4_ = new §_-U4§(SafeGlobal.SIMEVENT_GATEAIMSTOP,param2 + 1000,param3);
                     _loc6_;
                     _loc6_;
                     this.simManager.addObject(_loc4_);
                  }
                  else
                  {
                     _loc5_;
                     if(param1 == SafeGlobal.SIMEVENT_PLANETSELECT)
                     {
                        _loc6_;
                        _loc6_;
                        _loc4_ = new §_-U4§(SafeGlobal.SIMEVENT_PLANETSELECTAIM,param2 - 500,param3);
                        _loc5_;
                        _loc5_;
                        this.simManager.addObject(_loc4_);
                        _loc4_ = new §_-U4§(SafeGlobal.SIMEVENT_PLANETSELECTAIMSTOP,param2 + 1000,param3);
                        _loc5_;
                        this.simManager.addObject(_loc4_);
                     }
                     else if(param1 == SafeGlobal.SIMEVENT_MINE)
                     {
                        _loc4_ = new §_-U4§(SafeGlobal.SIMEVENT_MINEAIM,param2 - 500,param3);
                        _loc5_;
                        _loc5_;
                        this.simManager.addObject(_loc4_);
                        _loc4_ = new §_-U4§(SafeGlobal.SIMEVENT_MINEAIMSTOP,param2,param3);
                        _loc5_;
                        _loc5_;
                        this.simManager.addObject(_loc4_);
                     }
                     
                  }
               }
               
            }
         }
      }
      
      public function §_-Jc§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         if(this.dragging)
         {
            if(this.currentWeapon == -1)
            {
               _loc1_;
               _loc1_;
               this.dragging = false;
               this.§_-XU§();
               _loc2_;
               _loc2_;
            }
            else if(this.§_-qH§[1] == SafeGlobal.WEAPONTYPE_PROJECTILE)
            {
               this.dragging = false;
               _loc1_;
               _loc1_;
               this.§_-I8§();
               _loc1_;
               _loc2_;
               _loc2_;
               this.§_-QM§.splice(0);
               _loc1_;
               this.§_-JC§();
            }
            else if(this.§_-qH§[1] == SafeGlobal.WEAPONTYPE_MINE)
            {
               this.dragging = false;
               _loc1_;
               this.§_-TA§();
               _loc2_;
               _loc2_;
            }
            else
            {
               _loc1_;
               if(this.§_-qH§[1] == SafeGlobal.WEAPONTYPE_MELEE)
               {
                  this.dragging = false;
                  _loc1_;
                  this.§_-aW§();
               }
               else if(this.§_-qH§[1] == SafeGlobal.WEAPONTYPE_TELEPORT)
               {
                  _loc2_;
                  _loc2_;
                  this.dragging = false;
                  this.§_-RT§();
                  _loc1_;
                  _loc1_;
               }
               else
               {
                  _loc2_;
                  _loc2_;
                  if(this.§_-qH§[1] == SafeGlobal.WEAPONTYPE_INCOMING)
                  {
                     _loc2_;
                     _loc2_;
                     this.dragging = false;
                     this.§_-bt§();
                  }
                  else
                  {
                     _loc2_;
                     if(this.§_-qH§[1] == SafeGlobal.WEAPONTYPE_GATE)
                     {
                        _loc1_;
                        this.dragging = false;
                        this.§_-FF§();
                     }
                     else if(this.§_-qH§[1] == SafeGlobal.WEAPONTYPE_PLANETGATE)
                     {
                        _loc2_;
                        _loc2_;
                        this.dragging = false;
                        this.§_-y7§();
                     }
                     
                  }
               }
               
            }
            
            
         }
      }
      
      public function simObjectWalk(param1:SimObject, param2:Boolean = false) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:* = 0;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         if(param1.walkDir == 1)
         {
            _loc5_;
            _loc5_;
            this.§_-Nf§(param1,param2);
         }
         else
         {
            _loc4_;
            if(param1.walkDir == -1)
            {
               _loc4_;
               _loc4_;
               this.§_-yZ§(param1,param2);
            }
         }
         _loc5_;
         _loc4_;
         _loc3_ = param1.lastSimTime;
         _loc4_;
         _loc4_;
         if(this.myTurn)
         {
            this.§_-PE§();
         }
         else
         {
            this.hideBubbles();
            _loc5_;
         }
         _loc4_;
         _loc4_;
         if(param1 is Unit)
         {
            param1.updatePoints();
            _loc4_;
            _loc4_;
            this.checkMineProximity(Unit(param1),_loc3_);
            _loc4_;
            this.checkPowerUpProximity(param1,_loc3_);
         }
         else
         {
            this.checkPowerUpProximity(param1,_loc3_);
            _loc4_;
            _loc4_;
            _loc4_;
            if(param1 is Mine && (Mine(param1).roving) && (Mine(param1).§_-k2§))
            {
               _loc5_;
               this.§_-n7§(Mine(param1),_loc3_);
               _loc5_;
               _loc5_;
            }
            this.checkUnitProximity(Mine(param1),_loc3_);
         }
         return _loc3_;
      }
      
      public function doEmitters(param1:Projectile) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc4_;
         _loc4_;
         _loc3_;
         if(!param1.test && !this.simOnly && !this.costumeCacheOnly)
         {
            _loc3_;
            if(param1.§_-NO§.length > 1)
            {
               _loc3_;
               param1.§_-NO§.sortOn("pos");
               _loc3_;
               _loc3_;
            }
            _loc2_ = 0;
            while(_loc2_ < param1.§_-NO§.length)
            {
               param1.§_-NO§[_loc2_].emit(param1);
               _loc4_;
               _loc4_;
               _loc2_++;
               _loc4_;
               _loc4_;
            }
         }
      }
      
      public function §_-Hy§() : *
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
         _loc15_;
         this.camera.§_-kW§();
         var _loc1_:Array = this.simManager.toSim;
         this.§_-ME§ = 5000;
         _loc15_;
         this.§_-ok§ = 5000;
         this.§_-bI§ = -5000;
         this.§_-rN§ = -5000;
         _loc14_;
         _loc14_;
         _loc14_;
         _loc14_;
         if((this.§_-7X§.active) && this.turnState == "shoot")
         {
            this.§_-bI§ = this.§_-ME§ = this.§_-7X§.x;
            _loc15_;
            _loc15_;
            this.§_-rN§ = this.§_-ok§ = this.§_-7X§.y;
         }
         else if(this.camera.§_-YF§.length > 0)
         {
            _loc2_ = [];
            _loc3_ = [];
            _loc15_;
            _loc15_;
            _loc4_ = 0;
            while(true)
            {
               _loc14_;
               _loc14_;
               if(_loc4_ >= this.camera.§_-YF§.length)
               {
                  break;
               }
               if(this.§_-Nz§(this.camera.§_-YF§[_loc4_]))
               {
                  _loc2_.push(_loc4_);
               }
               else
               {
                  _loc14_;
                  _loc15_;
                  _loc15_;
                  _loc14_;
                  _loc14_;
                  _loc14_;
                  _loc15_;
                  _loc15_;
                  if(this.camera.§_-YF§[_loc4_].startSimTime == 0 || this.camera.§_-YF§[_loc4_].startSimTime < this.currentTime)
                  {
                     _loc3_.push(_loc4_);
                  }
               }
               _loc4_++;
               _loc15_;
               _loc15_;
            }
            _loc14_;
            _loc14_;
            if(_loc2_.length == 0 && _loc3_.length > 0)
            {
               SoundManager.§_-RG§();
               _loc15_;
               _loc14_;
               _loc14_;
               if(this.§_-bI§ < this.camera.§_-YF§[_loc3_[0]].iX)
               {
                  this.§_-bI§ = this.camera.§_-YF§[_loc3_[0]].iX;
                  _loc15_;
                  _loc15_;
               }
               _loc14_;
               _loc15_;
               _loc15_;
               if(this.§_-ME§ > this.camera.§_-YF§[_loc3_[0]].iX)
               {
                  this.§_-ME§ = this.camera.§_-YF§[_loc3_[0]].iX;
                  _loc15_;
                  _loc15_;
               }
               _loc14_;
               _loc15_;
               if(this.§_-rN§ < this.camera.§_-YF§[_loc3_[0]].iY)
               {
                  this.§_-rN§ = this.camera.§_-YF§[_loc3_[0]].iY;
                  _loc14_;
                  _loc14_;
               }
               if(this.§_-ok§ > this.camera.§_-YF§[_loc3_[0]].iY)
               {
                  this.§_-ok§ = this.camera.§_-YF§[_loc3_[0]].iY;
               }
            }
            else if(_loc2_.length > 0)
            {
               _loc14_;
               SoundManager.§_-pe§();
               _loc15_;
               _loc14_;
               _loc4_ = 0;
               while(_loc4_ < _loc2_.length)
               {
                  _loc14_;
                  _loc14_;
                  if(this.§_-bI§ < this.camera.§_-YF§[_loc2_[_loc4_]].iX)
                  {
                     this.§_-bI§ = this.camera.§_-YF§[_loc2_[_loc4_]].iX;
                     _loc15_;
                     _loc15_;
                  }
                  _loc15_;
                  _loc15_;
                  _loc14_;
                  if(this.§_-ME§ > this.camera.§_-YF§[_loc2_[_loc4_]].iX)
                  {
                     this.§_-ME§ = this.camera.§_-YF§[_loc2_[_loc4_]].iX;
                     _loc15_;
                  }
                  _loc15_;
                  if(this.§_-rN§ < this.camera.§_-YF§[_loc2_[_loc4_]].iY)
                  {
                     _loc14_;
                     this.§_-rN§ = this.camera.§_-YF§[_loc2_[_loc4_]].iY;
                     _loc15_;
                  }
                  if(this.§_-ok§ > this.camera.§_-YF§[_loc2_[_loc4_]].iY)
                  {
                     _loc14_;
                     this.§_-ok§ = this.camera.§_-YF§[_loc2_[_loc4_]].iY;
                  }
                  _loc4_++;
               }
            }
            
         }
         
         _loc14_;
         _loc14_;
         _loc15_;
         _loc15_;
         _loc15_;
         _loc15_;
         _loc15_;
         if(!(this.§_-ME§ == 5000) && !(this.§_-ok§ == 5000) && !(this.§_-bI§ == -5000) && !(this.§_-rN§ == -5000))
         {
            _loc14_;
            _loc14_;
            this.§_-rH§ = (this.§_-bI§ + this.§_-ME§) / 2;
            _loc14_;
            _loc14_;
            _loc15_;
            this.§_-WD§ = (this.§_-rN§ + this.§_-ok§) / 2;
            _loc15_;
            _loc14_;
            _loc15_;
            _loc15_;
            if((this.camera.§_-YF§.length > 0) && (_loc2_) && _loc2_.length > 0)
            {
               _loc15_;
               _loc15_;
               _loc15_;
               if(this.§_-rH§ < this.§_-2R§)
               {
                  _loc15_;
                  _loc15_;
                  this.§_-rH§ = this.§_-2R§;
               }
               else
               {
                  _loc15_;
                  _loc15_;
                  if(this.§_-rH§ > this.§_-M8§)
                  {
                     this.§_-rH§ = this.§_-M8§;
                     _loc14_;
                  }
               }
               _loc15_;
               _loc15_;
               _loc14_;
               if(this.§_-WD§ < this.§_-WW§)
               {
                  this.§_-WD§ = this.§_-WW§;
               }
               else if(this.§_-WD§ > this.§_-dw§)
               {
                  this.§_-WD§ = this.§_-dw§;
                  _loc14_;
                  _loc14_;
               }
               
            }
            _loc15_;
            _loc15_;
            _loc14_;
            this.camera.§_-lJ§ = this.§_-rH§;
            this.camera.§_-Cu§ = this.§_-WD§;
            _loc15_;
            _loc15_;
            _loc5_ = this.camera.§_-o2§(this.§_-QI§);
            _loc14_;
            _loc14_;
            if(this.§_-QM§.length > 0 && ((_loc5_) || this.§_-Xa§ > 0))
            {
               _loc14_;
               this.§_-I8§();
            }
            _loc15_;
            _loc15_;
            if(this.§_-Xa§ > 0)
            {
               _loc15_;
               _loc14_;
               _loc14_;
               _loc14_;
               _loc14_;
               this.§_-Xa§--;
               _loc15_;
               _loc8_ = Math.random();
               _loc14_;
               _loc14_;
               _loc14_;
               _loc14_;
               _loc9_ = Math.random();
               _loc10_ = Math.round((_loc8_ > 0.5?1:-1) * this.§_-Xa§ / 2);
               _loc14_;
               _loc14_;
               _loc11_ = Math.round((_loc9_ > 0.5?1:-1) * this.§_-Xa§ / 2);
               _loc15_;
               _loc15_;
               _loc14_;
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
               _loc7_ = 300 - this.camera.y;
               _loc15_;
               _loc15_;
               this.screen.x = _loc6_;
               this.screen.y = _loc7_;
               this.screen.x = this.screen.x + _loc10_;
               _loc15_;
               _loc15_;
               this.screen.y = this.screen.y + _loc11_;
               this.§_-5t§.x = _loc10_;
               this.§_-5t§.y = _loc11_;
               _loc15_;
               _loc14_;
               if(this.§_-QM§.length > 0)
               {
                  this.§_-N§();
               }
            }
            else
            {
               _loc14_;
               _loc14_;
               _loc14_;
               _loc14_;
               _loc6_ = 400 - this.camera.x;
               _loc7_ = 300 - this.camera.y;
               _loc14_;
               _loc14_;
               this.screen.x = _loc6_;
               this.screen.y = _loc7_;
               this.§_-5t§.x = 0;
               _loc15_;
               _loc15_;
               this.§_-5t§.y = 0;
               _loc14_;
               _loc14_;
               _loc14_;
               _loc14_;
               _loc14_;
               if(this.§_-QM§.length > 0 && (_loc5_))
               {
                  _loc14_;
                  this.§_-N§();
                  _loc15_;
                  _loc15_;
               }
            }
         }
         else
         {
            this.debugLayer.graphics.clear();
            SoundManager.§_-pe§();
            if(!this.§_-Dt§(this.camera.x,this.camera.y))
            {
               _loc14_;
               _loc14_;
               this.camera.§_-lJ§ = this.§_-Sr§.x;
               this.camera.§_-Cu§ = this.§_-Sr§.y;
            }
            _loc5_ = this.camera.§_-o2§(false);
            _loc14_;
            _loc14_;
            _loc15_;
            _loc15_;
            _loc14_;
            _loc14_;
            if(this.§_-QM§.length > 0 && (_loc5_))
            {
               this.§_-I8§();
            }
            this.screen.x = 400 - this.camera.x;
            this.screen.y = 300 - this.camera.y;
            if(this.§_-QM§.length > 0 && (_loc5_))
            {
               _loc14_;
               _loc14_;
               this.§_-N§();
            }
         }
         this.starMap.moveTo(this.camera.x,this.camera.y);
      }
      
      public function showWaiting() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-pa§.visible = true;
         _loc1_;
         this.bringToFront(this.§_-pa§);
      }
      
      public function §_-fP§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-pa§.visible = false;
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
      
      public function §_-5v§(param1:int) : *
      {
         var _loc13_:* = true;
         var _loc14_:* = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = undefined;
         var _loc5_:§_-7v§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = 0;
         var _loc8_:§_-TN§ = null;
         var _loc9_:§_-TE§ = null;
         var _loc10_:* = 0;
         _loc13_;
         _loc13_;
         _loc13_;
         if(this.§_-5P§.length > 0)
         {
            _loc14_;
            _loc14_;
            _loc7_ = this.§_-5P§.length - 1;
            while(true)
            {
               _loc14_;
               _loc14_;
               _loc13_;
               _loc13_;
               if(_loc7_ < 0)
               {
                  break;
               }
               _loc13_;
               _loc13_;
               _loc13_;
               _loc5_ = this.§_-5P§[_loc7_];
               _loc13_;
               _loc14_;
               _loc14_;
               _loc14_;
               if(param1 < _loc5_.§_-ky§ && (this.§_-Lh§(_loc5_.x,_loc5_.y)))
               {
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  _loc14_;
                  _loc14_;
                  _loc14_;
                  _loc13_;
                  _loc6_ = (param1 - _loc5_.§_-l2§) / _loc5_.§_-CZ§;
                  _loc14_;
                  if(_loc5_.custom)
                  {
                     _loc14_;
                     _loc13_;
                     _loc4_ = this.customParticleGFX[_loc5_.pID];
                     _loc13_;
                     _loc13_;
                  }
                  else
                  {
                     _loc14_;
                     _loc14_;
                     _loc14_;
                     _loc4_ = this.particleGFX[_loc5_.pID];
                  }
                  this.§_-kc§ = _loc4_.getFrameRect(_loc6_);
                  _loc14_;
                  this.§_-E7§.x = 400 + (_loc5_.x - this.§_-kc§.height / 2) - this.camera.x;
                  _loc13_;
                  this.§_-E7§.y = 300 + (_loc5_.y - this.§_-kc§.height / 2) - this.camera.y;
                  _loc14_;
                  this.§_-gI§.copyPixels(_loc4_.spriteSheet,this.§_-kc§,this.§_-E7§,null,null,true);
                  _loc13_;
                  _loc13_;
               }
               else if(param1 >= _loc5_.§_-ky§)
               {
                  _loc14_;
                  this.§_-fI§.push(_loc5_);
                  _loc14_;
                  this.§_-5P§.splice(_loc7_,1);
               }
               
               _loc14_;
               _loc7_--;
            }
            _loc13_;
            _loc13_;
         }
         _loc13_;
         _loc13_;
         if(this.§_-B4§.length > 0)
         {
            _loc14_;
            _loc13_;
            _loc13_;
            _loc14_;
            _loc14_;
            _loc10_ = this.§_-B4§.length - 1;
            _loc13_;
            _loc13_;
            while(_loc10_ >= 0)
            {
               _loc9_ = this.§_-B4§[_loc10_];
               _loc13_;
               _loc13_;
               _loc13_;
               _loc9_.life--;
               _loc13_;
               _loc13_;
               _loc13_;
               _loc13_;
               _loc13_;
               if(this.§_-B4§[_loc10_].life <= 0)
               {
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  this.§_-B4§.splice(_loc10_,1);
                  _loc14_;
                  _loc14_;
               }
               else if(this.§_-Lh§(_loc9_.x,_loc9_.y))
               {
                  _loc13_;
                  _loc13_;
                  _loc8_ = this.§_-YZ§[_loc9_.type];
                  _loc13_;
                  _loc13_;
                  this.§_-kc§.x = 0;
                  _loc13_;
                  _loc13_;
                  this.§_-kc§.y = 0;
                  this.§_-kc§.width = _loc8_.sheetBD.width;
                  this.§_-kc§.height = _loc8_.sheetBD.height;
                  this.§_-E7§.x = 400 + (_loc9_.x - this.§_-kc§.width / 2) - this.camera.x;
                  _loc13_;
                  this.§_-E7§.y = 300 + (_loc9_.y - this.§_-kc§.height / 2) - this.camera.y;
                  this.§_-0-j§.copyPixels(_loc8_.sheetBD,this.§_-kc§,this.§_-E7§,null,null,true);
               }
               
               _loc13_;
               _loc10_--;
            }
         }
      }
      
      public function §_-PF§(param1:int) : *
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
            _loc3_.x = _loc2_ * 200;
            _loc3_.y = 0 + param1;
            _loc5_;
            _loc4_.x = _loc2_ * 200;
            _loc4_.y = 200 + param1;
            this.§_-pn§.addChild(_loc3_);
            this.§_-pn§.addChild(_loc4_);
            _loc2_++;
         }
      }
      
      public function showDamage(param1:Number, param2:Number, param3:Number, param4:int, param5:int) : *
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc6_:String = null;
         _loc8_;
         _loc8_;
         _loc7_;
         _loc8_;
         if(!this.simOnly && !this.costumeCacheOnly)
         {
            _loc7_;
            this.damage.push(new §_-os§());
            _loc7_;
            _loc7_;
            _loc8_;
            _loc8_;
            _loc6_ = param4.toString();
            _loc7_;
            _loc8_;
            _loc8_;
            if(param4 < 0)
            {
               _loc8_;
               _loc8_;
               _loc8_;
               _loc7_;
               _loc6_ = _loc6_.substr(1);
            }
            if(param4 > 0)
            {
               _loc8_;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc6_ = "-" + _loc6_;
            }
            else
            {
               _loc8_;
               _loc8_;
               _loc6_ = "+" + _loc6_;
               _loc7_;
            }
            _loc8_;
            _loc8_;
            _loc8_;
            this.damage[this.damage.length - 1].container.num.text = _loc6_;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc8_;
            this.damage[this.damage.length - 1].container.numshadow.text = _loc6_;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc7_;
            this.damage[this.damage.length - 1].container.num.textColor = SafeGlobal.colour_hex[this.teams[param5].colourID];
            _loc7_;
            _loc7_;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc8_;
            this.damage[this.damage.length - 1].x = param1;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc8_;
            this.damage[this.damage.length - 1].y = param2;
            this.damage[this.damage.length - 1].rotation = param3 * 180 / this.PI;
            this.screen.addChild(this.damage[this.damage.length - 1]);
         }
      }
      
      public function addParticleLine(param1:Number, param2:Number, param3:Number, param4:Number, param5:int, param6:int, param7:Boolean) : *
      {
         var _loc11_:* = true;
         var _loc12_:* = false;
         _loc11_;
         _loc11_;
         _loc11_;
         var _loc8_:Number = param1 - param3;
         _loc11_;
         _loc11_;
         _loc11_;
         var _loc9_:Number = param2 - param4;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         _loc11_;
         this.§_-5P§.push(new §_-7v§(param6,param1,param2,0,0,param5,200,param7));
      }
      
      public function addProjParticlesNoFill(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:Boolean, param8:int, param9:Number) : *
      {
         var _loc10_:* = false;
         var _loc11_:* = true;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc10_;
         if(this.§_-fI§.length == 0)
         {
            _loc11_;
            _loc11_;
            _loc11_;
            this.§_-5P§.push(new §_-7v§(param1,param2,param3,0,0,param6,param8,param7));
            _loc10_;
         }
         else
         {
            _loc11_;
            _loc11_;
            _loc11_;
            this.§_-5P§.push(this.§_-fI§[this.§_-fI§.length - 1]);
            _loc11_;
            _loc11_;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc10_;
            this.§_-5P§[this.§_-5P§.length - 1].setVals(param1,param2,param3,0,0,param6,param8,param7);
            _loc11_;
            this.§_-fI§.splice(this.§_-fI§.length - 1,1);
         }
      }
      
      public function addProjParticles(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:Boolean, param8:int, param9:Number, param10:int = 1) : *
      {
         var _loc23_:* = true;
         var _loc24_:* = false;
         _loc23_;
         _loc23_;
         _loc23_;
         var _loc11_:Number = Math.random() * param9 * 2 - param9;
         _loc24_;
         _loc24_;
         _loc24_;
         _loc24_;
         var _loc12_:Number = Math.random() * param9 * 2 - param9;
         _loc24_;
         _loc24_;
         var _loc13_:Number = param4 - param2;
         _loc23_;
         _loc23_;
         var _loc14_:Number = param5 - param3;
         var _loc15_:Number = Math.sqrt(_loc13_ * _loc13_ + _loc14_ * _loc14_);
         _loc24_;
         _loc24_;
         var _loc16_:int = param10;
         var _loc17_:int = Math.floor(_loc15_ / _loc16_);
         _loc24_;
         _loc24_;
         _loc23_;
         var _loc18_:Number = _loc13_ / _loc17_;
         _loc24_;
         _loc23_;
         _loc23_;
         var _loc19_:Number = _loc14_ / _loc17_;
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
            _loc24_;
            _loc23_;
            _loc24_;
            _loc24_;
            _loc11_ = Math.random() * param9 * 2 - param9;
            _loc23_;
            _loc24_;
            _loc24_;
            _loc12_ = Math.random() * param9 * 2 - param9;
            _loc23_;
            _loc23_;
            _loc23_;
            if(this.§_-fI§.length == 0)
            {
               _loc24_;
               _loc24_;
               _loc23_;
               _loc23_;
               _loc23_;
               _loc23_;
               _loc23_;
               _loc23_;
               _loc23_;
               _loc23_;
               _loc23_;
               _loc23_;
               _loc24_;
               _loc24_;
               _loc24_;
               this.§_-5P§.push(new §_-7v§(param1,param2 + _loc18_ * _loc22_ + _loc11_ * _loc19_,param3 + _loc19_ * _loc22_ + _loc12_ * _loc18_,_loc20_,_loc21_,param6,param8,param7));
            }
            else
            {
               _loc24_;
               _loc24_;
               _loc24_;
               this.§_-5P§.push(this.§_-fI§[this.§_-fI§.length - 1]);
               _loc23_;
               _loc23_;
               _loc24_;
               _loc24_;
               _loc23_;
               _loc23_;
               this.§_-5P§[this.§_-5P§.length - 1].setVals(param1,param2 + _loc18_ * _loc22_ + _loc11_ * _loc19_,param3 + _loc19_ * _loc22_ + _loc12_ * _loc18_,_loc20_,_loc21_,param6,param8,param7);
               this.§_-fI§.splice(this.§_-fI§.length - 1,1);
               _loc24_;
            }
            _loc22_++;
         }
      }
      
      public function checkMineProximity(param1:Unit, param2:int) : *
      {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc8_:Mine = null;
         var _loc9_:§_-3e§ = null;
         var _loc6_:* = 0;
         while(true)
         {
            _loc10_;
            _loc10_;
            if(_loc6_ >= this.§_-KM§.length)
            {
               break;
            }
            _loc8_ = this.§_-KM§[_loc6_];
            _loc10_;
            _loc10_;
            _loc11_;
            _loc11_;
            if((_loc8_.active) && (_loc8_.triggerTime == 0 && !param1.removed && (!_loc8_.ignoreUnit || _loc8_.ignoreUnit && !(param1 == _loc8_.ignoreUnit))) && !this.§_-eS§)
            {
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc3_ = _loc8_.iX - param1.iX;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc4_ = _loc8_.iY - param1.iY;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc5_ = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
               if(_loc5_ <= _loc8_.triggerDistance)
               {
                  _loc10_;
                  if(_loc8_.roving)
                  {
                  }
                  _loc11_;
                  _loc11_;
                  if((_loc8_.roving) || (this.mods[SafeGlobal.MOD_INSTANTMINES]))
                  {
                     _loc8_.triggerMe(param2,20);
                     _loc11_;
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
            _loc11_;
            _loc10_;
            _loc10_;
            _loc10_;
            if((_loc9_.active) && !_loc9_.§_-5G§ && !param1.removed && !this.§_-eS§)
            {
               _loc11_;
               _loc11_;
               _loc10_;
               _loc10_;
               _loc3_ = _loc9_.iX - param1.iX;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc4_ = _loc9_.iY - param1.iY;
               _loc11_;
               _loc11_;
               _loc10_;
               _loc10_;
               _loc5_ = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
               if((Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_)) <= _loc9_.triggerDistance)
               {
                  _loc9_.triggerMe(param2);
               }
            }
            _loc7_++;
         }
      }
      
      public function §_-se§(param1:Unit) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         if(!this.simOnly && !this.costumeCacheOnly && this.turnState == "shoot")
         {
            _loc2_;
            _loc2_;
            this.§_-W1§.x = param1.iX;
            _loc2_;
            _loc3_;
            _loc3_;
            this.§_-W1§.y = param1.iY;
            _loc2_;
            _loc2_;
            this.§_-W1§.rotation = param1.rotation;
            this.§_-W1§.visible = true;
            _loc2_;
            this.§_-vb§.setChildIndex(param1,this.§_-vb§.numChildren - 1);
         }
      }
      
      public function §_-PE§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-W1§.visible = false;
      }
      
      public function §_-o6§(param1:Unit) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc3_;
         _loc3_;
         this.bubbles.x = param1.iX;
         _loc2_;
         _loc3_;
         _loc3_;
         this.bubbles.y = param1.iY;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         this.bubbles.rotation = param1.rotation;
         _loc3_;
         this.bubbles.visible = true;
         _loc2_;
         this.§_-vb§.setChildIndex(param1,this.§_-vb§.numChildren - 1);
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
            _loc3_;
            _loc3_;
            _loc4_;
            if((this.projectiles[_loc2_].mine) && this.projectiles[_loc2_].mine == param1)
            {
               _loc3_;
               _loc3_;
               this.projectiles[_loc2_].animate = true;
               _loc4_;
               _loc4_;
            }
            _loc2_++;
            _loc4_;
         }
      }
      
      public function §_-n7§(param1:Mine, param2:int) : *
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:int = this.§_-KM§.length - 1;
         while(_loc6_ >= 0)
         {
            _loc7_;
            _loc8_;
            if(this.§_-KM§[_loc6_] != param1)
            {
               _loc8_;
               _loc8_;
               _loc8_;
               _loc3_ = param1.iX - this.§_-KM§[_loc6_].iX;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc8_;
               _loc8_;
               _loc4_ = param1.iY - this.§_-KM§[_loc6_].iY;
               _loc8_;
               _loc8_;
               _loc7_;
               _loc5_ = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
               if(_loc5_ < 15)
               {
                  _loc7_;
                  _loc7_;
                  if(this.§_-KM§[_loc6_].payloadCount > 0)
                  {
                     param1.payloadCount = 6;
                  }
                  else if(this.§_-KM§[_loc6_].drillProj)
                  {
                     param1.drillProj = true;
                  }
                  
                  this.removeMine(this.§_-KM§[_loc6_]);
                  _loc7_;
                  param1.damage = param1.damage + 20;
                  param1.§_-P0§ = param1.§_-P0§ + 8;
                  _loc8_;
                  param1.outerRadius = param1.outerRadius + 8;
                  param1.explosionRadius = param1.explosionRadius + 8;
               }
            }
            _loc8_;
            _loc8_;
            _loc7_;
            _loc7_;
            _loc6_--;
            _loc7_;
         }
      }
      
      public function checkUnitProximity(param1:Mine, param2:int) : *
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc3_:* = 0;
         while(_loc3_ < this.units.length)
         {
            _loc7_;
            _loc8_;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc7_;
            if((param1.active) && !this.§_-eS§ && param1.triggerTime == 0 && !this.units[_loc3_].removed)
            {
               _loc7_;
               _loc4_ = param1.iX - this.units[_loc3_].iX;
               _loc5_ = param1.iY - this.units[_loc3_].iY;
               _loc7_;
               _loc7_;
               _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               _loc7_;
               _loc8_;
               if((param1.roving) && (param1.ignoreUnit && this.units[_loc3_] == param1.ignoreUnit) && _loc6_ > param1.triggerDistance)
               {
                  _loc8_;
                  _loc8_;
                  param1.ignoreUnit = null;
               }
               if(_loc6_ <= param1.triggerDistance && ((!param1.ignoreUnit) || (param1.ignoreUnit && !(this.units[_loc3_] == param1.ignoreUnit))))
               {
                  _loc8_;
                  if(param1.roving)
                  {
                     _loc8_;
                     _loc8_;
                  }
                  if((param1.roving) || (this.mods[SafeGlobal.MOD_INSTANTMINES]))
                  {
                     param1.triggerMe(param2,20);
                  }
                  else
                  {
                     param1.triggerMe(param2);
                     _loc8_;
                  }
               }
            }
            _loc3_++;
         }
      }
      
      public function simEvent(param1:§_-U4§) : *
      {
         var _loc72_:* = false;
         var _loc73_:* = true;
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
         _loc73_;
         _loc73_;
         _loc73_;
         if(param1.type == SafeGlobal.SIMEVENT_STARTWALK)
         {
            _loc72_;
            _loc72_;
            _loc73_;
            _loc73_;
            _loc72_;
            if(this.§_-d3§ < param1.time)
            {
               _loc72_;
               _loc72_;
               _loc72_;
               _loc73_;
               this.simManager.addObject(this.units[this.currentUnit],"simevent startwalk",true);
               this.units[this.currentUnit].lastSimTime = this.units[this.currentUnit].startSimTime = param1.time;
               _loc73_;
               _loc72_;
               _loc72_;
               this.units[this.currentUnit].walkDir = param1.extra.walkDir;
               _loc73_;
               _loc73_;
               this.units[this.currentUnit].facing = this.units[this.currentUnit].walkDir;
               _loc73_;
               _loc73_;
               this.units[this.currentUnit].doFlip(this.units[this.currentUnit].walkDir * -1);
               _loc72_;
               _loc72_;
               this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_WALK]);
               _loc73_;
               _loc73_;
               this.simManager.§_-pC§();
               _loc73_;
               _loc73_;
               this.§_-ck§();
            }
            else
            {
               SafeGlobal.§_-aU§ = SafeGlobal.§_-aU§ + String("walk timeout: " + this.§_-d3§ + "   simevent time: " + param1.time + "|");
            }
         }
         else
         {
            _loc72_;
            _loc72_;
            _loc72_;
            _loc72_;
            if(param1.type == SafeGlobal.SIMEVENT_STOPWALK)
            {
               _loc73_;
               _loc73_;
               this.simManager.removeObject(this.units[this.currentUnit],true);
               if(this.turnState == "shoot")
               {
                  this.§_-o6§(this.units[this.currentUnit]);
                  _loc72_;
                  _loc72_;
                  _loc72_;
                  this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_THINKINGSETUP,SafeGlobal.ANIM_UNIT_THINKING]);
               }
               else
               {
                  _loc73_;
                  this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
               }
               _loc73_;
               _loc73_;
               this.units[this.currentUnit].walkDir = 0;
               _loc73_;
               _loc73_;
               _loc73_;
               if(!this.replay)
               {
                  this.§_-d3§ = param1.time + this.§_-Pi§;
               }
               else
               {
                  this.§_-d3§ = 0;
               }
            }
            else
            {
               _loc73_;
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
                     if(this.§_-3o§)
                     {
                        this.§_-hM§ = true;
                        this.§_-uz§();
                        _loc73_;
                     }
                  }
                  this.simManager.turnOver = true;
                  _loc72_;
                  this.turnState = "end";
                  _loc73_;
                  this.camera.removeTarget(this.units[this.currentUnit]);
                  _loc72_;
                  _loc72_;
                  this.§_-fp§(this.§_-OZ§);
                  _loc73_;
                  this.hideBubbles();
                  _loc72_;
                  _loc72_;
                  _loc3_ = this.gates.length - 1;
                  while(true)
                  {
                     _loc73_;
                     _loc73_;
                     if(_loc3_ < 0)
                     {
                        break;
                     }
                     if(this.gates[_loc3_].placing)
                     {
                        _loc73_;
                        _loc73_;
                        this.removeGate(this.gates[_loc3_]);
                     }
                     _loc3_--;
                     _loc72_;
                     _loc72_;
                  }
                  _loc73_;
                  _loc73_;
                  if(this.myTurn)
                  {
                     _loc73_;
                     _loc73_;
                     _loc72_;
                     _loc72_;
                     _loc72_;
                     _loc72_;
                     _loc73_;
                     _loc73_;
                     if(param1.time == this.units[this.currentUnit].lastSimTime && !(this.units[this.currentUnit].walkDir == 0))
                     {
                        _loc72_;
                        _loc72_;
                        this.simObjectWalk(this.units[this.currentUnit],true);
                        _loc73_;
                        _loc73_;
                     }
                  }
                  else if(this.units[this.currentUnit].walkDir != 0)
                  {
                     _loc72_;
                     _loc4_ = 0;
                     _loc73_;
                     _loc73_;
                     if(param1.time == this.units[this.currentUnit].lastSimTime)
                     {
                        this.simObjectWalk(this.units[this.currentUnit],true);
                        _loc73_;
                        _loc4_ = 20;
                        _loc73_;
                        _loc73_;
                     }
                     _loc72_;
                     _loc72_;
                     this.units[this.currentUnit].walkDir = 0;
                     this.simManager.removeObject(this.units[this.currentUnit]);
                     _loc72_;
                     _loc72_;
                     this.§_-d3§ = param1.time + this.§_-Pi§ + _loc4_;
                  }
                  
                  if(this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_THINKING || this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_WALK)
                  {
                     _loc73_;
                     this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
                  }
                  this.§_-PE§();
                  _loc73_;
                  this.§_-M2§();
                  _loc73_;
                  this.§_-g5§();
                  this.§_-Jz§.hideMe();
               }
               else
               {
                  _loc72_;
                  _loc72_;
                  if(param1.type == SafeGlobal.SIMEVENT_PROJECTILE)
                  {
                     this.§_-OZ§ = SafeGlobal.CLEANUP_PROJECTILE;
                     this.turnState = "retreat";
                     _loc72_;
                     this.hideBubbles();
                     _loc72_;
                     this.§_-PE§();
                     _loc73_;
                     if(param1.extra.wepType != -1)
                     {
                        _loc5_ = SafeGlobal.§_-AT§(param1.extra.wepType);
                        _loc6_ = _loc5_[3];
                        _loc72_;
                        _loc72_;
                        _loc7_ = _loc6_[0];
                        _loc72_;
                        _loc8_ = _loc6_[1];
                        _loc9_ = Math.atan2(param1.extra.mY,param1.extra.mX);
                        _loc73_;
                        _loc73_;
                        _loc11_ = true;
                        _loc73_;
                        if(_loc5_[0] == SafeGlobal.WEAPONINFO_CUSTOM[0])
                        {
                           _loc72_;
                           _loc72_;
                           _loc72_;
                           _loc72_;
                           _loc72_;
                           _loc72_;
                           _loc72_;
                           _loc72_;
                           _loc73_;
                           _loc73_;
                           _loc10_ = this.teams[this.units[this.currentUnit].team].customWeaponStrings[0];
                           _loc72_;
                           _loc72_;
                        }
                        else if(_loc5_[0] == SafeGlobal.WEAPONINFO_CUSTOM2[0])
                        {
                           _loc72_;
                           _loc72_;
                           _loc72_;
                           _loc73_;
                           _loc73_;
                           _loc72_;
                           _loc72_;
                           _loc72_;
                           _loc10_ = this.teams[this.units[this.currentUnit].team].customWeaponStrings[1];
                        }
                        else if(_loc5_[0] == SafeGlobal.WEAPONINFO_CUSTOM3[0])
                        {
                           _loc73_;
                           _loc72_;
                           _loc72_;
                           _loc10_ = this.teams[this.units[this.currentUnit].team].customWeaponStrings[2];
                           _loc73_;
                           _loc73_;
                        }
                        else
                        {
                           _loc10_ = _loc5_[4];
                           _loc11_ = false;
                        }
                        
                        
                        _loc12_ = this.units[this.currentUnit].startPoint(_loc7_);
                        _loc13_ = new Point(_loc12_.x,_loc12_.y);
                        _loc12_.x = this.§_-cl§(_loc12_.x);
                        _loc73_;
                        _loc12_.y = this.§_-cl§(_loc12_.y);
                        _loc72_;
                        _loc72_;
                        _loc13_.x = _loc13_.x + Math.cos(_loc9_) * _loc8_;
                        _loc13_.y = _loc13_.y + Math.sin(_loc9_) * _loc8_;
                        _loc13_.x = this.§_-cl§(_loc13_.x);
                        _loc13_.y = this.§_-cl§(_loc13_.y);
                        if(param1.extra.pID == SafeGlobal.PROJTYPE_JETPACK)
                        {
                           _loc73_;
                           _loc72_;
                           _loc72_;
                           _loc14_ = this.units[this.currentUnit].startPoint();
                           this.addUnitProjectile(_loc14_.x,_loc14_.y,param1.extra.mX,param1.extra.mY,param1.time,this.units[this.currentUnit],false);
                           _loc73_;
                           _loc73_;
                           _loc73_;
                           _loc73_;
                           _loc73_;
                           _loc73_;
                           _loc73_;
                           _loc15_ = SoundManager.§_-rg§(SafeGlobal.FX_JETPACK,10000,true,(this.simOnly) || (this.costumeCacheOnly));
                           _loc72_;
                           _loc73_;
                           _loc72_;
                           this.projectiles[this.projectiles.length - 1].sound_uid = _loc15_;
                           _loc72_;
                           if(this.units[this.currentUnit].poison == 0)
                           {
                              _loc72_;
                              _loc72_;
                              this.units[this.currentUnit].hidePoison();
                           }
                           this.§_-i7§ = 1;
                           _loc72_;
                           _loc73_;
                           _loc73_;
                           _loc73_;
                           _loc73_;
                           this.projectiles[this.projectiles.length - 1].scaleX = this.units[this.currentUnit].scaleX;
                           _loc72_;
                           _loc72_;
                           _loc73_;
                           _loc72_;
                           _loc73_;
                           _loc73_;
                           this.projectiles[this.projectiles.length - 1].init(this.units[this.currentUnit].costume.spriteSheets[SafeGlobal.ANIM_UNIT_JETPACK]);
                           _loc73_;
                           _loc73_;
                           this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_JETPACK]);
                           this.projectiles[this.projectiles.length - 1].useProjString("e,99,2",false);
                        }
                        else if(param1.extra.pID == SafeGlobal.§_-Es§)
                        {
                           _loc14_ = this.units[this.currentUnit].startPoint();
                           this.addUnitProjectile(_loc14_.x,_loc14_.y,param1.extra.mX,param1.extra.mY,param1.time,this.units[this.currentUnit],false);
                           _loc72_;
                           _loc72_;
                           this.units[this.currentUnit].rocketGloves = true;
                           _loc73_;
                           _loc73_;
                           _loc72_;
                           _loc72_;
                           _loc73_;
                           _loc73_;
                           _loc73_;
                           _loc73_;
                           _loc15_ = SoundManager.§_-rg§(SafeGlobal.FX_JETPACK,10000,true,(this.simOnly) || (this.costumeCacheOnly));
                           _loc73_;
                           _loc72_;
                           _loc72_;
                           this.projectiles[this.projectiles.length - 1].sound_uid = _loc15_;
                           _loc73_;
                           _loc72_;
                           _loc72_;
                           _loc73_;
                           if(this.units[this.currentUnit].poison == 0)
                           {
                              _loc72_;
                              _loc72_;
                              _loc73_;
                              this.units[this.currentUnit].hidePoison();
                              _loc72_;
                              _loc72_;
                           }
                           this.§_-pc§ = 1;
                           _loc73_;
                           _loc73_;
                           _loc73_;
                           _loc73_;
                           _loc73_;
                           _loc73_;
                           this.projectiles[this.projectiles.length - 1].scaleX = this.units[this.currentUnit].scaleX;
                           _loc72_;
                           _loc72_;
                           _loc72_;
                           _loc73_;
                           this.projectiles[this.projectiles.length - 1].init(this.units[this.currentUnit].costume.spriteSheets[SafeGlobal.ANIM_UNIT_ROCKETGLOVES]);
                           _loc72_;
                           _loc72_;
                           this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_ROCKETGLOVES]);
                           _loc73_;
                           _loc73_;
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
                           _loc19_ = _loc16_[1];
                           _loc20_ = _loc19_.split(";");
                           _loc73_;
                           _loc25_ = -1;
                           _loc26_ = -1;
                           _loc73_;
                           _loc27_ = -1;
                           _loc72_;
                           _loc28_ = -1;
                           _loc29_ = -1;
                           _loc30_ = false;
                           _loc72_;
                           _loc73_;
                           _loc73_;
                           _loc31_ = 0;
                           _loc73_;
                           _loc73_;
                           _loc32_ = 0;
                           _loc72_;
                           _loc72_;
                           _loc34_ = 0;
                           _loc35_ = 0;
                           _loc36_ = "";
                           _loc37_ = _loc17_.split(";");
                           _loc38_ = 0;
                           while(_loc38_ < _loc37_.length)
                           {
                              _loc22_ = _loc37_[_loc38_].split(",");
                              if(_loc22_[0] == "g")
                              {
                                 _loc72_;
                                 _loc24_ = int(_loc22_[1]);
                                 _loc72_;
                                 _loc72_;
                              }
                              else if(_loc22_[0] == "r")
                              {
                                 _loc72_;
                                 _loc72_;
                                 _loc25_ = int(_loc22_[1]);
                                 _loc73_;
                                 _loc26_ = int(_loc22_[2]);
                                 _loc73_;
                                 _loc73_;
                              }
                              else if(_loc22_[0] == "m")
                              {
                                 _loc72_;
                                 _loc72_;
                                 _loc27_ = int(_loc22_[1]);
                                 _loc72_;
                                 _loc72_;
                                 _loc28_ = int(_loc22_[2]);
                                 _loc73_;
                                 _loc29_ = int(_loc22_[3]);
                                 _loc72_;
                              }
                              else if(_loc22_[0] == "n")
                              {
                                 _loc36_ = _loc22_[1].split("*").join(" ");
                                 _loc73_;
                              }
                              else if(_loc22_[0] == "s")
                              {
                                 _loc34_ = Number(_loc22_[1]);
                                 _loc73_;
                                 _loc73_;
                              }
                              
                              
                              
                              
                              _loc38_++;
                           }
                           _loc72_;
                           _loc72_;
                           _loc72_;
                           if(_loc36_ != "")
                           {
                              _loc73_;
                              _loc73_;
                              this.showMessage(this.units[this.currentUnit].unitName + " used " + _loc36_,SafeGlobal.colour_hex[this.teams[this.units[this.currentUnit].team].colourID]);
                           }
                           _loc39_ = 0;
                           _loc72_;
                           _loc72_;
                           while(_loc39_ < _loc20_.length)
                           {
                              _loc21_ = _loc20_[_loc39_].split(",");
                              if(_loc21_[0] == "g")
                              {
                                 _loc72_;
                                 _loc72_;
                                 _loc72_;
                                 _loc72_;
                                 if(!_loc11_)
                                 {
                                    _loc73_;
                                    _loc73_;
                                    _loc73_;
                                    _loc23_ = int(_loc5_[0]);
                                 }
                                 else
                                 {
                                    _loc23_ = int(_loc21_[2]);
                                    _loc72_;
                                    _loc72_;
                                 }
                              }
                              else if(_loc21_[0] == "x")
                              {
                                 _loc30_ = true;
                              }
                              
                              _loc39_++;
                           }
                           _loc40_ = 1;
                           _loc72_;
                           _loc72_;
                           while(_loc40_ < _loc16_.length)
                           {
                              if(_loc40_ > 1)
                              {
                                 _loc73_;
                                 _loc72_;
                                 _loc72_;
                                 _loc18_ = _loc18_ + "/";
                              }
                              _loc73_;
                              _loc18_ = _loc18_ + _loc16_[_loc40_];
                              _loc72_;
                              _loc72_;
                              _loc40_++;
                           }
                           _loc72_;
                           _loc72_;
                           SafeGlobal.§_-n8§ = String("unit.x = " + this.units[this.currentUnit].iX + ", unit.y = " + this.units[this.currentUnit].iY + " addPoint.x = " + _loc13_.x + ", addPoint.y = " + _loc13_.y);
                           if(_loc25_ != -1)
                           {
                              _loc72_;
                              _loc41_ = 0;
                              _loc73_;
                              _loc73_;
                              while(true)
                              {
                                 _loc72_;
                                 if(_loc41_ >= _loc25_)
                                 {
                                    break;
                                 }
                                 _loc73_;
                                 _loc73_;
                                 _loc72_;
                                 _loc72_;
                                 _loc72_;
                                 _loc72_;
                                 _loc35_ = (_loc25_ - 1) * _loc26_ * 100;
                                 _loc72_;
                                 _loc72_;
                                 if(_loc30_)
                                 {
                                    _loc33_ = Math.atan2(param1.extra.mY,param1.extra.mX);
                                    _loc73_;
                                    _loc73_;
                                    _loc73_;
                                    _loc31_ = this.§_-cl§(this.§_-zf§ * Math.cos(_loc33_));
                                    _loc72_;
                                    _loc72_;
                                    _loc32_ = this.§_-cl§(this.§_-zf§ * Math.sin(_loc33_));
                                    _loc72_;
                                    _loc72_;
                                    this.addProjectile(_loc13_.x,_loc13_.y,_loc31_,_loc32_,param1.time + _loc26_ * _loc41_ * 100,_loc18_,_loc11_,true);
                                 }
                                 else
                                 {
                                    _loc73_;
                                    _loc73_;
                                    if(_loc34_ > 0)
                                    {
                                       _loc73_;
                                       _loc72_;
                                       _loc72_;
                                       _loc73_;
                                       _loc73_;
                                       _loc73_;
                                       _loc42_ = this.§_-cl§(_loc34_ * this.PI / 180 / 14);
                                       _loc43_ = this.§_-cl§(Math.atan2(param1.extra.mY,param1.extra.mX));
                                       _loc44_ = this.§_-cl§(Math.sqrt(param1.extra.mX * param1.extra.mX + param1.extra.mY * param1.extra.mY));
                                       _loc72_;
                                       _loc72_;
                                       _loc72_;
                                       _loc72_;
                                       _loc72_;
                                       _loc73_;
                                       _loc45_ = int(this.§_-fz§.substr(_loc41_,1)) * 4 - 18;
                                       _loc73_;
                                       _loc46_ = this.§_-cl§(_loc45_ * _loc42_);
                                       _loc72_;
                                       _loc47_ = this.§_-cl§(_loc44_ * Math.cos(_loc46_ + _loc43_));
                                       _loc73_;
                                       _loc73_;
                                       _loc73_;
                                       _loc73_;
                                       _loc48_ = this.§_-cl§(_loc44_ * Math.sin(_loc46_ + _loc43_));
                                       this.addProjectile(_loc13_.x,_loc13_.y,_loc47_,_loc48_,param1.time + _loc26_ * _loc41_ * 100,_loc18_,_loc11_,true);
                                       _loc72_;
                                       this.projectiles[this.projectiles.length - 1].spin = Math.random() > 0.5?10:-10;
                                       _loc73_;
                                       _loc73_;
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
                                 _loc73_;
                                 this.projectiles[this.projectiles.length - 1].initialPlanetCheck = true;
                                 this.projectiles[this.projectiles.length - 1].initialPoint = _loc12_;
                                 _loc73_;
                                 _loc72_;
                                 _loc72_;
                                 _loc72_;
                                 if(_loc41_ > 0)
                                 {
                                    _loc72_;
                                    _loc72_;
                                    this.projectiles[this.projectiles.length - 1].visible = false;
                                 }
                                 this.projectiles[this.projectiles.length - 1].setIgnoreUnit(this.currentUnit);
                                 _loc72_;
                                 _loc72_;
                                 _loc72_;
                                 _loc72_;
                                 this.projectiles[this.projectiles.length - 1].custom = _loc11_;
                                 _loc72_;
                                 if(!_loc11_)
                                 {
                                    _loc72_;
                                    _loc72_;
                                    _loc73_;
                                    this.projectiles[this.projectiles.length - 1].init(this.projGFX[_loc23_]);
                                    _loc73_;
                                    _loc73_;
                                 }
                                 else
                                 {
                                    _loc73_;
                                    _loc73_;
                                    this.projectiles[this.projectiles.length - 1].init(this.customProjectileGFX[_loc23_]);
                                 }
                                 this.projectiles[this.projectiles.length - 1].track = true;
                                 _loc73_;
                                 _loc73_;
                                 _loc41_++;
                              }
                           }
                           else if(_loc27_ != -1)
                           {
                              _loc72_;
                              _loc72_;
                              _loc72_;
                              _loc72_;
                              _loc49_ = _loc28_ * this.PI / 180;
                              _loc50_ = Math.sqrt(param1.extra.mX * param1.extra.mX + param1.extra.mY * param1.extra.mY);
                              _loc9_ = Math.atan2(param1.extra.mY,param1.extra.mX);
                              _loc72_;
                              _loc73_;
                              _loc73_;
                              _loc51_ = (_loc27_ - 1) * _loc49_;
                              _loc73_;
                              _loc52_ = ((_loc27_ - 1) * _loc49_) / 2;
                              _loc73_;
                              _loc73_;
                              _loc56_ = 0;
                              _loc57_ = 0;
                              _loc59_ = 0;
                              while(true)
                              {
                                 _loc73_;
                                 _loc73_;
                                 _loc73_;
                                 if(_loc59_ >= _loc27_)
                                 {
                                    break;
                                 }
                                 _loc56_ = _loc56_ + (int(this.§_-fz§.substr(_loc59_,1)) + 1);
                                 _loc59_++;
                              }
                              _loc72_;
                              _loc72_;
                              _loc72_;
                              _loc60_ = 0;
                              while(_loc60_ < _loc27_)
                              {
                                 _loc72_;
                                 _loc72_;
                                 if(_loc29_ == 0)
                                 {
                                    _loc73_;
                                    _loc72_;
                                    _loc72_;
                                    _loc72_;
                                    _loc55_ = _loc9_ - _loc52_ + _loc60_ * _loc49_;
                                    _loc72_;
                                    _loc73_;
                                    _loc73_;
                                    _loc73_;
                                    _loc53_ = this.§_-cl§(_loc50_ * Math.cos(_loc55_));
                                    _loc73_;
                                    _loc73_;
                                    _loc72_;
                                    _loc72_;
                                    _loc54_ = this.§_-cl§(_loc50_ * Math.sin(_loc55_));
                                    _loc72_;
                                    _loc72_;
                                 }
                                 else
                                 {
                                    _loc72_;
                                    _loc72_;
                                    if(_loc29_ == 1)
                                    {
                                       _loc72_;
                                       _loc72_;
                                       _loc58_ = int(this.§_-fz§.substr(_loc60_,1)) + 1;
                                       _loc73_;
                                       _loc73_;
                                       _loc57_ = _loc57_ + _loc58_;
                                       _loc73_;
                                       _loc73_;
                                       _loc72_;
                                       _loc72_;
                                       _loc55_ = _loc9_ - _loc52_ + _loc51_ / _loc56_ * _loc57_;
                                       _loc72_;
                                       _loc53_ = this.§_-cl§(_loc50_ * Math.cos(_loc55_));
                                       _loc73_;
                                       _loc54_ = this.§_-cl§(_loc50_ * Math.sin(_loc55_));
                                    }
                                 }
                                 _loc72_;
                                 _loc72_;
                                 if(_loc30_)
                                 {
                                    _loc33_ = Math.atan2(_loc54_,_loc53_);
                                    _loc73_;
                                    _loc31_ = this.§_-cl§(this.§_-zf§ * Math.cos(_loc33_));
                                    _loc72_;
                                    _loc72_;
                                    _loc72_;
                                    _loc72_;
                                    _loc73_;
                                    _loc32_ = this.§_-cl§(this.§_-zf§ * Math.sin(_loc33_));
                                    this.addProjectile(_loc13_.x,_loc13_.y,_loc31_,_loc32_,param1.time,_loc18_,_loc11_,true);
                                    _loc72_;
                                    _loc72_;
                                 }
                                 else
                                 {
                                    this.addProjectile(_loc13_.x,_loc13_.y,_loc53_,_loc54_,param1.time,_loc18_,_loc11_,true);
                                 }
                                 _loc73_;
                                 _loc73_;
                                 _loc72_;
                                 this.projectiles[this.projectiles.length - 1].initialPlanetCheck = true;
                                 this.projectiles[this.projectiles.length - 1].initialPoint = _loc12_;
                                 _loc72_;
                                 _loc72_;
                                 _loc72_;
                                 this.projectiles[this.projectiles.length - 1].setIgnoreUnit(this.currentUnit);
                                 _loc72_;
                                 this.projectiles[this.projectiles.length - 1].custom = _loc11_;
                                 _loc72_;
                                 if(!_loc11_)
                                 {
                                    _loc73_;
                                    _loc72_;
                                    this.projectiles[this.projectiles.length - 1].init(this.projGFX[_loc23_]);
                                    _loc72_;
                                    _loc72_;
                                 }
                                 else
                                 {
                                    _loc73_;
                                    this.projectiles[this.projectiles.length - 1].init(this.customProjectileGFX[_loc23_]);
                                 }
                                 this.projectiles[this.projectiles.length - 1].track = true;
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
                                 _loc31_ = this.§_-cl§(this.§_-zf§ * Math.cos(_loc33_));
                                 _loc72_;
                                 _loc32_ = this.§_-cl§(this.§_-zf§ * Math.sin(_loc33_));
                                 this.addProjectile(_loc13_.x,_loc13_.y,_loc31_,_loc32_,param1.time,_loc18_,_loc11_,true);
                                 _loc73_;
                              }
                              else
                              {
                                 this.addProjectile(_loc13_.x,_loc13_.y,param1.extra.mX,param1.extra.mY,param1.time,_loc18_,_loc11_,true);
                                 _loc72_;
                              }
                              this.projectiles[this.projectiles.length - 1].initialPlanetCheck = true;
                              _loc72_;
                              _loc72_;
                              _loc73_;
                              _loc73_;
                              this.projectiles[this.projectiles.length - 1].initialPoint = _loc12_;
                              _loc72_;
                              this.projectiles[this.projectiles.length - 1].setIgnoreUnit(this.currentUnit);
                              _loc73_;
                              _loc73_;
                              _loc73_;
                              _loc73_;
                              _loc73_;
                              this.projectiles[this.projectiles.length - 1].custom = _loc11_;
                              _loc72_;
                              if(!_loc11_)
                              {
                                 this.projectiles[this.projectiles.length - 1].init(this.projGFX[_loc23_]);
                                 _loc73_;
                              }
                              else
                              {
                                 this.projectiles[this.projectiles.length - 1].init(this.customProjectileGFX[_loc23_]);
                              }
                              this.projectiles[this.projectiles.length - 1].track = true;
                           }
                           
                           if(_loc5_[0] == SafeGlobal.WEAPONINFO_GRAVITEEBALL[0])
                           {
                              _loc72_;
                              _loc72_;
                              this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_GOLFSWING,SafeGlobal.ANIM_UNIT_BOB]);
                              _loc73_;
                              _loc73_;
                              this.projectiles[this.projectiles.length - 1].orientToPath = false;
                              _loc73_;
                           }
                           else
                           {
                              this.addEffect(SafeGlobal.EFFECTS_BAZOOKAFLASH,_loc13_.x,_loc13_.y,int(_loc9_ * 180 / this.PI));
                           }
                        }
                        
                        this.§_-I8§();
                        _loc72_;
                        this.§_-QM§.splice(0);
                        this.§_-Jz§.startRetreat(param1.time,_loc35_);
                        this.simManager.startRetreat(param1.time,_loc35_);
                        if(!this.myTurn)
                        {
                           _loc72_;
                           _loc72_;
                           this.camera.removeTarget(this.units[this.currentUnit]);
                        }
                        this.§_-d3§ = param1.time + _loc35_;
                     }
                     this.§_-X8§();
                     this.§_-lc§ = 0;
                     _loc72_;
                  }
                  else
                  {
                     _loc73_;
                     if(param1.type == SafeGlobal.SIMEVENT_MINE)
                     {
                        _loc72_;
                        this.turnState = "retreat";
                        _loc72_;
                        _loc72_;
                        this.§_-PE§();
                        _loc72_;
                        _loc2_ = this.units[this.currentUnit];
                        this.addMineAtPoint(_loc2_.iX,_loc2_.iY,_loc2_.iR,param1.extra.mineType,_loc2_.locationPlanet,_loc2_.locationShape,_loc2_.locationCurve,_loc2_.locationCurveX,_loc2_.locationCurveY,_loc2_.locationCurveRadius,_loc2_.locationAngle,_loc2_,param1.time,false);
                        this.§_-9-§ = 1;
                        this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
                        _loc73_;
                        this.§_-Jz§.startRetreat(param1.time);
                        _loc72_;
                        this.simManager.startRetreat(param1.time);
                        if(!this.myTurn)
                        {
                           this.camera.removeTarget(this.units[this.currentUnit]);
                        }
                        this.§_-X8§();
                        this.§_-lc§ = 0;
                     }
                     else if(param1.type == SafeGlobal.SIMEVENT_MELEE)
                     {
                        _loc72_;
                        this.turnState = "retreat";
                        this.§_-PE§();
                        _loc72_;
                        _loc72_;
                        _loc73_;
                        _loc2_ = this.units[this.currentUnit];
                        _loc73_;
                        this.melee(param1.time,param1.extra.wepType);
                        _loc72_;
                        _loc72_;
                        this.§_-Jz§.startRetreat(param1.time);
                        this.simManager.startRetreat(param1.time);
                        if(!this.myTurn)
                        {
                           this.camera.removeTarget(this.units[this.currentUnit]);
                        }
                        this.§_-X8§();
                        _loc73_;
                        _loc73_;
                        this.§_-lc§ = 0;
                     }
                     else if(param1.type == SafeGlobal.SIMEVENT_INCOMING)
                     {
                        this.turnState = "retreat";
                        this.§_-PE§();
                        _loc73_;
                        _loc73_;
                        this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_TABLET,SafeGlobal.ANIM_UNIT_TABLET,SafeGlobal.ANIM_UNIT_BOB]);
                        _loc2_ = this.units[this.currentUnit];
                        this.incoming(param1.time,param1.extra.wepType,param1.extra.inAngle);
                        this.§_-Jz§.startRetreat(param1.time);
                        this.simManager.startRetreat(param1.time);
                        if(!this.myTurn)
                        {
                           _loc72_;
                           this.camera.removeTarget(this.units[this.currentUnit]);
                        }
                        this.§_-X8§();
                        _loc72_;
                        _loc72_;
                        this.§_-lc§ = 0;
                     }
                     else
                     {
                        _loc72_;
                        if(param1.type == SafeGlobal.SIMEVENT_GATE)
                        {
                           this.turnState = "retreat";
                           _loc73_;
                           _loc73_;
                           this.§_-PE§();
                           _loc72_;
                           _loc72_;
                           _loc2_ = this.units[this.currentUnit];
                           this.addGate(param1.extra.pX1,param1.extra.pY1,param1.extra.pR1,param1.extra.wepType);
                           _loc73_;
                           _loc73_;
                           _loc73_;
                           if(!(param1.extra.pX2 == -1) && !(param1.extra.pY2 == -1) && !(param1.extra.pR2 == -1))
                           {
                              this.addGate(param1.extra.pX2,param1.extra.pY2,param1.extra.pR2,param1.extra.wepType);
                              _loc72_;
                              _loc72_;
                              _loc72_;
                              _loc73_;
                              _loc73_;
                              this.gates[this.gates.length - 1].pair = this.gates[this.gates.length - 2];
                              _loc72_;
                              this.gates[this.gates.length - 2].pair = this.gates[this.gates.length - 1];
                           }
                           this.§_-Jz§.startRetreat(param1.time);
                           _loc73_;
                           _loc73_;
                           this.simManager.startRetreat(param1.time);
                           _loc72_;
                           _loc72_;
                           if(!this.myTurn)
                           {
                              _loc73_;
                              _loc73_;
                              this.camera.removeTarget(this.units[this.currentUnit]);
                           }
                           this.§_-X8§();
                           _loc72_;
                           _loc72_;
                           this.§_-lc§ = 0;
                        }
                        else if(param1.type == SafeGlobal.SIMEVENT_PLANETSELECT)
                        {
                           _loc73_;
                           this.turnState = "retreat";
                           this.§_-PE§();
                           _loc73_;
                           _loc2_ = this.units[this.currentUnit];
                           if(param1.extra.wepType == SafeGlobal.§_-UH§[0])
                           {
                              _loc72_;
                              this.planets[_loc2_.locationPlanet].activateShield(3,true,true);
                              _loc72_;
                           }
                           else
                           {
                              this.planets[_loc2_.locationPlanet].activateShield(3,false,true);
                              _loc72_;
                              _loc72_;
                           }
                           this.§_-lQ§ = 1;
                           _loc73_;
                           _loc73_;
                           this.§_-Jz§.startRetreat(param1.time);
                           this.simManager.startRetreat(param1.time);
                           if(!this.myTurn)
                           {
                              this.camera.removeTarget(this.units[this.currentUnit]);
                              _loc73_;
                              _loc73_;
                           }
                           this.§_-X8§();
                           _loc72_;
                           this.§_-lc§ = 0;
                        }
                        else
                        {
                           _loc72_;
                           if(param1.type == SafeGlobal.SIMEVENT_POINTSELECT)
                           {
                              _loc72_;
                              this.turnState = "retreat";
                              _loc73_;
                              _loc73_;
                              this.§_-PE§();
                              _loc2_ = this.units[this.currentUnit];
                              this.addEffect(SafeGlobal.EFFECTS_TELEPORTOUT,_loc2_.iX,_loc2_.iY,_loc2_.rotation,_loc2_);
                              _loc73_;
                              _loc73_;
                              _loc73_;
                              _loc73_;
                              _loc61_ = false;
                              if(param1.extra.wepType == SafeGlobal.§_-us§[0])
                              {
                                 _loc73_;
                                 _loc73_;
                                 _loc73_;
                                 _loc73_;
                                 _loc61_ = true;
                              }
                              this.teleportTo(param1.time,_loc2_,param1.extra.planetID,param1.extra.shapeID,param1.extra.curveID,param1.extra.angle,_loc61_);
                              this.§_-Jz§.startRetreat(param1.time);
                              _loc72_;
                              this.simManager.startRetreat(param1.time);
                              if(!this.myTurn)
                              {
                                 this.camera.removeTarget(this.units[this.currentUnit]);
                              }
                              this.§_-X8§();
                              this.§_-lc§ = 0;
                           }
                           else if(param1.type == SafeGlobal.SIMEVENT_MELEEAIM)
                           {
                              _loc73_;
                              this.hideBubbles();
                              _loc72_;
                              _loc72_;
                              _loc5_ = SafeGlobal.§_-AT§(param1.extra.wepType);
                              if(_loc5_[0] == SafeGlobal.WEAPONINFO_SPACEBALLBAT[0])
                              {
                                 _loc72_;
                                 _loc72_;
                                 _loc73_;
                                 _loc73_;
                                 _loc72_;
                                 _loc72_;
                                 this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_SPACEBALLSWINGSETUP,SafeGlobal.ANIM_UNIT_SPACEBALLSWINGHOLD]);
                              }
                              else if(_loc5_[0] == SafeGlobal.WEAPONINFO_FIREPUNCH[0])
                              {
                                 _loc73_;
                                 _loc73_;
                                 this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_UPPERCUTSETUP,SafeGlobal.ANIM_UNIT_UPPERCUTHOLD]);
                              }
                              else if(_loc5_[0] == SafeGlobal.WEAPONINFO_TAZER[0])
                              {
                                 _loc72_;
                                 _loc72_;
                                 _loc72_;
                                 _loc73_;
                                 _loc73_;
                                 this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_TAZERJABSETUP,SafeGlobal.ANIM_UNIT_TAZERJABHOLD]);
                              }
                              else if(_loc5_[0] == SafeGlobal.§_-OV§[0])
                              {
                                 _loc73_;
                                 this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_ENERGYSWORDSETUP,SafeGlobal.ANIM_UNIT_ENERGYSWORDHOLD]);
                              }
                              
                              
                              
                           }
                           else if(param1.type == SafeGlobal.SIMEVENT_PROJAIM)
                           {
                              this.hideBubbles();
                              this.§_-QM§.splice(0);
                              _loc72_;
                              this.§_-OZ§ = SafeGlobal.CLEANUP_PROJECTILE;
                              if(param1.extra.wepType > -1)
                              {
                                 _loc72_;
                                 this.units[this.currentUnit].scaleX = -1;
                                 this.units[this.currentUnit].healthDisplay.scaleX = -1;
                                 _loc73_;
                                 this.units[this.currentUnit].nameDisplay.scaleX = -1;
                                 _loc72_;
                              }
                              _loc2_ = this.units[this.currentUnit];
                              if(param1.extra.wepType == -1)
                              {
                                 this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_SLEEP,SafeGlobal.ANIM_UNIT_SLEEP,SafeGlobal.ANIM_UNIT_BOB]);
                                 _loc72_;
                                 _loc72_;
                                 if(param1.time == -490)
                                 {
                                    this.§_-MA§ = 1;
                                    _loc72_;
                                 }
                                 else
                                 {
                                    this.§function§ = 1;
                                    _loc73_;
                                 }
                                 this.§_-lc§ = 0;
                              }
                              else
                              {
                                 _loc5_ = SafeGlobal.§_-AT§(param1.extra.wepType);
                                 _loc73_;
                                 _loc73_;
                                 if(this.§_-2M§)
                                 {
                                    _loc73_;
                                    this.§_-Pn§();
                                 }
                                 this.§_-2M§ = this.§_-yt§(_loc5_);
                                 this.§_-D0§.§_-un§ = this.§_-un§;
                                 this.§_-un§ = 0;
                                 _loc73_;
                                 _loc73_;
                                 _loc73_;
                                 _loc62_ = true;
                                 _loc72_;
                                 _loc72_;
                                 _loc10_ = "";
                                 _loc72_;
                                 if(_loc5_[0] == SafeGlobal.WEAPONINFO_CUSTOM[0])
                                 {
                                    _loc72_;
                                    _loc72_;
                                    _loc72_;
                                    _loc72_;
                                    _loc72_;
                                    _loc72_;
                                    _loc72_;
                                    _loc10_ = this.teams[this.units[this.currentUnit].team].customWeaponStrings[0];
                                 }
                                 else if(_loc5_[0] == SafeGlobal.WEAPONINFO_CUSTOM2[0])
                                 {
                                    _loc72_;
                                    _loc72_;
                                    _loc72_;
                                    _loc72_;
                                    _loc72_;
                                    _loc72_;
                                    _loc72_;
                                    _loc72_;
                                    _loc10_ = this.teams[this.units[this.currentUnit].team].customWeaponStrings[1];
                                 }
                                 else if(_loc5_[0] == SafeGlobal.WEAPONINFO_CUSTOM3[0])
                                 {
                                    _loc72_;
                                    _loc72_;
                                    _loc10_ = this.teams[this.units[this.currentUnit].team].customWeaponStrings[2];
                                 }
                                 else
                                 {
                                    _loc62_ = false;
                                    _loc73_;
                                    _loc10_ = _loc5_[4];
                                 }
                                 
                                 
                                 _loc16_ = _loc10_.split("/");
                                 _loc73_;
                                 _loc73_;
                                 _loc17_ = _loc16_[0];
                                 _loc73_;
                                 _loc73_;
                                 _loc19_ = _loc16_[1];
                                 _loc72_;
                                 _loc72_;
                                 _loc73_;
                                 this.§_-D0§.§_-lw§ = false;
                                 _loc72_;
                                 _loc72_;
                                 _loc72_;
                                 _loc72_;
                                 if((_loc19_) && !(_loc19_ == ""))
                                 {
                                    this.§_-D0§.useProjString(_loc19_,_loc62_);
                                    _loc72_;
                                    _loc72_;
                                 }
                                 _loc72_;
                                 _loc72_;
                                 _loc72_;
                                 _loc72_;
                                 _loc72_;
                                 if(!this.simOnly && !this.costumeCacheOnly && !(_loc5_[0] == SafeGlobal.WEAPONINFO_JETPACK[0]))
                                 {
                                    this.§_-Fz§();
                                    _loc73_;
                                 }
                                 _loc63_ = Math.atan2(param1.extra.mY,param1.extra.mX);
                                 this.§_-2M§.rotation = (_loc63_ - this.PI) * 180 / this.PI;
                                 _loc73_;
                                 _loc73_;
                                 _loc72_;
                                 _loc64_ = (_loc63_ - this.units[this.currentUnit].iR) * 180 / this.PI;
                                 while(true)
                                 {
                                    _loc73_;
                                    if(_loc64_ >= 0)
                                    {
                                       break;
                                    }
                                    _loc72_;
                                    _loc73_;
                                    _loc73_;
                                    _loc64_ = _loc64_ + 360;
                                    _loc72_;
                                 }
                                 while(true)
                                 {
                                    _loc73_;
                                    _loc73_;
                                    if(_loc64_ <= 360)
                                    {
                                       break;
                                    }
                                    _loc64_ = _loc64_ - 360;
                                 }
                                 _loc72_;
                                 if(_loc5_[0] == SafeGlobal.WEAPONINFO_JETPACK[0])
                                 {
                                    _loc73_;
                                    _loc72_;
                                    _loc72_;
                                    if(_loc64_ < 90 || _loc64_ > 270)
                                    {
                                       _loc72_;
                                       _loc73_;
                                       _loc73_;
                                       this.units[this.currentUnit].scaleX = -1;
                                       this.units[this.currentUnit].healthDisplay.scaleX = -1;
                                       this.units[this.currentUnit].nameDisplay.scaleX = -1;
                                    }
                                    else
                                    {
                                       this.units[this.currentUnit].scaleX = 1;
                                       _loc73_;
                                       _loc73_;
                                       this.units[this.currentUnit].healthDisplay.scaleX = 1;
                                       _loc72_;
                                       this.units[this.currentUnit].nameDisplay.scaleX = 1;
                                    }
                                 }
                                 else
                                 {
                                    _loc73_;
                                    _loc73_;
                                    if(_loc64_ < 90 || _loc64_ > 270)
                                    {
                                       _loc72_;
                                       _loc72_;
                                       this.units[this.currentUnit].scaleX = -1;
                                       _loc73_;
                                       _loc73_;
                                       this.units[this.currentUnit].healthDisplay.scaleX = -1;
                                       _loc72_;
                                       _loc73_;
                                       this.units[this.currentUnit].nameDisplay.scaleX = -1;
                                       _loc73_;
                                       this.§_-2M§.scaleY = -1;
                                    }
                                    else
                                    {
                                       _loc73_;
                                       _loc73_;
                                       _loc73_;
                                       this.units[this.currentUnit].scaleX = 1;
                                       _loc72_;
                                       this.units[this.currentUnit].healthDisplay.scaleX = 1;
                                       this.units[this.currentUnit].nameDisplay.scaleX = 1;
                                       _loc73_;
                                       this.§_-2M§.scaleY = 1;
                                    }
                                 }
                                 _loc6_ = _loc5_[3];
                                 _loc72_;
                                 _loc65_ = param1.extra.mX;
                                 _loc72_;
                                 _loc66_ = param1.extra.mY;
                                 _loc72_;
                                 _loc72_;
                                 _loc7_ = _loc6_[0];
                                 _loc72_;
                                 _loc8_ = _loc6_[1];
                                 _loc9_ = Math.atan2(_loc66_,_loc65_);
                                 _loc72_;
                                 _loc72_;
                                 _loc73_;
                                 _loc73_;
                                 if(!(_loc5_[0] == SafeGlobal.WEAPONINFO_JETPACK[0]) && !(_loc5_[0] == SafeGlobal.§_-vj§[0]))
                                 {
                                    _loc73_;
                                    _loc73_;
                                    _loc72_;
                                    _loc13_ = this.units[this.currentUnit].startPoint(_loc7_);
                                    _loc12_ = new Point(_loc13_.x,_loc13_.y);
                                    _loc72_;
                                    _loc72_;
                                    _loc13_.x = _loc13_.x + Math.cos(_loc9_) * _loc8_;
                                    _loc73_;
                                    _loc13_.y = _loc13_.y + Math.sin(_loc9_) * _loc8_;
                                 }
                                 else
                                 {
                                    _loc13_ = this.units[this.currentUnit].startPoint();
                                    _loc12_ = new Point(_loc13_.x,_loc13_.y);
                                 }
                                 _loc13_.x = this.§_-cl§(_loc13_.x);
                                 _loc13_.y = this.§_-cl§(_loc13_.y);
                                 _loc12_.x = this.§_-cl§(_loc12_.x);
                                 _loc72_;
                                 _loc72_;
                                 _loc12_.y = this.§_-cl§(_loc12_.y);
                                 this.§_-D0§.mass = this.§_-dy§();
                                 _loc73_;
                                 _loc73_;
                                 _loc73_;
                                 _loc73_;
                                 _loc73_;
                                 this.§_-D0§.iX = this.§_-D0§.x = this.§_-D0§.§_-gh§ = _loc13_.x;
                                 _loc73_;
                                 _loc73_;
                                 _loc73_;
                                 this.§_-D0§.iY = this.§_-D0§.y = this.§_-D0§.§_-uE§ = _loc13_.y;
                                 _loc72_;
                                 if(_loc5_[0] == SafeGlobal.WEAPONINFO_JETPACK[0] || _loc5_[0] == SafeGlobal.§_-vj§[0])
                                 {
                                    _loc72_;
                                    _loc72_;
                                    _loc72_;
                                    _loc72_;
                                    this.§_-D0§.§_-tR§ = true;
                                    _loc73_;
                                 }
                                 else
                                 {
                                    _loc73_;
                                    this.§_-D0§.§_-tR§ = false;
                                    _loc73_;
                                 }
                                 this.§_-LT§();
                                 _loc73_;
                                 _loc73_;
                                 _loc72_;
                                 _loc72_;
                                 this.§_-D0§.momX = _loc65_;
                                 _loc73_;
                                 _loc73_;
                                 _loc73_;
                                 _loc73_;
                                 this.§_-D0§.momY = _loc66_;
                                 this.§_-B-§();
                                 _loc73_;
                                 _loc73_;
                                 _loc72_;
                                 _loc72_;
                                 _loc73_;
                                 this.§_-D0§.initialPlanetCheck = true;
                                 _loc73_;
                                 this.§_-D0§.initialPoint = _loc12_;
                                 _loc72_;
                                 _loc68_ = 0;
                                 _loc72_;
                                 _loc72_;
                                 this.§_-D0§.startSimTime = this.§_-D0§.lastSimTime = 0;
                                 _loc72_;
                                 _loc73_;
                                 this.§_-D0§.setIgnoreUnit(this.currentUnit);
                                 while(true)
                                 {
                                    _loc72_;
                                    if(!(!this.§_-D0§.dead && this.§_-QM§.length < Math.floor((this.units[this.currentUnit].accuracy.getInt() + 1) * 1.5) + this.§_-D0§.§_-un§ * 2 + 12))
                                    {
                                       break;
                                    }
                                    this.§_-D0§.§_-jg§ = true;
                                    _loc73_;
                                    _loc73_;
                                    _loc73_;
                                    _loc73_;
                                    this.§_-D0§.§_-Ru§(this.timeStep);
                                    _loc72_;
                                    if(!this.§_-D0§.§_-lw§)
                                    {
                                       this.§_-eC§(this.§_-D0§);
                                    }
                                    if(this.§_-D0§.dead)
                                    {
                                       _loc67_ = this.addPreviewPoint(this.§_-D0§.§_-e3§.x,this.§_-D0§.§_-e3§.y,_loc68_);
                                    }
                                    else
                                    {
                                       _loc73_;
                                       _loc73_;
                                       _loc72_;
                                       if(this.§_-D0§.§_-jg§)
                                       {
                                          _loc72_;
                                          _loc67_ = this.addPreviewPoint(this.§_-D0§.x,this.§_-D0§.y,_loc68_);
                                       }
                                       else
                                       {
                                          _loc73_;
                                          if(this.§_-QM§.length > 0)
                                          {
                                             _loc72_;
                                             _loc72_;
                                             _loc72_;
                                             _loc72_;
                                             _loc72_;
                                             _loc73_;
                                             _loc72_;
                                             _loc72_;
                                             _loc68_ = this.§_-QM§[this.§_-QM§.length - 1].dist;
                                             this.§_-DZ§ = null;
                                          }
                                          else
                                          {
                                             _loc68_ = 0;
                                             this.§_-DZ§ = null;
                                          }
                                       }
                                    }
                                    if(_loc67_.length > 0)
                                    {
                                       _loc72_;
                                       _loc72_;
                                       _loc73_;
                                       _loc73_;
                                       _loc69_ = 0;
                                       while(_loc69_ < _loc67_.length)
                                       {
                                          this.§_-QM§.push(_loc67_[_loc69_]);
                                          _loc69_++;
                                          _loc72_;
                                          _loc72_;
                                       }
                                       _loc73_;
                                       _loc67_.splice(0);
                                    }
                                 }
                                 _loc72_;
                                 while(this.§_-QM§.length > Math.floor((this.units[this.currentUnit].accuracy.getInt() + 1) * 1.5) + this.§_-D0§.§_-un§ * 2 + 12)
                                 {
                                    _loc73_;
                                    this.§_-QM§.splice(this.§_-QM§.length - 1,1);
                                    _loc73_;
                                 }
                                 this.§_-N§();
                                 this.§_-D0§.§_-QP§();
                                 if(_loc5_[0] == SafeGlobal.WEAPONINFO_JETPACK[0])
                                 {
                                    _loc73_;
                                    _loc73_;
                                    _loc2_.newAnimState([SafeGlobal.ANIM_UNIT_JETPACKAIM]);
                                 }
                                 else if(_loc5_[0] == SafeGlobal.WEAPONINFO_GRAVITEEBALL[0])
                                 {
                                    _loc2_.newAnimState([SafeGlobal.ANIM_UNIT_GOLFSWINGSETUP,SafeGlobal.ANIM_UNIT_GOLFSWINGHOLD]);
                                    _loc72_;
                                 }
                                 else
                                 {
                                    _loc2_.newAnimState([SafeGlobal.ANIM_UNIT_AIM],false,0,_loc64_);
                                 }
                                 
                              }
                           }
                           else
                           {
                              _loc73_;
                              _loc73_;
                              if(param1.type == SafeGlobal.SIMEVENT_PROJAIMSTOP)
                              {
                                 _loc72_;
                                 this.§_-fp§(SafeGlobal.CLEANUP_PROJECTILE);
                                 this.units[this.currentUnit].doFlip(this.units[this.currentUnit].facing * -1);
                              }
                              else if(param1.type == SafeGlobal.SIMEVENT_GATEAIM)
                              {
                                 this.hideBubbles();
                                 _loc73_;
                                 _loc72_;
                                 _loc72_;
                                 this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_TABLET]);
                                 _loc72_;
                                 _loc72_;
                                 if(param1.extra.wepType == SafeGlobal.GATETYPE_SHIELD)
                                 {
                                    _loc73_;
                                    this.addEffect(SafeGlobal.EFFECTS_SHIELDSPAWN,param1.extra.pX1,param1.extra.pY1,param1.extra.pR1);
                                 }
                                 else if(param1.extra.wepType == SafeGlobal.GATETYPE_DISSOLVESHIELD)
                                 {
                                    this.addEffect(SafeGlobal.EFFECTS_SHIELDDISSOLVESPAWN,param1.extra.pX1,param1.extra.pY1,param1.extra.pR1);
                                 }
                                 
                              }
                              else
                              {
                                 _loc73_;
                                 if(param1.type == SafeGlobal.SIMEVENT_GATEAIMSTOP)
                                 {
                                    _loc73_;
                                    this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
                                    _loc73_;
                                 }
                                 else
                                 {
                                    _loc73_;
                                    _loc73_;
                                    if(param1.type == SafeGlobal.SIMEVENT_PLANETSELECTAIM)
                                    {
                                       _loc72_;
                                       this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_TABLET]);
                                       _loc72_;
                                    }
                                    else if(param1.type == SafeGlobal.SIMEVENT_PLANETSELECTAIMSTOP)
                                    {
                                       _loc73_;
                                       _loc72_;
                                       _loc72_;
                                       this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
                                    }
                                    else if(param1.type == SafeGlobal.SIMEVENT_MINEAIM)
                                    {
                                       _loc72_;
                                       _loc72_;
                                       _loc73_;
                                       _loc72_;
                                       _loc70_ = param1.extra.mineType;
                                       if((param1.extra.mineType) == SafeGlobal.MINETYPE_STANDARD)
                                       {
                                          _loc73_;
                                          _loc73_;
                                          this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYSTANDARDMINE]);
                                       }
                                       else
                                       {
                                          _loc72_;
                                          _loc72_;
                                          _loc73_;
                                          _loc73_;
                                          if(_loc70_ == SafeGlobal.MINETYPE_CLUSTER)
                                          {
                                             _loc72_;
                                             _loc72_;
                                             _loc72_;
                                             _loc72_;
                                             _loc73_;
                                             _loc73_;
                                             this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYCLUSTERMINE]);
                                          }
                                          else
                                          {
                                             _loc72_;
                                             _loc72_;
                                             if(_loc70_ == SafeGlobal.MINETYPE_DRILL)
                                             {
                                                this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYDRILLMINE]);
                                                _loc72_;
                                                _loc72_;
                                             }
                                             else
                                             {
                                                _loc73_;
                                                if(_loc70_ == SafeGlobal.MINETYPE_ROVER)
                                                {
                                                   this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYROVER]);
                                                   _loc73_;
                                                }
                                                else
                                                {
                                                   _loc72_;
                                                   _loc72_;
                                                   if(_loc70_ == SafeGlobal.MINETYPE_SUPERROVER)
                                                   {
                                                      _loc72_;
                                                      _loc73_;
                                                      _loc72_;
                                                      this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYSUPERROVER]);
                                                   }
                                                   else if(_loc70_ == SafeGlobal.§_-ee§)
                                                   {
                                                      _loc72_;
                                                      _loc72_;
                                                      this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYMAGNETICROVER]);
                                                   }
                                                   
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
         return param1.time;
      }
      
      public function removeThisMinesProjectile(param1:Mine) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
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
               _loc4_;
               this.simManager.removeObject(this.projectiles[_loc3_]);
               this.projectiles.splice(_loc3_,1);
               _loc5_;
               _loc2_ = true;
               _loc5_;
            }
            _loc5_;
            _loc5_;
            _loc4_;
            _loc3_--;
         }
         if(!_loc2_)
         {
            _loc5_;
            this.camera.traceTargets();
         }
      }
      
      public function §_-Nf§(param1:SimObject, param2:Boolean = false) : *
      {
         var _loc18_:* = false;
         var _loc19_:* = true;
         var _loc4_:§_-QR§ = null;
         var _loc5_:Shape = null;
         var _loc6_:Array = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:§_-QR§ = null;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:Point = null;
         var _loc16_:Point = null;
         var _loc17_:§_-QR§ = null;
         var _loc3_:Number = 20;
         _loc19_;
         _loc19_;
         _loc19_;
         if(!(param1 is Unit && this.mods[SafeGlobal.MOD_NOUNITWALK]) && !((this.simManager.turnOver) && param1 is Unit) || (this.§_-eS§) || (param2))
         {
            while(_loc3_ > 0)
            {
               if(param1.onJoin)
               {
                  _loc18_;
                  _loc18_;
                  _loc7_ = this.§_-cl§(_loc3_ * this.§_-CO§);
                  _loc19_;
                  _loc19_;
                  _loc18_;
                  _loc18_;
                  _loc8_ = this.§_-cl§(this.§_-HM§(param1.joinTargetAngle2 - param1.iR));
                  _loc19_;
                  _loc19_;
                  _loc19_;
                  _loc19_;
                  if((this.§_-cl§(this.§_-HM§(param1.joinTargetAngle2 - param1.iR))) < _loc7_)
                  {
                     _loc18_;
                     _loc18_;
                     _loc5_ = this.planets[param1.locationPlanet].shapes[param1.locationShape];
                     _loc4_ = _loc5_.curves[param1.locationCurve];
                     _loc19_;
                     param1.iR = param1.joinTargetAngle2;
                     _loc19_;
                     _loc19_;
                     param1.onJoin = false;
                     _loc6_ = this.planets[param1.locationPlanet].shapes[param1.locationShape].findJoinForThisAngle(new Point(param1.iX,param1.iY),param1.iR);
                     _loc9_ = _loc5_.curves[_loc6_[0]];
                     _loc18_;
                     _loc18_;
                     param1.locationCurve = _loc6_[0];
                     param1.locationCurveX = _loc9_.x;
                     param1.locationCurveY = _loc9_.y;
                     _loc18_;
                     param1.locationCurveRadius = _loc9_.radius;
                     if(_loc6_[1] == 1)
                     {
                        _loc18_;
                        _loc18_;
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
                     param1.iR = this.§_-cl§(this.§_-HM§(param1.iR + _loc7_));
                  }
               }
               else
               {
                  _loc19_;
                  _loc10_ = param1.locationAngle;
                  _loc19_;
                  _loc18_;
                  _loc11_ = _loc3_ * this.§_-Gn§;
                  _loc19_;
                  _loc19_;
                  _loc4_ = this.planets[param1.locationPlanet].shapes[param1.locationShape].curves[param1.locationCurve];
                  _loc18_;
                  _loc18_;
                  _loc19_;
                  _loc19_;
                  _loc12_ = 2 * this.PI * _loc4_.radius;
                  if(_loc4_.origCurve)
                  {
                     _loc19_;
                     _loc19_;
                     _loc18_;
                     _loc18_;
                     _loc13_ = this.§_-cl§(this.§_-HM§(_loc11_ / _loc12_));
                     _loc18_;
                     _loc18_;
                     _loc18_;
                     _loc18_;
                     _loc19_;
                     _loc19_;
                     _loc14_ = this.§_-cl§(this.§_-HM§(_loc4_.endAngle - _loc10_));
                     _loc19_;
                     _loc19_;
                     _loc19_;
                     if((this.§_-cl§(this.§_-HM§(_loc4_.endAngle - _loc10_))) < _loc13_ && !(_loc4_.startAngle == _loc4_.endAngle))
                     {
                        _loc19_;
                        param1.locationAngle = _loc4_.endAngle;
                        _loc15_ = _loc4_.curvePos(_loc4_.endAngle);
                        _loc19_;
                        _loc19_;
                        param1.onJoin = true;
                        _loc6_ = this.planets[param1.locationPlanet].shapes[param1.locationShape].findJoinFor(_loc15_,_loc4_);
                        _loc18_;
                        _loc18_;
                        _loc18_;
                        _loc19_;
                        _loc19_;
                        param1.joinTargetAngle1 = this.§_-cl§(this.§_-HM§(_loc4_.endAngle + this.PI / 2));
                        _loc19_;
                        if(_loc6_[1] == 1)
                        {
                           _loc18_;
                           _loc18_;
                           param1.joinTargetAngle2 = this.§_-cl§(this.§_-HM§(this.planets[param1.locationPlanet].shapes[param1.locationShape].curves[_loc6_[0]].startAngle + this.PI / 2));
                           _loc18_;
                           _loc18_;
                        }
                        else
                        {
                           param1.joinTargetAngle2 = this.§_-cl§(this.§_-HM§(this.planets[param1.locationPlanet].shapes[param1.locationShape].curves[_loc6_[0]].endAngle - this.PI / 2));
                           _loc18_;
                        }
                     }
                     else
                     {
                        _loc19_;
                        param1.locationAngle = this.§_-cl§(this.§_-HM§(param1.locationAngle + _loc13_));
                        _loc18_;
                     }
                     _loc18_;
                     _loc19_;
                     param1.iR = this.§_-cl§(this.§_-HM§(param1.locationAngle + this.PI / 2));
                  }
                  else
                  {
                     _loc19_;
                     _loc19_;
                     _loc13_ = this.§_-cl§(this.§_-HM§(_loc11_ / _loc12_));
                     _loc19_;
                     _loc14_ = this.§_-cl§(this.§_-HM§(_loc10_ - _loc4_.startAngle));
                     _loc18_;
                     if(_loc14_ < _loc13_ && !(_loc4_.startAngle == _loc4_.endAngle))
                     {
                        param1.locationAngle = _loc4_.startAngle;
                        _loc18_;
                        _loc18_;
                        _loc16_ = _loc4_.curvePos(_loc4_.startAngle);
                        _loc19_;
                        _loc19_;
                        param1.onJoin = true;
                        _loc6_ = this.planets[param1.locationPlanet].shapes[param1.locationShape].findJoinFor(_loc16_,_loc4_);
                        _loc19_;
                        _loc19_;
                        _loc18_;
                        _loc18_;
                        _loc19_;
                        param1.joinTargetAngle1 = this.§_-cl§(this.§_-HM§(_loc4_.startAngle - this.PI / 2));
                        _loc17_ = this.planets[param1.locationPlanet].shapes[param1.locationShape].curves[_loc6_[0]];
                        _loc19_;
                        if(_loc6_[1] == 1)
                        {
                           _loc18_;
                           param1.joinTargetAngle2 = this.§_-cl§(this.§_-HM§(this.planets[param1.locationPlanet].shapes[param1.locationShape].curves[_loc6_[0]].startAngle + this.PI / 2));
                           _loc19_;
                        }
                        else
                        {
                           param1.joinTargetAngle2 = this.§_-cl§(this.§_-HM§(this.planets[param1.locationPlanet].shapes[param1.locationShape].curves[_loc6_[0]].endAngle - this.PI / 2));
                           _loc18_;
                        }
                     }
                     else
                     {
                        _loc18_;
                        param1.locationAngle = this.§_-cl§(this.§_-HM§(param1.locationAngle - _loc13_));
                     }
                     _loc18_;
                     _loc18_;
                     _loc18_;
                     param1.iR = this.§_-cl§(this.§_-HM§(param1.locationAngle - this.PI / 2));
                  }
               }
               _loc3_ = 0;
            }
            _loc18_;
         }
         this.§_-yT§(param1);
         _loc18_;
         _loc18_;
         param1.lastSimTime = param1.lastSimTime + this.timeStep;
      }
      
      public function §_-yZ§(param1:SimObject, param2:Boolean = false) : *
      {
         var _loc18_:* = true;
         var _loc19_:* = false;
         var _loc4_:§_-QR§ = null;
         var _loc5_:Shape = null;
         var _loc6_:Array = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:§_-QR§ = null;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:Point = null;
         var _loc16_:Point = null;
         var _loc17_:§_-QR§ = null;
         var _loc3_:Number = 20;
         _loc19_;
         _loc19_;
         _loc19_;
         _loc19_;
         if(!(param1 is Unit && this.mods[SafeGlobal.MOD_NOUNITWALK]) && !((this.simManager.turnOver) && param1 is Unit) || (this.§_-eS§) || (param2))
         {
            while(_loc3_ > 0)
            {
               if(param1.onJoin)
               {
                  _loc18_;
                  _loc7_ = this.§_-cl§(_loc3_ * this.§_-CO§);
                  _loc19_;
                  _loc19_;
                  _loc18_;
                  _loc18_;
                  _loc19_;
                  _loc8_ = this.§_-cl§(this.§_-HM§(param1.iR - param1.joinTargetAngle1));
                  _loc18_;
                  _loc18_;
                  if((this.§_-cl§(this.§_-HM§(param1.iR - param1.joinTargetAngle1))) < _loc7_)
                  {
                     _loc18_;
                     _loc18_;
                     _loc19_;
                     _loc5_ = this.planets[param1.locationPlanet].shapes[param1.locationShape];
                     _loc4_ = _loc5_.curves[param1.locationCurve];
                     _loc19_;
                     param1.iR = param1.joinTargetAngle1;
                     _loc18_;
                     param1.onJoin = false;
                     _loc6_ = this.planets[param1.locationPlanet].shapes[param1.locationShape].findJoinForThisAngle(new Point(param1.iX,param1.iY),param1.iR);
                     _loc9_ = _loc5_.curves[_loc6_[0]];
                     _loc18_;
                     _loc18_;
                     param1.locationCurve = _loc6_[0];
                     _loc19_;
                     param1.locationCurveX = _loc9_.x;
                     _loc18_;
                     _loc18_;
                     param1.locationCurveY = _loc9_.y;
                     param1.locationCurveRadius = _loc9_.radius;
                     _loc19_;
                     if(_loc6_[1] == 1)
                     {
                        param1.locationAngle = this.planets[param1.locationPlanet].shapes[param1.locationShape].curves[_loc6_[0]].startAngle;
                     }
                     else
                     {
                        param1.locationAngle = this.planets[param1.locationPlanet].shapes[param1.locationShape].curves[_loc6_[0]].endAngle;
                        _loc18_;
                        _loc18_;
                     }
                  }
                  else
                  {
                     _loc19_;
                     param1.iR = this.§_-cl§(this.§_-HM§(param1.iR - _loc7_));
                     _loc19_;
                     _loc19_;
                  }
               }
               else
               {
                  _loc10_ = param1.locationAngle;
                  _loc18_;
                  _loc18_;
                  _loc18_;
                  _loc11_ = _loc3_ * this.§_-Gn§;
                  _loc4_ = this.planets[param1.locationPlanet].shapes[param1.locationShape].curves[param1.locationCurve];
                  _loc19_;
                  _loc19_;
                  _loc19_;
                  _loc12_ = 2 * this.PI * _loc4_.radius;
                  _loc19_;
                  if(_loc4_.origCurve)
                  {
                     _loc19_;
                     _loc19_;
                     _loc19_;
                     _loc19_;
                     _loc19_;
                     _loc13_ = this.§_-cl§(this.§_-HM§(_loc11_ / _loc12_));
                     _loc19_;
                     _loc19_;
                     _loc18_;
                     _loc14_ = this.§_-cl§(this.§_-HM§(_loc10_ - _loc4_.startAngle));
                     _loc19_;
                     _loc19_;
                     _loc18_;
                     _loc19_;
                     _loc19_;
                     if((this.§_-cl§(this.§_-HM§(_loc10_ - _loc4_.startAngle))) < _loc13_ && !(_loc4_.startAngle == _loc4_.endAngle))
                     {
                        _loc19_;
                        param1.locationAngle = _loc4_.startAngle;
                        _loc15_ = _loc4_.curvePos(_loc4_.startAngle);
                        _loc19_;
                        _loc19_;
                        param1.onJoin = true;
                        _loc6_ = this.planets[param1.locationPlanet].shapes[param1.locationShape].findJoinFor(_loc15_,_loc4_);
                        _loc19_;
                        _loc19_;
                        _loc19_;
                        _loc18_;
                        param1.joinTargetAngle2 = this.§_-cl§(this.§_-HM§(_loc4_.startAngle + this.PI / 2));
                        _loc19_;
                        _loc19_;
                        if(_loc6_[1] == 1)
                        {
                           _loc18_;
                           param1.joinTargetAngle1 = this.§_-cl§(this.§_-HM§(this.planets[param1.locationPlanet].shapes[param1.locationShape].curves[_loc6_[0]].startAngle - this.PI / 2));
                           _loc18_;
                        }
                        else
                        {
                           param1.joinTargetAngle1 = this.§_-cl§(this.§_-HM§(this.planets[param1.locationPlanet].shapes[param1.locationShape].curves[_loc6_[0]].endAngle + this.PI / 2));
                           _loc18_;
                        }
                     }
                     else
                     {
                        _loc19_;
                        _loc19_;
                        param1.locationAngle = this.§_-cl§(this.§_-HM§(param1.locationAngle - _loc13_));
                        _loc19_;
                     }
                     _loc18_;
                     _loc18_;
                     _loc19_;
                     _loc19_;
                     param1.iR = this.§_-cl§(this.§_-HM§(param1.locationAngle + this.PI / 2));
                  }
                  else
                  {
                     _loc19_;
                     _loc19_;
                     _loc18_;
                     _loc13_ = this.§_-cl§(this.§_-HM§(_loc11_ / _loc12_));
                     _loc18_;
                     _loc18_;
                     _loc14_ = this.§_-cl§(this.§_-HM§(_loc4_.endAngle - _loc10_));
                     _loc18_;
                     _loc18_;
                     _loc19_;
                     _loc19_;
                     if(_loc14_ < _loc13_ && !(_loc4_.startAngle == _loc4_.endAngle))
                     {
                        param1.locationAngle = _loc4_.endAngle;
                        _loc16_ = _loc4_.curvePos(_loc4_.endAngle);
                        _loc18_;
                        _loc18_;
                        param1.onJoin = true;
                        _loc6_ = this.planets[param1.locationPlanet].shapes[param1.locationShape].findJoinFor(_loc16_,_loc4_);
                        _loc19_;
                        _loc19_;
                        _loc19_;
                        _loc19_;
                        param1.joinTargetAngle2 = this.§_-cl§(this.§_-HM§(_loc4_.endAngle - this.PI / 2));
                        _loc17_ = this.planets[param1.locationPlanet].shapes[param1.locationShape].curves[_loc6_[0]];
                        _loc18_;
                        _loc18_;
                        if(_loc6_[1] == 1)
                        {
                           _loc19_;
                           _loc19_;
                           param1.joinTargetAngle1 = this.§_-cl§(this.§_-HM§(this.planets[param1.locationPlanet].shapes[param1.locationShape].curves[_loc6_[0]].startAngle - this.PI / 2));
                           _loc19_;
                           _loc19_;
                        }
                        else
                        {
                           param1.joinTargetAngle1 = this.§_-cl§(this.§_-HM§(this.planets[param1.locationPlanet].shapes[param1.locationShape].curves[_loc6_[0]].endAngle + this.PI / 2));
                           _loc18_;
                        }
                     }
                     else
                     {
                        _loc18_;
                        param1.locationAngle = this.§_-cl§(this.§_-HM§(param1.locationAngle + _loc13_));
                     }
                     _loc19_;
                     _loc18_;
                     _loc18_;
                     param1.iR = this.§_-cl§(this.§_-HM§(param1.locationAngle - this.PI / 2));
                  }
               }
               _loc3_ = 0;
            }
         }
         this.§_-yT§(param1);
         param1.lastSimTime = param1.lastSimTime + this.timeStep;
      }
      
      public function §_-HM§(param1:Number) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         if(param1 < 0)
         {
            while(param1 < 0)
            {
               _loc2_;
               _loc2_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               var param1:Number = param1 + this.PI * 2;
               _loc3_;
               _loc3_;
            }
            _loc2_;
            _loc2_;
         }
         else
         {
            _loc3_;
            _loc2_;
            if(param1 > this.PI * 2)
            {
               _loc3_;
               _loc3_;
               while(true)
               {
                  _loc2_;
                  if(param1 <= this.PI * 2)
                  {
                     break;
                  }
                  _loc2_;
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
         _loc4_;
         param1.§_-Ru§();
         var _loc2_:int = param1.lastSimTime;
         _loc4_;
         _loc4_;
         this.removeMine(param1);
         return _loc2_;
      }
      
      public function §_-LT§() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         while(_loc1_ < this.planets.length)
         {
            this.planets[_loc1_].testShieldHealth = this.planets[_loc1_].shieldHealth;
            _loc2_;
            _loc1_++;
            _loc2_;
         }
      }
      
      public function simProj(param1:Projectile) : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         _loc5_;
         param1.§_-Ru§(this.timeStep);
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         if(!param1.insidePlanet && !param1.§_-lw§)
         {
            _loc5_;
            _loc5_;
            this.§_-eC§(param1);
         }
         _loc6_;
         if((param1.unit) && (param1.unit.fire))
         {
            _loc5_;
            _loc5_;
            param1.unit.fireCount++;
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            if(param1.unit.fireCount >= 10)
            {
               _loc6_;
               _loc6_;
               param1.unit.fireCount = 0;
               _loc6_;
               _loc6_;
               _loc5_;
               param1.unit.takeDamage(5,"fire");
               if(param1.unit.health <= 0)
               {
                  _loc5_;
                  param1.init(param1.unit.costume.spriteSheets[SafeGlobal.ANIM_UNIT_FLYINGDEAD]);
                  _loc6_;
                  _loc5_;
                  param1.unit.newAnimState([SafeGlobal.ANIM_UNIT_FLYINGDEAD]);
                  param1.orientToPath = false;
                  _loc5_;
                  param1.spin = 4;
                  param1.animStep = -1;
                  param1.unit.fire = false;
                  param1.§_-zx§();
               }
            }
         }
         var _loc2_:* = param1.lastSimTime;
         _loc6_;
         if(param1.dead)
         {
            _loc5_;
            _loc5_;
            this.§_-wk§(param1);
            _loc6_;
            _loc6_;
            this.removeProjectile(param1);
         }
         return _loc2_;
      }
      
      public function §_-dy§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         return this.§_-cl§(1.3 * this.PI * 5 * 5 * 5);
      }
      
      public function §_-MM§() : *
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
         var _loc46_:§_-QR§ = null;
         var _loc47_:Point = null;
         var _loc48_:Point = null;
         var _loc49_:Array = null;
         var _loc50_:* = 0;
         var _loc51_:* = 0;
         var _loc52_:* = 0;
         var _loc53_:§_-QR§ = null;
         var _loc54_:* = 0;
         var _loc55_:* = 0;
         var _loc56_:* = NaN;
         var _loc57_:* = NaN;
         _loc60_;
         _loc60_;
         if(this.§_-QI§)
         {
            _loc60_;
            this.§_-mj§.x = this.§_-Wz§.x - (mouseX - this.§_-yD§.x);
            this.§_-mj§.y = this.§_-Wz§.y - (mouseY - this.§_-yD§.y);
            this.§_-7X§.active = true;
            _loc60_;
            _loc60_;
            this.§_-7X§.x = this.§_-mj§.x + 400;
            this.§_-7X§.y = this.§_-mj§.y + 300;
            _loc60_;
            _loc60_;
            _loc60_;
            if(this.§_-7X§.x < this.§_-2R§)
            {
               _loc59_;
               _loc60_;
               _loc60_;
               _loc59_;
               this.§_-7X§.x = this.§_-2R§;
               _loc60_;
               _loc60_;
            }
            else
            {
               _loc60_;
               _loc60_;
               _loc60_;
               if(this.§_-7X§.x > this.§_-M8§)
               {
                  _loc59_;
                  this.§_-7X§.x = this.§_-M8§;
               }
            }
            _loc60_;
            if(this.§_-7X§.y < this.§_-WW§)
            {
               _loc60_;
               _loc60_;
               this.§_-7X§.y = this.§_-WW§;
            }
            else if(this.§_-7X§.y > this.§_-dw§)
            {
               this.§_-7X§.y = this.§_-dw§;
            }
            
         }
         else
         {
            _loc60_;
            _loc60_;
            _loc59_;
            _loc59_;
            _loc59_;
            if((this.dragging) && this.currentWeapon == -1 && (!(this.§_-M-§.x == this.screen.mouseX) || !(this.§_-M-§.y == this.screen.mouseY)))
            {
               _loc60_;
               _loc60_;
               _loc60_;
               _loc1_ = this.§_-M-§.x - this.§_-yD§.x;
               _loc2_ = this.§_-M-§.y - this.§_-yD§.y;
               _loc59_;
               _loc60_;
               _loc60_;
               _loc3_ = this.units[this.currentUnit].startPoint();
               _loc59_;
               _loc59_;
               _loc60_;
               _loc60_;
               _loc59_;
               _loc59_;
               _loc4_ = _loc3_.x - this.screen.mouseX;
               _loc59_;
               _loc59_;
               _loc5_ = _loc3_.y - this.screen.mouseY;
               _loc60_;
               _loc60_;
               _loc59_;
               _loc59_;
               _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               if(_loc6_ >= 30)
               {
                  _loc59_;
                  _loc60_;
                  _loc60_;
                  _loc60_;
                  _loc60_;
                  if(this.units[this.currentUnit].animState != SafeGlobal.ANIM_UNIT_SLEEP)
                  {
                     _loc59_;
                     _loc59_;
                     _loc60_;
                     _loc60_;
                     _loc59_;
                     this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_SLEEP]);
                     _loc59_;
                  }
               }
               else
               {
                  _loc60_;
                  _loc60_;
                  _loc59_;
                  if(this.units[this.currentUnit].animState != SafeGlobal.ANIM_UNIT_BOB)
                  {
                     this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
                     _loc60_;
                  }
               }
               this.§_-M-§.x = this.screen.mouseX;
               this.§_-M-§.y = this.screen.mouseY;
            }
            else
            {
               _loc59_;
               _loc60_;
               _loc60_;
               _loc60_;
               _loc60_;
               if((this.dragging) && this.§_-qH§[1] == SafeGlobal.WEAPONTYPE_PROJECTILE && (!(this.§_-M-§.x == this.screen.mouseX) || !(this.§_-M-§.y == this.screen.mouseY)))
               {
                  this.§_-vF§.graphics.clear();
                  _loc59_;
                  _loc59_;
                  _loc59_;
                  _loc59_;
                  _loc59_;
                  _loc59_;
                  this.§_-D0§.active = false;
                  this.§_-D0§.dead = false;
                  _loc7_ = true;
                  _loc60_;
                  _loc60_;
                  if(this.§_-qH§[0] == SafeGlobal.WEAPONINFO_CUSTOM[0])
                  {
                     _loc60_;
                     _loc60_;
                     _loc59_;
                     _loc60_;
                     _loc59_;
                     _loc59_;
                     _loc59_;
                     _loc8_ = this.teams[this.units[this.currentUnit].team].customWeaponStrings[0];
                  }
                  else
                  {
                     _loc59_;
                     if(this.§_-qH§[0] == SafeGlobal.WEAPONINFO_CUSTOM2[0])
                     {
                        _loc59_;
                        _loc59_;
                        _loc60_;
                        _loc60_;
                        _loc60_;
                        _loc59_;
                        _loc59_;
                        _loc8_ = this.teams[this.units[this.currentUnit].team].customWeaponStrings[1];
                     }
                     else
                     {
                        _loc60_;
                        if(this.§_-qH§[0] == SafeGlobal.WEAPONINFO_CUSTOM3[0])
                        {
                           _loc60_;
                           _loc59_;
                           _loc8_ = this.teams[this.units[this.currentUnit].team].customWeaponStrings[2];
                        }
                        else
                        {
                           _loc7_ = false;
                           _loc60_;
                           _loc8_ = this.§_-qH§[4];
                        }
                     }
                  }
                  _loc9_ = _loc8_.split("/");
                  _loc59_;
                  _loc59_;
                  _loc10_ = _loc9_[0];
                  _loc59_;
                  _loc59_;
                  _loc11_ = _loc9_[1];
                  _loc59_;
                  this.§_-D0§.§_-lw§ = false;
                  _loc60_;
                  _loc60_;
                  _loc59_;
                  _loc59_;
                  if((_loc11_) && !(_loc11_ == ""))
                  {
                     _loc60_;
                     _loc60_;
                     _loc60_;
                     this.§_-D0§.useProjString(_loc11_,_loc7_);
                     _loc59_;
                     _loc59_;
                  }
                  _loc60_;
                  this.§_-D0§.§_-fs§ = "";
                  this.§_-D0§.mass = this.§_-dy§();
                  this.§_-M-§.x = this.screen.mouseX;
                  this.§_-M-§.y = this.screen.mouseY;
                  _loc59_;
                  _loc60_;
                  _loc60_;
                  _loc1_ = this.§_-M-§.x - this.§_-yD§.x;
                  _loc2_ = this.§_-M-§.y - this.§_-yD§.y;
                  _loc3_ = this.units[this.currentUnit].startPoint();
                  _loc59_;
                  _loc60_;
                  _loc4_ = _loc3_.x - this.screen.mouseX;
                  _loc59_;
                  _loc59_;
                  _loc59_;
                  _loc59_;
                  _loc59_;
                  _loc5_ = _loc3_.y - this.screen.mouseY;
                  _loc60_;
                  _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
                  if(_loc6_ >= 30)
                  {
                     _loc59_;
                     _loc60_;
                     _loc59_;
                     _loc59_;
                     _loc60_;
                     _loc59_;
                     if(!(this.§_-qH§[0] == SafeGlobal.WEAPONINFO_JETPACK[0]) && !(this.§_-qH§[0] == SafeGlobal.WEAPONINFO_GRAVITEEBALL[0]))
                     {
                        this.§_-Fz§();
                     }
                     _loc12_ = this.§_-qH§[3];
                     _loc59_;
                     _loc59_;
                     _loc13_ = _loc12_[0];
                     _loc59_;
                     _loc59_;
                     _loc14_ = _loc12_[1];
                     _loc60_;
                     _loc60_;
                     _loc15_ = Math.atan2(_loc2_,_loc1_);
                     _loc59_;
                     _loc59_;
                     _loc60_;
                     _loc60_;
                     _loc59_;
                     _loc59_;
                     _loc60_;
                     if(!(this.§_-qH§[0] == SafeGlobal.WEAPONINFO_JETPACK[0]) && !(this.§_-qH§[0] == SafeGlobal.§_-vj§[0]))
                     {
                        _loc60_;
                        _loc60_;
                        _loc59_;
                        _loc59_;
                        _loc16_ = this.units[this.currentUnit].startPoint(_loc13_);
                        _loc17_ = new Point(_loc16_.x,_loc16_.y);
                        _loc59_;
                        _loc59_;
                        _loc16_.x = _loc16_.x + Math.cos(_loc15_) * _loc14_;
                        _loc60_;
                        _loc60_;
                        _loc16_.y = _loc16_.y + Math.sin(_loc15_) * _loc14_;
                        _loc59_;
                     }
                     else
                     {
                        _loc16_ = this.units[this.currentUnit].startPoint();
                        _loc17_ = new Point(_loc16_.x,_loc16_.y);
                     }
                     _loc16_.x = this.§_-cl§(_loc16_.x);
                     _loc60_;
                     _loc16_.y = this.§_-cl§(_loc16_.y);
                     _loc17_.x = this.§_-cl§(_loc17_.x);
                     _loc17_.y = this.§_-cl§(_loc17_.y);
                     _loc60_;
                     _loc59_;
                     this.§_-D0§.iX = this.§_-D0§.x = this.§_-D0§.§_-gh§ = _loc16_.x;
                     _loc59_;
                     _loc60_;
                     this.§_-D0§.iY = this.§_-D0§.y = this.§_-D0§.§_-uE§ = _loc16_.y;
                     _loc59_;
                     _loc60_;
                     _loc60_;
                     if(this.§_-qH§[0] == SafeGlobal.WEAPONINFO_JETPACK[0] || this.§_-qH§[0] == SafeGlobal.§_-vj§[0])
                     {
                        _loc59_;
                        _loc60_;
                        _loc60_;
                        this.§_-D0§.§_-tR§ = true;
                     }
                     else
                     {
                        _loc60_;
                        _loc60_;
                        this.§_-D0§.§_-tR§ = false;
                        _loc60_;
                     }
                     this.§_-LT§();
                     _loc60_;
                     _loc60_;
                     _loc60_;
                     _loc60_;
                     _loc60_;
                     _loc60_;
                     _loc60_;
                     this.§_-D0§.momX = _loc1_ * this.§_-j6§;
                     _loc59_;
                     _loc60_;
                     this.§_-D0§.momY = _loc2_ * this.§_-j6§;
                     this.§_-B-§();
                     _loc59_;
                     this.§_-D0§.initialPlanetCheck = true;
                     _loc60_;
                     _loc60_;
                     this.§_-D0§.initialPoint = _loc17_;
                     _loc19_ = 0;
                     _loc60_;
                     _loc59_;
                     this.§_-D0§.startSimTime = this.§_-D0§.lastSimTime = 0;
                     this.§_-D0§.setIgnoreUnit(this.currentUnit);
                     while(true)
                     {
                        _loc60_;
                        _loc60_;
                        _loc60_;
                        if(!(!this.§_-D0§.dead && this.§_-QM§.length < Math.floor((this.units[this.currentUnit].accuracy.getInt() + 1) * 1.5) + this.§_-D0§.§_-un§ * 2 + 12))
                        {
                           break;
                        }
                        this.§_-D0§.§_-jg§ = true;
                        _loc60_;
                        this.§_-D0§.§_-Ru§(this.timeStep);
                        _loc59_;
                        _loc59_;
                        if(!this.§_-D0§.§_-lw§)
                        {
                           _loc59_;
                           this.§_-eC§(this.§_-D0§);
                           _loc60_;
                        }
                        if(this.§_-D0§.dead)
                        {
                           _loc60_;
                           _loc60_;
                           _loc18_ = this.addPreviewPoint(this.§_-D0§.§_-e3§.x,this.§_-D0§.§_-e3§.y,_loc19_);
                        }
                        else if(this.§_-D0§.§_-jg§)
                        {
                           _loc18_ = this.addPreviewPoint(this.§_-D0§.x,this.§_-D0§.y,_loc19_);
                        }
                        else
                        {
                           _loc59_;
                           _loc59_;
                           if(this.§_-QM§.length > 0)
                           {
                              _loc59_;
                              _loc59_;
                              _loc59_;
                              _loc59_;
                              _loc59_;
                              _loc19_ = this.§_-QM§[this.§_-QM§.length - 1].dist;
                              this.§_-DZ§ = null;
                           }
                           else
                           {
                              _loc19_ = 0;
                              this.§_-DZ§ = null;
                           }
                        }
                        
                        if(_loc18_.length > 0)
                        {
                           _loc59_;
                           _loc59_;
                           _loc22_ = 0;
                           while(_loc22_ < _loc18_.length)
                           {
                              this.§_-QM§.push(_loc18_[_loc22_]);
                              _loc59_;
                              _loc22_++;
                           }
                           _loc18_.splice(0);
                        }
                     }
                     while(this.§_-QM§.length > Math.floor((this.units[this.currentUnit].accuracy.getInt() + 1) * 1.5) + this.§_-D0§.§_-un§ * 2 + 12)
                     {
                        this.§_-QM§.splice(this.§_-QM§.length - 1,1);
                        _loc59_;
                     }
                     this.§_-N§();
                     _loc60_;
                     _loc60_;
                     this.§_-D0§.§_-QP§();
                     _loc20_ = Math.atan2(_loc2_,_loc1_);
                     if(this.§_-2M§)
                     {
                        _loc59_;
                        _loc59_;
                        this.§_-2M§.rotation = (_loc20_ - this.PI) * 180 / this.PI;
                     }
                     _loc21_ = (_loc20_ - this.units[this.currentUnit].iR) * 180 / this.PI;
                     while(_loc21_ < 0)
                     {
                        _loc60_;
                        _loc60_;
                        _loc59_;
                        _loc59_;
                        _loc21_ = _loc21_ + 360;
                        _loc59_;
                        _loc59_;
                     }
                     _loc59_;
                     while(_loc21_ > 360)
                     {
                        _loc59_;
                        _loc59_;
                        _loc21_ = _loc21_ - 360;
                        _loc59_;
                     }
                     if(this.§_-qH§[0] == SafeGlobal.WEAPONINFO_JETPACK[0])
                     {
                        _loc59_;
                        _loc59_;
                        _loc60_;
                        _loc60_;
                        _loc60_;
                        if(_loc21_ < 90 || _loc21_ > 270)
                        {
                           _loc60_;
                           _loc60_;
                           this.units[this.currentUnit].scaleX = -1;
                           _loc60_;
                           _loc60_;
                           _loc59_;
                           this.units[this.currentUnit].healthDisplay.scaleX = -1;
                           _loc59_;
                           _loc59_;
                           _loc60_;
                           _loc60_;
                           this.units[this.currentUnit].nameDisplay.scaleX = -1;
                        }
                        else
                        {
                           _loc59_;
                           _loc59_;
                           this.units[this.currentUnit].scaleX = 1;
                           this.units[this.currentUnit].healthDisplay.scaleX = 1;
                           _loc60_;
                           _loc60_;
                           _loc59_;
                           _loc59_;
                           this.units[this.currentUnit].nameDisplay.scaleX = 1;
                        }
                        _loc60_;
                        this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_JETPACKAIM]);
                     }
                     else
                     {
                        _loc60_;
                        _loc59_;
                        _loc60_;
                        _loc60_;
                        if(_loc21_ < 90 || _loc21_ > 270)
                        {
                           _loc60_;
                           _loc60_;
                           _loc60_;
                           this.units[this.currentUnit].scaleX = -1;
                           _loc60_;
                           _loc60_;
                           this.units[this.currentUnit].healthDisplay.scaleX = -1;
                           this.units[this.currentUnit].nameDisplay.scaleX = -1;
                           if(this.§_-2M§)
                           {
                              this.§_-2M§.scaleY = -1;
                           }
                        }
                        else
                        {
                           this.units[this.currentUnit].scaleX = 1;
                           _loc59_;
                           _loc59_;
                           this.units[this.currentUnit].healthDisplay.scaleX = 1;
                           _loc60_;
                           _loc60_;
                           _loc60_;
                           this.units[this.currentUnit].nameDisplay.scaleX = 1;
                           if(this.§_-2M§)
                           {
                              _loc59_;
                              this.§_-2M§.scaleY = 1;
                              _loc60_;
                           }
                        }
                        if(this.§_-qH§[0] == SafeGlobal.WEAPONINFO_GRAVITEEBALL[0])
                        {
                           _loc59_;
                           _loc59_;
                           _loc60_;
                           if(!(this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_GOLFSWINGSETUP) && !(this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_GOLFSWINGHOLD))
                           {
                              _loc59_;
                              this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_GOLFSWINGSETUP,SafeGlobal.ANIM_UNIT_GOLFSWINGHOLD]);
                           }
                        }
                        else
                        {
                           this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_AIM],false,0,_loc21_);
                        }
                     }
                     this.screen.setChildIndex(this.§_-Ds§,this.screen.numChildren - 1);
                  }
                  else
                  {
                     _loc59_;
                     _loc59_;
                     _loc59_;
                     if(this.units[this.currentUnit].animState != SafeGlobal.ANIM_UNIT_BOB)
                     {
                        _loc60_;
                        _loc60_;
                        _loc60_;
                        _loc59_;
                        this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
                        _loc59_;
                        _loc59_;
                     }
                     this.§_-I8§();
                     _loc59_;
                     this.§_-QM§.splice(0);
                     _loc59_;
                     this.§_-ck§();
                  }
               }
               else
               {
                  _loc59_;
                  _loc59_;
                  if((this.dragging) && this.§_-qH§[1] == SafeGlobal.WEAPONTYPE_MINE && (!(this.§_-M-§.x == this.screen.mouseX) || !(this.§_-M-§.y == this.screen.mouseY)))
                  {
                     _loc1_ = this.§_-M-§.x - this.§_-yD§.x;
                     _loc59_;
                     _loc60_;
                     _loc60_;
                     _loc2_ = this.§_-M-§.y - this.§_-yD§.y;
                     _loc3_ = this.units[this.currentUnit].startPoint();
                     _loc60_;
                     _loc59_;
                     _loc4_ = _loc3_.x - this.screen.mouseX;
                     _loc59_;
                     _loc60_;
                     _loc60_;
                     _loc60_;
                     _loc5_ = _loc3_.y - this.screen.mouseY;
                     _loc60_;
                     _loc59_;
                     _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
                     if(_loc6_ >= 30)
                     {
                        _loc60_;
                        _loc60_;
                        _loc60_;
                        _loc60_;
                        _loc60_;
                        if(this.§_-qH§[0] == SafeGlobal.WEAPONINFO_MINE[0] && !(this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_LAYSTANDARDMINE))
                        {
                           this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYSTANDARDMINE]);
                        }
                        else
                        {
                           _loc60_;
                           _loc60_;
                           _loc59_;
                           _loc59_;
                           _loc59_;
                           _loc59_;
                           if(this.§_-qH§[0] == SafeGlobal.WEAPONINFO_CLUSTERMINE[0] && !(this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_LAYCLUSTERMINE))
                           {
                              _loc60_;
                              this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYCLUSTERMINE]);
                              _loc59_;
                              _loc59_;
                           }
                           else
                           {
                              _loc60_;
                              _loc60_;
                              _loc60_;
                              _loc59_;
                              _loc59_;
                              _loc59_;
                              if(this.§_-qH§[0] == SafeGlobal.WEAPONINFO_DRILLMINE[0] && !(this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_LAYDRILLMINE))
                              {
                                 _loc60_;
                                 _loc60_;
                                 _loc59_;
                                 _loc59_;
                                 this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYDRILLMINE]);
                                 _loc59_;
                                 _loc59_;
                              }
                              else
                              {
                                 _loc60_;
                                 _loc59_;
                                 _loc60_;
                                 _loc60_;
                                 if(this.§_-qH§[0] == SafeGlobal.WEAPONINFO_ROVER[0] && !(this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_LAYROVER))
                                 {
                                    _loc60_;
                                    _loc60_;
                                    this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYROVER]);
                                    _loc60_;
                                    _loc60_;
                                 }
                                 else
                                 {
                                    _loc60_;
                                    _loc60_;
                                    _loc59_;
                                    _loc60_;
                                    _loc59_;
                                    if(this.§_-qH§[0] == SafeGlobal.WEAPONINFO_SUPERROVER[0] && !(this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_LAYSUPERROVER))
                                    {
                                       _loc60_;
                                       _loc60_;
                                       this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYSUPERROVER]);
                                    }
                                    else
                                    {
                                       _loc60_;
                                       if(this.§_-qH§[0] == SafeGlobal.§_-cP§[0] && !(this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_LAYMAGNETICROVER))
                                       {
                                          _loc60_;
                                          this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYMAGNETICROVER]);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     else if(this.units[this.currentUnit].animState != SafeGlobal.ANIM_UNIT_BOB)
                     {
                        this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
                        _loc60_;
                     }
                     
                     this.§_-M-§.x = this.screen.mouseX;
                     _loc60_;
                     this.§_-M-§.y = this.screen.mouseY;
                  }
                  else
                  {
                     _loc60_;
                     _loc60_;
                     _loc60_;
                     _loc60_;
                     _loc60_;
                     if((this.dragging) && this.§_-qH§[1] == SafeGlobal.WEAPONTYPE_GATE && (!(this.§_-M-§.x == this.screen.mouseX) || !(this.§_-M-§.y == this.screen.mouseY)))
                     {
                        _loc60_;
                        _loc60_;
                        _loc23_ = this.gates[this.gates.length - 1];
                        _loc59_;
                        _loc60_;
                        _loc60_;
                        _loc24_ = _loc23_.iX - this.screen.mouseX;
                        _loc59_;
                        _loc59_;
                        _loc59_;
                        _loc59_;
                        _loc59_;
                        _loc25_ = _loc23_.iY - this.screen.mouseY;
                        _loc59_;
                        _loc59_;
                        _loc60_;
                        _loc59_;
                        _loc59_;
                        _loc26_ = Math.atan2(_loc25_,_loc24_);
                        _loc60_;
                        _loc60_;
                        _loc27_ = (Math.atan2(_loc25_,_loc24_)) * 180 / this.PI;
                        _loc59_;
                        _loc59_;
                        _loc23_.iR = _loc23_.rotation = _loc27_;
                     }
                     else
                     {
                        _loc59_;
                        _loc59_;
                        _loc60_;
                        _loc60_;
                        if((this.dragging) && this.§_-qH§[1] == SafeGlobal.WEAPONTYPE_INCOMING)
                        {
                           _loc60_;
                           _loc60_;
                           _loc28_ = mouseX - 400;
                           _loc29_ = mouseY - 300;
                           _loc60_;
                           _loc60_;
                           _loc30_ = Math.atan2(_loc29_,_loc28_);
                           _loc60_;
                           _loc59_;
                           _loc59_;
                           this.§_-na§.iR = _loc30_;
                           _loc60_;
                           _loc60_;
                           _loc60_;
                           _loc60_;
                           _loc60_;
                           _loc60_;
                           _loc59_;
                           this.§_-na§.rotation = this.§_-na§.iR * 180 / this.PI + 90;
                           _loc60_;
                           _loc60_;
                           _loc60_;
                           _loc60_;
                           _loc60_;
                           _loc59_;
                           _loc59_;
                           _loc59_;
                           _loc60_;
                           _loc60_;
                           this.§_-na§.iX = this.§_-na§.x = (this.§_-nP§ + 25) * Math.cos(_loc30_) + this.§_-Sr§.x;
                           _loc60_;
                           _loc60_;
                           _loc60_;
                           _loc60_;
                           _loc59_;
                           this.§_-na§.iY = this.§_-na§.y = (this.§_-nP§ + 25) * Math.sin(_loc30_) + this.§_-Sr§.y;
                        }
                        else
                        {
                           _loc60_;
                           if((this.dragging) && this.§_-qH§[1] == SafeGlobal.WEAPONTYPE_MELEE)
                           {
                              this.§_-M-§.x = this.screen.mouseX;
                              this.§_-M-§.y = this.screen.mouseY;
                              _loc60_;
                              _loc60_;
                              _loc1_ = this.screen.mouseX - this.§_-yD§.x;
                              _loc60_;
                              _loc60_;
                              _loc2_ = this.screen.mouseY - this.§_-yD§.y;
                              _loc3_ = this.units[this.currentUnit].startPoint();
                              _loc60_;
                              _loc60_;
                              _loc4_ = _loc3_.x - this.screen.mouseX;
                              _loc59_;
                              _loc59_;
                              _loc5_ = _loc3_.y - this.screen.mouseY;
                              _loc59_;
                              _loc59_;
                              _loc60_;
                              _loc60_;
                              _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
                              if(_loc6_ >= 30)
                              {
                                 _loc59_;
                                 _loc59_;
                                 _loc59_;
                                 _loc59_;
                                 _loc60_;
                                 _loc59_;
                                 _loc59_;
                                 _loc60_;
                                 if(this.§_-qH§[0] == SafeGlobal.WEAPONINFO_SPACEBALLBAT[0] && !(this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_SPACEBALLSWINGSETUP) && !(this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_SPACEBALLSWINGHOLD))
                                 {
                                    _loc59_;
                                    _loc59_;
                                    this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_SPACEBALLSWINGSETUP,SafeGlobal.ANIM_UNIT_SPACEBALLSWINGHOLD]);
                                    _loc59_;
                                    _loc59_;
                                 }
                                 else
                                 {
                                    _loc60_;
                                    _loc60_;
                                    _loc60_;
                                    if(this.§_-qH§[0] == SafeGlobal.WEAPONINFO_FIREPUNCH[0] && !(this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_UPPERCUTSETUP) && !(this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_UPPERCUTHOLD))
                                    {
                                       _loc60_;
                                       _loc60_;
                                       _loc59_;
                                       _loc59_;
                                       this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_UPPERCUTSETUP,SafeGlobal.ANIM_UNIT_UPPERCUTHOLD]);
                                    }
                                    else
                                    {
                                       _loc60_;
                                       if(this.§_-qH§[0] == SafeGlobal.WEAPONINFO_TAZER[0] && !(this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_TAZERJABSETUP) && !(this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_TAZERJABHOLD))
                                       {
                                          _loc60_;
                                          _loc59_;
                                          _loc59_;
                                          this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_TAZERJABSETUP,SafeGlobal.ANIM_UNIT_TAZERJABHOLD]);
                                          _loc60_;
                                          _loc60_;
                                       }
                                       else
                                       {
                                          _loc59_;
                                          _loc59_;
                                          _loc60_;
                                          _loc60_;
                                          _loc59_;
                                          _loc59_;
                                          _loc59_;
                                          if(this.§_-qH§[0] == SafeGlobal.§_-OV§[0] && !(this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_ENERGYSWORDSETUP) && !(this.units[this.currentUnit].animState == SafeGlobal.ANIM_UNIT_ENERGYSWORDHOLD))
                                          {
                                             _loc59_;
                                             _loc59_;
                                             _loc60_;
                                             _loc60_;
                                             _loc60_;
                                             this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_ENERGYSWORDSETUP,SafeGlobal.ANIM_UNIT_ENERGYSWORDHOLD]);
                                          }
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 _loc60_;
                                 _loc60_;
                                 if(this.units[this.currentUnit].animState != SafeGlobal.ANIM_UNIT_BOB)
                                 {
                                    _loc60_;
                                    this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
                                 }
                              }
                           }
                           else
                           {
                              _loc60_;
                              _loc60_;
                              _loc60_;
                              if((this.dragging) && this.§_-qH§[1] == SafeGlobal.WEAPONTYPE_PLANETGATE)
                              {
                                 _loc60_;
                                 _loc60_;
                                 _loc1_ = this.screen.mouseX - this.§_-yD§.x;
                                 _loc60_;
                                 _loc2_ = this.screen.mouseY - this.§_-yD§.y;
                                 _loc59_;
                                 _loc3_ = this.units[this.currentUnit].startPoint();
                                 _loc60_;
                                 _loc60_;
                                 _loc60_;
                                 _loc4_ = _loc3_.x - this.screen.mouseX;
                                 _loc59_;
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
                                    if(this.units[this.currentUnit].animState != SafeGlobal.ANIM_UNIT_TABLET)
                                    {
                                       _loc60_;
                                       _loc60_;
                                       _loc59_;
                                       _loc59_;
                                       this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_TABLET]);
                                       _loc60_;
                                    }
                                 }
                                 else
                                 {
                                    _loc60_;
                                    _loc60_;
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
                                 _loc59_;
                                 if((this.dragging) && this.§_-qH§[1] == SafeGlobal.WEAPONTYPE_TELEPORT)
                                 {
                                    _loc59_;
                                    _loc1_ = this.screen.mouseX - this.§_-yD§.x;
                                    _loc2_ = this.screen.mouseY - this.§_-yD§.y;
                                    _loc3_ = this.units[this.currentUnit].startPoint();
                                    _loc59_;
                                    _loc59_;
                                    _loc4_ = _loc3_.x - this.screen.mouseX;
                                    _loc59_;
                                    _loc59_;
                                    _loc5_ = _loc3_.y - this.screen.mouseY;
                                    _loc60_;
                                    _loc60_;
                                    _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
                                    _loc59_;
                                    if(_loc6_ >= 30)
                                    {
                                       _loc59_;
                                       _loc59_;
                                       _loc59_;
                                       if(this.units[this.currentUnit].animState != SafeGlobal.ANIM_UNIT_TABLET)
                                       {
                                          _loc60_;
                                          _loc59_;
                                          _loc59_;
                                          _loc59_;
                                          this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_TABLET]);
                                          _loc60_;
                                          _loc60_;
                                       }
                                       if(!this.screen.contains(this.§_-Ho§))
                                       {
                                          _loc59_;
                                          this.screen.addChild(this.§_-Ho§);
                                       }
                                       _loc59_;
                                       _loc59_;
                                       _loc60_;
                                       _loc60_;
                                       this.§_-Ho§.visible = true;
                                       _loc60_;
                                       _loc60_;
                                       _loc59_;
                                       _loc36_ = 1.0E15;
                                       _loc59_;
                                       _loc42_ = new Point(0,0);
                                       _loc47_ = new Point(0,0);
                                       _loc48_ = new Point(0,0);
                                       _loc49_ = [];
                                       _loc60_;
                                       _loc59_;
                                       _loc50_ = 0;
                                       _loc60_;
                                       _loc60_;
                                       while(true)
                                       {
                                          _loc60_;
                                          if(_loc50_ >= this.planets.length)
                                          {
                                             break;
                                          }
                                          _loc60_;
                                          _loc44_ = this.planets[_loc50_];
                                          _loc60_;
                                          _loc60_;
                                          _loc59_;
                                          _loc59_;
                                          if(!_loc44_.sun && !_loc44_.blackHole)
                                          {
                                             _loc59_;
                                             _loc59_;
                                             _loc54_ = 0;
                                             _loc60_;
                                             _loc60_;
                                             while(_loc54_ < _loc44_.shapes.length)
                                             {
                                                _loc45_ = this.planets[_loc50_].shapes[_loc54_];
                                                _loc60_;
                                                _loc59_;
                                                _loc55_ = 0;
                                                _loc60_;
                                                while(_loc55_ < _loc45_.curves.length)
                                                {
                                                   _loc46_ = _loc45_.curves[_loc55_];
                                                   _loc60_;
                                                   _loc34_ = _loc46_.x - this.screen.mouseX;
                                                   _loc60_;
                                                   _loc60_;
                                                   _loc35_ = _loc46_.y - this.screen.mouseY;
                                                   _loc60_;
                                                   _loc60_;
                                                   _loc59_;
                                                   _loc56_ = this.§_-cl§(this.§_-HM§(Math.atan2(_loc35_,_loc34_)));
                                                   _loc59_;
                                                   _loc59_;
                                                   _loc57_ = this.§_-cl§(this.§_-HM§(_loc56_ + this.PI));
                                                   if(this.§_-ag§(_loc56_,_loc46_.startAngle,_loc46_.endAngle))
                                                   {
                                                      _loc49_.push([_loc50_,_loc54_,_loc55_,_loc56_]);
                                                   }
                                                   else
                                                   {
                                                      _loc49_.push([_loc50_,_loc54_,_loc55_,_loc46_.startAngle]);
                                                      _loc59_;
                                                      _loc59_;
                                                      _loc49_.push([_loc50_,_loc54_,_loc55_,_loc46_.endAngle]);
                                                      _loc59_;
                                                   }
                                                   if(this.§_-ag§(_loc57_,_loc46_.startAngle,_loc46_.endAngle))
                                                   {
                                                      _loc49_.push([_loc50_,_loc54_,_loc55_,_loc57_]);
                                                   }
                                                   else
                                                   {
                                                      _loc49_.push([_loc50_,_loc54_,_loc55_,_loc46_.startAngle]);
                                                      _loc49_.push([_loc50_,_loc54_,_loc55_,_loc46_.endAngle]);
                                                      _loc59_;
                                                   }
                                                   _loc55_++;
                                                }
                                                _loc60_;
                                                _loc54_++;
                                             }
                                             _loc60_;
                                             _loc60_;
                                          }
                                          _loc50_++;
                                       }
                                       _loc59_;
                                       _loc59_;
                                       _loc59_;
                                       _loc52_ = 0;
                                       _loc59_;
                                       _loc59_;
                                       while(_loc52_ < _loc49_.length)
                                       {
                                          _loc59_;
                                          _loc42_ = this.planets[_loc49_[_loc52_][0]].shapes[_loc49_[_loc52_][1]].curves[_loc49_[_loc52_][2]].curvePos(_loc49_[_loc52_][3]);
                                          _loc59_;
                                          _loc59_;
                                          _loc60_;
                                          _loc60_;
                                          _loc31_ = this.screen.mouseX - _loc42_.x;
                                          _loc60_;
                                          _loc60_;
                                          _loc32_ = this.screen.mouseY - _loc42_.y;
                                          _loc60_;
                                          _loc60_;
                                          _loc60_;
                                          _loc60_;
                                          _loc60_;
                                          _loc60_;
                                          _loc33_ = Math.sqrt(_loc31_ * _loc31_ + _loc32_ * _loc32_);
                                          _loc59_;
                                          if((Math.sqrt(_loc31_ * _loc31_ + _loc32_ * _loc32_)) < _loc36_)
                                          {
                                             _loc59_;
                                             _loc59_;
                                             _loc59_;
                                             _loc36_ = _loc33_;
                                             _loc60_;
                                             _loc60_;
                                             _loc51_ = _loc52_;
                                          }
                                          _loc52_++;
                                       }
                                       _loc53_ = this.planets[_loc49_[_loc51_][0]].shapes[_loc49_[_loc51_][1]].curves[_loc49_[_loc51_][2]];
                                       _loc42_ = _loc53_.curvePos(_loc49_[_loc51_][3]);
                                       _loc59_;
                                       _loc59_;
                                       _loc60_;
                                       _loc60_;
                                       this.§_-Ho§.x = _loc42_.x;
                                       _loc60_;
                                       _loc60_;
                                       _loc60_;
                                       this.§_-Ho§.y = _loc42_.y;
                                       _loc60_;
                                       _loc60_;
                                       if(_loc53_.origCurve)
                                       {
                                          _loc60_;
                                          _loc60_;
                                          _loc60_;
                                          _loc60_;
                                          _loc59_;
                                          this.§_-Ho§.rotation = (_loc49_[_loc51_][3] + this.PI / 2) * 180 / this.PI;
                                          _loc60_;
                                          _loc60_;
                                       }
                                       else
                                       {
                                          _loc60_;
                                          this.§_-Ho§.rotation = (_loc49_[_loc51_][3] - this.PI / 2) * 180 / this.PI;
                                       }
                                    }
                                    else
                                    {
                                       this.§_-Ho§.visible = false;
                                       _loc59_;
                                       _loc59_;
                                       _loc59_;
                                       _loc59_;
                                       _loc60_;
                                       if(this.units[this.currentUnit].animState != SafeGlobal.ANIM_UNIT_BOB)
                                       {
                                          _loc60_;
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
         _loc1_;
         if(this.weaponPanel.visible)
         {
            _loc1_;
            this.§_-g5§();
            _loc1_;
            _loc1_;
         }
         else
         {
            this.§_-FR§();
         }
      }
      
      public function cheatCleanUp() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-tz§();
         _loc1_;
         _loc1_;
         this.§_-sA§();
         _loc1_;
         this.sendEndSim();
      }
      
      public function §_-g5§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc2_;
         _loc2_;
         if((this.weaponPanel) && (this.weaponPanel.visible))
         {
            _loc2_;
            _loc2_;
            if(this.weaponPanel != null)
            {
               this.weaponPanel.visible = false;
            }
            _loc2_;
            _loc2_;
            if(this.§_-5K§ != null)
            {
               this.§_-5K§.tweenOnWeaponName();
            }
         }
      }
      
      public function §_-M2§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         if(this.§_-5K§ != null)
         {
            _loc2_;
            this.§_-5K§.visible = false;
         }
      }
      
      public function activateUnactiveMines(param1:int) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc3_;
         _loc3_;
         _loc2_ = 0;
         while(_loc2_ < this.§_-KM§.length)
         {
            _loc3_;
            _loc3_;
            if(!this.§_-KM§[_loc2_].active)
            {
               _loc4_;
               this.§_-KM§[_loc2_].active = true;
               _loc4_;
               _loc4_;
               this.checkUnitProximity(this.§_-KM§[_loc2_],param1);
               _loc4_;
            }
            _loc2_++;
            _loc4_;
            _loc4_;
         }
      }
      
      public function §_-FR§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc1_;
         if(this.weaponPanel != null)
         {
            _loc1_;
            _loc1_;
            _loc1_;
            this.weaponPanel.§_-fw§();
            _loc1_;
            _loc1_;
            this.weaponPanel.visible = true;
            _loc1_;
         }
         _loc1_;
         if(this.§_-5K§ != null)
         {
            _loc1_;
            this.§_-5K§.§_-S0§();
         }
      }
      
      public function showWeaponPanelButton() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(!this.simOnly && !this.costumeCacheOnly && !this.replay)
         {
            _loc1_;
            _loc1_;
            _loc1_;
            if(this.§_-5K§ != null)
            {
               _loc2_;
               this.§_-5K§.visible = true;
            }
         }
      }
      
      public function §_-xe§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         if(!this.simOnly && !this.costumeCacheOnly && !this.replay)
         {
            _loc2_;
            _loc2_;
            this.§_-Ps§ = new Tween(this.statusBar,"y",null,this.statusBar.y,14,10,false);
            _loc1_;
            _loc1_;
            this.statusBar.visible = true;
         }
      }
      
      public function §_-X8§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.§_-Ps§ = new Tween(this.statusBar,"y",null,this.statusBar.y,-50,10,false);
         _loc1_;
         _loc1_;
         this.§_-Ps§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-L8§);
      }
      
      public function §_-L8§(param1:TweenEvent) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.statusBar.visible = false;
         _loc3_;
         this.§_-Ps§.removeEventListener(TweenEvent.MOTION_FINISH,this.§_-L8§);
      }
      
      public function §_-I8§() : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(!this.simOnly && !this.costumeCacheOnly)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc1_ = this.§_-QM§.length;
            _loc4_;
            _loc2_ = 0;
            while(_loc2_ < _loc1_)
            {
               this.§_-lq§.x = this.§_-QM§[_loc2_].x - this.§_-P7§ + this.screen.x;
               _loc4_;
               _loc4_;
               this.§_-lq§.y = this.§_-QM§[_loc2_].y - this.§_-P7§ + this.screen.y;
               _loc3_;
               _loc3_;
               _loc3_;
               if(_loc2_ == 10)
               {
                  _loc4_;
                  _loc4_;
               }
               this.§_-0-j§.copyPixels(this.§_-k6§,this.§_-k6§.rect,this.§_-lq§,null,null,false);
               _loc4_;
               _loc4_;
               _loc2_++;
               _loc3_;
               _loc3_;
            }
         }
      }
      
      public function §_-N§() : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = NaN;
         var _loc4_:* = 0;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc5_;
         if(!this.simOnly && !this.costumeCacheOnly)
         {
            _loc6_;
            _loc6_;
            _loc1_ = this.§_-QM§.length;
            _loc5_;
            _loc2_ = Math.floor((this.units[this.currentUnit].accuracy.getInt() + 1) * 1.5) + this.§_-D0§.§_-un§ * 2 + 12;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc3_ = _loc2_ / 5;
            _loc4_ = 0;
            while(_loc4_ < _loc1_)
            {
               this.§_-pp§.x = this.§_-QM§[_loc4_].x - this.§_-P7§ + this.screen.x;
               this.§_-pp§.y = this.§_-QM§[_loc4_].y - this.§_-P7§ + this.screen.y;
               _loc5_;
               _loc5_;
               _loc6_;
               _loc6_;
               if(_loc4_ == 10)
               {
                  _loc5_;
                  _loc5_;
               }
               _loc6_;
               _loc6_;
               if(_loc4_ < _loc3_)
               {
                  this.§_-0-j§.copyPixels(this.§_-KB§,this.dot1rect,this.§_-pp§,null,null,true);
               }
               else
               {
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc5_;
                  if(_loc4_ < _loc3_ * 2)
                  {
                     this.§_-0-j§.copyPixels(this.§_-KB§,this.dot2rect,this.§_-pp§,null,null,true);
                  }
                  else
                  {
                     _loc5_;
                     _loc6_;
                     _loc5_;
                     _loc5_;
                     _loc5_;
                     _loc5_;
                     if(_loc4_ < _loc3_ * 3)
                     {
                        _loc5_;
                        this.§_-0-j§.copyPixels(this.§_-KB§,this.dot3rect,this.§_-pp§,null,null,true);
                     }
                     else
                     {
                        _loc6_;
                        if(_loc4_ < _loc3_ * 4)
                        {
                           _loc5_;
                           _loc5_;
                           this.§_-0-j§.copyPixels(this.§_-KB§,this.dot4rect,this.§_-pp§,null,null,true);
                        }
                        else
                        {
                           this.§_-0-j§.copyPixels(this.§_-KB§,this.dot5rect,this.§_-pp§,null,null,true);
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
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.currentWeapon = param1;
         _loc3_;
         _loc2_;
         _loc3_;
         _loc3_;
         if(this.currentWeapon == -1)
         {
            this.§_-qH§ = [-1,-1,-1,-1,"",-1];
            _loc3_;
         }
         else
         {
            this.§_-qH§ = SafeGlobal.§_-AT§(param1);
            _loc3_;
         }
         _loc3_;
         if(this.§_-5K§ != null)
         {
            this.§_-5K§.§_-xk§(param1);
         }
         this.§_-g5§();
         _loc3_;
         _loc3_;
         if(this.§_-qH§[1] == SafeGlobal.WEAPONTYPE_GATE)
         {
            _loc3_;
            this.§_-1R§ = this.§_-qH§[3];
         }
         else
         {
            this.§_-1R§ = 0;
            _loc2_;
            _loc2_;
         }
         if(this.currentWeapon == 1)
         {
            this.onSelectClusterBazooka();
         }
      }
      
      public function §finally§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.§_-Pm§.visible = false;
         this.§_-Fp§.visible = false;
         this.§_-Ib§.visible = false;
         this.§_-0h§.visible = false;
         this.§_-vb§.visible = false;
         _loc2_;
         this.§_-wd§.visible = false;
         this.§_-p7§.visible = false;
         this.§_-2p§.visible = false;
         _loc2_;
         this.§_-vF§.visible = false;
         _loc2_;
         _loc2_;
         this.§_-Ds§.visible = false;
         this.debugLayer.visible = false;
      }
      
      public function §_-OI§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.§_-Pm§.visible = true;
         _loc1_;
         _loc1_;
         this.§_-Fp§.visible = true;
         _loc1_;
         _loc1_;
         this.§_-Ib§.visible = true;
         this.§_-0h§.visible = true;
         _loc2_;
         this.§_-vb§.visible = true;
         this.§_-wd§.visible = true;
         _loc2_;
         _loc2_;
         this.§_-p7§.visible = true;
         _loc1_;
         _loc1_;
         this.§_-2p§.visible = true;
         this.§_-vF§.visible = true;
         this.§_-Ds§.visible = true;
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
         _loc2_;
         _loc2_;
         SafeGlobal.game_client.requestLatestCache();
      }
      
      public function §_-lm§() : *
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
         _loc8_;
         _loc8_;
         _loc8_;
         _loc4_ = 0;
         _loc9_;
         _loc9_;
         _loc5_ = 0;
         while(true)
         {
            _loc8_;
            _loc8_;
            if(_loc5_ >= this.planets.length)
            {
               break;
            }
            _loc8_;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc9_;
            _loc1_ = this.planets[_loc5_].x - this.§_-1w§;
            _loc9_;
            _loc9_;
            _loc9_;
            _loc9_;
            _loc9_;
            _loc2_ = this.planets[_loc5_].y - this.§_-1w§;
            _loc3_ = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
            _loc9_;
            _loc8_;
            _loc8_;
            if(_loc3_ + this.planets[_loc5_].radius > _loc4_)
            {
               _loc9_;
               _loc9_;
               _loc9_;
               _loc4_ = _loc3_ + this.planets[_loc5_].radius;
               _loc9_;
            }
            _loc5_++;
         }
         _loc9_;
         _loc8_;
         _loc6_ = 0;
         while(true)
         {
            _loc9_;
            _loc8_;
            if(_loc6_ >= this.gates.length)
            {
               break;
            }
            _loc8_;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc1_ = this.gates[_loc6_].x - this.§_-1w§;
            _loc9_;
            _loc9_;
            _loc8_;
            _loc2_ = this.gates[_loc6_].y - this.§_-1w§;
            _loc9_;
            _loc9_;
            _loc3_ = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
            _loc9_;
            _loc8_;
            _loc8_;
            if(_loc3_ + 50 > _loc4_)
            {
               _loc8_;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc4_ = _loc3_ + 50;
               _loc8_;
               _loc8_;
            }
            _loc6_++;
         }
         _loc8_;
         _loc8_;
         _loc7_ = 0;
         while(_loc7_ < this.skyMines.length)
         {
            _loc8_;
            _loc8_;
            _loc8_;
            _loc1_ = this.skyMines[_loc7_].x - this.§_-1w§;
            _loc9_;
            _loc2_ = this.skyMines[_loc7_].y - this.§_-1w§;
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
               _loc8_;
               _loc9_;
               _loc4_ = _loc3_ + 10;
            }
            _loc7_++;
            _loc8_;
            _loc8_;
         }
         _loc9_;
         _loc9_;
         _loc9_;
         if(_loc4_ > this.§_-1w§)
         {
            _loc8_;
            _loc9_;
            _loc4_ = this.§_-1w§;
            _loc8_;
            _loc8_;
         }
         _loc9_;
         _loc9_;
         _loc8_;
         _loc8_;
         _loc4_ = _loc4_ + 80;
         if((_loc4_ + 80) < this.§_-Yv§)
         {
            _loc9_;
            _loc8_;
            _loc4_ = this.§_-Yv§;
         }
         this.§_-nP§ = this.§_-cl§(_loc4_);
         _loc8_;
         _loc8_;
         this.arenaRadius2 = this.§_-cl§(this.§_-nP§ * this.§_-nP§);
         _loc8_;
         this.§_-sb§ = this.§_-cl§(this.§_-nP§ + 1000);
         _loc9_;
         _loc9_;
         this.boundsRadius2 = this.§_-cl§(this.§_-sb§ * this.§_-sb§);
      }
      
      public function cacheLoop(param1:Event) : *
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:* = false;
         var _loc3_:* = 0;
         _loc6_;
         _loc6_;
         _loc2_ = false;
         _loc7_;
         _loc7_;
         _loc3_ = 0;
         while(true)
         {
            if(_loc3_ >= this.§_-h2§.length)
            {
               _loc7_;
               break;
            }
            _loc7_;
            _loc7_;
            _loc7_;
            if(this.§_-h2§[_loc3_].processQueue.length > 0)
            {
               _loc7_;
               _loc7_;
               this.§_-h2§[_loc3_].processQueueItem();
               _loc6_;
               _loc2_ = true;
               _loc6_;
               _loc7_;
               this.§_-nv§--;
               this.updatePlayerCache(SafeGlobal.playerID,1 - this.§_-nv§ / this.§_-sL§);
               _loc7_;
               this.sendUpdateCache(1 - this.§_-nv§ / this.§_-sL§);
               _loc7_;
               break;
            }
            _loc3_++;
         }
         if(!_loc2_)
         {
            _loc7_;
            _loc7_;
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
            this.§_-ct§[int(_loc4_[0])].width = 800 * Number(_loc4_[1]);
            _loc5_;
            _loc3_++;
         }
      }
      
      public function cacheLoopFinished() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.sendUpdateCache(1);
         _loc2_;
         removeEventListener(Event.ENTER_FRAME,this.cacheLoop);
         _loc1_;
         this.§_-eI§();
      }
      
      public function §_-eI§() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         _loc2_;
         this.§_-hv§();
         _loc2_;
         _loc2_;
         this.§_-xl§();
         _loc2_;
         _loc1_ = 0;
         while(_loc1_ < this.units.length)
         {
            this.units[_loc1_].costume = this.§_-h2§[this.units[_loc1_].costumeID];
            _loc3_;
            if(this.units[_loc1_].team == 0)
            {
               _loc2_;
               this.units[_loc1_].newAnimState([SafeGlobal.ANIM_UNIT_TELEPORTIN,SafeGlobal.ANIM_UNIT_BOB]);
            }
            else
            {
               _loc3_;
               if(this.units[_loc1_].team == 1)
               {
                  this.units[_loc1_].newAnimState([SafeGlobal.ANIM_UNIT_WAIT,SafeGlobal.ANIM_UNIT_TELEPORTIN,SafeGlobal.ANIM_UNIT_BOB]);
                  _loc2_;
               }
               else if(this.units[_loc1_].team == 2)
               {
                  _loc2_;
                  _loc2_;
                  this.units[_loc1_].newAnimState([SafeGlobal.ANIM_UNIT_WAIT,SafeGlobal.ANIM_UNIT_WAIT,SafeGlobal.ANIM_UNIT_TELEPORTIN,SafeGlobal.ANIM_UNIT_BOB]);
               }
               else
               {
                  _loc3_;
                  if(this.units[_loc1_].team == 3)
                  {
                     this.units[_loc1_].newAnimState([SafeGlobal.ANIM_UNIT_WAIT,SafeGlobal.ANIM_UNIT_WAIT,SafeGlobal.ANIM_UNIT_WAIT,SafeGlobal.ANIM_UNIT_TELEPORTIN,SafeGlobal.ANIM_UNIT_BOB]);
                  }
               }
               
            }
            _loc1_++;
         }
         _loc2_;
         this.finishBuildLevel();
         this.§_-aF§ = true;
         this.bringToFront(this.§_-Jz§);
         _loc2_;
         this.§_-kf§();
         _loc2_;
         _loc2_;
         this.§_-Co§();
      }
      
      public function addCacheLoadingBar() : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:* = 0;
         var _loc2_:ColorTransform = null;
         _loc4_;
         _loc4_;
         _loc1_ = 0;
         while(_loc1_ < this.teams.length)
         {
            _loc2_ = new ColorTransform();
            _loc2_.color = SafeGlobal.colour_hex[this.teams[_loc1_].colourID];
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            this.§_-ct§.push(new §_-xD§());
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            this.§_-ct§[_loc1_].x = 0;
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            this.§_-ct§[_loc1_].y = 595 - _loc1_ * 5;
            _loc3_;
            _loc3_;
            _loc3_;
            this.§_-ct§[_loc1_].width = 1;
            _loc3_;
            this.§_-ct§[_loc1_].transform.colorTransform = _loc2_;
            _loc4_;
            this.§_-pn§.addChild(this.§_-ct§[_loc1_]);
            _loc3_;
            _loc3_;
            _loc1_++;
         }
      }
      
      public function removeCacheLoadingBar() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         _loc3_;
         _loc1_ = 0;
         while(_loc1_ < this.teams.length)
         {
            if(this.§_-pn§.contains(this.§_-ct§[_loc1_]))
            {
               _loc2_;
               this.§_-pn§.removeChild(this.§_-ct§[_loc1_]);
               _loc3_;
               _loc3_;
            }
            _loc1_++;
            _loc2_;
            _loc2_;
         }
      }
      
      public function §_-kf§() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         _loc3_;
         _loc3_;
         _loc1_ = 0;
         while(_loc1_ < this.teams.length)
         {
            if(this.teams[_loc1_].droppedOutEarly)
            {
               _loc2_;
               _loc2_;
               this.displayDropOut(_loc1_);
               _loc3_;
            }
            _loc1_++;
            _loc3_;
         }
      }
      
      public function §_-xl§() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         _loc3_;
         if(this.§_-vT§.length == 0)
         {
            _loc3_;
            _loc3_;
            _loc1_ = 0;
            while(_loc1_ < this.§_-YZ§.length)
            {
               this.§_-vT§.push(new BitmapData(this.§_-YZ§[_loc1_].frameWidth,this.§_-YZ§[_loc1_].frameHeight,true,0));
               _loc2_;
               _loc2_;
               _loc1_++;
               _loc3_;
               _loc3_;
            }
         }
      }
      
      public function bringToFront(param1:Sprite) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         param1.parent.setChildIndex(param1,param1.parent.numChildren - 1);
      }
      
      public function §_-VY§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         SafeGlobal.orderSetupReady = true;
         _loc2_;
         _loc2_;
         this.tryBuildGame();
      }
      
      public function tryBuildGame() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         if((SafeGlobal.orderDisplayFinished) && (SafeGlobal.orderSetupReady))
         {
            _loc1_;
            this.§_-Z7§ = true;
            _loc1_;
            _loc1_;
            if(this.§_-BW§)
            {
               _loc2_;
               _loc2_;
               this.buildLevel();
            }
         }
      }
      
      public function unitsAfk(param1:int) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc3_;
         _loc3_;
         _loc2_ = 0;
         while(_loc2_ < this.units.length)
         {
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            if(this.units[_loc2_].team == param1)
            {
               _loc4_;
               _loc4_;
               this.units[_loc2_].newAnimState([SafeGlobal.ANIM_UNIT_SLEEP]);
               _loc3_;
            }
            _loc2_++;
            _loc4_;
            _loc4_;
         }
      }
      
      public function unitsAfkBack(param1:int) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc3_;
         _loc2_ = 0;
         while(_loc2_ < this.units.length)
         {
            _loc4_;
            _loc3_;
            _loc3_;
            if(this.units[_loc2_].team == param1)
            {
               _loc3_;
               this.units[_loc2_].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
               _loc4_;
            }
            _loc2_++;
            _loc4_;
            _loc4_;
         }
      }
      
      public function sendSetupReady() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         SafeGlobal.game_client.sendSetupReady();
      }
      
      public function §_-jJ§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         SafeGlobal.game_client.sendAFKBack();
      }
      
      public function generateCustomParticle(param1:int, param2:Number, param3:Number, param4:uint, param5:uint, param6:Number, param7:Number, param8:Number) : *
      {
         var _loc11_:* = false;
         var _loc12_:* = true;
         var _loc9_:* = 0;
         var _loc10_:* = undefined;
         _loc11_;
         _loc11_;
         _loc12_;
         _loc9_ = this.customParticleGFX.length;
         _loc11_;
         _loc11_;
         _loc12_;
         _loc12_;
         _loc12_;
         _loc12_;
         if(param1 == SafeGlobal.PARTICLETYPE_CIRCLE)
         {
            _loc11_;
            _loc11_;
            _loc10_ = new ParticleGraphic(new ParticleWhite5(),[30,param2,param3,param6,param7,param4,param5]);
            _loc12_;
         }
         else
         {
            _loc12_;
            _loc12_;
            _loc11_;
            _loc11_;
            if(param1 == SafeGlobal.PARTICLETYPE_RING)
            {
               _loc12_;
               _loc10_ = new ParticleGraphic(new §_-PO§(),[16,param2,param3,param6,param7,param4,param5]);
            }
            else if(param1 == SafeGlobal.§_-Fw§)
            {
               _loc10_ = new §_-p3§(new §_-jE§(),[16,param2,param3,param6,param7,0,7,param4,param5]);
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
         var _loc4_:§_-TN§ = null;
         _loc6_;
         _loc6_;
         _loc3_ = this.customProjectileGFX.length;
         _loc4_ = new §_-TN§(new ProjectileGraphic(param1,param2));
         _loc6_;
         _loc6_;
         this.customProjectileGFX.push(_loc4_);
         return _loc3_;
      }
      
      public function generateCustomWeapon(param1:int, param2:int) : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:* = 0;
         var _loc4_:Sprite = null;
         _loc6_;
         _loc6_;
         _loc3_ = this.§_-Us§.length;
         _loc4_ = Sprite(new WeaponGraphic(param1,param2));
         _loc5_;
         _loc5_;
         this.§_-Us§.push(_loc4_);
         return _loc3_;
      }
      
      public function §_-2j§() : *
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
         _loc14_;
         _loc14_;
         _loc4_ = 0;
         while(true)
         {
            _loc13_;
            _loc13_;
            if(_loc4_ >= this.planets.length)
            {
               break;
            }
            if(this.planets[_loc4_].blackHole)
            {
               _loc13_;
               _loc13_;
               this.planets[_loc4_].rotation = this.planets[_loc4_].rotation - 1;
            }
            _loc4_++;
         }
         _loc13_;
         _loc13_;
         _loc5_ = 0;
         while(true)
         {
            _loc14_;
            _loc14_;
            _loc14_;
            if(_loc5_ >= this.units.length)
            {
               break;
            }
            _loc14_;
            this.units[_loc5_].animProgress();
            if(this.§_-Lh§(this.units[_loc5_].iX,this.units[_loc5_].iY))
            {
               _loc14_;
               _loc14_;
               this.units[_loc5_].updateImage();
               _loc2_++;
            }
            else
            {
               _loc3_++;
            }
            _loc5_++;
         }
         _loc6_ = 0;
         _loc13_;
         _loc13_;
         while(_loc6_ < this.§_-KM§.length)
         {
            _loc13_;
            _loc13_;
            this.§_-KM§[_loc6_].animProgress(this.currentTime);
            _loc13_;
            if(this.§_-Lh§(this.§_-KM§[_loc6_].iX,this.§_-KM§[_loc6_].iY))
            {
               _loc13_;
               this.§_-KM§[_loc6_].updateImage();
               _loc2_++;
               _loc14_;
               _loc14_;
            }
            else
            {
               _loc3_++;
               _loc14_;
            }
            _loc6_++;
         }
         _loc7_ = 0;
         _loc14_;
         _loc14_;
         while(true)
         {
            _loc14_;
            _loc14_;
            if(_loc7_ >= this.skyMines.length)
            {
               break;
            }
            this.skyMines[_loc7_].animProgress(this.currentTime);
            if(this.§_-Lh§(this.skyMines[_loc7_].iX,this.skyMines[_loc7_].iY))
            {
               _loc14_;
               _loc14_;
               this.skyMines[_loc7_].updateImage();
               _loc13_;
               _loc13_;
               _loc2_++;
               _loc14_;
               _loc14_;
            }
            else
            {
               _loc3_++;
            }
            _loc7_++;
            _loc13_;
            _loc13_;
         }
         _loc13_;
         _loc13_;
         _loc8_ = 0;
         _loc13_;
         _loc13_;
         while(_loc8_ < this.gates.length)
         {
            this.gates[_loc8_].animProgress();
            if(this.§_-Lh§(this.gates[_loc8_].iX,this.gates[_loc8_].iY))
            {
               _loc14_;
               _loc14_;
               _loc14_;
               this.gates[_loc8_].updateImage();
               _loc2_++;
            }
            else
            {
               _loc3_++;
               _loc14_;
            }
            _loc8_++;
         }
         _loc13_;
         _loc4_ = 0;
         while(_loc4_ < this.projectiles.length)
         {
            _loc13_;
            _loc13_;
            this.projectiles[_loc4_].animProgress();
            if(this.§_-Lh§(this.projectiles[_loc4_].iX,this.projectiles[_loc4_].iY))
            {
               _loc14_;
               _loc14_;
               this.projectiles[_loc4_].updateImage();
               _loc13_;
               _loc13_;
               _loc2_++;
               _loc14_;
            }
            else
            {
               _loc3_++;
            }
            _loc4_++;
         }
         _loc13_;
         _loc13_;
         _loc9_ = 0;
         _loc13_;
         _loc13_;
         while(_loc9_ < this.barrels.length)
         {
            _loc14_;
            _loc14_;
            _loc13_;
            _loc13_;
            this.barrels[_loc9_].animProgress();
            if(this.§_-Lh§(this.barrels[_loc9_].iX,this.barrels[_loc9_].iY))
            {
               _loc14_;
               this.barrels[_loc9_].updateImage();
               _loc2_++;
            }
            else
            {
               _loc3_++;
               _loc14_;
               _loc14_;
            }
            _loc9_++;
            _loc14_;
         }
         _loc13_;
         _loc13_;
         _loc14_;
         _loc14_;
         _loc10_ = 0;
         _loc13_;
         while(true)
         {
            _loc13_;
            if(_loc10_ >= this.powerUps.length)
            {
               break;
            }
            _loc13_;
            this.powerUps[_loc10_].animProgress();
            _loc14_;
            _loc14_;
            if(this.§_-Lh§(this.powerUps[_loc10_].iX,this.powerUps[_loc10_].iY))
            {
               this.powerUps[_loc10_].updateImage();
               _loc2_++;
            }
            else
            {
               _loc3_++;
               _loc14_;
            }
            _loc10_++;
            _loc13_;
            _loc13_;
         }
         _loc14_;
         _loc14_;
         _loc13_;
         _loc13_;
         _loc11_ = this.§_-pf§.length - 1;
         while(true)
         {
            _loc13_;
            _loc13_;
            if(_loc11_ < 0)
            {
               break;
            }
            _loc13_;
            this.§_-pf§[_loc11_].animProgress();
            if(this.§_-Lh§(this.§_-pf§[_loc11_].iX,this.§_-pf§[_loc11_].iY))
            {
               _loc13_;
               _loc13_;
               this.§_-pf§[_loc11_].updateImage();
               _loc14_;
               _loc14_;
               _loc2_++;
               _loc14_;
               _loc14_;
            }
            else
            {
               _loc3_++;
            }
            _loc13_;
            _loc13_;
            if(this.§_-pf§[_loc11_].dead)
            {
               this.§_-fU§(this.§_-pf§[_loc11_]);
               _loc14_;
               _loc14_;
            }
            _loc13_;
            _loc11_--;
            _loc13_;
         }
         _loc14_;
         _loc14_;
         _loc13_;
         _loc13_;
         _loc13_;
         _loc11_ = this.effects.length - 1;
         _loc14_;
         while(true)
         {
            _loc14_;
            _loc14_;
            _loc13_;
            if(_loc11_ < 0)
            {
               break;
            }
            _loc13_;
            _loc13_;
            this.effects[_loc11_].animProgress();
            if(this.§_-Lh§(this.effects[_loc11_].iX,this.effects[_loc11_].iY))
            {
               _loc13_;
               this.effects[_loc11_].updateImage();
               _loc14_;
               _loc2_++;
            }
            else
            {
               _loc3_++;
            }
            _loc13_;
            _loc13_;
            if(this.effects[_loc11_].dead)
            {
               this.§_-Ve§(this.effects[_loc11_]);
            }
            _loc13_;
            _loc11_--;
         }
         _loc13_;
         _loc12_ = this.damage.length - 1;
         while(_loc12_ >= 0)
         {
            _loc14_;
            if(this.damage[_loc12_].currentFrame >= this.damage[_loc12_].totalFrames - 1)
            {
               this.screen.removeChild(this.damage[_loc12_]);
               _loc13_;
               _loc13_;
               this.damage.splice(_loc12_,1);
            }
            _loc14_;
            _loc14_;
            _loc12_--;
            _loc13_;
         }
      }
      
      public function §_-6Q§() : *
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc1_ = -1;
         _loc7_;
         _loc7_;
         _loc2_ = 0;
         _loc6_;
         _loc6_;
         _loc7_;
         _loc7_;
         _loc3_ = 0;
         _loc6_;
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
            _loc7_;
            if(this.gates[_loc5_] is Wormhole)
            {
               _loc7_;
               _loc7_;
               _loc4_ = _loc5_;
               _loc3_++;
            }
            _loc5_++;
            _loc6_;
            _loc6_;
         }
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         if(_loc3_ % 2 == 1)
         {
            this.removeGate(this.gates[_loc4_]);
         }
         _loc6_;
         _loc5_ = 0;
         while(_loc5_ < this.gates.length)
         {
            _loc6_;
            _loc6_;
            _loc7_;
            if(this.gates[_loc5_] is Wormhole)
            {
               if(_loc1_ == -1)
               {
                  _loc1_ = _loc5_;
                  _loc7_;
                  _loc7_;
               }
               else
               {
                  _loc7_;
                  _loc6_;
                  _loc6_;
                  this.gates[_loc1_].pair = this.gates[_loc5_];
                  _loc7_;
                  _loc7_;
                  this.gates[_loc5_].pair = this.gates[_loc1_];
                  _loc6_;
                  _loc7_;
                  _loc7_;
                  this.gates[_loc5_].changeColour(_loc2_);
                  _loc6_;
                  _loc6_;
                  this.gates[_loc1_].changeColour(_loc2_);
                  _loc1_ = -1;
                  _loc2_++;
               }
            }
            _loc5_++;
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
         _loc12_;
         _loc1_ = 0;
         while(_loc1_ < this.teams.length)
         {
            this.teams[_loc1_].updateHealth();
            _loc12_;
            _loc12_;
            _loc1_++;
            _loc12_;
         }
         _loc2_ = [];
         _loc12_;
         _loc12_;
         _loc12_;
         _loc12_;
         _loc3_ = 0;
         _loc1_ = 0;
         while(true)
         {
            _loc12_;
            _loc13_;
            if(_loc1_ >= this.teams.length)
            {
               break;
            }
            if(this.teams[_loc1_].totalHealth > _loc3_)
            {
               _loc13_;
               _loc3_ = this.teams[_loc1_].totalHealth;
            }
            this.teams[_loc1_].tempPos = -1;
            _loc13_;
            _loc13_;
            _loc2_.push(_loc1_);
            _loc13_;
            _loc1_++;
         }
         _loc13_;
         _loc13_;
         _loc1_ = 0;
         while(true)
         {
            _loc12_;
            _loc12_;
            if(_loc1_ >= this.teams.length)
            {
               break;
            }
            _loc13_;
            this.statuses[_loc1_].setMaxHealth(_loc3_);
            _loc1_++;
            _loc13_;
            _loc13_;
         }
         _loc12_;
         _loc12_;
         _loc1_ = 0;
         while(_loc1_ < this.teams.length)
         {
            _loc13_;
            _loc13_;
            _loc13_;
            _loc13_;
            if((this.§_-qI§) && this.teams[_loc1_].totalHealth <= 0 && !this.teams[_loc1_].displayedKnockedOut)
            {
               this.§_-LM§(_loc1_);
               this.teams[_loc1_].displayedKnockedOut = true;
            }
            _loc1_++;
            _loc13_;
            _loc13_;
         }
         if(this.§_-qI§)
         {
            _loc6_ = [-1,-1,-1,-1,-1];
            while(_loc2_.length > 0)
            {
               _loc13_;
               _loc8_ = _loc2_.length;
               _loc12_;
               _loc12_;
               _loc9_ = false;
               _loc12_;
               _loc13_;
               _loc13_;
               _loc1_ = 0;
               while(true)
               {
                  _loc12_;
                  _loc12_;
                  if(_loc1_ >= _loc2_.length)
                  {
                     break;
                  }
                  _loc13_;
                  _loc13_;
                  if(this.teams[_loc2_[_loc1_]].finalPos == _loc8_)
                  {
                     _loc13_;
                     _loc6_[_loc8_] = _loc2_[_loc1_];
                     _loc12_;
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
               _loc12_;
               _loc12_;
               if(!_loc9_)
               {
                  _loc1_ = 0;
                  while(true)
                  {
                     _loc12_;
                     _loc12_;
                     if(_loc1_ >= _loc2_.length)
                     {
                        break;
                     }
                     _loc13_;
                     if(this.teams[_loc2_[_loc1_]].totalHealth <= 0 || (this.teams[_loc2_[_loc1_]].droppedOut))
                     {
                        this.teams[_loc2_[_loc1_]].finalPos = _loc8_;
                        _loc6_[_loc8_] = _loc2_[_loc1_];
                        _loc12_;
                        _loc13_;
                        _loc9_ = true;
                        _loc12_;
                        _loc2_.splice(_loc1_,1);
                        break;
                     }
                     _loc1_++;
                  }
               }
               _loc12_;
               if(!_loc9_)
               {
                  _loc10_ = 10000;
                  _loc11_ = -1;
                  _loc13_;
                  _loc13_;
                  _loc12_;
                  _loc1_ = 0;
                  _loc12_;
                  _loc12_;
                  while(_loc1_ < _loc2_.length)
                  {
                     if(this.teams[_loc2_[_loc1_]].totalHealth < _loc10_)
                     {
                        _loc13_;
                        _loc10_ = this.teams[_loc2_[_loc1_]].totalHealth;
                        _loc13_;
                        _loc13_;
                        _loc11_ = _loc1_;
                        _loc12_;
                     }
                     _loc1_++;
                  }
                  _loc6_[_loc8_] = _loc2_[_loc11_];
                  _loc12_;
                  _loc9_ = true;
                  _loc13_;
                  _loc13_;
                  _loc2_.splice(_loc11_,1);
                  _loc12_;
               }
            }
            _loc12_;
            _loc7_ = 0;
            _loc12_;
            _loc12_;
            while(_loc7_ < 5)
            {
               if(_loc6_[_loc7_] != -1)
               {
                  _loc13_;
                  _loc13_;
                  this.statuses[_loc6_[_loc7_]].moveTo(_loc7_ - 1);
               }
               _loc7_++;
            }
         }
      }
      
      public function §_-uj§(param1:int, param2:int) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = 0;
         _loc5_;
         _loc3_ = 0;
         while(_loc3_ < this.§_-X6§.length)
         {
            _loc5_;
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            if(this.§_-X6§[_loc3_].teamID == param1 && this.§_-X6§[_loc3_].unitID == param2)
            {
               _loc5_;
               return this.§_-X6§[_loc3_];
            }
            _loc3_++;
            _loc5_;
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
         if(!param1.test)
         {
            _loc6_;
            _loc6_;
            _loc2_ = param1.iX - this.§_-Sr§.x;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc3_ = param1.iY - this.§_-Sr§.y;
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc5_;
            _loc4_ = _loc2_ * _loc2_ + _loc3_ * _loc3_;
            if((_loc2_ * _loc2_ + _loc3_ * _loc3_) > this.boundsRadius2)
            {
               _loc6_;
               _loc6_;
               if((param1.unit) && !param1.unit.removed)
               {
                  this.removeUnit(param1.unit);
                  param1.unit = null;
                  this.updateTeamHealths();
                  _loc5_;
                  SoundManager.§_-sQ§(SafeGlobal.FX_JETPACK,param1.sound_uid);
               }
               if(param1.mine)
               {
                  _loc6_;
                  this.removeMine(param1.mine);
                  param1.mine = null;
               }
               this.simManager.removeObject(param1);
               _loc5_;
               _loc5_;
               this.removeProjectile(param1);
            }
         }
      }
      
      public function §_-mF§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         if(!this.§_-Tl§)
         {
            if(this.§_-wl§[65])
            {
               _loc2_;
               _loc2_;
               _loc2_;
               _loc2_;
               _loc1_;
               _loc1_;
               this.§_-7X§.x = this.§_-7X§.x - 15;
               _loc2_;
               _loc2_;
               _loc1_;
               _loc1_;
               _loc2_;
               if(this.§_-7X§.x < this.§_-2R§)
               {
                  _loc1_;
                  this.§_-7X§.x = this.§_-2R§;
                  _loc1_;
                  _loc1_;
               }
               _loc1_;
               _loc1_;
               this.§_-7X§.active = true;
               _loc2_;
               _loc2_;
            }
            if(this.§_-wl§[68])
            {
               _loc1_;
               _loc1_;
               _loc1_;
               _loc1_;
               _loc2_;
               _loc2_;
               _loc1_;
               _loc1_;
               _loc2_;
               this.§_-7X§.x = this.§_-7X§.x + 15;
               _loc1_;
               _loc1_;
               _loc2_;
               _loc1_;
               _loc1_;
               if(this.§_-7X§.x > this.§_-M8§)
               {
                  _loc1_;
                  _loc1_;
                  _loc2_;
                  this.§_-7X§.x = this.§_-M8§;
                  _loc1_;
               }
               _loc1_;
               _loc1_;
               this.§_-7X§.active = true;
               _loc1_;
            }
            _loc2_;
            _loc2_;
            if(this.§_-wl§[87])
            {
               _loc1_;
               _loc2_;
               _loc1_;
               _loc1_;
               _loc2_;
               _loc2_;
               _loc2_;
               this.§_-7X§.y = this.§_-7X§.y - 15;
               _loc2_;
               _loc2_;
               _loc2_;
               if(this.§_-7X§.y < this.§_-WW§)
               {
                  _loc1_;
                  _loc1_;
                  _loc1_;
                  this.§_-7X§.y = this.§_-WW§;
               }
               _loc2_;
               _loc2_;
               this.§_-7X§.active = true;
               _loc1_;
               _loc1_;
            }
            _loc1_;
            _loc1_;
            _loc1_;
            if(this.§_-wl§[83])
            {
               _loc1_;
               _loc1_;
               this.§_-7X§.y = this.§_-7X§.y + 15;
               _loc1_;
               if(this.§_-7X§.y > this.§_-dw§)
               {
                  _loc2_;
                  _loc2_;
                  this.§_-7X§.y = this.§_-dw§;
               }
               this.§_-7X§.active = true;
            }
         }
         if((this.myTurn) && !this.§_-Tl§)
         {
            _loc1_;
            this.units[this.currentUnit].oldWalkDir = this.units[this.currentUnit].walkDir;
            _loc1_;
            _loc1_;
            this.units[this.currentUnit].walkDir = 0;
            _loc1_;
            if(((this.§_-wl§[37] || this.§_-wl§[81]) && !this.simManager.turnOver && !this.mods[SafeGlobal.MOD_NOUNITWALK] && this.§_-d3§ < this.currentTime) && (!this.dragging) && (this.units[this.currentUnit].oldWalkDir == 0 || this.units[this.currentUnit].oldWalkDir == -1))
            {
               _loc1_;
               _loc2_;
               _loc2_;
               this.units[this.currentUnit].walkDir = this.units[this.currentUnit].walkDir - 1;
               _loc2_;
               _loc2_;
            }
            _loc2_;
            _loc2_;
            _loc1_;
            _loc1_;
            _loc1_;
            if(((this.§_-wl§[39] || this.§_-wl§[69]) && !this.simManager.turnOver && !this.mods[SafeGlobal.MOD_NOUNITWALK] && this.§_-d3§ < this.currentTime) && (!this.dragging) && (this.units[this.currentUnit].oldWalkDir == 0 || this.units[this.currentUnit].oldWalkDir == 1))
            {
               _loc1_;
               _loc1_;
               this.units[this.currentUnit].walkDir = this.units[this.currentUnit].walkDir + 1;
            }
            _loc1_;
            _loc1_;
            _loc1_;
            if(this.units[this.currentUnit].oldWalkDir == 0 && !(this.units[this.currentUnit].walkDir == 0) && !this.mods[SafeGlobal.MOD_NOUNITWALK] && !this.simManager.turnOver && (this.simManager.§_-0K§() > this.currentTime || this.simManager.§_-0K§() == -1) && (!this.§_-Vm§ || (this.§_-i-§)))
            {
               _loc1_;
               this.units[this.currentUnit].lastSimTime = this.currentTime;
               _loc2_;
               _loc2_;
               this.sendStartWalk(this.currentTime,this.units[this.currentUnit].walkDir);
               _loc2_;
               _loc2_;
               _loc1_;
               _loc2_;
               _loc2_;
               this.simManager.addObject(this.units[this.currentUnit],"",true);
               this.§_-ck§();
               _loc2_;
               _loc2_;
               _loc2_;
               this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_WALK]);
               _loc2_;
               _loc2_;
               _loc2_;
               this.units[this.currentUnit].doFlip(this.units[this.currentUnit].walkDir * -1);
            }
            _loc2_;
            _loc2_;
            if(!(this.units[this.currentUnit].oldWalkDir == 0) && this.units[this.currentUnit].walkDir == 0 && !this.mods[SafeGlobal.MOD_NOUNITWALK])
            {
               this.§_-d3§ = this.units[this.currentUnit].lastSimTime + this.§_-Pi§;
               _loc1_;
               _loc1_;
               this.simManager.removeObject(this.units[this.currentUnit],true);
               _loc1_;
               _loc1_;
               _loc1_;
               _loc2_;
               _loc2_;
               if(!this.simManager.turnOver && (this.simManager.§_-0K§() > this.currentTime || this.simManager.§_-0K§() == -1))
               {
                  _loc2_;
                  _loc2_;
                  this.sendStopWalk(this.units[this.currentUnit].lastSimTime);
                  _loc1_;
                  _loc1_;
               }
               _loc1_;
               _loc1_;
               this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
               _loc2_;
               this.§_-se§(this.units[this.currentUnit]);
            }
            _loc2_;
            _loc1_;
            _loc2_;
            _loc2_;
            if(!(this.units[this.currentUnit].walkDir == 0) && !this.mods[SafeGlobal.MOD_NOUNITWALK])
            {
               this.units[this.currentUnit].facing = this.units[this.currentUnit].walkDir;
            }
         }
      }
      
      public function §_-kU§(param1:Projectile, param2:SimObject, param3:Point, param4:Point) : *
      {
         var _loc16_:* = false;
         var _loc17_:* = true;
         var _loc5_:§_-pM§ = null;
         var _loc6_:§_-pM§ = null;
         var _loc7_:§_-pM§ = null;
         var _loc8_:§_-pM§ = null;
         var _loc9_:Array = null;
         var _loc10_:* = 0;
         var _loc11_:* = NaN;
         var _loc12_:* = 0;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         _loc16_;
         _loc17_;
         _loc16_;
         _loc16_;
         if(!param2.hidden && !param2.dead)
         {
            _loc5_ = this.§_-Ow§(param2.point1,param2.point2,param3,param4);
            _loc6_ = this.§_-Ow§(param2.point2,param2.point3,param3,param4);
            _loc7_ = this.§_-Ow§(param2.point3,param2.point4,param3,param4);
            _loc17_;
            _loc17_;
            _loc17_;
            if((_loc5_) || (_loc6_) || (_loc7_))
            {
               _loc17_;
               _loc17_;
               _loc9_ = [];
            }
            if(_loc5_)
            {
               _loc16_;
               _loc16_;
               _loc9_.push(_loc5_);
               _loc17_;
               _loc17_;
            }
            if(_loc6_)
            {
               _loc9_.push(_loc6_);
            }
            if(_loc7_)
            {
               _loc17_;
               _loc9_.push(_loc7_);
               _loc17_;
            }
            if(_loc9_)
            {
               if(_loc9_.length > 1)
               {
                  _loc16_;
                  _loc17_;
                  _loc17_;
                  _loc11_ = 1000000;
                  _loc17_;
                  _loc17_;
                  _loc12_ = 0;
                  while(_loc12_ < _loc9_.length)
                  {
                     _loc17_;
                     _loc13_ = _loc9_[_loc12_].x - param1.§_-gh§;
                     _loc16_;
                     _loc16_;
                     _loc16_;
                     _loc16_;
                     _loc16_;
                     _loc14_ = _loc9_[_loc12_].y - param1.§_-uE§;
                     _loc17_;
                     _loc16_;
                     _loc17_;
                     _loc17_;
                     _loc17_;
                     _loc17_;
                     _loc16_;
                     _loc17_;
                     _loc17_;
                     _loc16_;
                     _loc16_;
                     _loc15_ = _loc13_ * _loc13_ + _loc14_ * _loc14_;
                     _loc17_;
                     _loc17_;
                     if((_loc13_ * _loc13_ + _loc14_ * _loc14_) < _loc11_)
                     {
                        _loc17_;
                        _loc11_ = _loc15_;
                        _loc16_;
                        _loc17_;
                        _loc17_;
                        _loc17_;
                        _loc17_;
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
            _loc17_;
            return _loc8_;
         }
         return null;
      }
      
      public function collisionProjectileObjects(param1:Projectile) : *
      {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc5_:§_-pM§ = null;
         var _loc6_:Array = null;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         _loc11_;
         _loc11_;
         this.tempProj1Point.x = param1.iX;
         _loc10_;
         _loc10_;
         this.tempProj1Point.y = param1.iY;
         _loc11_;
         _loc11_;
         this.tempProj2Point.x = param1.§_-gh§;
         _loc11_;
         _loc11_;
         this.tempProj2Point.y = param1.§_-uE§;
         var _loc2_:* = -1;
         var _loc3_:* = -1;
         var _loc4_:* = -1;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc11_;
         if(((!param1.unit) || (param1.unit && param1.unit.rocketGloves)) && !param1.mine)
         {
            _loc10_;
            _loc10_;
            _loc7_ = 0;
            while(true)
            {
               _loc10_;
               if(_loc7_ >= this.units.length)
               {
                  break;
               }
               _loc11_;
               _loc11_;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc11_;
               if(param1.ignoreUnit == -1 || !(param1.ignoreUnit == _loc7_) || param1.ignoreUnit == _loc7_ && param1.§_-rx§ < param1.lastSimTime)
               {
                  _loc10_;
                  _loc5_ = this.§_-kU§(param1,this.units[_loc7_],this.tempProj1Point,this.tempProj2Point);
                  if(_loc5_)
                  {
                     _loc10_;
                     _loc10_;
                     if(!_loc6_)
                     {
                        _loc11_;
                        _loc11_;
                        _loc6_ = [];
                     }
                     _loc6_.push(new §_-Kw§(_loc5_.x,_loc5_.y,SafeGlobal.COLLTYPE_OBJECT,1,_loc5_.angle));
                     _loc11_;
                     _loc6_[_loc6_.length - 1].objectType = SafeGlobal.OBJECTTYPE_UNIT;
                     _loc11_;
                     _loc6_[_loc6_.length - 1].objectID = _loc7_;
                     _loc11_;
                     _loc11_;
                     _loc2_ = _loc7_;
                  }
               }
               _loc7_++;
               _loc10_;
               _loc10_;
            }
            if(!param1.unit)
            {
               _loc8_ = 0;
               _loc11_;
               _loc11_;
               while(true)
               {
                  _loc10_;
                  if(_loc8_ >= this.barrels.length)
                  {
                     break;
                  }
                  _loc5_ = this.§_-kU§(param1,this.barrels[_loc8_],this.tempProj1Point,this.tempProj2Point);
                  if(_loc5_)
                  {
                     if(!_loc6_)
                     {
                        _loc10_;
                        _loc10_;
                        _loc6_ = [];
                     }
                     _loc6_.push(new §_-Kw§(_loc5_.x,_loc5_.y,SafeGlobal.COLLTYPE_OBJECT,1,_loc5_.angle));
                     _loc6_[_loc6_.length - 1].objectType = SafeGlobal.OBJECTTYPE_BARREL;
                     _loc6_[_loc6_.length - 1].objectID = _loc8_;
                     _loc10_;
                     _loc3_ = _loc8_;
                     _loc11_;
                  }
                  _loc8_++;
               }
               _loc9_ = 0;
               while(_loc9_ < this.powerUps.length)
               {
                  _loc5_ = this.§_-kU§(param1,this.powerUps[_loc9_],this.tempProj1Point,this.tempProj2Point);
                  if(_loc5_)
                  {
                     _loc10_;
                     _loc10_;
                     if(!_loc6_)
                     {
                        _loc6_ = [];
                     }
                     _loc6_.push(new §_-Kw§(_loc5_.x,_loc5_.y,SafeGlobal.COLLTYPE_OBJECT,1,_loc5_.angle));
                     _loc6_[_loc6_.length - 1].objectType = SafeGlobal.OBJECTTYPE_POWERUP;
                     _loc6_[_loc6_.length - 1].objectID = _loc9_;
                     _loc10_;
                     _loc4_ = _loc9_;
                  }
                  _loc9_++;
               }
               _loc10_;
               _loc10_;
            }
         }
         if(_loc6_)
         {
            return _loc6_;
         }
         return null;
      }
      
      public function §_-YQ§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : *
      {
         var _loc19_:* = true;
         var _loc20_:* = false;
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
         _loc20_;
         _loc20_;
         _loc9_ = param7 - param5;
         _loc19_;
         _loc19_;
         _loc19_;
         _loc19_;
         _loc19_;
         _loc10_ = _loc8_ * _loc8_ + _loc9_ * _loc9_;
         _loc20_;
         _loc20_;
         _loc20_;
         _loc19_;
         _loc19_;
         _loc20_;
         _loc19_;
         _loc20_;
         _loc11_ = 2 * (_loc8_ * (param4 - param1) + _loc9_ * (param5 - param2));
         _loc19_;
         _loc20_;
         _loc20_;
         _loc19_;
         _loc19_;
         _loc19_;
         _loc19_;
         _loc19_;
         _loc19_;
         _loc19_;
         _loc19_;
         _loc12_ = (param4 - param1) * (param4 - param1) + (param5 - param2) * (param5 - param2) - param3 * param3;
         _loc20_;
         _loc20_;
         _loc19_;
         _loc19_;
         _loc19_;
         _loc19_;
         _loc20_;
         _loc20_;
         _loc20_;
         _loc20_;
         _loc13_ = _loc11_ * _loc11_ - 4 * _loc10_ * _loc12_;
         _loc19_;
         _loc19_;
         if(_loc10_ <= 1.0E-7 || _loc13_ < 0)
         {
            _loc19_;
            _loc19_;
            return [];
         }
         _loc20_;
         if(_loc13_ == 0)
         {
            _loc19_;
            _loc19_;
            _loc19_;
            _loc20_;
            _loc20_;
            _loc20_;
            _loc20_;
            _loc19_;
            _loc19_;
            _loc20_;
            _loc14_ = -_loc11_ / (2 * _loc10_);
            _loc19_;
            return [];
         }
         _loc20_;
         _loc20_;
         _loc20_;
         _loc20_;
         _loc20_;
         _loc20_;
         _loc14_ = (-_loc11_ + Math.sqrt(_loc13_)) / (2 * _loc10_);
         _loc20_;
         _loc20_;
         _loc19_;
         _loc19_;
         _loc15_ = param4 + _loc14_ * _loc8_;
         _loc19_;
         _loc19_;
         _loc20_;
         _loc20_;
         _loc20_;
         _loc19_;
         _loc19_;
         _loc20_;
         _loc16_ = param5 + _loc14_ * _loc9_;
         _loc19_;
         _loc20_;
         _loc20_;
         _loc20_;
         _loc20_;
         _loc20_;
         _loc20_;
         _loc19_;
         _loc19_;
         _loc14_ = (-_loc11_ - Math.sqrt(_loc13_)) / (2 * _loc10_);
         _loc19_;
         _loc20_;
         _loc19_;
         _loc19_;
         _loc20_;
         _loc20_;
         _loc19_;
         _loc17_ = param4 + _loc14_ * _loc8_;
         _loc20_;
         _loc20_;
         _loc20_;
         _loc19_;
         _loc19_;
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
            _loc16_;
            _loc16_;
            _loc16_;
            _loc16_;
            _loc16_;
            if(!param1.test && this.planets[_loc3_].shieldHealth > 0 || (param1.test) && this.planets[_loc3_].testShieldHealth > 0)
            {
               _loc17_;
               _loc4_ = this.§_-YQ§(this.planets[_loc3_].x,this.planets[_loc3_].y,this.planets[_loc3_].radius + 50,param1.§_-gh§,param1.§_-uE§,param1.iX,param1.iY);
               _loc17_;
               _loc5_ = 0;
               while(_loc5_ <= 1)
               {
                  if(_loc4_.length > 0)
                  {
                     _loc6_ = false;
                     _loc16_;
                     _loc16_;
                     _loc17_;
                     if(this.planets[_loc3_].shieldShootOut)
                     {
                        _loc17_;
                        _loc17_;
                        _loc17_;
                        _loc16_;
                        _loc16_;
                        _loc17_;
                        _loc7_ = this.planets[_loc3_].x - param1.§_-gh§;
                        _loc16_;
                        _loc16_;
                        _loc16_;
                        _loc8_ = this.planets[_loc3_].y - param1.§_-uE§;
                        _loc17_;
                        _loc17_;
                        _loc17_;
                        _loc17_;
                        _loc17_;
                        _loc9_ = Math.sqrt(_loc7_ * _loc7_ + _loc8_ * _loc8_);
                        if((Math.sqrt(_loc7_ * _loc7_ + _loc8_ * _loc8_)) > this.planets[_loc3_].radius + 50)
                        {
                           _loc6_ = true;
                           _loc17_;
                           _loc17_;
                        }
                     }
                     else
                     {
                        _loc6_ = true;
                     }
                     _loc17_;
                     _loc17_;
                     if(_loc6_)
                     {
                        _loc17_;
                        _loc17_;
                        _loc10_ = this.§_-cl§(_loc4_[_loc5_].x);
                        _loc11_ = this.§_-cl§(_loc4_[_loc5_].y);
                        _loc17_;
                        _loc17_;
                        _loc16_;
                        _loc16_;
                        if(param1.§_-gh§ <= param1.iX)
                        {
                           _loc16_;
                           _loc16_;
                        }
                        if(param1.§_-gh§ > param1.iX)
                        {
                           _loc17_;
                           _loc17_;
                           _loc12_ = param1.iX;
                           _loc16_;
                           _loc16_;
                           _loc16_;
                           _loc13_ = param1.§_-gh§ > param1.iX?param1.§_-gh§:param1.iX;
                           _loc17_;
                           _loc17_;
                           _loc14_ = param1.§_-uE§ > param1.iY?param1.iY:param1.§_-uE§;
                           _loc17_;
                           _loc17_;
                           _loc17_;
                           _loc16_;
                           _loc16_;
                           if(param1.§_-uE§ > param1.iY)
                           {
                              _loc17_;
                           }
                           else
                           {
                              _loc16_;
                           }
                           if(param1.§_-uE§ > param1.iY)
                           {
                              _loc17_;
                              _loc17_;
                              _loc15_ = param1.§_-uE§;
                              _loc16_;
                              _loc16_;
                              _loc16_;
                              _loc16_;
                              _loc16_;
                              _loc16_;
                              _loc16_;
                              _loc16_;
                              _loc16_;
                              if(_loc10_ >= _loc12_ && _loc10_ <= _loc13_ && _loc11_ >= _loc14_ && _loc11_ <= _loc15_)
                              {
                                 _loc16_;
                                 _loc16_;
                                 if(!_loc2_)
                                 {
                                    _loc17_;
                                    _loc17_;
                                    _loc2_ = [];
                                 }
                                 _loc2_.push(new §_-Kw§(_loc10_,_loc11_,SafeGlobal.COLLTYPE_PLANETGATE,1));
                                 _loc2_[_loc2_.length - 1].planetGateID = _loc3_;
                              }
                              else if(!param1.test)
                              {
                                 _loc16_;
                              }
                              
                           }
                           else
                           {
                              _loc17_;
                              _loc17_;
                              _loc15_ = param1.iY;
                              _loc16_;
                              _loc16_;
                              _loc16_;
                              _loc16_;
                              _loc16_;
                              _loc16_;
                              _loc16_;
                              _loc16_;
                              _loc16_;
                              if(_loc10_ >= _loc12_ && _loc10_ <= _loc13_ && _loc11_ >= _loc14_ && _loc11_ <= _loc15_)
                              {
                                 _loc16_;
                                 _loc16_;
                                 if(!_loc2_)
                                 {
                                    _loc17_;
                                    _loc17_;
                                    _loc2_ = [];
                                 }
                                 _loc2_.push(new §_-Kw§(_loc10_,_loc11_,SafeGlobal.COLLTYPE_PLANETGATE,1));
                                 _loc2_[_loc2_.length - 1].planetGateID = _loc3_;
                              }
                              else if(!param1.test)
                              {
                                 _loc16_;
                              }
                              
                           }
                        }
                        else
                        {
                           _loc17_;
                           _loc17_;
                           _loc12_ = param1.§_-gh§;
                           _loc16_;
                           _loc16_;
                           _loc16_;
                           _loc13_ = param1.§_-gh§ > param1.iX?param1.§_-gh§:param1.iX;
                           _loc17_;
                           _loc17_;
                           _loc14_ = param1.§_-uE§ > param1.iY?param1.iY:param1.§_-uE§;
                           _loc17_;
                           _loc17_;
                           _loc17_;
                           _loc16_;
                           _loc16_;
                           if(param1.§_-uE§ > param1.iY)
                           {
                              _loc17_;
                           }
                           else
                           {
                              _loc16_;
                           }
                           if(param1.§_-uE§ > param1.iY)
                           {
                              _loc17_;
                              _loc17_;
                              _loc15_ = param1.§_-uE§;
                              _loc16_;
                              _loc16_;
                              _loc16_;
                              _loc16_;
                              _loc16_;
                              _loc16_;
                              _loc16_;
                              _loc16_;
                              _loc16_;
                              if(_loc10_ >= _loc12_ && _loc10_ <= _loc13_ && _loc11_ >= _loc14_ && _loc11_ <= _loc15_)
                              {
                                 _loc16_;
                                 _loc16_;
                                 if(!_loc2_)
                                 {
                                    _loc17_;
                                    _loc17_;
                                    _loc2_ = [];
                                 }
                                 _loc2_.push(new §_-Kw§(_loc10_,_loc11_,SafeGlobal.COLLTYPE_PLANETGATE,1));
                                 _loc2_[_loc2_.length - 1].planetGateID = _loc3_;
                              }
                              else if(!param1.test)
                              {
                                 _loc16_;
                              }
                              
                           }
                           else
                           {
                              _loc17_;
                              _loc17_;
                              _loc15_ = param1.iY;
                              _loc16_;
                              _loc16_;
                              _loc16_;
                              _loc16_;
                              _loc16_;
                              _loc16_;
                              _loc16_;
                              _loc16_;
                              _loc16_;
                              if(_loc10_ >= _loc12_ && _loc10_ <= _loc13_ && _loc11_ >= _loc14_ && _loc11_ <= _loc15_)
                              {
                                 _loc16_;
                                 _loc16_;
                                 if(!_loc2_)
                                 {
                                    _loc17_;
                                    _loc17_;
                                    _loc2_ = [];
                                 }
                                 _loc2_.push(new §_-Kw§(_loc10_,_loc11_,SafeGlobal.COLLTYPE_PLANETGATE,1));
                                 _loc2_[_loc2_.length - 1].planetGateID = _loc3_;
                              }
                              else if(!param1.test)
                              {
                                 _loc16_;
                              }
                              
                           }
                        }
                     }
                  }
                  _loc5_++;
               }
            }
            _loc3_++;
            _loc16_;
            _loc16_;
         }
         return _loc2_;
      }
      
      public function collisionProjectileProjectile(param1:Projectile) : *
      {
         var _loc13_:* = true;
         var _loc14_:* = false;
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
         _loc14_;
         _loc12_ = 0;
         while(_loc12_ < this.projectiles.length)
         {
            _loc11_ = this.projectiles[_loc12_];
            _loc13_;
            _loc13_;
            _loc14_;
            _loc14_;
            _loc14_;
            if(!(_loc11_ == param1) && !_loc11_.dead)
            {
               _loc13_;
               _loc14_;
               _loc14_;
               _loc13_;
               _loc14_;
               if((param1.unit) && (!_loc11_.unit && !_loc11_.mine) || (!param1.unit && !param1.mine) && (_loc11_.unit))
               {
                  _loc3_ = param1.iX - _loc11_.iX;
                  _loc14_;
                  _loc14_;
                  _loc13_;
                  _loc13_;
                  _loc4_ = param1.iY - _loc11_.iY;
                  _loc13_;
                  _loc5_ = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
                  if(_loc5_ < 15)
                  {
                     _loc14_;
                     if(param1.unit)
                     {
                        _loc13_;
                        _loc13_;
                        _loc7_ = param1.iX - _loc11_.§_-gh§;
                        _loc8_ = param1.iY - _loc11_.§_-uE§;
                        _loc14_;
                        _loc13_;
                        _loc6_ = this.§_-cl§(Math.atan2(_loc8_,_loc7_));
                        _loc14_;
                        _loc14_;
                        _loc14_;
                        _loc9_ = this.§_-cl§(param1.iX - 15 * Math.cos(_loc6_));
                        _loc14_;
                        _loc14_;
                        _loc10_ = this.§_-cl§(param1.iY - 15 * Math.sin(_loc6_));
                        _loc14_;
                     }
                     else
                     {
                        _loc13_;
                        _loc14_;
                        _loc14_;
                        _loc7_ = _loc11_.iX - param1.§_-gh§;
                        _loc8_ = _loc11_.iY - param1.§_-uE§;
                        _loc6_ = this.§_-cl§(Math.atan2(_loc8_,_loc7_));
                        _loc13_;
                        _loc14_;
                        _loc14_;
                        _loc9_ = this.§_-cl§(_loc11_.iX - 15 * Math.cos(_loc6_));
                        _loc10_ = this.§_-cl§(_loc11_.iY - 15 * Math.sin(_loc6_));
                     }
                     if(!_loc2_)
                     {
                        _loc2_ = [];
                     }
                     _loc2_.push(new §_-Kw§(_loc9_,_loc10_,SafeGlobal.§_-hb§,1));
                     _loc13_;
                     _loc13_;
                     if(param1.unit)
                     {
                        _loc2_[_loc2_.length - 1].projectileID = _loc12_;
                        _loc14_;
                        _loc14_;
                     }
                     else
                     {
                        _loc2_[_loc2_.length - 1].projectileID = this.projectiles.indexOf(param1);
                        _loc13_;
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
         var _loc12_:* = true;
         var _loc13_:* = false;
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
            _loc4_ = this.§_-YQ§(this.skyMines[_loc3_].x,this.skyMines[_loc3_].y,10,param1.§_-gh§,param1.§_-uE§,param1.iX,param1.iY);
            _loc13_;
            _loc13_;
            _loc12_;
            _loc12_;
            _loc5_ = 0;
            while(_loc5_ <= 1)
            {
               if(_loc4_.length > 0)
               {
                  _loc12_;
                  _loc12_;
                  _loc12_;
                  _loc12_;
                  _loc6_ = this.§_-cl§(_loc4_[_loc5_].x);
                  _loc13_;
                  _loc7_ = this.§_-cl§(_loc4_[_loc5_].y);
                  _loc13_;
                  _loc13_;
                  _loc12_;
                  if(param1.§_-gh§ <= param1.iX)
                  {
                     _loc13_;
                     _loc13_;
                     _loc13_;
                  }
                  if(param1.§_-gh§ > param1.iX)
                  {
                     _loc13_;
                     _loc8_ = param1.iX;
                     _loc13_;
                     _loc13_;
                     _loc9_ = param1.§_-gh§ > param1.iX?param1.§_-gh§:param1.iX;
                     _loc12_;
                     _loc13_;
                     if(param1.§_-uE§ > param1.iY)
                     {
                        _loc12_;
                        _loc12_;
                     }
                     if(param1.§_-uE§ > param1.iY)
                     {
                        _loc10_ = param1.iY;
                        _loc13_;
                        if(param1.§_-uE§ > param1.iY)
                        {
                           _loc12_;
                        }
                        if(param1.§_-uE§ > param1.iY)
                        {
                           _loc12_;
                           _loc11_ = param1.§_-uE§;
                           _loc12_;
                           _loc13_;
                           _loc13_;
                           _loc13_;
                           _loc13_;
                           _loc13_;
                           _loc12_;
                           if(_loc6_ >= _loc8_ && _loc6_ <= _loc9_ && _loc7_ >= _loc10_ && _loc7_ <= _loc11_)
                           {
                              if(!_loc2_)
                              {
                                 _loc2_ = [];
                              }
                              _loc2_.push(new §_-Kw§(_loc6_,_loc7_,SafeGlobal.§_-W-§,1));
                              _loc2_[_loc2_.length - 1].skyMineID = _loc3_;
                              _loc12_;
                              _loc12_;
                           }
                        }
                        else
                        {
                           _loc12_;
                           _loc11_ = param1.iY;
                           _loc12_;
                           _loc13_;
                           _loc13_;
                           _loc13_;
                           _loc13_;
                           _loc13_;
                           _loc12_;
                           if(_loc6_ >= _loc8_ && _loc6_ <= _loc9_ && _loc7_ >= _loc10_ && _loc7_ <= _loc11_)
                           {
                              if(!_loc2_)
                              {
                                 _loc2_ = [];
                              }
                              _loc2_.push(new §_-Kw§(_loc6_,_loc7_,SafeGlobal.§_-W-§,1));
                              _loc2_[_loc2_.length - 1].skyMineID = _loc3_;
                              _loc12_;
                              _loc12_;
                           }
                        }
                     }
                     else
                     {
                        _loc10_ = param1.§_-uE§;
                        _loc13_;
                        if(param1.§_-uE§ > param1.iY)
                        {
                           _loc12_;
                        }
                        if(param1.§_-uE§ > param1.iY)
                        {
                           _loc12_;
                           _loc11_ = param1.§_-uE§;
                           _loc12_;
                           _loc13_;
                           _loc13_;
                           _loc13_;
                           _loc13_;
                           _loc13_;
                           _loc12_;
                           if(_loc6_ >= _loc8_ && _loc6_ <= _loc9_ && _loc7_ >= _loc10_ && _loc7_ <= _loc11_)
                           {
                              if(!_loc2_)
                              {
                                 _loc2_ = [];
                              }
                              _loc2_.push(new §_-Kw§(_loc6_,_loc7_,SafeGlobal.§_-W-§,1));
                              _loc2_[_loc2_.length - 1].skyMineID = _loc3_;
                              _loc12_;
                              _loc12_;
                           }
                        }
                        else
                        {
                           _loc12_;
                           _loc11_ = param1.iY;
                           _loc12_;
                           _loc13_;
                           _loc13_;
                           _loc13_;
                           _loc13_;
                           _loc13_;
                           _loc12_;
                           if(_loc6_ >= _loc8_ && _loc6_ <= _loc9_ && _loc7_ >= _loc10_ && _loc7_ <= _loc11_)
                           {
                              if(!_loc2_)
                              {
                                 _loc2_ = [];
                              }
                              _loc2_.push(new §_-Kw§(_loc6_,_loc7_,SafeGlobal.§_-W-§,1));
                              _loc2_[_loc2_.length - 1].skyMineID = _loc3_;
                              _loc12_;
                              _loc12_;
                           }
                        }
                     }
                  }
                  else
                  {
                     _loc13_;
                     _loc8_ = param1.§_-gh§;
                     _loc13_;
                     _loc13_;
                     _loc9_ = param1.§_-gh§ > param1.iX?param1.§_-gh§:param1.iX;
                     _loc12_;
                     _loc13_;
                     if(param1.§_-uE§ > param1.iY)
                     {
                        _loc12_;
                        _loc12_;
                     }
                     if(param1.§_-uE§ > param1.iY)
                     {
                        _loc10_ = param1.iY;
                        _loc13_;
                        if(param1.§_-uE§ > param1.iY)
                        {
                           _loc12_;
                        }
                        if(param1.§_-uE§ > param1.iY)
                        {
                           _loc12_;
                           _loc11_ = param1.§_-uE§;
                           _loc12_;
                           _loc13_;
                           _loc13_;
                           _loc13_;
                           _loc13_;
                           _loc13_;
                           _loc12_;
                           if(_loc6_ >= _loc8_ && _loc6_ <= _loc9_ && _loc7_ >= _loc10_ && _loc7_ <= _loc11_)
                           {
                              if(!_loc2_)
                              {
                                 _loc2_ = [];
                              }
                              _loc2_.push(new §_-Kw§(_loc6_,_loc7_,SafeGlobal.§_-W-§,1));
                              _loc2_[_loc2_.length - 1].skyMineID = _loc3_;
                              _loc12_;
                              _loc12_;
                           }
                        }
                        else
                        {
                           _loc12_;
                           _loc11_ = param1.iY;
                           _loc12_;
                           _loc13_;
                           _loc13_;
                           _loc13_;
                           _loc13_;
                           _loc13_;
                           _loc12_;
                           if(_loc6_ >= _loc8_ && _loc6_ <= _loc9_ && _loc7_ >= _loc10_ && _loc7_ <= _loc11_)
                           {
                              if(!_loc2_)
                              {
                                 _loc2_ = [];
                              }
                              _loc2_.push(new §_-Kw§(_loc6_,_loc7_,SafeGlobal.§_-W-§,1));
                              _loc2_[_loc2_.length - 1].skyMineID = _loc3_;
                              _loc12_;
                              _loc12_;
                           }
                        }
                     }
                     else
                     {
                        _loc10_ = param1.§_-uE§;
                        _loc13_;
                        if(param1.§_-uE§ > param1.iY)
                        {
                           _loc12_;
                        }
                        if(param1.§_-uE§ > param1.iY)
                        {
                           _loc12_;
                           _loc11_ = param1.§_-uE§;
                           _loc12_;
                           _loc13_;
                           _loc13_;
                           _loc13_;
                           _loc13_;
                           _loc13_;
                           _loc12_;
                           if(_loc6_ >= _loc8_ && _loc6_ <= _loc9_ && _loc7_ >= _loc10_ && _loc7_ <= _loc11_)
                           {
                              if(!_loc2_)
                              {
                                 _loc2_ = [];
                              }
                              _loc2_.push(new §_-Kw§(_loc6_,_loc7_,SafeGlobal.§_-W-§,1));
                              _loc2_[_loc2_.length - 1].skyMineID = _loc3_;
                              _loc12_;
                              _loc12_;
                           }
                        }
                        else
                        {
                           _loc12_;
                           _loc11_ = param1.iY;
                           _loc12_;
                           _loc13_;
                           _loc13_;
                           _loc13_;
                           _loc13_;
                           _loc13_;
                           _loc12_;
                           if(_loc6_ >= _loc8_ && _loc6_ <= _loc9_ && _loc7_ >= _loc10_ && _loc7_ <= _loc11_)
                           {
                              if(!_loc2_)
                              {
                                 _loc2_ = [];
                              }
                              _loc2_.push(new §_-Kw§(_loc6_,_loc7_,SafeGlobal.§_-W-§,1));
                              _loc2_[_loc2_.length - 1].skyMineID = _loc3_;
                              _loc12_;
                              _loc12_;
                           }
                        }
                     }
                  }
               }
               _loc5_++;
               _loc12_;
            }
            _loc13_;
            _loc13_;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function collisionProjectileGate(param1:Projectile) : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:§_-pM§ = null;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         _loc6_;
         _loc4_ = 0;
         while(_loc4_ < this.gates.length)
         {
            this.tempGateCollPoint1.x = param1.iX;
            _loc6_;
            this.tempGateCollPoint1.y = param1.iY;
            _loc6_;
            this.tempGateCollPoint2.x = param1.§_-gh§;
            _loc5_;
            _loc5_;
            this.tempGateCollPoint2.y = param1.§_-uE§;
            _loc6_;
            _loc6_;
            _loc2_ = this.§_-Ow§(this.gates[_loc4_].pointA,this.gates[_loc4_].pointB,this.tempGateCollPoint1,this.tempGateCollPoint2);
            _loc5_;
            if(_loc2_)
            {
               _loc5_;
               if(!_loc3_)
               {
                  _loc5_;
                  _loc5_;
                  _loc3_ = [];
               }
               _loc3_.push(new §_-Kw§(_loc2_.x,_loc2_.y,SafeGlobal.COLLTYPE_GATE,1,_loc2_.angle));
               _loc6_;
               _loc6_;
               _loc3_[_loc3_.length - 1].gateID = _loc4_;
               _loc5_;
               _loc5_;
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function transportProjectile(param1:Projectile, param2:Point, param3:Wormhole, param4:int) : *
      {
         var _loc17_:* = true;
         var _loc18_:* = false;
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
         _loc5_ = param2.x - param3.pointA.x;
         _loc18_;
         _loc6_ = param2.y - param3.pointA.y;
         _loc18_;
         _loc18_;
         _loc7_ = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         _loc17_;
         if(!param1.test)
         {
            this.addEffect(SafeGlobal.EFFECTS_WORMHOLEFLASH,param2.x,param2.y,param3.rotation);
            _loc17_;
            _loc17_;
         }
         _loc8_ = Math.atan2(param1.iY - param1.§_-uE§,param1.iX - param1.§_-gh§);
         _loc9_ = _loc8_ - param3.angle;
         _loc17_;
         _loc10_ = param3.pair.angle + _loc9_;
         _loc11_ = this.§_-cl§(Math.sqrt(param1.momX * param1.momX + param1.momY * param1.momY));
         param1.momX = this.§_-cl§(Math.cos(_loc10_) * _loc11_);
         param1.momY = this.§_-cl§(Math.sin(_loc10_) * _loc11_);
         _loc12_ = new Point(0,0);
         _loc12_.x = param3.pair.pointA.x - _loc7_ * Math.cos(param3.pair.angle);
         _loc17_;
         _loc17_;
         _loc12_.y = param3.pair.pointA.y - _loc7_ * Math.sin(param3.pair.angle);
         _loc17_;
         _loc17_;
         _loc18_;
         _loc18_;
         _loc15_ = param3.angle - _loc8_;
         while(true)
         {
            _loc17_;
            _loc17_;
            _loc18_;
            _loc18_;
            if(_loc15_ > this.PI * -1)
            {
               break;
            }
            _loc17_;
            _loc17_;
            _loc17_;
            _loc15_ = _loc15_ + this.PI * 2;
            _loc18_;
            _loc18_;
         }
         while(_loc15_ > this.PI)
         {
            _loc18_;
            _loc18_;
            _loc18_;
            _loc18_;
            _loc18_;
            _loc18_;
            _loc18_;
            _loc15_ = _loc15_ - this.PI * 2;
         }
         _loc18_;
         _loc17_;
         _loc17_;
         if(_loc15_ >= 0)
         {
            _loc13_ = _loc12_.x + Math.cos(param3.pair.angle - this.PI / 2);
            _loc14_ = _loc12_.y + Math.sin(param3.pair.angle - this.PI / 2);
         }
         else
         {
            _loc13_ = _loc12_.x + Math.cos(param3.pair.angle + this.PI / 2);
            _loc14_ = _loc12_.y + Math.sin(param3.pair.angle + this.PI / 2);
            _loc18_;
         }
         param1.iX = param1.§_-gh§ = this.§_-cl§(_loc13_);
         param1.iY = param1.§_-uE§ = this.§_-cl§(_loc14_);
         param1.x = param1.iX;
         _loc17_;
         param1.y = param1.iY;
         _loc18_;
         param1.§_-qy§();
         _loc17_;
         _loc17_;
         if(!param1.test)
         {
            _loc17_;
            _loc17_;
            this.addEffect(SafeGlobal.EFFECTS_WORMHOLEFLASH,_loc12_.x,_loc12_.y,param3.pair.rotation);
         }
      }
      
      public function reflectProjectile(param1:Projectile, param2:Point, param3:Number, param4:Number, param5:Boolean) : *
      {
         var _loc15_:* = false;
         var _loc16_:* = true;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         _loc16_;
         var param3:Number = this.§_-cl§(param3);
         _loc15_;
         _loc15_;
         _loc15_;
         _loc15_;
         _loc16_;
         _loc16_;
         _loc16_;
         _loc15_;
         _loc15_;
         _loc6_ = param3 - this.PI / 2;
         _loc15_;
         _loc7_ = Math.atan2(param1.iY - param1.§_-uE§,param1.iX - param1.§_-gh§);
         _loc15_;
         _loc15_;
         _loc16_;
         _loc16_;
         _loc8_ = _loc6_ - _loc7_;
         _loc15_;
         _loc15_;
         _loc16_;
         _loc16_;
         _loc15_;
         _loc16_;
         _loc9_ = this.§_-cl§(_loc6_ + _loc8_ + this.PI);
         _loc10_ = param2.x;
         _loc11_ = param2.y;
         _loc16_;
         _loc12_ = param3 - _loc7_;
         while(true)
         {
            _loc16_;
            _loc16_;
            _loc15_;
            if(_loc12_ > this.PI * -1)
            {
               break;
            }
            _loc16_;
            _loc16_;
            _loc12_ = _loc12_ + this.PI * 2;
         }
         while(_loc12_ > this.PI)
         {
            _loc15_;
            _loc15_;
            _loc12_ = _loc12_ - this.PI * 2;
         }
         _loc16_;
         _loc16_;
         _loc16_;
         if(_loc12_ >= 0)
         {
            _loc15_;
            _loc16_;
            _loc16_;
            if(!param1.test)
            {
               _loc15_;
            }
            _loc15_;
            _loc15_;
            if(param5)
            {
               param1.iX = param1.§_-gh§ = this.§_-cl§(_loc10_ + Math.cos(param3 + this.PI / 2));
               param1.iY = param1.§_-uE§ = this.§_-cl§(_loc11_ + Math.sin(param3 + this.PI / 2));
               _loc15_;
               _loc15_;
            }
            else
            {
               _loc15_;
               param1.iX = param1.§_-gh§ = this.§_-cl§(_loc10_ + param1.radius * Math.cos(param3 + this.PI / 2));
               _loc15_;
               _loc15_;
               param1.iY = param1.§_-uE§ = this.§_-cl§(_loc11_ + param1.radius * Math.sin(param3 + this.PI / 2));
               _loc15_;
            }
         }
         else
         {
            _loc16_;
            _loc16_;
            if(!param1.test)
            {
               _loc15_;
            }
            _loc16_;
            _loc16_;
            if(param5)
            {
               _loc16_;
               _loc16_;
               param1.iX = param1.§_-gh§ = this.§_-cl§(_loc10_ + Math.cos(param3 - this.PI / 2));
               _loc15_;
               param1.iY = param1.§_-uE§ = this.§_-cl§(_loc11_ + Math.sin(param3 - this.PI / 2));
               _loc16_;
               _loc16_;
            }
            else
            {
               _loc15_;
               param1.iX = param1.§_-gh§ = this.§_-cl§(_loc10_ + param1.radius * Math.cos(param3 - this.PI / 2));
               _loc15_;
               _loc15_;
               param1.iY = param1.§_-uE§ = this.§_-cl§(_loc11_ + param1.radius * Math.sin(param3 - this.PI / 2));
            }
         }
         param1.x = param1.iX;
         _loc15_;
         _loc15_;
         param1.y = param1.iY;
         param1.ignoreUnit = -1;
         _loc13_ = this.§_-cl§(Math.sqrt(param1.momX * param1.momX + param1.momY * param1.momY));
         _loc16_;
         _loc16_;
         param1.momX = this.§_-cl§(Math.cos(_loc9_) * _loc13_ * param4);
         _loc16_;
         _loc15_;
         _loc15_;
         param1.momY = this.§_-cl§(Math.sin(_loc9_) * _loc13_ * param4);
         _loc15_;
         _loc15_;
         if(!param1.test)
         {
            if(!param5)
            {
               _loc15_;
               _loc16_;
               _loc16_;
               SoundManager.§_-Oc§(SafeGlobal.FX_BALL_BOUNCE,(this.simOnly) || (this.costumeCacheOnly));
            }
            else
            {
               _loc16_;
               _loc16_;
               _loc16_;
               _loc16_;
               _loc16_;
               _loc16_;
               SoundManager.§_-Oc§(SafeGlobal.FX_SHIELD_BOUNCE,(this.simOnly) || (this.costumeCacheOnly));
            }
         }
      }
      
      public function dissolveProjectile(param1:Projectile) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         if(!param1.test)
         {
            _loc2_;
            _loc2_;
            this.simManager.removeObject(param1);
            _loc2_;
            if(param1.unit)
            {
               this.removeUnit(param1.unit);
               _loc3_;
               _loc3_;
               this.updateTeamHealths();
               _loc3_;
            }
            if(param1.mine)
            {
               this.simManager.removeObject(param1.mine);
               this.removeMine(param1.mine);
               _loc3_;
               param1.mine = null;
               _loc2_;
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
         _loc16_;
         _loc16_;
         if(!param2 && !param3)
         {
            _loc16_;
            _loc16_;
            this.point1A.x = param1.iX;
            this.point1A.y = param1.iY;
            _loc16_;
            this.point1B.x = param1.§_-gh§;
            this.point1B.y = param1.§_-uE§;
            _loc15_;
            _loc15_;
         }
         else
         {
            this.point1A.x = param2.x;
            this.point1A.y = param2.y;
            this.point1B.x = param3.x;
            this.point1B.y = param3.y;
            _loc16_;
            _loc16_;
         }
         _loc11_ = 0;
         while(_loc11_ < this.planets.length)
         {
            _loc4_ = this.planets[_loc11_].findIntersects(this.point1A,this.point1B);
            if(_loc4_.length > 0)
            {
               if(!_loc10_)
               {
                  _loc10_ = [];
               }
               _loc15_;
               _loc15_;
               _loc12_ = 0;
               while(_loc12_ < _loc4_.length)
               {
                  _loc15_;
                  _loc13_ = _loc4_[_loc12_][0].x;
                  _loc14_ = _loc4_[_loc12_][0].y;
                  _loc15_;
                  _loc15_;
                  _loc10_.push(new §_-Kw§(_loc13_,_loc14_,SafeGlobal.COLLTYPE_PLANET,1));
                  _loc10_[_loc10_.length - 1].planetID = _loc11_;
                  _loc10_[_loc10_.length - 1].shapeID = _loc4_[_loc12_][2];
                  _loc10_[_loc10_.length - 1].curveID = _loc4_[_loc12_][1];
                  _loc12_++;
               }
            }
            _loc11_++;
         }
         _loc15_;
         _loc15_;
         if(_loc10_)
         {
            _loc16_;
            return _loc10_;
         }
         return null;
      }
      
      public function §_-iA§(param1:MouseEvent) : *
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:Point = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         _loc2_ = this.units[this.currentUnit].startPoint();
         _loc6_;
         this.§_-M-§.x = 0;
         _loc7_;
         _loc7_;
         this.§_-M-§.y = 0;
         _loc6_;
         _loc7_;
         _loc3_ = _loc2_.x - this.screen.mouseX;
         _loc7_;
         _loc7_;
         _loc6_;
         _loc4_ = _loc2_.y - this.screen.mouseY;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc5_ = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
         _loc7_;
         _loc7_;
         _loc6_;
         _loc6_;
         if((_loc5_ < 30 || this.§_-qH§[1] == SafeGlobal.WEAPONTYPE_GATE) && (this.myTurn) && this.units[this.currentUnit].walkDir == 0)
         {
            this.§_-PE§();
            _loc6_;
            if(this.turnState == "shoot")
            {
               if(this.currentWeapon == -1)
               {
                  this.dragging = true;
                  stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
                  stage.addEventListener(MouseEvent.MOUSE_UP,this.§_-eG§);
                  this.§_-g5§();
                  this.§_-yD§ = this.units[this.currentUnit].startPoint();
                  _loc6_;
                  _loc6_;
               }
               else if(this.§_-qH§[1] == SafeGlobal.WEAPONTYPE_PROJECTILE)
               {
                  _loc7_;
                  _loc7_;
                  this.units[this.currentUnit].scaleX = -1;
                  _loc7_;
                  this.units[this.currentUnit].healthDisplay.scaleX = -1;
                  _loc7_;
                  _loc7_;
                  _loc6_;
                  this.units[this.currentUnit].nameDisplay.scaleX = -1;
                  _loc7_;
                  this.dragging = true;
                  _loc6_;
                  _loc6_;
                  this.§_-OZ§ = SafeGlobal.CLEANUP_PROJECTILE;
                  _loc7_;
                  _loc7_;
                  this.§_-yD§ = this.units[this.currentUnit].startPoint();
                  _loc7_;
                  _loc7_;
                  if(this.§_-2M§)
                  {
                     this.§_-Pn§();
                  }
                  _loc6_;
                  _loc6_;
                  if(this.§_-qH§[0] != SafeGlobal.WEAPONINFO_GRAVITEEBALL[0])
                  {
                     this.§_-2M§ = this.§_-yt§(this.§_-qH§);
                  }
                  this.§_-D0§.§_-un§ = this.§_-un§;
                  _loc6_;
                  this.§_-un§ = 0;
                  stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
                  stage.addEventListener(MouseEvent.MOUSE_UP,this.§_-G9§);
                  this.§_-g5§();
                  _loc6_;
               }
               else
               {
                  _loc7_;
                  _loc6_;
                  _loc6_;
                  if(this.§_-qH§[1] == SafeGlobal.WEAPONTYPE_MINE)
                  {
                     this.dragging = true;
                     this.§_-yD§ = this.units[this.currentUnit].startPoint();
                     this.§_-OZ§ = SafeGlobal.CLEANUP_MINE;
                     _loc6_;
                     if(this.§_-qH§[0] == SafeGlobal.WEAPONINFO_MINE[0])
                     {
                        _loc7_;
                        this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYSTANDARDMINE]);
                        _loc6_;
                     }
                     else
                     {
                        _loc7_;
                        _loc7_;
                        if(this.§_-qH§[0] == SafeGlobal.WEAPONINFO_CLUSTERMINE[0])
                        {
                           _loc7_;
                           _loc7_;
                           _loc6_;
                           _loc6_;
                           _loc6_;
                           this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYCLUSTERMINE]);
                        }
                        else
                        {
                           _loc6_;
                           _loc6_;
                           if(this.§_-qH§[0] == SafeGlobal.WEAPONINFO_DRILLMINE[0])
                           {
                              _loc7_;
                              this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYDRILLMINE]);
                           }
                           else
                           {
                              _loc7_;
                              _loc7_;
                              if(this.§_-qH§[0] == SafeGlobal.WEAPONINFO_ROVER[0])
                              {
                                 this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYROVER]);
                              }
                              else
                              {
                                 _loc7_;
                                 _loc7_;
                                 if(this.§_-qH§[0] == SafeGlobal.WEAPONINFO_SUPERROVER[0])
                                 {
                                    _loc7_;
                                    _loc7_;
                                    _loc6_;
                                    this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYSUPERROVER]);
                                 }
                                 else if(this.§_-qH§[0] == SafeGlobal.§_-cP§[0])
                                 {
                                    _loc6_;
                                    _loc6_;
                                    _loc7_;
                                    this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_LAYMAGNETICROVER]);
                                 }
                                 
                              }
                           }
                        }
                     }
                     stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
                     stage.addEventListener(MouseEvent.MOUSE_UP,this.§_-W0§);
                     this.§_-g5§();
                  }
                  else
                  {
                     _loc6_;
                     if(this.§_-qH§[1] == SafeGlobal.WEAPONTYPE_GATE)
                     {
                        this.dragging = true;
                        this.§_-yD§ = new Point(this.screen.mouseX,this.screen.mouseY);
                        this.§_-OZ§ = SafeGlobal.CLEANUP_GATE;
                        _loc7_;
                        this.addGate(this.§_-yD§.x,this.§_-yD§.y,0,this.§_-qH§[2]);
                        this.gates[this.gates.length - 1].placing = true;
                        _loc6_;
                        _loc6_;
                        this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_TABLET]);
                        stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
                        _loc7_;
                        _loc7_;
                        stage.addEventListener(MouseEvent.MOUSE_UP,this.§_-HE§);
                        this.§_-g5§();
                     }
                     else
                     {
                        _loc6_;
                        _loc6_;
                        _loc6_;
                        if(this.§_-qH§[1] == SafeGlobal.WEAPONTYPE_PLANETGATE)
                        {
                           this.§_-yD§ = this.units[this.currentUnit].startPoint();
                           _loc7_;
                           _loc7_;
                           this.dragging = true;
                           _loc7_;
                           _loc6_;
                           this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_TABLET]);
                           this.§_-OZ§ = SafeGlobal.CLEANUP_PLANETGATE;
                           stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
                           stage.addEventListener(MouseEvent.MOUSE_UP,this.§_-2B§);
                           this.§_-g5§();
                        }
                        else
                        {
                           _loc6_;
                           if(this.§_-qH§[1] == SafeGlobal.WEAPONTYPE_TELEPORT)
                           {
                              _loc6_;
                              this.§_-yD§ = this.units[this.currentUnit].startPoint();
                              stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
                              stage.addEventListener(MouseEvent.MOUSE_UP,this.§_-2I§);
                              _loc6_;
                              _loc6_;
                              this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_TABLET]);
                              this.§_-OZ§ = SafeGlobal.CLEANUP_TELEPORT;
                              _loc6_;
                              this.§_-g5§();
                              _loc6_;
                              this.dragging = true;
                              _loc6_;
                           }
                           else if(this.§_-qH§[1] == SafeGlobal.WEAPONTYPE_INCOMING)
                           {
                              _loc6_;
                              this.§_-OZ§ = SafeGlobal.CLEANUP_INCOMING;
                              _loc6_;
                              stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
                              _loc7_;
                              _loc7_;
                              stage.addEventListener(MouseEvent.MOUSE_UP,this.incomingDragStop);
                              this.screen.addChild(this.§_-na§);
                              _loc7_;
                              this.camera.addTarget(this.§_-na§,-1,"incoming");
                              this.camera.removeTarget(this.units[this.currentUnit]);
                              _loc7_;
                              _loc7_;
                              _loc7_;
                              _loc7_;
                              this.§_-7X§.active = false;
                              _loc7_;
                              _loc7_;
                              this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_TABLET]);
                              _loc6_;
                              this.dragging = true;
                              _loc6_;
                              _loc6_;
                              this.§_-g5§();
                           }
                           else if(this.§_-qH§[1] == SafeGlobal.WEAPONTYPE_MELEE)
                           {
                              _loc7_;
                              _loc7_;
                              this.§_-OZ§ = SafeGlobal.CLEANUP_MELEE;
                              _loc7_;
                              _loc7_;
                              this.§_-yD§ = this.units[this.currentUnit].startPoint();
                              stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
                              stage.addEventListener(MouseEvent.MOUSE_UP,this.§_-eZ§);
                              if(this.§_-qH§[0] == SafeGlobal.WEAPONINFO_SPACEBALLBAT[0])
                              {
                                 _loc7_;
                                 this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_SPACEBALLSWINGSETUP,SafeGlobal.ANIM_UNIT_SPACEBALLSWINGHOLD]);
                              }
                              else
                              {
                                 _loc6_;
                                 if(this.§_-qH§[0] == SafeGlobal.WEAPONINFO_FIREPUNCH[0])
                                 {
                                    _loc7_;
                                    this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_UPPERCUTSETUP,SafeGlobal.ANIM_UNIT_UPPERCUTHOLD]);
                                    _loc6_;
                                 }
                                 else if(this.§_-qH§[0] == SafeGlobal.WEAPONINFO_TAZER[0])
                                 {
                                    _loc6_;
                                    _loc6_;
                                    _loc6_;
                                    this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_TAZERJABSETUP,SafeGlobal.ANIM_UNIT_TAZERJABHOLD]);
                                 }
                                 else
                                 {
                                    _loc6_;
                                    if(this.§_-qH§[0] == SafeGlobal.§_-OV§[0])
                                    {
                                       this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_ENERGYSWORDSETUP,SafeGlobal.ANIM_UNIT_ENERGYSWORDHOLD]);
                                       _loc7_;
                                    }
                                 }
                                 
                              }
                              this.dragging = true;
                              this.§_-g5§();
                              _loc7_;
                              _loc7_;
                           }
                           
                           
                        }
                     }
                  }
               }
               
            }
         }
         else
         {
            this.§_-QI§ = true;
            _loc7_;
            _loc7_;
            this.§_-yD§ = new Point(mouseX,mouseY);
            this.§_-Wz§ = new Point(this.screen.x * -1,this.screen.y * -1);
            _loc7_;
            this.§_-7X§.x = this.§_-Wz§.x + 400;
            _loc6_;
            _loc6_;
            this.§_-7X§.y = this.§_-Wz§.y + 300;
            _loc7_;
            this.§_-7X§.active = true;
            stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
            stage.addEventListener(MouseEvent.MOUSE_UP,this.§_-Gt§);
         }
      }
      
      public function addGate(param1:int, param2:int, param3:int, param4:int) : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         if(param4 == SafeGlobal.GATETYPE_SHIELD)
         {
            _loc6_;
            _loc6_;
            this.gates.push(new §_-st§(param1,param2,param3));
            _loc6_;
            _loc5_;
            this.gates[this.gates.length - 1].animStep = Math.floor(Math.random() * 13);
            _loc5_;
            _loc5_;
            _loc6_;
            _loc5_;
            _loc5_;
            _loc6_;
            this.gates[this.gates.length - 1].init(this.§_-WL§[param4]);
            _loc5_;
            _loc5_;
            _loc6_;
            this.gates[this.gates.length - 1].gfx.visible = false;
            _loc5_;
            _loc5_;
         }
         else
         {
            _loc6_;
            _loc6_;
            if(param4 == SafeGlobal.GATETYPE_DISSOLVESHIELD)
            {
               this.gates.push(new §_-3x§(param1,param2,param3));
               this.gates[this.gates.length - 1].init(this.§_-WL§[param4]);
            }
            else if(param4 == SafeGlobal.GATETYPE_WORMHOLE)
            {
               this.gates.push(new Wormhole(param1,param2,param3));
            }
            
         }
         this.§_-nU§ = 1;
         _loc5_;
         this.§_-Fp§.addChild(this.gates[this.gates.length - 1]);
      }
      
      public function addMine(param1:int, param2:int, param3:int) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         if(param3 == SafeGlobal.MINETYPE_STANDARD)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            this.§_-KM§.push(new §_-Iz§(param1,param2));
         }
         else
         {
            _loc5_;
            _loc4_;
            if(param3 == SafeGlobal.MINETYPE_DRILL)
            {
               _loc5_;
               this.§_-KM§.push(new §_-xA§(param1,param2));
            }
            else
            {
               _loc5_;
               _loc5_;
               _loc5_;
               if(param3 == SafeGlobal.MINETYPE_CLUSTER)
               {
                  this.§_-KM§.push(new §_-NI§(param1,param2));
                  _loc4_;
               }
               else
               {
                  _loc5_;
                  _loc5_;
                  if(param3 == SafeGlobal.MINETYPE_ROVER)
                  {
                     _loc4_;
                     _loc4_;
                     this.§_-KM§.push(new Rover(param1,param2));
                  }
                  else
                  {
                     _loc5_;
                     _loc5_;
                     _loc5_;
                     _loc5_;
                     if(param3 == SafeGlobal.MINETYPE_SUPERROVER)
                     {
                        this.§_-KM§.push(new §_-vZ§(param1,param2));
                     }
                     else if(param3 == SafeGlobal.§_-ee§)
                     {
                        this.§_-KM§.push(new §_-FW§(param1,param2));
                        _loc5_;
                        _loc5_;
                     }
                     
                  }
               }
            }
         }
         _loc5_;
         _loc5_;
         _loc5_;
         if(!this.simOnly && !this.costumeCacheOnly)
         {
            _loc4_;
            _loc4_;
            this.§_-wd§.addChild(this.§_-KM§[this.§_-KM§.length - 1]);
            this.§_-KM§[this.§_-KM§.length - 1].init(this.§_-HT§[param3]);
         }
      }
      
      public function addBarrel(param1:int, param2:int) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc4_;
         this.barrels.push(new Barrel(param1,param2));
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         this.barrels[this.barrels.length - 1].updatePoints();
         _loc3_;
         _loc3_;
         _loc3_;
         if(!this.simOnly && !this.costumeCacheOnly)
         {
            this.§_-Ib§.addChild(this.barrels[this.barrels.length - 1]);
            _loc4_;
            _loc4_;
            this.barrels[this.barrels.length - 1].init(this.§_-9N§[0],true);
         }
      }
      
      public function addSkyMine(param1:Number, param2:Number) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         _loc3_;
         this.skyMines.push(new §_-3e§(param1,param2));
         _loc4_;
         _loc4_;
         _loc3_;
         _loc4_;
         _loc4_;
         if(!this.simOnly && !this.costumeCacheOnly)
         {
            _loc4_;
            _loc4_;
            this.§_-wd§.addChild(this.skyMines[this.skyMines.length - 1]);
            _loc3_;
            _loc3_;
            this.skyMines[this.skyMines.length - 1].init(this.§_-wC§);
         }
      }
      
      public function §_-BU§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.chat.§_-fx§();
      }
      
      public function §_-ls§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.chat.§_-9C§();
      }
      
      public function §_-nb§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         if(!this.§_-i-§)
         {
            _loc1_;
            _loc1_;
            this.§_-Tl§ = true;
            _loc2_;
            this.chat.§_-4e§();
         }
      }
      
      public function §_-eX§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-Tl§ = false;
         _loc1_;
         _loc1_;
         this.chat.§_-cJ§();
      }
      
      public function §_-yt§(param1:Array) : *
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
         _loc20_;
         _loc20_;
         _loc3_ = param1[0];
         _loc4_ = param1[5];
         _loc5_ = new ColorTransform();
         _loc5_.color = SafeGlobal.colour_hex[this.teams[this.units[this.currentUnit].team].colourID];
         _loc6_ = new Sprite();
         var _loc12_:* = false;
         _loc21_;
         _loc20_;
         _loc21_;
         _loc21_;
         _loc21_;
         _loc21_;
         _loc21_;
         if(_loc3_ == SafeGlobal.WEAPONINFO_CUSTOM[0] || _loc3_ == SafeGlobal.WEAPONINFO_CUSTOM2[0] || _loc3_ == SafeGlobal.WEAPONINFO_CUSTOM3[0])
         {
            _loc20_;
            _loc20_;
            _loc12_ = true;
            _loc21_;
            _loc21_;
            _loc21_;
            _loc21_;
            if(_loc3_ == SafeGlobal.WEAPONINFO_CUSTOM[0])
            {
               _loc20_;
               _loc21_;
               _loc21_;
               _loc21_;
               _loc20_;
               _loc21_;
               _loc21_;
               _loc11_ = this.teams[this.units[this.currentUnit].team].customWeaponStrings[0];
            }
            else
            {
               _loc21_;
               _loc21_;
               _loc21_;
               _loc21_;
               if(_loc3_ == SafeGlobal.WEAPONINFO_CUSTOM2[0])
               {
                  _loc20_;
                  _loc20_;
                  _loc21_;
                  _loc21_;
                  _loc20_;
                  _loc20_;
                  _loc21_;
                  _loc11_ = this.teams[this.units[this.currentUnit].team].customWeaponStrings[1];
               }
               else if(_loc3_ == SafeGlobal.WEAPONINFO_CUSTOM3[0])
               {
                  _loc20_;
                  _loc20_;
                  _loc11_ = this.teams[this.units[this.currentUnit].team].customWeaponStrings[2];
               }
               
            }
            _loc13_ = _loc11_.split("/");
            _loc20_;
            _loc14_ = _loc13_[0];
            _loc16_ = _loc14_.split(";");
            _loc21_;
            _loc17_ = 0;
            while(_loc17_ < _loc16_.length)
            {
               _loc15_ = _loc16_[_loc17_].split(",");
               if(_loc15_[0] == "g")
               {
                  _loc21_;
                  _loc21_;
                  _loc10_ = int(_loc15_[2]);
                  _loc20_;
                  _loc20_;
               }
               else if(_loc15_[0] == "p")
               {
                  _loc20_;
                  this.§_-un§ = int(_loc15_[1]);
                  _loc20_;
               }
               
               _loc17_++;
            }
            _loc7_ = this.§_-Us§[_loc10_];
         }
         else
         {
            _loc18_ = getDefinitionByName("WeaponGFX" + _loc3_) as Class;
            _loc7_ = new _loc18_() as Sprite;
            _loc19_ = SafeGlobal.§_-AT§(_loc3_);
            _loc21_;
            _loc21_;
            _loc11_ = _loc19_[4];
            _loc13_ = _loc11_.split("/");
            _loc20_;
            _loc14_ = _loc13_[0];
            _loc16_ = _loc14_.split(";");
            _loc20_;
            _loc20_;
            _loc21_;
            _loc17_ = 0;
            _loc20_;
            _loc20_;
            while(_loc17_ < _loc16_.length)
            {
               _loc15_ = _loc16_[_loc17_].split(",");
               if(_loc15_[0] == "p")
               {
                  _loc20_;
                  this.§_-un§ = int(_loc15_[1]);
                  _loc20_;
               }
               _loc17_++;
            }
         }
         _loc20_;
         if(!(_loc2_ == SafeGlobal.AIMTYPE_MELEE) && !(_loc2_ == SafeGlobal.AIMTYPE_FEET) && !(param1[0] == SafeGlobal.WEAPONINFO_JETPACK[0]))
         {
            _loc20_;
            _loc20_;
            _loc7_.x = _loc4_[1];
            _loc7_.y = _loc4_[2];
            _loc21_;
            _loc6_.addChild(_loc7_);
            if(_loc4_[3] != "x")
            {
               _loc8_ = new HandClip1();
               _loc8_.x = _loc4_[3];
               _loc21_;
               _loc8_.y = _loc4_[4];
               _loc20_;
               _loc8_.inside.transform.colorTransform = _loc5_;
               _loc20_;
               _loc20_;
               _loc6_.addChild(_loc8_);
               _loc9_ = new HandClip1();
               _loc9_.x = _loc4_[5];
               _loc21_;
               _loc21_;
               _loc9_.y = _loc4_[6];
               _loc20_;
               _loc20_;
               _loc9_.inside.transform.colorTransform = _loc5_;
               _loc20_;
               _loc6_.addChild(_loc9_);
            }
            _loc6_.x = this.units[this.currentUnit].x + Math.cos(this.units[this.currentUnit].iR - this.PI / 2) * _loc2_[1];
            _loc6_.y = this.units[this.currentUnit].y + Math.sin(this.units[this.currentUnit].iR - this.PI / 2) * _loc2_[1];
            _loc20_;
            _loc20_;
            _loc6_.rotation = this.units[this.currentUnit].iR * 180 / this.PI;
            _loc6_.scaleX = this.units[this.currentUnit].scaleX;
         }
         return _loc6_;
      }
      
      public function §_-Pn§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         while(this.§_-2M§.numChildren > 0)
         {
            this.§_-2M§.removeChildAt(0);
            _loc1_;
            _loc1_;
         }
         _loc1_;
         this.§_-2M§ = null;
      }
      
      public function addPowerUp(param1:int, param2:int, param3:int, param4:int, param5:int, param6:Number) : *
      {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc7_:Point = null;
         _loc9_;
         _loc9_;
         _loc10_;
         _loc9_;
         _loc9_;
         if(param1 == SafeGlobal.POWERUPTYPE_HEALTH)
         {
            _loc10_;
            _loc10_;
            _loc10_;
            this.powerUps.push(new §_-Sc§());
            _loc9_;
            _loc9_;
         }
         else if(param1 == SafeGlobal.POWERUPTYPE_WEAPON)
         {
            _loc9_;
            _loc9_;
            _loc9_;
            this.powerUps.push(new §_-hS§());
            _loc10_;
            _loc10_;
            this.powerUps[this.powerUps.length - 1].weaponID = param2;
         }
         
         _loc7_ = this.planets[param3].shapes[param4].curves[param5].curvePos(param6);
         _loc10_;
         this.powerUps[this.powerUps.length - 1].x = this.powerUps[this.powerUps.length - 1].iX = _loc7_.x;
         _loc10_;
         this.powerUps[this.powerUps.length - 1].y = this.powerUps[this.powerUps.length - 1].iY = _loc7_.y;
         _loc10_;
         _loc10_;
         this.powerUps[this.powerUps.length - 1].locationPlanet = param3;
         _loc10_;
         _loc10_;
         _loc9_;
         this.powerUps[this.powerUps.length - 1].locationShape = param4;
         _loc9_;
         this.powerUps[this.powerUps.length - 1].locationCurve = param5;
         this.powerUps[this.powerUps.length - 1].locationAngle = param6;
         _loc9_;
         _loc9_;
         if(this.planets[param3].shapes[param4].curves[param5].origCurve)
         {
            _loc9_;
            _loc10_;
            this.powerUps[this.powerUps.length - 1].iR = this.§_-cl§(this.§_-HM§(param6) + this.PI / 2);
         }
         else
         {
            _loc9_;
            _loc9_;
            this.powerUps[this.powerUps.length - 1].iR = this.§_-cl§(this.§_-HM§(param6) - this.PI / 2);
         }
         _loc9_;
         _loc9_;
         _loc10_;
         this.powerUps[this.powerUps.length - 1].rotation = this.powerUps[this.powerUps.length - 1].iR * 180 / this.PI;
         _loc9_;
         this.§_-0h§.addChild(this.powerUps[this.powerUps.length - 1]);
         _loc10_;
         _loc10_;
         this.powerUps[this.powerUps.length - 1].init(this.§_-wa§[param1]);
         _loc10_;
         this.camera.addTarget(this.powerUps[this.powerUps.length - 1],30,"addpowerup");
         _loc9_;
         _loc9_;
         this.powerUps[this.powerUps.length - 1].updatePoints();
      }
      
      public function addMineAtPoint(param1:Number, param2:Number, param3:Number, param4:int, param5:int, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Number, param12:Unit, param13:int, param14:Boolean = true) : *
      {
         var _loc18_:* = false;
         var _loc19_:* = true;
         var _loc15_:Mine = null;
         var _loc16_:* = 0;
         _loc19_;
         _loc18_;
         _loc18_;
         if(param4 == SafeGlobal.MINETYPE_STANDARD)
         {
            _loc18_;
            _loc19_;
            _loc19_;
            this.§_-KM§.push(new §_-Iz§(-1,-1));
            _loc18_;
            _loc18_;
            _loc18_;
            _loc18_;
            _loc19_;
            _loc19_;
            this.§_-KM§[this.§_-KM§.length - 1].active = param14;
            _loc19_;
            if(!param14)
            {
               _loc18_;
               _loc18_;
               _loc19_;
               _loc19_;
               _loc18_;
               _loc18_;
               _loc18_;
               _loc18_;
               _loc18_;
               this.simManager.addObject(this.§_-KM§[this.§_-KM§.length - 1]);
               _loc19_;
               _loc19_;
               this.§_-KM§[this.§_-KM§.length - 1].lastSimTime = this.§_-KM§[this.§_-KM§.length - 1].startSimTime = param13 + this.§_-Kp§;
            }
            else
            {
               _loc18_;
               this.§_-KM§[this.§_-KM§.length - 1].lastSimTime = this.§_-KM§[this.§_-KM§.length - 1].startSimTime = param13;
            }
         }
         else
         {
            _loc18_;
            _loc18_;
            if(param4 == SafeGlobal.MINETYPE_DRILL)
            {
               this.§_-KM§.push(new §_-xA§(-1,-1));
               _loc19_;
               _loc18_;
               _loc18_;
               this.§_-KM§[this.§_-KM§.length - 1].active = param14;
               _loc18_;
               _loc18_;
               if(!param14)
               {
                  _loc18_;
                  _loc19_;
                  _loc19_;
                  _loc19_;
                  _loc19_;
                  _loc19_;
                  this.simManager.addObject(this.§_-KM§[this.§_-KM§.length - 1]);
                  _loc19_;
                  _loc19_;
                  this.§_-KM§[this.§_-KM§.length - 1].lastSimTime = this.§_-KM§[this.§_-KM§.length - 1].startSimTime = param13 + this.§_-Kp§;
               }
               else
               {
                  _loc19_;
                  _loc19_;
                  _loc19_;
                  this.§_-KM§[this.§_-KM§.length - 1].lastSimTime = this.§_-KM§[this.§_-KM§.length - 1].startSimTime = param13;
               }
            }
            else
            {
               _loc18_;
               _loc19_;
               _loc19_;
               if(param4 == SafeGlobal.MINETYPE_CLUSTER)
               {
                  this.§_-KM§.push(new §_-NI§(-1,-1));
                  _loc19_;
                  _loc19_;
                  _loc18_;
                  this.§_-KM§[this.§_-KM§.length - 1].active = param14;
                  if(!param14)
                  {
                     this.simManager.addObject(this.§_-KM§[this.§_-KM§.length - 1]);
                     this.§_-KM§[this.§_-KM§.length - 1].lastSimTime = this.§_-KM§[this.§_-KM§.length - 1].startSimTime = param13 + this.§_-Kp§;
                     _loc19_;
                     _loc19_;
                  }
                  else
                  {
                     _loc19_;
                     this.§_-KM§[this.§_-KM§.length - 1].lastSimTime = this.§_-KM§[this.§_-KM§.length - 1].startSimTime = param13;
                     _loc19_;
                     _loc19_;
                  }
               }
               else
               {
                  _loc18_;
                  _loc18_;
                  _loc18_;
                  _loc18_;
                  if(param4 == SafeGlobal.MINETYPE_ROVER)
                  {
                     _loc19_;
                     _loc19_;
                     this.§_-KM§.push(new Rover(-1,-1));
                     _loc18_;
                     _loc18_;
                     _loc18_;
                     _loc18_;
                     this.§_-KM§[this.§_-KM§.length - 1].ignoreUnit = param12;
                     _loc19_;
                     this.§_-KM§[this.§_-KM§.length - 1].lastSimTime = this.§_-KM§[this.§_-KM§.length - 1].startSimTime = param13;
                  }
                  else
                  {
                     _loc19_;
                     _loc19_;
                     _loc18_;
                     if(param4 == SafeGlobal.MINETYPE_SUPERROVER)
                     {
                        this.§_-KM§.push(new §_-vZ§(-1,-1));
                        _loc18_;
                        _loc18_;
                        _loc19_;
                        _loc18_;
                        _loc18_;
                        this.§_-KM§[this.§_-KM§.length - 1].ignoreUnit = param12;
                        _loc18_;
                        _loc18_;
                        _loc19_;
                        this.§_-KM§[this.§_-KM§.length - 1].lastSimTime = this.§_-KM§[this.§_-KM§.length - 1].startSimTime = param13;
                     }
                     else if(param4 == SafeGlobal.§_-ee§)
                     {
                        this.§_-KM§.push(new §_-FW§(-1,-1));
                        _loc19_;
                        _loc19_;
                        _loc19_;
                        this.§_-KM§[this.§_-KM§.length - 1].ignoreUnit = param12;
                        _loc18_;
                        _loc18_;
                        this.§_-KM§[this.§_-KM§.length - 1].lastSimTime = this.§_-KM§[this.§_-KM§.length - 1].startSimTime = param13;
                     }
                     
                  }
               }
            }
         }
         _loc15_ = this.§_-KM§[this.§_-KM§.length - 1];
         if(_loc15_.roving)
         {
            _loc19_;
            _loc19_;
            _loc15_.walkDir = this.units[this.currentUnit].facing;
            _loc18_;
            _loc15_.scaleX = _loc15_.walkDir;
            this.simManager.addObject(_loc15_);
            _loc18_;
            _loc18_;
            _loc18_;
            _loc18_;
            _loc19_;
            _loc16_ = SoundManager.§_-rg§(SafeGlobal.FX_ROVER,10000,true,(this.simOnly) || (this.costumeCacheOnly));
            _loc15_.sound_uid = _loc16_;
            _loc19_;
         }
         this.§_-wd§.addChild(_loc15_);
         this.§_-KM§[this.§_-KM§.length - 1].init(this.§_-HT§[param4]);
         _loc15_.iX = _loc15_.x = param1;
         _loc15_.iY = _loc15_.y = param2;
         _loc15_.locationPlanet = param5;
         _loc19_;
         _loc15_.locationShape = param6;
         _loc15_.locationCurve = param7;
         _loc15_.locationCurveX = param8;
         _loc15_.locationCurveY = param9;
         _loc18_;
         _loc18_;
         _loc15_.locationCurveRadius = param10;
         _loc15_.iR = param3;
         _loc15_.rotation = _loc15_.iR * 180 / this.PI;
         _loc15_.locationAngle = param11;
      }
      
      public function §_-Gt§(param1:MouseEvent) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
         _loc3_;
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-Gt§);
         _loc2_;
         this.§_-QI§ = false;
      }
      
      public function §_-G9§(param1:MouseEvent) : *
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
         var _loc12_:§_-U4§ = null;
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
         _loc67_;
         _loc67_;
         if(this.myTurn)
         {
            _loc68_;
            if(this.turnState == "shoot")
            {
               this.§_-I8§();
               _loc67_;
               _loc67_;
               _loc67_;
               _loc67_;
               _loc67_;
               this.§_-QM§.splice(0);
               this.dragging = false;
               _loc67_;
               _loc67_;
               _loc2_ = this.§_-M-§.x - this.§_-yD§.x;
               _loc67_;
               _loc67_;
               _loc3_ = this.§_-M-§.y - this.§_-yD§.y;
               _loc4_ = this.units[this.currentUnit].startPoint();
               _loc68_;
               _loc5_ = _loc4_.x - this.screen.mouseX;
               _loc67_;
               _loc68_;
               _loc68_;
               _loc6_ = _loc4_.y - this.screen.mouseY;
               _loc67_;
               _loc67_;
               _loc7_ = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
               _loc68_;
               if((Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_)) >= 30)
               {
                  _loc67_;
                  _loc67_;
                  _loc67_;
                  _loc68_;
                  _loc68_;
                  _loc68_;
                  _loc68_;
                  _loc8_ = _loc2_ * this.§_-j6§;
                  _loc67_;
                  _loc67_;
                  _loc67_;
                  _loc9_ = _loc3_ * this.§_-j6§;
                  _loc10_ = SafeGlobal.§_-AT§(this.currentWeapon);
                  _loc11_ = _loc10_[3];
                  _loc67_;
                  _loc67_;
                  _loc68_;
                  if(this.§_-qH§[0] == SafeGlobal.WEAPONINFO_JETPACK[0])
                  {
                     _loc67_;
                     _loc68_;
                     _loc68_;
                     _loc13_ = this.units[this.currentUnit].startPoint();
                     this.addUnitProjectile(_loc13_.x,_loc13_.y,_loc8_,_loc9_,this.currentTime,this.units[this.currentUnit],false);
                     _loc68_;
                     _loc68_;
                     _loc67_;
                     _loc68_;
                     _loc68_;
                     _loc67_;
                     _loc67_;
                     _loc14_ = SoundManager.§_-rg§(SafeGlobal.FX_JETPACK,10000,true,(this.simOnly) || (this.costumeCacheOnly));
                     _loc67_;
                     _loc67_;
                     _loc67_;
                     _loc68_;
                     _loc68_;
                     _loc67_;
                     _loc67_;
                     this.projectiles[this.projectiles.length - 1].sound_uid = _loc14_;
                     _loc68_;
                     _loc68_;
                     _loc67_;
                     this.projectiles[this.projectiles.length - 1].useProjString("e,99,2",false);
                     _loc68_;
                     _loc67_;
                     _loc67_;
                     if(this.units[this.currentUnit].poison == 0)
                     {
                        _loc67_;
                        this.units[this.currentUnit].hidePoison();
                        _loc67_;
                        _loc67_;
                     }
                     this.§_-i7§ = 1;
                     _loc67_;
                     _loc67_;
                     _loc67_;
                     _loc68_;
                     _loc68_;
                     this.projectiles[this.projectiles.length - 1].scaleX = this.units[this.currentUnit].scaleX;
                     _loc68_;
                     _loc67_;
                     _loc67_;
                     _loc67_;
                     _loc67_;
                     this.projectiles[this.projectiles.length - 1].init(this.units[this.currentUnit].costume.spriteSheets[SafeGlobal.ANIM_UNIT_JETPACK]);
                     this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_JETPACK]);
                     _loc68_;
                     _loc68_;
                     this.projectiles[this.projectiles.length - 1].track = false;
                     stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-G9§);
                     stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
                  }
                  else
                  {
                     _loc67_;
                     _loc67_;
                     _loc67_;
                     if(this.§_-qH§[0] == SafeGlobal.§_-vj§[0])
                     {
                        _loc68_;
                        _loc13_ = this.units[this.currentUnit].startPoint();
                        this.addUnitProjectile(_loc13_.x,_loc13_.y,_loc8_,_loc9_,this.currentTime,this.units[this.currentUnit],false);
                        _loc67_;
                        _loc67_;
                        this.units[this.currentUnit].rocketGloves = true;
                        _loc67_;
                        _loc68_;
                        _loc68_;
                        _loc67_;
                        _loc67_;
                        _loc14_ = SoundManager.§_-rg§(SafeGlobal.FX_JETPACK,10000,true,(this.simOnly) || (this.costumeCacheOnly));
                        _loc67_;
                        _loc68_;
                        _loc68_;
                        _loc68_;
                        _loc68_;
                        _loc68_;
                        this.projectiles[this.projectiles.length - 1].sound_uid = _loc14_;
                        _loc68_;
                        _loc68_;
                        _loc67_;
                        this.projectiles[this.projectiles.length - 1].useProjString("e,100,2",false);
                        _loc67_;
                        _loc68_;
                        _loc68_;
                        if(this.units[this.currentUnit].poison == 0)
                        {
                           _loc68_;
                           _loc68_;
                           _loc68_;
                           this.units[this.currentUnit].hidePoison();
                           _loc67_;
                        }
                        this.§_-pc§ = 1;
                        _loc68_;
                        _loc68_;
                        _loc68_;
                        _loc68_;
                        _loc68_;
                        _loc68_;
                        this.projectiles[this.projectiles.length - 1].scaleX = this.units[this.currentUnit].scaleX;
                        _loc68_;
                        _loc67_;
                        this.projectiles[this.projectiles.length - 1].init(this.units[this.currentUnit].costume.spriteSheets[SafeGlobal.ANIM_UNIT_ROCKETGLOVES]);
                        _loc67_;
                        _loc67_;
                        this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_ROCKETGLOVES]);
                        this.projectiles[this.projectiles.length - 1].track = false;
                        stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-G9§);
                        _loc67_;
                        _loc67_;
                        stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
                     }
                     else
                     {
                        _loc68_;
                        _loc15_ = _loc11_[0];
                        _loc68_;
                        _loc16_ = _loc11_[1];
                        _loc17_ = Math.atan2(_loc9_,_loc8_);
                        _loc68_;
                        _loc68_;
                        _loc19_ = true;
                        if(_loc10_[0] == SafeGlobal.WEAPONINFO_CUSTOM[0])
                        {
                           _loc68_;
                           _loc68_;
                           _loc68_;
                           _loc68_;
                           _loc68_;
                           _loc18_ = this.teams[this.units[this.currentUnit].team].customWeaponStrings[0];
                        }
                        else if(_loc10_[0] == SafeGlobal.WEAPONINFO_CUSTOM2[0])
                        {
                           _loc67_;
                           _loc67_;
                           _loc67_;
                           _loc67_;
                           _loc68_;
                           _loc18_ = this.teams[this.units[this.currentUnit].team].customWeaponStrings[1];
                        }
                        else if(_loc10_[0] == SafeGlobal.WEAPONINFO_CUSTOM3[0])
                        {
                           _loc67_;
                           _loc67_;
                           _loc18_ = this.teams[this.units[this.currentUnit].team].customWeaponStrings[2];
                        }
                        else
                        {
                           _loc19_ = false;
                           _loc68_;
                           _loc68_;
                           _loc18_ = _loc10_[4];
                        }
                        
                        
                        _loc20_ = _loc18_.split("/");
                        _loc21_ = this.units[this.currentUnit].startPoint(_loc15_);
                        _loc22_ = new Point(_loc21_.x,_loc21_.y);
                        _loc21_.x = this.§_-cl§(_loc21_.x);
                        _loc21_.y = this.§_-cl§(_loc21_.y);
                        _loc67_;
                        _loc22_.x = _loc22_.x + Math.cos(_loc17_) * _loc16_;
                        _loc68_;
                        _loc68_;
                        _loc22_.y = _loc22_.y + Math.sin(_loc17_) * _loc16_;
                        _loc22_.x = this.§_-cl§(_loc22_.x);
                        _loc22_.y = this.§_-cl§(_loc22_.y);
                        _loc68_;
                        _loc23_ = _loc20_[0];
                        _loc24_ = "";
                        _loc67_;
                        _loc67_;
                        _loc25_ = _loc20_[1];
                        _loc26_ = _loc25_.split(";");
                        _loc67_;
                        _loc67_;
                        _loc31_ = -1;
                        _loc67_;
                        _loc67_;
                        _loc67_;
                        _loc32_ = -1;
                        _loc67_;
                        _loc67_;
                        _loc33_ = -1;
                        _loc68_;
                        _loc68_;
                        _loc34_ = -1;
                        _loc35_ = -1;
                        _loc67_;
                        _loc36_ = 0;
                        _loc37_ = false;
                        _loc67_;
                        _loc67_;
                        _loc67_;
                        _loc38_ = 0;
                        _loc68_;
                        _loc39_ = 0;
                        _loc41_ = 0;
                        _loc68_;
                        _loc42_ = "";
                        _loc43_ = _loc23_.split(";");
                        _loc68_;
                        _loc44_ = 0;
                        while(_loc44_ < _loc43_.length)
                        {
                           _loc28_ = _loc43_[_loc44_].split(",");
                           if(_loc28_[0] == "g")
                           {
                              _loc67_;
                              _loc30_ = int(_loc28_[1]);
                           }
                           else if(_loc28_[0] == "r")
                           {
                              _loc68_;
                              _loc31_ = int(_loc28_[1]);
                              _loc67_;
                              _loc67_;
                              _loc67_;
                              _loc32_ = int(_loc28_[2]);
                              _loc67_;
                           }
                           else if(_loc28_[0] == "m")
                           {
                              _loc68_;
                              _loc67_;
                              _loc67_;
                              _loc33_ = int(_loc28_[1]);
                              _loc68_;
                              _loc68_;
                              _loc34_ = int(_loc28_[2]);
                              _loc35_ = int(_loc28_[3]);
                           }
                           else if(_loc28_[0] == "n")
                           {
                              _loc42_ = _loc28_[1].split("*").join(" ");
                              _loc67_;
                              _loc67_;
                           }
                           else if(_loc28_[0] == "s")
                           {
                              _loc41_ = Number(_loc28_[1]);
                           }
                           
                           
                           
                           
                           _loc44_++;
                        }
                        _loc68_;
                        _loc67_;
                        _loc67_;
                        if(_loc42_ != "")
                        {
                           _loc67_;
                           _loc67_;
                           this.showMessage(this.units[this.currentUnit].unitName + " used " + _loc42_,SafeGlobal.colour_hex[this.teams[this.units[this.currentUnit].team].colourID]);
                        }
                        _loc45_ = 0;
                        while(true)
                        {
                           _loc67_;
                           if(_loc45_ >= _loc26_.length)
                           {
                              break;
                           }
                           _loc27_ = _loc26_[_loc45_].split(",");
                           if(_loc27_[0] == "g")
                           {
                              _loc68_;
                              _loc68_;
                              if(!_loc19_)
                              {
                                 _loc68_;
                                 _loc67_;
                                 _loc67_;
                                 _loc29_ = int(_loc10_[0]);
                              }
                              else
                              {
                                 _loc29_ = int(_loc27_[2]);
                              }
                           }
                           else if(_loc27_[0] == "x")
                           {
                              _loc67_;
                              _loc37_ = true;
                              _loc67_;
                              _loc67_;
                           }
                           
                           _loc45_++;
                        }
                        _loc67_;
                        _loc67_;
                        stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-G9§);
                        stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
                        _loc67_;
                        _loc68_;
                        _loc68_;
                        _loc46_ = 1;
                        while(true)
                        {
                           _loc67_;
                           _loc67_;
                           if(_loc46_ >= _loc20_.length)
                           {
                              break;
                           }
                           if(_loc46_ > 1)
                           {
                              _loc68_;
                              _loc68_;
                              _loc24_ = _loc24_ + "/";
                           }
                           _loc67_;
                           _loc24_ = _loc24_ + _loc20_[_loc46_];
                           _loc46_++;
                        }
                        SafeGlobal.§_-n8§ = String("unit.x = " + this.units[this.currentUnit].iX + ", unit.y = " + this.units[this.currentUnit].iY + " addPoint.x = " + _loc22_.x + ", addPoint.y = " + _loc22_.y);
                        if(_loc31_ != -1)
                        {
                           _loc68_;
                           _loc68_;
                           _loc47_ = 0;
                           _loc68_;
                           _loc68_;
                           while(true)
                           {
                              _loc67_;
                              if(_loc47_ >= _loc31_)
                              {
                                 break;
                              }
                              _loc67_;
                              _loc67_;
                              _loc36_ = (_loc31_ - 1) * _loc32_ * 100;
                              _loc68_;
                              _loc67_;
                              _loc67_;
                              if(_loc37_)
                              {
                                 _loc40_ = Math.atan2(_loc9_,_loc8_);
                                 _loc67_;
                                 _loc67_;
                                 _loc68_;
                                 _loc68_;
                                 _loc38_ = this.§_-cl§(this.§_-zf§ * Math.cos(_loc40_));
                                 _loc68_;
                                 _loc68_;
                                 _loc67_;
                                 _loc39_ = this.§_-cl§(this.§_-zf§ * Math.sin(_loc40_));
                                 _loc67_;
                                 this.addProjectile(_loc22_.x,_loc22_.y,_loc38_,_loc39_,this.currentTime + _loc32_ * _loc47_ * 100,_loc24_,_loc19_,true);
                                 _loc68_;
                              }
                              else
                              {
                                 _loc68_;
                                 _loc68_;
                                 if(_loc41_ > 0)
                                 {
                                    _loc67_;
                                    _loc67_;
                                    _loc67_;
                                    _loc67_;
                                    _loc67_;
                                    _loc68_;
                                    _loc48_ = this.§_-cl§(_loc41_ * this.PI / 180 / 14);
                                    _loc49_ = this.§_-cl§(Math.atan2(_loc9_,_loc8_));
                                    _loc67_;
                                    _loc50_ = this.§_-cl§(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_));
                                    _loc68_;
                                    _loc51_ = int(this.§_-fz§.substr(_loc47_,1)) * 4 - 18;
                                    _loc68_;
                                    _loc68_;
                                    _loc52_ = this.§_-cl§(_loc51_ * _loc48_);
                                    _loc68_;
                                    _loc68_;
                                    _loc53_ = this.§_-cl§(_loc50_ * Math.cos(_loc52_ + _loc49_));
                                    _loc68_;
                                    _loc68_;
                                    _loc67_;
                                    _loc54_ = this.§_-cl§(_loc50_ * Math.sin(_loc52_ + _loc49_));
                                    _loc68_;
                                    this.addProjectile(_loc22_.x,_loc22_.y,_loc53_,_loc54_,this.currentTime + _loc32_ * _loc47_ * 100,_loc24_,_loc19_,true);
                                    _loc68_;
                                    _loc67_;
                                    this.projectiles[this.projectiles.length - 1].spin = Math.random() > 0.5?10:-10;
                                    _loc67_;
                                    this.projectiles[this.projectiles.length - 1].orientToPath = false;
                                 }
                                 else
                                 {
                                    this.addProjectile(_loc22_.x,_loc22_.y,_loc8_,_loc9_,this.currentTime + _loc32_ * _loc47_ * 100,_loc24_,_loc19_,true);
                                    _loc68_;
                                    _loc68_;
                                 }
                              }
                              _loc68_;
                              this.projectiles[this.projectiles.length - 1].initialPlanetCheck = true;
                              _loc68_;
                              _loc68_;
                              _loc68_;
                              this.projectiles[this.projectiles.length - 1].initialPoint = _loc21_;
                              _loc68_;
                              if(_loc47_ > 0)
                              {
                                 _loc68_;
                                 _loc67_;
                                 this.projectiles[this.projectiles.length - 1].visible = false;
                              }
                              this.projectiles[this.projectiles.length - 1].setIgnoreUnit(this.currentUnit);
                              _loc68_;
                              _loc68_;
                              if(!_loc19_)
                              {
                                 this.projectiles[this.projectiles.length - 1].init(this.projGFX[_loc29_]);
                              }
                              else
                              {
                                 _loc67_;
                                 _loc67_;
                                 _loc67_;
                                 this.projectiles[this.projectiles.length - 1].init(this.customProjectileGFX[_loc29_]);
                                 _loc68_;
                              }
                              _loc68_;
                              _loc68_;
                              this.projectiles[this.projectiles.length - 1].track = true;
                              _loc67_;
                              _loc67_;
                              _loc47_++;
                           }
                        }
                        else
                        {
                           _loc68_;
                           _loc68_;
                           if(_loc33_ != -1)
                           {
                              _loc67_;
                              _loc67_;
                              _loc68_;
                              _loc68_;
                              _loc68_;
                              _loc67_;
                              _loc67_;
                              _loc67_;
                              _loc67_;
                              _loc55_ = _loc34_ * this.PI / 180;
                              _loc68_;
                              _loc56_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
                              _loc68_;
                              _loc17_ = Math.atan2(_loc9_,_loc8_);
                              _loc68_;
                              _loc67_;
                              _loc57_ = (_loc33_ - 1) * _loc55_;
                              _loc67_;
                              _loc58_ = _loc57_ / 2;
                              _loc62_ = 0;
                              _loc63_ = 0;
                              _loc65_ = 0;
                              while(true)
                              {
                                 _loc67_;
                                 if(_loc65_ >= _loc33_)
                                 {
                                    break;
                                 }
                                 _loc62_ = _loc62_ + (int(this.§_-fz§.substr(_loc65_,1)) + 1);
                                 _loc65_++;
                                 _loc67_;
                                 _loc67_;
                              }
                              _loc66_ = 0;
                              _loc67_;
                              while(_loc66_ < _loc33_)
                              {
                                 if(_loc35_ == 0)
                                 {
                                    _loc67_;
                                    _loc67_;
                                    _loc67_;
                                    _loc68_;
                                    _loc61_ = _loc17_ - _loc58_ + _loc66_ * _loc55_;
                                    _loc67_;
                                    _loc67_;
                                    _loc67_;
                                    _loc67_;
                                    _loc59_ = this.§_-cl§(_loc56_ * Math.cos(_loc61_));
                                    _loc68_;
                                    _loc68_;
                                    _loc60_ = this.§_-cl§(_loc56_ * Math.sin(_loc61_));
                                 }
                                 else
                                 {
                                    _loc67_;
                                    _loc67_;
                                    if(_loc35_ == 1)
                                    {
                                       _loc64_ = int(this.§_-fz§.substr(_loc66_,1)) + 1;
                                       _loc68_;
                                       _loc63_ = _loc63_ + _loc64_;
                                       _loc68_;
                                       _loc68_;
                                       _loc67_;
                                       _loc67_;
                                       _loc67_;
                                       _loc67_;
                                       _loc68_;
                                       _loc61_ = _loc17_ - _loc58_ + _loc57_ / _loc62_ * _loc63_;
                                       _loc67_;
                                       _loc59_ = this.§_-cl§(_loc56_ * Math.cos(_loc61_));
                                       _loc67_;
                                       _loc60_ = this.§_-cl§(_loc56_ * Math.sin(_loc61_));
                                       _loc67_;
                                       _loc67_;
                                    }
                                 }
                                 _loc67_;
                                 if(_loc37_)
                                 {
                                    _loc68_;
                                    _loc68_;
                                    _loc67_;
                                    _loc67_;
                                    _loc40_ = Math.atan2(_loc60_,_loc59_);
                                    _loc68_;
                                    _loc68_;
                                    _loc68_;
                                    _loc38_ = this.§_-cl§(this.§_-zf§ * Math.cos(_loc40_));
                                    _loc68_;
                                    _loc68_;
                                    _loc68_;
                                    _loc39_ = this.§_-cl§(this.§_-zf§ * Math.sin(_loc40_));
                                    _loc67_;
                                    _loc67_;
                                    this.addProjectile(_loc22_.x,_loc22_.y,_loc38_,_loc39_,this.currentTime,_loc24_,_loc19_,true);
                                    _loc68_;
                                 }
                                 else
                                 {
                                    this.addProjectile(_loc22_.x,_loc22_.y,_loc59_,_loc60_,this.currentTime,_loc24_,_loc19_,true);
                                    _loc67_;
                                    _loc67_;
                                 }
                                 _loc68_;
                                 _loc68_;
                                 _loc68_;
                                 _loc67_;
                                 _loc67_;
                                 this.projectiles[this.projectiles.length - 1].initialPlanetCheck = true;
                                 _loc68_;
                                 this.projectiles[this.projectiles.length - 1].initialPoint = _loc21_;
                                 _loc67_;
                                 _loc68_;
                                 this.projectiles[this.projectiles.length - 1].setIgnoreUnit(this.currentUnit);
                                 _loc68_;
                                 _loc68_;
                                 if(!_loc19_)
                                 {
                                    _loc68_;
                                    this.projectiles[this.projectiles.length - 1].init(this.projGFX[_loc29_]);
                                 }
                                 else
                                 {
                                    _loc68_;
                                    _loc68_;
                                    this.projectiles[this.projectiles.length - 1].init(this.customProjectileGFX[_loc29_]);
                                    _loc67_;
                                    _loc67_;
                                 }
                                 _loc68_;
                                 _loc68_;
                                 this.projectiles[this.projectiles.length - 1].track = true;
                                 _loc66_++;
                              }
                           }
                           else
                           {
                              _loc67_;
                              _loc67_;
                              if(_loc37_)
                              {
                                 _loc67_;
                                 _loc67_;
                                 _loc40_ = Math.atan2(_loc9_,_loc8_);
                                 _loc67_;
                                 _loc67_;
                                 _loc67_;
                                 _loc67_;
                                 _loc38_ = this.§_-cl§(this.§_-zf§ * Math.cos(_loc40_));
                                 _loc68_;
                                 _loc68_;
                                 _loc39_ = this.§_-cl§(this.§_-zf§ * Math.sin(_loc40_));
                                 this.addProjectile(_loc22_.x,_loc22_.y,_loc38_,_loc39_,this.currentTime,_loc24_,_loc19_,true);
                                 _loc67_;
                                 _loc67_;
                              }
                              else
                              {
                                 this.addProjectile(_loc22_.x,_loc22_.y,_loc8_,_loc9_,this.currentTime,_loc24_,_loc19_,true);
                                 _loc68_;
                              }
                              _loc68_;
                              _loc68_;
                              _loc67_;
                              _loc67_;
                              this.projectiles[this.projectiles.length - 1].initialPlanetCheck = true;
                              _loc67_;
                              this.projectiles[this.projectiles.length - 1].initialPoint = _loc21_;
                              _loc68_;
                              _loc67_;
                              _loc67_;
                              _loc68_;
                              _loc68_;
                              this.projectiles[this.projectiles.length - 1].setIgnoreUnit(this.currentUnit);
                              _loc67_;
                              _loc67_;
                              if(!_loc19_)
                              {
                                 _loc68_;
                                 _loc68_;
                                 _loc67_;
                                 this.projectiles[this.projectiles.length - 1].init(this.projGFX[_loc29_]);
                                 _loc68_;
                                 _loc68_;
                              }
                              else
                              {
                                 _loc67_;
                                 _loc67_;
                                 _loc67_;
                                 this.projectiles[this.projectiles.length - 1].init(this.customProjectileGFX[_loc29_]);
                              }
                              _loc67_;
                              _loc68_;
                              this.projectiles[this.projectiles.length - 1].track = true;
                              _loc67_;
                              _loc67_;
                           }
                        }
                        _loc67_;
                        _loc67_;
                        _loc67_;
                        _loc67_;
                        if(this.§_-qH§[0] == SafeGlobal.WEAPONINFO_GRAVITEEBALL[0])
                        {
                           this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_GOLFSWING,SafeGlobal.ANIM_UNIT_BOB]);
                           this.projectiles[this.projectiles.length - 1].orientToPath = false;
                        }
                        else
                        {
                           _loc67_;
                           _loc12_ = new §_-U4§(SafeGlobal.SIMEVENT_PROJAIMSTOP,this.currentTime + 200 + _loc36_,new Object());
                           _loc68_;
                           this.simManager.addObject(_loc12_);
                           _loc68_;
                           this.addEffect(SafeGlobal.EFFECTS_BAZOOKAFLASH,_loc22_.x,_loc22_.y,int(_loc17_ * 180 / this.PI));
                        }
                     }
                  }
                  this.simManager.§_-Pa§("PROJ DRAG STOP");
                  _loc68_;
                  this.§_-lc§ = 0;
                  _loc67_;
                  _loc68_;
                  _loc68_;
                  _loc68_;
                  _loc68_;
                  _loc67_;
                  _loc67_;
                  if(this.§_-qH§[0] == SafeGlobal.WEAPONINFO_JETPACK[0] || this.§_-qH§[0] == SafeGlobal.§_-vj§[0])
                  {
                     _loc12_ = new §_-U4§(SafeGlobal.SIMEVENT_ENDTURN,this.currentTime,null);
                  }
                  else
                  {
                     _loc67_;
                     _loc12_ = new §_-U4§(SafeGlobal.SIMEVENT_ENDTURN,this.currentTime + this.§_-Kp§ + _loc36_,null);
                  }
                  _loc68_;
                  this.simManager.addObject(_loc12_);
                  this.sendFireProjectile(this.currentTime,this.currentWeapon,_loc8_,_loc9_);
                  this.§_-M2§();
                  _loc68_;
                  this.turnState = "retreat";
                  _loc68_;
                  this.§_-PE§();
                  _loc68_;
                  _loc67_;
                  _loc68_;
                  _loc68_;
                  this.§_-Nb§[this.currentUnit].makeUnselected();
                  _loc67_;
                  this.§_-X8§();
                  this.§_-MT§ = this.currentTime;
                  _loc68_;
                  this.§_-Jz§.startRetreat(this.currentTime,_loc36_);
                  this.simManager.startRetreat(this.currentTime,_loc36_);
                  _loc67_;
                  this.§_-d3§ = this.currentTime + _loc36_;
                  _loc68_;
                  _loc68_;
               }
               else
               {
                  this.§_-JC§();
               }
            }
            else
            {
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-G9§);
               _loc67_;
               stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
               _loc67_;
               _loc67_;
               this.dragging = false;
               _loc67_;
               _loc67_;
               this.§_-fp§(this.§_-OZ§);
            }
            this.units[this.currentUnit].doFlip(this.units[this.currentUnit].facing * -1);
         }
      }
      
      public function §_-XU§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
         _loc2_;
         _loc2_;
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-eG§);
         _loc2_;
         _loc2_;
         stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
         _loc2_;
         this.§_-se§(this.units[this.currentUnit]);
      }
      
      public function §_-JC§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
         _loc1_;
         this.§_-fp§(this.§_-OZ§);
         _loc1_;
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-G9§);
         stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
         _loc1_;
         this.§_-se§(this.units[this.currentUnit]);
         this.units[this.currentUnit].doFlip(this.units[this.currentUnit].facing * -1);
         this.onCancelShot();
      }
      
      public function §_-TA§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
         _loc2_;
         _loc2_;
         this.§_-fp§(this.§_-OZ§);
         _loc1_;
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-W0§);
         _loc2_;
         stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
         _loc2_;
         _loc2_;
         this.§_-se§(this.units[this.currentUnit]);
      }
      
      public function §_-aW§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
         _loc1_;
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-eZ§);
         _loc1_;
         _loc1_;
         stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
         _loc1_;
         this.§_-se§(this.units[this.currentUnit]);
      }
      
      public function §_-RT§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
         _loc1_;
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-2I§);
         _loc1_;
         stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
         if(this.screen.contains(this.§_-Ho§))
         {
            this.screen.removeChild(this.§_-Ho§);
         }
         this.§_-se§(this.units[this.currentUnit]);
      }
      
      public function §_-bt§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.incomingDragStop);
         stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
         this.screen.removeChild(this.§_-na§);
         _loc2_;
         this.camera.removeTarget(this.§_-na§);
         _loc1_;
         _loc1_;
         this.camera.addTarget(this.units[this.currentUnit],-1,"escincomingDragStop");
         this.§_-OZ§ = SafeGlobal.CLEANUP_NONE;
         _loc1_;
         _loc1_;
         this.§_-se§(this.units[this.currentUnit]);
      }
      
      public function §_-FF§() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
         _loc3_;
         _loc3_;
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-HE§);
         _loc3_;
         stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
         _loc2_;
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
            _loc3_;
            _loc1_--;
            _loc3_;
            _loc3_;
         }
         _loc2_;
         _loc2_;
         this.§_-se§(this.units[this.currentUnit]);
      }
      
      public function §_-y7§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
         _loc1_;
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-2B§);
         _loc1_;
         _loc1_;
         stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
         _loc2_;
         this.§_-se§(this.units[this.currentUnit]);
      }
      
      public function §_-W0§(param1:MouseEvent) : *
      {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:Point = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Unit = null;
         var _loc9_:§_-U4§ = null;
         if(this.myTurn)
         {
            _loc10_;
            _loc10_;
            if(this.turnState == "shoot")
            {
               this.dragging = false;
               _loc11_;
               _loc11_;
               _loc10_;
               _loc2_ = this.§_-M-§.x - this.§_-yD§.x;
               _loc3_ = this.§_-M-§.y - this.§_-yD§.y;
               _loc4_ = this.units[this.currentUnit].startPoint();
               _loc10_;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc5_ = _loc4_.x - this.screen.mouseX;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc11_;
               _loc6_ = _loc4_.y - this.screen.mouseY;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc7_ = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
               if(_loc7_ >= 30)
               {
                  _loc11_;
                  _loc11_;
                  this.sendLayMine(this.currentTime,this.currentWeapon);
                  _loc10_;
                  this.§_-M2§();
                  _loc10_;
                  _loc8_ = this.units[this.currentUnit];
                  _loc11_;
                  _loc11_;
                  this.addMineAtPoint(_loc8_.iX,_loc8_.iY,_loc8_.iR,this.§_-qH§[2],_loc8_.locationPlanet,_loc8_.locationShape,_loc8_.locationCurve,_loc8_.locationCurveX,_loc8_.locationCurveY,_loc8_.locationCurveRadius,_loc8_.locationAngle,_loc8_,this.currentTime,false);
                  _loc11_;
                  _loc11_;
                  this.§_-9-§ = 1;
                  stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-W0§);
                  stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
                  this.turnState = "retreat";
                  _loc11_;
                  this.§_-PE§();
                  _loc10_;
                  _loc10_;
                  this.§_-Nb§[this.currentUnit].makeUnselected();
                  this.§_-X8§();
                  this.simManager.§_-Pa§("MINEDRAGSTOP");
                  this.§_-lc§ = 0;
                  _loc9_ = new §_-U4§(SafeGlobal.SIMEVENT_ENDTURN,this.currentTime + this.§_-Kp§,null);
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  this.simManager.addObject(_loc9_);
                  _loc10_;
                  this.§_-MT§ = this.currentTime;
                  _loc10_;
                  this.§_-Jz§.startRetreat(this.currentTime);
                  _loc11_;
                  _loc11_;
                  this.simManager.startRetreat(this.currentTime);
                  _loc11_;
               }
               else
               {
                  this.§_-TA§();
               }
               this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
            }
            else
            {
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-W0§);
               stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
               _loc10_;
               _loc10_;
               this.dragging = false;
               _loc10_;
               _loc10_;
               this.§_-fp§(this.§_-OZ§);
            }
         }
      }
      
      public function §_-eG§(param1:MouseEvent) : *
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:Point = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:§_-U4§ = null;
         _loc9_;
         if(this.myTurn)
         {
            _loc9_;
            _loc10_;
            _loc9_;
            _loc9_;
            _loc2_ = this.§_-M-§.x - this.§_-yD§.x;
            _loc9_;
            _loc10_;
            _loc10_;
            _loc3_ = this.§_-M-§.y - this.§_-yD§.y;
            _loc4_ = this.units[this.currentUnit].startPoint();
            _loc10_;
            _loc10_;
            _loc9_;
            _loc9_;
            _loc5_ = _loc4_.x - this.screen.mouseX;
            _loc10_;
            _loc9_;
            _loc6_ = _loc4_.y - this.screen.mouseY;
            _loc9_;
            _loc10_;
            _loc7_ = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
            if(_loc7_ >= 30)
            {
               if(this.turnState == "shoot")
               {
                  _loc10_;
                  this.dragging = false;
                  _loc9_;
                  this.§_-M2§();
                  stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-eG§);
                  stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
                  this.turnState = "end";
                  _loc10_;
                  this.§_-PE§();
                  _loc9_;
                  _loc9_;
                  _loc9_;
                  _loc9_;
                  this.§_-Nb§[this.currentUnit].makeUnselected();
                  _loc10_;
                  this.simManager.§_-Pa§("SKIPDRAGSTOP");
                  _loc10_;
                  this.§function§ = 1;
                  _loc10_;
                  _loc8_ = new §_-U4§(SafeGlobal.SIMEVENT_ENDTURN,this.currentTime,null);
                  _loc9_;
                  _loc9_;
                  this.simManager.addObject(_loc8_);
                  _loc9_;
                  this.sendFireProjectile(this.currentTime,-1,0,0);
                  _loc9_;
                  _loc9_;
                  this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_SLEEP,SafeGlobal.ANIM_UNIT_SLEEP,SafeGlobal.ANIM_UNIT_BOB]);
               }
               else
               {
                  stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-eG§);
                  stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
                  _loc10_;
                  _loc10_;
                  this.dragging = false;
               }
            }
            else
            {
               this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
               _loc10_;
               _loc10_;
               this.dragging = false;
               _loc10_;
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-eG§);
               stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
               this.§_-se§(this.units[this.currentUnit]);
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
         _loc8_;
         _loc3_ = 0;
         while(_loc3_ < this.planets.length)
         {
            _loc7_;
            _loc7_;
            _loc7_;
            _loc4_ = param1.iX - this.planets[_loc3_].x;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc5_ = param1.iY - this.planets[_loc3_].y;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            if(_loc6_ <= 7 + this.planets[_loc3_].radius)
            {
               _loc8_;
               _loc8_;
               this.planets[_loc3_].placeBump(param1,param2);
               _loc8_;
               _loc8_;
            }
            _loc3_++;
            _loc7_;
            _loc7_;
         }
      }
      
      public function §_-fp§(param1:int) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         if(param1 == SafeGlobal.CLEANUP_PROJECTILE)
         {
            _loc3_;
            this.§_-ck§();
            _loc2_;
            this.§_-I8§();
            this.§_-QM§.splice(0);
            _loc3_;
            _loc2_;
            _loc2_;
            if(this.units[this.currentUnit].walkDir == 0)
            {
               _loc3_;
               _loc3_;
               this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
               _loc2_;
               _loc2_;
            }
         }
         else
         {
            _loc3_;
            if(param1 == SafeGlobal.CLEANUP_INCOMING)
            {
               _loc2_;
               _loc2_;
               this.dragging = false;
               this.screen.removeChild(this.§_-na§);
               _loc2_;
               this.camera.removeTarget(this.§_-na§);
               _loc2_;
               _loc2_;
               this.camera.addTarget(this.units[this.currentUnit],-1,"incomingDragStop");
               _loc2_;
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.incomingDragStop);
               _loc3_;
               _loc3_;
               stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
               _loc3_;
               _loc3_;
            }
            else if(param1 == SafeGlobal.CLEANUP_MINE)
            {
               this.dragging = false;
               this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-W0§);
               stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
               _loc2_;
            }
            else
            {
               _loc2_;
               _loc2_;
               if(param1 == SafeGlobal.CLEANUP_TELEPORT)
               {
                  this.dragging = false;
                  _loc3_;
                  this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
                  _loc3_;
                  if(this.screen.contains(this.§_-Ho§))
                  {
                     this.screen.removeChild(this.§_-Ho§);
                  }
                  stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-2I§);
                  _loc3_;
                  _loc3_;
                  stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
                  _loc3_;
                  _loc3_;
               }
               else
               {
                  _loc3_;
                  _loc3_;
                  _loc2_;
                  if(param1 == SafeGlobal.CLEANUP_GATE)
                  {
                     this.dragging = false;
                     _loc2_;
                     this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
                     _loc3_;
                     stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-HE§);
                     stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
                     _loc3_;
                  }
                  else
                  {
                     _loc3_;
                     _loc3_;
                     if(param1 == SafeGlobal.CLEANUP_PLANETGATE)
                     {
                        this.dragging = false;
                        _loc2_;
                        _loc2_;
                        this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
                        stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-2B§);
                        stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
                     }
                     else if(param1 == SafeGlobal.CLEANUP_MELEE)
                     {
                        this.dragging = false;
                        _loc2_;
                        this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
                        stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-eZ§);
                        stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
                     }
                     
                  }
               }
            }
            
         }
         this.§_-OZ§ = SafeGlobal.CLEANUP_NONE;
      }
      
      public function §_-pE§() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         _loc2_;
         _loc1_ = 0;
         while(_loc1_ < this.units.length)
         {
            this.units[_loc1_].ignoreRocketGloves = false;
            _loc3_;
            _loc3_;
            _loc1_++;
            _loc2_;
         }
      }
      
      public function §_-2I§(param1:MouseEvent) : *
      {
         var _loc37_:* = false;
         var _loc38_:* = true;
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
         var _loc23_:§_-QR§ = null;
         var _loc24_:Point = null;
         var _loc25_:Point = null;
         var _loc26_:Array = null;
         var _loc27_:* = 0;
         var _loc28_:* = 0;
         var _loc29_:* = 0;
         var _loc30_:Unit = null;
         var _loc31_:* = false;
         var _loc32_:§_-U4§ = null;
         var _loc33_:* = 0;
         var _loc34_:* = 0;
         var _loc35_:* = NaN;
         var _loc36_:* = NaN;
         _loc37_;
         if(this.myTurn)
         {
            _loc38_;
            if(this.turnState == "shoot")
            {
               _loc38_;
               _loc38_;
               this.dragging = false;
               _loc37_;
               _loc38_;
               _loc38_;
               _loc2_ = this.screen.mouseX - this.§_-yD§.x;
               _loc38_;
               _loc38_;
               _loc3_ = this.screen.mouseY - this.§_-yD§.y;
               _loc4_ = this.units[this.currentUnit].startPoint();
               _loc5_ = _loc4_.x - this.screen.mouseX;
               _loc38_;
               _loc38_;
               _loc6_ = _loc4_.y - this.screen.mouseY;
               _loc38_;
               _loc38_;
               _loc37_;
               _loc7_ = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
               if(_loc7_ >= 30)
               {
                  _loc38_;
                  _loc38_;
                  _loc38_;
                  _loc38_;
                  _loc38_;
                  _loc38_;
                  if(this.units[this.currentUnit].animState != SafeGlobal.ANIM_UNIT_TABLET)
                  {
                     _loc38_;
                     this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_TABLET]);
                     _loc38_;
                     _loc38_;
                  }
                  _loc38_;
                  _loc13_ = 1.0E15;
                  _loc19_ = new Point(0,0);
                  _loc24_ = new Point(0,0);
                  _loc25_ = new Point(0,0);
                  _loc26_ = [];
                  _loc37_;
                  _loc37_;
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
                     _loc37_;
                     _loc21_ = this.planets[_loc27_];
                     _loc38_;
                     _loc38_;
                     _loc38_;
                     _loc38_;
                     if(!_loc21_.sun && !_loc21_.blackHole)
                     {
                        _loc37_;
                        _loc38_;
                        _loc33_ = 0;
                        _loc37_;
                        while(_loc33_ < _loc21_.shapes.length)
                        {
                           _loc22_ = this.planets[_loc27_].shapes[_loc33_];
                           _loc37_;
                           _loc37_;
                           _loc34_ = 0;
                           _loc38_;
                           while(_loc34_ < _loc22_.curves.length)
                           {
                              _loc23_ = _loc22_.curves[_loc34_];
                              _loc38_;
                              _loc38_;
                              _loc37_;
                              _loc37_;
                              _loc11_ = _loc23_.x - this.screen.mouseX;
                              _loc38_;
                              _loc38_;
                              _loc37_;
                              _loc37_;
                              _loc12_ = _loc23_.y - this.screen.mouseY;
                              _loc37_;
                              _loc35_ = this.§_-cl§(this.§_-HM§(Math.atan2(_loc12_,_loc11_)));
                              _loc37_;
                              _loc38_;
                              _loc36_ = this.§_-cl§(this.§_-HM§(_loc35_ + this.PI));
                              if(this.§_-ag§(_loc35_,_loc23_.startAngle,_loc23_.endAngle))
                              {
                                 _loc38_;
                                 _loc38_;
                                 _loc26_.push([_loc27_,_loc33_,_loc34_,_loc35_]);
                              }
                              else
                              {
                                 _loc26_.push([_loc27_,_loc33_,_loc34_,_loc23_.startAngle]);
                                 _loc37_;
                                 _loc26_.push([_loc27_,_loc33_,_loc34_,_loc23_.endAngle]);
                              }
                              if(this.§_-ag§(_loc36_,_loc23_.startAngle,_loc23_.endAngle))
                              {
                                 _loc26_.push([_loc27_,_loc33_,_loc34_,_loc36_]);
                                 _loc38_;
                                 _loc38_;
                              }
                              else
                              {
                                 _loc26_.push([_loc27_,_loc33_,_loc34_,_loc23_.startAngle]);
                                 _loc26_.push([_loc27_,_loc33_,_loc34_,_loc23_.endAngle]);
                              }
                              _loc34_++;
                           }
                           _loc38_;
                           _loc33_++;
                        }
                        _loc38_;
                     }
                     _loc27_++;
                  }
                  _loc37_;
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
                     _loc38_;
                     _loc38_;
                     _loc8_ = this.screen.mouseX - _loc19_.x;
                     _loc37_;
                     _loc37_;
                     _loc9_ = this.screen.mouseY - _loc19_.y;
                     _loc37_;
                     _loc38_;
                     _loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
                     _loc38_;
                     _loc38_;
                     if((Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) < _loc13_)
                     {
                        _loc13_ = _loc10_;
                        _loc38_;
                        _loc28_ = _loc29_;
                        _loc38_;
                        _loc38_;
                     }
                     _loc29_++;
                  }
                  _loc38_;
                  _loc38_;
                  _loc14_ = _loc26_[_loc28_][0];
                  _loc37_;
                  _loc37_;
                  _loc15_ = _loc26_[_loc28_][1];
                  _loc16_ = _loc26_[_loc28_][2];
                  _loc38_;
                  _loc38_;
                  _loc17_ = int(_loc26_[_loc28_][3] * 100000);
                  this.sendTeleportTo(this.currentTime,this.currentWeapon,_loc14_,_loc15_,_loc16_,_loc17_);
                  this.§_-M2§();
                  _loc30_ = this.units[this.currentUnit];
                  _loc38_;
                  this.addEffect(SafeGlobal.EFFECTS_TELEPORTOUT,_loc30_.iX,_loc30_.iY,_loc30_.rotation,_loc30_);
                  _loc38_;
                  _loc38_;
                  _loc31_ = false;
                  if(this.currentWeapon == SafeGlobal.§_-us§[0])
                  {
                     _loc31_ = true;
                     _loc37_;
                  }
                  this.teleportTo(this.currentTime,_loc30_,_loc14_,_loc15_,_loc16_,_loc17_,_loc31_);
                  this.turnState = "retreat";
                  _loc38_;
                  this.§_-Nb§[this.currentUnit].makeUnselected();
                  this.§_-X8§();
                  this.simManager.§_-Pa§("TELEDRAGSTOP");
                  this.§_-lc§ = 0;
                  _loc32_ = new §_-U4§(SafeGlobal.SIMEVENT_ENDTURN,this.currentTime + 20,null);
                  _loc38_;
                  _loc37_;
                  this.simManager.addObject(_loc32_);
                  _loc38_;
                  this.§_-MT§ = this.currentTime;
                  this.§_-Jz§.startRetreat(this.currentTime - this.§_-Kp§);
                  this.simManager.startRetreat(this.currentTime - this.§_-Kp§);
               }
               else
               {
                  this.§_-se§(this.units[this.currentUnit]);
               }
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-2I§);
               _loc38_;
               stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
               if(this.screen.contains(this.§_-Ho§))
               {
                  _loc38_;
                  _loc38_;
                  this.screen.removeChild(this.§_-Ho§);
               }
            }
            else
            {
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-2I§);
               _loc37_;
               stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
               _loc38_;
               this.dragging = false;
               _loc37_;
               this.§_-fp§(this.§_-OZ§);
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
         var _loc7_:§_-U4§ = null;
         if(this.myTurn)
         {
            _loc8_;
            if(this.turnState == "shoot")
            {
               _loc8_;
               _loc8_;
               this.dragging = false;
               this.screen.removeChild(this.§_-na§);
               _loc9_;
               this.camera.removeTarget(this.§_-na§);
               this.camera.addTarget(this.units[this.currentUnit],-1,"incomingDragStop");
               _loc9_;
               this.§_-OZ§ = SafeGlobal.CLEANUP_NONE;
               _loc9_;
               _loc9_;
               _loc9_;
               _loc9_;
               _loc9_;
               _loc2_ = mouseX - 400;
               _loc8_;
               _loc9_;
               _loc9_;
               _loc9_;
               _loc9_;
               _loc3_ = mouseY - 300;
               _loc4_ = Math.atan2(_loc3_,_loc2_);
               _loc8_;
               _loc8_;
               _loc5_ = Math.round(_loc4_ * 180 / this.PI);
               this.sendIncoming(this.currentTime,this.currentWeapon,_loc5_);
               this.§_-M2§();
               _loc9_;
               _loc6_ = this.units[this.currentUnit];
               this.incoming(this.currentTime,this.currentWeapon,_loc5_);
               _loc9_;
               _loc9_;
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.incomingDragStop);
               stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
               this.turnState = "retreat";
               _loc8_;
               _loc8_;
               this.§_-Nb§[this.currentUnit].makeUnselected();
               this.§_-X8§();
               this.simManager.§_-Pa§("INCOMINGDRAGSTOP");
               this.§_-lc§ = 0;
               _loc7_ = new §_-U4§(SafeGlobal.SIMEVENT_ENDTURN,this.currentTime + this.§_-Kp§,null);
               _loc9_;
               _loc9_;
               _loc9_;
               this.simManager.addObject(_loc7_);
               _loc9_;
               this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
               _loc9_;
               _loc9_;
               this.§_-MT§ = this.currentTime;
               _loc9_;
               this.§_-Jz§.startRetreat(this.currentTime);
               _loc9_;
               this.simManager.startRetreat(this.currentTime);
            }
            else
            {
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.incomingDragStop);
               stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
               _loc8_;
               _loc8_;
               this.dragging = false;
               this.§_-fp§(this.§_-OZ§);
            }
         }
      }
      
      public function §_-eZ§(param1:MouseEvent) : *
      {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:Point = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Unit = null;
         var _loc9_:§_-U4§ = null;
         _loc11_;
         _loc11_;
         if(this.myTurn)
         {
            _loc11_;
            if(this.turnState == "shoot")
            {
               this.dragging = false;
               _loc10_;
               _loc11_;
               _loc2_ = this.screen.mouseX - this.§_-yD§.x;
               _loc10_;
               _loc10_;
               _loc3_ = this.screen.mouseY - this.§_-yD§.y;
               _loc4_ = this.units[this.currentUnit].startPoint();
               _loc10_;
               _loc10_;
               _loc10_;
               _loc5_ = _loc4_.x - this.screen.mouseX;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc6_ = _loc4_.y - this.screen.mouseY;
               _loc10_;
               _loc10_;
               _loc7_ = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
               if(_loc7_ >= 30)
               {
                  this.sendMelee(this.currentTime,this.currentWeapon);
                  _loc10_;
                  this.§_-M2§();
                  _loc8_ = this.units[this.currentUnit];
                  _loc10_;
                  this.melee(this.currentTime,this.currentWeapon);
                  this.turnState = "retreat";
                  this.§_-Nb§[this.currentUnit].makeUnselected();
                  _loc10_;
                  _loc10_;
                  this.§_-X8§();
                  _loc11_;
                  _loc11_;
                  this.simManager.§_-Pa§("MELEEDRAGSTOP");
                  this.§_-lc§ = 0;
                  _loc9_ = new §_-U4§(SafeGlobal.SIMEVENT_ENDTURN,this.currentTime + this.§_-Kp§,null);
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  this.simManager.addObject(_loc9_);
                  _loc11_;
                  _loc11_;
                  this.§_-MT§ = this.currentTime;
                  _loc10_;
                  this.§_-Jz§.startRetreat(this.currentTime);
                  _loc11_;
                  this.simManager.startRetreat(this.currentTime);
               }
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-eZ§);
               _loc11_;
               _loc11_;
               stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
            }
            else
            {
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-eZ§);
               _loc11_;
               _loc11_;
               stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
               this.dragging = false;
               this.§_-fp§(this.§_-OZ§);
            }
         }
      }
      
      public function melee(param1:int, param2:int) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(param2 == SafeGlobal.WEAPONINFO_SPACEBALLBAT[0])
         {
            this.§_-tb§(param1);
            _loc3_;
            _loc3_;
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            if(param2 == SafeGlobal.WEAPONINFO_TAZER[0])
            {
               this.§_-Li§(param1);
               _loc4_;
            }
            else
            {
               _loc4_;
               _loc4_;
               _loc3_;
               _loc3_;
               _loc4_;
               _loc4_;
               if(param2 == SafeGlobal.WEAPONINFO_FIREPUNCH[0])
               {
                  _loc4_;
                  this.§_-9F§(param1);
               }
               else if(param2 == SafeGlobal.§_-OV§[0])
               {
                  _loc3_;
                  this.§_-Qg§(param1);
               }
               
            }
         }
      }
      
      public function §_-tb§(param1:int) : *
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc2_:Array = null;
         var _loc3_:Point = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         _loc8_;
         this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_SPACEBALLSWING,SafeGlobal.ANIM_UNIT_BOB]);
         _loc2_ = this.§_-ce§(this.units[this.currentUnit]);
         _loc7_;
         if(_loc2_.length > 0)
         {
            _loc7_;
            _loc7_;
            _loc6_ = 0;
            while(_loc6_ < _loc2_.length)
            {
               _loc3_ = _loc2_[_loc6_].startPoint();
               _loc8_;
               _loc8_;
               _loc7_;
               _loc8_;
               _loc8_;
               _loc7_;
               _loc8_;
               _loc8_;
               _loc4_ = this.units[this.currentUnit].facing * 800 * Math.cos(this.units[this.currentUnit].iR - this.PI / 8 * this.units[this.currentUnit].facing);
               _loc8_;
               _loc8_;
               _loc7_;
               _loc5_ = this.units[this.currentUnit].facing * 800 * Math.sin(this.units[this.currentUnit].iR - this.PI / 8 * this.units[this.currentUnit].facing);
               _loc8_;
               this.addUnitProjectile(_loc3_.x,_loc3_.y,_loc4_,_loc5_,param1,_loc2_[_loc6_],true);
               if(_loc2_[_loc6_].poison == 0)
               {
                  _loc8_;
                  _loc2_[_loc6_].hidePoison();
               }
               _loc2_[_loc6_].hideMe();
               _loc2_[_loc6_].takeDamage(SafeGlobal.MELEEDAMAGE_SPACEBALLBAT);
               _loc8_;
               if(_loc2_[_loc6_].health > 0)
               {
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  this.projectiles[this.projectiles.length - 1].init(_loc2_[_loc6_].costume.spriteSheets[SafeGlobal.ANIM_UNIT_FLYING]);
                  _loc2_[_loc6_].newAnimState([SafeGlobal.ANIM_UNIT_FLYING]);
                  _loc7_;
               }
               else
               {
                  _loc7_;
                  _loc8_;
                  _loc8_;
                  _loc7_;
                  this.projectiles[this.projectiles.length - 1].init(_loc2_[_loc6_].costume.spriteSheets[SafeGlobal.ANIM_UNIT_FLYINGDEAD]);
                  _loc2_[_loc6_].newAnimState([SafeGlobal.ANIM_UNIT_FLYINGDEAD]);
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  _loc8_;
                  _loc8_;
                  this.projectiles[this.projectiles.length - 1].orientToPath = false;
                  this.projectiles[this.projectiles.length - 1].spin = 4;
                  _loc2_[_loc6_].fire = false;
                  _loc8_;
                  _loc8_;
               }
               _loc6_++;
            }
            _loc8_;
            _loc8_;
            _loc7_;
            _loc8_;
            _loc8_;
            SoundManager.§_-Oc§(SafeGlobal.FX_PUNCH,(this.simOnly) || (this.costumeCacheOnly));
         }
      }
      
      public function §_-Li§(param1:int) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Array = null;
         var _loc3_:* = 0;
         _loc5_;
         this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_TAZERJAB,SafeGlobal.ANIM_UNIT_BOB]);
         _loc2_ = this.§_-ce§(this.units[this.currentUnit]);
         _loc4_;
         _loc4_;
         if(_loc2_.length > 0)
         {
            _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               _loc2_[_loc3_].newAnimState([SafeGlobal.ANIM_UNIT_TAZED,SafeGlobal.ANIM_UNIT_BOB]);
               _loc2_[_loc3_].takeDamage(SafeGlobal.MELEEDAMAGE_TAZER);
               _loc5_;
               _loc5_;
               if(_loc2_[_loc3_].health <= 0)
               {
                  SafeGlobal.GAME.addEffect(SafeGlobal.§_-sr§,_loc2_[_loc3_].x,_loc2_[_loc3_].y,_loc2_[_loc3_].rotation,_loc2_[_loc3_]);
                  this.removeUnit(_loc2_[_loc3_]);
                  this.updateTeamHealths();
               }
               _loc3_++;
            }
            _loc4_;
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            SoundManager.§_-Oc§(SafeGlobal.FX_ELECTROCUTE,(this.simOnly) || (this.costumeCacheOnly));
         }
      }
      
      public function §_-Qg§(param1:int) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Array = null;
         var _loc3_:* = 0;
         _loc4_;
         _loc4_;
         this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_ENERGYSWORD,SafeGlobal.ANIM_UNIT_BOB]);
         _loc2_ = this.§_-ce§(this.units[this.currentUnit]);
         _loc5_;
         _loc5_;
         if(_loc2_.length > 0)
         {
            _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               _loc2_[_loc3_].newAnimState([SafeGlobal.ANIM_UNIT_TAZED,SafeGlobal.ANIM_UNIT_BOB]);
               _loc4_;
               _loc4_;
               _loc2_[_loc3_].takeDamage(SafeGlobal.§_-D5§);
               _loc5_;
               _loc5_;
               if(_loc2_[_loc3_].health <= 0)
               {
                  _loc5_;
                  _loc5_;
                  SafeGlobal.GAME.addEffect(SafeGlobal.§_-sr§,_loc2_[_loc3_].x,_loc2_[_loc3_].y,_loc2_[_loc3_].rotation,_loc2_[_loc3_]);
                  this.removeUnit(_loc2_[_loc3_]);
                  this.updateTeamHealths();
               }
               _loc3_++;
               _loc4_;
               _loc4_;
            }
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            SoundManager.§_-Oc§(SafeGlobal.FX_ELECTROCUTE,(this.simOnly) || (this.costumeCacheOnly));
         }
      }
      
      public function §_-9F§(param1:int) : *
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc2_:Array = null;
         var _loc3_:Point = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         _loc7_;
         _loc7_;
         this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_UPPERCUT,SafeGlobal.ANIM_UNIT_BOB]);
         _loc2_ = this.§_-ce§(this.units[this.currentUnit]);
         _loc7_;
         _loc7_;
         if(_loc2_.length > 0)
         {
            _loc8_;
            _loc6_ = 0;
            while(_loc6_ < _loc2_.length)
            {
               _loc3_ = _loc2_[_loc6_].startPoint();
               _loc7_;
               _loc7_;
               _loc7_;
               _loc8_;
               _loc7_;
               _loc8_;
               _loc4_ = this.units[this.currentUnit].facing * 400 * Math.cos(this.units[this.currentUnit].iR - this.PI / 4 * this.units[this.currentUnit].facing);
               _loc8_;
               _loc8_;
               _loc8_;
               _loc7_;
               _loc7_;
               _loc5_ = this.units[this.currentUnit].facing * 400 * Math.sin(this.units[this.currentUnit].iR - this.PI / 4 * this.units[this.currentUnit].facing);
               _loc8_;
               _loc8_;
               this.addUnitProjectile(_loc3_.x,_loc3_.y,_loc4_,_loc5_,param1,_loc2_[_loc6_],true);
               _loc8_;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc7_;
               _loc7_;
               this.projectiles[this.projectiles.length - 1].init(_loc2_[_loc6_].costume.spriteSheets[SafeGlobal.ANIM_UNIT_FLYING]);
               _loc7_;
               _loc2_[_loc6_].newAnimState([SafeGlobal.ANIM_UNIT_FLYING]);
               _loc8_;
               _loc7_;
               _loc8_;
               this.projectiles[this.projectiles.length - 1].animStep = -1;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc8_;
               _loc8_;
               _loc8_;
               this.projectiles[this.projectiles.length - 1].unit.newAnimState([SafeGlobal.ANIM_UNIT_FLYING]);
               _loc8_;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc7_;
               _loc7_;
               this.projectiles[this.projectiles.length - 1].setupEmittors(SafeGlobal.TRAILTYPE_NONE,[]);
               _loc8_;
               _loc8_;
               this.projectiles[this.projectiles.length - 1].showFire();
               if(_loc2_[_loc6_].poison == 0)
               {
                  _loc8_;
                  _loc2_[_loc6_].hidePoison();
               }
               _loc2_[_loc6_].hideMe();
               _loc2_[_loc6_].takeDamage(SafeGlobal.MELEEDAMAGE_FIREPUNCH);
               _loc7_;
               _loc7_;
               _loc2_[_loc6_].fire = true;
               _loc7_;
               _loc7_;
               _loc2_[_loc6_].fireCount = 0;
               _loc6_++;
            }
            _loc7_;
            _loc7_;
            _loc7_;
            _loc8_;
            _loc8_;
            _loc7_;
            _loc7_;
            SoundManager.§_-Oc§(SafeGlobal.FX_PUNCH,(this.simOnly) || (this.costumeCacheOnly));
         }
      }
      
      public function §_-ce§(param1:Unit) : *
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
         _loc2_ = param1.§_-ea§();
         _loc3_ = new Point(_loc2_.x + param1.facing * 40 * Math.cos(param1.iR),_loc2_.y + param1.facing * 40 * Math.sin(param1.iR));
         _loc6_ = [];
         _loc9_;
         _loc9_;
         _loc7_ = 0;
         while(_loc7_ < this.units.length)
         {
            _loc9_;
            _loc9_;
            _loc10_;
            _loc10_;
            _loc10_;
            if(!(this.units[_loc7_] == param1) && !this.units[_loc7_].dead)
            {
               _loc10_;
               _loc4_ = new Point(this.units[_loc7_].iX,this.units[_loc7_].iY);
               _loc5_ = this.units[_loc7_].topPoint();
               _loc8_ = this.§_-Ow§(_loc2_,_loc3_,_loc4_,_loc5_);
               if(_loc8_)
               {
                  _loc9_;
                  _loc9_;
                  _loc6_.push(this.units[_loc7_]);
               }
            }
            _loc7_++;
            _loc10_;
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
         _loc7_;
         _loc4_ = param3 * this.PI / 180;
         _loc7_;
         _loc5_ = this.§_-cl§(100 * Math.cos(_loc4_ + this.PI));
         _loc6_ = this.§_-cl§(100 * Math.sin(_loc4_ + this.PI));
         _loc8_;
         _loc8_;
         _loc8_;
         _loc7_;
         _loc7_;
         _loc8_;
         if(param2 == SafeGlobal.WEAPONINFO_METEORSTRIKE[0])
         {
            this.addMeteors(SafeGlobal.INCOMINGINFO_METEORSTRIKE,_loc5_,_loc6_,param1,param3);
            _loc7_;
         }
         else
         {
            _loc7_;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc8_;
            if(param2 == SafeGlobal.WEAPONINFO_METEORSHOWER[0])
            {
               this.addMeteors(SafeGlobal.INCOMINGINFO_METEORSHOWER,_loc5_,_loc6_,param1,param3);
            }
            else
            {
               _loc7_;
               _loc7_;
               _loc7_;
               _loc7_;
               if(param2 == SafeGlobal.WEAPONINFO_METEORSTORM[0])
               {
                  _loc8_;
                  this.addMeteors(SafeGlobal.INCOMINGINFO_METEORSTORM,_loc5_,_loc6_,param1,param3);
                  _loc7_;
                  _loc7_;
               }
               else if(param2 == SafeGlobal.§_-22§[0])
               {
                  this.addMeteors(SafeGlobal.§_-m1§,_loc5_,_loc6_,param1,param3);
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
         _loc31_;
         _loc30_;
         _loc30_;
         _loc6_ = param1[0];
         _loc31_;
         _loc31_;
         _loc30_;
         _loc30_;
         _loc31_;
         _loc31_;
         _loc7_ = param1[1];
         _loc30_;
         _loc31_;
         _loc31_;
         _loc31_;
         _loc8_ = param1[2];
         _loc31_;
         _loc31_;
         _loc30_;
         _loc30_;
         _loc31_;
         _loc30_;
         _loc30_;
         _loc9_ = param1[3];
         _loc31_;
         _loc31_;
         _loc31_;
         _loc31_;
         _loc31_;
         _loc31_;
         _loc10_ = param1[4];
         _loc31_;
         _loc11_ = param1[5];
         _loc30_;
         _loc30_;
         _loc14_ = 0;
         _loc23_ = [];
         _loc31_;
         _loc31_;
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
            _loc31_;
            _loc12_ = Number(this.§_-fz§.substr(_loc14_,1));
            _loc30_;
            _loc30_;
            _loc30_;
            _loc30_;
            _loc30_;
            _loc30_;
            _loc30_;
            _loc15_ = this.§_-cl§(_loc12_ * 0.11 * _loc6_);
            _loc14_++;
            _loc30_;
            _loc30_;
            _loc13_ = Number(this.§_-fz§.substr(_loc14_,1));
            _loc30_;
            _loc30_;
            _loc31_;
            _loc31_;
            _loc30_;
            _loc30_;
            _loc31_;
            _loc16_ = this.§_-cl§(_loc13_ * 0.11 * _loc7_);
            _loc14_++;
            _loc31_;
            _loc31_;
            _loc31_;
            _loc31_;
            _loc31_;
            _loc17_ = _loc15_ - _loc6_ / 2;
            _loc31_;
            _loc31_;
            _loc30_;
            _loc30_;
            _loc31_;
            _loc30_;
            _loc30_;
            _loc18_ = _loc16_ - _loc7_ / 2;
            _loc21_ = this.§_-cl§(Math.atan2(_loc18_,_loc17_));
            _loc22_ = this.§_-cl§(Math.sqrt(_loc17_ * _loc17_ + _loc18_ * _loc18_));
            _loc30_;
            _loc30_;
            _loc23_.push([_loc21_,_loc22_,SafeGlobal.PROJTYPE_METEORSMALL]);
            _loc30_;
            _loc24_++;
            _loc30_;
            _loc30_;
         }
         _loc30_;
         _loc31_;
         _loc31_;
         _loc25_ = 0;
         _loc30_;
         while(true)
         {
            _loc31_;
            _loc31_;
            if(_loc25_ >= _loc9_)
            {
               break;
            }
            _loc31_;
            _loc12_ = Number(this.§_-fz§.substr(_loc14_,1));
            _loc31_;
            _loc30_;
            _loc30_;
            _loc30_;
            _loc30_;
            _loc30_;
            _loc30_;
            _loc15_ = this.§_-cl§(_loc12_ * 0.11 * _loc6_);
            _loc14_++;
            _loc13_ = Number(this.§_-fz§.substr(_loc14_,1));
            _loc30_;
            _loc31_;
            _loc31_;
            _loc31_;
            _loc16_ = this.§_-cl§(_loc13_ * 0.11 * _loc7_);
            _loc30_;
            _loc30_;
            _loc14_++;
            _loc31_;
            _loc31_;
            _loc31_;
            _loc17_ = _loc15_ - _loc6_ / 2;
            _loc30_;
            _loc30_;
            _loc31_;
            _loc31_;
            _loc18_ = _loc16_ - _loc7_ / 2;
            _loc30_;
            _loc31_;
            _loc21_ = this.§_-cl§(Math.atan2(_loc18_,_loc17_));
            _loc30_;
            _loc22_ = this.§_-cl§(Math.sqrt(_loc17_ * _loc17_ + _loc18_ * _loc18_));
            _loc23_.push([_loc21_,_loc22_,SafeGlobal.PROJTYPE_METEORMEDIUM]);
            _loc31_;
            _loc31_;
            _loc25_++;
            _loc30_;
         }
         _loc26_ = 0;
         _loc31_;
         _loc31_;
         while(true)
         {
            _loc31_;
            if(_loc26_ >= _loc10_)
            {
               break;
            }
            _loc31_;
            _loc12_ = Number(this.§_-fz§.substr(_loc14_,1));
            _loc31_;
            _loc31_;
            _loc31_;
            _loc30_;
            _loc30_;
            _loc30_;
            _loc15_ = this.§_-cl§(_loc12_ * 0.11 * _loc6_);
            _loc30_;
            _loc14_++;
            _loc31_;
            _loc13_ = Number(this.§_-fz§.substr(_loc14_,1));
            _loc30_;
            _loc31_;
            _loc30_;
            _loc30_;
            _loc30_;
            _loc16_ = this.§_-cl§(_loc13_ * 0.11 * _loc7_);
            _loc31_;
            _loc14_++;
            _loc30_;
            _loc30_;
            _loc30_;
            _loc30_;
            _loc31_;
            _loc31_;
            _loc31_;
            _loc17_ = _loc15_ - _loc6_ / 2;
            _loc31_;
            _loc31_;
            _loc18_ = _loc16_ - _loc7_ / 2;
            _loc31_;
            _loc31_;
            _loc21_ = this.§_-cl§(Math.atan2(_loc18_,_loc17_));
            _loc30_;
            _loc22_ = this.§_-cl§(Math.sqrt(_loc17_ * _loc17_ + _loc18_ * _loc18_));
            _loc23_.push([_loc21_,_loc22_,SafeGlobal.PROJTYPE_METEORLARGE]);
            _loc30_;
            _loc30_;
            _loc26_++;
            _loc30_;
         }
         _loc31_;
         _loc31_;
         _loc30_;
         _loc25_ = 0;
         _loc30_;
         while(true)
         {
            _loc31_;
            _loc31_;
            if(_loc25_ >= _loc11_)
            {
               break;
            }
            _loc12_ = Number(this.§_-fz§.substr(_loc14_,1));
            _loc30_;
            _loc31_;
            _loc31_;
            _loc31_;
            _loc31_;
            _loc31_;
            _loc31_;
            _loc15_ = this.§_-cl§(_loc12_ * 0.11 * _loc6_);
            _loc14_++;
            _loc13_ = Number(this.§_-fz§.substr(_loc14_,1));
            _loc31_;
            _loc30_;
            _loc30_;
            _loc30_;
            _loc30_;
            _loc30_;
            _loc16_ = this.§_-cl§(_loc13_ * 0.11 * _loc7_);
            _loc14_++;
            _loc30_;
            _loc30_;
            _loc30_;
            _loc17_ = _loc15_ - _loc6_ / 2;
            _loc31_;
            _loc30_;
            _loc18_ = _loc16_ - _loc7_ / 2;
            _loc30_;
            _loc21_ = this.§_-cl§(Math.atan2(_loc18_,_loc17_));
            _loc30_;
            _loc30_;
            _loc22_ = this.§_-cl§(Math.sqrt(_loc17_ * _loc17_ + _loc18_ * _loc18_));
            _loc31_;
            _loc23_.push([_loc21_,_loc22_,SafeGlobal.PROJTYPE_MINE]);
            _loc25_++;
         }
         _loc30_;
         _loc30_;
         _loc30_;
         _loc27_ = this.§_-cl§(param5 * this.PI / 180);
         _loc30_;
         _loc30_;
         _loc30_;
         _loc28_ = 0;
         _loc31_;
         _loc31_;
         while(_loc28_ < _loc23_.length)
         {
            _loc31_;
            _loc31_;
            _loc30_;
            _loc30_;
            _loc19_ = this.§_-cl§(Math.cos(_loc23_[_loc28_][0] + _loc27_) * _loc23_[_loc28_][1] + (this.§_-nP§ + 250) * Math.cos(_loc27_) + this.§_-Sr§.x);
            _loc31_;
            _loc31_;
            _loc30_;
            _loc30_;
            _loc30_;
            _loc30_;
            _loc20_ = this.§_-cl§(Math.sin(_loc23_[_loc28_][0] + _loc27_) * _loc23_[_loc28_][1] + (this.§_-nP§ + 250) * Math.sin(_loc27_) + this.§_-Sr§.y);
            _loc31_;
            _loc29_ = 3000;
            _loc31_;
            _loc31_;
            _loc30_;
            _loc30_;
            _loc31_;
            if((this.replay) || (this.simOnly))
            {
               _loc30_;
               _loc30_;
            }
            if(_loc23_[_loc28_][2] == SafeGlobal.PROJTYPE_METEORSMALL)
            {
               _loc30_;
               _loc30_;
               this.addProjectile(_loc19_,_loc20_,param2,param3,param4 + _loc29_,"g,30;e,96,4;d,2,2",false,false);
               _loc31_;
               _loc31_;
               _loc31_;
               _loc31_;
               _loc31_;
               this.projectiles[this.projectiles.length - 1].radius = 10;
               _loc30_;
               _loc30_;
               _loc31_;
               this.projectiles[this.projectiles.length - 1].visible = false;
               _loc31_;
            }
            else if(_loc23_[_loc28_][2] == SafeGlobal.PROJTYPE_METEORMEDIUM)
            {
               this.addProjectile(_loc19_,_loc20_,param2,param3,param4 + _loc29_,"g,35;e,97,5;d,3,4",false,false);
               _loc31_;
               _loc31_;
               _loc30_;
               this.projectiles[this.projectiles.length - 1].radius = 15;
               _loc31_;
               _loc30_;
               this.projectiles[this.projectiles.length - 1].visible = false;
               _loc30_;
               _loc30_;
            }
            else if(_loc23_[_loc28_][2] == SafeGlobal.PROJTYPE_METEORLARGE)
            {
               _loc31_;
               this.addProjectile(_loc19_,_loc20_,param2,param3,param4 + _loc29_,"g,36;e,98,6;d,4,6",false,false);
               this.projectiles[this.projectiles.length - 1].radius = 20;
               _loc30_;
               _loc31_;
               this.projectiles[this.projectiles.length - 1].visible = false;
            }
            else if(_loc23_[_loc28_][2] == SafeGlobal.PROJTYPE_MINE)
            {
               _loc30_;
               _loc30_;
               this.§_-KM§.push(new §_-Iz§(-1,0));
               _loc31_;
               if(!this.simOnly && !this.costumeCacheOnly)
               {
                  this.§_-wd§.addChild(this.§_-KM§[this.§_-KM§.length - 1]);
                  _loc31_;
                  _loc30_;
                  this.§_-KM§[this.§_-KM§.length - 1].init(this.§_-HT§[0]);
               }
               _loc30_;
               this.§_-KM§[this.§_-KM§.length - 1].iX = _loc19_;
               _loc30_;
               _loc30_;
               _loc31_;
               _loc31_;
               this.§_-KM§[this.§_-KM§.length - 1].iY = _loc20_;
               _loc31_;
               this.addMineProjectile(_loc19_,_loc20_,param2,param3,param4 + _loc29_,this.§_-KM§[this.§_-KM§.length - 1]);
               _loc30_;
               _loc30_;
               _loc30_;
               _loc31_;
               this.projectiles[this.projectiles.length - 1].init(this.projGFX[SafeGlobal.WEAPONINFO_MINE[0]]);
               _loc30_;
               _loc30_;
               this.projectiles[this.projectiles.length - 1].visible = false;
               _loc30_;
               _loc30_;
               _loc30_;
               _loc30_;
               this.projectiles[this.projectiles.length - 1].spin = 3 + 2 * Math.random();
               this.projectiles[this.projectiles.length - 1].rotation = 360 * Math.random();
               _loc30_;
               _loc30_;
            }
            
            
            
            _loc28_++;
         }
      }
      
      public function teleportTo(param1:int, param2:Unit, param3:int, param4:int, param5:int, param6:int, param7:Boolean = false) : *
      {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc8_:* = NaN;
         _loc8_ = this.§_-cl§(param6 / 100000);
         if(param2.poison == 0)
         {
            _loc9_;
            _loc9_;
            param2.hidePoison();
            _loc10_;
            _loc10_;
         }
         _loc9_;
         if(param7)
         {
            this.addMineAtPoint(param2.iX,param2.iY,param2.iR,SafeGlobal.MINETYPE_STANDARD,param2.locationPlanet,param2.locationShape,param2.locationCurve,param2.locationCurveX,param2.locationCurveY,param2.locationCurveRadius,param2.locationAngle,param2,param1,false);
            _loc10_;
            _loc10_;
            this.§_-9-§ = 1;
         }
         param2.locationPlanet = param3;
         _loc9_;
         _loc9_;
         param2.locationShape = param4;
         _loc9_;
         param2.locationCurve = param5;
         _loc10_;
         _loc10_;
         param2.locationAngle = _loc8_;
         _loc10_;
         param2.locationCurveX = this.planets[param2.locationPlanet].shapes[param2.locationShape].curves[param2.locationCurve].x;
         param2.locationCurveY = this.planets[param2.locationPlanet].shapes[param2.locationShape].curves[param2.locationCurve].y;
         param2.locationCurveRadius = this.planets[param2.locationPlanet].shapes[param2.locationShape].curves[param2.locationCurve].radius;
         _loc10_;
         _loc10_;
         param2.onJoin = false;
         _loc10_;
         if(this.planets[param3].radioactive > 0)
         {
            param2.showPoison();
         }
         _loc9_;
         _loc9_;
         _loc9_;
         _loc9_;
         _loc9_;
         _loc9_;
         SoundManager.§_-Oc§(SafeGlobal.FX_TELEPORT,(this.simOnly) || (this.costumeCacheOnly));
         if(param7)
         {
            _loc10_;
            this.checkUnitProximity(this.§_-KM§[this.§_-KM§.length - 1],param1);
            _loc9_;
         }
         this.§_-Qp§ = 1;
         param2.newAnimState([SafeGlobal.ANIM_UNIT_TELEPORTIN,SafeGlobal.ANIM_UNIT_BOB]);
         if(this.planets[param2.locationPlanet].shapes[param2.locationShape].curves[param2.locationCurve].origCurve)
         {
            _loc9_;
            _loc9_;
            param2.iR = this.§_-cl§(this.§_-HM§(param2.locationAngle + this.PI / 2));
         }
         else
         {
            param2.iR = this.§_-cl§(this.§_-HM§(param2.locationAngle - this.PI / 2));
         }
         this.§_-yT§(param2);
         this.checkMineProximity(param2,param1);
         _loc9_;
         _loc9_;
         this.checkPowerUpProximity(param2,param1);
      }
      
      public function removeStock(param1:int) : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         _loc6_;
         _loc6_;
         if(param1 > 0)
         {
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc5_;
            _loc5_;
            this.stock[param1]--;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            if(this.stock[param1] < 0)
            {
               _loc5_;
               this.stock[param1] = 0;
            }
         }
      }
      
      public function §_-yT§(param1:SimObject) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:§_-QR§ = null;
         _loc2_ = this.planets[param1.locationPlanet].shapes[param1.locationShape].curves[param1.locationCurve];
         _loc4_;
         _loc3_;
         _loc3_;
         _loc4_;
         param1.iX = this.§_-cl§(_loc2_.x + _loc2_.radius * Math.cos(param1.locationAngle));
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         param1.iY = this.§_-cl§(_loc2_.y + _loc2_.radius * Math.sin(param1.locationAngle));
         _loc3_;
         param1.x = param1.iX;
         param1.y = param1.iY;
         _loc4_;
         param1.rotation = param1.iR * 180 / this.PI;
         param1.updatePoints();
      }
      
      public function §_-HE§(param1:MouseEvent) : *
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc2_:Gate = null;
         var _loc3_:Unit = null;
         var _loc4_:* = 0;
         var _loc5_:§_-U4§ = null;
         _loc9_;
         if(this.myTurn)
         {
            _loc8_;
            _loc8_;
            if(this.turnState == "shoot")
            {
               _loc2_ = this.gates[this.gates.length - 1];
               _loc3_ = this.units[this.currentUnit];
               this.dragging = false;
               _loc2_.§_-E9§(_loc2_.iX,_loc2_.iY,_loc2_.iR);
               _loc2_.placing = false;
               this.§_-M2§();
               _loc9_;
               _loc9_;
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-HE§);
               stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
               _loc8_;
               _loc9_;
               _loc9_;
               this.§_-1R§--;
               _loc8_;
               _loc8_;
               _loc9_;
               this.§_-si§.push(new Array(_loc2_.iX,_loc2_.iY,_loc2_.iR));
               _loc8_;
               if(this.§_-1R§ <= 0)
               {
                  _loc9_;
                  _loc9_;
                  _loc9_;
                  this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
                  _loc9_;
                  if(this.§_-si§.length == 1)
                  {
                     _loc8_;
                     _loc8_;
                     this.sendPlaceGate(this.currentTime,this.currentWeapon,this.§_-si§[0][0],this.§_-si§[0][1],this.§_-si§[0][2]);
                     _loc9_;
                     _loc9_;
                  }
                  else
                  {
                     _loc8_;
                     _loc8_;
                     if(this.§_-si§.length == 2)
                     {
                        this.sendPlaceGate(this.currentTime,this.currentWeapon,this.§_-si§[0][0],this.§_-si§[0][1],this.§_-si§[0][2],this.§_-si§[1][0],this.§_-si§[1][1],this.§_-si§[1][2]);
                        _loc9_;
                        _loc9_;
                        _loc9_;
                        _loc8_;
                        _loc8_;
                        _loc8_;
                        _loc8_;
                        this.gates[this.gates.length - 1].pair = this.gates[this.gates.length - 2];
                        _loc8_;
                        this.gates[this.gates.length - 2].pair = this.gates[this.gates.length - 1];
                     }
                  }
                  _loc4_ = 0;
                  while(_loc4_ < this.§_-si§.length)
                  {
                     _loc9_;
                     _loc9_;
                     _loc9_;
                     _loc9_;
                     this.§_-si§.splice(0,1);
                     _loc4_++;
                  }
                  this.turnState = "retreat";
                  this.§_-Nb§[this.currentUnit].makeUnselected();
                  this.§_-X8§();
                  this.simManager.§_-Pa§("GATEDRAGSTOP");
                  _loc8_;
                  this.§_-lc§ = 0;
                  _loc8_;
                  _loc8_;
                  _loc5_ = new §_-U4§(SafeGlobal.SIMEVENT_ENDTURN,this.currentTime + this.§_-Kp§ - this.timeStep,null);
                  _loc9_;
                  _loc8_;
                  _loc8_;
                  this.simManager.addObject(_loc5_);
                  _loc9_;
                  this.§_-MT§ = this.currentTime;
                  _loc9_;
                  _loc9_;
                  this.§_-Jz§.startRetreat(this.currentTime);
                  _loc8_;
                  _loc8_;
                  this.simManager.startRetreat(this.currentTime);
               }
            }
            else
            {
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-HE§);
               _loc9_;
               _loc9_;
               stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
               _loc9_;
               _loc9_;
               this.dragging = false;
               _loc9_;
               this.§_-fp§(this.§_-OZ§);
            }
         }
      }
      
      public function §_-2B§(param1:MouseEvent) : *
      {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:Point = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Unit = null;
         var _loc9_:§_-U4§ = null;
         if(this.myTurn)
         {
            if(this.turnState == "shoot")
            {
               _loc11_;
               this.dragging = false;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc2_ = this.screen.mouseX - this.§_-yD§.x;
               _loc11_;
               _loc11_;
               _loc3_ = this.screen.mouseY - this.§_-yD§.y;
               _loc4_ = this.units[this.currentUnit].startPoint();
               _loc10_;
               _loc10_;
               _loc10_;
               _loc5_ = _loc4_.x - this.screen.mouseX;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc11_;
               _loc6_ = _loc4_.y - this.screen.mouseY;
               _loc10_;
               _loc10_;
               _loc11_;
               _loc7_ = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
               if(_loc7_ >= 30)
               {
                  _loc10_;
                  _loc10_;
                  _loc11_;
                  _loc8_ = this.units[this.currentUnit];
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  if(this.§_-qH§[0] == SafeGlobal.§_-UH§[0])
                  {
                     _loc11_;
                     _loc11_;
                     this.planets[_loc8_.locationPlanet].activateShield(3,true,true);
                  }
                  else
                  {
                     _loc11_;
                     _loc11_;
                     this.planets[_loc8_.locationPlanet].activateShield(3,false,true);
                  }
                  this.§_-lQ§ = 1;
                  this.sendPlacePlanetGate(this.currentTime,this.currentWeapon);
                  _loc11_;
                  this.§_-M2§();
                  _loc11_;
                  this.turnState = "retreat";
                  this.§_-Nb§[this.currentUnit].makeUnselected();
                  _loc10_;
                  _loc10_;
                  this.§_-X8§();
                  this.simManager.§_-Pa§("PLANETGATEDRAGSTOP");
                  _loc10_;
                  this.§_-lc§ = 0;
                  _loc10_;
                  _loc10_;
                  _loc9_ = new §_-U4§(SafeGlobal.SIMEVENT_ENDTURN,this.currentTime + this.§_-Kp§ - this.timeStep,null);
                  _loc10_;
                  _loc11_;
                  this.simManager.addObject(_loc9_);
                  _loc11_;
                  _loc11_;
                  this.§_-MT§ = this.currentTime;
                  _loc10_;
                  this.§_-Jz§.startRetreat(this.currentTime);
                  _loc10_;
                  _loc10_;
                  this.simManager.startRetreat(this.currentTime);
               }
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-2B§);
               _loc11_;
               _loc11_;
               stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
               _loc11_;
               _loc11_;
               this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
            }
            else
            {
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-2B§);
               stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
               this.dragging = false;
               _loc11_;
               this.§_-fp§(this.§_-OZ§);
            }
         }
      }
      
      public function §_-ck§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         if(this.§_-2M§)
         {
            _loc2_;
            _loc2_;
            if(this.§_-Ds§.contains(this.§_-2M§))
            {
               _loc2_;
               this.§_-Ds§.removeChild(this.§_-2M§);
            }
         }
      }
      
      public function §_-Fz§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         if(!(this.§_-2M§ == null) && !this.§_-Ds§.contains(this.§_-2M§))
         {
            _loc2_;
            this.§_-Ds§.addChild(this.§_-2M§);
         }
      }
      
      public function jiggleUnits(param1:Planet, param2:int) : *
      {
         var _loc13_:* = true;
         var _loc14_:* = false;
         var _loc3_:Unit = null;
         var _loc4_:Mine = null;
         var _loc5_:Shape = null;
         var _loc6_:§_-QR§ = null;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = false;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:Point = null;
         _loc13_;
         _loc13_;
         _loc7_ = 0;
         while(true)
         {
            _loc14_;
            _loc14_;
            _loc14_;
            _loc14_;
            if(_loc7_ >= this.units.length)
            {
               break;
            }
            _loc13_;
            _loc14_;
            _loc14_;
            _loc13_;
            if(!this.units[_loc7_].hidden && !this.units[_loc7_].removed && !this.units[_loc7_].dead)
            {
               _loc13_;
               _loc9_ = false;
               _loc13_;
               _loc14_;
               _loc14_;
               _loc14_;
               _loc3_ = this.units[_loc7_];
               _loc14_;
               _loc14_;
               _loc14_;
               if(this.planets[_loc3_.locationPlanet] == param1)
               {
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  _loc10_ = 0;
                  _loc14_;
                  while(_loc10_ < param1.shapes.length)
                  {
                     _loc5_ = param1.shapes[_loc10_];
                     _loc14_;
                     _loc14_;
                     _loc14_;
                     _loc11_ = 0;
                     _loc13_;
                     while(_loc11_ < _loc5_.curves.length)
                     {
                        _loc6_ = _loc5_.curves[_loc11_];
                        _loc14_;
                        _loc13_;
                        _loc14_;
                        if(_loc3_.locationCurveX == _loc6_.x && _loc3_.locationCurveY == _loc6_.y && _loc3_.locationCurveRadius == _loc6_.radius && (this.§_-ag§(_loc3_.locationAngle,_loc6_.startAngle,_loc6_.endAngle)))
                        {
                           if(_loc3_.locationShape == _loc10_)
                           {
                              _loc14_;
                              _loc14_;
                           }
                           else if(_loc3_.locationCurve == _loc11_)
                           {
                           }
                           
                           _loc3_.locationCurve = _loc11_;
                           _loc14_;
                           _loc14_;
                           _loc3_.locationShape = _loc10_;
                           _loc14_;
                           _loc9_ = true;
                        }
                        else
                        {
                           _loc13_;
                           _loc13_;
                           _loc14_;
                           _loc14_;
                           if(_loc3_.locationCurveX == _loc6_.x && _loc3_.locationCurveY == _loc6_.y && _loc3_.locationCurveRadius == _loc6_.radius)
                           {
                              _loc13_;
                           }
                        }
                        _loc11_++;
                     }
                     _loc14_;
                     _loc10_++;
                  }
                  _loc14_;
                  if(!_loc9_)
                  {
                     _loc12_ = _loc3_.startPoint();
                     _loc13_;
                     this.dynamic(_loc12_.x,_loc12_.y,0,0,10,15,param2);
                  }
               }
            }
            _loc7_++;
         }
         _loc13_;
         _loc14_;
         _loc8_ = 0;
         while(_loc8_ < this.§_-KM§.length)
         {
            _loc13_;
            _loc14_;
            if(this.§_-KM§[_loc8_].roving)
            {
               _loc9_ = false;
               _loc4_ = this.§_-KM§[_loc8_];
               _loc13_;
               _loc14_;
               if(this.planets[_loc4_.locationPlanet] == param1)
               {
                  _loc14_;
                  _loc14_;
                  _loc14_;
                  _loc10_ = 0;
                  _loc13_;
                  _loc13_;
                  while(_loc10_ < param1.shapes.length)
                  {
                     _loc5_ = param1.shapes[_loc10_];
                     _loc14_;
                     _loc14_;
                     _loc13_;
                     _loc13_;
                     _loc11_ = 0;
                     _loc14_;
                     _loc14_;
                     while(_loc11_ < _loc5_.curves.length)
                     {
                        _loc6_ = _loc5_.curves[_loc11_];
                        _loc14_;
                        _loc14_;
                        _loc14_;
                        _loc14_;
                        _loc14_;
                        _loc14_;
                        _loc13_;
                        if(_loc4_.locationCurveX == _loc6_.x && _loc4_.locationCurveY == _loc6_.y && _loc4_.locationCurveRadius == _loc6_.radius && (this.§_-ag§(_loc4_.locationAngle,_loc6_.startAngle,_loc6_.endAngle)))
                        {
                           _loc14_;
                           if(_loc4_.locationShape == _loc10_)
                           {
                              _loc13_;
                           }
                           else if(_loc4_.locationCurve == _loc11_)
                           {
                           }
                           
                           _loc4_.locationCurve = _loc11_;
                           _loc13_;
                           _loc4_.locationShape = _loc10_;
                           _loc14_;
                           _loc9_ = true;
                           _loc13_;
                           _loc13_;
                        }
                        else
                        {
                           _loc13_;
                           if(_loc4_.locationCurveX == _loc6_.x && _loc4_.locationCurveY == _loc6_.y && _loc4_.locationCurveRadius == _loc6_.radius)
                           {
                           }
                        }
                        _loc11_++;
                     }
                     _loc13_;
                     _loc13_;
                     _loc10_++;
                  }
                  _loc13_;
                  _loc13_;
                  if(!_loc9_)
                  {
                     _loc14_;
                     _loc14_;
                     _loc4_.triggerMe(param2,20);
                  }
               }
            }
            _loc8_++;
            _loc13_;
         }
      }
      
      public function §_-ag§(param1:Number, param2:Number, param3:Number) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(param2 == param3)
         {
            _loc5_;
            _loc5_;
            return true;
         }
         _loc5_;
         _loc5_;
         _loc4_;
         _loc4_;
         if(param3 < param2)
         {
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            var param3:Number = this.§_-cl§(param3 + this.PI * 2);
         }
         _loc5_;
         _loc5_;
         _loc4_;
         _loc5_;
         _loc5_;
         _loc5_;
         if(param1 >= param2 && param1 <= param3 || param1 + this.PI * 2 >= param2 && param1 + this.PI * 2 <= param3)
         {
            _loc4_;
            _loc5_;
            return true;
         }
         return false;
      }
      
      public function showSkillShot(param1:int, param2:Number, param3:Number) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.§_-fp§(this.§_-OZ§);
         _loc5_;
         _loc5_;
         _loc4_;
         _loc4_;
         if(!this.simOnly && !this.costumeCacheOnly)
         {
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            if(param1 == SafeGlobal.SKILLMARKER_LONGSHOT)
            {
               this.§_-B4§.push(new §_-kL§(param2,param3));
            }
            else
            {
               _loc5_;
               if(param1 == SafeGlobal.SKILLMARKER_SUPERLONGSHOT)
               {
                  _loc4_;
                  this.§_-B4§.push(new §_-1q§(param2,param3));
                  _loc5_;
                  _loc5_;
               }
               else
               {
                  _loc4_;
                  _loc4_;
                  if(param1 == SafeGlobal.SKILLMARKER_ULTRALONGSHOT)
                  {
                     _loc4_;
                     _loc4_;
                     this.§_-B4§.push(new §_-GP§(param2,param3));
                     _loc4_;
                     _loc4_;
                  }
                  else if(param1 == SafeGlobal.SKILLMARKER_MEGALONGSHOT)
                  {
                     _loc4_;
                     _loc4_;
                     this.§_-B4§.push(new §_-Db§(param2,param3));
                  }
                  else
                  {
                     _loc5_;
                     _loc5_;
                     _loc4_;
                     if(param1 == SafeGlobal.SKILLMARKER_HALFORBIT)
                     {
                        _loc4_;
                        this.§_-B4§.push(new §_-zZ§(param2,param3));
                        _loc4_;
                        _loc4_;
                     }
                     else if(param1 == SafeGlobal.SKILLMARKER_FULLORBIT)
                     {
                        _loc5_;
                        this.§_-B4§.push(new §_-0-0§(param2,param3));
                     }
                     else
                     {
                        _loc4_;
                        _loc4_;
                        if(param1 == SafeGlobal.SKILLMARKER_BOUNCE)
                        {
                           this.§_-B4§.push(new §_-Q2§(param2,param3));
                        }
                        else
                        {
                           _loc5_;
                           if(param1 == SafeGlobal.SKILLMARKER_SUPERBOUNCE)
                           {
                              _loc4_;
                              _loc4_;
                              this.§_-B4§.push(new §_-Qi§(param2,param3));
                           }
                           else
                           {
                              _loc5_;
                              if(param1 == SafeGlobal.SKILLMARKER_ULTRABOUNCE)
                              {
                                 _loc4_;
                                 _loc4_;
                                 this.§_-B4§.push(new §_-FS§(param2,param3));
                              }
                              else
                              {
                                 _loc5_;
                                 _loc5_;
                                 if(param1 == SafeGlobal.SKILLMARKER_MEGABOUNCE)
                                 {
                                    _loc4_;
                                    this.§_-B4§.push(new §_-aC§(param2,param3));
                                 }
                                 else if(param1 == SafeGlobal.SKILLMARKER_DIG)
                                 {
                                    this.§_-B4§.push(new §_-fj§(param2,param3));
                                 }
                                 else if(param1 == SafeGlobal.SKILLMARKER_WORMHOLE)
                                 {
                                    this.§_-B4§.push(new §_-kb§(param2,param3));
                                    _loc5_;
                                    _loc5_;
                                 }
                                 
                                 
                              }
                           }
                        }
                     }
                     
                  }
                  
               }
            }
            this.§_-B4§[this.§_-B4§.length - 1].type = param1;
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
            _loc3_;
            _loc4_;
            _loc4_;
            if((this.projectiles[_loc2_].unit) && this.projectiles[_loc2_].unit == param1)
            {
               _loc4_;
               this.projectiles[_loc2_].showPoisonBubbles();
               _loc3_;
            }
            _loc2_++;
            _loc3_;
         }
      }
      
      public function hidePoisonProjectiles(param1:Unit) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc4_;
         _loc2_ = 0;
         while(_loc2_ < this.projectiles.length)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            if((this.projectiles[_loc2_].unit) && this.projectiles[_loc2_].unit == param1)
            {
               _loc3_;
               _loc3_;
               this.projectiles[_loc2_].hidePoisonBubbles();
               _loc4_;
               _loc4_;
            }
            _loc2_++;
            _loc3_;
         }
      }
      
      public function addProjectile(param1:Number, param2:Number, param3:Number, param4:Number, param5:int, param6:String, param7:Boolean, param8:Boolean = false) : *
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
         _loc9_;
         _loc10_;
         this.projectiles.push(new Projectile(param1,param2,param3,param4,param5,param8,5,[]));
         _loc9_;
         _loc9_;
         this.screen.addChild(this.projectiles[this.projectiles.length - 1]);
         _loc9_;
         _loc9_;
         _loc9_;
         _loc10_;
         _loc10_;
         this.projectiles[this.projectiles.length - 1].useProjString(param6,param7);
         _loc9_;
         _loc9_;
         this.projectiles[this.projectiles.length - 1].hasSmoke = true;
         _loc9_;
         this.simManager.addObject(this.projectiles[this.projectiles.length - 1],"addproj " + param5);
      }
      
      public function §_-b0§() : *
      {
         var _loc1_:* = undefined;
         _loc1_ = getTimer() - this.§_-Y8§;
         return _loc1_;
      }
      
      public function §_-r0§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.sendEndOfTurn(this.§_-b0§());
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
      
      public function §_-B-§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.§_-I8§();
         _loc1_;
         _loc1_;
         this.§_-DZ§ = null;
         _loc1_;
         this.§_-QM§.splice(0);
         _loc2_;
         _loc2_;
         this.§_-D0§.dead = false;
      }
      
      public function displayDropOut(param1:int) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:* = false;
         var _loc3_:* = 0;
         _loc4_;
         _loc4_;
         this.showMessage(this.teams[param1].teamName + " has left the game",SafeGlobal.colour_hex[this.teams[param1].colourID],false);
         _loc4_;
         _loc4_;
         this.teams[param1].droppedOut = true;
         _loc4_;
         _loc4_;
         this.hideBubbles();
         _loc4_;
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
               _loc5_;
               _loc5_;
               _loc4_;
               _loc4_;
               this.units[_loc3_].willCry = true;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               if(_loc3_ == this.currentUnit)
               {
                  _loc5_;
                  _loc2_ = true;
               }
            }
            _loc4_;
            if(_loc3_ == this.currentUnit)
            {
               _loc4_;
               _loc4_;
               this.§_-lc§ = 0;
               _loc5_;
               _loc5_;
               this.§_-L-§ = 1;
               this.hideBubbles();
               _loc5_;
            }
            _loc3_++;
            _loc5_;
            _loc5_;
         }
         _loc5_;
         _loc5_;
         _loc5_;
         this.statuses[param1].alpha = 0.5;
         this.statuses[param1].hideBar();
         this.updateTeamHealths();
         if(!_loc2_)
         {
            this.§_-JW§();
         }
      }
      
      public function displayAfkKick(param1:int) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc4_;
         this.showMessage(this.teams[param1].teamName + " been kicked for being AFK",SafeGlobal.colour_hex[this.teams[param1].colourID],false);
         _loc3_;
         this.teams[param1].droppedOut = true;
         _loc3_;
         _loc3_;
         this.hideBubbles();
         _loc3_;
         _loc3_;
         _loc2_ = 0;
         while(_loc2_ < this.units.length)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            if(this.units[_loc2_].team == param1)
            {
               _loc3_;
               _loc3_;
               _loc4_;
               _loc4_;
               this.units[_loc2_].willCry = true;
               _loc3_;
               _loc3_;
            }
            _loc4_;
            if(_loc2_ == this.currentUnit)
            {
               this.§_-lc§ = 0;
               this.§_-L-§ = 1;
               this.hideBubbles();
            }
            _loc2_++;
         }
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         this.statuses[param1].alpha = 0.5;
         _loc4_;
         _loc4_;
         this.statuses[param1].hideBar();
         this.updateTeamHealths();
      }
      
      public function §_-LM§(param1:int) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.showMessage(this.teams[param1].teamName + " has been eliminated",SafeGlobal.colour_hex[this.teams[param1].colourID],false);
      }
      
      public function addPreviewPoint(param1:Number, param2:Number, param3:int = 0) : *
      {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc4_:Array = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = 0;
         _loc10_;
         if(!this.§_-DZ§)
         {
            _loc11_;
            _loc11_;
            this.§_-DZ§ = new Point(param1,param2);
            _loc11_;
            this.§_-HU§ = this.§_-qj§;
            _loc11_;
            _loc11_;
            this.runningTotal = this.§_-oj§ = 0;
            _loc10_;
            _loc10_;
         }
         else
         {
            _loc10_;
            _loc10_;
            _loc10_;
            _loc5_ = this.§_-DZ§.x - param1;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc6_ = this.§_-DZ§.y - param2;
            _loc7_ = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
            _loc10_;
            _loc11_;
            this.§_-Sk§ = _loc5_ / _loc7_;
            _loc10_;
            this.§_-pW§ = _loc6_ / _loc7_;
            this.§_-oj§ = this.runningTotal;
            _loc10_;
            this.runningTotal = this.runningTotal + _loc7_;
            _loc8_ = 0;
            while(this.§_-HU§ <= this.runningTotal)
            {
               _loc10_;
               this.§_-gV§ = this.§_-HU§ - this.§_-oj§;
               this.§_-fb§ = this.§_-DZ§.x - this.§_-gV§ * this.§_-Sk§;
               this.§_-m-§ = this.§_-DZ§.y - this.§_-gV§ * this.§_-pW§;
               if(!_loc4_)
               {
                  _loc11_;
                  _loc4_ = [];
               }
               _loc4_.push(new §_-nx§(this.§_-fb§,this.§_-m-§,this.§_-HU§ + param3));
               _loc10_;
               this.§_-HU§ = this.§_-HU§ + this.§_-qj§;
               _loc11_;
               _loc11_;
               _loc8_++;
            }
            _loc10_;
         }
         this.§_-DZ§.x = param1;
         _loc11_;
         this.§_-DZ§.y = param2;
         _loc10_;
         if(_loc4_)
         {
            return _loc4_;
         }
         return this.§_-f§;
      }
      
      public function explodeBarrel(param1:Barrel, param2:int) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         this.addExplosion(param1.iX,param1.iY,param1.explosionRadius,param1.outerRadius,param1.damage,param1.damage,param2);
         _loc4_;
         _loc4_;
         this.§_-ac§(param1);
      }
      
      public function explodePowerUp(param1:PowerUp, param2:int) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         this.addExplosion(param1.iX,param1.iY,param1.explosionRadius,param1.outerRadius,param1.damage,param1.damage,param2);
         _loc4_;
         this.§_-L9§(param1);
      }
      
      public function stopRoverFx(param1:int) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         SoundManager.§_-sQ§(SafeGlobal.FX_ROVER,param1);
      }
      
      public function explodeSkyMine(param1:§_-3e§) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.addExplosion(param1.iX,param1.iY,param1.explosionRadius,param1.outerRadius,param1.damage,param1.damage,param1.lastSimTime);
         _loc2_;
         this.simManager.removeObject(param1);
         _loc2_;
         _loc2_;
         this.§_-sD§(param1);
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
         _loc19_;
         _loc18_;
         _loc18_;
         _loc19_;
         _loc19_;
         if(param1.damage > 0)
         {
            _loc19_;
            _loc19_;
            this.addExplosion(param1.iX,param1.iY,param1.explosionRadius,param1.outerRadius,param1.damage,param1.damage,param1.lastSimTime);
            _loc19_;
            _loc19_;
         }
         if(param1.payloadCount > 0)
         {
            _loc19_;
            _loc19_;
            _loc19_;
            _loc19_;
            _loc19_;
            _loc19_;
            _loc19_;
            _loc18_;
            _loc19_;
            _loc5_ = this.PI / 2 / param1.payloadCount;
            _loc19_;
            _loc19_;
            _loc18_;
            _loc6_ = param1.iR - 3 * this.PI / 4;
            _loc7_ = new Point(param1.iX,param1.iY);
            _loc18_;
            _loc8_ = 0;
            while(_loc8_ < param1.payloadCount)
            {
               _loc19_;
               _loc19_;
               _loc19_;
               _loc18_;
               _loc9_ = _loc5_ * _loc8_;
               _loc18_;
               _loc18_;
               _loc10_ = this.§_-cl§(200 * Math.cos(_loc6_ + _loc9_));
               _loc19_;
               _loc19_;
               _loc11_ = this.§_-cl§(200 * Math.sin(_loc6_ + _loc9_));
               this.addProjectile(param1.iX,param1.iY,_loc10_,_loc11_,param1.lastSimTime,param1.§_-fs§,false,false);
               _loc19_;
               _loc19_;
               _loc19_;
               _loc19_;
               _loc19_;
               _loc19_;
               _loc18_;
               this.projectiles[this.projectiles.length - 1].initialPlanetCheck = true;
               _loc18_;
               this.projectiles[this.projectiles.length - 1].initialPoint = _loc7_;
               _loc19_;
               _loc8_++;
               _loc18_;
            }
         }
         _loc19_;
         if(param1.drillProj)
         {
            _loc12_ = this.§_-cl§(200 * Math.cos(param1.iR + this.PI / 2));
            _loc18_;
            _loc18_;
            _loc19_;
            _loc13_ = this.§_-cl§(200 * Math.sin(param1.iR + this.PI / 2));
            _loc19_;
            _loc19_;
            _loc19_;
            _loc19_;
            _loc14_ = this.§_-cl§(param1.iX - Math.cos(param1.iR + this.PI / 2));
            _loc18_;
            _loc18_;
            _loc19_;
            _loc19_;
            _loc15_ = this.§_-cl§(param1.iY - Math.sin(param1.iR + this.PI / 2));
            this.addProjectile(_loc14_,_loc15_,_loc12_,_loc13_,param1.lastSimTime,param1.§_-rC§,false,false);
         }
         _loc18_;
         _loc18_;
         if(param1.emp)
         {
            this.addEffect(SafeGlobal.EFFECTS_SHOCKWAVEEMP,this.§_-KM§[_loc16_].iX,this.§_-KM§[_loc16_].iY,this.§_-KM§[_loc16_].empRadius);
            _loc18_;
            _loc18_;
            _loc16_ = this.§_-KM§.length - 1;
            while(true)
            {
               _loc19_;
               _loc19_;
               _loc19_;
               _loc19_;
               if(_loc16_ < 0)
               {
                  break;
               }
               if(param1 != this.§_-KM§[_loc16_])
               {
                  _loc19_;
                  _loc19_;
                  _loc2_ = this.§_-KM§[_loc16_].iX - param1.iX;
                  _loc18_;
                  _loc18_;
                  _loc19_;
                  _loc3_ = this.§_-KM§[_loc16_].iY - param1.iY;
                  _loc19_;
                  _loc4_ = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
                  _loc19_;
                  _loc19_;
                  _loc19_;
                  if(this.§_-KM§[_loc16_].triggerTime == 0 && _loc4_ <= param1.empRadius)
                  {
                     _loc18_;
                     _loc19_;
                     this.§_-KM§[_loc16_].damage = int(this.§_-KM§[_loc16_].damage * (1 + param1.§_-Hx§ * 0.1));
                     this.§_-KM§[_loc16_].outerRadius = this.§_-KM§[_loc16_].outerRadius + 2 * param1.§_-Hx§;
                     this.§_-KM§[_loc16_].explosionRadius = this.§_-KM§[_loc16_].explosionRadius + 2 * param1.§_-Hx§;
                     _loc19_;
                     _loc19_;
                     this.§_-KM§[_loc16_].emp = true;
                     this.§_-KM§[_loc16_].triggerMe(param1.lastSimTime,0);
                  }
               }
               _loc19_;
               _loc19_;
               _loc16_--;
            }
            _loc19_;
            _loc19_;
            _loc18_;
            _loc17_ = this.skyMines.length - 1;
            while(_loc17_ >= 0)
            {
               _loc19_;
               _loc2_ = this.skyMines[_loc17_].iX - param1.iX;
               _loc18_;
               _loc18_;
               _loc3_ = this.skyMines[_loc17_].iY - param1.iY;
               _loc18_;
               _loc18_;
               _loc19_;
               _loc4_ = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
               if(_loc4_ <= param1.empRadius)
               {
                  _loc19_;
                  _loc19_;
                  this.skyMines[_loc17_].damage = int(this.skyMines[_loc17_].damage * (1 + param1.§_-Hx§ * 0.1));
                  _loc19_;
                  this.skyMines[_loc17_].outerRadius = this.skyMines[_loc17_].outerRadius + 2 * param1.§_-Hx§;
                  _loc19_;
                  _loc19_;
                  _loc18_;
                  _loc18_;
                  this.skyMines[_loc17_].explosionRadius = this.skyMines[_loc17_].explosionRadius + 2 * param1.§_-Hx§;
                  this.skyMines[_loc17_].triggerMe(param1.lastSimTime);
               }
               _loc18_;
               _loc18_;
               _loc17_--;
               _loc18_;
            }
         }
      }
      
      public function §_-wk§(param1:Projectile) : *
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
         this.§_-vJ§();
         _loc3_;
         _loc1_ = 0;
         while(_loc1_ < this.units.length)
         {
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            _loc2_ = SafeGlobal.game_over_data.team_data[this.units[_loc1_].team].medal;
            _loc3_;
            if(_loc2_ == 1)
            {
               _loc4_;
               _loc4_;
               _loc4_;
               _loc3_;
               this.units[_loc1_].newAnimState([SafeGlobal.ANIM_UNIT_VICTORY]);
               _loc4_;
               _loc4_;
            }
            else
            {
               this.units[_loc1_].newAnimState([SafeGlobal.ANIM_UNIT_CRY]);
               _loc3_;
            }
            _loc1_++;
            _loc3_;
            _loc3_;
         }
         this.§_-Jz§.hideMe();
         _loc4_;
         this.§_-fP§();
         this.§_-PE§();
         this.§_-af§();
         _loc4_;
         _loc4_;
         this.startPanning();
         this.§_-eS§ = true;
         this.§_-qm§(false);
         this.§_-tz§();
         this.§_-sA§();
         this.§_-Zv§ = getTimer();
      }
      
      public function §_-af§() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         _loc2_;
         _loc1_ = 0;
         while(_loc1_ < this.units.length)
         {
            this.units[_loc1_].healthDisplay.visible = false;
            _loc2_;
            _loc1_++;
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
         _loc5_;
         this.§_-g5§();
         _loc4_;
         _loc4_;
         this.§_-M2§();
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc4_;
         _loc4_;
         _loc5_;
         _loc1_ = this.camera.x - this.§_-Sr§.x;
         _loc4_;
         _loc4_;
         _loc5_;
         _loc4_;
         _loc2_ = this.camera.y - this.§_-Sr§.y;
         _loc5_;
         _loc5_;
         _loc3_ = 0;
         while(_loc3_ < this.units.length)
         {
            _loc3_++;
            _loc5_;
            _loc5_;
         }
         _loc4_;
         _loc4_;
         this.§_-6c§ = Math.atan2(_loc2_,_loc1_);
         _loc4_;
         _loc4_;
         this.camera.emptyList();
         _loc5_;
         this.camera.addTarget(this.§_-jA§,-1,"startPanning");
      }
      
      public function allSickBobOnPlanet(param1:Planet) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         _loc2_ = this.planets.indexOf(param1);
         _loc4_;
         _loc3_ = 0;
         while(_loc3_ < this.units.length)
         {
            _loc4_;
            _loc5_;
            if(this.units[_loc3_].locationPlanet == _loc2_)
            {
               _loc4_;
               _loc4_;
               _loc4_;
               _loc5_;
               _loc5_;
               this.units[_loc3_].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
               _loc4_;
               _loc4_;
               this.units[_loc3_].hidePoison();
               _loc5_;
            }
            _loc3_++;
            _loc4_;
            _loc4_;
         }
      }
      
      public function dynamic(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int, param8:int = -1) : *
      {
         var _loc33_:* = false;
         var _loc34_:* = true;
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
         var _loc24_:§_-U4§ = null;
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
         _loc34_;
         _loc21_ = 0;
         while(true)
         {
            _loc33_;
            _loc33_;
            _loc33_;
            if(_loc21_ >= this.units.length)
            {
               break;
            }
            _loc33_;
            if(!this.units[_loc21_].dead)
            {
               _loc34_;
               _loc34_;
               _loc34_;
               if(this.units[_loc21_].hidden)
               {
                  _loc34_;
                  _loc34_;
                  _loc14_ = new Point(this.units[_loc21_].iX,this.units[_loc21_].iY);
               }
               else
               {
                  _loc14_ = this.units[_loc21_].startPoint();
               }
               _loc9_ = _loc14_.x - param1;
               _loc34_;
               _loc34_;
               _loc10_ = _loc14_.y - param2;
               _loc11_ = Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_);
               _loc33_;
               _loc19_ = Math.atan2(_loc10_,_loc9_);
               _loc34_;
               _loc34_;
               _loc34_;
               if(_loc11_ <= param6)
               {
                  _loc33_;
                  _loc33_;
                  if(this.units[this.currentUnit] == this.units[_loc21_])
                  {
                     _loc34_;
                     _loc34_;
                     _loc23_ = this.projectiles.length - 1;
                     _loc33_;
                     _loc33_;
                     while(true)
                     {
                        _loc34_;
                        if(_loc23_ < 0)
                        {
                           break;
                        }
                        _loc33_;
                        _loc33_;
                        _loc33_;
                        _loc33_;
                        if((this.projectiles[_loc23_].skillShot) && this.projectiles[_loc23_].startSimTime > param7)
                        {
                           _loc33_;
                           _loc33_;
                           this.removeProjectile(this.projectiles[_loc23_]);
                           _loc34_;
                           _loc34_;
                        }
                        _loc34_;
                        _loc33_;
                        _loc23_--;
                     }
                     _loc33_;
                     this.simManager.§_-pC§();
                     _loc33_;
                     _loc33_;
                     this.units[this.currentUnit].walkDir = 0;
                     _loc34_;
                     _loc34_;
                     this.simManager.removeObject(this.units[this.currentUnit]);
                     this.§_-Vm§ = true;
                     this.§_-PE§();
                     _loc34_;
                     _loc34_;
                     if(this.myTurn)
                     {
                        if(this.simManager.§_-Pa§("APPLY FORCE"))
                        {
                           this.§_-lc§ = 0;
                           _loc24_ = new §_-U4§(SafeGlobal.SIMEVENT_ENDTURN,param7,null);
                           _loc33_;
                           this.simManager.addObject(_loc24_);
                        }
                     }
                     else
                     {
                        this.§_-fp§(SafeGlobal.CLEANUP_PROJECTILE);
                     }
                     this.§_-Jz§.hideMe();
                  }
                  if(_loc11_ <= param5)
                  {
                     _loc34_;
                     _loc34_;
                     _loc34_;
                     _loc34_;
                     _loc34_;
                     _loc16_ = param3;
                     _loc33_;
                     _loc17_ = param4;
                     _loc34_;
                     _loc34_;
                  }
                  else
                  {
                     _loc15_ = _loc11_ - param5;
                     _loc33_;
                     _loc33_;
                     _loc34_;
                     _loc18_ = param6 - param5;
                     _loc34_;
                     _loc34_;
                     _loc34_;
                     _loc34_;
                     _loc34_;
                     _loc34_;
                     _loc34_;
                     _loc33_;
                     _loc33_;
                     _loc33_;
                     _loc33_;
                     _loc16_ = param3 * (_loc18_ - _loc15_) / _loc18_;
                     _loc34_;
                     _loc34_;
                     _loc33_;
                     _loc17_ = param4 * (_loc18_ - _loc15_) / _loc18_;
                  }
                  _loc16_ = Math.floor(_loc16_);
                  _loc17_ = Math.floor(_loc17_);
                  _loc33_;
                  this.units[_loc21_].takeDamage(_loc16_);
                  _loc33_;
                  _loc33_;
                  _loc34_;
                  _loc34_;
                  if(!(this.units[_loc21_].team == this.currentTeam) && (this.myTurn))
                  {
                     _loc20_ = true;
                  }
                  this.updateTeamHealths();
                  _loc33_;
                  _loc33_;
                  _loc33_;
                  _loc33_;
                  _loc33_;
                  _loc12_ = this.§_-cl§(_loc17_ * Math.cos(_loc19_) * 6);
                  _loc34_;
                  _loc34_;
                  _loc33_;
                  _loc33_;
                  _loc13_ = this.§_-cl§(_loc17_ * Math.sin(_loc19_) * 6);
                  _loc33_;
                  _loc33_;
                  _loc33_;
                  if(!this.units[_loc21_].hidden)
                  {
                     this.addUnitProjectile(_loc14_.x,_loc14_.y,_loc12_,_loc13_,param7,this.units[_loc21_],true);
                     _loc33_;
                     _loc33_;
                     this.projectiles[this.projectiles.length - 1].mass = (this.units[_loc21_].health < 0?0:this.units[_loc21_].health / 2) + 100;
                     _loc33_;
                     if(this.mods[SafeGlobal.MOD_HEAVYUNITS])
                     {
                        _loc33_;
                        _loc34_;
                        this.projectiles[this.projectiles.length - 1].mass = this.projectiles[this.projectiles.length - 1].mass * 2;
                     }
                     _loc33_;
                     _loc34_;
                     if(this.units[_loc21_].poison == 0)
                     {
                        _loc33_;
                        _loc33_;
                        this.units[_loc21_].hidePoison();
                     }
                     if(this.units[_loc21_].fire)
                     {
                        _loc33_;
                        this.projectiles[this.projectiles.length - 1].init(this.units[_loc21_].costume.spriteSheets[SafeGlobal.ANIM_UNIT_FLYING]);
                        _loc33_;
                        _loc34_;
                        _loc34_;
                        this.units[_loc21_].newAnimState([SafeGlobal.ANIM_UNIT_FLYING]);
                        _loc34_;
                        _loc33_;
                        _loc33_;
                        _loc33_;
                        this.projectiles[this.projectiles.length - 1].animStep = -1;
                        _loc33_;
                        _loc33_;
                        _loc34_;
                        this.projectiles[this.projectiles.length - 1].unit.newAnimState([SafeGlobal.ANIM_UNIT_FLYING]);
                        _loc34_;
                        this.projectiles[this.projectiles.length - 1].setupEmittors(SafeGlobal.TRAILTYPE_NONE,[]);
                        _loc34_;
                        _loc34_;
                        this.projectiles[this.projectiles.length - 1].showFire();
                     }
                     else
                     {
                        _loc34_;
                        if(this.units[_loc21_].health <= 0)
                        {
                           _loc33_;
                           this.projectiles[this.projectiles.length - 1].init(this.units[_loc21_].costume.spriteSheets[SafeGlobal.ANIM_UNIT_FLYINGDEAD]);
                           _loc33_;
                           _loc33_;
                           this.units[_loc21_].newAnimState([SafeGlobal.ANIM_UNIT_FLYINGDEAD]);
                           _loc33_;
                           _loc33_;
                           this.projectiles[this.projectiles.length - 1].orientToPath = false;
                           _loc33_;
                           this.projectiles[this.projectiles.length - 1].spin = 4;
                           _loc33_;
                           _loc33_;
                           _loc33_;
                           _loc33_;
                           _loc33_;
                           this.projectiles[this.projectiles.length - 1].animStep = -1;
                        }
                        else
                        {
                           this.projectiles[this.projectiles.length - 1].init(this.units[_loc21_].costume.spriteSheets[SafeGlobal.ANIM_UNIT_FLYING]);
                           _loc34_;
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
                        _loc34_;
                        _loc33_;
                        if(this.projectiles[_loc23_].unit == this.units[_loc21_])
                        {
                           _loc33_;
                           this.projectiles[_loc23_].momX = this.projectiles[_loc23_].momX + _loc12_;
                           this.projectiles[_loc23_].momY = this.projectiles[_loc23_].momY + _loc13_;
                           _loc34_;
                           this.projectiles[_loc23_].mass = (this.units[_loc21_].health < 0?0:this.units[_loc21_].health / 2) + 100;
                           _loc33_;
                           _loc33_;
                           _loc33_;
                           if(this.mods[SafeGlobal.MOD_HEAVYUNITS])
                           {
                              this.projectiles[_loc23_].mass = this.projectiles[_loc23_].mass * 2;
                           }
                           _loc34_;
                           if(!this.projectiles[_loc23_].unit.fallDamage)
                           {
                              _loc33_;
                              if(!this.projectiles[_loc23_].unit.fallDamage)
                              {
                                 SoundManager.§_-sQ§(SafeGlobal.FX_JETPACK,this.projectiles[_loc23_].sound_uid);
                              }
                              _loc33_;
                              this.projectiles[_loc23_].unit.fallDamage = true;
                              _loc33_;
                              _loc34_;
                              _loc34_;
                              this.projectiles[_loc23_].unit.rocketGloves = false;
                              _loc33_;
                              _loc33_;
                              _loc33_;
                              this.projectiles[_loc23_].init(this.projectiles[_loc23_].unit.costume.spriteSheets[SafeGlobal.ANIM_UNIT_FLYING]);
                              _loc33_;
                              _loc34_;
                              this.projectiles[_loc23_].animStep = -1;
                              this.projectiles[_loc23_].unit.newAnimState([SafeGlobal.ANIM_UNIT_FLYING]);
                              _loc33_;
                              _loc33_;
                              _loc33_;
                              this.projectiles[_loc23_].setupEmittors(SafeGlobal.TRAILTYPE_NONE,[]);
                              _loc34_;
                              _loc34_;
                           }
                           _loc33_;
                           _loc33_;
                           if(this.projectiles[_loc23_].unit.health <= 0)
                           {
                              _loc33_;
                              _loc34_;
                              this.projectiles[_loc23_].init(this.projectiles[_loc23_].unit.costume.spriteSheets[SafeGlobal.ANIM_UNIT_FLYINGDEAD]);
                              _loc34_;
                              this.projectiles[_loc23_].unit.newAnimState([SafeGlobal.ANIM_UNIT_FLYINGDEAD]);
                              _loc34_;
                              _loc34_;
                              _loc34_;
                              _loc34_;
                              this.projectiles[_loc23_].orientToPath = false;
                              _loc34_;
                              this.projectiles[_loc23_].spin = 4;
                              _loc34_;
                              _loc34_;
                              this.projectiles[_loc23_].animStep = -1;
                           }
                           break;
                        }
                        _loc23_++;
                        _loc33_;
                        _loc33_;
                     }
                  }
               }
            }
            _loc21_++;
         }
         _loc34_;
         _loc33_;
         _loc22_ = 0;
         while(_loc22_ < this.§_-KM§.length)
         {
            _loc33_;
            _loc33_;
            _loc34_;
            _loc34_;
            if(!this.§_-KM§[_loc22_].dead && !(this.§_-KM§[_loc22_].roving && this.§_-KM§[_loc22_].triggerTime > 0))
            {
               _loc34_;
               if(this.§_-KM§[_loc22_].roving)
               {
                  this.§_-KM§[_loc22_].triggerMe(param7,20);
               }
               else
               {
                  _loc14_ = this.§_-KM§[_loc22_].startPoint();
                  _loc34_;
                  _loc34_;
                  _loc9_ = _loc14_.x - param1;
                  _loc33_;
                  _loc33_;
                  _loc34_;
                  _loc34_;
                  _loc10_ = _loc14_.y - param2;
                  _loc33_;
                  _loc11_ = Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_);
                  _loc19_ = Math.atan2(_loc10_,_loc9_);
                  _loc33_;
                  _loc34_;
                  _loc34_;
                  if(_loc11_ <= param6)
                  {
                     _loc33_;
                     _loc33_;
                     if(_loc11_ <= param5)
                     {
                        _loc34_;
                        _loc34_;
                        _loc16_ = param3;
                        _loc33_;
                        _loc33_;
                        _loc34_;
                        _loc17_ = param4;
                     }
                     else
                     {
                        _loc33_;
                        _loc33_;
                        _loc15_ = _loc11_ - param5;
                        _loc33_;
                        _loc33_;
                        _loc33_;
                        _loc33_;
                        _loc34_;
                        _loc34_;
                        _loc18_ = param6 - param5;
                        _loc34_;
                        _loc34_;
                        _loc34_;
                        _loc34_;
                        _loc34_;
                        _loc34_;
                        _loc34_;
                        _loc34_;
                        _loc16_ = param3 * (_loc18_ - _loc15_) / _loc18_;
                        _loc33_;
                        _loc33_;
                        _loc33_;
                        _loc33_;
                        _loc34_;
                        _loc34_;
                        _loc17_ = param4 * (_loc18_ - _loc15_) / _loc18_;
                        _loc33_;
                        _loc33_;
                     }
                     _loc33_;
                     _loc16_ = Math.floor(_loc16_);
                     _loc34_;
                     _loc17_ = Math.floor(_loc17_);
                     _loc34_;
                     _loc34_;
                     _loc34_;
                     _loc34_;
                     _loc34_;
                     _loc12_ = this.§_-cl§(_loc17_ * Math.cos(_loc19_) * 6);
                     _loc34_;
                     _loc34_;
                     _loc34_;
                     _loc13_ = this.§_-cl§(_loc17_ * Math.sin(_loc19_) * 6);
                     _loc34_;
                     _loc34_;
                     _loc34_;
                     if(!this.§_-KM§[_loc22_].hidden)
                     {
                        _loc33_;
                        _loc33_;
                        _loc25_ = new Point(this.§_-KM§[_loc22_].iX + 7 * Math.cos(this.§_-KM§[_loc22_].iR + this.PI / 2),this.§_-KM§[_loc22_].iY + 7 * Math.sin(this.§_-KM§[_loc22_].iR + this.PI / 2));
                        _loc26_ = new Point(this.§_-KM§[_loc22_].iX + 7 * Math.cos(this.§_-KM§[_loc22_].iR - this.PI / 2),this.§_-KM§[_loc22_].iY + 7 * Math.sin(this.§_-KM§[_loc22_].iR - this.PI / 2));
                        _loc34_;
                        _loc34_;
                        _loc34_;
                        _loc27_ = _loc25_.x - param1;
                        _loc33_;
                        _loc33_;
                        _loc28_ = _loc25_.y - param2;
                        _loc33_;
                        _loc33_;
                        _loc33_;
                        _loc29_ = Math.sqrt(_loc27_ * _loc27_ + _loc28_ * _loc28_);
                        _loc33_;
                        _loc33_;
                        _loc30_ = _loc26_.x - param1;
                        _loc34_;
                        _loc31_ = _loc26_.y - param2;
                        _loc33_;
                        _loc32_ = Math.sqrt(_loc30_ * _loc30_ + _loc31_ * _loc31_);
                        _loc33_;
                        _loc33_;
                        this.addMineProjectile(_loc14_.x,_loc14_.y,_loc12_,_loc13_,param7,this.§_-KM§[_loc22_]);
                        _loc34_;
                        _loc34_;
                        if(this.§_-KM§[_loc22_].mineType == SafeGlobal.MINETYPE_STANDARD)
                        {
                           _loc33_;
                           _loc33_;
                           _loc34_;
                           _loc34_;
                           _loc34_;
                           _loc34_;
                           this.projectiles[this.projectiles.length - 1].init(this.projGFX[SafeGlobal.WEAPONINFO_MINE[0]]);
                        }
                        else
                        {
                           _loc33_;
                           if(this.§_-KM§[_loc22_].mineType == SafeGlobal.MINETYPE_DRILL)
                           {
                              _loc33_;
                              _loc34_;
                              _loc34_;
                              this.projectiles[this.projectiles.length - 1].init(this.projGFX[SafeGlobal.WEAPONINFO_DRILLMINE[0]]);
                           }
                           else
                           {
                              _loc34_;
                              _loc34_;
                              if(this.§_-KM§[_loc22_].mineType == SafeGlobal.MINETYPE_CLUSTER)
                              {
                                 _loc34_;
                                 _loc34_;
                                 _loc34_;
                                 _loc34_;
                                 _loc34_;
                                 this.projectiles[this.projectiles.length - 1].init(this.projGFX[SafeGlobal.WEAPONINFO_CLUSTERMINE[0]]);
                              }
                           }
                        }
                        _loc33_;
                        _loc33_;
                        _loc34_;
                        _loc34_;
                        this.projectiles[this.projectiles.length - 1].spin = (_loc32_ - _loc29_) * _loc17_ / 10;
                        this.projectiles[this.projectiles.length - 1].rotation = this.§_-KM§[_loc22_].iR * 180 / this.PI;
                     }
                     else
                     {
                        _loc34_;
                        _loc34_;
                        _loc23_ = 0;
                        while(_loc23_ < this.projectiles.length)
                        {
                           _loc33_;
                           _loc34_;
                           if(this.projectiles[_loc23_].mine == this.§_-KM§[_loc22_])
                           {
                              _loc33_;
                              _loc33_;
                              _loc33_;
                              this.projectiles[_loc23_].momX = this.projectiles[_loc23_].momX + _loc12_;
                              _loc34_;
                              this.projectiles[_loc23_].momY = this.projectiles[_loc23_].momY + _loc13_;
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
         var _loc8_:* = true;
         var _loc9_:* = false;
         _loc8_;
         _loc8_;
         this.projectiles.push(new Projectile(param1,param2,param3,param4,param5,false,5,[]));
         _loc9_;
         _loc9_;
         this.screen.addChild(this.projectiles[this.projectiles.length - 1]);
         this.simManager.addObject(this.projectiles[this.projectiles.length - 1],"addunitproj");
         _loc9_;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         this.projectiles[this.projectiles.length - 1].fallStartTime = param5;
         _loc8_;
         if(param6.poison)
         {
            _loc9_;
            _loc8_;
            _loc9_;
            _loc8_;
            _loc8_;
            this.projectiles[this.projectiles.length - 1].showPoisonBubbles();
         }
         this.projectiles[this.projectiles.length - 1].setUnit(param6);
         param6.hideMe(param7);
      }
      
      public function addMineProjectile(param1:Number, param2:Number, param3:Number, param4:Number, param5:int, param6:Mine) : *
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         _loc7_;
         _loc8_;
         this.projectiles.push(new Projectile(param1,param2,param3,param4,param5,false,5,[]));
         this.screen.addChild(this.projectiles[this.projectiles.length - 1]);
         _loc8_;
         _loc8_;
         this.simManager.addObject(this.projectiles[this.projectiles.length - 1],"addmineproj");
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc8_;
         _loc8_;
         this.projectiles[this.projectiles.length - 1].setMine(param6);
         param6.hideMe();
         if(param6.triggerTime == 0)
         {
            _loc8_;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc7_;
            _loc7_;
            this.projectiles[this.projectiles.length - 1].animate = false;
            _loc8_;
            _loc8_;
         }
         else
         {
            this.projectiles[this.projectiles.length - 1].animate = true;
         }
      }
      
      public function §_-eC§(param1:Projectile) : *
      {
         var _loc19_:* = false;
         var _loc20_:* = true;
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
         _loc19_;
         _loc20_;
         _loc20_;
         _loc3_ = 0;
         _loc19_;
         _loc19_;
         _loc19_;
         _loc4_ = 0;
         _loc5_ = 0;
         _loc19_;
         _loc6_ = 0;
         _loc20_;
         _loc20_;
         _loc8_ = 0;
         _loc20_;
         _loc20_;
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
            _loc19_;
            _loc19_;
            _loc19_;
            _loc20_;
            _loc20_;
            _loc12_ = _loc16_.initialMass * param1.mass / (_loc16_.radius * _loc16_.radius) / _loc14_;
            _loc19_;
            _loc19_;
            _loc20_;
            _loc18_ = 0;
            _loc20_;
            while(_loc18_ < this.planets[_loc17_].shapes.length)
            {
               _loc20_;
               _loc19_;
               _loc13_ = _loc16_.shapes[_loc18_].mass / _loc16_.initialMass;
               _loc20_;
               _loc11_ = Math.floor(_loc12_ * _loc13_ * 100000) / 100000;
               _loc19_;
               _loc20_;
               _loc7_ = _loc16_.shapes[_loc18_].mass * param1.mass;
               _loc19_;
               _loc19_;
               _loc20_;
               _loc20_;
               _loc8_ = param1.iX - _loc16_.shapes[_loc18_].center.x;
               _loc19_;
               _loc19_;
               _loc9_ = param1.iY - _loc16_.shapes[_loc18_].center.y;
               _loc20_;
               _loc20_;
               _loc20_;
               _loc19_;
               _loc19_;
               _loc19_;
               _loc10_ = _loc8_ * _loc8_ + _loc9_ * _loc9_;
               _loc20_;
               _loc2_ = Math.floor(_loc7_ / _loc10_ / _loc14_ * 100000) / 100000;
               _loc20_;
               _loc20_;
               if(_loc2_ > _loc11_ && !_loc16_.blackHole)
               {
                  _loc19_;
                  _loc19_;
                  _loc19_;
                  _loc19_;
                  _loc2_ = _loc11_;
               }
               _loc15_ = Math.atan2(_loc9_,_loc8_);
               _loc20_;
               _loc3_ = Math.cos(_loc15_) * _loc2_;
               _loc19_;
               _loc4_ = Math.sin(_loc15_) * _loc2_;
               _loc20_;
               _loc5_ = Math.floor((_loc5_ + _loc3_) * 100000) / 100000;
               _loc20_;
               _loc20_;
               _loc20_;
               _loc6_ = Math.floor((_loc6_ + _loc4_) * 100000) / 100000;
               _loc19_;
               _loc19_;
               _loc18_++;
            }
            _loc17_++;
         }
         _loc20_;
         _loc20_;
         param1.momX = Math.floor((param1.momX - _loc5_) * 100000) / 100000;
         _loc19_;
         _loc19_;
         param1.momY = Math.floor((param1.momY - _loc6_) * 100000) / 100000;
      }
      
      public function checkSpecialPlanetProximity(param1:Projectile) : *
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = 0;
         _loc6_;
         _loc6_;
         _loc5_ = 0;
         while(_loc5_ < this.planets.length)
         {
            _loc6_;
            _loc6_;
            if(this.planets[_loc5_].sun)
            {
               _loc7_;
               _loc7_;
               _loc7_;
               _loc6_;
               _loc2_ = this.planets[_loc5_].x - param1.iX;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc3_ = this.planets[_loc5_].y - param1.iY;
               _loc7_;
               _loc4_ = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
               _loc6_;
               _loc6_;
               _loc7_;
               _loc7_;
               if((param1.unit && !param1.fire) && (param1.unit.health > 0) && _loc4_ <= this.planets[_loc5_].radius + 30)
               {
                  _loc6_;
                  _loc6_;
                  _loc7_;
                  _loc6_;
                  _loc6_;
                  param1.unit.fire = true;
                  _loc6_;
                  param1.init(param1.unit.costume.spriteSheets[SafeGlobal.ANIM_UNIT_FLYING]);
                  _loc6_;
                  param1.animStep = -1;
                  _loc7_;
                  param1.unit.newAnimState([SafeGlobal.ANIM_UNIT_FLYING]);
                  _loc7_;
                  _loc7_;
                  if(!param1.unit.fallDamage)
                  {
                     SoundManager.§_-sQ§(SafeGlobal.FX_JETPACK,param1.sound_uid);
                     _loc7_;
                     _loc7_;
                  }
                  _loc6_;
                  _loc6_;
                  param1.unit.fallDamage = true;
                  _loc6_;
                  param1.unit.rocketGloves = false;
                  _loc7_;
                  _loc7_;
                  param1.setupEmittors(SafeGlobal.TRAILTYPE_NONE,[]);
                  _loc6_;
                  param1.showFire();
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
                  _loc2_ = this.planets[_loc5_].x - param1.iX;
                  _loc6_;
                  _loc7_;
                  _loc7_;
                  _loc3_ = this.planets[_loc5_].y - param1.iY;
                  _loc4_ = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  if((param1.unit) && (param1.unit.poison < 10) && _loc4_ <= this.planets[_loc5_].radius + 30)
                  {
                     _loc6_;
                     _loc6_;
                     param1.unit.poison = 10;
                     param1.unit.showPoison();
                  }
               }
            }
            _loc5_++;
         }
      }
      
      public function displayTurnSummary() : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:String = null;
         var _loc2_:* = false;
         _loc4_;
         if(!this.§_-i-§ && !this.simOnly && !this.costumeCacheOnly)
         {
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            _loc2_ = false;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            if(this.summaryDamageDealt == 0 && this.summaryDamageTaken == 0)
            {
               _loc4_;
               _loc4_;
               if(this.§_-L-§ == 1)
               {
                  _loc2_ = true;
                  _loc3_;
               }
               else
               {
                  _loc3_;
                  _loc3_;
                  if(this.§function§ == 1)
                  {
                     _loc3_;
                     _loc3_;
                     _loc4_;
                     _loc4_;
                     _loc3_;
                     _loc3_;
                     _loc1_ = this.units[this.currentUnit].unitName + " skipped their turn";
                     _loc4_;
                     _loc4_;
                  }
                  else if(this.§_-i7§ == 1)
                  {
                     _loc1_ = this.units[this.currentUnit].unitName + " used a Jetpack";
                     _loc4_;
                     _loc4_;
                  }
                  else
                  {
                     _loc4_;
                     _loc4_;
                     if(this.§_-pc§ == 1)
                     {
                        _loc1_ = this.units[this.currentUnit].unitName + " used Rocket Gloves";
                     }
                     else
                     {
                        _loc4_;
                        _loc4_;
                        _loc4_;
                        if(this.§_-9-§ == 1 && this.§_-Qp§ == 1)
                        {
                           _loc1_ = this.units[this.currentUnit].unitName + " teleported and left a Mine behind";
                           _loc3_;
                        }
                        else if(this.§ true§ == 1)
                        {
                           _loc3_;
                           _loc3_;
                           _loc3_;
                           _loc3_;
                           _loc1_ = this.units[this.currentUnit].unitName + " detoxed a planet";
                        }
                        else if(this.§_-Qp§ == 1)
                        {
                           _loc4_;
                           _loc4_;
                           _loc4_;
                           _loc4_;
                           _loc1_ = this.units[this.currentUnit].unitName + " teleported";
                           _loc3_;
                           _loc3_;
                        }
                        else
                        {
                           _loc4_;
                           if(this.§_-MA§ == 1)
                           {
                              _loc4_;
                              _loc4_;
                              _loc4_;
                              _loc4_;
                              _loc1_ = this.units[this.currentUnit].unitName + " is AFK";
                           }
                           else
                           {
                              _loc4_;
                              _loc4_;
                              _loc3_;
                              _loc3_;
                              if(this.§_-lc§ == 1)
                              {
                                 _loc3_;
                                 _loc4_;
                                 _loc4_;
                                 _loc4_;
                                 _loc4_;
                                 _loc4_;
                                 _loc4_;
                                 _loc1_ = this.units[this.currentUnit].unitName + " ran out of time";
                              }
                              else
                              {
                                 _loc3_;
                                 _loc4_;
                                 _loc4_;
                                 if(this.§_-nU§ == 1)
                                 {
                                    _loc4_;
                                    _loc4_;
                                    _loc1_ = this.units[this.currentUnit].unitName + " placed a Shield";
                                    _loc3_;
                                    _loc3_;
                                 }
                                 else if(this.§_-lQ§ == 1)
                                 {
                                    _loc3_;
                                    _loc3_;
                                    _loc3_;
                                    _loc4_;
                                    _loc4_;
                                    _loc1_ = this.units[this.currentUnit].unitName + " placed a Planet Shield";
                                 }
                                 else
                                 {
                                    _loc3_;
                                    _loc3_;
                                    _loc4_;
                                    if(this.§_-9-§ == 1)
                                    {
                                       _loc3_;
                                       _loc1_ = this.units[this.currentUnit].unitName + " placed a Mine";
                                    }
                                    else
                                    {
                                       _loc4_;
                                       if(this.summaryHealthDealt >= this.summaryHealthTaken && (this.summaryHealthDealt > 0 || this.summaryHealthTaken > 0))
                                       {
                                          _loc1_ = this.units[this.currentUnit].unitName + " healed the enemy!";
                                       }
                                       else
                                       {
                                          _loc3_;
                                          _loc3_;
                                          _loc4_;
                                          if(this.summaryHealthTaken > this.summaryHealthDealt && (this.summaryHealthDealt > 0 || this.summaryHealthTaken > 0))
                                          {
                                             _loc4_;
                                             _loc4_;
                                             _loc4_;
                                             _loc4_;
                                             _loc1_ = this.units[this.currentUnit].unitName + " healed their own team";
                                          }
                                          else
                                          {
                                             _loc3_;
                                             if(this.§_-o1§ == 1)
                                             {
                                                _loc3_;
                                                _loc3_;
                                                _loc3_;
                                                _loc3_;
                                                _loc4_;
                                                _loc4_;
                                                _loc1_ = this.units[this.currentUnit].unitName + " radiated a planet";
                                                _loc4_;
                                             }
                                             else
                                             {
                                                _loc3_;
                                                _loc3_;
                                                if(this.§_-o1§ > 1)
                                                {
                                                   _loc3_;
                                                   _loc3_;
                                                   _loc3_;
                                                   _loc4_;
                                                   _loc4_;
                                                   _loc4_;
                                                   _loc1_ = this.units[this.currentUnit].unitName + " radiated " + this.§_-o1§ + " planets";
                                                }
                                                else
                                                {
                                                   _loc3_;
                                                   _loc1_ = this.units[this.currentUnit].unitName + " missed every unit!";
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
               _loc3_;
               _loc3_;
               if(this.§_-dk§ > this.§_-Ob§)
               {
                  _loc4_;
                  _loc4_;
                  if(this.§_-dk§ == 1)
                  {
                     _loc3_;
                     _loc3_;
                     _loc4_;
                     _loc4_;
                     _loc1_ = this.units[this.currentUnit].unitName + " killed an enemy unit";
                     _loc4_;
                     _loc4_;
                  }
                  else
                  {
                     _loc4_;
                     if(this.§_-dk§ > 1)
                     {
                        _loc3_;
                        _loc4_;
                        _loc4_;
                        _loc4_;
                        _loc4_;
                        _loc4_;
                        _loc4_;
                        _loc1_ = this.units[this.currentUnit].unitName + " killed " + this.§_-dk§ + " enemy units";
                     }
                  }
               }
               else if(this.§_-Ob§ >= this.§_-dk§ && this.§_-Ob§ > 0)
               {
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  if(this.§_-Ob§ == 1 && this.§_-Nt§ == 1)
                  {
                     _loc4_;
                     _loc4_;
                     _loc4_;
                     _loc4_;
                     _loc1_ = this.units[this.currentUnit].unitName + " killed themself!";
                  }
                  else
                  {
                     _loc4_;
                     _loc4_;
                     _loc4_;
                     _loc4_;
                     if(this.§_-Ob§ == 1 && this.§_-Nt§ == 0)
                     {
                        _loc3_;
                        _loc4_;
                        _loc4_;
                        _loc4_;
                        _loc4_;
                        _loc1_ = this.units[this.currentUnit].unitName + " killed a team mate";
                     }
                     else
                     {
                        _loc3_;
                        if(this.§_-Ob§ > 1)
                        {
                           _loc3_;
                           _loc1_ = this.units[this.currentUnit].unitName + " killed " + this.§_-Ob§ + " team mates";
                           _loc4_;
                        }
                     }
                  }
               }
               else
               {
                  _loc3_;
                  _loc3_;
                  if(this.§_-dk§ == 0 && this.§_-Ob§ == 0)
                  {
                     _loc4_;
                     _loc4_;
                     if(this.summaryDamageDealt > this.summaryDamageTaken)
                     {
                        _loc4_;
                        _loc4_;
                        _loc3_;
                        _loc1_ = this.units[this.currentUnit].unitName + " damaged the enemy";
                     }
                     else
                     {
                        _loc3_;
                        _loc3_;
                        if(this.summaryDamageTaken >= this.summaryDamageDealt)
                        {
                           _loc3_;
                           _loc4_;
                           _loc1_ = this.units[this.currentUnit].unitName + " damaged their own team";
                           _loc4_;
                        }
                        else if(this.summaryDamageDealt == 0 && this.summaryDamageTaken == this.summaryDamageSelf)
                        {
                           _loc1_ = this.units[this.currentUnit].unitName + " damaged themself!";
                        }
                        
                     }
                  }
               }
               
            }
            if(!_loc2_)
            {
               _loc4_;
               _loc4_;
               this.showMessage(_loc1_,SafeGlobal.colour_hex[this.teams[this.currentTeam].colourID],true);
            }
         }
      }
      
      public function bringUnitToFront(param1:Unit) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.§_-vb§.setChildIndex(param1,this.§_-vb§.numChildren - 1);
         _loc3_;
         _loc3_;
         if(this.currentUnit > -1)
         {
            _loc2_;
            _loc2_;
            this.§_-vb§.setChildIndex(this.units[this.currentUnit],this.§_-vb§.numChildren - 1);
         }
      }
      
      public function §_-JW§() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         _loc3_;
         _loc1_ = 0;
         while(_loc1_ < this.units.length)
         {
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            _loc2_;
            if((this.units[_loc1_].willCry) && !this.units[_loc1_].crying)
            {
               _loc2_;
               _loc2_;
               _loc3_;
               _loc3_;
               _loc3_;
               this.units[_loc1_].crying = true;
               _loc2_;
               _loc2_;
               this.units[_loc1_].newAnimState([SafeGlobal.ANIM_UNIT_CRY]);
               _loc2_;
               _loc2_;
            }
            _loc1_++;
            _loc3_;
            _loc3_;
         }
      }
      
      public function AFKKick() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:§_-JR§ = null;
         _loc3_;
         _loc3_;
         SafeGlobal.game_client.sendAFKKicked();
         _loc3_;
         this.§_-vM§();
         _loc1_ = new §_-JR§();
         _loc3_;
         addChild(_loc1_);
      }
      
      public function startTurn(param1:int, param2:int, param3:String, param4:String) : *
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc5_:* = false;
         var _loc6_:* = 0;
         var _loc7_:§_-U4§ = null;
         var _loc8_:Array = null;
         _loc10_;
         _loc10_;
         this.removeCacheLoadingBar();
         _loc10_;
         this.§_-JW§();
         _loc10_;
         SafeGlobal.§_-n8§ = "";
         SafeGlobal.§_-aU§ = "";
         _loc9_;
         _loc10_;
         if(!this.§_-g1§)
         {
            _loc10_;
            this.§_-g1§ = true;
            addEventListener(Event.ENTER_FRAME,this.§_-Tx§);
            _loc9_;
            _loc9_;
            stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
            _loc10_;
            stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§_-54§);
            stage.addEventListener(KeyboardEvent.KEY_UP,this.§_-W9§);
         }
         _loc9_;
         _loc9_;
         if(!this.§_-re§)
         {
            this.§_-re§ = true;
            _loc9_;
            _loc9_;
            this.chat.§_-ZI§();
         }
         this.§_-Vm§ = false;
         _loc9_;
         this.§_-qI§ = true;
         this.§_-B7§();
         this.§_-fP§();
         _loc9_;
         this.§_-Jz§.reset();
         _loc10_;
         this.§_-hQ§();
         this.§_-d3§ = 0;
         this.§_-PE§();
         _loc10_;
         _loc10_;
         this.camera.emptyList();
         this.updateTeamHealths();
         this.currentTeam = param1;
         _loc9_;
         _loc9_;
         _loc10_;
         _loc10_;
         this.simManager.endOfTurnEffectsDone = false;
         _loc10_;
         this.simManager.turnOver = false;
         _loc5_ = false;
         _loc10_;
         _loc6_ = 0;
         while(true)
         {
            _loc10_;
            _loc10_;
            if(_loc6_ >= this.units.length)
            {
               break;
            }
            _loc10_;
            _loc10_;
            _loc9_;
            _loc9_;
            if(this.units[_loc6_].team == param1 && this.units[_loc6_].unitID == param2)
            {
               this.currentUnit = _loc6_;
               _loc10_;
               _loc10_;
               this.units[_loc6_].current = true;
               this.§_-Nb§[_loc6_].makeSelected();
               this.bringToFront(this.§_-Nb§[_loc6_]);
               this.camera.addTarget(this.units[this.currentUnit],-1,"unit startTurn");
               _loc10_;
               _loc10_;
               _loc10_;
               _loc9_;
               _loc10_;
               this.§_-7X§.x = this.units[this.currentUnit].iX;
               _loc9_;
               _loc9_;
               _loc10_;
               this.§_-7X§.y = this.units[this.currentUnit].iY;
               _loc9_;
               _loc9_;
               this.§_-7X§.active = false;
               _loc10_;
               _loc5_ = true;
               this.units[this.currentUnit].showName(true);
            }
            else
            {
               this.units[_loc6_].current = false;
               _loc10_;
               _loc9_;
               _loc10_;
               this.§_-Nb§[_loc6_].makeUnselected();
            }
            _loc6_++;
         }
         _loc10_;
         if(_loc5_)
         {
         }
         this.§_-xe§();
         _loc9_;
         if(SafeGlobal.playerID == param1)
         {
            _loc9_;
            _loc9_;
            _loc10_;
            _loc10_;
            _loc10_;
            SoundManager.§_-Oc§(SafeGlobal.§_-Ky§,(this.simOnly) || (this.costumeCacheOnly));
            this.myTurn = true;
            _loc9_;
            _loc9_;
            this.§_-Y8§ = getTimer();
            this.turnState = "shoot";
            _loc9_;
            _loc9_;
            if(!this.§_-hM§)
            {
               this.§_-Ke§.x = mouseX;
               this.§_-Ke§.y = mouseY;
               _loc9_;
               this.§_-3o§ = true;
            }
            this.displayYourTurn(param1);
            _loc9_;
            _loc7_ = new §_-U4§(SafeGlobal.SIMEVENT_ENDTURN,this.turnTime - this.timeStep,null);
            _loc10_;
            _loc10_;
            _loc9_;
            _loc9_;
            this.simManager.addObject(_loc7_);
            if(this.§_-hM§)
            {
               _loc9_;
               _loc9_;
               this.simManager.§_-Pa§("AFKTIMEOUT");
               this.sendFireProjectile(10,-1,0,0);
               _loc10_;
               _loc7_ = new §_-U4§(SafeGlobal.SIMEVENT_ENDTURN,10,null);
               _loc10_;
               _loc10_;
               this.simManager.addObject(_loc7_);
               _loc9_;
               this.turnState = "end";
               _loc9_;
               this.§_-PE§();
               _loc9_;
               this.§_-Nb§[this.currentUnit].makeUnselected();
               this.§_-MA§ = 1;
               this.§_-lc§ = 0;
            }
         }
         else
         {
            this.§_-o6§(this.units[this.currentUnit]);
            _loc9_;
            _loc10_;
            this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_THINKINGSETUP,SafeGlobal.ANIM_UNIT_THINKING]);
            _loc10_;
            _loc10_;
            this.myTurn = false;
            _loc9_;
            this.§_-Y8§ = getTimer() + this.§_-rR§;
            _loc10_;
            this.turnState = "shoot";
            _loc9_;
            _loc9_;
            this.§_-Nb§[this.currentUnit].makeUnselected();
            this.showMessage(this.teams[param1].teamName + "\'s turn",SafeGlobal.colour_hex[this.teams[param1].colourID]);
            this.§_-M2§();
         }
         this.§_-pB§(param1);
         _loc10_;
         _loc10_;
         _loc9_;
         _loc9_;
         if(param3 != "")
         {
            _loc8_ = param3.split(",");
            _loc10_;
            this.addPowerUp(_loc8_[0],_loc8_[1],_loc8_[2],_loc8_[3],_loc8_[4],_loc8_[5]);
         }
         this.§_-fz§ = param4;
         this.simManager.sentEndSim = false;
         _loc10_;
         _loc10_;
         this.§_-Da§();
      }
      
      public function §_-Da§() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         _loc3_;
         _loc3_;
         _loc1_ = 0;
         while(_loc1_ < this.planets.length)
         {
            _loc2_;
            _loc2_;
            if(this.planets[_loc1_].blackHole)
            {
               _loc2_;
               _loc2_;
               this.planets[_loc1_].turnStartRotation = this.§_-cl§(Number(this.§_-fz§.substr(0,3)) % 360 * 180 / this.PI);
               _loc3_;
            }
            _loc1_++;
            _loc3_;
         }
      }
      
      public function §_-5e§(param1:int) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-Y8§ = this.§_-Y8§ + param1;
      }
      
      public function killDeadUnit(param1:Unit) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.addExplosion(param1.iX,param1.iY,param1.explosionRadius,param1.outerRadius,param1.damage,25,param1.lastSimTime);
         _loc2_;
         _loc2_;
         this.simManager.removeObject(param1);
         _loc3_;
         this.removeUnit(param1);
         return param1.lastSimTime;
      }
      
      public function §_-jT§() : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         _loc4_;
         this.§_-vF§.graphics.clear();
         _loc4_;
         this.§_-vF§.graphics.lineStyle(4,16711680);
         _loc4_;
         _loc1_ = 0;
         while(_loc1_ < this.planets.length)
         {
            _loc3_;
            _loc3_;
            _loc2_ = 0;
            _loc3_;
            while(true)
            {
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               if(_loc2_ >= this.planets[_loc1_].shapes.length)
               {
                  break;
               }
               _loc2_++;
               _loc4_;
            }
            _loc4_;
            _loc4_;
            _loc1_++;
            _loc4_;
            _loc4_;
         }
      }
      
      public function checkNameDisplay() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.§_-7C§ = true;
      }
      
      public function §_-Qb§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         if((this.§_-7C§) && getTimer() - this.units[this.currentUnit].nameDisplayStartTime > 3000)
         {
            _loc2_;
            _loc2_;
            this.units[this.currentUnit].hideName();
            _loc1_;
            _loc1_;
            this.§_-7C§ = false;
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
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         if(!this.§_-i-§ && !this.replay && !this.simOnly && !this.costumeCacheOnly)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            this.messageQueue.push(new ScreenMessage(param1,param2,param3));
            _loc5_;
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
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc2_;
         if(!(this.turnState == "end") && !this.§_-i-§)
         {
            _loc2_;
            this.turnState = "waiting";
         }
      }
      
      public function turnOverNoShot() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc2_;
         if(!(this.turnState == "end") && !this.§_-i-§)
         {
            _loc2_;
            _loc2_;
            this.turnState = "waiting";
            _loc1_;
            _loc1_;
         }
         this.units[this.currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
      }
      
      public function §_-gW§(param1:String, param2:uint, param3:String, param4:Boolean) : *
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
         var _loc12_:§_-GF§ = null;
         _loc7_ = new Sprite();
         _loc8_ = [];
         _loc9_ = new ColorTransform();
         _loc9_.color = param2;
         _loc13_;
         _loc10_ = 0;
         while(_loc10_ < param1.length)
         {
            _loc13_;
            _loc13_;
            _loc13_;
            if(param1.substr(_loc10_,1) != " ")
            {
               _loc14_;
               _loc14_;
               _loc14_;
               _loc13_;
               if(param1.substr(_loc10_,1) == "\'")
               {
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  _loc14_;
                  _loc11_ = param3 + "_Apost";
               }
               else
               {
                  _loc14_;
                  _loc14_;
                  _loc13_;
                  _loc13_;
                  if((param4) && param1.substr(_loc10_,1).toLowerCase() == param1.substr(_loc10_,1))
                  {
                     _loc14_;
                     _loc13_;
                     _loc13_;
                     _loc14_;
                     _loc14_;
                     _loc13_;
                     _loc14_;
                     _loc14_;
                     _loc14_;
                     _loc11_ = param3 + "_l" + param1.substr(_loc10_,1).toUpperCase();
                     _loc13_;
                     _loc13_;
                  }
                  else
                  {
                     _loc14_;
                     _loc13_;
                     _loc11_ = param3 + "_" + param1.substr(_loc10_,1).toUpperCase();
                  }
               }
               _loc5_ = getDefinitionByName(_loc11_) as Class;
               _loc12_ = new _loc5_() as §_-GF§;
               _loc12_.col.transform.colorTransform = _loc9_;
               _loc13_;
               _loc7_.addChild(_loc12_);
               if(_loc8_.length == 0)
               {
                  _loc14_;
                  _loc14_;
                  _loc12_.x = 0;
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
            _loc14_;
         }
         _loc7_.cacheAsBitmap = true;
         return _loc7_;
      }
      
      public function showNextMessage() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         removeChild(this.messageQueue[0]);
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.messageQueue.splice(0,1);
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
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
      
      public function §_-0o§() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         _loc3_;
         _loc3_;
         _loc1_ = this.§_-5P§.length - 1;
         while(_loc1_ >= 0)
         {
            this.§_-5P§.splice(_loc1_,1);
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc1_--;
            _loc2_;
            _loc2_;
         }
      }
      
      public function §_-fe§() : *
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc1_ = this.§_-c7§();
         _loc8_;
         _loc2_ = this.§_-5i§();
         _loc7_;
         _loc3_ = this.§_-NH§();
         _loc7_;
         _loc4_ = this.§_-7y§();
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc5_ = _loc1_ + _loc2_ + _loc3_ + _loc4_;
         _loc7_;
         _loc7_;
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
         _loc5_;
         _loc5_;
         _loc1_ = this.§_-c7§();
         _loc6_;
         _loc5_;
         _loc2_ = this.§_-5i§();
         _loc6_;
         _loc5_;
         _loc5_;
         _loc3_ = this.§_-NH§();
         _loc5_;
         _loc5_;
         _loc5_;
         _loc4_ = this.§_-7y§();
         return [_loc1_,_loc2_,_loc3_,_loc4_];
      }
      
      public function §_-5i§() : *
      {
         return MD5.hash(this.generatePlanetsString());
      }
      
      public function generatePlanetsString() : *
      {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         _loc9_;
         _loc9_;
         _loc8_;
         _loc1_ = "";
         _loc8_;
         _loc2_ = "";
         _loc3_ = [];
         _loc8_;
         _loc4_ = 0;
         while(_loc4_ < this.planets.length)
         {
            _loc9_;
            _loc9_;
            _loc2_ = "";
            _loc9_;
            _loc8_;
            if(this.planets[_loc4_].sun)
            {
               _loc9_;
               _loc2_ = _loc2_ + "s:";
               _loc9_;
               _loc2_ = _loc2_ + this.planets[_loc4_].x;
               _loc9_;
               _loc8_;
               _loc8_;
               _loc9_;
               _loc2_ = _loc2_ + ",";
               _loc8_;
               _loc8_;
               _loc9_;
               _loc9_;
               _loc2_ = _loc2_ + this.planets[_loc4_].y;
               _loc8_;
               _loc2_ = _loc2_ + ",";
               _loc9_;
               _loc9_;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc2_ = _loc2_ + this.planets[_loc4_].radius;
            }
            else
            {
               _loc8_;
               _loc8_;
               _loc8_;
               if(this.planets[_loc4_].blackHole)
               {
                  _loc8_;
                  _loc8_;
                  _loc2_ = _loc2_ + "h:";
                  _loc8_;
                  _loc8_;
                  _loc2_ = _loc2_ + this.planets[_loc4_].x;
                  _loc8_;
                  _loc2_ = _loc2_ + ",";
                  _loc9_;
                  _loc2_ = _loc2_ + this.planets[_loc4_].y;
                  _loc2_ = _loc2_ + ",";
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc2_ = _loc2_ + this.planets[_loc4_].radius;
                  _loc8_;
               }
               else
               {
                  _loc8_;
                  _loc9_;
                  _loc9_;
                  _loc2_ = _loc2_ + "p:";
                  _loc9_;
                  _loc2_ = _loc2_ + this.planets[_loc4_].x;
                  _loc9_;
                  _loc8_;
                  _loc2_ = _loc2_ + ",";
                  _loc9_;
                  _loc2_ = _loc2_ + this.planets[_loc4_].y;
                  _loc8_;
                  _loc2_ = _loc2_ + ",";
                  _loc8_;
                  _loc9_;
                  _loc9_;
                  _loc9_;
                  _loc9_;
                  _loc2_ = _loc2_ + this.planets[_loc4_].radius;
                  _loc9_;
                  _loc9_;
                  _loc9_;
                  _loc9_;
                  _loc2_ = _loc2_ + ":";
                  _loc6_ = 0;
                  while(true)
                  {
                     _loc9_;
                     _loc9_;
                     if(_loc6_ >= this.planets[_loc4_].shapes.length)
                     {
                        break;
                     }
                     _loc9_;
                     _loc9_;
                     _loc8_;
                     if(_loc6_ != 0)
                     {
                        _loc9_;
                        _loc2_ = _loc2_ + ";";
                        _loc9_;
                     }
                     _loc9_;
                     _loc7_ = 0;
                     while(true)
                     {
                        _loc9_;
                        _loc8_;
                        _loc8_;
                        _loc8_;
                        if(_loc7_ >= this.planets[_loc4_].shapes[_loc6_].curves.length)
                        {
                           break;
                        }
                        _loc8_;
                        if(_loc7_ != 0)
                        {
                           _loc9_;
                           _loc9_;
                           _loc2_ = _loc2_ + ",";
                           _loc9_;
                        }
                        _loc9_;
                        _loc2_ = _loc2_ + this.planets[_loc4_].shapes[_loc6_].curves[_loc7_].x;
                        _loc9_;
                        _loc9_;
                        _loc9_;
                        _loc2_ = _loc2_ + ",";
                        _loc8_;
                        _loc8_;
                        _loc8_;
                        _loc8_;
                        _loc8_;
                        _loc2_ = _loc2_ + this.planets[_loc4_].shapes[_loc6_].curves[_loc7_].y;
                        _loc2_ = _loc2_ + ",";
                        _loc8_;
                        _loc8_;
                        _loc8_;
                        _loc2_ = _loc2_ + this.planets[_loc4_].shapes[_loc6_].curves[_loc7_].radius;
                        _loc8_;
                        _loc8_;
                        _loc9_;
                        _loc9_;
                        _loc8_;
                        _loc2_ = _loc2_ + ",";
                        _loc9_;
                        _loc8_;
                        _loc8_;
                        _loc9_;
                        _loc2_ = _loc2_ + this.planets[_loc4_].shapes[_loc6_].curves[_loc7_].startAngle;
                        _loc9_;
                        _loc9_;
                        _loc9_;
                        _loc9_;
                        _loc9_;
                        _loc2_ = _loc2_ + ",";
                        _loc9_;
                        _loc9_;
                        _loc2_ = _loc2_ + this.planets[_loc4_].shapes[_loc6_].curves[_loc7_].endAngle;
                        _loc9_;
                        _loc9_;
                        _loc7_++;
                        _loc9_;
                     }
                     _loc6_++;
                  }
                  _loc8_;
                  _loc9_;
                  _loc9_;
                  _loc8_;
                  _loc8_;
                  _loc9_;
                  _loc8_;
                  _loc8_;
                  _loc2_ = _loc2_ + (":" + this.planets[_loc4_].gfxID.toString());
                  _loc9_;
                  _loc9_;
                  _loc8_;
                  _loc8_;
                  _loc9_;
                  _loc2_ = _loc2_ + (":" + this.planets[_loc4_].radioactive.toString());
                  _loc9_;
                  _loc9_;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc9_;
                  _loc2_ = _loc2_ + (":" + this.planets[_loc4_].shieldHealth.toString() + ",");
                  _loc8_;
                  _loc9_;
                  _loc8_;
                  if(this.planets[_loc4_].shieldHealth > 0 && this.planets[_loc4_].shieldShootOut == true)
                  {
                     _loc2_ = _loc2_ + "1";
                  }
                  else
                  {
                     _loc8_;
                     _loc8_;
                     _loc2_ = _loc2_ + "0";
                     _loc8_;
                  }
                  _loc8_;
                  _loc9_;
                  _loc9_;
                  _loc8_;
                  _loc8_;
                  _loc9_;
                  _loc8_;
                  _loc2_ = _loc2_ + (":" + this.planets[_loc4_].initialMass.toString());
                  _loc9_;
                  _loc9_;
                  _loc9_;
                  _loc9_;
                  _loc2_ = _loc2_ + (":" + this.planets[_loc4_].initialArea.toString());
               }
            }
            _loc3_.push(_loc2_);
            _loc4_++;
         }
         _loc9_;
         _loc9_;
         _loc1_ = _loc3_.join("|");
         var _loc5_:String = MD5.hash(_loc1_);
         return _loc1_;
      }
      
      public function §_-NH§() : *
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
         _loc11_;
         _loc2_ = "";
         _loc12_;
         _loc3_ = "";
         _loc4_ = [];
         _loc12_;
         _loc5_ = 0;
         while(true)
         {
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            if(_loc5_ >= this.units.length)
            {
               break;
            }
            _loc3_ = "u:";
            _loc11_;
            _loc11_;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + this.units[_loc5_].iX;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + this.units[_loc5_].iY;
            _loc3_ = _loc3_ + ",";
            _loc11_;
            _loc12_;
            _loc12_;
            _loc11_;
            _loc11_;
            _loc3_ = _loc3_ + this.units[_loc5_].iR;
            _loc11_;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc11_;
            _loc11_;
            _loc12_;
            _loc11_;
            _loc11_;
            _loc3_ = _loc3_ + this.units[_loc5_].locationPlanet;
            _loc11_;
            _loc11_;
            _loc12_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + this.units[_loc5_].locationShape;
            _loc12_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + this.units[_loc5_].locationCurve;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc3_ = _loc3_ + this.units[_loc5_].locationAngle;
            _loc12_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + this.units[_loc5_].poison;
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
            _loc3_ = _loc3_ + this.units[_loc5_].team;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc12_;
            if(this.units[_loc5_].dead == true)
            {
               _loc11_;
            }
            if(this.units[_loc5_].dead == true)
            {
               _loc11_;
               _loc3_ = _loc3_ + 1;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc3_ = _loc3_ + ",";
               _loc12_;
               _loc12_;
               _loc12_;
               _loc11_;
               _loc11_;
               _loc3_ = _loc3_ + this.units[_loc5_].health;
               _loc12_;
               _loc12_;
               _loc3_ = _loc3_ + ",";
               _loc11_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc3_ = _loc3_ + this.units[_loc5_].accuracy.getInt();
               _loc11_;
               _loc11_;
               _loc11_;
               _loc12_;
               if((param1) && (this.units[_loc5_].onJoin))
               {
                  _loc11_;
                  _loc11_;
                  _loc3_ = _loc3_ + ",";
                  _loc12_;
                  _loc11_;
                  _loc11_;
                  _loc3_ = _loc3_ + this.units[_loc5_].joinTargetAngle1;
                  _loc11_;
                  _loc11_;
                  _loc12_;
                  _loc12_;
                  _loc3_ = _loc3_ + ",";
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  _loc3_ = _loc3_ + this.units[_loc5_].joinTargetAngle2;
               }
               _loc4_.push(_loc3_);
               _loc5_++;
            }
            else
            {
               _loc11_;
               _loc3_ = _loc3_ + 0;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc3_ = _loc3_ + ",";
               _loc12_;
               _loc12_;
               _loc12_;
               _loc11_;
               _loc11_;
               _loc3_ = _loc3_ + this.units[_loc5_].health;
               _loc12_;
               _loc12_;
               _loc3_ = _loc3_ + ",";
               _loc11_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc3_ = _loc3_ + this.units[_loc5_].accuracy.getInt();
               _loc11_;
               _loc11_;
               _loc11_;
               _loc12_;
               if((param1) && (this.units[_loc5_].onJoin))
               {
                  _loc11_;
                  _loc11_;
                  _loc3_ = _loc3_ + ",";
                  _loc12_;
                  _loc11_;
                  _loc11_;
                  _loc3_ = _loc3_ + this.units[_loc5_].joinTargetAngle1;
                  _loc11_;
                  _loc11_;
                  _loc12_;
                  _loc12_;
                  _loc3_ = _loc3_ + ",";
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  _loc3_ = _loc3_ + this.units[_loc5_].joinTargetAngle2;
               }
               _loc4_.push(_loc3_);
               _loc5_++;
            }
         }
         _loc12_;
         _loc12_;
         _loc6_ = 0;
         while(true)
         {
            _loc12_;
            _loc11_;
            _loc11_;
            if(_loc6_ >= this.barrels.length)
            {
               break;
            }
            _loc3_ = "b:";
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + this.barrels[_loc6_].iX;
            _loc3_ = _loc3_ + ",";
            _loc11_;
            _loc11_;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + this.barrels[_loc6_].iY;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc11_;
            _loc11_;
            _loc3_ = _loc3_ + this.barrels[_loc6_].iR;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc3_ = _loc3_ + this.barrels[_loc6_].locationPlanet;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + this.barrels[_loc6_].locationShape;
            _loc11_;
            _loc12_;
            _loc3_ = _loc3_ + ",";
            _loc11_;
            _loc3_ = _loc3_ + this.barrels[_loc6_].locationCurve;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc12_;
            _loc11_;
            _loc11_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + this.barrels[_loc6_].locationAngle;
            _loc12_;
            _loc3_ = _loc3_ + ",";
            _loc11_;
            _loc11_;
            _loc11_;
            _loc3_ = _loc3_ + "0";
            _loc4_.push(_loc3_);
            _loc6_++;
            _loc11_;
            _loc11_;
         }
         _loc12_;
         _loc11_;
         _loc11_;
         _loc7_ = 0;
         while(true)
         {
            _loc12_;
            _loc12_;
            if(_loc7_ >= this.§_-KM§.length)
            {
               break;
            }
            _loc3_ = "m:";
            _loc12_;
            _loc11_;
            _loc11_;
            _loc3_ = _loc3_ + this.§_-KM§[_loc7_].iX;
            _loc3_ = _loc3_ + ",";
            _loc11_;
            _loc11_;
            _loc12_;
            _loc11_;
            _loc3_ = _loc3_ + this.§_-KM§[_loc7_].iY;
            _loc12_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + this.§_-KM§[_loc7_].iR;
            _loc12_;
            _loc12_;
            _loc11_;
            _loc11_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc11_;
            _loc11_;
            _loc12_;
            _loc3_ = _loc3_ + this.§_-KM§[_loc7_].locationPlanet;
            _loc12_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc12_;
            _loc11_;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + this.§_-KM§[_loc7_].locationShape;
            _loc12_;
            _loc12_;
            _loc11_;
            _loc11_;
            _loc3_ = _loc3_ + ",";
            _loc11_;
            _loc11_;
            _loc12_;
            _loc3_ = _loc3_ + this.§_-KM§[_loc7_].locationCurve;
            _loc12_;
            _loc12_;
            _loc11_;
            _loc3_ = _loc3_ + ",";
            _loc3_ = _loc3_ + this.§_-KM§[_loc7_].locationAngle;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc12_;
            _loc11_;
            _loc12_;
            _loc3_ = _loc3_ + this.§_-KM§[_loc7_].mineType;
            _loc12_;
            _loc4_.push(_loc3_);
            _loc7_++;
         }
         _loc12_;
         _loc12_;
         _loc8_ = 0;
         _loc11_;
         while(true)
         {
            _loc11_;
            _loc11_;
            if(_loc8_ >= this.powerUps.length)
            {
               break;
            }
            _loc11_;
            _loc3_ = "p:";
            _loc12_;
            _loc3_ = _loc3_ + this.powerUps[_loc8_].iX;
            _loc11_;
            _loc12_;
            _loc12_;
            _loc11_;
            _loc11_;
            _loc3_ = _loc3_ + ",";
            _loc11_;
            _loc11_;
            _loc11_;
            _loc3_ = _loc3_ + this.powerUps[_loc8_].iY;
            _loc11_;
            _loc12_;
            _loc3_ = _loc3_ + ",";
            _loc11_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + this.powerUps[_loc8_].iR;
            _loc11_;
            _loc11_;
            _loc3_ = _loc3_ + ",";
            _loc11_;
            _loc12_;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + this.powerUps[_loc8_].locationPlanet;
            _loc3_ = _loc3_ + ",";
            _loc11_;
            _loc11_;
            _loc11_;
            _loc3_ = _loc3_ + this.powerUps[_loc8_].locationShape;
            _loc12_;
            _loc12_;
            _loc11_;
            _loc12_;
            _loc3_ = _loc3_ + ",";
            _loc11_;
            _loc11_;
            _loc11_;
            _loc3_ = _loc3_ + this.powerUps[_loc8_].locationCurve;
            _loc12_;
            _loc12_;
            _loc3_ = _loc3_ + ",";
            _loc11_;
            _loc11_;
            _loc11_;
            _loc3_ = _loc3_ + this.powerUps[_loc8_].locationAngle;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc12_;
            _loc11_;
            _loc3_ = _loc3_ + this.powerUps[_loc8_].powerUpType;
            _loc12_;
            _loc12_;
            _loc11_;
            _loc11_;
            _loc3_ = _loc3_ + ",";
            _loc12_;
            _loc11_;
            _loc11_;
            _loc3_ = _loc3_ + this.powerUps[_loc8_].weaponID;
            _loc11_;
            _loc4_.push(_loc3_);
            _loc8_++;
         }
         _loc12_;
         _loc12_;
         _loc9_ = 0;
         while(_loc9_ < this.skyMines.length)
         {
            _loc11_;
            _loc3_ = "k:";
            _loc12_;
            _loc11_;
            _loc11_;
            _loc3_ = _loc3_ + this.skyMines[_loc9_].iX;
            _loc3_ = _loc3_ + ",";
            _loc3_ = _loc3_ + this.skyMines[_loc9_].iY;
            _loc4_.push(_loc3_);
            _loc9_++;
            _loc12_;
         }
         _loc11_;
         _loc2_ = _loc4_.join("|");
         _loc12_;
         _loc12_;
         var _loc10_:String = MD5.hash(_loc2_);
         return _loc2_;
      }
      
      public function §_-7y§() : *
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
         _loc8_;
         _loc8_;
         _loc8_;
         _loc1_ = "";
         _loc8_;
         _loc8_;
         _loc2_ = "";
         _loc3_ = [];
         _loc8_;
         _loc4_ = 0;
         while(_loc4_ < this.gates.length)
         {
            _loc8_;
            _loc8_;
            _loc6_ = Math.round(this.gates[_loc4_].angle * 180 / this.PI);
            _loc8_;
            _loc8_;
            _loc8_;
            if(this.gates[_loc4_].gateType == SafeGlobal.GATETYPE_SHIELD)
            {
               _loc7_;
               _loc2_ = "s:";
               _loc7_;
               _loc8_;
               _loc8_;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc2_ = _loc2_ + this.gates[_loc4_].iX;
               _loc8_;
               _loc8_;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc8_;
               _loc8_;
               _loc2_ = _loc2_ + ",";
               _loc7_;
               _loc7_;
               _loc7_;
               _loc2_ = _loc2_ + this.gates[_loc4_].iY;
               _loc7_;
               _loc7_;
               _loc8_;
               _loc2_ = _loc2_ + ",";
               _loc8_;
               _loc7_;
               _loc2_ = _loc2_ + _loc6_;
               _loc7_;
               _loc7_;
               _loc8_;
               _loc8_;
               _loc2_ = _loc2_ + ",";
               _loc8_;
               _loc8_;
               _loc2_ = _loc2_ + this.gates[_loc4_].life;
            }
            else
            {
               _loc8_;
               _loc8_;
               if(this.gates[_loc4_].gateType == SafeGlobal.GATETYPE_DISSOLVESHIELD)
               {
                  _loc2_ = "d:";
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc2_ = _loc2_ + this.gates[_loc4_].iX;
                  _loc8_;
                  _loc2_ = _loc2_ + ",";
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  _loc2_ = _loc2_ + this.gates[_loc4_].iY;
                  _loc7_;
                  _loc7_;
                  _loc2_ = _loc2_ + ",";
                  _loc8_;
                  _loc8_;
                  _loc2_ = _loc2_ + _loc6_;
                  _loc8_;
                  _loc8_;
                  _loc2_ = _loc2_ + ",";
                  _loc7_;
                  _loc2_ = _loc2_ + this.gates[_loc4_].life;
               }
               else if(this.gates[_loc4_].gateType == SafeGlobal.GATETYPE_WORMHOLE)
               {
                  _loc8_;
                  _loc2_ = "w:";
                  _loc8_;
                  _loc7_;
                  _loc2_ = _loc2_ + this.gates[_loc4_].iX;
                  _loc7_;
                  _loc7_;
                  _loc2_ = _loc2_ + ",";
                  _loc7_;
                  _loc7_;
                  _loc2_ = _loc2_ + this.gates[_loc4_].iY;
                  _loc2_ = _loc2_ + ",";
                  _loc2_ = _loc2_ + _loc6_;
                  _loc7_;
               }
               
            }
            _loc3_.push(_loc2_);
            _loc7_;
            _loc7_;
            _loc4_++;
         }
         _loc8_;
         _loc1_ = _loc3_.join("|");
         var _loc5_:String = MD5.hash(_loc1_);
         return _loc1_;
      }
      
      public function §_-c7§() : *
      {
         return MD5.hash(this.generateStockString());
      }
      
      public function generateStockString() : *
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc1_:String = null;
         var _loc2_:* = 0;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         var _loc5_:String = null;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc8_;
         _loc8_;
         _loc1_ = this.turnTime.toString() + "," + this.§_-Kp§.toString() + "|";
         _loc8_;
         _loc8_;
         _loc2_ = 0;
         while(_loc2_ < this.stock.length)
         {
            _loc7_;
            _loc2_;
            _loc8_;
            _loc7_;
            _loc8_;
            _loc7_;
            _loc1_ = _loc1_ + "3";
            _loc7_;
            _loc7_;
            _loc2_++;
            _loc7_;
            _loc7_;
         }
         _loc7_;
         _loc7_;
         _loc1_ = _loc1_ + "|";
         _loc3_ = [];
         _loc7_;
         _loc8_;
         _loc8_;
         _loc4_ = 0;
         while(_loc4_ < this.mods.length)
         {
            if(this.mods[_loc4_])
            {
               _loc3_.push(_loc4_);
               _loc8_;
               _loc8_;
            }
            _loc4_++;
         }
         _loc7_;
         _loc7_;
         _loc7_;
         _loc5_ = _loc3_.join(",");
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
         _loc1_;
         this.§_-pn§.addChild(this.§_-O-§);
         _loc1_;
         _loc1_;
         this.§_-nD§ = true;
      }
      
      public function §_-MC§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.§_-tz§();
         _loc1_;
         _loc1_;
         this.§_-sA§();
         _loc2_;
         _loc2_;
         this.§_-47§();
         _loc1_;
         this.§_-pn§.removeChild(this.§_-O-§);
         _loc2_;
         this.§_-nD§ = false;
      }
      
      public function §_-47§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         this.simManager.§_-dr§();
         _loc2_;
         _loc2_;
         this.simManager.§_-Pa§("RESTARTTURN");
         _loc1_;
         this.showWeaponPanelButton();
         _loc2_;
         this.turnState = "shoot";
      }
      
      public function §_-tz§() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         _loc3_;
         this.§_-qm§();
         _loc2_;
         _loc2_;
         _loc1_ = this.projectiles.length - 1;
         while(_loc1_ >= 0)
         {
            this.removeProjectile(this.projectiles[_loc1_]);
            _loc3_;
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            _loc1_--;
            _loc3_;
            _loc3_;
         }
      }
      
      public function §_-sA§() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         _loc2_;
         _loc1_ = this.§_-KM§.length - 1;
         while(_loc1_ >= 0)
         {
            if(this.§_-KM§[_loc1_].roving)
            {
               _loc2_;
               _loc2_;
               this.removeMine(this.§_-KM§[_loc1_]);
               _loc3_;
               _loc3_;
            }
            _loc3_;
            _loc2_;
            _loc1_--;
            _loc2_;
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
      
      public function §_-f2§() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         _loc2_;
         _loc2_;
         _loc1_ = this.planets.length - 1;
         while(_loc1_ >= 0)
         {
            this.§_-Fp§.removeChild(this.planets[_loc1_]);
            _loc2_;
            this.planets.splice(_loc1_,1);
            _loc2_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc1_--;
            _loc2_;
            _loc2_;
         }
      }
      
      public function §_-mT§() : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         _loc5_;
         _loc5_;
         _loc1_ = this.skyMines.length - 1;
         while(true)
         {
            _loc6_;
            _loc6_;
            if(_loc1_ < 0)
            {
               break;
            }
            if(this.§_-wd§.contains(this.skyMines[_loc1_]))
            {
               _loc5_;
               _loc5_;
               this.§_-wd§.removeChild(this.skyMines[_loc1_]);
               _loc6_;
            }
            _loc6_;
            _loc6_;
            _loc5_;
            _loc5_;
            this.skyMines.splice(_loc1_,1);
            _loc6_;
            _loc1_--;
            _loc5_;
            _loc5_;
         }
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc6_;
         _loc2_ = this.§_-KM§.length - 1;
         while(true)
         {
            _loc6_;
            _loc6_;
            _loc5_;
            _loc5_;
            if(_loc2_ < 0)
            {
               break;
            }
            if(this.§_-wd§.contains(this.§_-KM§[_loc2_]))
            {
               this.§_-wd§.removeChild(this.§_-KM§[_loc2_]);
               _loc5_;
               _loc5_;
            }
            _loc6_;
            _loc5_;
            _loc5_;
            this.§_-KM§.splice(_loc2_,1);
            _loc6_;
            _loc2_--;
            _loc5_;
            _loc5_;
         }
         _loc6_;
         _loc6_;
         _loc5_;
         _loc5_;
         _loc3_ = this.barrels.length - 1;
         while(true)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            if(_loc3_ < 0)
            {
               break;
            }
            if(this.§_-Ib§.contains(this.barrels[_loc3_]))
            {
               this.§_-Ib§.removeChild(this.barrels[_loc3_]);
            }
            _loc6_;
            _loc5_;
            this.barrels.splice(_loc3_,1);
            _loc3_--;
         }
         _loc5_;
         _loc4_ = this.powerUps.length - 1;
         while(_loc4_ >= 0)
         {
            if(this.§_-0h§.contains(this.powerUps[_loc4_]))
            {
               _loc6_;
               _loc6_;
               this.§_-0h§.removeChild(this.powerUps[_loc4_]);
               _loc5_;
               _loc5_;
            }
            this.powerUps.splice(_loc4_,1);
            _loc5_;
            _loc5_;
            _loc4_--;
         }
      }
      
      public function §_-oN§() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         _loc2_;
         _loc1_ = this.gates.length - 1;
         while(_loc1_ >= 0)
         {
            this.§_-Fp§.removeChild(this.gates[_loc1_]);
            _loc2_;
            _loc2_;
            this.gates.splice(_loc1_,1);
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc2_;
            _loc1_--;
            _loc2_;
            _loc2_;
         }
      }
      
      public function §_-QZ§() : *
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc1_:String = null;
         var _loc2_:* = 0;
         var _loc3_:String = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         _loc8_;
         _loc8_;
         _loc1_ = "";
         _loc7_;
         _loc2_ = 0;
         while(true)
         {
            _loc7_;
            _loc7_;
            if(_loc2_ >= this.planets.length)
            {
               break;
            }
            _loc8_;
            _loc8_;
            _loc5_ = 0;
            _loc8_;
            while(true)
            {
               _loc8_;
               if(_loc5_ >= this.planets[_loc2_].shapes.length)
               {
                  break;
               }
               _loc6_ = 0;
               while(true)
               {
                  _loc8_;
                  _loc7_;
                  _loc7_;
                  if(_loc6_ >= this.planets[_loc2_].shapes[_loc5_].points.length)
                  {
                     break;
                  }
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc1_ = _loc1_ + (this.planets[_loc2_].shapes[_loc5_].points[_loc6_].x.toString() + ",");
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc7_;
                  _loc1_ = _loc1_ + (this.planets[_loc2_].shapes[_loc5_].points[_loc6_].y.toString() + ",");
                  _loc7_;
                  _loc7_;
                  _loc6_++;
               }
               _loc8_;
               _loc5_++;
            }
            _loc2_++;
         }
         _loc7_;
         _loc8_;
         _loc8_;
         _loc3_ = "";
         _loc7_;
         _loc8_;
         _loc8_;
         _loc4_ = 0;
         while(_loc4_ < this.units.length)
         {
            if(!this.units[_loc4_].dead)
            {
               _loc7_;
               _loc7_;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc7_;
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
         _loc5_;
         _loc2_ = this.units.indexOf(param1);
         _loc6_;
         _loc6_;
         this.§_-Nb§[_loc2_].visible = false;
         _loc5_;
         param1.health = 0;
         param1.dead = true;
         _loc5_;
         _loc5_;
         param1.removed = true;
         param1.hideMe();
         _loc5_;
         _loc5_;
         this.updateTeamHealths();
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         if(param1.team == this.currentTeam && this.teams[param1.team].teamBattleID == -1 || this.teams[param1.team].teamBattleID == this.teams[this.currentTeam].teamBattleID && !(this.teams[param1.team].teamBattleID == -1))
         {
            _loc5_;
            _loc5_;
            if(param1.summarizeDeath)
            {
               _loc6_;
               _loc6_;
               _loc6_;
               _loc6_;
               _loc6_;
               _loc6_;
               this.§_-Ob§++;
            }
            if(_loc2_ == this.currentUnit)
            {
               _loc5_;
               if(param1.summarizeDeath)
               {
                  _loc5_;
                  this.§_-Nt§ = 1;
               }
            }
         }
         else if(param1.summarizeDeath)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            this.§_-dk§++;
            _loc5_;
            _loc5_;
         }
         
         if(this.teams[param1.team].totalHealth == 0)
         {
            _loc5_;
            this.statuses[param1.team].alpha = 0.5;
            _loc6_;
            _loc6_;
            this.statuses[param1.team].hideBar();
         }
      }
      
      public function removeMine(param1:Mine) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc4_;
         this.camera.removeTarget(param1);
         _loc4_;
         _loc4_;
         this.simManager.removeObject(param1);
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc2_ = this.§_-KM§.indexOf(param1);
         _loc3_;
         _loc3_;
         if(_loc2_ != -1)
         {
            if(this.§_-wd§.contains(this.§_-KM§[_loc2_]))
            {
               this.§_-wd§.removeChild(param1);
               _loc4_;
            }
            this.§_-KM§.splice(_loc2_,1);
         }
      }
      
      public function §_-sD§(param1:§_-3e§) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc4_;
         _loc4_;
         this.camera.removeTarget(param1);
         _loc4_;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc2_ = this.skyMines.indexOf(param1);
         if(_loc2_ != -1)
         {
            if(this.§_-wd§.contains(param1))
            {
               this.§_-wd§.removeChild(param1);
               _loc3_;
               _loc3_;
            }
            this.skyMines.splice(_loc2_,1);
         }
      }
      
      public function §_-ac§(param1:Barrel) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc2_ = this.barrels.indexOf(param1);
         _loc3_;
         _loc3_;
         if(_loc2_ != -1)
         {
            _loc4_;
            _loc4_;
            if(this.§_-Ib§.contains(this.barrels[_loc2_]))
            {
               _loc3_;
               this.§_-Ib§.removeChild(this.barrels[_loc2_]);
               _loc3_;
               _loc3_;
            }
         }
         this.barrels.splice(_loc2_,1);
      }
      
      public function §_-fU§(param1:Explosion) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc4_;
         this.camera.removeTarget(param1);
         _loc4_;
         _loc4_;
         _loc3_;
         _loc4_;
         _loc2_ = this.§_-pf§.indexOf(param1);
         if(_loc2_ != -1)
         {
            _loc4_;
            if(this.§_-p7§.contains(this.§_-pf§[_loc2_]))
            {
               this.§_-p7§.removeChild(this.§_-pf§[_loc2_]);
               _loc3_;
            }
         }
         this.§_-pf§.splice(_loc2_,1);
      }
      
      public function §_-B7§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.summaryShown = false;
         _loc2_;
         this.§_-dk§ = 0;
         this.§_-Ob§ = 0;
         this.summaryDamageDealt = 0;
         this.summaryDamageTaken = 0;
         this.§_-i7§ = 0;
         this.§_-pc§ = 0;
         _loc1_;
         this.§ true§ = 0;
         this.§_-Qp§ = 0;
         _loc2_;
         this.§_-lc§ = 1;
         _loc1_;
         _loc1_;
         this.§_-MA§ = 0;
         _loc2_;
         this.§_-L-§ = 0;
         _loc1_;
         this.§_-lQ§ = 0;
         _loc2_;
         this.§_-nU§ = 0;
         this.§_-9-§ = 0;
         this.summaryHealthDealt = 0;
         this.summaryHealthTaken = 0;
         _loc2_;
         _loc2_;
         this.§_-Nt§ = 0;
         _loc1_;
         this.summaryDamageSelf = 0;
         this.§_-o1§ = 0;
         _loc2_;
         _loc2_;
         this.§function§ = 0;
      }
      
      public function addEffect(param1:int, param2:Number, param3:Number, param4:int, param5:Unit = null) : *
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         _loc8_;
         _loc8_;
         _loc8_;
         if(!this.simOnly && !this.costumeCacheOnly)
         {
            _loc7_;
            _loc8_;
            _loc8_;
            if(param1 == SafeGlobal.EFFECTS_UNITHITBOUNCESHIELD)
            {
               this.effects.push(new §_-oo§(param2,param3));
               _loc7_;
               _loc7_;
               this.effects[this.effects.length - 1].init(param5.costume.spriteSheets[SafeGlobal.ANIM_UNIT_BOUNCESHIELDDEATH]);
               param5.newAnimState([SafeGlobal.ANIM_UNIT_BOUNCESHIELDDEATH]);
               _loc8_;
               this.effects[this.effects.length - 1].rotation = param4;
               _loc8_;
               _loc8_;
            }
            else
            {
               _loc8_;
               _loc8_;
               if(param1 == SafeGlobal.EFFECTS_UNITHITDISSOLVESHIELD)
               {
                  this.effects.push(new §_-Hi§(param2,param3));
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  _loc8_;
                  _loc8_;
                  this.effects[this.effects.length - 1].init(param5.costume.spriteSheets[SafeGlobal.ANIM_UNIT_DISSOLVESHIELDDEATH]);
                  _loc7_;
                  _loc7_;
                  param5.newAnimState([SafeGlobal.ANIM_UNIT_DISSOLVESHIELDDEATH]);
                  _loc7_;
                  _loc7_;
                  this.effects[this.effects.length - 1].rotation = param4;
               }
               else
               {
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  if(param1 == SafeGlobal.EFFECTS_PROJHITBOUNCESHIELD)
                  {
                     this.effects.push(new §_-rF§(param2,param3));
                     _loc7_;
                     _loc7_;
                     _loc7_;
                     _loc7_;
                     _loc8_;
                     _loc8_;
                     this.effects[this.effects.length - 1].init(this.§_-jM§[SafeGlobal.EFFECTS_PROJHITBOUNCESHIELD]);
                     _loc7_;
                     _loc7_;
                  }
                  else
                  {
                     _loc7_;
                     if(param1 == SafeGlobal.EFFECTS_PROJHITDISSOLVESHIELD)
                     {
                        _loc7_;
                        this.effects.push(new §_-Rp§(param2,param3));
                        this.effects[this.effects.length - 1].init(this.§_-jM§[SafeGlobal.EFFECTS_PROJHITDISSOLVESHIELD]);
                     }
                     else
                     {
                        _loc8_;
                        _loc8_;
                        if(param1 == SafeGlobal.EFFECTS_WORMHOLEFLASH)
                        {
                           _loc8_;
                           _loc8_;
                           if(this.§_-Tp§(SafeGlobal.EFFECTS_WORMHOLEFLASH) < 10)
                           {
                              _loc7_;
                              this.effects.push(new §_-gK§(param2,param3));
                              _loc7_;
                              _loc7_;
                              _loc8_;
                              this.effects[this.effects.length - 1].init(this.§_-jM§[SafeGlobal.EFFECTS_WORMHOLEFLASH]);
                              _loc8_;
                              this.effects[this.effects.length - 1].rotation = param4 + 90;
                           }
                        }
                        else if(param1 == SafeGlobal.EFFECTS_SHOCKWAVEPUSH)
                        {
                           _loc7_;
                           _loc7_;
                           _loc7_;
                           _loc7_;
                           this.effects.push(new §_-yo§(param2,param3));
                           _loc7_;
                           this.effects[this.effects.length - 1].init(this.§_-jM§[SafeGlobal.EFFECTS_SHOCKWAVEPUSH]);
                           _loc7_;
                           _loc7_;
                           this.effects[this.effects.length - 1].scaleX = this.effects[this.effects.length - 1].scaleY = param4 / 50;
                        }
                        else
                        {
                           _loc8_;
                           _loc8_;
                           _loc8_;
                           if(param1 == SafeGlobal.EFFECTS_SHOCKWAVEEMP)
                           {
                              _loc7_;
                              _loc7_;
                              this.effects.push(new §_-Vp§(param2,param3));
                              _loc8_;
                              this.effects[this.effects.length - 1].init(this.§_-jM§[SafeGlobal.EFFECTS_SHOCKWAVEEMP]);
                              _loc8_;
                              _loc8_;
                              this.effects[this.effects.length - 1].scaleX = this.effects[this.effects.length - 1].scaleY = param4 / 50;
                           }
                           else if(param1 == SafeGlobal.EFFECTS_SHOCKWAVEFIRE)
                           {
                              _loc7_;
                              this.effects.push(new §_-L5§(param2,param3));
                              _loc7_;
                              this.effects[this.effects.length - 1].init(this.§_-jM§[SafeGlobal.EFFECTS_SHOCKWAVEFIRE]);
                              _loc8_;
                              _loc8_;
                              this.effects[this.effects.length - 1].scaleX = this.effects[this.effects.length - 1].scaleY = param4 / 50;
                              _loc7_;
                              _loc7_;
                           }
                           else
                           {
                              _loc7_;
                              _loc7_;
                              _loc8_;
                              _loc8_;
                              if(param1 == SafeGlobal.EFFECTS_SHOCKWAVEPOISON)
                              {
                                 _loc7_;
                                 this.effects.push(new §_-Q4§(param2,param3));
                                 _loc7_;
                                 _loc7_;
                                 this.effects[this.effects.length - 1].init(this.§_-jM§[SafeGlobal.EFFECTS_SHOCKWAVEPOISON]);
                                 this.effects[this.effects.length - 1].scaleX = this.effects[this.effects.length - 1].scaleY = param4 / 50;
                                 _loc7_;
                              }
                              else if(param1 == SafeGlobal.EFFECTS_SHOCKWAVEHEALTH)
                              {
                                 _loc7_;
                                 _loc7_;
                                 this.effects.push(new §_-Lf§(param2,param3));
                                 _loc7_;
                                 _loc7_;
                                 this.effects[this.effects.length - 1].init(this.§_-jM§[SafeGlobal.EFFECTS_SHOCKWAVEHEALTH]);
                                 this.effects[this.effects.length - 1].scaleX = this.effects[this.effects.length - 1].scaleY = param4 / 50;
                              }
                              else
                              {
                                 _loc7_;
                                 if(param1 == SafeGlobal.EFFECTS_COLLECTHEALTH)
                                 {
                                    _loc7_;
                                    _loc7_;
                                    this.effects.push(new §_-1U§(param2,param3));
                                    _loc8_;
                                    _loc8_;
                                    _loc8_;
                                    _loc8_;
                                    this.effects[this.effects.length - 1].init(this.§_-jM§[SafeGlobal.EFFECTS_COLLECTHEALTH]);
                                    _loc8_;
                                    _loc7_;
                                    _loc8_;
                                    this.effects[this.effects.length - 1].rotation = param4;
                                 }
                                 else
                                 {
                                    _loc8_;
                                    if(param1 == SafeGlobal.EFFECTS_COLLECTWEAPON)
                                    {
                                       _loc7_;
                                       _loc7_;
                                       this.effects.push(new §_-Xe§(param2,param3));
                                       this.effects[this.effects.length - 1].init(this.§_-jM§[SafeGlobal.EFFECTS_COLLECTWEAPON]);
                                       _loc7_;
                                       _loc7_;
                                       _loc7_;
                                       this.effects[this.effects.length - 1].rotation = param4;
                                    }
                                    else
                                    {
                                       _loc8_;
                                       if(param1 == SafeGlobal.EFFECTS_TELEPORTOUT)
                                       {
                                          _loc7_;
                                          _loc7_;
                                          this.effects.push(new §_-ph§(param2,param3));
                                          _loc7_;
                                          this.effects[this.effects.length - 1].init(param5.costume.spriteSheets[SafeGlobal.ANIM_UNIT_TELEPORTOUT]);
                                          _loc8_;
                                          _loc8_;
                                          this.effects[this.effects.length - 1].rotation = param4;
                                          _loc7_;
                                          this.effects[this.effects.length - 1].scaleX = param5.scaleX;
                                          _loc7_;
                                       }
                                       else
                                       {
                                          _loc7_;
                                          _loc7_;
                                          _loc8_;
                                          if(param1 == SafeGlobal.EFFECTS_BAZOOKAFLASH)
                                          {
                                             _loc7_;
                                             this.effects.push(new §_-N4§(param2,param3));
                                             this.effects[this.effects.length - 1].init(this.§_-jM§[SafeGlobal.EFFECTS_BAZOOKAFLASH]);
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
                                                _loc7_;
                                                _loc7_;
                                                this.effects.push(new §_-gH§(param2,param3));
                                                _loc8_;
                                                _loc7_;
                                                _loc7_;
                                                _loc7_;
                                                _loc7_;
                                                this.effects[this.effects.length - 1].init(this.§_-jM§[SafeGlobal.EFFECTS_SUNBLAST]);
                                                _loc8_;
                                                _loc8_;
                                                _loc8_;
                                                _loc8_;
                                                _loc8_;
                                                _loc8_;
                                                _loc8_;
                                                this.effects[this.effects.length - 1].rotation = param4;
                                                _loc7_;
                                                _loc7_;
                                             }
                                             else if(param1 == SafeGlobal.EFFECTS_SHIELDCOLLAPSE)
                                             {
                                                _loc8_;
                                                this.effects.push(new §_-uB§(param2,param3));
                                                _loc8_;
                                                _loc8_;
                                                _loc8_;
                                                _loc8_;
                                                this.effects[this.effects.length - 1].init(this.§_-jM§[SafeGlobal.EFFECTS_SHIELDCOLLAPSE]);
                                                _loc7_;
                                                _loc7_;
                                                this.effects[this.effects.length - 1].rotation = param4;
                                             }
                                             else
                                             {
                                                _loc7_;
                                                if(param1 == SafeGlobal.EFFECTS_SHIELDDISSOLVECOLLAPSE)
                                                {
                                                   _loc7_;
                                                   this.effects.push(new §_-r4§(param2,param3));
                                                   _loc8_;
                                                   _loc8_;
                                                   _loc8_;
                                                   this.effects[this.effects.length - 1].init(this.§_-jM§[SafeGlobal.EFFECTS_SHIELDDISSOLVECOLLAPSE]);
                                                   _loc8_;
                                                   this.effects[this.effects.length - 1].rotation = param4;
                                                }
                                                else
                                                {
                                                   _loc8_;
                                                   _loc8_;
                                                   if(param1 == SafeGlobal.EFFECTS_SHIELDSPAWN)
                                                   {
                                                      this.effects.push(new §_-sm§(param2,param3));
                                                      _loc7_;
                                                      this.effects[this.effects.length - 1].init(this.§_-jM§[SafeGlobal.EFFECTS_SHIELDSPAWN]);
                                                      _loc8_;
                                                      _loc8_;
                                                      _loc8_;
                                                      this.effects[this.effects.length - 1].rotation = param4;
                                                      _loc7_;
                                                   }
                                                   else
                                                   {
                                                      _loc7_;
                                                      _loc7_;
                                                      _loc8_;
                                                      _loc8_;
                                                      if(param1 == SafeGlobal.EFFECTS_SHIELDDISSOLVESPAWN)
                                                      {
                                                         this.effects.push(new §_-79§(param2,param3));
                                                         this.effects[this.effects.length - 1].init(this.§_-jM§[SafeGlobal.EFFECTS_SHIELDDISSOLVESPAWN]);
                                                         _loc8_;
                                                         _loc7_;
                                                         _loc7_;
                                                         _loc8_;
                                                         this.effects[this.effects.length - 1].rotation = param4;
                                                         _loc7_;
                                                      }
                                                      else
                                                      {
                                                         _loc8_;
                                                         _loc8_;
                                                         if(param1 == SafeGlobal.§_-sr§)
                                                         {
                                                            _loc7_;
                                                            _loc7_;
                                                            this.effects.push(new §_-Hi§(param2,param3));
                                                            _loc8_;
                                                            this.effects[this.effects.length - 1].init(param5.costume.spriteSheets[SafeGlobal.ANIM_UNIT_TAZED]);
                                                            _loc8_;
                                                            _loc8_;
                                                            param5.newAnimState([SafeGlobal.ANIM_UNIT_TAZED]);
                                                            _loc7_;
                                                            _loc7_;
                                                            this.effects[this.effects.length - 1].rotation = param4;
                                                            _loc7_;
                                                            _loc7_;
                                                            this.effects[this.effects.length - 1].scaleX = param5.scaleX;
                                                            _loc7_;
                                                            _loc7_;
                                                         }
                                                         else
                                                         {
                                                            _loc8_;
                                                            if(param1 == SafeGlobal.§_-UE§)
                                                            {
                                                               _loc7_;
                                                               _loc7_;
                                                               _loc8_;
                                                               this.effects.push(new §_-JA§(param2,param3));
                                                               _loc7_;
                                                               _loc7_;
                                                               _loc7_;
                                                               _loc7_;
                                                               this.effects[this.effects.length - 1].init(this.§_-jM§[SafeGlobal.§_-UE§]);
                                                               _loc7_;
                                                               this.effects[this.effects.length - 1].rotation = param4;
                                                               _loc8_;
                                                               _loc8_;
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
                  }
               }
            }
            this.effects[this.effects.length - 1].type = param1;
            this.§_-2p§.addChild(this.effects[this.effects.length - 1]);
            this.camera.addTarget(this.effects[this.effects.length - 1],30,"effect addeffect " + param1);
         }
         else if(this.costumeCacheOnly)
         {
            _loc8_;
            _loc8_;
            _loc8_;
            if(param1 == SafeGlobal.EFFECTS_UNITHITBOUNCESHIELD)
            {
               param5.newAnimState([SafeGlobal.ANIM_UNIT_BOUNCESHIELDDEATH]);
            }
            else
            {
               _loc7_;
               if(param1 == SafeGlobal.EFFECTS_UNITHITDISSOLVESHIELD)
               {
                  param5.newAnimState([SafeGlobal.ANIM_UNIT_DISSOLVESHIELDDEATH]);
               }
               else if(param1 == SafeGlobal.§_-sr§)
               {
                  _loc7_;
                  param5.newAnimState([SafeGlobal.ANIM_UNIT_TAZED]);
               }
               else if(param1 == SafeGlobal.EFFECTS_TELEPORTOUT)
               {
                  param5.newAnimState([SafeGlobal.ANIM_UNIT_TELEPORTOUT]);
               }
               
               
            }
         }
         
      }
      
      public function §_-Ve§(param1:§_-KP§) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc2_ = this.effects.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.camera.removeTarget(this.effects[_loc2_]);
            _loc4_;
            _loc4_;
            if(this.§_-2p§.contains(this.effects[_loc2_]))
            {
               _loc4_;
               _loc4_;
               this.§_-2p§.removeChild(this.effects[_loc2_]);
               _loc3_;
            }
            this.effects.splice(_loc2_,1);
         }
      }
      
      public function §_-Tp§(param1:int) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         _loc4_;
         _loc5_;
         _loc5_;
         _loc2_ = 0;
         _loc5_;
         _loc3_ = 0;
         while(true)
         {
            _loc4_;
            _loc4_;
            if(_loc3_ >= this.effects.length)
            {
               break;
            }
            if(this.effects[_loc3_].type == param1)
            {
               _loc5_;
               _loc2_++;
               _loc5_;
               _loc5_;
            }
            _loc3_++;
            _loc5_;
         }
         return _loc2_;
      }
      
      public function §_-L9§(param1:PowerUp) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc2_ = this.powerUps.indexOf(param1);
         _loc3_;
         _loc3_;
         if(_loc2_ != -1)
         {
            _loc3_;
            _loc3_;
            if(this.§_-0h§.contains(this.powerUps[_loc2_]))
            {
               _loc4_;
               _loc4_;
               this.§_-0h§.removeChild(this.powerUps[_loc2_]);
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
            SoundManager.§_-sQ§(SafeGlobal.FX_DRILL,param1.sound_uid);
            _loc4_;
         }
         this.screen.removeChild(param1);
         _loc4_;
         _loc4_;
         this.camera.removeTarget(param1);
         _loc4_;
         _loc3_;
         _loc2_ = this.projectiles.indexOf(param1);
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
         _loc4_;
         _loc4_;
         this.§_-Fp§.removeChild(param1);
         _loc4_;
         _loc4_;
         _loc4_;
         _loc2_ = this.gates.indexOf(param1);
         _loc4_;
         _loc4_;
         this.gates.splice(_loc2_,1);
      }
      
      public function §_-oy§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-Z3§ = new CircleBorder(this.§_-nP§);
         _loc2_;
         _loc2_;
         this.screen.addChild(this.§_-Z3§);
         _loc2_;
         _loc2_;
         _loc1_;
         this.§_-Z3§.x = this.§_-Sr§.x;
         _loc1_;
         this.§_-Z3§.y = this.§_-Sr§.y;
      }
      
      public function §_-RM§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.screen.removeChild(this.§_-Z3§);
      }
      
      public function destroyGame() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         _loc3_;
         _loc3_;
         this.§_-oy§();
         removeEventListener(Event.ENTER_FRAME,this.§_-Tx§);
         removeEventListener(Event.ENTER_FRAME,this.cacheLoop);
         _loc2_;
         _loc2_;
         this.starMap = null;
         stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
         _loc2_;
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§_-54§);
         stage.removeEventListener(KeyboardEvent.KEY_UP,this.§_-W9§);
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-G9§);
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-W0§);
         _loc2_;
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-HE§);
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-2B§);
         _loc3_;
         _loc3_;
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-2I§);
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.incomingDragStop);
         _loc2_;
         _loc2_;
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-eZ§);
         _loc3_;
         _loc3_;
         _loc1_ = 0;
         while(_loc1_ < this.units.length)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            this.units[_loc1_].removeListeners();
            _loc3_;
            _loc3_;
            _loc1_++;
         }
         this.§_-wl§.splice(0);
         _loc3_;
         if(this.§_-i-§)
         {
            if(this.§_-GV§ != null)
            {
               _loc2_;
               _loc2_;
               this.§_-GV§.stop();
               this.§_-GV§.removeEventListener(TimerEvent.TIMER,this.callback);
               _loc2_;
               this.§_-GV§ = null;
               _loc3_;
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
         SafeGlobal.TIMELINE.timeline.starMap.ignoreNextJump();
         _loc11_;
         _loc1_ = this.units.length - 1;
         while(true)
         {
            _loc10_;
            _loc11_;
            _loc11_;
            if(_loc1_ < 0)
            {
               break;
            }
            this.§_-vb§.removeChild(this.units[_loc1_]);
            _loc11_;
            this.units[_loc1_].destroyMe();
            _loc10_;
            _loc10_;
            this.units.splice(_loc1_,1);
            _loc1_--;
            _loc11_;
            _loc11_;
         }
         _loc11_;
         _loc10_;
         _loc2_ = this.§_-KM§.length - 1;
         _loc11_;
         _loc11_;
         while(_loc2_ >= 0)
         {
            if(this.§_-wd§.contains(this.§_-KM§[_loc2_]))
            {
               _loc10_;
               this.§_-wd§.removeChild(this.§_-KM§[_loc2_]);
            }
            _loc11_;
            _loc11_;
            _loc10_;
            _loc10_;
            this.§_-KM§[_loc2_].destroyMe();
            _loc10_;
            this.§_-KM§.splice(_loc2_,1);
            _loc2_--;
         }
         _loc11_;
         _loc10_;
         _loc10_;
         _loc3_ = this.gates.length - 1;
         _loc10_;
         _loc10_;
         while(_loc3_ >= 0)
         {
            this.§_-Fp§.removeChild(this.gates[_loc3_]);
            this.gates[_loc3_].destroyMe();
            _loc10_;
            _loc10_;
            _loc10_;
            this.gates.splice(_loc3_,1);
            _loc11_;
            _loc11_;
            _loc10_;
            _loc10_;
            _loc3_--;
            _loc10_;
            _loc10_;
         }
         _loc10_;
         _loc11_;
         _loc11_;
         _loc4_ = this.§_-pf§.length - 1;
         while(true)
         {
            _loc10_;
            _loc10_;
            if(_loc4_ < 0)
            {
               break;
            }
            if(this.§_-p7§.contains(this.§_-pf§[_loc4_]))
            {
               _loc11_;
               _loc11_;
               this.§_-p7§.removeChild(this.§_-pf§[_loc4_]);
               _loc10_;
            }
            _loc11_;
            _loc11_;
            this.§_-pf§[_loc4_].destroyMe();
            this.§_-pf§.splice(_loc3_,1);
            _loc11_;
            _loc10_;
            _loc10_;
            _loc4_--;
         }
         _loc10_;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc5_ = this.planets.length - 1;
         _loc11_;
         while(true)
         {
            _loc11_;
            _loc11_;
            if(_loc5_ < 0)
            {
               break;
            }
            this.§_-Fp§.removeChild(this.planets[_loc5_]);
            _loc11_;
            _loc10_;
            _loc10_;
            _loc10_;
            this.planets[_loc5_].destroyMe();
            _loc11_;
            _loc11_;
            this.planets.splice(_loc5_,1);
            _loc10_;
            _loc10_;
            _loc11_;
            _loc5_--;
         }
         _loc10_;
         _loc11_;
         _loc11_;
         _loc1_ = this.§_-Nb§.length - 1;
         _loc11_;
         _loc11_;
         while(true)
         {
            _loc10_;
            if(_loc1_ < 0)
            {
               break;
            }
            this.§_-pn§.removeChild(this.§_-Nb§[_loc1_]);
            _loc11_;
            this.§_-Nb§[_loc1_].destroyMe();
            _loc10_;
            _loc10_;
            _loc10_;
            this.§_-Nb§.splice(_loc1_,1);
            _loc11_;
            _loc11_;
            _loc1_--;
            _loc11_;
         }
         _loc10_;
         _loc10_;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc5_ = this.projectiles.length - 1;
         while(true)
         {
            _loc11_;
            _loc11_;
            _loc10_;
            if(_loc5_ < 0)
            {
               break;
            }
            if(this.screen.contains(this.projectiles[_loc5_]))
            {
               _loc11_;
               _loc11_;
               this.screen.removeChild(this.projectiles[_loc5_]);
            }
            _loc11_;
            _loc11_;
            this.projectiles[_loc5_].destroyMe();
            _loc11_;
            _loc11_;
            this.projectiles.splice(_loc5_,1);
            _loc10_;
            _loc5_--;
         }
         _loc6_ = this.teams.length - 1;
         while(true)
         {
            _loc10_;
            if(_loc6_ < 0)
            {
               break;
            }
            _loc10_;
            this.teams[_loc6_].destroyMe();
            _loc10_;
            this.teams.splice(_loc6_,1);
            _loc10_;
            _loc10_;
            _loc6_--;
         }
         _loc10_;
         _loc10_;
         _loc10_;
         _loc7_ = this.barrels.length - 1;
         while(_loc7_ >= 0)
         {
            if(this.§_-Ib§.contains(this.barrels[_loc7_]))
            {
               this.§_-Ib§.removeChild(this.barrels[_loc7_]);
            }
            this.barrels[_loc7_].destroyMe();
            _loc11_;
            _loc11_;
            _loc10_;
            this.barrels.splice(_loc7_,1);
            _loc11_;
            _loc7_--;
         }
         _loc5_ = this.powerUps.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§_-0h§.contains(this.powerUps[_loc5_]))
            {
               this.§_-0h§.removeChild(this.powerUps[_loc5_]);
            }
            _loc10_;
            this.powerUps[_loc5_].destroyMe();
            _loc10_;
            _loc10_;
            _loc10_;
            _loc11_;
            this.powerUps.splice(_loc5_,1);
            _loc11_;
            _loc5_--;
            _loc11_;
            _loc11_;
         }
         _loc10_;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc8_ = this.statuses.length - 1;
         _loc11_;
         _loc11_;
         while(_loc8_ >= 0)
         {
            if(this.statusBar.contains(this.statuses[_loc8_]))
            {
               this.statusBar.removeChild(this.statuses[_loc8_]);
            }
            _loc10_;
            this.statuses[_loc8_].destroyMe();
            _loc10_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc11_;
            this.statuses.splice(_loc8_,1);
            _loc11_;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc8_--;
            _loc10_;
         }
         _loc10_;
         _loc10_;
         _loc10_;
         _loc2_ = this.§_-B4§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc11_;
            _loc11_;
            this.§_-B4§[_loc2_].destroyMe();
            _loc11_;
            this.§_-B4§.splice(_loc2_,1);
            _loc11_;
            _loc11_;
            _loc11_;
            _loc2_--;
            _loc11_;
         }
         _loc11_;
         _loc11_;
         _loc10_;
         _loc10_;
         _loc11_;
         _loc4_ = this.effects.length - 1;
         _loc10_;
         _loc10_;
         while(true)
         {
            _loc10_;
            _loc10_;
            if(_loc4_ < 0)
            {
               break;
            }
            this.§_-2p§.removeChild(this.effects[_loc4_]);
            _loc10_;
            _loc11_;
            _loc11_;
            this.effects[_loc4_].destroyMe();
            _loc11_;
            _loc11_;
            this.effects.splice(_loc4_,1);
            _loc4_--;
            _loc10_;
            _loc10_;
         }
         _loc10_;
         _loc7_ = this.§_-05§.length - 1;
         while(_loc7_ >= 0)
         {
            this.§_-05§[_loc7_].destroyMe();
            _loc11_;
            _loc11_;
            this.§_-05§.splice(_loc7_,1);
            _loc10_;
            _loc10_;
            _loc10_;
            _loc7_--;
         }
         _loc9_ = this.damage.length - 1;
         while(_loc9_ >= 0)
         {
            this.screen.removeChild(this.damage[_loc9_]);
            _loc10_;
            _loc10_;
            _loc10_;
            _loc10_;
            this.damage[_loc9_].destroyMe();
            _loc10_;
            _loc10_;
            this.damage.splice(_loc9_,1);
            _loc10_;
            _loc10_;
            _loc10_;
            _loc11_;
            _loc11_;
            _loc9_--;
         }
         _loc11_;
         SafeGlobal.GAME = null;
      }
      
      public function §_-Ow§(param1:Point, param2:Point, param3:Point, param4:Point, param5:Boolean = true) : §_-pM§
      {
         var _loc27_:* = false;
         var _loc28_:* = true;
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
         var _loc26_:§_-pM§ = null;
         _loc27_;
         if(param1.x > param2.x)
         {
            _loc28_;
            _loc28_;
            _loc28_;
            _loc6_ = param2.x;
            _loc27_;
            _loc27_;
            _loc7_ = param1.x;
         }
         else
         {
            _loc27_;
            _loc27_;
            _loc6_ = param1.x;
            _loc27_;
            _loc27_;
            _loc27_;
            _loc27_;
            _loc7_ = param2.x;
            _loc28_;
            _loc28_;
         }
         if(param3.x > param4.x)
         {
            _loc28_;
            _loc28_;
            _loc10_ = param4.x;
            _loc28_;
            _loc28_;
            _loc27_;
            _loc11_ = param3.x;
            _loc27_;
         }
         else
         {
            _loc28_;
            _loc28_;
            _loc10_ = param3.x;
            _loc11_ = param4.x;
            _loc28_;
         }
         if(param1.y > param2.y)
         {
            _loc28_;
            _loc28_;
            _loc28_;
            _loc28_;
            _loc8_ = param2.y;
            _loc28_;
            _loc28_;
            _loc9_ = param1.y;
         }
         else
         {
            _loc28_;
            _loc28_;
            _loc8_ = param1.y;
            _loc9_ = param2.y;
         }
         if(param3.y > param4.y)
         {
            _loc12_ = param4.y;
            _loc27_;
            _loc13_ = param3.y;
         }
         else
         {
            _loc12_ = param3.y;
            _loc27_;
            _loc27_;
            _loc13_ = param4.y;
            _loc27_;
            _loc27_;
         }
         _loc28_;
         _loc28_;
         _loc28_;
         _loc28_;
         _loc28_;
         _loc28_;
         if(_loc7_ < _loc10_ || _loc11_ < _loc6_ || _loc9_ < _loc12_ || _loc13_ < _loc8_)
         {
            _loc28_;
            return null;
         }
         _loc27_;
         _loc27_;
         _loc27_;
         _loc14_ = param2.y - param1.y;
         _loc27_;
         _loc27_;
         _loc27_;
         _loc16_ = param1.x - param2.x;
         _loc27_;
         _loc27_;
         _loc27_;
         _loc27_;
         _loc18_ = param2.x * param1.y - param1.x * param2.y;
         _loc27_;
         _loc15_ = param4.y - param3.y;
         _loc27_;
         _loc27_;
         _loc17_ = param3.x - param4.x;
         _loc27_;
         _loc19_ = param4.x * param3.y - param3.x * param4.y;
         _loc28_;
         _loc28_;
         _loc20_ = _loc14_ * _loc17_ - _loc15_ * _loc16_;
         _loc27_;
         _loc27_;
         if(_loc20_ == 0)
         {
            _loc27_;
            return null;
         }
         _loc27_;
         _loc27_;
         _loc21_ = Math.floor((_loc16_ * _loc19_ - _loc17_ * _loc18_) / _loc20_ * 100000) / 100000;
         _loc28_;
         _loc22_ = Math.floor((_loc15_ * _loc18_ - _loc14_ * _loc19_) / _loc20_ * 100000) / 100000;
         if(param5)
         {
            _loc28_;
            _loc27_;
            _loc27_;
            _loc28_;
            _loc28_;
            _loc27_;
            _loc27_;
            if((_loc21_ - param2.x) * (_loc21_ - param2.x) + (_loc22_ - param2.y) * (_loc22_ - param2.y) > (param1.x - param2.x) * (param1.x - param2.x) + (param1.y - param2.y) * (param1.y - param2.y))
            {
               _loc27_;
               _loc27_;
               return null;
            }
            _loc27_;
            _loc27_;
            _loc27_;
            _loc28_;
            _loc28_;
            _loc27_;
            _loc27_;
            _loc28_;
            _loc28_;
            _loc27_;
            _loc27_;
            _loc28_;
            _loc28_;
            _loc28_;
            _loc27_;
            _loc27_;
            if((_loc21_ - param1.x) * (_loc21_ - param1.x) + (_loc22_ - param1.y) * (_loc22_ - param1.y) > (param1.x - param2.x) * (param1.x - param2.x) + (param1.y - param2.y) * (param1.y - param2.y))
            {
               _loc27_;
               _loc27_;
               return null;
            }
            _loc28_;
            _loc28_;
            _loc27_;
            _loc27_;
            _loc28_;
            _loc28_;
            _loc28_;
            _loc28_;
            if((_loc21_ - param4.x) * (_loc21_ - param4.x) + (_loc22_ - param4.y) * (_loc22_ - param4.y) > (param3.x - param4.x) * (param3.x - param4.x) + (param3.y - param4.y) * (param3.y - param4.y))
            {
               _loc27_;
               return null;
            }
            _loc28_;
            _loc28_;
            _loc28_;
            _loc28_;
            _loc28_;
            _loc28_;
            _loc27_;
            _loc27_;
            _loc27_;
            _loc28_;
            if((_loc21_ - param3.x) * (_loc21_ - param3.x) + (_loc22_ - param3.y) * (_loc22_ - param3.y) > (param3.x - param4.x) * (param3.x - param4.x) + (param3.y - param4.y) * (param3.y - param4.y))
            {
               return null;
            }
         }
         _loc27_;
         _loc27_;
         _loc23_ = param2.x - param1.x;
         _loc27_;
         _loc27_;
         _loc24_ = param2.y - param1.y;
         _loc27_;
         _loc27_;
         _loc27_;
         _loc27_;
         _loc25_ = Math.floor(Math.atan2(_loc24_,_loc23_) * 100000) / 100000;
         _loc26_ = new §_-pM§();
         _loc26_.x = _loc21_;
         _loc27_;
         _loc26_.y = _loc22_;
         _loc27_;
         _loc26_.angle = _loc25_;
         return _loc26_;
      }
      
      public function §_-cl§(param1:Number) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = NaN;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
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
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.§_-OI§();
         _loc1_;
         SafeGlobal.TIMELINE.removeLobbyGameDisplay();
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         SoundManager.§_-Oc§(SafeGlobal.FX_TELEPORT,(this.simOnly) || (this.costumeCacheOnly));
      }
      
      public function sendUpdateCache(param1:Number) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         SafeGlobal.game_client.sendUpdateCache(param1);
      }
      
      public function updatePlayerCache(param1:int, param2:Number) : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:* = false;
         var _loc4_:* = 0;
         _loc6_;
         _loc5_;
         _loc5_;
         if(this.§_-ct§.length > param1)
         {
            _loc6_;
            this.§_-ct§[param1].width = 800 * param2;
            _loc5_;
            _loc5_;
            _loc3_ = true;
            _loc6_;
            _loc6_;
            _loc4_ = 0;
            while(_loc4_ < this.teams.length)
            {
               if(this.§_-ct§[_loc4_].width < 800)
               {
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc3_ = false;
                  _loc6_;
               }
               _loc4_++;
               _loc6_;
               _loc6_;
            }
            _loc5_;
            _loc5_;
            if(_loc3_)
            {
               _loc6_;
               _loc6_;
               this.removeCacheLoadingBar();
            }
         }
      }
      
      public function sendEndOfTurn(param1:int) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
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
         SafeGlobal.game_client.sendEndSim(this.§_-fe§());
      }
      
      public function sendFireProjectile(param1:int, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         _loc5_;
         _loc5_;
         SafeGlobal.game_client.fireProjectile(param1,param2,param3,param4);
      }
      
      public function sendLayMine(param1:int, param2:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         SafeGlobal.game_client.layMine(param1,param2);
      }
      
      public function sendTeleportTo(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int) : void
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         _loc8_;
         _loc8_;
         SafeGlobal.game_client.teleportTo(param1,param2,param3,param4,param5,param6);
      }
      
      public function sendStartWalk(param1:int, param2:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         SafeGlobal.game_client.sendStartWalk(param1,param2);
      }
      
      public function sendStopWalk(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         SafeGlobal.game_client.sendStopWalk(param1);
      }
      
      public function sendIncoming(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         SafeGlobal.game_client.incoming(param1,param2,param3);
      }
      
      public function sendMelee(param1:int, param2:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         SafeGlobal.game_client.melee(param1,param2);
      }
      
      public function sendPlaceGate(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int = -1, param7:int = -1, param8:int = -1) : void
      {
         var _loc9_:* = false;
         var _loc10_:* = true;
         _loc10_;
         SafeGlobal.game_client.placeGate(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function sendFlashError(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         SafeGlobal.game_client.sendFlashError(param1);
      }
      
      public function sendPlacePlanetGate(param1:int, param2:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
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
         _loc3_;
         _loc3_;
         this.selectWeapon(0);
         _loc2_;
         this.showWeaponPanelButton();
         _loc3_;
         this.§_-5K§.tweenOnWeaponName();
         _loc3_;
         this.§_-se§(this.units[this.currentUnit]);
      }
      
      public function §_-pB§(param1:int) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc4_;
         _loc2_ = 0;
         while(_loc2_ < this.statuses.length)
         {
            _loc3_;
            _loc3_;
            if(_loc2_ == param1)
            {
               _loc3_;
               _loc3_;
               _loc4_;
               _loc4_;
               _loc4_;
               this.statuses[_loc2_].makeTextBig();
               _loc3_;
               _loc3_;
            }
            else
            {
               this.statuses[_loc2_].makeTextNormal();
               _loc3_;
               _loc3_;
            }
            _loc2_++;
            _loc4_;
            _loc4_;
         }
      }
      
      public function §_-hQ§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.§_-Jz§.showMe();
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
         _loc6_;
         _loc6_;
         _loc1_ = this.units.length - 1;
         while(true)
         {
            _loc7_;
            if(_loc1_ < 0)
            {
               break;
            }
            _loc6_;
            _loc6_;
            this.units[_loc1_].visible = false;
            _loc6_;
            _loc7_;
            _loc7_;
            _loc1_--;
         }
         _loc7_;
         _loc2_ = this.§_-pf§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc7_;
            _loc7_;
            this.§_-pf§[_loc2_].visible = false;
            _loc2_--;
            _loc6_;
            _loc6_;
         }
         _loc7_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc1_ = this.§_-Nb§.length - 1;
         _loc6_;
         while(true)
         {
            _loc7_;
            if(_loc1_ < 0)
            {
               break;
            }
            _loc6_;
            _loc6_;
            this.§_-Nb§[_loc1_].visible = false;
            _loc6_;
            _loc6_;
            _loc7_;
            _loc7_;
            _loc1_--;
            _loc6_;
         }
         _loc7_;
         _loc7_;
         _loc6_;
         _loc6_;
         _loc7_;
         _loc3_ = this.projectiles.length - 1;
         while(true)
         {
            _loc7_;
            if(_loc3_ < 0)
            {
               break;
            }
            this.projectiles[_loc3_].visible = false;
            _loc7_;
            _loc7_;
            _loc3_--;
         }
         _loc7_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc3_ = this.powerUps.length - 1;
         while(true)
         {
            _loc7_;
            _loc6_;
            _loc6_;
            if(_loc3_ < 0)
            {
               break;
            }
            this.powerUps[_loc3_].visible = false;
            _loc3_--;
         }
         _loc4_ = this.§_-B4§.length - 1;
         _loc6_;
         _loc6_;
         while(_loc4_ >= 0)
         {
            _loc6_;
            _loc6_;
            this.§_-B4§[_loc4_].visible = false;
            _loc7_;
            _loc7_;
            _loc6_;
            _loc6_;
            _loc4_--;
         }
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc2_ = this.effects.length - 1;
         _loc7_;
         while(true)
         {
            _loc7_;
            if(_loc2_ < 0)
            {
               break;
            }
            _loc7_;
            _loc7_;
            this.effects[_loc2_].visible = false;
            _loc6_;
            _loc6_;
            _loc2_--;
            _loc6_;
         }
         _loc7_;
         _loc7_;
         _loc5_ = this.damage.length - 1;
         while(_loc5_ >= 0)
         {
            this.damage[_loc5_].visible = false;
            _loc5_--;
         }
      }
   }
}
