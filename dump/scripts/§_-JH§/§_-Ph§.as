package §_-JH§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.getTimer;
   
   public class §_-Ph§ extends Sprite
   {
      
      public function §_-Ph§(param1:String, param2:uint, param3:String, param4:Boolean = true)
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:* = 0;
         _loc6_;
         this.mainText = new TextField();
         _loc6_;
         _loc6_;
         this.§_-Xp§ = new TextField();
         _loc7_;
         this.format1 = new TextFormat();
         this.format2 = new TextFormat();
         this.format1black = new TextFormat();
         _loc6_;
         this.format2black = new TextFormat();
         super();
         _loc6_;
         addChild(this.§_-Xp§);
         addChild(this.mainText);
         _loc6_;
         _loc6_;
         this.§_-Xp§.x = 1;
         this.§_-Xp§.y = 1;
         _loc7_;
         this.mainText.width = 700;
         this.mainText.multiline = true;
         _loc6_;
         this.mainText.wordWrap = true;
         this.§_-Xp§.width = 700;
         this.§_-Xp§.multiline = true;
         this.§_-Xp§.wordWrap = true;
         _loc7_;
         this.startTime = getTimer();
         if(param4)
         {
            this.mainText.text = "[" + param3 + "] " + param1;
            this.§_-Xp§.text = "[" + param3 + "] " + param1;
            this.format1.color = param2;
            this.format1.size = 18;
            this.format1.bold = true;
            _loc7_;
            this.format1.font = "Open Sans";
            this.format2.color = 16777215;
            this.format2.size = 18;
            _loc6_;
            _loc6_;
            this.format2.bold = false;
            this.format2.font = "Open Sans";
            this.format1black.color = 0;
            _loc7_;
            this.format1black.size = 18;
            this.format1black.bold = true;
            _loc7_;
            this.format1black.font = "Open Sans";
            this.format2black.color = 0;
            this.format2black.size = 18;
            this.format2black.bold = false;
            _loc7_;
            _loc7_;
            this.format2black.font = "Open Sans";
            _loc5_ = param3.length + 3;
            this.mainText.embedFonts = true;
            this.§_-Xp§.embedFonts = true;
            this.mainText.setTextFormat(this.format1,0,_loc5_);
            _loc7_;
            this.mainText.setTextFormat(this.format2,_loc5_,_loc5_ + param1.length);
            this.§_-Xp§.setTextFormat(this.format1black,0,_loc5_);
            _loc6_;
            this.§_-Xp§.setTextFormat(this.format2black,_loc5_,_loc5_ + param1.length);
            _loc6_;
            _loc6_;
         }
         else
         {
            this.mainText.text = param1;
            _loc7_;
            this.§_-Xp§.text = param1;
            this.format2.color = 16777215;
            this.format2.size = 18;
            this.format2.bold = true;
            _loc7_;
            this.format2.font = "Open Sans";
            _loc6_;
            _loc6_;
            this.format2black.color = 0;
            _loc7_;
            this.format2black.size = 18;
            _loc6_;
            _loc6_;
            this.format2black.bold = true;
            this.format2black.font = "Open Sans";
            this.mainText.embedFonts = true;
            _loc6_;
            _loc6_;
            this.§_-Xp§.embedFonts = true;
            this.mainText.setTextFormat(this.format2);
            _loc7_;
            this.§_-Xp§.setTextFormat(this.format2black);
         }
         this.mainText.selectable = false;
         this.§_-Xp§.selectable = false;
         _loc6_;
         mouseEnabled = false;
         _loc7_;
         _loc7_;
         mouseChildren = false;
         _loc7_;
         _loc7_;
         cacheAsBitmap = true;
      }
      
      public var startTime:int;
      
      public var mainText:TextField;
      
      public var §_-Xp§:TextField;
      
      public var format1:TextFormat;
      
      public var format2:TextFormat;
      
      public var format1black:TextFormat;
      
      public var format2black:TextFormat;
      
      public var expired:Boolean = false;
   }
}
