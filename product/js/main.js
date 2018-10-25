$(function(){
    $.ajax({
        url:'http://localhost:3000/index/getIndexProduct',
        type:'get',
        dataType:'json',
        success: function(res) {
            console.log(res.slice(0,4));
        var html='';
        for(var p of res.slice(0,4)){
        var {pic,title,details,href}=p;
        html+=`<li>
        <a href="${href}">
            <img src="${pic}" alt=""/>
            <div class="zhanshi_center">
                <p class="zhanshi_p1">${title}</p>
                <p class="zhanshi_p2">${details}</p>
            </div>
        </a>
    </li>`;
    }
    var $sectionZhanshi=$(".w_section_zhanshi>ul");
    //console.log(html);
    $sectionZhanshi.html(html);
    }
    })
    
})