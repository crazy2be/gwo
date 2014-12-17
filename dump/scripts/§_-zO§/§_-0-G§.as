package §_-zO§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.getTimer;
   
   public class §_-0-G§ extends Sprite
   {
      
      public function §_-0-G§(param1:String, param2:uint, param3:String, param4:Boolean = true)
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc5_:* = 0;
         this.mainText = new TextField();
         _loc6_;
         this.§_-6f§ = new TextField();
         _loc7_;
         _loc7_;
         this.format1 = new TextFormat();
         this.format2 = new TextFormat();
         _loc7_;
         _loc7_;
         this.format1black = new TextFormat();
         this.format2black = new TextFormat();
         _loc7_;
         super();
         addChild(this.§_-6f§);
         _loc7_;
         addChild(this.mainText);
         this.§_-6f§.x = 1;
         _loc6_;
         this.§_-6f§.y = 1;
         _loc6_;
         _loc6_;
         this.mainText.width = 700;
         this.mainText.multiline = true;
         _loc6_;
         this.mainText.wordWrap = true;
         this.§_-6f§.width = 700;
         _loc7_;
         _loc7_;
         this.§_-6f§.multiline = true;
         _loc7_;
         this.§_-6f§.wordWrap = true;
         _loc7_;
         this.startTime = getTimer();
         if(param4)
         {
            this.mainText.text = "[" + param3 + "] " + param1;
            _loc7_;
            _loc7_;
            this.§_-6f§.text = "[" + param3 + "] " + param1;
            this.format1.color = param2;
            _loc7_;
            this.format1.size = 18;
            this.format1.bold = true;
            this.format1.font = "Open Sans";
            _loc6_;
            _loc6_;
            this.format2.color = 16777215;
            this.format2.size = 18;
            this.format2.bold = false;
            this.format2.font = "Open Sans";
            this.format1black.color = 0;
            _loc6_;
            _loc6_;
            this.format1black.size = 18;
            this.format1black.bold = true;
            _loc7_;
            this.format1black.font = "Open Sans";
            this.format2black.color = 0;
            this.format2black.size = 18;
            this.format2black.bold = false;
            this.format2black.font = "Open Sans";
            _loc5_ = param3.length + 3;
            _loc6_;
            this.mainText.embedFonts = true;
            this.§_-6f§.embedFonts = true;
            this.mainText.setTextFormat(this.format1,0,_loc5_);
            _loc6_;
            this.mainText.setTextFormat(this.format2,_loc5_,_loc5_ + param1.length);
            _loc7_;
            _loc7_;
            this.§_-6f§.setTextFormat(this.format1black,0,_loc5_);
            this.§_-6f§.setTextFormat(this.format2black,_loc5_,_loc5_ + param1.length);
         }
         else
         {
            this.mainText.text = param1;
            this.§_-6f§.text = param1;
            this.format2.color = 16777215;
            this.format2.size = 18;
            this.format2.bold = true;
            _loc6_;
            _loc6_;
            this.format2.font = "Open Sans";
            _loc6_;
            _loc6_;
            this.format2black.color = 0;
            this.format2black.size = 18;
            this.format2black.bold = true;
            this.format2black.font = "Open Sans";
            this.mainText.embedFonts = true;
            this.§_-6f§.embedFonts = true;
            _loc6_;
            this.mainText.setTextFormat(this.format2);
            _loc6_;
            _loc6_;
            this.§_-6f§.setTextFormat(this.format2black);
         }
         this.mainText.selectable = false;
         this.§_-6f§.selectable = false;
         _loc7_;
         _loc7_;
         mouseEnabled = false;
         _loc7_;
         mouseChildren = false;
         cacheAsBitmap = true;
      }
      
      public var startTime:int;
      
      public var mainText:TextField;
      
      public var §_-6f§:TextField;
      
      public var format1:TextFormat;
      
      public var format2:TextFormat;
      
      public var format1black:TextFormat;
      
      public var format2black:TextFormat;
      
      public var expired:Boolean = false;
   }
}
