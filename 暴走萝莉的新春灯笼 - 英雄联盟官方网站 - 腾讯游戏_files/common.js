var move = function(vid,e,cnt,sty){
        var ab={
                obj:g(vid),
                mlen:cnt
            },
            nowtop=e*ab.mlen,
            af={
                mv:function(t, b, c, d){
                    return (t==d) ? b+c : c * (-Math.pow(2, -10 * t/d) + 1) + b;
                },
                run:function(t, b, c, d){
                    t++;
                    (sty=="top")?(ab.obj.style.top = -Math.ceil(af.mv(t, b, c, d)) + "px"):(ab.obj.style.left = -Math.ceil(af.mv(t, b, c, d)) + "px");
                    if (t < d) {
                        setTimeout(function() {
                                af.run(t, b, c, d)
                            },
                            5);
                    }
                },
                go:function(){
                    var b,c;
                    (sty=="top")?(b = Math.abs(parseInt(ab.obj.style.top))):(b = Math.abs(parseInt(ab.obj.style.left)));
                    if (!b) {
                        b = 0
                    };
                    c = nowtop - b;
                    af.run(0, b, c, 40);
                }
            },
            s=af.go();
    },
    swithImg = function(id){
        var sw = g(id).getElementsByTagName("span"),ord = 0,now = 0,len = sw.length;
        var mv = function(){
            sw[ord].className = "";
            if(ord+1<len){
                ord++;
                move(id+"Cont",ord,340,"left");
                sw[ord].className="on";
            }else{
                ord=0;
                sw[ord].className="on";
                move(id+"Cont",ord,340,"left");
            }
        }
        var sollimg = setInterval(mv,1000);
        for (var i = 0; i < len; i++) {
            sw[i].count = i;
            sw[i].onmouseover = function(){
                clearInterval(sollimg);
                sw[ord].className = " ";
                sw[this.count].className="on";
                move(id+"Cont",this.count,340,"left");
                ord = this.count;
            }
            sw[i].onmouseout = function(){
                sollimg = setInterval(mv,1000);
            }
        };
    };

swithImg("J_hbimg1");
swithImg("J_hbimg2");
setTimeout(function(){
    var _moving=1;
    var str = g('time_list').getElementsByTagName('li');
    var len = parseInt(str.length/6);
    var count = parseInt(str.length%6);
    if(count>0){len++}
    var soll = setInterval(function(){
      if($("#sub_time").size()>0){
        if(_moving<len){
           move("sub_time",_moving,195,"top");
            _moving++;
        }else{
            _moving=0;
            move("sub_time",_moving,195,"top");
        }
      }
    },3000);
},1000);




//function showGift(){
//	showDialog.show({
//		id:'dia-ten',
//		bgcolor:'#000'
//	});
//	showAni();
//}
function showAni(){
	var openlist = $("#openList li"),otherlist = $(".other-light");
	var showTimer = null,h=0;
	showTimer=setInterval(showGiftAni, 500);
	function showGiftAni(){
		openlist.eq(h).animate({"opacity":"1"});
		openlist.eq(h).find('img').animate({"opacity":"1"});
		openlist.eq(h).find('.ts-cover').animate({"opacity":"1"});
		h++;
		if(h>=10){
			setTimeout(function(){
				otherlist.animate({"left":"682px"},300);
				otherlist.addClass('other-ani');
				clearInterval(showTimer);
			},500)
		}
	}
}

function showAniTen(){
    var openlistTen = $("#openTenList li");
    var showTimerTen = null,h=0;
    showTimerTen=setInterval(showGiftAniTen, 500);
    function showGiftAniTen(){
        openlistTen.eq(h).animate({"opacity":"1"});
        openlistTen.eq(h).find('img').animate({"opacity":"1"});
        openlistTen.eq(h).find('.ts-cover').animate({"opacity":"1"});
        h++;
        if(h>=openlistTen.length){
            setTimeout(function(){
                clearInterval(showTimerTen);
            },500)
        }
    }
}

//showAni()
//function showBuyTips(){
//	showDialog.show({
//		id:'buyTipsDia',
//		bgcolor:'#333'
//	});
//}
//function rulesAni(){
//	$('html,body').animate({
//        scrollTop: 4200
//    })
//}
//function parallax(id,child){
//	var item=$("."+id),arrList=item.find(child);
//	document.onmousemove=function(evt){
//		evt=evt || window.event;
//		showP(evt.clientX,evt.clientY);
//	};
//	function showP(x,y){
//		var x=(x-500)/500,y=(y-250)/250;
//		arrList.each(function(index){
//			var exc=arrList.eq(index).attr("exc"),l=x*20*exc,t=y*15*exc;
//			arrList.eq(index).css({"left":l+"px","top":t+"px"});
//		});
//	}
//}
//parallax("ani-1","span")
//$(document).ready(function(){
//	$.getScript("http://pingjs.qq.com/ping_tcss_ied.js",function(){if(typeof(pgvMain) == 'function')pgvMain();});
//});
/*  |xGv00|e0581911f0378986c7f47a5d3cfc57a9 */