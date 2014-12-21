package §_-zj§
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
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.planetDistance = new Point(0,0);
         _loc2_;
         _loc2_;
         this.§_-hw§ = new §_-De§();
         _loc2_;
         this.§_-mD§ = new Point(0,0);
         this.boundsSprite = new Sprite();
         _loc2_;
         _loc2_;
         this.§_-zH§ = new §_-U3§();
         this.§_-yk§ = new §_-U3§();
         _loc1_;
         this.§_-17§ = new §_-U3§();
         _loc1_;
         _loc1_;
         this.§_-0I§ = new §_-U3§();
         super();
         _loc2_;
         _loc2_;
         this.§_-yk§.rotation = 90;
         this.§_-17§.rotation = 270;
         this.§_-0I§.rotation = 180;
         if(stage)
         {
            _loc1_;
            _loc1_;
            this.addedToStage();
            _loc2_;
            _loc2_;
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
         }
      }
      
      public var §_-wR§:Boolean = false;
      
      public var planetID:int;
      
      public var angle:int;
      
      public var planetDistance:Point;
      
      public var id:int = -1;
      
      public var §_-Bn§:Boolean = true;
      
      public var §_-hw§:§_-De§;
      
      public var valid:Boolean = true;
      
      public var §_-s5§:int;
      
      public var §_-mD§:Point;
      
      public var boundsSprite:Sprite;
      
      public var cross:§_-H6§;
      
      public var §_-zH§;
      
      public var §_-yk§;
      
      public var §_-17§;
      
      public var §_-0I§;
      
      public function addedToStage(param1:Event = null) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(param1)
         {
            _loc2_;
            removeEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
            _loc2_;
            _loc2_;
         }
         addChild(this.boundsSprite);
      }
      
      public function §_-Ax§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         mouseEnabled = false;
         _loc1_;
         _loc1_;
         mouseChildren = false;
      }
      
      public function §_-bU§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         mouseEnabled = true;
         _loc1_;
         _loc1_;
         mouseChildren = true;
      }
      
      public function §_-X2§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-jz§();
         _loc1_;
         _loc1_;
         addChild(this.§_-zH§);
         _loc2_;
         _loc2_;
         addChild(this.§_-yk§);
         _loc2_;
         addChild(this.§_-17§);
         _loc1_;
         _loc1_;
         addChild(this.§_-0I§);
      }
      
      public function §_-3K§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         addChild(this.§_-hw§);
         _loc1_;
         _loc1_;
         _loc1_;
         this.§_-hw§.x = this.§_-yk§.x;
         _loc1_;
         this.§_-hw§.y = this.§_-yk§.y;
         _loc2_;
         _loc2_;
         this.§_-Te§();
      }
      
      public function §_-et§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         if(contains(this.§_-hw§))
         {
            _loc1_;
            _loc1_;
            removeChild(this.§_-hw§);
         }
      }
      
      public function §_-yM§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         removeChild(this.§_-zH§);
         _loc1_;
         removeChild(this.§_-yk§);
         _loc2_;
         _loc2_;
         removeChild(this.§_-17§);
         _loc1_;
         _loc1_;
         removeChild(this.§_-0I§);
      }
      
      public function §_-Te§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         this.§_-hw§.§_-hd§.text = int(x).toString();
         _loc2_;
         _loc2_;
         this.§_-hw§.§_-x§.text = int(y).toString();
      }
      
      public function §_-jz§() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Rectangle = getBounds(this);
         this.§_-zH§.x = _loc1_.left - 3;
         _loc2_;
         this.§_-zH§.y = _loc1_.top - 3;
         _loc2_;
         this.§_-yk§.x = _loc1_.left + _loc1_.width + 3;
         this.§_-yk§.y = _loc1_.top - 3;
         this.§_-17§.x = _loc1_.left - 3;
         this.§_-17§.y = _loc1_.top + _loc1_.height + 3;
         _loc2_;
         this.§_-0I§.x = _loc1_.left + _loc1_.width + 3;
         _loc3_;
         _loc3_;
         this.§_-0I§.y = _loc1_.top + _loc1_.height + 3;
      }
      
      public function init() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         addEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
      }
      
      public function §_-iA§(param1:MouseEvent) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.§_-s5§ = getTimer();
         _loc3_;
         Global.EDITOR.startDragging(this);
         _loc3_;
         _loc3_;
         removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-iA§);
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
            _loc2_;
            _loc2_;
         }
         else
         {
            _loc1_;
            _loc1_;
            if(!this.valid && !this.cross)
            {
               this.cross = new §_-H6§();
               _loc1_;
               _loc1_;
               this.boundsSprite.addChild(this.cross);
               _loc1_;
               _loc1_;
               this.cross.rotation = 0 - rotation;
            }
         }
      }
   }
}
