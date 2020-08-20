var markers = []; 		  // 마커를 담을 배열

var ps;		// 장소 검색 객체	
var map;	// 지도 객체
var placeOverlay;	// 커스텀 오버레이 객체
var contentNode;	// 커스텀 오버레이 내 장소 정보

var currKeywd;		// 현재 선택된 키워드를 가지고 있을 변수
var isItemClick = false;
var searchList = false;
var excRetry = false;
var region;
var town;
var hospitalNm;
var hospitalCd;

var useMapBounds;
$(function(){
	setTimeout(mapSideTop, 500);
	mapSideHeight();
	listTgl();
	mapBtnTgl();
	
	region = getParameterByName("region");
	town = getParameterByName("town");
	hospitalNm = checkHospitalNm(getParameterByName("hospitalNm"));
	hospitalCd = getParameterByName("hospitalCd");
	
	if(region == "" || town == "" || hospitalNm == "" ){
		searchList = true;
	} else {
		$(".side_wrap").hide()
	}
	
	var mapContainer = document.getElementById('map'); // 지도를 표시할 div 
	var mapOption = {
	        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };  
	
	// 지도 생성
	map = new kakao.maps.Map(mapContainer, mapOption);

	// 장소 검색 객체 생성
	ps = new kakao.maps.services.Places(map); 
	
	// 커스텀 오버레이 생성 및 설정
	placeOverlay = new kakao.maps.CustomOverlay({zIndex:1});
	contentNode = document.createElement('div');
	contentNode.className = 'placeinfo_wrap';
	placeOverlay.setContent(contentNode);
	
	if(searchList){
		useMapBounds = true;
		kakao.maps.event.addListener(map, 'idle', keywordSearchUseCurrKeywd);
		useGeolocation();
	}else{
		useMapBounds = false;
		searchPlaces();
	}
});

function checkHospitalNm(hospitalNm){
	hospitalNm = hospitalNm .split('*')[0].trim();

	hospitalListObject = {
			"(Drive-thru)" : "",
			"의료법인 백송의료재단 굿모닝병원" : "굿모닝병원",       
			"의료법인 박애의료재단 박애병원" : "박애병원",
			"이도의료재단 남해병원" : "남해병원",
			"고려대학교의과대학부속구로병원" : "고려대학병원",
			"고려대학교의료원안암병원" : "안암병원",
			"학교법인가톨릭학원가톨릭대학교서울성모병원" : "서울성모병원",
			"가톨릭대학교 서울성모병원" : "서울성모병원",
			"동남권원자력의원" : "동남권원자력의학원",
			"석경의료재단 센트럴병원" : "센트럴병원",
			"연세대학교 원주세브란스기독병원" : "원주세브란스기독병원",
			"의료법인승연의료재단 제일병원" : "제일병원",
			"한마음의료재단하나병원" : "하나병원",
			"이화여자대학교 의과대학 부속 이대서울병원" : "이대서울병원",
			"대송의료재단 무안병원"	: "무안병원",
			"한림대학교춘천성심병원" : "춘천성심병원",
			"학교법인동은학원 순천향대학교부속천안병원" : "순천향대학교",
			"이화여자대학교의과대학부속목동병원" : "이대목동병원",
			"재단법인아산사회복지재단서울아산병원" : "서울아산병원",
			"의료법인 성애병원" : "성애병원",
			"의)정안의료재단 중앙병원" : "중앙병원",
			"순천의료재단 정병원" : "정병원",
			"영문의료재단 다보스병원" : "다보스병원",
			"아가페의료재단 시티병원" : "시티병원",
			"의료법인 양진의료재단 평택성모병원" : "평택성모병원",
			"의료법인 인화재단한국병원" : "한국병원",
			"학교법인동은학원 순천향대학교부속천안병원" : "순천향대학교 부속천안병원",
			"의료법인 영서의료재단 천안충무병원" : "천안충무병원",
			"대송의료재단 무안병원" : "무안병원",
			"경기도 북부청사 주차장" : "경기도청 북부청사 주차장",
			"화성시보건소(동탄2수질복원센터)" : "동탄2수질복원센터 승차진료소",
			"관악구보건소 신사동 코로나19 건강삼담소" : "관악구보건소",
			"의료법인 갑을녹산재단 갑을녹산병원" : "갑을녹산병원",
			"KTX역 선별진료소" : "울산역",
			"원광대학교의과대학 산본병원" : "산본병원",
			"남양주보건소 동부보건센터" : "동부보건센터",
			"의료법인대아의료재단한도병원" : "한도병원",
			"경기의료원의정부병원(실)" : "경기의료원의정부병원",
			"한림대학교동탄성심병원" : "동탄성심병원",
			"의료법인 동해동인병원" : "동해동인병원",
			"건명의료재단 진청성모병원" : "진천성모병원",
			"순천향대학교구미병원" : "구미병원",
			"의료법인승연의료재단 삼천포서울병원" : "삼천포서울병원",
			"태황의료재단한성병원" : "한성병원",
			"효산의료재단법인 지샘병원" : "G샘병원"
	}
	
	if(hospitalListObject[hospitalNm] != undefined || hospitalListObject[hospitalNm] != null) {
		hospitalNm = hospitalListObject[hospitalNm];
	}
	return hospitalNm;
}

function useGeolocation() {
	//HTML5의 geolocation 사용 가능여부
	if (navigator.geolocation) {
	    navigator.geolocation.getCurrentPosition(function(position) {
	        var lat = position.coords.latitude; // 위도
	        var lon = position.coords.longitude; // 경도
	        var locPosition = new kakao.maps.LatLng(lat, lon); // 좌표 생성
	      
	        // 지도 중짐좌표 및 지도 레벨 설정
	        map.setLevel(3);
	        map.setCenter(locPosition);
	            
	      });
	    
	} else {
		//geolocation 사용 불가능
	    alert("사용자의 위치정보를 가져올 수 없습니다.");
	}
}

// 키워드 검색을 요청하는 함수
function searchPlaces() {
	currKeywd = region + " " + town + " " + hospitalNm;
	keywordSearchUseCurrKeywd();
	$('.side_wrap').addClass('open');
}

//키워드 검색을 요청하는 함수
function keywordSearchUseCurrKeywd(){
	
	if (!currKeywd || isItemClick) {
        return;
    }
	
    // 키워드로 장소검색
	
	var searchKeywd = currKeywd;
	
	if(hospitalCd != "01"){
		excRetry = true;
		searchKeywd = region + " " + town + " 선별진료소 " + hospitalNm;
	}
		
	ps.keywordSearch(searchKeywd, placesSearchCB, {useMapBounds:useMapBounds}); 
}

// 장소검색 콜백함수
function placesSearchCB(data, status, pagination) {
	// 목록 초기화
	initPlacesList();
	if (status === kakao.maps.services.Status.OK) {
    	// 결과 목록, 마커, 커스텀오버레이 컨텐츠 설정
        displayPlaces(data);
        // 페이징
    	displayPagination(pagination);
    	
    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
    	if(!searchList && excRetry){
    		ps.keywordSearch(currKeywd, placesSearchCB, {useMapBounds:useMapBounds});
    		excRetry = false;
    	} else {
    		if(map.getLevel() < 15){ map.setLevel(map.getLevel() + 1); }
    	}
        return;
    } else if (status === kakao.maps.services.Status.ERROR) {
        alert('검색 결과 중 오류가 발생했습니다.');
        return;

    }
}

//placesList 초기화
function initPlacesList() {
	var listEl = document.getElementById('placesList');
	var paginationEl = document.getElementById('pagination');
	// 커스텀 오버레이 제거
	placeOverlay.setMap(null);

	// 마커 제거
	removeMarker();
	
	// 검색결과 목록의 자식 Element를 제거
    while (listEl.hasChildNodes()) {
    	listEl.removeChild (listEl.lastChild);
    }
	 
	// 기존에 추가된 페이지번호 삭제
    while (paginationEl.hasChildNodes()) {
        paginationEl.removeChild (paginationEl.lastChild);
    }
}

//결과 목록, 마커, 커스텀오버레이 컨텐츠 설정 함수
function displayPlaces(places) {
    var listEl = document.getElementById('placesList');
    var menuEl = document.getElementById('menu_wrap');
    var fragment = document.createDocumentFragment(); 
    var listStr = '';
    
    for ( var i=0; i<places.length; i++ ) {
        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x);
        var marker = addMarker(placePosition, i);	// 마커 설정 
        var itemEl = getListItem(i, places[i]); // 검색 결과 element 생성
        
        // 마커와 검색결과 항목에 click시 해당 장소에 커스텀 오버레이 표시
        (function(marker, places, placePosition) {
            kakao.maps.event.addListener(marker, 'click', function() {
            	
            	displayPlaceInfo(places);
            });
            
            itemEl.onclick =  function (itemEl) {
            	isItemClick = true;
            	map.setLevel(3);
            	map.setCenter(placePosition);
            	//item 클릭 시 클릭한 아티템을 1번으로 설정하고 다른 마커 삭제
//            	initPlacesList();
//            	addMarker(placePosition, 0);
            	
            	displayPlaceInfo(places);	// 커스텀 오버레이 표시
            	listViewResponse();
            	isItemClick = false;
            };
        })(marker, places[i], placePosition);

        fragment.appendChild(itemEl);
        
        if(!searchList){
        	map.setLevel(3);
        	map.setCenter(placePosition);
        	displayPlaceInfo(places[i]);
        	break;
        }
    }
    
    // 검색결과 항목들을 검색결과 목록 Elemnet에 추가
    listEl.appendChild(fragment);
    menuEl.scrollTop = 0;
}

// 검색결과 항목을 Element로 반환하는 함수
function getListItem(index, places) {

    var el = document.createElement('li');
    var itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
                '<div class="info">' +
                '   <h5>' + places.place_name + '</h5>';

    if (places.road_address_name) {
        itemStr += '    <span>' + places.road_address_name + '</span>' +
                    '   <span class="jibun gray">' +  places.address_name  + '</span>';
    } else {
        itemStr += '    <span>' +  places.address_name  + '</span>'; 
    }
                 
      itemStr += '  <span class="tel">' + places.phone  + '</span>' +
                '</div>';           

    el.innerHTML = itemStr;
    el.className = 'item';

    return el;
}

// 마커를 생성하고 지도 위에 마커를 표시하는 함수
function addMarker(position, idx, title) {
    var imageSrc = '/static/image/map/marker_number_blue.png'; // 마커 이미지 url, 스프라이트 이미지를 씁니다
    var imageSize = new kakao.maps.Size(36, 37);  // 마커 이미지의 크기
    var imgOptions =  {
            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
        };
	var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions);
    var marker = new kakao.maps.Marker({
            position: position, // 마커의 위치
            image: markerImage 
        });

    marker.setMap(map); // 지도 위에 마커 표시
    markers.push(marker);  // 배열에 생성된 마커 추가

    return marker;
}

// 지도 위에 표시되고 있는 마커를 모두 제거하는 함수
function removeMarker() {
    for ( var i = 0; i < markers.length; i++ ) {
        markers[i].setMap(null);
    }   
    markers = [];
}

// 검색결과 목록 하단에 페이지번호를 표시는 함수
function displayPagination(pagination) {
    var paginationEl = document.getElementById('pagination');
    var fragment = document.createDocumentFragment();

    for (var i=1; i<=pagination.last; i++) {
        var el = document.createElement('a');
        el.href = "#";
        el.innerHTML = i;

        if (i===pagination.current) {
            el.className = 'on';
        } else {
            el.onclick = (function(i) {
                return function() {
                    pagination.gotoPage(i);
                }
            })(i);
        }

        fragment.appendChild(el);
    }
    paginationEl.appendChild(fragment);
}

// 검색결과 목록 또는 마커에 mouseover 이벤트가 발생했을경우
// 커스텀 오버레이를 표시하는 함수
function displayPlaceInfo(place) {
	var content = '<div class="placeinfo">' +
	    '   <p class="title" href="' + place.place_url + '" target="_blank" title="' + place.place_name + '">' + place.place_name + '</p>';   
// 	    '   <a class="title" href="https://map.kakao.com/link/to/' + place.place_name + ',' + place.y + ',' + place.x + '" target="_blank" title="' + place.place_name + '">' + place.place_name + '</a>';   
	
	if (place.road_address_name) {
	content += '    <span title="' + place.road_address_name + '">' + place.road_address_name + '</span>' +
	    '  <span class="jibun" title="' + place.address_name + '">(지번 : ' + place.address_name + ')</span>';
	}  else {
	content += '    <span title="' + place.address_name + '">' + place.address_name + '</span>';
	}                
	
	content += '    <span class="tel"><a href="tel:'+place.phone+'">' + place.phone + '</a></span>' + 
	'<a class="btn_close" onclick="placeOverlay.setMap(null)"><span class="hdn">닫기</span></a>'+
	'<a class="btn_roadmap" href="https://map.kakao.com/link/to/' + place.place_name + ',' + place.y + ',' + place.x + '" target="_blank" title="' + place.place_name + '">'+
	'<span>길찾기</span></a></div><div class="after"></div>';

	contentNode.innerHTML = content;
    placeOverlay.setPosition(new kakao.maps.LatLng(place.y, place.x));
    placeOverlay.setMap(map); 
}

function listViewResponse() {
	var status = wCatch();
	var sideDiv = $('.side_wrap');
	var isOpen = sideDiv.hasClass('open');
	if (status === 'm') {
		if (isOpen) {
			sideDiv.removeClass('open');
		} 
	}
}

function listTgl() {
	var btn = $('#list_view_btn');
	var sideDiv = $('.side_wrap');
	btn.click(function(){
		var isOpen = sideDiv.hasClass('open');
		if(!isOpen) {
			sideDiv.addClass('open')
		} else {
			sideDiv.removeClass('open')
		}
	});
}

function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}

function wCatch() {
	var
		status
	,	wc	= $('.w_catch')
	,	wcP = wc.find('.wc_p').css('display')
	,	wcT = wc.find('.wc_t').css('display')
	,	wcM = wc.find('.wc_m').css('display')
	;

	return "block" === wcP ? status = "p" : "block" === wcT ? status = "t" : "block" === wcM ? status = "m" : void 0

}

function mapSideTop() {

	$('.side_wrap > div').css({
		'padding-top'	:	($('.map_popup_wrap .mp_option').outerHeight()) + 'px'
	});

}

function mapSideHeight() {
	var
		status		=	wCatch()
	,	winH		=	$(window).outerHeight()
	,	sidePadding	=	32
	,	optionH		=	$('.map_popup_wrap .mp_option').outerHeight()
	$('.mp_place_list').css({
		'max-height'	:	(winH - sidePadding - optionH) + 'px'
	});
}

function mapBtnTgl() {
	var btn = $('.mp_option .btn_area > ul > li .btn');
	btn.removeClass('btn_blue');
	btn.addClass('btn_gray');
	
	btn.click(function(){
		btn.removeClass('btn_blue');
		btn.addClass('btn_gray');
	
		$(this).addClass('btn_blue');
		$(this).removeClass('btn_gray');
	});
}

$(window).on('resize', function(){
	mapSideTop();
	mapSideHeight();
	listViewResponse();
});




/*코로나 맵 거리 구하기*/

var drawingFlag = false; // 선이 그려지고 있는 상태를 가지고 있을 변수입니다
var moveLine; // 선이 그려지고 있을때 마우스 움직임에 따라 그려질 선 객체 입니다
var clickLine // 마우스로 클릭한 좌표로 그려질 선 객체입니다
var distanceOverlay; // 선의 거리정보를 표시할 커스텀오버레이 입니다
var dots = {}; // 선이 그려지고 있을때 클릭할 때마다 클릭 지점과 거리를 표시하는 커스텀 오버레이 배열입니다.

// 지도에 클릭 이벤트를 등록합니다
// 지도를 클릭하면 선 그리기가 시작됩니다 그려진 선이 있으면 지우고 다시 그립니다
kakao.maps.event.addListener(map, 'click', function(mouseEvent) {

    // 마우스로 클릭한 위치입니다 
    var clickPosition = mouseEvent.latLng;

    // 지도 클릭이벤트가 발생했는데 선을 그리고있는 상태가 아니면
    if (!drawingFlag) {

        // 상태를 true로, 선이 그리고있는 상태로 변경합니다
        drawingFlag = true;
        
        // 지도 위에 선이 표시되고 있다면 지도에서 제거합니다
        deleteClickLine();
        
        // 지도 위에 커스텀오버레이가 표시되고 있다면 지도에서 제거합니다
        deleteDistnce();

        // 지도 위에 선을 그리기 위해 클릭한 지점과 해당 지점의 거리정보가 표시되고 있다면 지도에서 제거합니다
        deleteCircleDot();
    
        // 클릭한 위치를 기준으로 선을 생성하고 지도위에 표시합니다
        clickLine = new kakao.maps.Polyline({
            map: map, // 선을 표시할 지도입니다 
            path: [clickPosition], // 선을 구성하는 좌표 배열입니다 클릭한 위치를 넣어줍니다
            strokeWeight: 3, // 선의 두께입니다 
            strokeColor: '#db4040', // 선의 색깔입니다
            strokeOpacity: 1, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
            strokeStyle: 'solid' // 선의 스타일입니다
        });
        
        // 선이 그려지고 있을 때 마우스 움직임에 따라 선이 그려질 위치를 표시할 선을 생성합니다
        moveLine = new kakao.maps.Polyline({
            strokeWeight: 3, // 선의 두께입니다 
            strokeColor: '#db4040', // 선의 색깔입니다
            strokeOpacity: 0.5, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
            strokeStyle: 'solid' // 선의 스타일입니다    
        });
    
        // 클릭한 지점에 대한 정보를 지도에 표시합니다
        displayCircleDot(clickPosition, 0);

            
    } else { // 선이 그려지고 있는 상태이면

        // 그려지고 있는 선의 좌표 배열을 얻어옵니다
        var path = clickLine.getPath();

        // 좌표 배열에 클릭한 위치를 추가합니다
        path.push(clickPosition);
        
        // 다시 선에 좌표 배열을 설정하여 클릭 위치까지 선을 그리도록 설정합니다
        clickLine.setPath(path);

        var distance = Math.round(clickLine.getLength());
        displayCircleDot(clickPosition, distance);
    }
});
    
// 지도에 마우스무브 이벤트를 등록합니다
// 선을 그리고있는 상태에서 마우스무브 이벤트가 발생하면 그려질 선의 위치를 동적으로 보여주도록 합니다
kakao.maps.event.addListener(map, 'mousemove', function (mouseEvent) {

    // 지도 마우스무브 이벤트가 발생했는데 선을 그리고있는 상태이면
    if (drawingFlag){
        
        // 마우스 커서의 현재 위치를 얻어옵니다 
        var mousePosition = mouseEvent.latLng; 

        // 마우스 클릭으로 그려진 선의 좌표 배열을 얻어옵니다
        var path = clickLine.getPath();
        
        // 마우스 클릭으로 그려진 마지막 좌표와 마우스 커서 위치의 좌표로 선을 표시합니다
        var movepath = [path[path.length-1], mousePosition];
        moveLine.setPath(movepath);    
        moveLine.setMap(map);
        
        var distance = Math.round(clickLine.getLength() + moveLine.getLength()), // 선의 총 거리를 계산합니다
            content = '<div class="dotOverlay distanceInfo">총거리 <span class="number">' + distance + '</span>m</div>'; // 커스텀오버레이에 추가될 내용입니다
        
        // 거리정보를 지도에 표시합니다
        showDistance(content, mousePosition);   
    }             
});                 

// 지도에 마우스 오른쪽 클릭 이벤트를 등록합니다
// 선을 그리고있는 상태에서 마우스 오른쪽 클릭 이벤트가 발생하면 선 그리기를 종료합니다
kakao.maps.event.addListener(map, 'rightclick', function (mouseEvent) {

    // 지도 오른쪽 클릭 이벤트가 발생했는데 선을 그리고있는 상태이면
    if (drawingFlag) {
        
        // 마우스무브로 그려진 선은 지도에서 제거합니다
        moveLine.setMap(null);
        moveLine = null;  
        
        // 마우스 클릭으로 그린 선의 좌표 배열을 얻어옵니다
        var path = clickLine.getPath();
    
        // 선을 구성하는 좌표의 개수가 2개 이상이면
        if (path.length > 1) {

            // 마지막 클릭 지점에 대한 거리 정보 커스텀 오버레이를 지웁니다
            if (dots[dots.length-1].distance) {
                dots[dots.length-1].distance.setMap(null);
                dots[dots.length-1].distance = null;    
            }

            var distance = Math.round(clickLine.getLength()), // 선의 총 거리를 계산합니다
                content = getTimeHTML(distance); // 커스텀오버레이에 추가될 내용입니다
                
            // 그려진 선의 거리정보를 지도에 표시합니다
            showDistance(content, path[path.length-1]);  
             
        } else {

            // 선을 구성하는 좌표의 개수가 1개 이하이면 
            // 지도에 표시되고 있는 선과 정보들을 지도에서 제거합니다.
            deleteClickLine();
            deleteCircleDot(); 
            deleteDistnce();

        }
        
        // 상태를 false로, 그리지 않고 있는 상태로 변경합니다
        drawingFlag = false;          
    }  
});    

// 클릭으로 그려진 선을 지도에서 제거하는 함수입니다
function deleteClickLine() {
    if (clickLine) {
        clickLine.setMap(null);    
        clickLine = null;        
    }
}

// 마우스 드래그로 그려지고 있는 선의 총거리 정보를 표시하거
// 마우스 오른쪽 클릭으로 선 그리가 종료됐을 때 선의 정보를 표시하는 커스텀 오버레이를 생성하고 지도에 표시하는 함수입니다
function showDistance(content, position) {
    
    if (distanceOverlay) { // 커스텀오버레이가 생성된 상태이면
        
        // 커스텀 오버레이의 위치와 표시할 내용을 설정합니다
        distanceOverlay.setPosition(position);
        distanceOverlay.setContent(content);
        
    } else { // 커스텀 오버레이가 생성되지 않은 상태이면
        
        // 커스텀 오버레이를 생성하고 지도에 표시합니다
        distanceOverlay = new kakao.maps.CustomOverlay({
            map: map, // 커스텀오버레이를 표시할 지도입니다
            content: content,  // 커스텀오버레이에 표시할 내용입니다
            position: position, // 커스텀오버레이를 표시할 위치입니다.
            xAnchor: 0,
            yAnchor: 0,
            zIndex: 3  
        });      
    }
}

// 그려지고 있는 선의 총거리 정보와 
// 선 그리가 종료됐을 때 선의 정보를 표시하는 커스텀 오버레이를 삭제하는 함수입니다
function deleteDistnce () {
    if (distanceOverlay) {
        distanceOverlay.setMap(null);
        distanceOverlay = null;
    }
}

// 선이 그려지고 있는 상태일 때 지도를 클릭하면 호출하여 
// 클릭 지점에 대한 정보 (동그라미와 클릭 지점까지의 총거리)를 표출하는 함수입니다
function displayCircleDot(position, distance) {

    // 클릭 지점을 표시할 빨간 동그라미 커스텀오버레이를 생성합니다
    var circleOverlay = new kakao.maps.CustomOverlay({
        content: '<span class="dot"></span>',
        position: position,
        zIndex: 1
    });

    // 지도에 표시합니다
    circleOverlay.setMap(map);

    if (distance > 0) {
        // 클릭한 지점까지의 그려진 선의 총 거리를 표시할 커스텀 오버레이를 생성합니다
        var distanceOverlay = new kakao.maps.CustomOverlay({
            content: '<div class="dotOverlay">거리 <span class="number">' + distance + '</span>m</div>',
            position: position,
            yAnchor: 1,
            zIndex: 2
        });

        // 지도에 표시합니다
        distanceOverlay.setMap(map);
    }

    // 배열에 추가합니다
    dots.push({circle:circleOverlay, distance: distanceOverlay});
}

// 클릭 지점에 대한 정보 (동그라미와 클릭 지점까지의 총거리)를 지도에서 모두 제거하는 함수입니다
function deleteCircleDot() {
    var i;

    for ( i = 0; i < dots.length; i++ ){
        if (dots[i].circle) { 
            dots[i].circle.setMap(null);
        }

        if (dots[i].distance) {
            dots[i].distance.setMap(null);
        }
    }

    dots = [];
}

// 마우스 우클릭 하여 선 그리기가 종료됐을 때 호출하여 
// 그려진 선의 총거리 정보와 거리에 대한 도보, 자전거 시간을 계산하여
// HTML Content를 만들어 리턴하는 함수입니다
function getTimeHTML(distance) {

    // 도보의 시속은 평균 4km/h 이고 도보의 분속은 67m/min입니다
    var walkkTime = distance / 67 | 0;
    var walkHour = '', walkMin = '';

    // 계산한 도보 시간이 60분 보다 크면 시간으로 표시합니다
    if (walkkTime > 60) {
        walkHour = '<span class="number">' + Math.floor(walkkTime / 60) + '</span>시간 '
    }
    walkMin = '<span class="number">' + walkkTime % 60 + '</span>분'

    // 자전거의 평균 시속은 16km/h 이고 이것을 기준으로 자전거의 분속은 267m/min입니다
    var bycicleTime = distance / 227 | 0;
    var bycicleHour = '', bycicleMin = '';

    // 계산한 자전거 시간이 60분 보다 크면 시간으로 표출합니다
    if (bycicleTime > 60) {
        bycicleHour = '<span class="number">' + Math.floor(bycicleTime / 60) + '</span>시간 '
    }
    bycicleMin = '<span class="number">' + bycicleTime % 60 + '</span>분'

    // 거리와 도보 시간, 자전거 시간을 가지고 HTML Content를 만들어 리턴합니다
    var content = '<ul class="dotOverlay distanceInfo">';
    content += '    <li>';
    content += '        <span class="label">총거리</span><span class="number">' + distance + '</span>m';
    content += '    </li>';
    content += '    <li>';
    content += '        <span class="label">도보</span>' + walkHour + walkMin;
    content += '    </li>';
    content += '    <li>';
    content += '        <span class="label">자전거</span>' + bycicleHour + bycicleMin;
    content += '    </li>';
    content += '</ul>'

    return content;
}













