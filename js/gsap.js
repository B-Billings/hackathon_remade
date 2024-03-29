let tl = gsap.timeline({defaults:{ease: "SlowMo.easeOut"}});
        
    
tl.to(".desc1 p",{y:'-100%',duration:0.7, stagger:0.6});
tl.to(".dec1",{opacity:1,duration:1.5,delay:0.6});
