﻿(function(e){var p="undefined"!=typeof nwbi_userName?escape(nwbi_userName):"",r="undefined"!=typeof nwbi_sysNo?nwbi_sysNo:"",A="undefined"!=typeof bi_sensor_project?bi_sensor_project:"production",C="undefined"!=typeof bi_load_sensor_script?bi_load_sensor_script||1==bi_load_sensor_script?!0:!1:!0,v=e.screen.width,D=e.screen.height,t="",u="",k="",d={width:1220,align:"center",zeroize:function(a){a=String(a);return 2<=a.length?a:"0"+a},getDate:function(){var a=new Date,b=a.getFullYear(),c=a.getMonth()+1,h=a.getDate(),e=a.getHours(),f=a.getMinutes(),a=a.getSeconds();return String(b)+d.zeroize(c)+d.zeroize(h)+d.zeroize(e)+d.zeroize(f)+d.zeroize(a)},uploadPos:function(a){var b=JSON.stringify(a),b=escape(b);a.length=0;a=d.getPageWD();b="type\x3dpos\x26cid\x3d"+k+"\x26u\x3d"+p+"\x26sno\x3d"+r+"\x26vid\x3d"+u+"\x26url\x3d"+escape(e.location.href)+"\x26poss\x3d"+b+"\x26pw\x3d"+a.width+"\x26ph\x3d"+a.height;this.upload(b)},pos:function(){var a=[];return{getMousePos:function(a){var c,b=d.getPageWD().width;a||(a=e.event);document.all?(c=a.clientX,a=a.clientY,c+=document.documentElement.scrollLeft,a+=document.documentElement.scrollTop):(c=a.pageX,a=a.pageY);var n;"right"==d.align?(n=b-d.width,b=v-width):"left"==d.align?b=n=0:(n=(b-d.width)/2,b=(v-d.width)/2);b!=n&&(c=c-Math.abs(n)+b);return{x:Math.round(c),y:a}},push:function(b){a.push(b);10<=a.length&&d.uploadPos(a)},uploadAll:function(){0<a.length&&d.uploadPos(a)}}},getPageWD:function(){var a=document.documentElement,b=0,c=0;a&&(b=a.scrollWidth,c=a.scrollHeight);if(a=document.body)b=a.scrollWidth,c=a.scrollHeight;return{width:b,height:c}},addEvent:function(a,b,c,h){if(a.addEventListener)return a.addEventListener(b,c,h),!0;if(a.attachEvent)return a.attachEvent("on"+b,c)},upload:function(a){var b=d.getDate();a+="\x26ct\x3d"+b;var b=new Image,c="_img_"+Math.random();e[c]=b;b.onload=b.onerror=function(){e[c]=null};b.src="//bilog.niiwoo.com/js/td.gif?"+a},guid:{S4:function(){return(65536*(1+Math.random())|0).toString(16).substring(1)},get:function(){return this.S4()+this.S4()+"-"+this.S4()+"-"+this.S4()+"-"+this.S4()+"-"+this.S4()+this.S4()+this.S4()}},cookie:{topdomain:function(){var a=e.document.domain;if(0==a.indexOf("www"))return a.substr(3,a.length-3);var b=a.indexOf(".");return 0>b?a:a.substr(b,a.length-b)},get:function(a){var b=e.document.cookie;if(0<b.length){var c=b.indexOf(a+"\x3d");if(0<=c)return c=c+a.length+1,a=b.indexOf(";",c),-1===a&&(a=b.length),unescape(b.substring(c,a))}},set:function(a,b,c){var h=new Date;h.setTime(h.getTime()+c);var d="; domain\x3d"+t;e.document.cookie=a+"\x3d"+escape(b)+"; Path\x3d/"+(null==c?"":";expires\x3d"+h.toGMTString())+d},deleted:function(a){e.document.cookie=a+"\x3d; Path\x3d/; Expires\x3dThu, 01 Jan 1970 00:00:01 GMT ; domain\x3d"+t}},getHost:function(a){if("undefined"==typeof a||null==a)return a;a=a.match(/.*\:\/\/([^\/]*).*/);if("undefined"!=typeof a&&null!=a)return a[1]},session:{get_visitorId:function(){var a=d.cookie.get("td_visitorId");a&&"null"!=a&&"undefined"!=a||(a=d.guid.get(),d.cookie.set("td_visitorId",a,189216E7));return a},get_sessionId:function(){var a=d.cookie.get("td_exit_flag"),b=e.document.referrer;if(""!=b&&null!=b){var c=d.getHost(e.location.href),b=d.getHost(b);if(c!=b)return d.cookie.deleted("td_half_sessionId"),c=d.guid.get(),d.cookie.set("td_half_sessionId",c,18E5),a&&d.cookie.set("td_exit_flag",1),c}c=d.cookie.get("td_half_sessionId");c&&"undefined"!==c&&"null"!==c&&a||(c=d.guid.get(),a||d.cookie.set("td_exit_flag",1));d.cookie.deleted("td_half_sessionId");d.cookie.set("td_half_sessionId",c,18E5);return c}}},t=escape(d.cookie.topdomain()),u=d.session.get_visitorId(),k=d.session.get_sessionId(),F={nwbi_logWebEvent:function(a,b,c,h,n,f,g,E,m){a=a?a:p;m=m?m:r;a="cid\x3d"+k+"\x26u\x3d"+a+"\x26sno\x3d"+m+"\x26vid\x3d"+u+"\x26url\x3d"+escape(e.location.href)+"\x26et\x3d"+b+"\x26ec\x3d"+c+"\x26el\x3d"+h+"\x26ev\x3d"+n+"\x26s\x3d"+f+"\x26ft\x3d"+g+"\x26fr\x3d"+E+"\x26type\x3devent";d.upload(a)},getSessionId:function(){k||(k=(k=d.session.get_sessionId())?k:d.guid.get());return k},TOP_DOMAIN:t},l={extend:function(a,b){var c={},h;for(h in a)c[h]=b[h]&&0===b[h].length%2?b[h].concat(a[h]):a[h];return c},has:function(a,b){return"string"===typeof a?-1!==b.toLowerCase().indexOf(a.toLowerCase()):!1},lowerize:function(a){return a.toLowerCase()},major:function(a){return"string"===typeof a?a.replace(/[^\d\.]/g,"").split(".")[0]:void 0},trim:function(a){return a.replace(/^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g,"")}},q=function(){var a={},b=0,c,h,d,f,e,g,m=arguments;for(d=0;d<m[1].length;d++)f=m[1][d],a["object"===typeof f?f[0]:f]=void 0;for(;b<m.length&&!e;){var k=m[b],l=m[b+1];for(c=h=0;c<k.length&&!e;)if(e=k[c++].exec(this.getUA()))for(d=0;d<l.length;d++)g=e[++h],f=l[d],"object"===typeof f&&0<f.length?2==f.length?a[f[0]]="function"==typeof f[1]?f[1].call(this,g):f[1]:3==f.length?a[f[0]]="function"!==typeof f[1]||f[1].exec&&f[1].test?g?g.replace(f[1],f[2]):void 0:g?f[1].call(this,g,f[2]):void 0:4==f.length&&(a[f[0]]=g?f[3].call(this,g.replace(f[1],f[2])):void 0):a[f]=g?g:void 0;b+=2}return a},g=function(a,b){for(var c in b)if("object"===typeof b[c]&&0<b[c].length)for(var d=0;d<b[c].length;d++){if(l.has(b[c][d],a))return"?"===c?void 0:c}else if(l.has(b[c],a))return"?"===c?void 0:c;return a},B={ME:"4.90","NT 3.11":"NT3.51","NT 4.0":"NT4.0",2E3:"NT 5.0",XP:["NT 5.1","NT 5.2"],Vista:"NT 6.0",7:"NT 6.1",8:"NT 6.2","8.1":"NT 6.3",10:["NT 6.4","NT 10.0"],RT:"ARM"},G=[[/(opera\smini)\/([\w\.-]+)/i,/(opera\s[mobiletab]+).+version\/([\w\.-]+)/i,/(opera).+version\/([\w\.]+)/i,/(opera)[\/\s]+([\w\.]+)/i],["name","version"],[/(opios)[\/\s]+([\w\.]+)/i],[["name","Opera Mini"],"version"],[/\s(opr)\/([\w\.]+)/i],[["name","Opera"],"version"],[/(kindle)\/([\w\.]+)/i,/(lunascape|maxthon|netfront|jasmine|blazer)[\/\s]?([\w\.]+)*/i,/(avant\s|iemobile|slim|baidu)(?:browser)?[\/\s]?([\w\.]*)/i,/(?:ms|\()(ie)\s([\w\.]+)/i,/(rekonq)\/([\w\.]+)*/i,/(chromium|flock|rockmelt|midori|epiphany|silk|skyfire|ovibrowser|bolt|iron|vivaldi|iridium|phantomjs)\/([\w\.-]+)/i],["name","version"],[/(trident).+rv[:\s]([\w\.]+).+like\sgecko/i],[["name","IE"],"version"],[/(edge)\/((\d+)?[\w\.]+)/i],["name","version"],[/(yabrowser)\/([\w\.]+)/i],[["name","Yandex"],"version"],[/(comodo_dragon)\/([\w\.]+)/i],[["name",/_/g," "],"version"],[/(micromessenger)\/([\w\.]+)/i],[["name","WeChat"],"version"],[/xiaomi\/miuibrowser\/([\w\.]+)/i],["version",["name","MIUI Browser"]],[/\swv\).+(chrome)\/([\w\.]+)/i],[["name",/(.+)/,"$1 WebView"],"version"],[/android.+samsungbrowser\/([\w\.]+)/i,/android.+version\/([\w\.]+)\s+(?:mobile\s?safari|safari)*/i],["version",["name","Android Browser"]],[/(chrome|omniweb|arora|[tizenoka]{5}\s?browser)\/v?([\w\.]+)/i,/(qqbrowser)[\/\s]?([\w\.]+)/i],["name","version"],[/(uc\s?browser)[\/\s]?([\w\.]+)/i,/ucweb.+(ucbrowser)[\/\s]?([\w\.]+)/i,/juc.+(ucweb)[\/\s]?([\w\.]+)/i],[["name","UCBrowser"],"version"],[/(dolfin)\/([\w\.]+)/i],[["name","Dolphin"],"version"],[/((?:android.+)crmo|crios)\/([\w\.]+)/i],[["name","Chrome"],"version"],[/;fbav\/([\w\.]+);/i],["version",["name","Facebook"]],[/fxios\/([\w\.-]+)/i],["version",["name","Firefox"]],[/version\/([\w\.]+).+?mobile\/\w+\s(safari)/i],["version",["name","Mobile Safari"]],[/version\/([\w\.]+).+?(mobile\s?safari|safari)/i],["version","name"],[/webkit.+?(mobile\s?safari|safari)(\/[\w\.]+)/i],["name",["version",g,{"1.0":"/8","1.2":"/1","1.3":"/3","2.0":"/412","2.0.2":"/416","2.0.3":"/417","2.0.4":"/419","?":"/"}]],[/(konqueror)\/([\w\.]+)/i,/(webkit|khtml)\/([\w\.]+)/i],["name","version"],[/(navigator|netscape)\/([\w\.-]+)/i],[["name","Netscape"],"version"],[/(swiftfox)/i,/(icedragon|iceweasel|camino|chimera|fennec|maemo\sbrowser|minimo|conkeror)[\/\s]?([\w\.\+]+)/i,/(firefox|seamonkey|k-meleon|icecat|iceape|firebird|phoenix)\/([\w\.-]+)/i,/(mozilla)\/([\w\.]+).+rv\:.+gecko\/\d+/i,/(polaris|lynx|dillo|icab|doris|amaya|w3m|netsurf|sleipnir)[\/\s]?([\w\.]+)/i,/(links)\s\(([\w\.]+)/i,/(gobrowser)\/?([\w\.]+)*/i,/(ice\s?browser)\/v?([\w\._]+)/i,/(mosaic)[\/\s]([\w\.]+)/i],["name","version"]],H=[[/(?:(amd|x(?:(?:86|64)[_-])?|wow|win)64)[;\)]/i],[["architecture","amd64"]],[/(ia32(?=;))/i],[["architecture",l.lowerize]],[/((?:i[346]|x)86)[;\)]/i],[["architecture","ia32"]],[/windows\s(ce|mobile);\sppc;/i],[["architecture","arm"]],[/((?:ppc|powerpc)(?:64)?)(?:\smac|;|\))/i],[["architecture",/ower/,"",l.lowerize]],[/(sun4\w)[;\)]/i],[["architecture","sparc"]],[/((?:avr32|ia64(?=;))|68k(?=\))|arm(?:64|(?=v\d+;))|(?=atmel\s)avr|(?:irix|mips|sparc)(?:64)?(?=;)|pa-risc)/i],[["architecture",l.lowerize]]],I=[[/\((ipad|playbook);[\w\s\);-]+(rim|apple)/i],["model","vendor",["type","tablet"]],[/applecoremedia\/[\w\.]+ \((ipad)/],["model",["vendor","Apple"],["type","tablet"]],[/(apple\s{0,1}tv)/i],[["model","Apple TV"],["vendor","Apple"]],[/(archos)\s(gamepad2?)/i,/(hp).+(touchpad)/i,/(hp).+(tablet)/i,/(kindle)\/([\w\.]+)/i,/\s(nook)[\w\s]+build\/(\w+)/i,/(dell)\s(strea[kpr\s\d]*[\dko])/i],["vendor","model",["type","tablet"]],[/(kf[A-z]+)\sbuild\/[\w\.]+.*silk\//i],["model",["vendor","Amazon"],["type","tablet"]],[/(sd|kf)[0349hijorstuw]+\sbuild\/[\w\.]+.*silk\//i],[["model",g,{"Fire Phone":["SD","KF"]}],["vendor","Amazon"],["type","mobile"]],[/\((ip[honed|\s\w*]+);.+(apple)/i],["model","vendor",["type","mobile"]],[/\((ip[honed|\s\w*]+);/i],["model",["vendor","Apple"],["type","mobile"]],[/(blackberry)[\s-]?(\w+)/i,/(blackberry|benq|palm(?=\-)|sonyericsson|acer|asus|dell|huawei|meizu|motorola|polytron)[\s_-]?([\w-]+)*/i,/(hp)\s([\w\s]+\w)/i,/(asus)-?(\w+)/i],["vendor","model",["type","mobile"]],[/\(bb10;\s(\w+)/i],["model",["vendor","BlackBerry"],["type","mobile"]],[/android.+(transfo[prime\s]{4,10}\s\w+|eeepc|slider\s\w+|nexus 7|padfone)/i],["model",["vendor","Asus"],["type","tablet"]],[/(sony)\s(tablet\s[ps])\sbuild\//i,/(sony)?(?:sgp.+)\sbuild\//i],[["vendor","Sony"],["model","Xperia Tablet"],["type","tablet"]],[/(?:sony)?(?:(?:(?:c|d)\d{4})|(?:so[-l].+))\sbuild\//i],[["vendor","Sony"],["model","Xperia Phone"],["type","mobile"]],[/\s(ouya)\s/i,/(nintendo)\s([wids3u]+)/i],["vendor","model",["type","console"]],[/android.+;\s(shield)\sbuild/i],["model",["vendor","Nvidia"],["type","console"]],[/(playstation\s[34portablevi]+)/i],["model",["vendor","Sony"],["type","console"]],[/(sprint\s(\w+))/i],[["vendor",g,{HTC:"APA",Sprint:"Sprint"}],["model",g,{"Evo Shift 4G":"7373KT"}],["type","mobile"]],[/(lenovo)\s?(S(?:5000|6000)+(?:[-][\w+]))/i],["vendor","model",["type","tablet"]],[/(htc)[;_\s-]+([\w\s]+(?=\))|\w+)*/i,/(zte)-(\w+)*/i,/(alcatel|geeksphone|huawei|lenovo|nexian|panasonic|(?=;\s)sony)[_\s-]?([\w-]+)*/i],["vendor",["model",/_/g," "],["type","mobile"]],[/(nexus\s9)/i],["model",["vendor","HTC"],["type","tablet"]],[/(nexus\s6p)/i],["model",["vendor","Huawei"],["type","mobile"]],[/(microsoft);\s(lumia[\s\w]+)/i],["vendor","model",["type","mobile"]],[/[\s\(;](xbox(?:\sone)?)[\s\);]/i],["model",["vendor","Microsoft"],["type","console"]],[/(kin\.[onetw]{3})/i],[["model",/\./g," "],["vendor","Microsoft"],["type","mobile"]],[/\s(milestone|droid(?:[2-4x]|\s(?:bionic|x2|pro|razr))?(:?\s4g)?)[\w\s]+build\//i,/mot[\s-]?(\w+)*/i,/(XT\d{3,4}) build\//i,/(nexus\s6)/i],["model",["vendor","Motorola"],["type","mobile"]],[/android.+\s(mz60\d|xoom[\s2]{0,2})\sbuild\//i],["model",["vendor","Motorola"],["type","tablet"]],[/hbbtv\/\d+\.\d+\.\d+\s+\([\w\s]*;\s*(\w[^;]*);([^;]*)/i],[["vendor",l.trim],["model",l.trim],["type","smarttv"]],[/hbbtv.+maple;(\d+)/i],[["model",/^/,"SmartTV"],["vendor","Samsung"],["type","smarttv"]],[/\(dtv[\);].+(aquos)/i],["model",["vendor","Sharp"],["type","smarttv"]],[/android.+((sch-i[89]0\d|shw-m380s|gt-p\d{4}|gt-n\d+|sgh-t8[56]9|nexus 10))/i,/((SM-T\w+))/i],[["vendor","Samsung"],"model",["type","tablet"]],[/smart-tv.+(samsung)/i],["vendor",["type","smarttv"],"model"],[/((s[cgp]h-\w+|gt-\w+|galaxy\snexus|sm-\w[\w\d]+))/i,/(sam[sung]*)[\s-]*(\w+-?[\w-]*)*/i,/sec-((sgh\w+))/i],[["vendor","Samsung"],"model",["type","mobile"]],[/sie-(\w+)*/i],["model",["vendor","Siemens"],["type","mobile"]],[/(maemo|nokia).*(n900|lumia\s\d+)/i,/(nokia)[\s_-]?([\w-]+)*/i],[["vendor","Nokia"],"model",["type","mobile"]],[/android\s3\.[\s\w;-]{10}(a\d{3})/i],["model",["vendor","Acer"],["type","tablet"]],[/android\s3\.[\s\w;-]{10}(lg?)-([06cv9]{3,4})/i],[["vendor","LG"],"model",["type","tablet"]],[/(lg) netcast\.tv/i],["vendor","model",["type","smarttv"]],[/(nexus\s[45])/i,/lg[e;\s\/-]+(\w+)*/i],["model",["vendor","LG"],["type","mobile"]],[/android.+(ideatab[a-z0-9\-\s]+)/i],["model",["vendor","Lenovo"],["type","tablet"]],[/linux;.+((jolla));/i],["vendor","model",["type","mobile"]],[/((pebble))app\/[\d\.]+\s/i],["vendor","model",["type","wearable"]],[/android.+;\s(glass)\s\d/i],["model",["vendor","Google"],["type","wearable"]],[/android.+;\s(pixel c)\s/i],["model",["vendor","Google"],["type","tablet"]],[/android.+;\s(pixel xl|pixel)\s/i],["model",["vendor","Google"],["type","mobile"]],[/android.+(\w+)\s+build\/hm\1/i,/android.+(hm[\s\-_]*note?[\s_]*(?:\d\w)?)\s+build/i,/android.+(mi[\s\-_]*(?:one|one[\s_]plus|note lte)?[\s_]*(?:\d\w)?)\s+build/i],[["model",/_/g," "],["vendor","Xiaomi"],["type","mobile"]],[/android.+a000(1)\s+build/i],["model",["vendor","OnePlus"],["type","mobile"]],[/\s(tablet)[;\/]/i,/\s(mobile)(?:[;\/]|\ssafari)/i],[["type",l.lowerize],"vendor","model"]],J=[[/windows.+\sedge\/([\w\.]+)/i],["version",["name","EdgeHTML"]],[/(presto)\/([\w\.]+)/i,/(webkit|trident|netfront|netsurf|amaya|lynx|w3m)\/([\w\.]+)/i,/(khtml|tasman|links)[\/\s]\(?([\w\.]+)/i,/(icab)[\/\s]([23]\.[\d\.]+)/i],["name","version"],[/rv\:([\w\.]+).*(gecko)/i],["version","name"]],K=[[/microsoft\s(windows)\s(vista|xp)/i],["name","version"],[/(windows)\snt\s6\.2;\s(arm)/i,/(windows\sphone(?:\sos)*)[\s\/]?([\d\.\s]+\w)*/i,/(windows\smobile|windows)[\s\/]?([ntce\d\.\s]+\w)/i],["name",["version",g,B]],[/(win(?=3|9|n)|win\s9x\s)([nt\d\.]+)/i],[["name","Windows"],["version",g,B]],[/\((bb)(10);/i],[["name","BlackBerry"],"version"],[/(blackberry)\w*\/?([\w\.]+)*/i,/(tizen)[\/\s]([\w\.]+)/i,/(android|webos|palm\sos|qnx|bada|rim\stablet\sos|meego|contiki)[\/\s-]?([\w\.]+)*/i,/linux;.+(sailfish);/i],["name","version"],[/(symbian\s?os|symbos|s60(?=;))[\/\s-]?([\w\.]+)*/i],[["name","Symbian"],"version"],[/\((series40);/i],["name"],[/mozilla.+\(mobile;.+gecko.+firefox/i],[["name","Firefox OS"],"version"],[/(nintendo|playstation)\s([wids34portablevu]+)/i,/(mint)[\/\s\(]?(\w+)*/i,/(mageia|vectorlinux)[;\s]/i,/(joli|[kxln]?ubuntu|debian|[open]*suse|gentoo|(?=\s)arch|slackware|fedora|mandriva|centos|pclinuxos|redhat|zenwalk|linpus)[\/\s-]?(?!chrom)([\w\.-]+)*/i,/(hurd|linux)\s?([\w\.]+)*/i,/(gnu)\s?([\w\.]+)*/i],["name","version"],[/(cros)\s[\w]+\s([\w\.]+\w)/i],[["name","Chromium OS"],"version"],[/(sunos)\s?([\w\.]+\d)*/i],[["name","Solaris"],"version"],[/\s([frentopc-]{0,4}bsd|dragonfly)\s?([\w\.]+)*/i],["name","version"],[/(haiku)\s(\w+)/i],["name","version"],[/(ip[honead]+)(?:.*os\s([\w]+)*\slike\smac|;\sopera)/i],[["name","iOS"],["version",/_/g,"."]],[/(mac\sos\sx)\s?([\w\s\.]+\w)*/i,/(macintosh|mac(?=_powerpc)\s)/i],[["name","Mac OS"],["version",/_/g,"."]],[/((?:open)?solaris)[\/\s-]?([\w\.]+)*/i,/(aix)\s((\d)(?=\.|\)|\s)[\w\.]*)*/i,/(plan\s9|minix|beos|os\/2|amigaos|morphos|risc\sos|openvms)/i,/(unix)\s?([\w\.]+)*/i],["name","version"]],g=function(a,b){var c=e&&e.navigator&&e.navigator.userAgent?e.navigator.userAgent:"";this.getBrowser=function(){var a=q.apply(this,G);a.major=l.major(a.version);a.language=e.navigator.language;return a};this.getCPU=function(){return q.apply(this,H)};this.getDevice=function(){return q.apply(this,I)};this.getEngine=function(){return q.apply(this,J)};this.getOS=function(){return q.apply(this,K)};this.getResult=function(){return{ua:this.getUA(),browser:this.getBrowser(),engine:this.getEngine(),os:this.getOS(),device:this.getDevice(),cpu:this.getCPU()}};this.getUA=function(){return c};this.setUA=function(a){c=a;return this};this.getDeviceType=function(){var a=this.getDevice();if("mobile"===a.type)return a.type;if(a.model)return a.model;a=e.navigator.userAgent.toLowerCase();return"ipad"==a.match(/ipad/i)?"iPad":"iphone os"==a.match(/iphone os/i)?"iPhone":"android"==a.match(/android/i)?"mobile":"midp"==a.match(/midp/i)?"midp":"rv:1.2.3.4"==a.match(/rv:1.2.3.4/i)?"rv:1.2.3.4":"web"==a.match(/ucweb/i)?"ucweb":"windows ce"==a.match(/windows ce/i)?"windows ce":"windows mobile"==a.match(/windows mobile/i)?"windows mobile":"pc"};return this};g.VERSION="0.7.12";g.BROWSER={NAME:"name",MAJOR:"major",VERSION:"version"};g.CPU={ARCHITECTURE:"architecture"};g.DEVICE={MODEL:"model",VENDOR:"vendor",TYPE:"type",CONSOLE:"console",MOBILE:"mobile",SMARTTV:"smarttv",TABLET:"tablet",WEARABLE:"wearable",EMBEDDED:"embedded"};g.ENGINE={NAME:"name",VERSION:"version"};g.OS={NAME:"name",VERSION:"version"};try{var w=new d.pos;d.addEvent(e.document.body,"click",function(a){var b=d.getDate();a=w.getMousePos(a);a.ct=b;w.push(a)},!1);d.addEvent(e,"beforeunload",function(){w.uploadAll()},!1);var x=new g,y=x.getOS(),z=x.getBrowser(),L=x.getDeviceType(),M="cid\x3d"+k+"\x26u\x3d"+p+"\x26sno\x3d"+r+"\x26vid\x3d"+u+"\x26bt\x3d"+z.name+"\x26bv\x3d"+z.version+"\x26bl\x3d"+z.language+"\x26os\x3d"+y.name+(y.version?y.version:"")+"\x26rsl\x3d"+(v+" x "+D)+"\x26dt\x3d"+L+"\x26rurl\x3d"+escape(e.document.referrer)+"\x26url\x3d"+escape(e.location.href)+"\x26type\x3daccess";d.upload(M);e.nwbi_api=F;C&&(function(a){var b=a.sdk_url,c=a.name,d=document,g=null,f=null;e.sensorsDataAnalytic201505=c;e[c]=e[c]||function(a){return function(){(e[c]._q=e[c]._q||[]).push([a,arguments])}};g="track quick register registerPage registerOnce clearAllRegister trackSignup trackAbtest setProfile setOnceProfile appendProfile incrementProfile deleteProfile unsetProfile identify login logout trackLink clearAllRegister".split(" ");for(f=0;f<g.length;f++)e[c][g[f]]=e[c].call(null,g[f]);e[c]._t||(g=d.createElement("script"),f=d.getElementsByTagName("script")[0],g.async=1,g.src=b,f.parentNode.insertBefore(g,f),e[c].para=a)}({sdk_url:"//bilog.niiwoo.com/js/sensorsdata.min.js",name:"sa",web_url:"https://sensordata.tdw.cn/?project\x3d"+A,server_url:"https://sensorslog.tdw.cn/sa?project\x3d"+A,source_channel:["tdfrom","tdsource"],use_app_track:!0,heatmap:{},show_log:!1}),p&&sa.login(p),sa.register({PlatformType:r}),sa.quick("autoTrack"))}catch(a){}finally{}})("object"===typeof window?window:this);