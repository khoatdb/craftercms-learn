/**
 * SmoothScroll
 * This helper script created by DWUser.com.  Copyright 2013 DWUser.com.  
 * Dual-licensed under the GPL and MIT licenses.  
 * All individual scripts remain property of their copyrighters.
 * Date: 10-Sep-2013
 * Version: 1.0.1
 */
if (!window['jQuery']) alert('The jQuery library must be included before the smoothscroll.js file.  The plugin will not work propery.');

/*!
 * jQuery Smooth Scroll - v2.2.0 - 2017-05-05
 * https://github.com/kswedberg/jquery-smooth-scroll
 * Copyright (c) 2017 Karl Swedberg
 * Licensed MIT
 */
;(function($){
	var version="2.2.0",optionOverrides={},defaults={exclude:[],excludeWithin:[],offset:0,direction:"top",delegateSelector:null,scrollElement:null,scrollTarget:null,autoFocus:!1,beforeScroll:function(){},afterScroll:function(){},easing:"swing",speed:400,autoCoefficient:2,preventDefault:!0},getScrollable=function(t){var e=[],l=t.dir&&"left"===t.dir?"scrollLeft":"scrollTop";return this.each(function(){var t=$(this);if(this!==document&&this!==window)return!document.scrollingElement||this!==document.documentElement&&this!==document.body?void(t[l]()>0?e.push(this):(t[l](1),t[l]()>0&&e.push(this),t[l](0))):(e.push(document.scrollingElement),!1)}),e.length||this.each(function(){this===document.documentElement&&"smooth"===$(this).css("scrollBehavior")&&(e=[this]),e.length||"BODY"!==this.nodeName||(e=[this])}),"first"===t.el&&e.length>1&&(e=[e[0]]),e},rRelative=/^([\-\+]=)(\d+)/;$.fn.extend({scrollable:function(t){var e=getScrollable.call(this,{dir:t});return this.pushStack(e)},firstScrollable:function(t){var e=getScrollable.call(this,{el:"first",dir:t});return this.pushStack(e)},smoothScroll:function(t,e){if("options"===(t=t||{}))return e?this.each(function(){var t=$(this),l=$.extend(t.data("ssOpts")||{},e);$(this).data("ssOpts",l)}):this.first().data("ssOpts");var l=$.extend({},$.fn.smoothScroll.defaults,t),o=function(t){var e=function(t){return t.replace(/(:|\.|\/)/g,"\\$1")},o=$(this),s=$.extend({},l,o.data("ssOpts")||{}),r=l.exclude,n=s.excludeWithin,i=0,c=0,a=!0,f={},h=$.smoothScroll.filterPath(location.pathname),u=$.smoothScroll.filterPath(this.pathname),d=location.hostname===this.hostname||!this.hostname,p=s.scrollTarget||u===h,m=e(this.hash);if(m&&!$(m).length&&(a=!1),s.scrollTarget||d&&p&&m){for(;a&&i<r.length;)o.is(e(r[i++]))&&(a=!1);for(;a&&c<n.length;)o.closest(n[c++]).length&&(a=!1)}else a=!1;a&&(s.preventDefault&&t.preventDefault(),$.extend(f,s,{scrollTarget:s.scrollTarget||m,link:this}),$.smoothScroll(f))};return null!==t.delegateSelector?this.off("click.smoothscroll",t.delegateSelector).on("click.smoothscroll",t.delegateSelector,o):this.off("click.smoothscroll").on("click.smoothscroll",o),this}});var getExplicitOffset=function(t){var e={relative:""},l="string"==typeof t&&rRelative.exec(t);return"number"==typeof t?e.px=t:l&&(e.relative=l[1],e.px=parseFloat(l[2])||0),e},onAfterScroll=function(t){var e=$(t.scrollTarget);t.autoFocus&&e.length&&(e[0].focus(),e.is(document.activeElement)||(e.prop({tabIndex:-1}),e[0].focus())),t.afterScroll.call(t.link,t)};$.smoothScroll=function(t,e){if("options"===t&&"object"==typeof e)return $.extend(optionOverrides,e);var l,o,s,r,n=getExplicitOffset(t),i=0,c="offset",a="scrollTop",f={},h={};n.px?l=$.extend({link:null},$.fn.smoothScroll.defaults,optionOverrides):((l=$.extend({link:null},$.fn.smoothScroll.defaults,t||{},optionOverrides)).scrollElement&&(c="position","static"===l.scrollElement.css("position")&&l.scrollElement.css("position","relative")),e&&(n=getExplicitOffset(e))),a="left"===l.direction?"scrollLeft":a,l.scrollElement?(o=l.scrollElement,n.px||/^(?:HTML|BODY)$/.test(o[0].nodeName)||(i=o[a]())):o=$("html, body").firstScrollable(l.direction),l.beforeScroll.call(o,l),r=n.px?n:{relative:"",px:$(l.scrollTarget)[c]()&&$(l.scrollTarget)[c]()[l.direction]||0},f[a]=r.relative+(r.px+i+l.offset),"auto"===(s=l.speed)&&(s=Math.abs(f[a]-o[a]())/l.autoCoefficient),h={duration:s,easing:l.easing,complete:function(){onAfterScroll(l)}},l.step&&(h.step=l.step),o.length?o.stop().animate(f,h):onAfterScroll(l)},$.smoothScroll.version=version,$.smoothScroll.filterPath=function(t){return(t=t||"").replace(/^\//,"").replace(/(?:index|default).[a-zA-Z]{3,4}$/,"").replace(/\/$/,"")},$.fn.smoothScroll.defaults=defaults;
})(jQuery);

// Initialize all .smoothScroll links
jQuery(function($){
  $('body').smoothScroll({
    delegateSelector: '.smoothScroll'
  });
});