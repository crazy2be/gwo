package §_-bY§
{
   import flash.events.MouseEvent;
   import com.funkypear.ui.§_-LK§;
   
   public class SubmitRegisterButton extends SimpleButton
   {
      
      public function SubmitRegisterButton()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         super();
         _loc1_;
         _loc1_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(§_-L4§)
         {
            _loc2_;
            gotoAndStop("up");
            alpha = 0.4;
            buttonMode = false;
            _loc1_;
            _loc1_;
         }
         else
         {
            buttonMode = true;
            _loc1_;
            _loc1_;
            alpha = 1;
            if(over)
            {
               _loc1_;
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
         if(!§_-L4§)
         {
            _loc4_;
            _loc4_;
            if(this.§_-Dx§((parent as §_-LK§).name_text.text,(parent as §_-LK§).§_-92§.text,(parent as §_-LK§).§_-FI§.text))
            {
               _loc5_;
               _loc4_;
               _loc4_;
               if(this.§_-tq§((parent as §_-LK§).name_text.text))
               {
                  _loc5_;
                  _loc5_;
                  if(this.§_-ZN§((parent as §_-LK§).§_-92§.text,(parent as §_-LK§).§_-o3§.text))
                  {
                     if(this.§_-Qu§((parent as §_-LK§).§_-FI§.text))
                     {
                        _loc4_;
                        setDisabled(true);
                        (parent as §_-LK§).response_text.text = "";
                        Global.REGISTER_USER = true;
                        Global.§_-Ba§ = false;
                        Global.§_-kR§ = false;
                        Global.§_-qU§ = false;
                        _loc5_;
                        _loc5_;
                        TimelineGlobal.input_username = (parent as §_-LK§).name_text.text;
                        _loc5_;
                        _loc5_;
                        TimelineGlobal.input_password = (parent as §_-LK§).§_-92§.text;
                        _loc5_;
                        _loc5_;
                        TimelineGlobal.input_email = (parent as §_-LK§).§_-FI§.text;
                        SafeGlobal.TIMELINE.connectToPlayerIO();
                     }
                     else
                     {
                        try
                        {
                           (parent as §_-LK§).response_text.text = "PLEASE ENTER A VALID EMAIL ADDRESS.";
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
                        (parent as §_-LK§).response_text.text = "PLEASE ENTER A VALID PASSWORD.\n6-16 CHARACTERS. LETTERS AND NUMBERS ONLY.";
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
                     (parent as §_-LK§).response_text.text = "PLEASE ENTER A VALID USERNAME.\n6-16 CHARACTERS. LETTERS AND NUMBERS ONLY.";
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
                  if((parent as §_-LK§).name_text.text == "")
                  {
                     (parent as §_-LK§).response_text.text = "PLEASE ENTER A VALID USERNAME.\n6-16 CHARACTERS. LETTERS AND NUMBERS ONLY.";
                  }
                  else if((parent as §_-LK§).§_-92§.text == "")
                  {
                     (parent as §_-LK§).response_text.text = "PLEASE ENTER A VALID PASSWORD.\n6-16 CHARACTERS. LETTERS AND NUMBERS ONLY.";
                     _loc4_;
                     _loc4_;
                  }
                  else if((parent as §_-LK§).§_-FI§.text == "")
                  {
                     (parent as §_-LK§).response_text.text = "PLEASE ENTER A VALID EMAIL ADDRESS.";
                  }
                  
                  
               }
               catch(e:Error)
               {
               }
            }
            if(this.§_-Dx§((parent as §_-LK§).name_text.text,(parent as §_-LK§).§_-92§.text,(parent as §_-LK§).§_-FI§.text))
            {
            }
         }
      }
      
      private function §_-Dx§(param1:String, param2:String, param3:String) : Boolean
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         if(param1 == "" || param2 == "" || param3 == "")
         {
            _loc5_;
            _loc5_;
            return false;
         }
         return true;
      }
      
      private function §_-Qu§(param1:String) : Boolean
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:RegExp = new RegExp("(\\w|[_.\\-])+@((\\w|-)+\\.)+\\w{2,4}+");
         var _loc3_:Object = _loc2_.exec(param1);
         _loc5_;
         if(_loc3_ == null)
         {
            _loc5_;
            _loc4_;
            _loc4_;
            return false;
         }
         return true;
      }
      
      private function §_-E0§(param1:String) : Boolean
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc6_:* = 0;
         var _loc2_:Array = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","0","1","2","3","4","5","6","7","8","9"];
         _loc8_;
         _loc8_;
         _loc7_;
         _loc8_;
         var param1:String = param1.toUpperCase();
         var _loc3_:Array = param1.split("");
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         while(true)
         {
            _loc8_;
            if(_loc5_ >= _loc3_.length)
            {
               break;
            }
            _loc7_;
            _loc6_ = 0;
            _loc7_;
            _loc7_;
            while(true)
            {
               _loc7_;
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
            _loc5_++;
            _loc8_;
            _loc8_;
         }
         if(_loc4_ == _loc3_.length)
         {
            _loc7_;
            _loc8_;
            return true;
         }
         return false;
      }
      
      private function §_-tq§(param1:String) : Boolean
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc2_;
         _loc3_;
         _loc2_;
         _loc2_;
         if(param1.length >= 6 && param1.length <= 16 && (this.§_-E0§(param1)))
         {
            _loc2_;
            _loc2_;
            _loc2_;
            return true;
         }
         return false;
      }
      
      private function §_-ZN§(param1:String, param2:String) : Boolean
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(param1.length >= 6 && param1.length <= 16 && (this.§_-E0§(param1)) && param1 == param2)
         {
            _loc3_;
            _loc3_;
            _loc4_;
            return true;
         }
         return false;
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         stop();
      }
   }
}
