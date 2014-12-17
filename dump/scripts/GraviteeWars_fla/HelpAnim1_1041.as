package GraviteeWars_fla
{
   import flash.geom.*;
   import adobe.utils.*;
   import flash.accessibility.*;
   import flash.desktop.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.filters.*;
   import flash.globalization.*;
   import flash.media.*;
   import flash.net.*;
   import flash.net.drm.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.sampler.*;
   import flash.sensors.*;
   import flash.system.*;
   import flash.text.*;
   import flash.text.ime.*;
   import flash.text.engine.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   
   public dynamic class HelpAnim1_1041 extends MovieClip
   {
      
      public function HelpAnim1_1041()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         super();
         _loc2_;
         addFrameScript(0,this.frame1);
      }
      
      public var unit1:§_-2u§;
      
      public var unit2:§_-2u§;
      
      public var unit3:§_-2u§;
      
      public var unit4:§_-2u§;
      
      public var ct:ColorTransform;
      
      public var unit3Head;
      
      public var unit3Body;
      
      public var unit3Hand1;
      
      public var unit3Hand2;
      
      public var unit3Foot1;
      
      public var unit3Foot2;
      
      public var unit4Head;
      
      public var unit4Body;
      
      public var unit4Hand1;
      
      public var unit4Hand2;
      
      public var unit4Foot1;
      
      public var unit4Foot2;
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.unit1.head.addChild(new HeadClip0());
         _loc1_;
         _loc1_;
         _loc2_;
         this.unit1.body.addChild(new BodyClip1());
         _loc1_;
         _loc1_;
         this.unit1.lefthand.addChild(new HandClip1());
         _loc2_;
         _loc2_;
         this.unit1.righthand.addChild(new HandClip1());
         _loc1_;
         _loc2_;
         _loc2_;
         this.unit1.leftfoot.addChild(new FootClip1());
         _loc1_;
         this.unit1.rightfoot.addChild(new FootClip1());
         _loc2_;
         this.unit2.head.addChild(new HeadClip0());
         _loc2_;
         _loc1_;
         _loc2_;
         _loc2_;
         this.unit2.body.addChild(new BodyClip1());
         _loc2_;
         _loc2_;
         this.unit2.lefthand.addChild(new HandClip1());
         _loc1_;
         _loc2_;
         _loc2_;
         this.unit2.righthand.addChild(new HandClip1());
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         this.unit2.leftfoot.addChild(new FootClip1());
         _loc1_;
         this.unit2.rightfoot.addChild(new FootClip1());
         this.ct = new ColorTransform();
         _loc2_;
         this.ct.color = 39423;
         _loc2_;
         _loc2_;
         this.unit3Head = new HeadClip0();
         this.unit3Head.inside.transform.colorTransform = this.ct;
         _loc1_;
         _loc1_;
         this.unit3Body = new BodyClip1();
         _loc1_;
         this.unit3Body.inside.transform.colorTransform = this.ct;
         this.unit3Hand1 = new HandClip1();
         this.unit3Hand1.inside.transform.colorTransform = this.ct;
         _loc1_;
         _loc1_;
         this.unit3Hand2 = new HandClip1();
         _loc2_;
         _loc2_;
         this.unit3Hand2.inside.transform.colorTransform = this.ct;
         _loc2_;
         _loc2_;
         this.unit3Foot1 = new FootClip1();
         this.unit3Foot1.inside.transform.colorTransform = this.ct;
         _loc1_;
         _loc1_;
         this.unit3Foot2 = new FootClip1();
         this.unit3Foot2.inside.transform.colorTransform = this.ct;
         this.unit4Head = new HeadClip0();
         _loc2_;
         this.unit4Head.inside.transform.colorTransform = this.ct;
         this.unit4Body = new BodyClip1();
         this.unit4Body.inside.transform.colorTransform = this.ct;
         this.unit4Hand1 = new HandClip1();
         _loc2_;
         this.unit4Hand1.inside.transform.colorTransform = this.ct;
         _loc2_;
         _loc2_;
         this.unit4Hand2 = new HandClip1();
         this.unit4Hand2.inside.transform.colorTransform = this.ct;
         this.unit4Foot1 = new FootClip1();
         this.unit4Foot1.inside.transform.colorTransform = this.ct;
         _loc1_;
         _loc1_;
         this.unit4Foot2 = new FootClip1();
         this.unit4Foot2.inside.transform.colorTransform = this.ct;
         _loc1_;
         this.unit3.head.addChild(this.unit3Head);
         _loc2_;
         _loc2_;
         this.unit3.body.addChild(this.unit3Body);
         _loc1_;
         this.unit3.lefthand.addChild(this.unit3Hand1);
         _loc2_;
         _loc2_;
         this.unit3.righthand.addChild(this.unit3Hand2);
         _loc1_;
         _loc2_;
         _loc2_;
         this.unit3.leftfoot.addChild(this.unit3Foot1);
         this.unit3.rightfoot.addChild(this.unit3Foot2);
         _loc1_;
         this.unit4.head.addChild(this.unit4Head);
         _loc1_;
         this.unit4.body.addChild(this.unit4Body);
         _loc1_;
         _loc1_;
         this.unit4.lefthand.addChild(this.unit4Hand1);
         _loc2_;
         this.unit4.righthand.addChild(this.unit4Hand2);
         _loc2_;
         _loc2_;
         this.unit4.leftfoot.addChild(this.unit4Foot1);
         this.unit4.rightfoot.addChild(this.unit4Foot2);
         stop();
      }
   }
}
