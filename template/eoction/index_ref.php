
<body>
<div class="page-wrapper"><!-- page wrapper -->

    <div class="header-wrapper clearfix"><!-- header wrapper -->

        <header id="header" class="header-7 logo-center">

            <div class="header-main">
                <div class="container">
                    <div class="header-left">
                        <h1 class="logo logo-transition"><a href="http://www.eoction.com/" title="EOCTION - "
                                                            rel="home">
                            <img class="img-responsive standard-logo" src="./EOCTION_files/logo3.png" alt="EOCTION"><img
                                class="img-responsive retina-logo" src="./EOCTION_files/logo3.png" alt="EOCTION"
                                style="max-height:px;display:none;"> </a>
                        </h1>
                        <div id="main-menu">
                            <ul id="menu-menu-new"
                                class="main-menu mega-menu show-arrow effect-down subeffect-fadein-left">
                                <li id="nav-menu-item-18220"
                                    class="menu-item menu-item-type-custom menu-item-object-custom  narrow "><a
                                        href="http://www.eoction.com/#" class="">Live Auctions<span class="tip"
                                                                                                    style="background:#d90d03;"><span
                                        class="tip-arrow" style="color:#d90d03;"></span>HOT SALE</span></a></li>
                                <li id="nav-menu-item-18050"
                                    class="menu-item menu-item-type-custom menu-item-object-custom  narrow "><a
                                        href="http://www.eoction.com/#" class="">Live TV<span class="tip"
                                                                                              style="background:#d90d03;"><span
                                        class="tip-arrow" style="color:#d90d03;"></span>SALE</span></a></li>
                                <li id="nav-menu-item-18452"
                                    class="menu-item menu-item-type-custom menu-item-object-custom  narrow "><a
                                        href="http://www.eoction.com/shop/" class="">Online Shopping<span class="tip"
                                                                                                          style="background:#d90d03;"><span
                                        class="tip-arrow" style="color:#d90d03;"></span>SALE</span></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="header-center">
                        <div class="searchform-popup">
                            <a class="search-toggle"><i class="fa fa-search"></i></a>

                            <form role="search" method="get" id="yith-ajaxsearchform" action="http://www.eoction.com/"
                                  class="yith-ajaxsearchform-container yith-ajaxsearchform-container747926108 searchform ">
                                <fieldset>
                                    <span class="text"><input name="s" id="yith-s" class="yith-s" type="text" value=""
                                                              placeholder="Search…" autocomplete="off"></span>
                                    <span class="button-wrap"><button class="btn" id="yith-searchsubmit" title="Search"
                                                                      type="submit"><i
                                            class="fa fa-search"></i></button></span>
                                    <input type="hidden" name="post_type" value="product">
                                </fieldset>
                                <div class="autocomplete-suggestions"
                                     style="position: absolute; display: none; max-height: 300px; z-index: 9999;"></div>
                            </form>

                            <script type="text/javascript">
                                jQuery(function ($) {
                                    var search_loader_url = 'http://www.eoction.com/wp-content/themes/porto/images/ajax-loader@2x.gif';
                                    var ajax_url = '/wp-admin/admin-ajax.php?';

                                    var yith_search = $('.yith-ajaxsearchform-container747926108 .yith-s').yithautocomplete({
                                        minChars: 3,
                                        appendTo: '.yith-ajaxsearchform-container747926108',
                                        serviceUrl: function () {
                                            var val = '0';
                                            if (val != '0')
                                                return ajax_url + 'action=yith_ajax_search_products';
                                            else
                                                return ajax_url + 'action=yith_ajax_search_products';
                                        },
                                        onSearchStart: function () {
                                            $(this).css('background', 'url(' + search_loader_url + ') no-repeat 97% center');
                                            $(this).css('background-size', '16px 16px');
                                        },
                                        onSearchComplete: function () {
                                            $(this).css('background', 'transparent');
                                        },
                                        onSelect: function (suggestion) {
                                            if (suggestion.id != -1) {
                                                window.location.href = suggestion.url;
                                            }
                                        },
                                        formatResult: function (suggestion, currentValue) {
                                            var pattern = '(' + $.YithAutocomplete.utils.escapeRegExChars(currentValue) + ')';
                                            var html = '';

                                            if (typeof suggestion.img !== 'undefined') {
                                                html += suggestion.img;
                                            }

                                            html += '<div class="yith_wcas_result_content"><div class="title">';
                                            html += suggestion.value.replace(new RegExp(pattern, 'gi'), '<strong>$1<\/strong>');
                                            html += '</div>';

                                            if (typeof suggestion.div_badge_open !== 'undefined') {
                                                html += suggestion.div_badge_open;
                                            }

                                            if (typeof suggestion.on_sale !== 'undefined') {
                                                html += suggestion.on_sale;
                                            }

                                            if (typeof suggestion.featured !== 'undefined') {
                                                html += suggestion.featured;
                                            }

                                            if (typeof suggestion.div_badge_close !== 'undefined') {
                                                html += suggestion.div_badge_close;
                                            }

                                            if (typeof suggestion.price !== 'undefined' && suggestion.price != '') {
                                                html += ' ' + suggestion.price;
                                            }

                                            if (typeof suggestion.excerpt !== 'undefined') {
                                                html += ' ' + suggestion.excerpt.replace(new RegExp(pattern, 'gi'), '<strong>$1<\/strong>');
                                            }

                                            html += '</div>';


                                            return html;
                                        }
                                    });

                                    $('.yith-ajaxsearchform-container747926108 .cat').on('change', function () {
                                        $('.yith-ajaxsearchform-container747926108 .yith-s').focus();
                                    });
                                });
                            </script>
                        </div>
                    </div>

                    <div class="header-right search-popup">
                        <div class="header-minicart-inline">
                            <a class="mobile-toggle"><i class="fa fa-reorder"></i></a>

                            <div id="mini-cart" class="dropdown mini-cart minicart-inline effect-fadein-up">
                                <div class="dropdown-toggle cart-head " data-toggle="dropdown" data-delay="50"
                                     data-close-others="false">
                                    <i class="minicart-icon "></i>
                                    <span class="cart-items"><span class="mobile-hide">0 items</span><span
                                            class="mobile-show">0</span></span>
                                </div>
                                <div class="dropdown-menu cart-popup widget_shopping_cart">
                                    <div class="widget_shopping_cart_content">

                                        <div class="scroll-wrapper cart_list product_list_widget scrollbar-inner"
                                             style="position: relative;">
                                            <ul class="cart_list product_list_widget scrollbar-inner  scroll-content"
                                                style="margin-bottom: 0px; margin-right: 0px;">
                                                <li class="empty">No products in the cart.</li>
                                            </ul>
                                            <div class="scroll-element scroll-x">
                                                <div class="scroll-element_outer">
                                                    <div class="scroll-element_size"></div>
                                                    <div class="scroll-element_track"></div>
                                                    <div class="scroll-bar"></div>
                                                </div>
                                            </div>
                                            <div class="scroll-element scroll-y">
                                                <div class="scroll-element_outer">
                                                    <div class="scroll-element_size"></div>
                                                    <div class="scroll-element_track"></div>
                                                    <div class="scroll-bar"></div>
                                                </div>
                                            </div>
                                        </div><!-- end product list -->
                                    </div>
                                </div>
                            </div>


                            <div class="block-nowrap">
                                <ul id="menu-top-navigation"
                                    class="top-links mega-menu show-arrow effect-down subeffect-fadein-left">
                                    <li id="nav-menu-item-18399"
                                        class="menu-item menu-item-type-post_type menu-item-object-page  narrow "><a
                                            href="http://www.eoction.com/my-account-2/" class="">My Account</a></li>
                                    <li id="nav-menu-item-18400"
                                        class="menu-item menu-item-type-post_type menu-item-object-page  narrow "><a
                                            href="http://www.eoction.com/wishlist-2/" class="">My Wishlist</a></li>
                                </ul>
                                <div class="searchform-popup">
                                    <a class="search-toggle"><i class="fa fa-search"></i></a>

                                    <form role="search" method="get" id="yith-ajaxsearchform"
                                          action="http://www.eoction.com/"
                                          class="yith-ajaxsearchform-container yith-ajaxsearchform-container567120607 searchform ">
                                        <fieldset>
                                            <span class="text"><input name="s" id="yith-s" class="yith-s" type="text"
                                                                      value="" placeholder="Search…" autocomplete="off"></span>
                                            <span class="button-wrap"><button class="btn" id="yith-searchsubmit"
                                                                              title="Search" type="submit"><i
                                                    class="fa fa-search"></i></button></span>
                                            <input type="hidden" name="post_type" value="product">
                                        </fieldset>
                                        <div class="autocomplete-suggestions"
                                             style="position: absolute; display: none; max-height: 300px; z-index: 9999;"></div>
                                    </form>

                                    <script type="text/javascript">
                                        jQuery(function ($) {
                                            var search_loader_url = 'http://www.eoction.com/wp-content/themes/porto/images/ajax-loader@2x.gif';
                                            var ajax_url = '/wp-admin/admin-ajax.php?';

                                            var yith_search = $('.yith-ajaxsearchform-container567120607 .yith-s').yithautocomplete({
                                                minChars: 3,
                                                appendTo: '.yith-ajaxsearchform-container567120607',
                                                serviceUrl: function () {
                                                    var val = '0';
                                                    if (val != '0')
                                                        return ajax_url + 'action=yith_ajax_search_products';
                                                    else
                                                        return ajax_url + 'action=yith_ajax_search_products';
                                                },
                                                onSearchStart: function () {
                                                    $(this).css('background', 'url(' + search_loader_url + ') no-repeat 97% center');
                                                    $(this).css('background-size', '16px 16px');
                                                },
                                                onSearchComplete: function () {
                                                    $(this).css('background', 'transparent');
                                                },
                                                onSelect: function (suggestion) {
                                                    if (suggestion.id != -1) {
                                                        window.location.href = suggestion.url;
                                                    }
                                                },
                                                formatResult: function (suggestion, currentValue) {
                                                    var pattern = '(' + $.YithAutocomplete.utils.escapeRegExChars(currentValue) + ')';
                                                    var html = '';

                                                    if (typeof suggestion.img !== 'undefined') {
                                                        html += suggestion.img;
                                                    }

                                                    html += '<div class="yith_wcas_result_content"><div class="title">';
                                                    html += suggestion.value.replace(new RegExp(pattern, 'gi'), '<strong>$1<\/strong>');
                                                    html += '</div>';

                                                    if (typeof suggestion.div_badge_open !== 'undefined') {
                                                        html += suggestion.div_badge_open;
                                                    }

                                                    if (typeof suggestion.on_sale !== 'undefined') {
                                                        html += suggestion.on_sale;
                                                    }

                                                    if (typeof suggestion.featured !== 'undefined') {
                                                        html += suggestion.featured;
                                                    }

                                                    if (typeof suggestion.div_badge_close !== 'undefined') {
                                                        html += suggestion.div_badge_close;
                                                    }

                                                    if (typeof suggestion.price !== 'undefined' && suggestion.price != '') {
                                                        html += ' ' + suggestion.price;
                                                    }

                                                    if (typeof suggestion.excerpt !== 'undefined') {
                                                        html += ' ' + suggestion.excerpt.replace(new RegExp(pattern, 'gi'), '<strong>$1<\/strong>');
                                                    }

                                                    html += '</div>';


                                                    return html;
                                                }
                                            });

                                            $('.yith-ajaxsearchform-container567120607 .cat').on('change', function () {
                                                $('.yith-ajaxsearchform-container567120607 .yith-s').focus();
                                            });
                                        });
                                    </script>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </header>
    </div><!-- end header wrapper -->

    <div id="main" class="column1 boxed no-breadcrumbs"><!-- main -->

        <div class="container">
            <div class="row main-content-wrap">
                <!-- main content -->
                <div class="main-content col-md-12">
                    <div id="content" role="main">
                        <article class="post-18469 page type-page status-publish hentry">
                            <span class="entry-title" style="display: none;">Home New</span>
								<span class="vcard" style="display: none;">
									<span class="fn"><a href="http://www.eoction.com/author/admin/"
                                                        title="Posts by admin" rel="author">admin</a></span>
								</span>
                            <span class="updated" style="display:none">2016-10-06T11:32:32+00:00</span>
                            <div class="page-content">
                                <div class="vc_row wpb_row vc_row-fluid vc_custom_1423140381415">
                                    <div class="vc_column_container vc_col-sm-12">
                                        <div class="wpb_wrapper">
                                            <div class="vc_empty_space" style="height: 25px"><span
                                                    class="vc_empty_space_inner"></span></div>

                                            <div class="wpb_text_column wpb_content_element ">
                                                <div class="wpb_wrapper">
                                                    <div class="woocommerce">
                                                        <ul class="products pcols-lg-5 pcols-md-4 pcols-xs-2 pcols-ls-1 pwidth-lg-5 pwidth-md-4 pwidth-xs-2 pwidth-ls-1">
                                                            <li class="show-wq-onimage product-first pcols-lg-first pcols-md-first pcols-xs-first post-18510 product type-product status-publish has-post-thumbnail product_cat-auctions product_cat-necklace product_shipping_class-200 first instock sale sold-individually shipping-taxable purchasable product-type-auction">
                                                                <div class="product-image">
                                                                    <a href="http://www.eoction.com/" class="quickview"
                                                                       data-id="18510" "="">
                                                                    <div class="labels">
                                                                        <div class="onsale">-67%</div>
                                                                        <div data-link="http://www.eoction.com/cart-2/"
                                                                             class="viewcart  viewcart-18510"
                                                                             title="View Cart"></div>
                                                                    </div>
                                                                    <div class="inner"><img width="500" height="500"
                                                                                            src="./EOCTION_files/i-csp3019butopblp-wsl-1-500x500.jpg"
                                                                                            class=" wp-post-image"
                                                                                            alt="i-csp3019butopblp-wsl-1"
                                                                                            srcset="http://www.eoction.com/wp-content/uploads/2016/08/i-csp3019butopblp-wsl-1-500x500.jpg 500w, http://www.eoction.com/wp-content/uploads/2016/08/i-csp3019butopblp-wsl-1-150x150.jpg 150w, http://www.eoction.com/wp-content/uploads/2016/08/i-csp3019butopblp-wsl-1-300x300.jpg 300w, http://www.eoction.com/wp-content/uploads/2016/08/i-csp3019butopblp-wsl-1-768x768.jpg 768w, http://www.eoction.com/wp-content/uploads/2016/08/i-csp3019butopblp-wsl-1-1024x1024.jpg 1024w, http://www.eoction.com/wp-content/uploads/2016/08/i-csp3019butopblp-wsl-1-600x600.jpg 600w, http://www.eoction.com/wp-content/uploads/2016/08/i-csp3019butopblp-wsl-1-120x120.jpg 120w, http://www.eoction.com/wp-content/uploads/2016/08/i-csp3019butopblp-wsl-1-560x560.jpg 560w, http://www.eoction.com/wp-content/uploads/2016/08/i-csp3019butopblp-wsl-1-367x367.jpg 367w, http://www.eoction.com/wp-content/uploads/2016/08/i-csp3019butopblp-wsl-1-85x85.jpg 85w, http://www.eoction.com/wp-content/uploads/2016/08/i-csp3019butopblp-wsl-1-50x50.jpg 50w, http://www.eoction.com/wp-content/uploads/2016/08/i-csp3019butopblp-wsl-1.jpg 1280w"
                                                                                            sizes="(max-width: 500px) 100vw, 500px">
                                                                    </div>
                                                                    <span class="auction-bage"></span>
                                                                    </a>

                                                                    <div class="links-on-image">
                                                                        <div class="add-links-wrap">
                                                                            <div class="add-links  clearfix">
                                                                                <a rel="nofollow"
                                                                                   href="http://www.eoction.com/product/2-91ct-blue-topaz-black-spinel-necklaces-sterling-silver-w18/"
                                                                                   data-quantity="1"
                                                                                   data-product_id="18510"
                                                                                   data-product_sku="I-CSP3019BUTOPBLP-WSL"
                                                                                   class="button product_type_auction add_to_cart_button">Bid
                                                                                    now</a>
                                                                                <div class="yith-wcwl-add-to-wishlist add-to-wishlist-18510">
                                                                                    <div class="yith-wcwl-add-button show"
                                                                                         style="display:block">
                                                                                        <a href="http://www.eoction.com/?add_to_wishlist=18510"
                                                                                           rel="nofollow"
                                                                                           data-product-id="18510"
                                                                                           data-product-type="auction"
                                                                                           class="add_to_wishlist">
                                                                                            Add to Wishlist</a>
                                                                                        <span class="ajax-loading"></span>
                                                                                    </div>

                                                                                    <div class="yith-wcwl-wishlistaddedbrowse hide"
                                                                                         style="display:none;">
                                                                                        <span class="feedback">Product added!</span>
                                                                                        <a href="http://www.eoction.com/wishlist/view/"
                                                                                           rel="nofollow">
                                                                                            Browse Wishlist</a>
                                                                                    </div>

                                                                                    <div class="yith-wcwl-wishlistexistsbrowse hide"
                                                                                         style="display:none">
                                                                                        <span class="feedback">The product is already in the wishlist!</span>
                                                                                        <a href="http://www.eoction.com/wishlist/view/"
                                                                                           rel="nofollow">
                                                                                            Browse Wishlist</a>
                                                                                    </div>

                                                                                    <div style="clear:both"></div>
                                                                                    <div class="yith-wcwl-wishlistaddresponse"></div>

                                                                                </div>

                                                                                <div class="clear"></div>
                                                                                <div class="quickview" data-id="18510"
                                                                                     title="Quick View">Quick View
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <a class="product-loop-title"
                                                                   href="http://www.eoction.com/product/2-91ct-blue-topaz-black-spinel-necklaces-sterling-silver-w18/">
                                                                    <h3>2.91Ct Blue Topaz &amp; Black Spinel Necklaces
                                                                        Sterling Silver W/18″</h3></a>
    
																	<span class="price">
																		<span class="auction-price"
                                                                              data-auction-id="18510" data-bid=""
                                                                              data-status="running">
																			<span class="current auction">Starting bid:</span>
																			<span class="woocommerce-Price-amount amount">
																				<span class="woocommerce-Price-currencySymbol">$</span>20
																			</span>
																		</span>
																	</span>
                                                                <div>Shipping: $5</div>
                                                                <span class="time-left">Time left</span>
                                                                <div class="auction-time-countdown hasCountdown"
                                                                     data-time="1475884800" data-auctionid="18510"
                                                                     data-format="HMS"><span
                                                                        class="countdown_row countdown_show3"><span
                                                                        class="countdown_section"><span
                                                                        class="countdown_amount">36</span><br>Hours</span><span
                                                                        class="countdown_section"><span
                                                                        class="countdown_amount">26</span><br>Minutes</span><span
                                                                        class="countdown_section"><span
                                                                        class="countdown_amount">17</span><br>Seconds</span></span>
                                                                </div>
                                                                0 Bid
                                                                <div class="timerwrapper">
                                                                    <div class="shrinking"></div>
                                                                </div>
                                                                <br>

                                                                <div class="add-links-wrap">
                                                                    <div class="add-links  clearfix">
                                                                        <a rel="nofollow"
                                                                           href="http://www.eoction.com/product/2-91ct-blue-topaz-black-spinel-necklaces-sterling-silver-w18/"
                                                                           data-quantity="1" data-product_id="18510"
                                                                           data-product_sku="I-CSP3019BUTOPBLP-WSL"
                                                                           class="button product_type_auction add_to_cart_button">Bid
                                                                            now</a>
                                                                        <div class="yith-wcwl-add-to-wishlist add-to-wishlist-18510">
                                                                            <div class="yith-wcwl-add-button show"
                                                                                 style="display:block">
                                                                                <a href="http://www.eoction.com/?add_to_wishlist=18510"
                                                                                   rel="nofollow"
                                                                                   data-product-id="18510"
                                                                                   data-product-type="auction"
                                                                                   class="add_to_wishlist">
                                                                                    Add to Wishlist</a>
                                                                                <span class="ajax-loading"></span>
                                                                            </div>
                                                                            <div class="yith-wcwl-wishlistaddedbrowse hide"
                                                                                 style="display:none;">
                                                                                <span class="feedback">Product added!</span>
                                                                                <a href="http://www.eoction.com/wishlist/view/"
                                                                                   rel="nofollow">
                                                                                    Browse Wishlist </a>
                                                                            </div>

                                                                            <div class="yith-wcwl-wishlistexistsbrowse hide"
                                                                                 style="display:none">
                                                                                <span class="feedback">The product is already in the wishlist!</span>
                                                                                <a href="http://www.eoction.com/wishlist/view/"
                                                                                   rel="nofollow">
                                                                                    Browse Wishlist </a>
                                                                            </div>

                                                                            <div style="clear:both"></div>
                                                                            <div class="yith-wcwl-wishlistaddresponse"></div>

                                                                        </div>

                                                                        <div class="clear"></div>
                                                                        <div class="quickview" data-id="18510"
                                                                             title="Quick View">Quick View
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </li>

                                                            <li class="show-wq-onimage post-18508 product type-product status-publish has-post-thumbnail product_cat-necklace product_shipping_class-204  instock sold-individually shipping-taxable purchasable product-type-auction">
                                                                <div class="product-image">
                                                                    <a href="http://www.eoction.com/" class="quickview"
                                                                       data-id="18508" "="">
                                                                    <div class="labels">
                                                                        <div data-link="http://www.eoction.com/cart-2/"
                                                                             class="viewcart  viewcart-18508"
                                                                             title="View Cart"></div>
                                                                    </div>
                                                                    <div class="inner"><img width="500" height="500"
                                                                                            src="./EOCTION_files/M-JTV-IDA205-1-500x500.jpg"
                                                                                            class=" wp-post-image"
                                                                                            alt="M-JTV-IDA205-1"
                                                                                            srcset="http://www.eoction.com/wp-content/uploads/2016/08/M-JTV-IDA205-1.jpg 500w, http://www.eoction.com/wp-content/uploads/2016/08/M-JTV-IDA205-1-150x150.jpg 150w, http://www.eoction.com/wp-content/uploads/2016/08/M-JTV-IDA205-1-300x300.jpg 300w, http://www.eoction.com/wp-content/uploads/2016/08/M-JTV-IDA205-1-120x120.jpg 120w, http://www.eoction.com/wp-content/uploads/2016/08/M-JTV-IDA205-1-367x367.jpg 367w, http://www.eoction.com/wp-content/uploads/2016/08/M-JTV-IDA205-1-85x85.jpg 85w, http://www.eoction.com/wp-content/uploads/2016/08/M-JTV-IDA205-1-50x50.jpg 50w"
                                                                                            sizes="(max-width: 500px) 100vw, 500px">
                                                                    </div>
                                                                    <span class="auction-bage"></span>
                                                                    </a>

                                                                    <div class="links-on-image">
                                                                        <div class="add-links-wrap">
                                                                            <div class="add-links  clearfix">
                                                                                <a rel="nofollow"
                                                                                   href="http://www.eoction.com/product/925-sterling-silver-pear-round-cut-blue-topaz-pendant-necklaces-with-chain/"
                                                                                   data-quantity="1"
                                                                                   data-product_id="18508"
                                                                                   data-product_sku="M-JTV_IDA205"
                                                                                   class="button product_type_auction add_to_cart_button">Bid
                                                                                    now</a>
                                                                                <div class="yith-wcwl-add-to-wishlist add-to-wishlist-18508">
                                                                                    <div class="yith-wcwl-add-button show"
                                                                                         style="display:block">
                                                                                        <a href="http://www.eoction.com/?add_to_wishlist=18508"
                                                                                           rel="nofollow"
                                                                                           data-product-id="18508"
                                                                                           data-product-type="auction"
                                                                                           class="add_to_wishlist">
                                                                                            Add to Wishlist</a>
                                                                                        <span class="ajax-loading"></span>
                                                                                    </div>
                                                                                    <div class="yith-wcwl-wishlistaddedbrowse hide"
                                                                                         style="display:none;">
                                                                                        <span class="feedback">Product added!</span>
                                                                                        <a href="http://www.eoction.com/wishlist/view/"
                                                                                           rel="nofollow">
                                                                                            Browse Wishlist</a>
                                                                                    </div>
                                                                                    <div class="yith-wcwl-wishlistexistsbrowse hide"
                                                                                         style="display:none">
                                                                                        <span class="feedback">The product is already in the wishlist!</span>
                                                                                        <a href="http://www.eoction.com/wishlist/view/"
                                                                                           rel="nofollow">
                                                                                            Browse Wishlist</a>
                                                                                    </div>
                                                                                    <div style="clear:both"></div>
                                                                                    <div class="yith-wcwl-wishlistaddresponse"></div>
                                                                                </div>

                                                                                <div class="clear"></div>
                                                                                <div class="quickview" data-id="18508"
                                                                                     title="Quick View">Quick View
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <a class="product-loop-title"
                                                                   href="http://www.eoction.com/product/925-sterling-silver-pear-round-cut-blue-topaz-pendant-necklaces-with-chain/">
                                                                    <h3>925 Sterling Silver Pear &amp; Round Cut Blue
                                                                        Topaz Pendant Necklaces With Chain</h3></a>
    
																	<span class="price">
																		<span class="auction-price"
                                                                              data-auction-id="18508" data-bid=""
                                                                              data-status="running">
																			<span class="current auction">Starting bid:</span>
																			<span class="woocommerce-Price-amount amount">
																				<span class="woocommerce-Price-currencySymbol">$</span>5
																			</span>
																		</span>
																	</span>
                                                                <div>Shipping: $8</div>
                                                                <span class="time-left">Time left</span>
                                                                <div class="auction-time-countdown hasCountdown"
                                                                     data-time="1475895600" data-auctionid="18508"
                                                                     data-format="HMS"><span
                                                                        class="countdown_row countdown_show3"><span
                                                                        class="countdown_section"><span
                                                                        class="countdown_amount">39</span><br>Hours</span><span
                                                                        class="countdown_section"><span
                                                                        class="countdown_amount">26</span><br>Minutes</span><span
                                                                        class="countdown_section"><span
                                                                        class="countdown_amount">17</span><br>Seconds</span></span>
                                                                </div>
                                                                0 Bid
                                                                <div class="timerwrapper">
                                                                    <div class="shrinking"></div>
                                                                </div>
                                                                <br>
                                                                <div class="add-links-wrap">
                                                                    <div class="add-links  clearfix">
                                                                        <a rel="nofollow"
                                                                           href="http://www.eoction.com/product/925-sterling-silver-pear-round-cut-blue-topaz-pendant-necklaces-with-chain/"
                                                                           data-quantity="1" data-product_id="18508"
                                                                           data-product_sku="M-JTV_IDA205"
                                                                           class="button product_type_auction add_to_cart_button">Bid
                                                                            now</a>
                                                                        <div class="yith-wcwl-add-to-wishlist add-to-wishlist-18508">
                                                                            <div class="yith-wcwl-add-button show"
                                                                                 style="display:block">
                                                                                <a href="http://www.eoction.com/?add_to_wishlist=18508"
                                                                                   rel="nofollow"
                                                                                   data-product-id="18508"
                                                                                   data-product-type="auction"
                                                                                   class="add_to_wishlist">
                                                                                    Add to Wishlist</a>
                                                                                <span class="ajax-loading"></span>
                                                                            </div>

                                                                            <div class="yith-wcwl-wishlistaddedbrowse hide"
                                                                                 style="display:none;">
                                                                                <span class="feedback">Product added!</span>
                                                                                <a href="http://www.eoction.com/wishlist/view/"
                                                                                   rel="nofollow">
                                                                                    Browse Wishlist</a>
                                                                            </div>

                                                                            <div class="yith-wcwl-wishlistexistsbrowse hide"
                                                                                 style="display:none">
                                                                                <span class="feedback">The product is already in the wishlist!</span>
                                                                                <a href="http://www.eoction.com/wishlist/view/"
                                                                                   rel="nofollow">
                                                                                    Browse Wishlist</a>
                                                                            </div>

                                                                            <div style="clear:both"></div>
                                                                            <div class="yith-wcwl-wishlistaddresponse"></div>
                                                                        </div>

                                                                        <div class="clear"></div>
                                                                        <div class="quickview" data-id="18508"
                                                                             title="Quick View">Quick View
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </li>

                                                            <li class="show-wq-onimage pcols-xs-first post-18506 product type-product status-publish has-post-thumbnail product_cat-necklace product_shipping_class-201  instock sale sold-individually shipping-taxable purchasable product-type-auction">
                                                                <div class="product-image">
                                                                    <a href="http://www.eoction.com/" class="quickview"
                                                                       data-id="18506" "="">
                                                                    <div class="labels">
                                                                        <div class="onsale">-80%</div>
                                                                        <div data-link="http://www.eoction.com/cart-2/"
                                                                             class="viewcart  viewcart-18506"
                                                                             title="View Cart"></div>
                                                                    </div>
                                                                    <div class="inner"><img width="500" height="500"
                                                                                            src="./EOCTION_files/371096551287-500x500.jpg"
                                                                                            class=" wp-post-image"
                                                                                            alt="371096551287"
                                                                                            srcset="http://www.eoction.com/wp-content/uploads/2016/08/371096551287-500x500.jpg 500w, http://www.eoction.com/wp-content/uploads/2016/08/371096551287-150x150.jpg 150w, http://www.eoction.com/wp-content/uploads/2016/08/371096551287-300x300.jpg 300w, http://www.eoction.com/wp-content/uploads/2016/08/371096551287-768x768.jpg 768w, http://www.eoction.com/wp-content/uploads/2016/08/371096551287-600x600.jpg 600w, http://www.eoction.com/wp-content/uploads/2016/08/371096551287-120x120.jpg 120w, http://www.eoction.com/wp-content/uploads/2016/08/371096551287-560x560.jpg 560w, http://www.eoction.com/wp-content/uploads/2016/08/371096551287-367x367.jpg 367w, http://www.eoction.com/wp-content/uploads/2016/08/371096551287-85x85.jpg 85w, http://www.eoction.com/wp-content/uploads/2016/08/371096551287-50x50.jpg 50w, http://www.eoction.com/wp-content/uploads/2016/08/371096551287.jpg 1000w"
                                                                                            sizes="(max-width: 500px) 100vw, 500px">
                                                                    </div>
                                                                    <span class="auction-bage"></span>
                                                                    </a>
                                                                    <div class="links-on-image">
                                                                        <div class="add-links-wrap">
                                                                            <div class="add-links  clearfix">
                                                                                <a rel="nofollow"
                                                                                   href="http://www.eoction.com/product/heart-cut-3-05ct-created-blue-topaz-pendant-necklace-popular-sterling-silver/"
                                                                                   data-quantity="1"
                                                                                   data-product_id="18506"
                                                                                   data-product_sku="M-CSP10115"
                                                                                   class="button product_type_auction add_to_cart_button">Bid
                                                                                    now</a>
                                                                                <div class="yith-wcwl-add-to-wishlist add-to-wishlist-18506">
                                                                                    <div class="yith-wcwl-add-button show"
                                                                                         style="display:block">
                                                                                        <a href="http://www.eoction.com/?add_to_wishlist=18506"
                                                                                           rel="nofollow"
                                                                                           data-product-id="18506"
                                                                                           data-product-type="auction"
                                                                                           class="add_to_wishlist">
                                                                                            Add to Wishlist</a>
                                                                                        <span class="ajax-loading"></span>
                                                                                    </div>
                                                                                    <div class="yith-wcwl-wishlistaddedbrowse hide"
                                                                                         style="display:none;">
                                                                                        <span class="feedback">Product added!</span>
                                                                                        <a href="http://www.eoction.com/wishlist/view/"
                                                                                           rel="nofollow">
                                                                                            Browse Wishlist</a>
                                                                                    </div>
                                                                                    <div class="yith-wcwl-wishlistexistsbrowse hide"
                                                                                         style="display:none">
                                                                                        <span class="feedback">The product is already in the wishlist!</span>
                                                                                        <a href="http://www.eoction.com/wishlist/view/"
                                                                                           rel="nofollow">
                                                                                            Browse Wishlist</a>
                                                                                    </div>
                                                                                    <div style="clear:both"></div>
                                                                                    <div class="yith-wcwl-wishlistaddresponse"></div>
                                                                                </div>

                                                                                <div class="clear"></div>
                                                                                <div class="quickview" data-id="18506"
                                                                                     title="Quick View">Quick View
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <a class="product-loop-title"
                                                                   href="http://www.eoction.com/product/heart-cut-3-05ct-created-blue-topaz-pendant-necklace-popular-sterling-silver/">
                                                                    <h3>Heart Cut 3.05Ct Created Blue Topaz Pendant
                                                                        Necklace Popular Sterling Silver</h3></a>
    
																	<span class="price">
																		<span class="auction-price"
                                                                              data-auction-id="18506" data-bid=""
                                                                              data-status="running">
																			<span class="current auction">Starting bid:</span>
																			<span class="woocommerce-Price-amount amount">
																				<span class="woocommerce-Price-currencySymbol">$</span>10
																			</span>
																		</span>
																	</span>
                                                                <div>Shipping: $10</div>
                                                                <span class="time-left">Time left</span>
                                                                <div class="auction-time-countdown hasCountdown"
                                                                     data-time="1475902800" data-auctionid="18506"
                                                                     data-format="HMS"><span
                                                                        class="countdown_row countdown_show3"><span
                                                                        class="countdown_section"><span
                                                                        class="countdown_amount">41</span><br>Hours</span><span
                                                                        class="countdown_section"><span
                                                                        class="countdown_amount">26</span><br>Minutes</span><span
                                                                        class="countdown_section"><span
                                                                        class="countdown_amount">17</span><br>Seconds</span></span>
                                                                </div>
                                                                0 Bid
                                                                <div class="timerwrapper">
                                                                    <div class="shrinking"></div>
                                                                </div>
                                                                <br>

                                                                <div class="add-links-wrap">
                                                                    <div class="add-links  clearfix">
                                                                        <a rel="nofollow"
                                                                           href="http://www.eoction.com/product/heart-cut-3-05ct-created-blue-topaz-pendant-necklace-popular-sterling-silver/"
                                                                           data-quantity="1" data-product_id="18506"
                                                                           data-product_sku="M-CSP10115"
                                                                           class="button product_type_auction add_to_cart_button">Bid
                                                                            now</a>
                                                                        <div class="yith-wcwl-add-to-wishlist add-to-wishlist-18506">
                                                                            <div class="yith-wcwl-add-button show"
                                                                                 style="display:block">
                                                                                <a href="http://www.eoction.com/?add_to_wishlist=18506"
                                                                                   rel="nofollow"
                                                                                   data-product-id="18506"
                                                                                   data-product-type="auction"
                                                                                   class="add_to_wishlist">
                                                                                    dd to Wishlist</a>
                                                                                <span class="ajax-loading"></span>
                                                                            </div>

                                                                            <div class="yith-wcwl-wishlistaddedbrowse hide"
                                                                                 style="display:none;">
                                                                                <span class="feedback">Product added!</span>
                                                                                <a href="http://www.eoction.com/wishlist/view/"
                                                                                   rel="nofollow">
                                                                                    Browse Wishlist</a>
                                                                            </div>

                                                                            <div class="yith-wcwl-wishlistexistsbrowse hide"
                                                                                 style="display:none">
                                                                                <span class="feedback">The product is already in the wishlist!</span>
                                                                                <a href="http://www.eoction.com/wishlist/view/"
                                                                                   rel="nofollow">
                                                                                    Browse Wishlist</a>
                                                                            </div>

                                                                            <div style="clear:both"></div>
                                                                            <div class="yith-wcwl-wishlistaddresponse"></div>

                                                                        </div>

                                                                        <div class="clear"></div>
                                                                        <div class="quickview" data-id="18506"
                                                                             title="Quick View">Quick View
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </li>

                                                            <li class="show-wq-onimage post-18503 product type-product status-publish has-post-thumbnail product_cat-necklace product_shipping_class-202  instock sale sold-individually shipping-taxable purchasable product-type-auction">
                                                                <div class="product-image">
                                                                    <a href="http://www.eoction.com/" class="quickview"
                                                                       data-id="18503" "="">
                                                                    <div class="labels">
                                                                        <div class="onsale">-80%</div>
                                                                        <div data-link="http://www.eoction.com/cart-2/"
                                                                             class="viewcart  viewcart-18503"
                                                                             title="View Cart"></div>
                                                                    </div>
                                                                    <div class="inner"><img width="500" height="500"
                                                                                            src="./EOCTION_files/301145060494-500x500.jpg"
                                                                                            class=" wp-post-image"
                                                                                            alt="301145060494"
                                                                                            srcset="http://www.eoction.com/wp-content/uploads/2016/08/301145060494-500x500.jpg 500w, http://www.eoction.com/wp-content/uploads/2016/08/301145060494-150x150.jpg 150w, http://www.eoction.com/wp-content/uploads/2016/08/301145060494-300x300.jpg 300w, http://www.eoction.com/wp-content/uploads/2016/08/301145060494-768x768.jpg 768w, http://www.eoction.com/wp-content/uploads/2016/08/301145060494-1024x1024.jpg 1024w, http://www.eoction.com/wp-content/uploads/2016/08/301145060494-600x600.jpg 600w, http://www.eoction.com/wp-content/uploads/2016/08/301145060494-120x120.jpg 120w, http://www.eoction.com/wp-content/uploads/2016/08/301145060494-560x560.jpg 560w, http://www.eoction.com/wp-content/uploads/2016/08/301145060494-367x367.jpg 367w, http://www.eoction.com/wp-content/uploads/2016/08/301145060494-85x85.jpg 85w, http://www.eoction.com/wp-content/uploads/2016/08/301145060494-50x50.jpg 50w, http://www.eoction.com/wp-content/uploads/2016/08/301145060494.jpg 1280w"
                                                                                            sizes="(max-width: 500px) 100vw, 500px">
                                                                    </div>
                                                                    <span class="auction-bage"></span>
                                                                    </a>
                                                                    <div class="links-on-image">
                                                                        <div class="add-links-wrap">
                                                                            <div class="add-links  clearfix">
                                                                                <a rel="nofollow"
                                                                                   href="http://www.eoction.com/product/peridot-celtic-pendant-9ct-gold-no-chain/"
                                                                                   data-quantity="1"
                                                                                   data-product_id="18503"
                                                                                   data-product_sku="M-CMP10107-YG9K"
                                                                                   class="button product_type_auction add_to_cart_button">Bid
                                                                                    now</a>
                                                                                <div class="yith-wcwl-add-to-wishlist add-to-wishlist-18503">
                                                                                    <div class="yith-wcwl-add-button show"
                                                                                         style="display:block">
                                                                                        <a href="http://www.eoction.com/?add_to_wishlist=18503"
                                                                                           rel="nofollow"
                                                                                           data-product-id="18503"
                                                                                           data-product-type="auction"
                                                                                           class="add_to_wishlist">
                                                                                            Add to Wishlist</a>
                                                                                        <span class="ajax-loading"></span>
                                                                                    </div>
                                                                                    <div class="yith-wcwl-wishlistaddedbrowse hide"
                                                                                         style="display:none;">
                                                                                        <span class="feedback">Product added!</span>
                                                                                        <a href="http://www.eoction.com/wishlist/view/"
                                                                                           rel="nofollow">
                                                                                            Browse Wishlist</a>
                                                                                    </div>
                                                                                    <div class="yith-wcwl-wishlistexistsbrowse hide"
                                                                                         style="display:none">
                                                                                        <span class="feedback">The product is already in the wishlist!</span>
                                                                                        <a href="http://www.eoction.com/wishlist/view/"
                                                                                           rel="nofollow">
                                                                                            Browse Wishlist</a></div>

                                                                                    <div style="clear:both"></div>
                                                                                    <div class="yith-wcwl-wishlistaddresponse"></div>
                                                                                </div>
                                                                                <div class="clear"></div>
                                                                                <div class="quickview" data-id="18503"
                                                                                     title="Quick View">Quick View
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <a class="product-loop-title"
                                                                   href="http://www.eoction.com/product/peridot-celtic-pendant-9ct-gold-no-chain/">
                                                                    <h3>PERIDOT Celtic PENDANT 9ct GOLD no chain</h3>
                                                                </a>
    
																	<span class="price">
																		<span class="auction-price"
                                                                              data-auction-id="18503" data-bid=""
                                                                              data-status="running">
																		<span class="current auction">Starting bid:</span>
																			<span class="woocommerce-Price-amount amount">
																				<span class="woocommerce-Price-currencySymbol">$</span>15
																			</span>
																		</span>
																	</span>
                                                                <div>Shipping: $12</div>
                                                                <span class="time-left">Time left</span>
                                                                <div class="auction-time-countdown hasCountdown"
                                                                     data-time="1475910000" data-auctionid="18503"
                                                                     data-format="HMS"><span
                                                                        class="countdown_row countdown_show3"><span
                                                                        class="countdown_section"><span
                                                                        class="countdown_amount">43</span><br>Hours</span><span
                                                                        class="countdown_section"><span
                                                                        class="countdown_amount">26</span><br>Minutes</span><span
                                                                        class="countdown_section"><span
                                                                        class="countdown_amount">17</span><br>Seconds</span></span>
                                                                </div>
                                                                0 Bid
                                                                <div class="timerwrapper">
                                                                    <div class="shrinking"></div>
                                                                </div>
                                                                <br>
                                                                <div class="add-links-wrap">
                                                                    <div class="add-links  clearfix">
                                                                        <a rel="nofollow"
                                                                           href="http://www.eoction.com/product/peridot-celtic-pendant-9ct-gold-no-chain/"
                                                                           data-quantity="1" data-product_id="18503"
                                                                           data-product_sku="M-CMP10107-YG9K"
                                                                           class="button product_type_auction add_to_cart_button">Bid
                                                                            now</a>
                                                                        <div class="yith-wcwl-add-to-wishlist add-to-wishlist-18503">
                                                                            <div class="yith-wcwl-add-button show"
                                                                                 style="display:block">
                                                                                <a href="http://www.eoction.com/?add_to_wishlist=18503"
                                                                                   rel="nofollow"
                                                                                   data-product-id="18503"
                                                                                   data-product-type="auction"
                                                                                   class="add_to_wishlist">
                                                                                    Add to Wishlist</a>
                                                                                <span class="ajax-loading"></span>
                                                                            </div>
                                                                            <div class="yith-wcwl-wishlistaddedbrowse hide"
                                                                                 style="display:none;">
                                                                                <span class="feedback">Product added!</span>
                                                                                <a href="http://www.eoction.com/wishlist/view/"
                                                                                   rel="nofollow">
                                                                                    Browse Wishlist</a>
                                                                            </div>
                                                                            <div class="yith-wcwl-wishlistexistsbrowse hide"
                                                                                 style="display:none">
                                                                                <span class="feedback">The product is already in the wishlist!</span>
                                                                                <a href="http://www.eoction.com/wishlist/view/"
                                                                                   rel="nofollow">
                                                                                    Browse Wishlist</a>
                                                                            </div>
                                                                            <div style="clear:both"></div>
                                                                            <div class="yith-wcwl-wishlistaddresponse"></div>
                                                                        </div>
                                                                        <div class="clear"></div>
                                                                        <div class="quickview" data-id="18503"
                                                                             title="Quick View">Quick View
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </li>

                                                            <li class="show-wq-onimage pcols-md-first pcols-xs-first post-18501 product type-product status-publish has-post-thumbnail product_cat-necklace product_shipping_class-203 last instock sale sold-individually shipping-taxable purchasable product-type-auction">
                                                                <div class="product-image">
                                                                    <a href="http://www.eoction.com/" class="quickview"
                                                                       data-id="18501" "="">
                                                                    <div class="labels">
                                                                        <div class="onsale">-80%</div>
                                                                        <div data-link="http://www.eoction.com/cart-2/"
                                                                             class="viewcart  viewcart-18501"
                                                                             title="View Cart"></div>
                                                                    </div>
                                                                    <div class="inner"><img width="500" height="500"
                                                                                            src="./EOCTION_files/281169019228-500x500.jpg"
                                                                                            class=" wp-post-image"
                                                                                            alt="281169019228"
                                                                                            srcset="http://www.eoction.com/wp-content/uploads/2016/08/281169019228-500x500.jpg 500w, http://www.eoction.com/wp-content/uploads/2016/08/281169019228-150x150.jpg 150w, http://www.eoction.com/wp-content/uploads/2016/08/281169019228-300x300.jpg 300w, http://www.eoction.com/wp-content/uploads/2016/08/281169019228-768x768.jpg 768w, http://www.eoction.com/wp-content/uploads/2016/08/281169019228-1024x1024.jpg 1024w, http://www.eoction.com/wp-content/uploads/2016/08/281169019228-600x600.jpg 600w, http://www.eoction.com/wp-content/uploads/2016/08/281169019228-120x120.jpg 120w, http://www.eoction.com/wp-content/uploads/2016/08/281169019228-560x560.jpg 560w, http://www.eoction.com/wp-content/uploads/2016/08/281169019228-367x367.jpg 367w, http://www.eoction.com/wp-content/uploads/2016/08/281169019228-85x85.jpg 85w, http://www.eoction.com/wp-content/uploads/2016/08/281169019228-50x50.jpg 50w, http://www.eoction.com/wp-content/uploads/2016/08/281169019228.jpg 1280w"
                                                                                            sizes="(max-width: 500px) 100vw, 500px">
                                                                    </div>
                                                                    <span class="auction-bage"></span>
                                                                    </a>

                                                                    <div class="links-on-image">
                                                                        <div class="add-links-wrap">
                                                                            <div class="add-links  clearfix">
                                                                                <a rel="nofollow"
                                                                                   href="http://www.eoction.com/product/cushion-cut-pink-topaz-birth-gem-stone-halo-pendant-necklace-sterling-silver/"
                                                                                   data-quantity="1"
                                                                                   data-product_id="18501"
                                                                                   data-product_sku="M-CSP10160"
                                                                                   class="button product_type_auction add_to_cart_button">Bid
                                                                                    now</a>
                                                                                <div class="yith-wcwl-add-to-wishlist add-to-wishlist-18501">
                                                                                    <div class="yith-wcwl-add-button show"
                                                                                         style="display:block">
                                                                                        <a href="http://www.eoction.com/?add_to_wishlist=18501"
                                                                                           rel="nofollow"
                                                                                           data-product-id="18501"
                                                                                           data-product-type="auction"
                                                                                           class="add_to_wishlist">
                                                                                            Add to Wishlist</a>
                                                                                        <span class="ajax-loading"></span>
                                                                                    </div>
                                                                                    <div class="yith-wcwl-wishlistaddedbrowse hide"
                                                                                         style="display:none;">
                                                                                        <span class="feedback">Product added!</span>
                                                                                        <a href="http://www.eoction.com/wishlist/view/"
                                                                                           rel="nofollow">
                                                                                            Browse Wishlist</a>
                                                                                    </div>
                                                                                    <div class="yith-wcwl-wishlistexistsbrowse hide"
                                                                                         style="display:none">
                                                                                        <span class="feedback">The product is already in the wishlist!</span>
                                                                                        <a href="http://www.eoction.com/wishlist/view/"
                                                                                           rel="nofollow">
                                                                                            Browse Wishlist</a>
                                                                                    </div>
                                                                                    <div style="clear:both"></div>
                                                                                    <div class="yith-wcwl-wishlistaddresponse"></div>
                                                                                </div>
                                                                                <div class="clear"></div>
                                                                                <div class="quickview" data-id="18501"
                                                                                     title="Quick View">Quick View
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <a class="product-loop-title"
                                                                   href="http://www.eoction.com/product/cushion-cut-pink-topaz-birth-gem-stone-halo-pendant-necklace-sterling-silver/">
                                                                    <h3>Cushion Cut Pink Topaz Birth Gem stone Halo
                                                                        Pendant Necklace Sterling Silver</h3></a>
    
																	<span class="price">
																		<span class="auction-price"
                                                                              data-auction-id="18501" data-bid=""
                                                                              data-status="running">
																		<span class="current auction">Starting bid:</span>
																			<span class="woocommerce-Price-amount amount">
																				<span class="woocommerce-Price-currencySymbol">$</span>20
																			</span>
																		</span>
																	</span>
                                                                <div>Shipping: $15</div>
                                                                <span class="time-left">Time left</span>
                                                                <div class="auction-time-countdown hasCountdown"
                                                                     data-time="1475917200" data-auctionid="18501"
                                                                     data-format="HMS"><span
                                                                        class="countdown_row countdown_show3"><span
                                                                        class="countdown_section"><span
                                                                        class="countdown_amount">45</span><br>Hours</span><span
                                                                        class="countdown_section"><span
                                                                        class="countdown_amount">26</span><br>Minutes</span><span
                                                                        class="countdown_section"><span
                                                                        class="countdown_amount">17</span><br>Seconds</span></span>
                                                                </div>
                                                                0 Bid
                                                                <div class="timerwrapper">
                                                                    <div class="shrinking"></div>
                                                                </div>
                                                                <br>
                                                                <div class="add-links-wrap">
                                                                    <div class="add-links  clearfix">
                                                                        <a rel="nofollow"
                                                                           href="http://www.eoction.com/product/cushion-cut-pink-topaz-birth-gem-stone-halo-pendant-necklace-sterling-silver/"
                                                                           data-quantity="1" data-product_id="18501"
                                                                           data-product_sku="M-CSP10160"
                                                                           class="button product_type_auction add_to_cart_button">Bid
                                                                            now</a>
                                                                        <div class="yith-wcwl-add-to-wishlist add-to-wishlist-18501">
                                                                            <div class="yith-wcwl-add-button show"
                                                                                 style="display:block">
                                                                                <a href="http://www.eoction.com/?add_to_wishlist=18501"
                                                                                   rel="nofollow"
                                                                                   data-product-id="18501"
                                                                                   data-product-type="auction"
                                                                                   class="add_to_wishlist">
                                                                                    Add to Wishlist</a>
                                                                                <span class="ajax-loading"></span>
                                                                            </div>
                                                                            <div class="yith-wcwl-wishlistaddedbrowse hide"
                                                                                 style="display:none;">
                                                                                <span class="feedback">Product added!</span>
                                                                                <a href="http://www.eoction.com/wishlist/view/"
                                                                                   rel="nofollow">
                                                                                    Browse Wishlist</a>
                                                                            </div>
                                                                            <div class="yith-wcwl-wishlistexistsbrowse hide"
                                                                                 style="display:none">
                                                                                <span class="feedback">The product is already in the wishlist!</span>
                                                                                <a href="http://www.eoction.com/wishlist/view/"
                                                                                   rel="nofollow">
                                                                                    Browse Wishlist</a>
                                                                            </div>
                                                                            <div style="clear:both"></div>
                                                                            <div class="yith-wcwl-wishlistaddresponse"></div>
                                                                        </div>
                                                                        <div class="clear"></div>
                                                                        <div class="quickview" data-id="18501"
                                                                             title="Quick View">Quick View
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="vc_empty_space" style="height: 15px"><span
                                                    class="vc_empty_space_inner"></span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </article>
                        <div class=""></div>

                    </div>
                </div><!-- end main content -->
            </div>
        </div>
    </div><!-- end main -->

    <div class="footer-wrapper ">
        <div id="footer" class="footer-1">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-3">
                        <aside id="text-2" class="widget widget_text"><h3 class="widget-title">EOCTION</h3>
                            <div class="textwidget"><a href="http://www.eoction.com/#">About Us</a><br>
                                <a href="http://www.eoction.com/#">Terms &amp; Conditions</a><br>
                                <a href="http://www.eoction.com/#">Privacy Policy</a><br>
                                <a href="http://www.eoction.com/#">Store Directory</a>
                            </div>
                        </aside>
                    </div>
                    <div class="col-sm-12 col-md-3">
                        <aside id="text-3" class="widget widget_text"><h3 class="widget-title">CUSTOMER CARE</h3>
                            <div class="textwidget"><a href="http://www.eoction.com/#">How to Bid</a><br>
                                <a href="http://www.eoction.com/#">Payment</a><br>
                                <a href="http://www.eoction.com/#">Shipping &amp; Delivery</a><br>
                                <a href="http://www.eoction.com/#">Help Center</a><br>
                                <a href="http://www.eoction.com/#">FAQ</a><br>
                            </div>
                        </aside>
                    </div>
                    <div class="col-sm-12 col-md-3">
                        <aside id="contact-info-widget-2" class="widget contact-info"><h3 class="widget-title">Contact
                            Us</h3>
                            <div class="contact-info contact-info-block">
                                <ul class="contact-details">
                                    <li><i class="fa fa-map-marker"></i> <strong>Address:</strong> <span>1111 B ering Dr. Apt. 1303. Houston, TX 77057</span>
                                    </li>
                                    <li><i class="fa fa-phone"></i> <strong>Phone:</strong> <span>(123) 456-7890</span>
                                    </li>
                                    <li><i class="fa fa-envelope"></i> <strong>Email:</strong> <span><a
                                            href="mailto:mail@example.com">mail@example.com</a></span></li>
                                </ul>
                            </div>
                        </aside>
                    </div>
                    <div class="col-sm-12 col-md-3">
                        Newsletter
                        <div class="widget_wysija_cont">
                            <div id="msg-form-wysija-2" class="wysija-msg ajax"></div>
                            <form id="form-wysija-2" method="post" action="http://www.eoction.com/#wysija"
                                  class="widget_wysija">
                                <p class="wysija-paragraph">
                                    <label>Email <span class="wysija-required">*</span></label>
                                    <input type="text" name="wysija[user][email]"
                                           class="wysija-input validate[required,custom[email]]" title="Email" value="">
										<span class="abs-req">
											<input type="text" name="wysija[user][abs][email]"
                                                   class="wysija-input validated[abs][email]" value="">
										</span>
                                </p>
                                <input class="wysija-submit wysija-submit-field" type="submit" value="Subscribe!">
                                <input type="hidden" name="form_id" value="1">
                                <input type="hidden" name="action" value="save">
                                <input type="hidden" name="controller" value="subscribers">
                                <input type="hidden" value="1" name="wysija-page">
                                <input type="hidden" name="wysija[user_list][list_ids]" value="1">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="container">
                    <div class="footer-left">
							<span class="logo">
								<a href="http://www.eoction.com/" title="EOCTION - ">
									<img class="img-responsive" src="./EOCTION_files/logo-nfoot2.png" alt="EOCTION">
								</a>
							</span>
                        <aside id="follow-us-widget-2" class="widget follow-us">
                            <div class="share-links">
                                <a href="http://www.eoction.com/#" rel="nofollow" target="_blank" data-toggle="tooltip"
                                   data-placement="bottom" title="" class="share-facebook"
                                   data-original-title="Facebook">Facebook</a>
                                <a href="http://www.eoction.com/#" rel="nofollow" target="_blank" data-toggle="tooltip"
                                   data-placement="bottom" title="" class="share-twitter" data-original-title="Twitter">Twitter</a>
                                <a href="http://www.eoction.com/#" rel="nofollow" target="_blank" data-toggle="tooltip"
                                   data-placement="bottom" title="" class="share-linkedin"
                                   data-original-title="Linkedin">Linkedin</a>
                            </div>
                        </aside>
                    </div>
                    <div class="footer-center">
                        <img class="img-responsive" src="./EOCTION_files/paypal4.png" alt="Payment Gateways">
                    </div>
                    <div class="footer-right">© Copyright 2016. All Rights Reserved.</div>
                </div>
            </div>
        </div>
    </div>
</div><!-- end wrapper -->

<div class="panel-overlay"></div>
<div id="nav-panel" class="">
    <div class="menu-wrap">
        <ul id="menu-menu-new-1" class="mobile-menu accordion-menu">
            <li id="accordion-menu-item-18220" class="menu-item menu-item-type-custom menu-item-object-custom "><a
                    href="http://www.eoction.com/#" rel="nofollow" class="">Live Auctions<span class="tip"
                                                                                               style="background:#d90d03;"><span
                    class="tip-arrow" style="color:#d90d03;"></span>HOT SALE</span></a></li>
            <li id="accordion-menu-item-18050" class="menu-item menu-item-type-custom menu-item-object-custom "><a
                    href="http://www.eoction.com/#" rel="nofollow" class="">Live TV<span class="tip"
                                                                                         style="background:#d90d03;"><span
                    class="tip-arrow" style="color:#d90d03;"></span>SALE</span></a></li>
            <li id="accordion-menu-item-18452" class="menu-item menu-item-type-custom menu-item-object-custom "><a
                    href="http://www.eoction.com/shop/" rel="nofollow" class="">Online Shopping<span class="tip"
                                                                                                     style="background:#d90d03;"><span
                    class="tip-arrow" style="color:#d90d03;"></span>SALE</span></a></li>
        </ul>
    </div>
    <div class="menu-wrap">
        <ul id="menu-top-navigation-1" class="top-links accordion-menu show-arrow">
            <li id="accordion-menu-item-18399" class="menu-item menu-item-type-post_type menu-item-object-page "><a
                    href="http://www.eoction.com/my-account-2/" rel="nofollow" class="">My Account</a></li>
            <li id="accordion-menu-item-18400" class="menu-item menu-item-type-post_type menu-item-object-page "><a
                    href="http://www.eoction.com/wishlist-2/" rel="nofollow" class="">My Wishlist</a></li>
        </ul>
    </div>
</div>
<a href="http://www.eoction.com/#" id="nav-panel-close" class=""><i class="fa fa-close"></i></a>
<!--[if lt IE 9]>
<script src="http://www.eoction.com/wp-content/themes/porto/js/html5shiv.min.js"></script>
<script src="http://www.eoction.com/wp-content/themes/porto/js/respond.min.js"></script>
<![endif]-->