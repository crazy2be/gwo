package
{
   import flash.display.MovieClip;
   import fl.transitions.Tween;
   import flash.geom.Rectangle;
   import flash.events.MouseEvent;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import flash.events.Event;
   import flash.display.StageAlign;
   import bridge.utils.SWFReader;
   import fl.transitions.easing.*;
   import fl.transitions.TweenEvent;
   import flash.utils.setTimeout;
   import flash.filters.BlurFilter;
   
   public class Minilogo extends MovieClip
   {
      
      public function Minilogo(param1:String = "BC")
      {
         var _loc2_:MovieClip = null;
         super();
         this.align = param1;
         this.alpha = 0;
         this.buttonMode = true;
         addEventListener(Event.ADDED_TO_STAGE,handleAttach);
         this.addEventListener(MouseEvent.MOUSE_DOWN,handleClick);
         Minilogo.showLogo = false;
      }
      
      public static var showLogo:Boolean = true;
      
      public var zing:MovieClip;
      
      private var align:String;
      
      private var t:Tween;
      
      private var rect:Rectangle;
      
      private function handleClick(param1:MouseEvent) : *
      {
         var e:MouseEvent = param1;
         e.preventDefault();
         e.stopImmediatePropagation();
         try
         {
            navigateToURL(new URLRequest("http://playerio.com/?ref=gamelogo"),"_new");
         }
         catch(e:Error)
         {
            trace("Error occurred!");
         }
      }
      
      private function handleResize(param1:Event = null) : void
      {
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         if(this.parent)
         {
            _loc2_ = 0;
            _loc3_ = 0;
            if(stage.scaleMode == "noScale")
            {
               switch(stage.align)
               {
                  case "":
                     _loc2_ = -(stage.stageWidth - rect.width) / 2;
                     _loc3_ = -(stage.stageHeight - rect.height) / 2;
                     break;
                  case StageAlign.TOP:
                     _loc2_ = -(stage.stageWidth - rect.width) / 2;
                     break;
               }
            }
            switch(align)
            {
               case "TL":
                  this.x = _loc2_ + 140;
                  this.y = _loc3_ + 45;
                  break;
               case "CL":
                  this.x = _loc2_ + 140;
                  this.y = _loc3_ + stage.stageHeight / 2;
                  break;
               case "BL":
                  this.x = _loc2_ + 140;
                  this.y = _loc3_ + stage.stageHeight - 45;
                  break;
               case "TC":
                  this.x = _loc2_ + stage.stageWidth / 2;
                  this.y = _loc3_ + 45;
                  break;
               case "CC":
                  this.x = _loc2_ + stage.stageWidth / 2;
                  this.y = _loc3_ + stage.stageHeight / 2;
                  break;
               case "TR":
                  this.x = _loc2_ + stage.stageWidth / 2;
                  this.y = _loc3_ + stage.stageHeight - 45;
                  break;
               case "CR":
                  this.x = _loc2_ + stage.stageWidth - 140;
                  this.y = _loc3_ + 45;
                  break;
               case "BR":
                  this.x = _loc2_ + stage.stageWidth - 140;
                  this.y = _loc3_ + stage.stageHeight / 2;
                  break;
               default:
                  this.x = _loc2_ + stage.stageWidth - 140;
                  this.y = _loc3_ + stage.stageHeight - 45;
            }
         }
      }
      
      private function handleEnterFrame(param1:Event) : void
      {
         if(stage.getChildAt(stage.numChildren - 1) != this)
         {
            stage.addChild(this);
         }
      }
      
      private function handleAttach(param1:Event) : void
      {
         if((stage.loaderInfo as Object).hasOwnProperty("bytes"))
         {
            rect = new SWFReader((stage.loaderInfo as Object).bytes).dimensions;
         }
         else
         {
            rect = new Rectangle(0,0,stage.stageWidth,stage.stageHeight);
         }
         stage.addEventListener(Event.RESIZE,handleResize);
         handleResize();
         t = new Tween(this,"alpha",Strong.easeIn,0,1,0.5,true);
         t.addEventListener(TweenEvent.MOTION_FINISH,handleCreated);
         t.addEventListener(TweenEvent.MOTION_CHANGE,handleTick);
         addEventListener(Event.ENTER_FRAME,handleEnterFrame);
      }
      
      private function handleCreated(param1:TweenEvent) : void
      {
         t = new Tween(zing,"x",Regular.easeInOut,zing.x,500,1.5,true);
         setTimeout(doRemove,3000);
      }
      
      private function handleTick(param1:Event) : void
      {
         this.filters = [new BlurFilter((1 - this.alpha) * 100,(1 - this.alpha) * 10)];
      }
      
      private function doRemove() : void
      {
         t = new Tween(this,"alpha",Strong.easeIn,1,0,0.5,true);
         t.addEventListener(TweenEvent.MOTION_CHANGE,handleTick);
         t.addEventListener(TweenEvent.MOTION_FINISH,kill);
         removeEventListener(Event.ENTER_FRAME,handleEnterFrame);
         stage.removeEventListener(Event.RESIZE,handleResize);
      }
      
      private function kill(param1:Event) : void
      {
         if(this.parent)
         {
            this.parent.removeChild(this);
         }
      }
   }
}
