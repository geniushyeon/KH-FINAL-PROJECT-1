var page = 2;
var dataloading = false;
var genre = $("#select-search option:selected").val();


		
		$(window).scroll(function() {
			var scrollTop = $(this).scrollTop();
			var boxheight = $(this).height();
			var listheight = 0;	
			
			$(this).find('.list-box').each(function(index, box) {
				listheight += $(box).height();
			})
				
			if (!dataloading) {
				
				if($(window).scrollTop() == $(document).height() - $(window).height()){
					
					$.ajax({
						type:"GET",
						url:"/movie/ratelist.do",
						data:{"cp":page , "gr":genre},
						dataType:"json",
						beforeSend: function() {
							dataloading = true;
						},
						complete: function() {
							dataloading = false;
						},
						success:function(result){
							console.log("새 데이터 도착............")
							page++;
	
							$.each(result , function(index , list){
								
		

									var row =	"<div id='mid_wrap'>";
										row+=	"<ul class='movie'>";
										row+=	"	<li class='eachMovie'>";
										row+=	"		<div class='movie_poster'>";
										row+=	"			<div class='movie_wrap'>";
										row+=	"				<img class='movie_image' src='"+list.poster_uri+"'>";
										row+=	"			</div>";
										row+=	"		</div>";
										row+=	"		<div class='movie_name'>";
										row+=	"			<h3 class='movie_title'>";
										row+=	"				"+list.title+" ";
										row+=	"				<div class='modal_button'>";
										row+=	"					<button class='fas fa-ellipsis-v' id='modal_btn' data-toggle='modal' data-target='#exampleModal${vs.index}'></button>";
										row+=	"				</div>";
										row+=	"			</h3>";  
										row+=	"			<div class='movie_info'> "+list.prodyear+"-"+list.nation+" </div>";
										row+=	"			<div id='star-rating-zone'>";
										row+=	"				<div class='starRev'>";
										row+=	"					<span class='star starR1'>0.5</span> <span class='star starR2'>1</span>";
										row+=	"					<span class='star starR1'>1.5</span> <span class='star starR2'>2</span>";
										row+=	"					<span class='star starR1'>2.5</span> <span class='star starR2'>3</span>";
										row+=	"					<span class='star starR1'>3.5</span> <span class='star starR2'>4</span>";
										row+=	"					<span class='star starR1'>4.5</span> <span class='star starR2'>5</span>";
										row+=	"				</div>";
										row+=	"			</div>";
										row+=	"		</div>";
										row+=	"	</li>";
										row+=	"</ul>";
										row+=	"</div>";
										row+=	"	 <div class='modal fade' id='exampleModal${vs.index}' tabindex='-1' aria-labelledby='exampleModalLabel' aria-hidden='true' >";
										row+=	"<div class='modal-dialog'>";
										row+=	"	<div class='modal-content'>";
										row+=	"		<div class='modal-header'>";
										row+=	"			<h5 class='modal-title' id='exampleModalLabel'></h5>";
										row+=	"			<button type='button' class='close' data-dismiss='modal' aria-label='Close'>";
										row+=	"				<span aria-hidden='true'>&times;</span>";
										row+=	"			</button>";
										row+=	"		</div>";
										row+=	"		<div class='modal-body'>";
								
										row+=	"			<div class='movie_content'>";
										row+=	"				<div class='movie_poster'>";
								
										row+=	"					<div class='movie_wrap'>";
								
										row+=	"						<img class='movie_image' src='"+list.poster_uri+"'>";
								
										row+=	"					</div>";
										row+=	"				</div>";
										row+=	"				<div class=' css-1sondvb-ContentInfo e1pa47va1 '>";
										row+=	"					<div class='movie_name'>";
								
										row+=	"						<h3 class='movie_title'>";
										row+=	"							"+list.title+" ";
								
										row+=	"							<div class='modal_button'></div>";
										row+=	"						</h3>";
										row+=	"						<div class='movie_info'>"+list.prodyear+"-"+list.nation+"</div>";
										row+=	"					</div>";
										row+=	"				</div>";
										row+=	"			</div>";
										row+=	"			<div class='css-1k6r5nr-RowActionButtons e1pa47va5'>";
										row+=	"				<div aria-label='wished' role='button' class='css-1s4ktoa-RowActionButton-WishButton e1pa47va7'>";
										row+=	"					<img src='/img/movie/bookmark.svg' alt='wished'><span>보고싶어요</span>";
										row+=	"				</div>";
										row+=	"				<div aria-label='watching' role='button' class='css-9gb35z-RowActionButton-WatchingButton e1pa47va8'>";
										row+=	"					<img src='/img/movie/cloud.svg' alt='wished'><span>코멘트 작성하기</span>";
										row+=	"				</div>";
										row+=	"			</div>";
										row+=	"			<div class='modal-footer'>";
										row+=	"				<div aria-label='cancel' role='button' class='css-4w0dnp-ColumnActionButton-CancelButton e1pa47va11' data-dismiss='modal'>취소";
										row+=	" 				</div>";
										row+=	"			</div>";
										row+=	"		</div>";
										row+=	"	</div>";							
										row+=	"	</div>";
										row+=	"	</div>";





									$("#allcontents").append(row);
								});
							}
						});
					}
				}
			});

















/*var page = 2;
var dataloading = false;
var dosi = $("#selectState option:selected").val();

$(window).scroll(function() {
    if ($(window).scrollTop() == $(document).height() - $(window).height()) {
      console.log(++page);
      $("body").append('<div class="movielist"><h1>Page ' + page + '</h1></div>');
      
    }
});

		
		$('.camping-list').scroll(function() {
			var scrollTop = $(this).scrollTop();
			var boxheight = $(this).height();
			var listheight = 0;	
			
			$(this).find('.list-box').each(function(index, box) {
				listheight += $(box).height();
			})
				
			if (!dataloading) {
				
				if((boxheight+scrollTop+100) > listheight){
					
					$.ajax({
						type:"GET",
						url:"maplist.camp",
						data:{cp:page , city:dosi , status:stat, keyword:keyword, sort:sort},
						dataType:"json",
						beforeSend: function() {
							dataloading = true;
						},
						complete: function() {
							dataloading = false;
						},
						success:function(result){
							console.log("새 데이터 도착............")
							page++;
	
							$.each(result , function(index , list){
								
								var row = "<div class='col-sm-12 col-xs-4 list-box'>";
									row+= "<div class='left-photo'>";
									row+= "<img src='resources/images/update.png' class='new'>";
									if(list.photo == null){
										row+= "<img class='tm' src='resources/images/campsite/noimg.jpg'>";
									}else{
										row+= "<img class='tm' src='resources/images/campsite/"+list.photo+"'>";
									}
									row+= "</div>";
									row+= "<div class='content'>";
									row+= "<div class='subject'>";
									row+= "<a href='#' class='campsite-name' data-Lat='"+list.latitude+"' data-lng='"+list.longitude+"'>";
									row+= sort;
									row+= list.name;
									row+="</a>";
									row+="</div>";
									row+="<div class='cont'>";
									row+="<p class='location'>";
									row+="<a href='map.camp?city="+list.sido+"'><span class='address2'>"+list.sido+"> </span></a><span>"+list.gugun+"</span>";
									row+="</p>";
									row+="<ul>";
									row+="<li class='address'>"+list.address+"</li>";
									row+="<li class='tel'>"+list.tel+"</li>";
									row+="</ul>";
									row+="</div>";
									row+="</div>";
									
								$(".camping-list").append(row);
							});
						}
					});
				}
			}
			
		});
		
		*/