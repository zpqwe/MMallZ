<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!-- saved from url=(0075)https://www.tuandai.com/member/account_loanReturnPlanDetail?date=2019-04-25 -->
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>团贷网_安全可靠的投资理财网站_P2P理财网贷平台</title>
<meta name="keywords" content="p2p理财,p2p网贷,投资理财">
<meta name="description" content="团贷网是安全可靠的P2P理财投资网贷平台,专注为投资理财和贷款用户提供优质的互联网金融服务,为投资者带来稳定收益,解决中小微企业资金需求">

<meta name="mobile-agent" content="format=html5;url=">
<link rel="alternate" media="only screen and (max-width: 640px)" href="#">
<link rel="dns-prefetch" href="#">
<link rel="dns-prefetch" href="#">
<link rel="dns-prefetch" href="#">
<link rel="dns-prefetch" href="#">
<link rel="dns-prefetch" href="#">
<meta property="qc:admins" content="3542563377645164116375">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="shortcut icon" href="images/favicon.ico?v=20181113">
<link rel="stylesheet" href="css/base.css">
<link rel="stylesheet" href="css/layout.css">
<link rel="stylesheet" href="css/component.css">
<link rel="stylesheet" href="css/NewBorrowDetail.css">
<link rel="stylesheet" href="css/account-new.css">
<link rel="stylesheet" href="css/account-public.css">
<link rel="stylesheet" href="css/xiamen-bank.css">
<link rel="stylesheet" href="css/cgt20161107.css">
<link rel="stylesheet" href="css/bind_bank.css">
<link rel="dns-prefetch" href="#">
<link rel="dns-prefetch" href="#">
<link rel="dns-prefetch" href="#">
<link rel="dns-prefetch" href="#">
<link rel="dns-prefetch" href="#">
<meta property="qc:admins" content="3542563377645164116375">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="shortcut icon" href="images/favicon.ico?v=20181113">
<link rel="stylesheet" type="text/css" href="css/base(1).css">
<link rel="stylesheet" type="text/css" href="css/public.css">
<link rel="stylesheet" type="text/css" href="css/new.user.public.css">
<link rel="stylesheet" type="text/css" href="css/account-new(1).css">
<link rel="stylesheet" type="text/css" href="css/account-public(1).css">
<link rel="stylesheet" type="text/css" href="css/bind_bank(1).css">
<link rel="stylesheet" type="text/css" href="css/xiamen-bank(1).css">
<link rel="stylesheet" type="text/css" href="css/cgt20161107(1).css">
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/Accountcenter.js"></script>
<script type="text/javascript">
$(docoment).ready(function(){
loanReturnPlan();
});
</script>
<style type="text/css">
        
        .current {
            font-weight: bold;
        }
        
        .otherline .li1 strong {
            font-weight: normal;
        }
                
        #menu_autoTender {
            position: relative;
        }
        
        #menu_myWePlan {
            position: relative;
        }
        
        .account-left .emClass,
        .account-left.emClass {
            width: 18px;
            height: 18px;
            display: block;
            left: 16px;
            top: 50%;
            margin-top: -10px;
            position: absolute;
            background: url("//js3.tuandai.com/images/investlist/invest_detail/we-financing.png") -191px -23px;
        }
        
        .account-left .tip-box {
            position: absolute;
            left: 110px;
            top: -4px;
            width: 357px;
            height: 126px;
            cursor: default;
        }
        
        .account-left .tip {
            width: 357px;
            position: relative;
            background: #fef8e0;
            padding: 15px;
            padding-bottom: 0;
            font-size: 14px;
            line-height: 22px;
            border: 1px solid #e4e4e4;
            z-index: 1;
        }
        
        .account-left .tip p {
            text-align: right;
        }
        
        .account-left .tip p a {
            margin-left: 10px;
            color: #CC6600;
        }
        
        .account-left .tip p a:hover {
            color: #EA7E00;
        }
        
        .account-left .tip .arrow {
            width: 9px;
            height: 14px;
            display: block;
            position: absolute;
            background: url("imagesicon.png") 0 -605px;
            left: -9px;
        }
        
        .account-left .tip .close {
            width: 9px;
            height: 9px;
            display: block;
            position: absolute;
            background: url("imagesicon.png") 0 -621px;
            right: 8px;
            top: 8px;
            cursor: pointer;
        }
        
        .left-new {
            position: absolute;
            width: 20px;
            height: 14px;
            background: url("imagesleft-new.gif") 0 0 no-repeat;
            right: 24px;
            top: 4px;
        }
        
        .ny .tip-box {
            position: absolute;
            left: 110px;
            top: -4px;
            width: 357px;
            height: 126px;
            cursor: default;
        }
        
        .ny .tip {
            width: 446px;
            position: relative;
            background: #fef8e0;
            padding: 10px;
            font-size: 14px;
            line-height: 22px;
            border: 1px solid #e4e4e4;
            z-index: 1;
        }
        
        .ny .tip p {
            text-align: right;
        }
        
        .ny .tip .arrow {
            width: 9px;
            height: 14px;
            display: block;
            position: absolute;
            background: url("imagesicon.png") 0 -605px;
            left: -9px;
        }
        
        .ny .tip .close {
            width: 9px;
            height: 9px;
            display: block;
            position: absolute;
            background: url("imagesicon.png") 0 -621px;
            right: 8px;
            top: 8px;
            cursor: pointer;
        }
        
        .account-left .red-circle {
            width: 7px;
            height: 7px;
            position: absolute;
            border-radius: 50%;
            background: red;
            display: block;
            right: 35px;
            top: 9px;
        }
    </style>
<link href="css/account-public(2).css" rel="stylesheet" type="text/css">
<link href="css/account_invest.css" rel="stylesheet" type="text/css">
<style type="text/css">
        .account_paytotal {
            width: 800px;
            height: 80px;
            padding-top: 0px;
        }
        
        .account_paytotal dl {
            float: left;
            height: 70px;
            padding-top: 8px;
            padding-bottom: 8px;
            border-right: #e1e1e1 solid 1px;
        }
        
        .payBox1 {
            width: 240px;
        }
        
        .payBox4 {
            width: 370px;
            padding-left: 46px;
            border-right: none !important;
            border-left: none;
        }
        
        .account_paytime {
            width: 800px;
            height: 48px;
            float: none;
        }
        
        .account_paytime dd {
            float: left;
            line-height: 20px;
            padding: 4px 10px;
            height: 40px;
            margin-right: 8px;
            font-size: 14px;
            color: #666;
            cursor: pointer;
        }
        
        .account_paycustom {
            width: 800px;
            height: 24px;
            margin: 0px auto;
            float: none;
        }
        
        .account_paycustom dt {
            float: left;
            font-size: 14px;
            width: 90px;
            height: 24px;
            line-height: 24px;
            text-align: right;
            margin-right: 5px;
        }
        
        .account_paycustom dd {
            float: left;
            line-height: 24px;
            height: 24px;
            margin-right: 8px;
            font-size: 14px;
            color: #666;
            margin-left: 0px;
        }
    </style>
<script async="" src="js/sensorsdata.min.js"></script><script async="" src="js/sensorsdata.min.js"></script><script type="text/javascript" async="" src="js/webaccess.js"></script><script type="text/javascript" async="" src="js/webaccess.js"></script><script type="text/javascript" src="js/6a90d8b9f8e64cf9410db404c47f81fc.js"></script><style type="text/css">img[src="images/default.jpg"]
{display:none !important;}</style><script type="text/javascript" src="js/6a90d8b9f8e64cf9410db404c47f81fc(1).js"></script>
<link href="css/WdatePicker.css" rel="stylesheet" type="text/css"><style type="text/css">#waf_nc_block {position: fixed;_position: absolute;width: 100%;height: 100%;top: 0;bottom: 0;left: 0;z-index: 9999;}.waf-nc-mask {background: #f8f8f8;opacity: 0.5;filter:alpha(opacity=50); width: 100%;height: 100%;} .waf-nc-wrapper {width:480px; height:254px; position: absolute; top: 50%; left: 50%; margin-top: -127px; margin-left: -240px; margin-bottom: 16px; background:#ffffff; border:3px solid #00A2CA;} .waf-nc-icon {position: absolute;top: 18px;left: 20px;} .waf-nc-title {margin-top: 23px; margin-left: 47px; font-size:16px; color:#333333; line-height:10px; text-align:left;} .waf-nc-splitter {margin-left: 26px; margin-top: 5px; width:430px; height:0px; border:1px solid #f4f4f4; } .waf-nc-description { margin-top: 22px; margin-left: 23px; font-size:12px; color:#333333; text-align: left; } #nocaptcha { margin-top: 20px; margin-left: 92px; width:300px; height36px;}</style><script src="js/nc.js"></script><style>@charset "utf-8";
@font-face{font-family:'nc_iconfont';src:url("//at.alicdn.com/t/font_1465353706_4784257.eot");src:url("//at.alicdn.com/t/font_1465353706_4784257.eot?#iefix") format('embedded-opentype'),url("//at.alicdn.com/t/font_1465353706_4784257.woff") format('woff'),url("//at.alicdn.com/t/font_1465353706_4784257.ttf") format('truetype'),url("//at.alicdn.com/t/font_1465353706_4784257.svg#iconfont") format('svg')}@font-face{font-family:'ncpc_iconfont';src:url("//at.alicdn.com/t/font_384029_rhzpmteb25oecdi.eot");src:url("//at.alicdn.com/t/font_384029_rhzpmteb25oecdi.eot?#iefix") format('embedded-opentype'),url("//at.alicdn.com/t/font_384029_rhzpmteb25oecdi.woff") format('woff'),url("//at.alicdn.com/t/font_384029_rhzpmteb25oecdi.ttf") format('truetype'),url("//at.alicdn.com/t/font_384029_rhzpmteb25oecdi.svg#ncpc_iconfont") format('svg')}.nc-container div#nc-loading-circle{background:transparent;width:20px;height:20px;display:inline-block;position:relative;vertical-align:middle}.nc-container div#nc-loading-circle .sk-circle{background:transparent;width:100%;height:100%;position:absolute;left:0;top:0}.nc-container #nc-loading-circle .sk-circle:before{content:'';display:block;margin:0 auto;width:15%;height:15%;background-color:#818181;border-radius:100%;-webkit-animation:sk-circleFadeDelay 1.2s infinite ease-in-out both;animation:sk-circleFadeDelay 1.2s infinite ease-in-out both}.nc-container #nc-loading-circle .sk-circle2{-webkit-transform:rotate(30deg);-ms-transform:rotate(30deg);transform:rotate(30deg)}.nc-container #nc-loading-circle .sk-circle3{-webkit-transform:rotate(60deg);-ms-transform:rotate(60deg);transform:rotate(60deg)}.nc-container #nc-loading-circle .sk-circle4{-webkit-transform:rotate(90deg);-ms-transform:rotate(90deg);transform:rotate(90deg)}.nc-container #nc-loading-circle .sk-circle5{-webkit-transform:rotate(120deg);-ms-transform:rotate(120deg);transform:rotate(120deg)}.nc-container #nc-loading-circle .sk-circle6{-webkit-transform:rotate(150deg);-ms-transform:rotate(150deg);transform:rotate(150deg)}.nc-container #nc-loading-circle .sk-circle7{-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg)}.nc-container #nc-loading-circle .sk-circle8{-webkit-transform:rotate(210deg);-ms-transform:rotate(210deg);transform:rotate(210deg)}.nc-container #nc-loading-circle .sk-circle9{-webkit-transform:rotate(240deg);-ms-transform:rotate(240deg);transform:rotate(240deg)}.nc-container #nc-loading-circle .sk-circle10{-webkit-transform:rotate(270deg);-ms-transform:rotate(270deg);transform:rotate(270deg)}.nc-container #nc-loading-circle .sk-circle11{-webkit-transform:rotate(300deg);-ms-transform:rotate(300deg);transform:rotate(300deg)}.nc-container #nc-loading-circle .sk-circle12{-webkit-transform:rotate(330deg);-ms-transform:rotate(330deg);transform:rotate(330deg)}.nc-container #nc-loading-circle .sk-circle2:before{-webkit-animation-delay:-1.1s;animation-delay:-1.1s}.nc-container #nc-loading-circle .sk-circle3:before{-webkit-animation-delay:-1s;animation-delay:-1s}.nc-container #nc-loading-circle .sk-circle4:before{-webkit-animation-delay:-.9s;animation-delay:-.9s}.nc-container #nc-loading-circle .sk-circle5:before{-webkit-animation-delay:-.8s;animation-delay:-.8s}.nc-container #nc-loading-circle .sk-circle6:before{-webkit-animation-delay:-.7s;animation-delay:-.7s}.nc-container #nc-loading-circle .sk-circle7:before{-webkit-animation-delay:-.6s;animation-delay:-.6s}.nc-container #nc-loading-circle .sk-circle8:before{-webkit-animation-delay:-.5s;animation-delay:-.5s}.nc-container #nc-loading-circle .sk-circle9:before{-webkit-animation-delay:-.4s;animation-delay:-.4s}.nc-container #nc-loading-circle .sk-circle10:before{-webkit-animation-delay:-.3s;animation-delay:-.3s}.nc-container #nc-loading-circle .sk-circle11:before{-webkit-animation-delay:-.2s;animation-delay:-.2s}.nc-container #nc-loading-circle .sk-circle12:before{-webkit-animation-delay:-.1s;animation-delay:-.1s}@-webkit-keyframes sk-circleFadeDelay{0%,39%,100%{opacity:0}40%{opacity:1}}@-webkit-keyframes sk-circleFadeDelay{0%,39%,100%{opacity:0}40%{opacity:1}}@keyframes sk-circleFadeDelay{0%,39%,100%{opacity:0}40%{opacity:1}}.nc-container .scale_text2 #nc-loading-circle .sk-circle:before{background-color:#fff}.nc_iconfont{font-family:"nc_iconfont";color:#ff3f08;font-size:16px;font-style:normal}.ncpc_iconfont{font-family:"ncpc_iconfont";color:#ff3f08;font-size:16px;font-style:normal}.captcha-error .icon_ban{float:left;font-size:16px;padding-right:5px;line-height:14px}.clickCaptcha_text .btn_refresh{font-style:normal;cursor:pointer;background:#fff;color:#737383}.imgCaptcha .btn_refresh{font-size:20px;cursor:pointer;background:#fff;color:#737383}.nc_voice{display:none;position:relative;margin-top:-34px;z-index:99;width:auto;height:34px;background:#fff}.omeo-code-img,.omeo-code-audio{font-size:0;text-align:left}.omeo-code-audiobox,.omeo-code-img a,.omeo-code-audio a,.omeo-code-state{display:inline-block;*display:inline;zoom:1;height:32px;vertical-align:top;font-size:12px}.omeo-code .omeo-code-refresh{background:transparent;width:32px;height:32px;font-size:20px;color:#888;text-align:center;text-decoration:none;padding-left:4px;line-height:32px}.omeo-code .omeo-switch{display:none;width:32px;height:32px;border-left:1px solid #e1e1e1;background-image:url("//g.alicdn.com/sd/ncpc/images/checkcode.png");background-repeat:no-repeat}.omeo-img-active .omeo-code-img{display:block}.omeo-img-active .omeo-code-audio{display:none}.omeo-code-img img{border:1px solid #cdcdcd;cursor:pointer}.omeo-code-img .omeo-switch{background-position:9px -41px}.omeo-audio-active .omeo-code-audio{display:block}.omeo-audio-active .omeo-code-img{display:none}.omeo-code-refresh{position:relative;left:95px}.omeo-code-audiobox{position:relative;height:30px;line-height:32px;border:1px solid #e1e1e1;text-align:center;overflow:hidden;left:100px;top:1px;width:45%;min-width:80px;background-color:#eee}.omeo-code-audiobox a{display:block;text-decoration:none;color:#06c}.omeo-code-audiobox-playing a{visibility:hidden}.omeo-code-audiobox span,.omeo-code-audiobox b{visibility:hidden;position:absolute;top:0;left:0;height:30px;font-weight:100;overflow:hidden}.omeo-code-audiobox-playing span,.omeo-code-audiobox-playing b{visibility:visible}.omeo-code-audiobox span{z-index:0;width:0;background:#186bca}.omeo-code-audiobox b{width:100%;z-index:1;text-align:left;text-indent:30px;color:#999;background:url("//g.alicdn.com/sd/ncpc/images/checkcode.png") no-repeat 14px -89px}.omeo-code-audio .omeo-switch{background-position:5px 10px}input[type=text]::-ms-clear{display:none}.omeo-box{position:relative;background-color:#fff}.omeo-code-echo{position:absolute;top:2px;left:2px}.omeo-code-echo input{padding:5px;height:18px;line-height:18px;border:1px solid #ddd;width:80px;outline:0}.omeo-code-state{height:30px;line-height:30px;text-indent:25px;white-space:nowrap;background-image:url("//g.alicdn.com/sd/ncpc/images/checkcode.png");background-repeat:no-repeat;background-position:100px 100px}.omeo-code-echo .omeo-code-state-error{width:auto;background-position:7px -193px}.omeo-code-echo .omeo-code-state-success{position:absolute;width:30px;background-position:7px -243px}.omeo-code-state{position:absolute;left:0;top:28px}.nc_voice_close{display:inline-block;position:relative;cursor:pointer;left:95px;top:0;border-left:#ddd 2px solid;padding:0 0 0 7px;background-color:#fff;font-size:20px;color:#888;line-height:32px}.nc_help{position:absolute;width:100%;height:100%;left:0;top:0;z-index:99999}.nc_help .mask{background-color:#000;opacity:.5;filter:alpha(opacity=50);width:100%;height:100%;top:0;left:0}.nc_btn_close{position:absolute;height:20px;left:500px;border-radius:20px;padding:10px 30px;background-color:#aaa;color:#fff;cursor:pointer;z-index:10}.nc_btn_close:hover{background-color:#afafaf}.nc_hand{position:absolute;width:68px;height:53px;background-image:url("//g.alicdn.com/sd/ncpc/images/hand.png");z-index:3}.nc_slide_bg{z-index:3;font-size:12px;text-align:center;color:#fff;line-height:34px}.nc_voicebtn{position:absolute;padding:0;right:-25px;font-size:23px;color:#888;cursor:pointer;line-height:34px}.nc_helpbtn{position:absolute;cursor:pointer;right:-95px;top:4px;font-size:12px;background-color:#ffb668;color:#fff;padding:4px;border-radius:2px;line-height:18px;display:none}.nc_helpbtn:before{width:0;height:0;content:"";position:absolute;left:-2px;top:6px;border-top:4px solid transparent;border-bottom:4px solid transparent;border-right:4px solid #ffb668}.nc-container .errloading{border:#faf1d5 1px solid;text-indent:3px;background-image:none;font-size:12px;width:290px;line-height:20px;padding:7px 5px 8px 5px;color:#ef9f06;}.nc-container .errloading a{color:#30a7fc}.nc_captcha_text .nc_err{float:left;text-indent:0}.button_move{transition:left .5s;-moz-transition:left .5s;-webkit-transition:left .5s;-o-transition:left .5s}.bg_move{transition:width .5s;-moz-transition:width .5s;-webkit-transition:width .5s;-o-transition:width .5s}.nc_slide_box{position:absolute}.nc_captcha_text{height:auto;line-height:20px;visibility:hidden;font-size:12px;color:#999;font-weight:normal}.nc-container .nc_captcha_img_text{width:auto;height:auto;line-height:20px;visibility:hidden;font-size:12px;color:#999;font-weight:normal;display:none;padding:0 0 10px 0;background-position:0 0;}.nc-container .nc_captcha_img_text span.nc-lang-cnt{line-height:inherit}.nc-container .imgCaptcha .nc_captcha_img_text{width:auto}.nc_captcha_img_text{height:auto;line-height:20px;visibility:hidden;font-size:12px;color:#999;font-weight:normal;display:none;padding:0 0 10px 3px;background-position:0 0}.nc-container .nc_wrapper{width:auto}.nc_scale{width:auto;height:34px;background:#e8e8e8;position:relative;margin:0;padding:0}.nc_scale.is_audio{margin-right:25px}.nc-container .nc_scale div{height:auto}.nc-container .nc_scale ul{list-style:none}.nc-container .nc_scale .btn_slide{color:#737383;background-image:none;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}.nc-container .nc_scale span{text-align:center;width:40px;height:32px;line-height:32px;border:1px solid #ccc;position:absolute;left:0;cursor:move;background:#fff;z-index:2}.nc-container .nc_scale span.nc-lang-cnt{*line-height:34px;float:none;width:auto;height:auto;*height:34px;border:none;position:static;cursor:inherit;background:none;z-index:0;display:inline}.nc_slide_button{width:40px;height:32px;border:1px solid #ccc;position:absolute;left:0;cursor:move;background:#fff url("//g.alicdn.com/sd/ncpc/images/rt.png") no-repeat center;z-index:2}@media screen and (-ms-high-contrast:active),(-ms-high-contrast:none){.nc_scale span{height:32px}}.nc-container .nc_scale .btnok{cursor:default;background:#fff url("//g.alicdn.com/sd/ncpc/images/yes.png") no-repeat center;z-index:3}.nc-container .nc_scale .btnok2{cursor:default;font-size:20px;background:#fff url("//g.alicdn.com/sd/ncpc/images/no.png") no-repeat center;z-index:3}.nc-container .nc_scale .btn_warn{cursor:default;color:#ff3f08;line-height:34px;text-align:center;font-size:20px;background:#fff;z-index:3}.nc-container .clickCaptcha_text .btn_refresh{font-size:20px}.nc-container .clickCaptcha_text .icon_close{line-height:30px;margin-left:8px;cursor:default;color:#ff3f08;font-size:16px;float:left;margin-right:2px;background:transparent;z-index:3}.nc-container .nc_captcha_img_text .icon_close{cursor:default;color:#ff3f08;font-size:16px;float:left;margin-right:4px;background:transparent;z-index:3;line-height:18px}.nc-container .errloading .icon_warn{cursor:default;color:#ff3f08;font-size:18px;float:left;background:transparent;z-index:3}.nc-container .nc_scale .btn_ok{cursor:default;line-height:34px;text-align:center;font-size:20px;background:#fff;z-index:3;color:#76c61d}.nc-container .nc_scale .nc_ok,.nc-container .nc_scale .nc_bg{background:#7ac23c}.nc-container .nc_scale .nc_bg{position:absolute;height:100%;_height:34px;left:0;width:10px}.nc-container .nc_scale div.redbar{background:#fc461e;opacity:.5;filter:alpha(opacity=50)}.nc-container .nc_scale div.orange{background:#f00}.nc-container .nc_scale .scale_text{width:100%;height:100%;text-align:center;position:absolute;z-index:1;background:transparent;color:#9c9c9c;line-height:34px;font-size:12px;cursor:pointer}.nc-container .nc_scale .scale_text2{text-align:left;color:#fff;font-size:12px;text-indent:10px}.nc-container .nc_scale .scale_text2 b{padding-left:0;font-weight:normal}.nc-container .nc_scale .scale_text.scale_loading_text{text-align:center}.nc-container .nc_scale .imgCaptcha,.nc-container .nc_scale .clickCaptcha{display:none;overflow:hidden;border:1px solid #ccc;background:#fff;z-index:20000;}.nc-container .nc_scale .imgCaptcha p.error span,.nc-container .nc_scale .clickCaptcha p.error span{line-height:normal}.nc-container .nc_scale .imgCaptcha{height:auto}.nc-container .nc_scale .clickCaptcha{position:absolute;left:0;top:35px;height:270px;background:#fff;display:none;}.nc-container .nc_scale .clickCaptcha p.error i{color:#ff3f08;font-style:normal}.nc-container .nc_scale .clickCaptcha div{position:static;clear:both;width:100%;background:#fff;height:auto}.nc-container .nc_scale .clickCaptcha .clickCaptcha_text{height:30px;line-height:30px;font-size:12px;color:#999;}.nc-container .nc_scale .clickCaptcha .clickCaptcha_text b{font-weight:normal}.nc_btn_2{position:absolute;right:0;top:0;cursor:pointer;margin:2px 9px 0 0}.nc_iconfont.nc_btn_2{position:absolute;right:0;top:0;cursor:pointer}.nc_iconfont.nc_btn_1{position:absolute;top:10px;right:5px}.nc_btn_1{top:10px;right:10px}.scale_text i{font-style:normal;border:none;position:static;cursor:default;color:#fffc00;background:none;display:inline;width:100%}.nc-container .clickCaptcha .clickCaptcha_img{margin:0 auto;clear:both;position:relative;}.nc-container .clickCaptcha .clickCaptcha_img img{width:230px;height:230px;margin-left:10px;margin-top:5px}.nc-container .clickCaptcha .clickCaptcha_btn{margin:10px 0 0 15px;position:relative;text-align:left;}.nc-container .clickCaptcha .clickCaptcha_btn img{cursor:pointer}.nc-container .imgCaptcha{position:absolute;left:0;top:35px;height:auto;padding-bottom:15px;border:1px solid #ccc;background:#fff;}.nc-container .imgCaptcha div{position:static;width:90%;background-color:#fff}.nc-container .imgCaptcha,.nc-container .clickCaptcha{text-align:left;}.nc-container .imgCaptcha a,.nc-container .clickCaptcha a{color:#ff3f08}.nc-container .imgCaptcha .imgCaptcha_text{height:42px;line-height:42px;width:120px;background:#fff;font-size:14px;text-align:left;color:#747474;float:left;margin-left:10px;}.nc-container .imgCaptcha .imgCaptcha_text input{margin-top:5px;height:30px;line-height:30px;font-size:14px;width:90px;background:#fff}.nc-container .imgCaptcha .imgCaptcha_text input:focus{outline:none;color:#bbb}.nc-container .imgCaptcha .imgCaptcha_btn{margin:0 0 0 12px;*margin-left:0;clear:both;padding-top:5px;width:90%;}.nc-container .imgCaptcha .imgCaptcha_btn img{cursor:pointer}.nc-container .imgCaptcha .nc_scale_submit{margin:0 auto;cursor:pointer;background-color:#fc461e;width:120px;height:32px;line-height:32px;color:#fff;text-align:center}.nc-container .imgCaptcha .imgCaptcha_img{margin:4px 0 0 100px;height:40px;width:130px;overflow:hidden;cursor:pointer;}.nc-container .imgCaptcha .imgCaptcha_img img{width:130px}.nc-container .imgCaptcha .imgCaptcha_img input{border:solid 1px #ccc}.nc-lang-ar_MA,.nc-lang-ar_SA,.nc-lang-iw_HE,.nc-lang-iw_IL{text-align:right;*text-align:left;}.nc-lang-ar_MA .nc_scale .scale_text2,.nc-lang-ar_SA .nc_scale .scale_text2,.nc-lang-iw_HE .nc_scale .scale_text2,.nc-lang-iw_IL .nc_scale .scale_text2{text-align:right;}.nc-lang-ar_MA .nc_scale .scale_text2 span,.nc-lang-ar_SA .nc_scale .scale_text2 span,.nc-lang-iw_HE .nc_scale .scale_text2 span,.nc-lang-iw_IL .nc_scale .scale_text2 span{*display:inline-block;padding:0 56px 0 0}.nc-lang-ar_MA .nc_captcha_img_text,.nc-lang-ar_SA .nc_captcha_img_text,.nc-lang-iw_HE .nc_captcha_img_text,.nc-lang-iw_IL .nc_captcha_img_text{*text-align:right}.nc-lang-ar_MA span.nc-lang-cnt,.nc-lang-ar_SA span.nc-lang-cnt,.nc-lang-iw_HE span.nc-lang-cnt,.nc-lang-iw_IL span.nc-lang-cnt{text-align:right;direction:rtl}.nocaptcha span.nc-lang-cnt{float:none;height:auto;line-height:30px}.nc-container{font-size:12px;-ms-touch-action:none;touch-action:none;}.nc-container p{margin:0;padding:0;display:inline}.nc-container .scale_text.scale_text span[data-nc-lang="_startTEXT"]{display:inline-block;width:100%}.nc-container .scale_text.scale_text.slidetounlock span[data-nc-lang="_startTEXT"]{background:-webkit-gradient(linear,left top,right top,color-stop(0,#4d4d4d),color-stop(.4,#4d4d4d),color-stop(.5,#fff),color-stop(.6,#4d4d4d),color-stop(1,#4d4d4d));-webkit-background-clip:text;-webkit-text-fill-color:transparent;-webkit-animation:slidetounlock 3s infinite;-webkit-text-size-adjust:none}.nc-container .nc_scale .nc-align-center.scale_text2{text-align:center;text-indent:-42px}@-webkit-keyframes slidetounlock{0%{background-position:-200px 0}100%{background-position:200px 0}}.nc-container.tb-login .clickCaptcha_text .icon_close{line-height:30px;margin-left:0;cursor:default;color:#ff3f08;font-size:16px;float:left;margin-right:0;background:transparent;z-index:3}.nc-container.tb-login{position:relative;margin-top:20px;display:none;}.nc-container.tb-login .nc_scale{width:auto;}.nc-container.tb-login .nc_scale .scale_text2{text-indent:-42px;text-align:center;}.nc-container.tb-login .nc_scale .scale_text2 b{padding:0}.nc-container.tb-login .nc_scale.nc_err div.scale_text{background:#f79977}.nc-container.tb-login .errloading{width:auto}.nc-container.tb-login .imgCaptcha,.nc-container.tb-login .clickCaptcha{width:252px;*width:256px;border:0;*height:300px;min-height:300px;max-height:inherit !important;}.nc-container.tb-login .imgCaptcha div.login-msg.error,.nc-container.tb-login .clickCaptcha div.login-msg.error{background:#fff2f2}.nc-container.tb-login .imgCaptcha .captcha-error,.nc-container.tb-login .clickCaptcha .captcha-error{position:absolute;top:0;width:244px;height:auto;margin-bottom:15px;padding:3px;border:solid 1px #ff8e8e;line-height:18px}.nc-container.tb-login .imgCaptcha .captcha-inform,.nc-container.tb-login .clickCaptcha .captcha-inform{font-size:110%;margin-left:20px}.nc-container.tb-login .imgCaptcha{padding-top:66px;}.nc-container.tb-login .imgCaptcha .imgCaptcha_text{width:100px;margin-left:0;}.nc-container.tb-login .imgCaptcha .imgCaptcha_text input:focus{color:#000}.nc-container.tb-login .imgCaptcha .imgCaptcha_img{width:120px;_width:100px}.nc-container.tb-login .imgCaptcha .imgCaptcha_btn{width:100%;margin-left:0}.nc-container.tb-login .imgCaptcha .nc_scale_submit{width:100%;height:36px;line-height:36px;margin-top:20px;margin-left:0;border-radius:3px;font-size:16px;font-family:Tahoma,Helvetica,Arial,sans-serif;background:#ff3f08}.nc-container.tb-login .clickCaptcha{padding-top:40px;}.nc-container.tb-login .clickCaptcha .clickCaptcha_text{text-indent:4px}.nc-container.tb-login .clickCaptcha .clickCaptcha_img img{margin-left:10px}.nc-container.tb-login .nc_btn_1{top:77px;_top:57px}.nc-container.tb-login .nc_btn_2{top:36px}.login .nc-container.tb-login .login-msg p,.login-box .nc-container.tb-login .login-msg p{width:auto;float:left}.nc-container.tb-login.nc-old-login{margin:20px 0 10px 0;width:250px;}.nc-container.tb-login.nc-old-login .nc_wrapper{width:250px}.nc-container.tb-login.nc-old-login .imgCaptcha,.nc-container.tb-login.nc-old-login .clickCaptcha{width:250px;min-height:auto;}.nc-container.tb-login.nc-old-login .imgCaptcha .captcha-error,.nc-container.tb-login.nc-old-login .clickCaptcha .captcha-error{line-height:16px}.nc-container.tb-login.nc-old-login .clickCaptcha{padding-top:28px;}.nc-container.tb-login.nc-old-login .clickCaptcha .clickCaptcha_img img{width:200px;height:200px}.nc-container.nc-old-login.show-click-captcha{padding-bottom:60px}.nc-container.nc-old-login.show-click-captcha.nc-tm-min-fix{padding-bottom:40px}.nc-container.tb-login.nc-tm-min-fix .clickCaptcha{max-height:340px !important}#content .login-box .bd .nc-container.tb-login .login-msg{margin:10px auto 15px auto}#content .login-box .bd .nc-container.tb-login.nc-old-login.show-click-captcha .login-msg{margin:2px 0 0 0}.nc-container .nc_scale .nc-cc{display:none;position:absolute;left:0;top:35px;z-index:20000;width:360px;height:570px;border:1px solid #5eaef1;border-radius:4px;background:#fff;font-size:14px;line-height:18px;color:#333;}.nc-container .nc_scale .nc-cc.nc-cc-status-loading .nc-cc-btn,.nc-container .nc_scale .nc-cc.nc-cc-status-verifing .nc-cc-btn{background-color:#90c1eb}.nc-container .nc_scale .nc-cc.nc-cc-status-loading .nc-cc-btn,.nc-container .nc_scale .nc-cc.nc-cc-status-verifing .nc-cc-btn,.nc-container .nc_scale .nc-cc.nc-cc-status-loading .nc-cc-refresh,.nc-container .nc_scale .nc-cc.nc-cc-status-verifing .nc-cc-refresh{cursor:default}.nc-container .nc_scale .nc-cc.nc-cc-status-loading .nc-cc-refresh,.nc-container .nc_scale .nc-cc.nc-cc-status-verifing .nc-cc-refresh{color:#999}.nc-container .nc_scale .nc-cc a{color:#3199f4;text-decoration:none}.nc-container .nc_scale .nc-cc .nc_iconfont{vertical-align:top;margin-right:8px}.nc-container .nc_scale .nc-cc-btn{display:inline-block;*display:inline;*zoom:1;vertical-align:top;letter-spacing:normal;word-spacing:normal;width:100px;line-height:30px;text-align:center;background-color:#3199f4;color:#fff;border-radius:4px;cursor:pointer;}.nc-container .nc_scale .nc-cc-btn.nc-cc-disabled{background-color:#90c1eb;cursor:default}.nc-container .nc_scale .nc-cc-btn .nc-lang-cnt{line-height:18px}.nc-container .nc_scale .nc-cc-header{padding:20px 20px 19px 20px;height:100px;background:#f4f8fa;border-bottom:1px solid #ccc}.nc-container .nc_scale .nc-cc-img1-box{float:left;width:100px;height:100px;margin-right:16px}.nc-container .nc_scale .nc-cc-txt{overflow:hidden;*zoom:1;line-height:30px;padding-top:11px}.nc-container .nc_scale .nc-cc-img2-box{position:relative;padding:0 20px;margin-top:20px}.nc-container .nc_scale .nc-cc-items{position:absolute;left:20px;_left:0;top:0;width:320px;overflow:hidden}.nc-container .nc_scale .nc-cc-items-inner{margin-right:-20px}.nc-container .nc_scale .nc-cc-item{position:relative;display:inline-block;*display:inline;*zoom:1;vertical-align:top;letter-spacing:normal;word-spacing:normal;margin-right:10px;margin-bottom:10px;border:1px solid #ccc;width:98px;height:98px;background:url("//gtms02.alicdn.com/tps/i2/T1ty2QFNNXXXc6Yc2r-1-1.gif");}.nc-container .nc_scale .nc-cc-item:hover{border-color:#3199f4}.nc-container .nc_scale .nc-cc-item .nc_iconfont{display:none;position:absolute;right:0;bottom:0;color:#3199f4;font-size:22px;margin-right:0}.nc-container .nc_scale .nc-cc-item.nc-cc-selected .nc_iconfont{display:block}.nc-container .nc_scale .nc-cc-tip{display:none;position:absolute;left:0;bottom:60px;width:360px;line-height:18px;text-align:center;color:#eb4f38;}.nc-container .nc_scale .nc-cc-tip span{line-height:normal}.nc-container .nc_scale .nc-cc-footer{position:absolute;left:0;bottom:20px;width:360px;height:30px;line-height:30px;text-align:center;}.nc-container .nc_scale .nc-cc-footer .nc_iconfont{color:#c4cbd0}.nc-container .nc_scale .nc-cc-refresh,.nc-container .nc_scale .nc-cc-wait{position:absolute;left:20px;top:0;color:#3199f4;cursor:pointer}.nc-container .nc_scale .nc-cc-wait{display:none}.nc-container .nc_scale .nc-cc-cancel{position:absolute;right:20px;top:0;color:#3199f4;cursor:pointer;}.nc-container .nc_scale .nc-cc-cancel .nc_iconfont{position:relative;top:-1px}.nc-container .nc_scale .nc-cc-loading{margin-top:247px;text-align:center;line-height:14px}.nc-container .nc_scale .nc-cc-loading-img{display:inline-block;*display:inline;*zoom:1;vertical-align:top;letter-spacing:normal;word-spacing:normal;vertical-align:middle;background:url("//img.alicdn.com/tps/TB1OdxsKpXXXXcgXFXXXXXXXXXX-14-14.gif") no-repeat;width:14px;height:14px;position:relative;top:-1px;margin-right:9px}.nc-container .nc_scale .nc-cc-fail{position:absolute;left:50%;top:50%;width:320px;height:180px;margin-left:-160px;margin-top:-90px;background:#fff;border-radius:4px}.nc-container .nc_scale .nc-cc-fail-inner{text-align:center;padding:55px 10px 10px}.nc-container .nc_scale .nc-cc-fail-action{margin:28px 0 18px;}.nc-container .nc_scale .nc-cc-fail-action a{display:inline-block;*display:inline;*zoom:1;vertical-align:top;letter-spacing:normal;word-spacing:normal;line-height:30px;margin-left:16px}.nc-container .nc_scale .nc-cc-contact{text-align:right;color:#666;padding-right:9px}.nc-container .nc_scale .nc-cc-mask{display:none;position:absolute;left:0;top:0;width:360px;height:570px;background:rgba(0,0,0,0.3);filter:progid:DXImageTransform.Microsoft.gradient(enabled='true',startColorstr='#4C000000', endColorstr='#4C000000');}:root .nc-container .nc_scale .nc-cc-mask{-webkit-filter:none;filter:none}.nc-container .nc_scale .nc-cc-arrow-1,.nc-container .nc_scale .nc-cc-arrow-2{display:none;position:absolute;top:340px;border:solid transparent;height:0;width:0}.nc-container .nc_scale .nc-cc-arrow-1{border-width:16px;margin-top:-1px}.nc-container .nc_scale .nc-cc-arrow-2{border-width:15px}.nc-container .nc_scale .nc-cc-right .nc-cc-arrow-1,.nc-container .nc_scale .nc-cc-left .nc-cc-arrow-1,.nc-container .nc_scale .nc-cc-right .nc-cc-arrow-2,.nc-container .nc_scale .nc-cc-left .nc-cc-arrow-2{display:block;_display:none}.nc-container .nc_scale .nc-cc-right{left:180px;top:-339px;}.nc-container .nc_scale .nc-cc-right .nc-cc-arrow-1{border-right-color:#5eaef1;left:-32px}.nc-container .nc_scale .nc-cc-right .nc-cc-arrow-2{border-right-color:#fff;left:-30px}.nc-container .nc_scale .nc-cc-left{left:-335px;top:-339px;}.nc-container .nc_scale .nc-cc-left .nc-cc-arrow-1{border-left-color:#5eaef1;right:-32px}.nc-container .nc_scale .nc-cc-left .nc-cc-arrow-2{border-left-color:#fff;right:-30px}</style></head>
<body>
<c:import url="accout_top.jsp"></c:import>

<script>
    /* <![CDATA[ */
    var Id =  '6FD2338D';
    var IsOpenCGT = '1';
    var left_IsValidateMobile = 'true';
    var left_IsValidateIdentity = 'true';
    var left_IsSetPayPwd = 'false';
    var IsValidateMobile = 'True';
    var IsValidateIdentity = 'True';
    var IsSetPayPwd = 'False';
    var IsbindBankNo = 'false';
    /*]]>*/
</script>

<form id="form1" style="*margin-top:10px">
<div class="account-container clearfloat">

<div class="aspNetHidden">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="uqL1CEjALRrW9EG10dxX+UUywOOEm+xUWeN0o+MBodbfo0DfW8iVPRnZbi1Xr3UpAMs4rN9HYFJPAf5FzWeek6tu20YU9yZ+ARgt0QrFhOasfjdH7AH8QQa6vlM=">
</div>
<div class="aspNetHidden">
<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="2FBD1813">
</div>
<div class="account-rightBox clearfloat">
<div class="box-padding">
<div class="account_paytotal">
<dl class="payBox1" style="width:180px;">
<dt>最终回款日期：
<div class="i-member-tips" style="">
<div class="i-member-tips-box">
<i class="i-member-tips-arrow"></i>
We+自动服务以服务期到期时间生成回款计划，该回款计划并不代表实际回款时间，实际回款时间以全部债权退出完成的时间为准。
</div>
</div>
</dt>
<dd><b id="ReturnDate">${lastDate}</b>
</dd>
</dl>
<dl class="payBox6">
<dt>回款笔数：</dt>
<dd id="ReturnNum">${record.item.siireturn}笔</dd>
</dl>
<dl class="payBox7" style="width:380px;">
<dt>预期回款金额（本金+利息）：</dt>
<dd id="ReturnAmount"><b>￥${lastMoney.rrtotal}</b>（${lastMoney.rrmoney } + ${lastMoney.rrinterest}）</dd>
</dl>
</div>
<div class="account_tableBox clearfloat">
<div class="account_table margin-top-30">
<table width="" align="center" border="0" cellspacing="0" cellpadding="0" class="account_tableNR">
<tbody><tr id="trhead" style="background-color: rgb(240, 240, 240);">
<th class="a_low08">
服务/标的编号
</th>
<th class="a_low02" style="width: 82px;">
类型
</th>
<th class="a_low14">
回款日期
</th>
<th class="" style="width: 278px;">
当次回款（本金+预期收益）
<span id="expectReturn" class="we_notice_icon we_notice_icon5" style="display: none;">
<p><i></i>We+自动服务的预期回款金额不代表实际收益，实际收益以其所投所有标的的收益总和为准。</p>
</span>
</th>
<th class="a_low03">
本期/总期数
</th>
<th class="a_low03">
操作
</th>
</tr><tr style="background-color: rgb(255, 255, 255);"><td class="pl10 txt_center"><a target="_blank" href="${pageContext.request.contextPath}/mini_detail?siiid=${record.item.siiid}">${record.item.siititle }</a></td><td class="txt_center">${record.item.siirepayment }</td><td class="txt_center">${record.rrdate }</td><td class="txt_center"><span class="font-orange2">￥${record.rrtotal }</span>（${record.rrmoney }+${record.rrinterest }）</td><td class="txt_center">${record.rrnownum }/${record.item.siireturn }</td><td class="txt_center"><a target="_blank" href="#">查看</a>/<a class="tip contract1" productname="false" url="WeFTB_D84F3645-D5FC-4775-8160-EBD081ECE292" href="javascript:void(0);">下载合同</a><span class="tip-text">温馨提示：合同查看密码为你的手机号码。<span></span></span></td></tr>
</tbody></table>
<div id="pager"></div>
</div>
</div>
</div>
</div>
<style type="text/css">
                .tip-text {
                    position: absolute;
                    display: none;
                    top: 13px;
                    right: 101px;
                    px;
                    width: 230px;
                    border: 1px solid #E9D315;
                    color: #5B5316!important;
                    background: #F9F2BA;
                }
                
                .txt_center {
                    position: relative;
                }
                
                .txt_center:hover .tip-text {
                    display: block;
                }
            </style>

<div id="dahei" style="display: none; height: 638px;"></div>
<div id="tooltip" class="tooltip"></div>
</div></form>
<div id="dial-window" style="display: none;" class="z103">
<div class="title">
加载中 <i class="close close-x icon abs"></i>
</div>
<div class="body">
<img src="images/loading.gif" alt="加载中">
</div>
<div id="dial-window-btns" class="btns tc">
<div class="inbid">
<a href="javascript:void(0)" class="td-btn-1 td-btn-1-or dete " id="dial-window-okbtn">确定</a>
<a href="javascript:void(0)" class="td-btn-1 td-btn-1-gar  cancle " id="dial-window-canclebtn">取消</a>
</div>
<div class="g6" style="font-size: 14px; margin-left: -14px; padding: 18px 0 0px 0; display: none;" id="divTiQian">
</div>
</div>
</div>
<div id="diallayer" style="display: none;"></div>

<div id="dahei" style="display: none"></div>
<div id="tooltip" class="tooltip"></div>
</div>
<div class="tdw-footer">
<div class="wth-1200 tdw-footer-container">
<div class="tdw-footer-supervise" version="interface-data">
<a class="super-img1" href="#" rel="external nofollow" target="_blank"></a>
<a class="super-img2" href="#" rel="external nofollow" target="_blank"></a>
<a class="super-img3" href="#" rel="external nofollow" target="_blank"></a>
<a class="super-img4" href="#" rel="external nofollow" target="_blank"></a>
<a class="super-img5" href="#" rel="external nofollow" target="_blank"></a>
<a class="super-img6" href="#" id="___szfw_logo___" rel="external nofollow" target="_blank"></a>
<a class="super-img8" href="#" id="_pingansec_bottomimagesmall_p2p" rel="external nofollow" target="_blank"></a>
<a alt="企业名称：东莞团贷网互联网科技服务有限公司法定代表人：唐军标识状态：已激活 粤工商备P191608002336" class="super-img9" href="http://wljg.gdgs.gov.cn/corpsrch.aspx?key=441900002895462" target="_blank"></a>
</div>
<div class="tdw-footer-address tc fz12" version="interface-data">
2010-<span>2018</span> 版权所有 © 团贷网 <a href="http://www.miibeian.gov.cn/" rel="nofollow" target="_blank">粤ICP备12043601号-1</a> 粤公安网备44190002000538号 东莞团贷网互联网科技服务有限公司
<br>地址：东莞市南城街道莞太路111号民间金融大厦1号楼28楼
</div>
</div>
</div>
<div class="tdw-tools-bar" id="tdwToolBar" version="interface-data">
<ul>
<li>
<a href="javascript:;" id="toolRisk">
<i class="tdw-icons i-tool-risk"></i>
<p>风险<br>提示</p>
</a>
<div class="risk-tips">
<i></i>
<p>市场有风险<br>出借需谨慎</p>
</div>
</li>
<li>
<a href="javascript:;" onclick="javascript:window.open();" target="_blank">
<i class="tdw-icons i-tool-service"></i>
<p>在线<br>客服</p>
</a>
</li>
<li>
<a href="javascript:;" onclick="javascript:window.open()">
<i class="tdw-icons i-tool-help"></i>
<p>帮助<br>中心</p>
</a>
</li>
<li>
<a href="javascript:;" onclick="javascript:window.open();">
<i class="tdw-icons i-tool-calculate"></i>
<p>计算<br>工具</p>
</a>
</li>
<li class="last-border tool-backtop" id="tool-backtop">
<a href="javascript:;">
<i class="tdw-icons i-tool-backtop"></i>
<p>回到<br>顶部</p>
</a>
</li>
</ul>
</div>
<div id="layer" style="display: none;"></div>
<div id="td-art" style="display:none">
<div class="art-body">
<i class="close icons close-x icon abs" style="top: -30px; right: -32px;"></i>
<div id="recharge-art" class="recharge-art">
<div class="left">
<p id="art_UserName">
</p>
<p id="art_ProjectAmount">
</p>
<p id="art_ReTime">
</p>
<p id="art_Rate">
</p>
<p id="txtLowerUnit">
</p>
<p id="art_ReType">
</p>
<div class="reward" id="art_PublicRate">
<p>
<i class="i-1"></i>发标人投标奖励【无】
</p>
<p class="padding-bottom-0">
<i class="i-2"></i>团贷网投标奖励【无】
</p>
</div>
</div>
<div class="right">
<a rel="nofollow" href="Recharge" target="_blank" class="charge">去充值</a>
<p>
可用余额：<span class="font-000" id="art_UserFund"></span>
</p>
<p id="txtMaxUnit1">
</p>
<p>
应付金额：<span class="font-orange font-bold" id="txtInvestAmount"></span>
</p>
<p id="p_Expected">
参考回报：<span class="font-orange font-bold" id="txtExpected"></span>
<span id="spPrizeInterest" style="display:none;"><b class="font-orange font-bold">+</b><span class="hongbao-jx font-orange font-bold">0.00</span>元</span>
</p>
<div class="invent-form">
<div class="form-box">
<input type="text" class="input-text autoinput" id="txtUnit" value="1" maxlength="10" onpaste="return false" oncontextmenu="return false" oncopy="return false" oncut="return false" data-input="true">份
</div>
<i class="top" id="btnPlus"></i><i class="bottom" id="btnMinus"></i>
<a href="javascript:void(0)" id="AllInvest">全额</a>
</div>
<div class="invent-form" style="margin-top: 15px; margin-bottom: 35px; height: 16px; line-height: 16px; display: none;" id="dCode">
<input type="text" placeholder="请输入手机验证码" id="MobileCode" style="height: 33px; line-height: 33px; padding-left: 12px; border: 1px solid #d5d5d5; width: 195px; border-radius: 3px; -webkie-border-radius: 3px;">
<a href="javascript:void(0)" id="GetCode">发送验证码</a>
</div>
<div id="redpackform">
</div>
<a target="_blank" class="invent-btn" id="PostData" style="cursor:pointer;">立即投资</a>
<input type="hidden" id="hiDeadline">
<input type="hidden" id="hiInterestRate">
<input type="hidden" id="hiRepaymentType">
<input type="hidden" id="hiProjectType">
<input type="hidden" id="hiUnit">
<input type="hidden" id="txtPublicRate">
<input type="hidden" id="txtTuandaiRate">
<input type="hidden" id="hiNeedPassWord">
<input type="hidden" id="hiTotalInvest ">
<input type="hidden" id="hiCanGetPackage ">
<input type="hidden" id="hiNeedInvest ">
<input type="hidden" id="hiIsNewUser ">
<input type="hidden" id="hiIsAwardOverdue ">
<input type="hidden" id="hiAreaInvest ">
<input type="hidden" id="hiIsScribeTanfer">
<input type="hidden" id="hiProjectDeadline">
<input type="hidden" id="hiNewHandRate">
<input type="hidden" id="hiHQBAmount">
<input type="hidden" id="hiDeadType">
<div class="agreement f12  font-666" id="AgreeDiv"></div>
</div>
</div>
</div>
</div>
<div id="dial-window" style="display: none;" class="z103">
<div class="title">
加载中 <i class="close close-x icon abs"></i>
</div>
<div class="body">
<img src="images/loading.gif" alt="加载中">
</div>
<div id="dial-window-btns" class="btns tc">
<a href="javascript:void(0)" class="td-btn-1 td-btn-1-or dete " id="dial-window-okbtn">确定</a>
<a href="javascript:void(0)" class="td-btn-1 td-btn-1-gar  cancle " id="dial-window-canclebtn">取消</a>
</div>
</div>
<a id="tt_link" style="display: none;">bank</a>
<div class="stop-taking stop-dialog" id="funcStopService" style="display: none;z-index: 9999999999">
<div id="guan"></div>
<h2><b class="b1"></b><span class="stop-title"></span><b class="b2"></b></h2>
<div class="stop-text" id="funcStopCentent">
</div>
<div class="knob">我知道了</div>
</div>
<div id="diallayer" style="display: none;"></div>
<div id="bankBindAlert" style="display: none; margin-left: -204px;" class="dial-window xm-window bankBindAlert">
<div class="title rel">温馨提示：
<a href="account_default"><i class="close-x cgt-close-x icon db abs"></i></a>
</div>
<div class="body">
<div class="" style="text-align: center;">
<p class="p1">请您在新打开的页面完成
<span id="sp_title"></span>
</p>
<p class="p2">
<span id="sp_title2"></span>完成前请不要关闭此窗口，根据完成结果，选择下面的操作</p>
</div>
</div>
<div class="bottom">
<div class="btn-group">
<a href="account_default" id="remind_aa" class="btn">
<span id="aa_title">绑卡成功</span>
</a>
</div>
<a class="question" href="index.html" target="_blank">
<span id="sp_title3"></span>遇到问题</a>
</div>
</div>
<div class="xm-mask" style="display: none;"></div>
<div id="bankBlock" class="xiamen-pop" style="display: none;">
<div class="close"></div>
<div class="pop-tit">
<h3></h3>
<h4>团贷网联手厦门银行</h4>
<p>个人账户升级为厦门银行存管账户</p>
</div>
<div class="tc mt30">资金有保障，投资更放心</div>
<div class="pop-body">
<p>
<span id="sp_open" style="display: none;">您尚未开通厦门银行资金存管账户，请先开通</span>
<span id="sp_active" style="display: none;">您的账号已升级为厦门银行资金存管账户，请您激活账户</span>
</p>
<a href="XM_BankBind" id="aOpen" class="btn" target="_blank">马上升级</a>
</div>
</div>
<div id="bindingBank" class="xiamen-pop" style="display: none;">
<div class="close"></div>
<div class="pop-tit">
<h3></h3>
<h4>团贷网联手厦门银行</h4>
<p>个人账户升级为厦门银行存管账户</p>
</div>
<div class="tc mt30">资金有保障，投资更放心</div>
<div class="pop-body">
<p>
<span id="sp_open" style="display: none;">您尚未开通厦门银行资金存管账户，请先开通</span>
<span id="sp_active" style="display: none;">您的账号已升级为厦门银行资金存管账户，请您激活账户</span>
</p>
<a href="XM_BankBind" id="aOpen" class="btn" target="_blank">绑定银行卡</a>
</div>
</div>
<div style="display: none;" class="cgt_10100 dial-window xm-window layer-win">
<div class="title1 rel">温馨提示：
<i class="close-x cgt-close-x icon db abs"></i>
</div>
<div class="body cgt-box">
<div class="  mt10">
<div id="body_dv_top" class="top">
<p>
<span class="ok-icon"></span>
<span id="body_dv_head">升级存管账户成功</span>
</p>
</div>
<div id="body_dv_bottom" class="bottom">
<div id="btn_01" class="count" style="display:block;">
<p class="pb30">此页将在
<span class="num"></span>后关闭，请在原页面继续操作</p>
<a class="td-btn-1 td-btn-1-or btn cgt-close-x" href="javascript:;">立即关闭</a>
</div>
</div>
</div>
</div>
</div>
<div style="display: none;" class="dial-window xm-window layer-win">
<div class="title1 rel">温馨提示：
<i class="close-x cgt-close-x icon db abs"></i>
</div>
<div class="body cgt-box g6">
<div class=" pl20 mt10">
<div id="body_dv_top" class="top">
<p>
<span class="ok-icon"></span>
<span id="body_dv_head">升级存管账户成功</span>
</p>
</div>
<div id="body_dv_bottom" class="bottom">
<div id="btn_01" class="count tl " style="display:block;">
<p class="pb5 ff7301">由于您的证件为【港澳通行证】，您还需要完成以下操作才能进行资金操作：</p>
<p>1、添加专属客服
<a target="blank" href="tencent://message/?uin=2880761023&amp;Site=%E4%B8%80%E5%B8%90%E9%80%9A&amp;Menu=yes">
<span class="qq-bg">
<i class="qq-icon"></i>2880761023</span>
</a> 为好友。</p>
<p style="line-height:23px">2、QQ联系客服专员，提交以下申请材料：手持港澳台通行证证件彩色半身照【保证证件号码清晰且
<br>不能是镜面照】港澳台通行证背面彩色照片,受理时间为：工作日8:30-12:00 13:30-18:00。</p>
<p>3、资料提交后，平台及银行将会进行双重审核，一般时长为2个工作日。</p>
<p class="pb30">4、审核通过后即可进行资金操作，届时会有短信通知。</p>
<a class="td-btn-1 td-btn-1-or btn cgt-close-x" href="javascript:;">我知道了</a>
</div>
</div>
</div>
</div>
</div>
<div style="display: none;" class="dial-window xm-window layer-win">
<div class="title1 rel">温馨提示：
<i class="close-x cgt-close-x icon db abs"></i>
</div>
<div class="body cgt-box g6">
<div class=" pl20 mt10">
<div id="body_dv_top" class="top">
<p>
<span class="ok-icon  warning-icon"></span>
<span id="body_dv_head">升级存管账户成功</span>
</p>
</div>
<div id="body_dv_bottom" class="bottom">
<div id="btn_01" class="count tl " style="display:block; line-height:30px;">
<p class="  ff7301 pb30">注意：由于您的身份信息或银行卡信息有误，您暂时还不能进行充值、投资、提现等资金操作，请尽快联系团贷网专属客服
<a target="blank" href="tencent://message/?uin=2880761023&amp;Site=%E4%B8%80%E5%B8%90%E9%80%9A&amp;Menu=yes">
<span class="qq-bg">
<i class="qq-icon"></i>2880761023</span>
</a>　进行资料核实及修改。</p>
<a class="td-btn-1 td-btn-1-or btn cgt-close-x" href="javascript:;">我知道了</a>
</div>
</div>
</div>
</div>
</div>
<div style="display: none;" class="dial-window xm-window layer-win">
<div class="title1 rel">温馨提示：
<i class="close-x cgt-close-x icon db abs"></i>
</div>
<div class="body cgt-box g6">
<div class=" pl20 mt10">
<div id="body_dv_top" class="top">
<p>
<span class="ok-icon  warning-icon"></span>
<span id="body_dv_head">升级存管账户成功</span>
</p>
</div>
<div id="body_dv_bottom" class="bottom">
<div id="btn_01" class="count tl " style="display:block; line-height:30px;">
<p class="  ff7301 pb30">注意：由于您填写的预留手机号与银行预留手机号不符，您暂时不能进行快捷充值操作，请及时到"我的账户—安全中心"进行修改。</p>
<a class="td-btn-1 td-btn-1-or btn  " href="javascript:;">我要修改预留手机号</a>
</div>
</div>
</div>
</div>
</div>
<div id="bankCheckFaile" style="display: none;" class="dial-window xm-window layer-win">
<div class="title1 rel">温馨提示：
<i class="close-x cgt-close-x icon db abs"></i>
</div>
<div class="body cgt-box g6">
<div class=" pl20 mt10">
<div id="body_dv_bottom" class="bottom">
<div id="btn_01" class="count tl bankCheckTxt" style="display:block; line-height:30px;">
<p id="bankCheckFaile-tip" class="  ff7301 pb10">由于您升级存管时使用的证件为【外国人护照】，您还需完成以下操作才能进行资金操作：</p>
<p>1、添加专属客服
<a target="blank" href="tencent://message/?uin=2880761023&amp;Site=%E4%B8%80%E5%B8%90%E9%80%9A&amp;Menu=yes">
<span class="qq-bg">
<i class="qq-icon"></i>2880761023</span>
</a> 为好友。</p>
<p style="line-height:23px">2、QQ联系客服专员，提交以下申请材料：手持<span class="bankCheckFaile-tip2">港澳台通行证</span>证件彩色半身照【保证证件号码清晰且
<br>不能是镜面照】<span class="bankCheckFaile-tip2">港澳台通行证</span>背面彩色照片,受理时间为：工作日8:30-12:00 13:30-18:00</p>
<p>3、资料提交后，平台及银行将会进行双重审核，一般时长为2个工作日。</p>
<p class="pb30">4、审核通过后即可进行正常投资，届时会有短信通知。</p>
<div class="tc">
<a class="td-btn-1 cgt-close-x td-btn-1-or btn" href="javascript:;">我知道了</a>
</div>
</div>
</div>
</div>
</div>
</div>
<div id="0pass" style="display: none;" class="dial-window xm-window layer-win">
<div class="title1 rel">温馨提示：
<i class="close-x cgt-close-x icon db abs"></i>
</div>
<div class="body cgt-box g6">
<div class=" pl20 mt10">
<div id="body_dv_bottom" class="bottom">
<div id="btn_01" class="count tl " style="display:block; line-height:30px;">
<p class="  ff7301 pb30 mb10">注意：由于您的身份信息或银行卡信息有误，您暂时还不能进行充值、投资、提现等资金操作，请尽快联系团贷网客服（1010-1218）进行资料核实及修改。</p>
<a class="td-btn-1 cgt-close-x td-btn-1-or btn" href="javascript:;">我知道了</a>
</div>
</div>
</div>
</div>
</div>
<div id="risk" style="display: none;  width:450px!important; margin-left: -225px!important;" class="dial-window xm-window layer-win">
<div class="title1 rel">温馨提示：
<i class="close-x cgt-close-x icon db abs"></i>
</div>
<div class="body" style="height: 214px;">
<div class="  mt10">
<div id="body_dv_bottom" class="bottom ">
<div id="btn_01" class="count" style="display:block;  ">
<p class="pb20 f18 g6">您尚未进行风险承受能力评测，请先完成评测后再进行投资</p>
<a class="td-btn-1 riskBtn td-btn-1-or btn btn-s" href="javascript:;">立即评测</a>
</div>
<div class="tc mt20">您今年还有三次评估机会</div>
</div>
</div>
</div>
</div>
<div id="chongzhiother" style="display: none;" class="dial-window xm-window layer-win">
<div class="title1 rel">温馨提示：
<i class="close-x cgt-close-x icon db abs"></i>
</div>
<div class="body cgt-box g6">
<div class=" pl20 mt10">
<div id="body_dv_bottom" class="bottom">
<div id="btn_01" class="count tl " style="display:block; line-height:30px;">
<p class="  ff7301 pb30 mb10">注意：由于您填写的预留手机号与银行预留手机号不符，您暂时不能进行快捷充值操作，请及时到"我的账户—安全中心"进行修改。</p>
<a id="chongzhiotherbtn" target="_blank" class="td-btn-1  td-btn-1-or btn" href="javascript:;">我要修改预留手机号</a>
</div>
</div>
</div>
</div>
</div>
<div style="display: none;" id="closeWindowTh" class="dial-window xm-window layer-win">
<div class="title1 rel">温馨提示：
<i class="close-x cgt-close-x icon db abs"></i>
</div>
<div class="body cgt-box">
<div class="  mt10">
<div id="body_dv_top" class="top">
<p>
<span class="ok-icon"></span>
<span id="body_dv_head">js3投标成功</span>
</p>
</div>
<div id="body_dv_bottom" class="bottom">
<div id="btn_01" class="count" style="display:block;">
<p class="pb30">此页将在
<span class="num">3s</span>后关闭，请在原页面继续操作</p>
<a class="td-btn-1 cgt-close-x td-btn-1-or btn" href="javascript:;">立即关闭</a>
</div>
</div>
</div>
</div>
</div>
<div style="display: none;   width:450px!important;  margin-left: -225px!important; " class="dial-window xm-window layer-win ">
<div class="title1 rel">温馨提示：
<i class="close-x cgt-close-x icon db abs"></i>
</div>
<div class="body  ">
<div class="  mt10">
<div id="body_dv_top" class="top">
<p class="f18">
此证件号已注册！
</p>
</div>
</div>
</div>
</div>
<div style="display: none;   width:450px!important;   margin-left: -225px!important; " class="dial-window xm-window layer-win ">
<div class="title1 rel">温馨提示：
<i class="close-x cgt-close-x icon db abs"></i>
</div>
<div class="body  ">
<div class="  mt10">
<div id="body_dv_top" class="top">
<p class="f18" style="line-height:25px">
银行卡号：***************0980已被使用，
<br> 请更换后重试！
</p>
</div>
</div>
</div>
</div>
<div style="display: none;  width:450px!important; margin-left: -225px!important;" class="dial-window xm-window layer-win">
<div class="title1 rel">温馨提示：
<i class="close-x cgt-close-x icon db abs"></i>
</div>
<div class="body  ">
<div class="  mt10">
<div id="body_dv_bottom" class="bottom " style="padding-bottom:20px;">
<div id="btn_01" class="count" style="display:block;  ">
<p class="pb30 f18 g6" style="line-height:28px;">为保证转账顺利进行，
<br>请先前往迅辉财富(www.tdw.cn)升级存管。</p>
<a class="td-btn-1 td-btn-1-or btn" href="javascript:;">去授权</a>
</div>
</div>
</div>
</div>
</div>
<div id="zhixiang" style="display: none;  width:450px!important; margin-left: -225px!important; " class="dial-window xm-window layer-win">
<div class="title1 rel">温馨提示：
<i class="close-x cgt-close-x icon db abs"></i>
</div>
<div class="body">
<div class="mt10">
<div id="body_dv_bottom" class="bottom ">
<div id="btn_01" class="count" style="display:block;  ">
<p class="pb30 f18 g6" style="line-height:28px;">您需要授权【自动还款】服务，才能发起智享转让</p>
<a id="zhixiang-btn" target="_blank" class="td-btn-1 td-btn-1-or btn btn-s" href="javascript:;">去授权</a>
</div>
</div>
</div>
</div>
</div>
<div id="touzi" style="display: none;  width:450px!important; margin-left: -225px!important;" class="dial-window xm-window layer-win">
<div class="title1 rel">温馨提示：
<i class="close-x cgt-close-x icon db abs"></i>
</div>
<div class="body  ">
<div class="  mt10">
<div id="body_dv_bottom" class="bottom ">
<div id="btn_01" class="count" style="display:block;  ">
<p class="pb30 f18 g6">您需要授权【自动投标】服务，才能投资复投宝</p>
<a id="touzi-btn" class="td-btn-1 td-btn-1-or btn btn-s" href="javascript:;">去授权</a>
</div>
</div>
</div>
</div>
</div>
<div id="accountError" style="display: none ;" class="dial-window xm-window layer-win">
<div class="title1 rel">温馨提示：
<i class="close-x cgt-close-x icon db abs"></i>
</div>
<div class="body cgt-box g6">
<div class=" pl20 mt10">
<div id="body_dv_bottom" class="bottom">
<div id="btn_01" class="count tc " style="display:block; line-height:30px;">
<p class="  ff7301 pb30 mb10"> 注意：您的银行存管账户异常，请尽快联系团贷网客服（1010-1218）进行处理。</p>
<a id="accountError-btn" class="td-btn-1 cgt-close-x  td-btn-1-or btn" href="javascript:;">我知道了</a>
</div>
</div>
</div>
</div>
</div>
<div id="showToPlatformPermit" style="display: none;width: 450px;" class="dial-window xm-window forgetPhone">
<div class="title rel" style="display: block;">温馨提示：<i class="close-x cgt-close-x icon db abs"></i></div>
<div class="body">
<div>
<p style="text-align: center; line-height: 23px;font-size: 16px;">为保证转账顺利进行，<br>请先前往迅辉财富（www.tdw.cn）升级存管。</p>
</div>
</div>
<div class="bottom" style="text-align: center">
<div id="btn_03" class="btn-group">
<a id="qiyeBtn" href="javascript:;" class="btn cgt-close-x">我知道了</a>
</div>
<a style="color:red;text-decoration: underline;" href="javascript:;" onclick="javascript:window.open();" target="_blank">
遇到问题，联系客服
</a>
</div>
</div>
<script type="text/javascript">
    var isWePlanProject = false;         //标记是否在We计划详情页
    var IsOpenCGT = '1';                                       //是否开通存管通
</script>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/jquery.pagination.js"></script>
<script type="text/javascript" src="js/jquery.slimscroll.js"></script>
<script type="text/javascript" src="js/thirdlib.js"></script>
<script src="js/jquery.cookie.js" type="text/javascript"></script>
<script type="text/javascript" src="js/public.js"></script>
<script type="text/javascript" src="js/jnumber.js"></script>
<script type="text/javascript" src="js/project_dialog_cgt.js"></script>
<script type="text/javascript" src="js/select_redbox.js"></script>
<script type="text/javascript" src="js/cgt_common.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script src="js/userbank.js"></script>
<script src="js/common(1).js"></script>
<script src="js/account.js"></script>
<script>
        var left_newTitle = '团贷网提醒您：';
        var isEnterAutoInvestSetPage = getCookie( Id+ "isEnterAutoInvestSetPage");//是否进入自动投标设置
        var isClosedYellowTip2 = getCookie(Id + "isClosedYellowTip");//手动点击关闭黄标签
        var isDefaultShowed = getCookie(Id + "_account_default");//是否首页显示
        var tuandaiw = getCookie("tuandaiw");
        $(function () {
             //存管验证
             accountFn.cgtEventInit();

             //显示黄色标签提示信息
             accountFn.showYellowTips();
         });
    </script>
<script type="text/javascript" src="js/jquery-1.7.2.min(1).js"></script>
<script type="text/javascript" src="js/thirdlib(1).js"></script>
<script type="text/javascript" src="js/public.js"></script>
<script type="text/javascript" src="js/settdwcookie.js"></script>
<script type="text/javascript" src="js/userbank.js"></script>
<script type="text/javascript" src="js/project_dialog_cgt.js"></script>
<script type="text/javascript" src="js/common(1).js"></script>
<script type="text/javascript" src="js/account.js"></script>
<script type="text/javascript" src="js/jquery.selectlist.js"></script>
<script type="text/javascript" src="js/cgt_common.js"></script>
<script type="text/javascript">
        var isEnterAutoInvestSetPage = getCookie("4332a90d" + "isEnterAutoInvestSetPage"); //是否进入自动投标设置
        var isClosedYellowTip2 = getCookie("4332a90d" + "isClosedYellowTip"); //手动点击关闭黄标签
        var isDefaultShowed = getCookie("4332a90d" + "_account_default"); //是否首页显示
        var tuandaiw = getCookie("tuandaiw");
        $(function() {
            $(".a_code").mouseover(function() {
                $(".codexe").show();
            }).mouseout(function() {
                $(".codexe").hide();
            });
            $(".we_notice_icon").hover(function() {
                $(this).children("p").toggle();
            });

            try {
                getRandomValue();
            } catch (e) {}
            $('#menu_autoTender').hover(function() {
                    $('#YellowTips').fadeIn(150);
                },
                function() {
                    $('#YellowTips').stop().fadeOut();
                }
            );
            $('#menu_myWePlan').hover(function() {
                    $('#YellowTips2').fadeIn(150);
                },
                function() {
                    $('#YellowTips2').stop().fadeOut();
                }
            );
            $("#menu_recharge").click(function () {
                try {
                    getRandomValue();
                    if (!checkIsOpen("chongzhiother"))
                        return false;
                }
                catch (e) {
                }
            });
            $("#menu_withdraw").click(function () {
                try {
                    getRandomValue();
                    if (!checkIsOpen("tixian"))
                        return false;
                }
                catch (e) {
                }
            });

            $("#menu_borrowMiniEdit").click(function() {
                try {
                    if (!checkIsOpen("noshouquan"))
                        return false;
                } catch (e) {}
            });
            $("#menu_userservice").click(function() {
                try {
                    if (!checkIsOpen())
                        return false;
                } catch (e) {}
            });
            $("#menu_autoTender").click(function() {
                try {
                    if (!checkIsOpen("touzi"))
                        return false;
                } catch (e) {}
            });

            if (isEnterAutoInvestSetPage != null && isEnterAutoInvestSetPage != "") {
                isEnterAutoInvestSetPage = "1";
            }
            if (isClosedYellowTip2 != null && isClosedYellowTip2 != "") {
                isClosedYellowTip2 = "1";
            }
            if (isDefaultShowed != null && isDefaultShowed != "") {
                isDefaultShowed = "1";
            }

            if (isEnterAutoInvestSetPage != "1") {

                $('#menu_autoTender').find('em').addClass("emClass");
            }

            if (window.location.href.indexOf("member/account_default") < 0) {
                //不是主页,自动提示
                if (isClosedYellowTip2 != "1" && isEnterAutoInvestSetPage != "1") {
                    $('#YellowTips').fadeIn();
                }
            } else {
                //是主页,如果大黑不显示自动提示
                if (isClosedYellowTip2 != "1" && isEnterAutoInvestSetPage != "1" && isDefaultShowed != "1") {
                    $('#YellowTips').fadeIn();
                }
            }

            $('#menu_autoTender').find('.close').click(function() {
                $('#YellowTips').fadeOut();
                setCloseYellowTips();
            });
        });

        function setCloseYellowTips() {
            setCookie("4332a90d" + "isClosedYellowTip", "1");
        }
    </script>
<script type="text/javascript">
        var left_newTitle = '团贷网提醒您：';
        var left_IsValidateMobile = 'True';
        var left_IsValidateIdentity = 'True';
        var left_IsSetPayPwd = "True";
        var IsbindBankNo = 'True';
        var IsOpenCGT = '1';

        function left_CheckAllowDraw() {
            return true;
        }

        function left_CheckAllowBindBank() {
            if (left_IsValidateMobile != 'True' || left_IsValidateIdentity != 'True') {
                userbank.tips(left_IsValidateMobile, left_IsValidateIdentity);
                return false;
            }
            return true;
        }
    </script>
<script type="text/javascript" src="js/WdatePicker.js"></script>
<script type="text/javascript" src="js/jquery.pagination.js"></script>
<script type="text/javascript" src="js/contract.js"></script>
<script type="text/javascript">
        var date = 2019-04-25;

        var contractViewUrl = "https://contract.tuandai.com";
        //var contractDqUrl = https://contract.tdw.cn;
        //var portalWeb = https://www.tuandai.com;
        //var dqWeb = https://dq.tdw.cn;

        var pageindex = 1;
        var pagesize = 10;

        function GetData() {
            jQuery.ajax({
                async: false,
                type: "post",   //原状态是 post
                url: "/member/account_loanReturnPlan/getLoanReturnPlanDetail", //模拟数据
                //type: "post",
                //url: "/member/ajaxCross/ajax_autoLoan.ashx",
                dataType: "json",
                data: {
                    Cmd: "GetLoanReturnPlanDetail",
                    pageNum: pageindex,
                    date: date
                },
                success: function(jsonstr) {
                    $("#trhead").nextAll().remove();
                    var html = new Array();
                    var str = "";
                    $(".i-member-tips").hide();
                    $("#expectReturn").hide();
                    if (jsonstr.result == "1") {
                        $('#ReturnDate').html(date);
                        $('#ReturnNum').html(jsonstr.totalCount + "笔");
                        $('#ReturnAmount').html("<b>￥" + jsonstr.totalAmount + "</b>（" + jsonstr.amount + " + " + jsonstr.interestAmount + "+" + jsonstr.tuandaiRedPacket + "）");
                        var temp1 = pagesize * (pageindex - 1);
                        var hasftb = false;
                        for (var i = 0; i < jsonstr.list.length; i++) {
                            var url = "/pages/invest/detail?Id=" + jsonstr.list[i].id;
                            var contracturl = contractViewUrl + '/P2P/Web/contractType' + jsonstr.list[i].type + '.aspx?key=' + jsonstr.list[i].contracNo;

                            if (jsonstr.list[i].isFromTran == 1) {
                                contracturl = contractViewUrl + "/P2P/Web/contractZqzr.aspx?key=" + jsonstr.list[i].contracNo;
                            }else if (jsonstr.list[i].type == "100") {
                                hasftb = true;
                                url = "/pages/weplan/weftb_detail?id=" + jsonstr.list[i].id;
                                contracturl = contractViewUrl + "/P2P/Web/contractTypeFTB.aspx?key=" + jsonstr.list[i].contracNo;
                            } else if (jsonstr.list[i].type == "101") {
                                hasftb = true;
                                url = "/pages/weplan/weftb_detail?id=" + jsonstr.list[i].id;
                                contracturl = contractViewUrl + "/P2P/Web/contractTypeWeNewHand.aspx?key=" + jsonstr.list[i].contracNo;
                            } else if (jsonstr.list[i].type == "102") {
                                hasftb = true;
                                url = "/pages/weplan/weftb_detail?id=" + jsonstr.list[i].id;
                                contracturl = contractViewUrl + "/P2P/Web/contractTypeWeSYB.aspx?key=" + jsonstr.list[i].contracNo;
                            }
                            if (jsonstr.list[i].type == "18") {
                                url = "/pages/invest/simubao_detail?id=" + jsonstr.list[i].id;
                            }
                            var contractNo = jsonstr.list[i].contracNo;

                            if (jsonstr.list[i].type == "100") {
                                contractNo = "WeFTB_" + jsonstr.list[i].contracNo;
                            } else if (jsonstr.list[i].type == "101") {
                                contractNo = "WeNewHand_" + jsonstr.list[i].contracNo;
                            } else if (jsonstr.list[i].type == "102") {
                                contractNo = "WeSYB_" + jsonstr.list[i].contracNo;
                            }
                            var contractHtml = "";
                            if(jsonstr.list[i].type == "100"){
                                contractHtml ="<td class='txt_center'><a target='_blank' href='" + contracturl + "'>查看</a>/<a class='tip contract1' productName = '"+jsonstr.autoService+"' url='"+contractNo+"' href=\"javascript:void(0);\" >下载合同</a><span class='tip-text' >温馨提示：合同查看密码为你的手机号码。<span></td>";
                            }else{
                                contractHtml = "<td class='txt_center'><a target='_blank' href='" + contracturl + "'>查看</a>/<a class='tip' href=\"javascript:downloadPdf(1,'" + contractNo + "');\" >下载合同</a><span class='tip-text' >温馨提示：合同查看密码为你的手机号码。<span></td>";
                            }
                            str = "<tr>" +
                                "<td class='pl10 txt_center'><a target='_blank' href=\"" + url + "\">" + jsonstr.list[i].grade + "</a></td>" +
                                /*"<td class='txt_center'>" + GetType(jsonstr.list[i].type,jsonstr.list[i].weAutoService,jsonstr.autoService) + "</td>" +*/
                                "<td class='txt_center'>" + jsonstr.list[i].typeStr + "</td>" +
                                "<td class='txt_center'>" + jsonstr.list[i].cycDate + "</td>" +
                                "<td class='txt_center'><span class='font-orange2'>￥" + parseFloat(jsonstr.list[i].totalAmount).toFixed(2) + "</span>（" + parseFloat(jsonstr.list[i].amount).toFixed(2) + "+" + parseFloat(jsonstr.list[i].interestAmount).toFixed(2) + "+" + parseFloat(jsonstr.list[i].tuandaiRedPacket).toFixed(2) + "）</td>" +
                                "<td class='txt_center'>" + jsonstr.list[i].periods + "/" + jsonstr.list[i].totalRefundMonths + "</td>" +
                                contractHtml +
                                "</tr>"
                            html.push(str);
                        }
                        if (hasftb) {
                            $(".i-member-tips").show();
                            if(jsonstr.autoService) {
                                $("#expectReturn").show();
                            }
                        }
                        $(html.join("")).insertAfter('#trhead');
                        afterLoadData();
                        initLoanReturnPlanPagin(jsonstr.totalCount);
                    } else {
                        $('#ReturnDate').html("没有回款");
                        $('#ReturnNum').html("0笔");
                        $('#ReturnAmount').html("0");
                        $("<tr><td colspan=\"6\" align=\"center\">没有数据...</td></tr>").insertAfter('#trhead');
                    }
                },
                error: function(a, b, c) {
                    $("#trhead").nextAll().remove();
                    $("<tr><td colspan=\"6\" align=\"center\">加载有误...</td></tr>").insertAfter('#trhead');
                }
            });
            $(".account_tableNR").find("tr").css("background-color", "#f0f0f0");
            $(".account_tableNR").find("tr:odd").css("background-color", "#fff");
        }
        //所有列表
        function initLoanReturnPlanPagin(recordCount) {
            var num_entries = recordCount;
            $("#pager").pagination(num_entries, {
                callback: getList,
                items_per_page: 10,
                num_display_entries: 5,
                current_page: parseInt(pageindex - 1),
                num_edge_entries: 2,
                link_to: "#trhead",
                prev_text: "上一页",
                next_text: "下一页",
                ellipse_text: "...",
                prev_show_always: true,
                next_show_always: true,
                renderer: "defaultRenderer",
                show_if_single_page: false,
                load_first_page: true
            });
        }

        function getList(page_index, jq) {
            if (parseInt(pageindex - 1) == page_index) {
                return false;
            }
            pageindex = (page_index + 1);
            GetData();
            return false;
        }

        function GetQueryString(name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
            var r = window.location.search.substr(1).match(reg);
            if (r != null) return unescape(r[2]);
            return null;
        }

        /*function GetType(type,weAutoService,isAutoService) {
            var str = "";
            if (type == "1") {
                str = "商友贷";
            } else if (type == "3") {
                str = "零售贷";
            } else if (type == "6") {
                str = "资产标";
            } else if (type == "7") {
                str = "资产标";
            } else if (type == "9" || type == "40") {
                str = "车贷";
            } else if (type == "10") {
                str = "消费贷";
            } else if (type == "11" || type == "34" || type == "200") {
                str = "房贷";
            } else if (type == "13") {
                str = "新手投资";
            } else if (type == "15") {
                str = "分期宝";
            } else if (type == "17") {
                str = "股票配资";
            } else if (type == "18") {
                str = "私募宝";
            } else if (type == "20" || type == "19") {
                str = "供应链";
            } else if (type == "22") {
                str = "项目宝B";
            } else if (type == "23") {
                str = "项目宝A";
            } else if (type == "24") {
                str = "分期宝";
            } else if (type == "25") {
                str = "分期宝";
            } else if (type == "26") {
                str = "正合车贷";
            } else if (type == "27") {
                str = "话费分期";
            } else if (type == "28") {
                str = "快来贷";
            } else if (type == "29") {
                str = "沐金农";
            } else if (type == "31") {
                str = "拿下分期";
            } else if (type == "32") {
                str = "有信贷";
            } else if (type == "33") {
                str = "循环借";
            } else if (type == "35") {
                str = "小派钱包";
            } else if (type == "36") {
                str = "农饲贷";
            } else if (type == "39") {
                str = "车全业务";
            } else if (type == "41") {
                str = "二手车商";
            } else if (type == "42") {
                str = "正合普惠";
            } else if (type == "44") {
                str = "学车易";
            } else if (type == "45") {
                str = "供应链";
            } else if (type == "46" || type == "30" || type == "47" || type == "48" || type=="300") {
                str = "分期宝";
            } else if (type == "100") {
                str = isAutoService?"We+自动服务":"复投宝";
            } else if (type == "101") {
                str = weAutoService?"新手服务":"新手标";
            } else if (type == "102") {
                str = "速盈宝";
            } else if (type == "59") {
                str = "分期宝";
            }
            return str;
        }*/

        function afterLoadData() {
            $(".contract1").click(function(){
                var url = $(this).attr("url");
                var productName = $(this).attr("productName");
                contract1(url,productName);
            });
        }

        // 合同下载1
        function contract1(url,productName) {
            var orderId = url.split("_")[1];
            var xqUrl = "FtbExtend_" + orderId;
            var name = "We+自动服务协议";
            if(!productName){
                name = "复投宝服务协议";
            }
            html = "<p><a href='javascript:;' class='f16 g-orange download-pdf'> 点击下载《"+name+"》</a></p>" +
                ' <p class="mt25"> <a href="javascript:;" class="f16 g-orange download-pdfXq">点击下载《续期服务协议》</a></p>' +
                '<p class="mt25" >温馨提示：合同查看密码为您的手机号码</p>';
            publicUi.tdPopAlert({
                className: 'contract1',
                id: 'contract1',
                type: 'dialog',
                title: '团贷网提醒您',
                contents: html,
                TextAlign: 'center',
                width: 480,
                height: 300,
                okBtn: '确定'
            });
            $('.download-pdf').on('click',function(){
                $('.td-mask').remove();
                $('#contract1').remove();
                downloadPdf(1,url);
            });
            $('.download-pdfXq').on('click',function(){
                $('.td-mask').remove();
                $('#contract1').remove();
                downloadPdf(1,xqUrl);
            });

        }

        $(function() {
            date = GetQueryString("date");
            if (date != null && date != '') {
                $('ReturnDate').html(date + ' 00:15');
                GetData();
            }

        });
    </script>
<script type="text/javascript">
        $("#loanReturnPlan").addClass("currentMenu");
    </script>
<script type="text/javascript">
        (function() {
            $('.member-list').hover(function() {
                $(this).find('ul').addClass('ul-type').end().find('.mission').show();
                $(this).find('.arrow').removeClass('down-arrow').addClass('up-arrow');
            }, function() {
                $(this).find('ul').removeClass('ul-type').end().find('.mission').hide();
                $(this).find('.arrow').removeClass('up-arrow').addClass('down-arrow');
            });


        })();

        function stringToHex(s) {
            var r = '';
            var hexes = new Array('0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f');
            for (var i = 0; i < (s.length); i++) {
                r += hexes[s.charCodeAt(i) >> 4] + hexes[s.charCodeAt(i) & 0xf]
            }
            return r
        }

        function HexTostring(s) {
            var r = '';
            for (var i = 0; i < s.length; i += 2) {
                var sxx = parseInt(s.substring(i, i + 2), 16);
                r += String.fromCharCode(sxx)
            }
            return r
        }

        var nwbi_userName = "";
        var nwbi_sysNo = "TDW";
        var IsLogin = isCookieLogin();
        if (IsLogin) {
            var nickname = jaaulde.utils.cookies.get("TDWUserName");
            nwbi_userName = nickname;
        }
        (function() {
            var ta = document.createElement('script');
            ta.type = 'text/javascript';
            ta.async = true;
            ta.src = (((":") == document.location.protocol) ? "://" : "http://") + 'bilog.niiwoo.com/js/webaccess.js';
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(ta, s);
        })();

        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "//hm.baidu.com/hm.js?6dff67da4e4ef03cccffced8222419de";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>
<script type="text/javascript">
    /*<![CDATA[*/
    (function () {   //红包下拉
        try {
            getRandomValue();
        } catch (e) { }
        $('.red-package-list').css({ 'margin-bottom': '-5px' });
        $('.red-package-list').find('dt').click(function (event) {
            $(this).parent().find('dd').slideDown(300);
            event.stopPropagation();
        });
        $('.red-package-list').find('li').click(function () {
            var thisVal = $(this).attr('data');
            $(this).parents('.red-package-list').find('.data').text(thisVal);
            $(this).find('dd').slideUp(300);
        });
        $(window).click(function (event) {
            $('.red-package-list').find('dd').slideUp(300);
        });
    })();
    (function () {
        $(".a_code").mouseover(function () {
            $(".codexe").show();
        }).mouseout(function () {
            $(".codexe").hide();
        });
        $('.member-list').hover(function () {
                $(this).find('ul').addClass('ul-type').end().find('.mission').show();
                $(this).find('.arrow').removeClass('down-arrow').addClass('up-arrow');
            }, function () {
                $(this).find('ul').removeClass('ul-type').end().find('.mission').hide();
                $(this).find('.arrow').removeClass('up-arrow').addClass('down-arrow');
            }
        )
    })();
    function stringToHex(s) {
        var r = '';
        var hexes = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'];
        for (var i = 0; i < (s.length) ; i++) {
            r += hexes[s.charCodeAt(i) >> 4] + hexes[s.charCodeAt(i) & 0xf]
        }
        return r
    }

    function HexTostring(s) {
        var r = '';
        for (var i = 0; i < s.length; i += 2) {
            var sxx = parseInt(s.substring(i, i + 2), 16);
            r += String.fromCharCode(sxx)
        }
        return r
    }

    var nwbi_userName = "";
    var nwbi_sysNo = "TDW";
    var IsLogin = isCookieLogin();
    if (IsLogin) {
        var nickname = jaaulde.utils.cookies.get("TDWUserName");
        nwbi_userName = nickname;
    }
    (function () {
        var ta = document.createElement('script');
        ta.type = 'text/javascript';
        ta.async = true;
        ta.src = (((":") == document.location.protocol) ? "://" : "http://") + 'bilog.niiwoo.com/js/webaccess.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(ta, s);
    })();

    var _hmt = _hmt || [];
    (function () {
        var hm = document.createElement("script");
        hm.src = "//hm.baidu.com/hm.js?6dff67da4e4ef03cccffced8222419de";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
    /*]]>*/
</script>
<script type="text/javascript" src="js/settdwcookie(1).js"></script>

<div id="waf_nc_block" style="display: none;"><div class="waf-nc-mask"></div><div id="WAF_NC_WRAPPER" class="waf-nc-wrapper"><img class="waf-nc-icon" src="images/TB1_3FrKVXXXXbdXXXXXXXXXXXX-129-128.png" alt="" height="20" width="20"><p class="waf-nc-title">安全验证</p><div class="waf-nc-splitter"></div><p class="waf-nc-description">请完成以下验证后继续操作：</p><div id="nocaptcha"></div></div></div></body></html>
