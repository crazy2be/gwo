package §_-HM§
{
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   
   public class EditorObject extends Sprite
   {
      
      public function EditorObject()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.planetDistance = new Point(0,0);
         this.§_-Tf§ = new §_-NY§();
         this.§_-nl§ = new Point(0,0);
         this.boundsSprite = new Sprite();
         _loc1_;
         this.§_-0-R§ = new §_-ss§();
         _loc2_;
         _loc2_;
         this.§_-ET§ = new §_-ss§();
         this.§_-5Y§ = new §_-ss§();
         this.§_-Qp§ = new §_-ss§();
         super();
         _loc2_;
         _loc2_;
         this.§_-ET§.rotation = 90;
         this.§_-5Y§.rotation = 270;
         this.§_-Qp§.rotation = 180;
         if(stage)
         {
            this.addedToStage();
            _loc2_;
            _loc2_;
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
         }
      }
      
      public var §_-3T§:Boolean = false;
      
      public var planetID:int;
      
      public var angle:int;
      
      public var planetDistance:Point;
      
      public var id:int = -1;
      
      public var §_-1Q§:Boolean = true;
      
      public var §_-Tf§:§_-NY§;
      
      public var valid:Boolean = true;
      
      public var §_-kV§:int;
      
      public var §_-nl§:Point;
      
      public var boundsSprite:Sprite;
      
      public var cross:§_-00§;
      
      public var §_-0-R§;
      
      public var §_-ET§;
      
      public var §_-5Y§;
      
      public var §_-Qp§;
      
      public function addedToStage(param1:Event = null) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         if(param1)
         {
            _loc3_;
            removeEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
            _loc3_;
         }
         addChild(this.boundsSprite);
      }
      
      public function §_-GT§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         mouseEnabled = false;
         _loc2_;
         mouseChildren = false;
      }
      
      public function §_-Nc§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         mouseEnabled = true;
         _loc2_;
         _loc2_;
         mouseChildren = true;
      }
      
      public function §_-m4§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-la§();
         _loc1_;
         addChild(this.§_-0-R§);
         _loc2_;
         _loc2_;
         addChild(this.§_-ET§);
         _loc2_;
         addChild(this.§_-5Y§);
         _loc1_;
         _loc1_;
         addChild(this.§_-Qp§);
      }
      
      public function §_-ti§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         addChild(this.§_-Tf§);
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         this.§_-Tf§.x = this.§_-ET§.x;
         _loc1_;
         this.§_-Tf§.y = this.§_-ET§.y;
         _loc2_;
         this.§_-0v§();
      }
      
      public function §_-Lp§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         if(contains(this.§_-Tf§))
         {
            _loc2_;
            removeChild(this.§_-Tf§);
         }
      }
      
      public function §_-4O§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         removeChild(this.§_-0-R§);
         _loc2_;
         _loc2_;
         removeChild(this.§_-ET§);
         _loc1_;
         removeChild(this.§_-5Y§);
         _loc1_;
         _loc1_;
         removeChild(this.§_-Qp§);
      }
      
      public function §_-0v§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc2_;
         _loc2_;
         this.§_-Tf§.§_-AD§.text = int(x).toString();
         _loc2_;
         _loc2_;
         this.§_-Tf§.§_-uR§.text = int(y).toString();
      }
      
      public function §_-la§() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Rectangle = getBounds(this);
         this.§_-0-R§.x = _loc1_.left - 3;
         this.§_-0-R§.y = _loc1_.top - 3;
         _loc2_;
         _loc2_;
         this.§_-ET§.x = _loc1_.left + _loc1_.width + 3;
         _loc3_;
         this.§_-ET§.y = _loc1_.top - 3;
         _loc3_;
         _loc3_;
         this.§_-5Y§.x = _loc1_.left - 3;
         this.§_-5Y§.y = _loc1_.top + _loc1_.height + 3;
         this.§_-Qp§.x = _loc1_.left + _loc1_.width + 3;
         _loc3_;
         this.§_-Qp§.y = _loc1_.top + _loc1_.height + 3;
      }
      
      public function init() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         addEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
      }
      
      public function §_-K2§(param1:MouseEvent) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-kV§ = getTimer();
         _loc3_;
         Global.EDITOR.startDragging(this);
         _loc2_;
         _loc2_;
         removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-K2§);
         _loc2_;
         _loc2_;
         param1.stopPropagation();
      }
      
      public function showValid() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         if((this.valid) && (this.cross))
         {
            this.boundsSprite.removeChild(this.cross);
            this.cross = null;
            _loc1_;
            _loc1_;
         }
         else if(!this.valid && !this.cross)
         {
            _loc1_;
            this.cross = new §_-00§();
            this.boundsSprite.addChild(this.cross);
            this.cross.rotation = 0 - rotation;
         }
         
      }
   }
}
