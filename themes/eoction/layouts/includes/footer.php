<footer class="footer">
    <!-- footer top -->
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
    <!-- /footer top -->

    <!-- footer bottom -->
    <div class="row">
        <div class="col-md-4">
							<span class="logo">
								<a href="http://www.eoction.com/" title="<?= Yii::$app->name; ?>">
									<img class="img-responsive" src="./EOCTION_files/logo-nfoot2.png" alt="EOCTION">
								</a>
							</span>
            <aside id="follow-us-widget-2" class="widget follow-us">
                <div class="share-links">
                    <a href="#" rel="nofollow" target="_blank" data-toggle="tooltip"
                       data-placement="bottom" title="" class="share-facebook"
                       data-original-title="Facebook">Facebook</a>
                    <a href="#" rel="nofollow" target="_blank" data-toggle="tooltip"
                       data-placement="bottom" title="" class="share-twitter"
                       data-original-title="Twitter">Twitter</a>
                    <a href="#" rel="nofollow" target="_blank" data-toggle="tooltip"
                       data-placement="bottom" title="" class="share-linkedin"
                       data-original-title="Linkedin">Linkedin</a>
                </div>
            </aside>
        </div>

        <div class="col-md-4">
            <div class="centerBlock">
                <img class="img-responsive" src="./EOCTION_files/paypal4.png" alt="Payment Gateways">
            </div>
        </div>

        <div class="col-md-4">
            <span class="pull-right">&copy; <?= date('Y') ?> All Rights Reserved.</span>
        </div>
    </div>
    <!-- /footer bottom -->

    <!--
    <div class="container">
        <p class="pull-left">&copy; <?= date('Y') ?> All Rights Reserved</p>
        <p class="pull-right"><?= Yii::powered() ?></p>
    </div>
    -->
</footer>