
function getArgs(string) {
    var args = new Object();
    var query = string.substring(1);
    var pairs = query.split("&");

    for (var i = 0; i < pairs.length; i++) {
        var pos = pairs[i].indexOf('=');
        if (pos == -1) continue;

        var argname = pairs[i].substring(0, pos);
        var value = pairs[i].substring(pos + 1);
        args[argname] = unescape(value);
    }

    return args;
}

var Args = getArgs(window.location.search);
var Hashes = getArgs(window.location.hash);

function ajaxCall(params){
	var async = true;
	//var url = __url_api_session;
	var callback = null;
	var session = true;
	var methodType = "POST";
	
	//loadingStart();

	if(params.async === false){
		async = false;
	}
	
	/*
	if(params.session === false){
		url = __url_api;
		session = false;
		delete params.session;
	}
	*/

	if(params.type != null) {
		methodType = params.type;
	} 

	if(params.url == null) {
		alert('URL not found!');
	} 
	
	if(params.callback != null){
		callback = params.callback;
		delete params.callback;
	}

	$.ajax({
		type: methodType,
		async:async,
		url: params.url,
		contentType: "application/json; charset=UTF-8",
		dataType: "json",
		data: JSON.stringify(params.data),
		cache :false,
		beforeSend: function(xhr) {
			var token = $("meta[name='_csrf']").attr("content");
			var header = $("meta[name='_csrf_header']").attr("content");
			xhr.setRequestHeader(header, token);
		},
		error: function(xhr,status,error) {

			alert("code : "+ xhr.status + ", error : " + xhr.responseText);

			if (xhr.status === 0) {
		            console.log('Not connect.\n Verify Network.');
	        } 
	        else if (xhr.status == 400) {
	            console.log('Server understood the request, but request content was invalid. [400]');
	        } 
	        else if (xhr.status == 401) {
	            console.log('Unauthorized access. [401]');
	        } 
	        else if (xhr.status == 403) {
	            console.log('Forbidden resource can not be accessed. [403]');
	        } 
	        else if (xhr.status == 404) {
	            console.log('Requested page not found. [404]');
	        } 
	        else if (xhr.status == 500) {
	            console.log('Internal server error. [500]');
	        } 
	        else if (xhr.status == 503) {
	            console.log('Service unavailable. [503]');
	        } 
	        else if (error === 'parsererror') {
	            console.log('Requested JSON parse failed. [Failed]');
	        } 
	        else if (error === 'timeout') {
	            console.log('Time out error. [Timeout]');
	        } 
	        else if (error === 'abort') {
	            console.log('Ajax request aborted. [Aborted]');
	        } 
	        else {
	            console.log('Uncaught Error.n' + xhr.responseText);
	        }
        },
        success: function(data, textStatus, xhr){
        	callback(data);
        }
	});
}

function ajaxCallForm(params){
	console.log(params);
	var async = true;
	//var url = __url_api_session;
	var callback = null;
	var session = true;
	
	//loadingStart();

	if(params.async === false){
		async = false;
	}
	
	/*
	if(params.session === false){
		url = __url_api;
		session = false;
		delete params.session;
	}
	*/
	
	if(params.url == null) {
		alert('URL not found!');
	} 
	
	if(params.callback != null){
		callback = params.callback;
		delete params.callback;
	}
    
	$.ajax({
		type: "POST",
		async:async,
		url: params.url,
		//contentType: "application/json; charset=UTF-8",
		dataType: "json",
		data: params.data,
		cache :false,
		beforeSend: function(xhr) {
			var token = $("meta[name='_csrf']").attr("content");
			var header = $("meta[name='_csrf_header']").attr("content");
			xhr.setRequestHeader(header, token);
		},
		error: function(xhr,status,error) {
			alert("code = "+ xhr.status + ", error = " + error);
			if (xhr.status === 0) {
		            console.log('Not connect.\n Verify Network.');
	        } 
	        else if (xhr.status == 400) {
	            console.log('Server understood the request, but request content was invalid. [400]');
	        } 
	        else if (xhr.status == 401) {
	            console.log('Unauthorized access. [401]');
	        } 
	        else if (xhr.status == 403) {
	            console.log('Forbidden resource can not be accessed. [403]');
	        } 
	        else if (xhr.status == 404) {
	            console.log('Requested page not found. [404]');
	        } 
	        else if (xhr.status == 500) {
	            console.log('Internal server error. [500]');
	        } 
	        else if (xhr.status == 503) {
	            console.log('Service unavailable. [503]');
	        } 
	        else if (error === 'parsererror') {
	            console.log('Requested JSON parse failed. [Failed]');
	        } 
	        else if (error === 'timeout') {
	            console.log('Time out error. [Timeout]');
	        } 
	        else if (error === 'abort') {
	            console.log('Ajax request aborted. [Aborted]');
	        } 
	        else {
	            console.log('Uncaught Error.n' + xhr.responseText);
	        }
        },
        success: function(data, textStatus, xhr){
        	callback(data);
        }
	});
}

function ajaxCallFile(params){
	var async = true;
	//var url = __url_api_session;
	var callback = null;
	var session = true;
	
	//loadingStart();

	if(params.async === false){
		async = false;
	}
	
	/*
	if(params.session === false){
		url = __url_api;
		session = false;
		delete params.session;
	}
	*/
	
	if(params.url == null) {
		alert('URL not found!');
	} 
	
	if(params.callback != null){
		callback = params.callback;
		delete params.callback;
	}
    
	$.ajax({
		type: "POST",
		async:async,
		url: params.url,
		contentType: false,
		processData: false,
		dataType: "json",
		data: params.data,
		cache :false,
		beforeSend: function(xhr) {
			var token = $("meta[name='_csrf']").attr("content");
			var header = $("meta[name='_csrf_header']").attr("content");
			xhr.setRequestHeader(header, token);
		},
		error: function(xhr,status,error) {

			alert("code = "+ xhr.status + ", error = " + error);

			if (xhr.status === 0) {
		            console.log('Not connect.\n Verify Network.');
	        } 
	        else if (xhr.status == 400) {
	            console.log('Server understood the request, but request content was invalid. [400]');
	        } 
	        else if (xhr.status == 401) {
	            console.log('Unauthorized access. [401]');
	        } 
	        else if (xhr.status == 403) {
	            console.log('Forbidden resource can not be accessed. [403]');
	        } 
	        else if (xhr.status == 404) {
	            console.log('Requested page not found. [404]');
	        } 
	        else if (xhr.status == 500) {
	            console.log('Internal server error. [500]');
	        } 
	        else if (xhr.status == 503) {
	            console.log('Service unavailable. [503]');
	        } 
	        else if (error === 'parsererror') {
	            console.log('Requested JSON parse failed. [Failed]');
	        } 
	        else if (error === 'timeout') {
	            console.log('Time out error. [Timeout]');
	        } 
	        else if (error === 'abort') {
	            console.log('Ajax request aborted. [Aborted]');
	        } 
	        else {
	            console.log('Uncaught Error.n' + xhr.responseText);
	        }
        },
        success: function(data, textStatus, xhr){
        	callback(data);
        }
	});
}

//date 포맷을 만들어주는 함수 , ex) 20191210 
function getDateStr(myDate){
	var month = myDate.getMonth() + 1;
	var day = myDate.getDate();

	if (month < 10) month = '0' + month;
	if (day < 10) day = '0' + day;

	return (myDate.getFullYear() + '' + month + '' + day); // '20191211'
}

function moveMonth(today, diff_month) { 
	today = today.slice(0,4) + '-' + today.slice(4,6) + '-' + today.slice(6); // ex) 2019-12-10 
	var d = new Date(today);
	d.setMonth(d.getMonth() + diff_month);
	return getDateStr(d);
}

function setDatepicker(id, date) {
	$(id).datepicker({
        //todayBtn: "linked",
        //todayHighlight:true,
        keyboardNavigation: false,
        forceParse: false,
        calendarWeeks: false,
        autoclose: true,
        language: 'ko'
    }).datepicker("setDate", new Date(date));
}

function getFormatDate(date){
    var year = date.getFullYear();
    var month = ("0" + (1 + date.getMonth())).slice(-2);
    var day = ("0" + date.getDate()).slice(-2);
    return year + "-" + month + "-" + day;
}

function moveDate(str, diff) {
	var year = str.substr(0, 4);
    var month = str.substr(4, 2);
    var day = str.substr(6, 2);
    var date = new Date(year, month-1, day);
    date.setDate(date.getDate() + diff);
    return getFormatDate(date).replace(/-/gi, '.');
}

// 쿠키값을 리턴
function getCookie(cookieName) {
	var name = cookieName + "=";
	var ca = document.cookie.split(';');
	for (var i = 0; i < ca.length; i++) {
		var c = ca[i];
		while (c.charAt(0) == ' ') {
			c = c.substring(1);
		}

		if (c.indexOf(name) == 0) {
			return c.substring(name.length, c.length);
		}
	}

	return "";
}

//일단위 쿠키 설정
function setCookie(cookieName, cookieValue, exdays) {
	var d = new Date();
	d.setDate(d.getDate() + 1); // 1일 뒤 이 시간
	var expires = "expires=" + d.toGMTString();
	document.cookie = cookieName + "=" + cookieValue + "; " + expires;
}

//분단위 쿠키 설정
function setCookieTime(cookieName, cookieValue, min) {
	var d = new Date();
	d.setTime(d.getTime()+(min * 60 * 1000));
	var expires = "expires=" + d.toGMTString();
	document.cookie = cookieName + "=" + cookieValue + "; " + expires;
}