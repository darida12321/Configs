// ==UserScript==
// @name         Youtube Advanced Speed Controller
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  Allows you to play youtube videos from 0 to 16 times normal speed
// @author       Ehren Julien-Neitzert
// @match        https://www.youtube.com/*
// @grant        none
// ==/UserScript==
 
(function() {
    'use strict';
 
    //sets the rate of a youtube video
    function setRate(n) {
        document.getElementsByClassName("html5-video-container")[0]
        .getElementsByClassName("video-stream html5-main-video")[0]
        .playbackRate = n;
    }
 
    //gets the current rate of a youtube video
    function getRate() {
        return document.getElementsByClassName("html5-video-container")[0]
            .getElementsByClassName("video-stream html5-main-video")[0]
            .playbackRate;
    }
 
    //determines if theres a video bar to inject onto
    function hasVideo() {
        return document.getElementsByClassName("ytp-right-controls").length != 0;
    }
 
 
    //injects the speed controller
    function injectController() {
 
        //create speed controller
        var i = document.createElement('label');
        i.style = "width: 50px; height: 70%; position: relative; bottom: 37%; background-Color: transparent; color: white; border-Color: transparent;";
        i.style.marginRight = "10px";
        i.id = 'spdctrl';
        i.title = 'Playback Rate';
        i.style.fontSize = '150%';
        i.type = 'number';
        i.innerText = getRate()+'x';
 
        //make the standard speed controls change the new speed controller
        document.getElementsByTagName('video')[0].onratechange = function() {
            if (document.activeElement != i) { //only change i's value if its not being focused (ie, just clicked on)
                i.innerText = getRate()+'x';
            }
        };
 
        //put speed controller in youtube bar
        toolbar = document.getElementsByClassName("ytp-right-controls")[0];
        toolbar.prepend(i);
 
    }
 
    //every fraction of a second check if the controller's injected and if theres a video
    //I have to do this because I don't think theres an easy way to detect the crazy history rewrite stuff that they do to give the illusion of you loading a page when you're actually not
    window.setInterval(function(){
        var controller = document.getElementById('spdctrl');
        if (controller === null && hasVideo()) {
            injectController();
        }
    }, 300);
    setRate(1.5);
})();


