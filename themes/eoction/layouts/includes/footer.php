<?php
use yii\helpers\Html;

?>

<footer class="footer">
    <!-- footer top -->
    <div class="row">
        <div class="col-sm-12 col-md-3">
            <h3 class="widget-title">EOCTION</h3>
            <div class="textwidget"><a href="http://www.eoction.com/#">About Us</a><br>
                <a href="http://www.eoction.com/#">Terms &amp; Conditions</a><br>
                <a href="http://www.eoction.com/#">Privacy Policy</a><br>
                <a href="http://www.eoction.com/#">Store Directory</a>
            </div>
        </div>
        <div class="col-sm-12 col-md-3">
            <h3 class="widget-title">CUSTOMER CARE</h3>
            <div class="textwidget"><a href="http://www.eoction.com/#">How to Bid</a><br>
                <a href="http://www.eoction.com/#">Payment</a><br>
                <a href="http://www.eoction.com/#">Shipping &amp; Delivery</a><br>
                <a href="http://www.eoction.com/#">Help Center</a><br>
                <a href="http://www.eoction.com/#">FAQ</a><br>
            </div>
        </div>
        <div class="col-sm-12 col-md-3">
            <h3 class="widget-title">Contact
                Us</h3>
            <div class="contact-info contact-info-block">
                <ul class="list-group">
                    <li class="list-group-item"><i class="fa fa-map-marker"></i> <strong>Address:</strong> <span>1111 B ering Dr. Apt. 1303. Houston, TX 77057</span>
                    </li>
                    <li class="list-group-item"><i class="fa fa-phone"></i> <strong>Phone:</strong>
                        <span>(123) 456-7890</span>
                    </li>
                    <li class="list-group-item"><i class="fa fa-envelope"></i> <strong>Email:</strong> <span><a
                                href="mailto:mail@example.com">mail@example.com</a></span></li>
                </ul>
            </div>
        </div>
        <div class="col-sm-12 col-md-3">
            <h3>Newsletter</h3>
            <form class="form-inline">
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email">
                </div>
                <button type="submit" class="btn btn-default">Subscribe!</button>
            </form>
        </div>
    </div>
    <!-- /footer top -->
    <hr/>
    <!-- footer bottom -->
    <div class="row">
        <div class="col-md-3">
            <a href="./" title="<?= Yii::$app->name; ?>">
                <?php
                $imgLink = '@web/images/footer-logo.png';
                echo Html::img($imgLink, ['class' => 'img img-responsive', 'alt' => Yii::$app->name, 'title' => Yii::$app->name]);
                ?>
            </a>
        </div>

        <div class="col-md-3 social-icons">
            <li class="twitter" style="background-color: #f0f0f0">
                <a href="#" target="_blank" title="Twitter" rel="nofollow">Twitter</a>
            </li>

            <li class="facebook" style="background-color: #f0f0f0">
                <a href="#" target="_blank" title="Facebook" rel="nofollow">Facebook</a>
            </li>

            <li class="linkedin" style="background-color: #f0f0f0">
                <a href="#" target="_blank" title="LinkedIn" rel="nofollow">LinkedIn</a>
            </li>
        </div>

        <div class="col-md-3">
            <div class="centerBlock">
                <?php
                $imgLink = '@web/images/paypal.png';
                echo Html::img($imgLink, ['class' => 'img img-responsive', 'alt' => 'Payment Gateways', 'title' => 'Paypal Gateway']);
                ?>
            </div>
        </div>

        <div class="col-md-3">
            <span class="pull-right copyright" style="text-align: center;">&copy; <?= date('Y') ?> All Rights Reserved.</span>
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