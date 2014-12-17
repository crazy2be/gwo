package §_-zO§
{
   import flash.display.Sprite;
   import flash.geom.ColorTransform;
   
   public class WeaponGraphic extends Sprite
   {
      
      public function WeaponGraphic(param1:int, param2:int)
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:ColorTransform = null;
         var _loc4_:Sprite = null;
         _loc6_;
         _loc6_;
         this.holder = new Sprite();
         _loc5_;
         super();
         _loc5_;
         this.wepType = param1;
         _loc5_;
         this.colourID = param2;
         _loc5_;
         addChild(this.holder);
         _loc3_ = new ColorTransform();
         _loc3_.color = SafeGlobal.cw_colours[param2];
         if(param1 == 0)
         {
            _loc4_ = new CustomWeaponClip0();
            _loc5_;
            CustomWeaponClip0(_loc4_).colour.transform.colorTransform = _loc3_;
            _loc5_;
         }
         else if(param1 == 1)
         {
            _loc4_ = new CustomWeaponClip1();
            _loc6_;
            _loc6_;
            CustomWeaponClip1(_loc4_).colour.transform.colorTransform = _loc3_;
         }
         else
         {
            _loc5_;
            _loc6_;
            _loc6_;
            if(param1 == 2)
            {
               _loc4_ = new CustomWeaponClip2();
               _loc6_;
               CustomWeaponClip2(_loc4_).colour.transform.colorTransform = _loc3_;
            }
            else
            {
               _loc5_;
               _loc5_;
               if(param1 == 3)
               {
                  _loc4_ = new CustomWeaponClip3();
                  _loc6_;
                  _loc6_;
                  CustomWeaponClip3(_loc4_).colour.transform.colorTransform = _loc3_;
               }
               else if(param1 == 4)
               {
                  _loc5_;
                  _loc5_;
                  _loc4_ = new CustomWeaponClip4();
                  _loc6_;
                  _loc6_;
                  CustomWeaponClip4(_loc4_).colour.transform.colorTransform = _loc3_;
               }
               else
               {
                  _loc5_;
                  if(param1 == 5)
                  {
                     _loc4_ = new CustomWeaponClip5();
                     _loc5_;
                     CustomWeaponClip5(_loc4_).colour.transform.colorTransform = _loc3_;
                  }
                  else
                  {
                     _loc5_;
                     _loc5_;
                     if(param1 == 6)
                     {
                        _loc6_;
                        _loc6_;
                        _loc4_ = new CustomWeaponClip6();
                        _loc5_;
                        CustomWeaponClip6(_loc4_).colour.transform.colorTransform = _loc3_;
                     }
                     else
                     {
                        _loc5_;
                        if(param1 == 7)
                        {
                           _loc4_ = new CustomWeaponClip7();
                           _loc5_;
                           _loc5_;
                           CustomWeaponClip7(_loc4_).colour.transform.colorTransform = _loc3_;
                        }
                        else
                        {
                           _loc6_;
                           _loc6_;
                           if(param1 == 8)
                           {
                              _loc4_ = new CustomWeaponClip8();
                              _loc5_;
                              _loc5_;
                              CustomWeaponClip8(_loc4_).colour.transform.colorTransform = _loc3_;
                           }
                           else if(param1 == 9)
                           {
                              _loc4_ = new CustomWeaponClip9();
                              _loc6_;
                              CustomWeaponClip9(_loc4_).colour.transform.colorTransform = _loc3_;
                           }
                           else
                           {
                              _loc6_;
                              _loc5_;
                              _loc5_;
                              if(param1 == 10)
                              {
                                 _loc4_ = new CustomWeaponClip10();
                                 _loc6_;
                                 _loc6_;
                                 CustomWeaponClip10(_loc4_).colour.transform.colorTransform = _loc3_;
                              }
                              else if(param1 == 11)
                              {
                                 _loc4_ = new CustomWeaponClip11();
                                 _loc5_;
                                 CustomWeaponClip11(_loc4_).colour.transform.colorTransform = _loc3_;
                              }
                              else
                              {
                                 _loc4_ = new CustomWeaponClip0();
                                 _loc5_;
                                 CustomWeaponClip0(_loc4_).colour.transform.colorTransform = _loc3_;
                              }
                              
                           }
                           
                        }
                     }
                  }
               }
               
            }
         }
         
         this.holder.addChild(_loc4_);
      }
      
      public var wepType:int;
      
      public var colourID:int;
      
      public var holder:Sprite;
   }
}
