(function(o){if(window.attachEvent){window.attachEvent("onload",o);}else{window.addEventListener("load",o,false);};})(function(){
	var d=document,
	m=d.createElement("div"),
	r=String(new Date()).split(":")[1],
	l=function(u,y){
		var s=d.createElement(y);
		if(y=="script"){s.src=u;s.type="text/javascript";s.setAttribute("charset","gb2312");}
		else{s.href=u;s.rel="stylesheet";s.type="text/css";}
		d.getElementsByTagName("head")[0].appendChild(s);
	};
        var img_html='<div id="xu"></div>';
        var xu=document.createElement("div");
        xu.setAttribute('style','background: url(http://game.gtimg.cn/images/dnf/cp/a20170505img/left.png) no-repeat;width: 170px;height: 307px;position: fixed;top: 200px;left: 10px;z-index: 1;');
        xu.innerHTML=img_html;
        document.body.appendChild(xu);

	//�����޸�ost.cssΪ���Բ�Ʒ��css��ַ
	l("//ossweb-img.qq.com/images/dnf/js/title/dnf.css?v="+r,"link");
	m.className="ost ost_bg";
	m.style.cssText="position:absolute;top:-500px;";
	m.innerHTML=['<ul class="ost_b">',
	//�����޸ĸ������ӣ���ָ����ťͳ�ƴ��루����޸�gg.js��
		'<li class="ost_tg ost_bg"><a href="//game.qq.com/" target="_blank" class="ost_blnk" onclick="pgvSendClick({hottag:\'act.title.logo\'});">��Ѷ��Ϸ</a></li>',
		'<li class="ost_gg ost_bg"><a id="ost_gg" target="_blank" class="ost_blnk" onclick="pgvSendClick({hottag:\'act.title.gg\'});">���ʻ</a></li>',
		'<li class="ost_i">',
			'<p class="ost_t ost_bg"><a href="//dnf.qq.com/" target="_blank" class="ost_lnk" onclick="pgvSendClick({hottag:\'act.title.back\'});">���ع�����ҳ</a></p>',
			'<p class="ost_gl">',
				'<a href="//dnf.qq.com/web2011/down.shtml" target="_blank" class="ost_lnk ost_ldc" onclick="pgvSendClick({hottag:\'act.title.down\'});">��Ϸ����</a>',
				'<a href="//dnf.qq.com/comm-htdocs/pay/?t=dnf" target="_blank" class="ost_lnk ost_ldc" onclick="pgvSendClick({hottag:\'act.title.pay\'});">��ֵ��ȯ</a>',
				'<a href="//pay.qq.com/dnf/index.shtml?aid=ied.dnf" target="_blank" class="ost_lnk ost_ldc" onclick="pgvSendClick({hottag:\'act.title.vip\'});">��ͨ����</a>',
			'</p>',
		'</li>',
	'</ul>'].join("");
	d.body.appendChild(m);
	d.body.style.paddingTop="42px";
l("//ossweb-img.qq.com/images/dnf/js/title/gg.js?v="+r,"script");
});/*  |xGv00|3f558571775f8a093437590e96462a86 */