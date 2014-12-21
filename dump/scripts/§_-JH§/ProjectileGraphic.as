package §_-JH§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.ColorTransform;
   
   public class ProjectileGraphic extends MovieClip
   {
      
      public function ProjectileGraphic(param1:int, param2:int)
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:ColorTransform = null;
         var _loc4_:Sprite = null;
         _loc5_;
         _loc5_;
         this.holder = new Sprite();
         _loc5_;
         super();
         _loc5_;
         this.projType = param1;
         _loc6_;
         _loc6_;
         this.colourID = param2;
         _loc3_ = new ColorTransform();
         _loc3_.color = SafeGlobal.cw_colours[param2];
         _loc6_;
         addChild(this.holder);
         _loc6_;
         if(param1 == 0)
         {
            _loc5_;
            _loc4_ = new CustomProjectileClip0();
            _loc5_;
            CustomProjectileClip0(_loc4_).colour.transform.colorTransform = _loc3_;
            _loc6_;
         }
         else
         {
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            if(param1 == 1)
            {
               _loc6_;
               _loc4_ = new CustomProjectileClip1();
               _loc5_;
               _loc5_;
               CustomProjectileClip1(_loc4_).colour.transform.colorTransform = _loc3_;
            }
            else if(param1 == 2)
            {
               _loc4_ = new CustomProjectileClip2();
               _loc6_;
               CustomProjectileClip2(_loc4_).colour.transform.colorTransform = _loc3_;
            }
            else
            {
               _loc6_;
               if(param1 == 3)
               {
                  _loc5_;
                  _loc5_;
                  _loc4_ = new CustomProjectileClip3();
                  _loc6_;
                  _loc6_;
                  CustomProjectileClip3(_loc4_).colour.transform.colorTransform = _loc3_;
               }
               else
               {
                  _loc6_;
                  _loc5_;
                  _loc5_;
                  if(param1 == 4)
                  {
                     _loc5_;
                     _loc5_;
                     _loc4_ = new CustomProjectileClip4();
                     _loc5_;
                     _loc5_;
                     CustomProjectileClip4(_loc4_).colour.transform.colorTransform = _loc3_;
                  }
                  else
                  {
                     _loc6_;
                     if(param1 == 5)
                     {
                        _loc4_ = new CustomProjectileClip5();
                        _loc5_;
                        CustomProjectileClip5(_loc4_).colour.transform.colorTransform = _loc3_;
                     }
                     else
                     {
                        _loc5_;
                        if(param1 == 6)
                        {
                           _loc4_ = new CustomProjectileClip6();
                           _loc6_;
                           CustomProjectileClip6(_loc4_).colour.transform.colorTransform = _loc3_;
                        }
                        else
                        {
                           _loc5_;
                           _loc6_;
                           if(param1 == 7)
                           {
                              _loc4_ = new CustomProjectileClip7();
                              _loc5_;
                              _loc5_;
                              CustomProjectileClip7(_loc4_).colour.transform.colorTransform = _loc3_;
                           }
                           else
                           {
                              _loc6_;
                              _loc6_;
                              if(param1 == 8)
                              {
                                 _loc6_;
                                 _loc4_ = new CustomProjectileClip8();
                                 _loc6_;
                                 CustomProjectileClip8(_loc4_).colour.transform.colorTransform = _loc3_;
                              }
                              else
                              {
                                 _loc5_;
                                 if(param1 == 9)
                                 {
                                    _loc6_;
                                    _loc6_;
                                    _loc4_ = new CustomProjectileClip9();
                                    _loc5_;
                                    CustomProjectileClip9(_loc4_).colour.transform.colorTransform = _loc3_;
                                 }
                                 else
                                 {
                                    _loc5_;
                                    _loc5_;
                                    _loc5_;
                                    if(param1 == 10)
                                    {
                                       _loc5_;
                                       _loc5_;
                                       _loc4_ = new CustomProjectileClip10();
                                       _loc6_;
                                       CustomProjectileClip10(_loc4_).colour.transform.colorTransform = _loc3_;
                                    }
                                    else if(param1 == 11)
                                    {
                                       _loc4_ = new CustomProjectileClip11();
                                       _loc5_;
                                       CustomProjectileClip11(_loc4_).colour.transform.colorTransform = _loc3_;
                                    }
                                    else
                                    {
                                       _loc4_ = new CustomProjectileClip0();
                                       _loc5_;
                                       _loc5_;
                                       CustomProjectileClip0(_loc4_).colour.transform.colorTransform = _loc3_;
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
         this.holder.addChild(_loc4_);
      }
      
      public var projType:int;
      
      public var colourID:int;
      
      public var holder:Sprite;
   }
}
