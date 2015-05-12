// JavaScript Document
var sliderIntervalId = 0;
var sliderHeight = 340;
var slideMax =340;
var sliding = false;
var slideSpeed = 10;

function Slide()
{
   if(sliding)
      return;
   sliding = true;
   if(sliderHeight == slideMax)
      sliderIntervalId = setInterval('SlideUpRun()', 60);
   else
      sliderIntervalId = setInterval('SlideDownRun()', 60);
}

function SlideUpRun()
{
   slider = document.getElementById('ContactSlider');
   if(sliderHeight >= 0)
   {
      sliding = false;
      sliderHeight = 0;
      slider.style.height = '0px';
      clearInterval(sliderIntervalId);
   }
   else
   {
      sliderHeight -= slideSpeed;
      if(sliderHeight < 0)
         sliderHeight = 0;
      slider.style.height = sliderHeight + 'px';
   }
}

function SlideDownRun()
{
   slider = document.getElementById('ContactSlider');
   if(sliderHeight >= slideMax)
   {
      sliding = false;
      sliderHeight = slideMax;
      slider.style.height = slideMax + 'px';
      clearInterval(sliderIntervalId);
   }
   else
   {
      sliderHeight += slideSpeed;
      if(sliderHeight > slideMax)
         sliderHeight = slideMax;
      slider.style.height = sliderHeight + 'px';
   }
}

function slideContact(elementId, headerElement)
{
   var element = document.getElementById(elementId);
   alert('Hoops');
   if(element.up == null || element.down)
   {
      animate(elementId, 0, 20, 150, 0, 380, null);
      element.up = true;
      element.down = false;
      headerElement.innerHTML = 'vvv';
   }
   else
   {
      animate(elementId, 0, 20, 150, 130, 380, null);
      element.down = true;
      element.up = false;
      headerElement.innerHTML = '^^^';
   }
   
}