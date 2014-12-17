package §_-ZN§
{
   import flash.events.MouseEvent;
   import com.funkypear.ui.§_-02§;
   
   public class §_-B8§ extends SimpleButton
   {
      
      public function §_-B8§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         super();
         _loc1_;
         _loc1_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(§_-QR§)
         {
            gotoAndStop("up");
            alpha = 0.4;
            _loc1_;
            buttonMode = false;
         }
         else
         {
            buttonMode = true;
            alpha = 1;
            _loc2_;
            if(over)
            {
               gotoAndStop("over");
            }
            else
            {
               gotoAndStop("up");
            }
         }
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var e:MouseEvent = param1;
         _loc5_;
         _loc5_;
         if(!§_-QR§)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            if(this.§_-xl§((parent as §_-02§).name_text.text,(parent as §_-02§).§_-zm§.text,(parent as §_-02§).§_-v5§.text))
            {
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               if(this.§_-hx§((parent as §_-02§).name_text.text))
               {
                  _loc4_;
                  if(this.§_-Ag§((parent as §_-02§).§_-zm§.text,(parent as §_-02§).§_-wI§.text))
                  {
                     if(this.static((parent as §_-02§).§_-v5§.text))
                     {
                        _loc5_;
                        setDisabled(true);
                        (parent as §_-02§).response_text.text = "";
                        Global.§_-k0§ = true;
                        TimelineGlobal.input_username = (parent as §_-02§).name_text.text;
                        TimelineGlobal.input_password = (parent as §_-02§).§_-zm§.text;
                        TimelineGlobal.input_email = (parent as §_-02§).§_-v5§.text;
                        _loc4_;
                        SafeGlobal.TIMELINE.connectToPlayerIO();
                     }
                     else
                     {
                        try
                        {
                           (parent as §_-02§).response_text.text = "PLEASE ENTER A VALID EMAIL ADDRESS.";
                        }
                        catch(e:Error)
                        {
                        }
                     }
                  }
                  else
                  {
                     try
                     {
                        (parent as §_-02§).response_text.text = "PLEASE ENTER A VALID PASSWORD.\n6-16 CHARACTERS. LETTERS AND NUMBERS ONLY.";
                     }
                     catch(e:Error)
                     {
                     }
                  }
               }
               else
               {
                  try
                  {
                     (parent as §_-02§).response_text.text = "PLEASE ENTER A VALID USERNAME.\n6-16 CHARACTERS. LETTERS AND NUMBERS ONLY.";
                     _loc5_;
                  }
                  catch(e:Error)
                  {
                  }
               }
            }
            else
            {
               try
               {
                  if((parent as §_-02§).name_text.text == "")
                  {
                     _loc4_;
                     _loc4_;
                     (parent as §_-02§).response_text.text = "PLEASE ENTER A VALID USERNAME.\n6-16 CHARACTERS. LETTERS AND NUMBERS ONLY.";
                  }
                  else if((parent as §_-02§).§_-zm§.text == "")
                  {
                     (parent as §_-02§).response_text.text = "PLEASE ENTER A VALID PASSWORD.\n6-16 CHARACTERS. LETTERS AND NUMBERS ONLY.";
                     _loc4_;
                  }
                  else if((parent as §_-02§).§_-v5§.text == "")
                  {
                     (parent as §_-02§).response_text.text = "PLEASE ENTER A VALID EMAIL ADDRESS.";
                  }
                  
                  
               }
               catch(e:Error)
               {
               }
            }
            if(this.§_-xl§((parent as §_-02§).name_text.text,(parent as §_-02§).§_-zm§.text,(parent as §_-02§).§_-v5§.text))
            {
            }
         }
      }
      
      private function §_-xl§(param1:String, param2:String, param3:String) : Boolean
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         _loc5_;
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(param1 == "" || param2 == "" || param3 == "")
         {
            _loc5_;
            _loc5_;
            return false;
         }
         return true;
      }
      
      private function static(param1:String) : Boolean
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:RegExp = new RegExp("(\\w|[_.\\-])+@((\\w|-)+\\.)+\\w{2,4}+");
         var _loc3_:Object = _loc2_.exec(param1);
         _loc4_;
         if(_loc3_ == null)
         {
            _loc5_;
            _loc5_;
            _loc4_;
            return false;
         }
         return true;
      }
      
      private function §_-xt§(param1:String) : Boolean
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc6_:* = 0;
         var _loc2_:Array = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","0","1","2","3","4","5","6","7","8","9"];
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         var param1:String = param1.toUpperCase();
         var _loc3_:Array = param1.split("");
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         while(true)
         {
            _loc8_;
            _loc8_;
            if(_loc5_ >= _loc3_.length)
            {
               break;
            }
            _loc8_;
            _loc6_ = 0;
            _loc8_;
            while(true)
            {
               _loc7_;
               if(_loc6_ >= _loc2_.length)
               {
                  break;
               }
               if(_loc3_[_loc5_] == _loc2_[_loc6_])
               {
                  _loc4_++;
               }
               _loc6_++;
            }
            _loc8_;
            _loc8_;
            _loc5_++;
         }
         _loc8_;
         _loc8_;
         if(_loc4_ == _loc3_.length)
         {
            _loc8_;
            _loc8_;
            return true;
         }
         return false;
      }
      
      private function §_-hx§(param1:String) : Boolean
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         if(param1.length >= 6 && param1.length <= 16 && (this.§_-xt§(param1)))
         {
            _loc2_;
            _loc2_;
            return true;
         }
         return false;
      }
      
      private function §_-Ag§(param1:String, param2:String) : Boolean
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc3_;
         _loc4_;
         _loc3_;
         if(param1.length >= 6 && param1.length <= 16 && (this.§_-xt§(param1)) && param1 == param2)
         {
            _loc3_;
            return true;
         }
         return false;
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         stop();
      }
   }
}
