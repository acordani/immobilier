// // js pour faire fonctionner le menu

// $(function() {

// 	// grab the initial top offset of the navigation
// 	var sticky_navigation_offset_top = $('.detail-announce-box').offset().top;

// 	// our function that decides weather the navigation bar should have "fixed" css position or not.
// 	var sticky_navigation = function(){
// 		var scroll_top = $(window).scrollTop(); // our current vertical position from the top

// 		// if we've scrolled more than the navigation, change its position to fixed to stick to top, otherwise change it back to relative
// 		if (scroll_top > sticky_navigation_offset_top) {
// $('.detail-announce-box').css({ 'position': 'fixed', 'top':72 });
// $('#divtoappear').css({ 'display': 'none' });
// } else {
// $('.detail-announce-box').css({ 'position': 'relative' });
// $('#divtoappear').css({ 'display': 'block' });
// }
// 	};

// 	// run our function on load
// 	sticky_navigation();

// 	// and run it again every time you scroll
// 	$(window).scroll(function() {
// 		 sticky_navigation();
// 	});

// 	// NOT required:
// 	// for this demo disable all links that point to "#"
// 	$('a[href="#"]').click(function(event){
// 		event.preventDefault();
// 	});

// });

// $(window).scroll(function() {
//   var sticky_navigation_offset_top = $('.announce-content').offset().top;
//   var wscroll = $(this).scrollTop();
//   console.log(wscroll)
//   if (wscroll > sticky_navigation_offset_top) {
//     console.log('yep');
//     $('.detail-announce-box').css({ 'position': 'fixed', 'top':0, 'left':900 });
//   }

// });

