<?php

namespace app\module\products\models;

use Yii;

/**
 * This is the model class for table "{{%fry_products}}".
 *
 * @property integer $productid
 * @property integer $notfoundcount
 * @property string $prodname
 * @property integer $prodtype
 * @property string $prodcode
 * @property string $prodfile
 * @property string $proddesc
 * @property string $prodsearchkeywords
 * @property string $prodavailability
 * @property string $prodprice
 * @property string $prodcostprice
 * @property string $prodretailprice
 * @property string $prodsaleprice
 * @property string $prodcalculatedprice
 * @property integer $prodsortorder
 * @property integer $prodvisible
 * @property integer $prodfeatured
 * @property integer $prodvendorfeatured
 * @property string $prodrelatedproducts
 * @property integer $prodcurrentinv
 * @property integer $prodlowinv
 * @property integer $prodoptionsrequired
 * @property string $prodwarranty
 * @property string $prodweight
 * @property string $prodwidth
 * @property string $prodheight
 * @property string $proddepth
 * @property string $prodfixedshippingcost
 * @property integer $prodfreeshipping
 * @property integer $prodinvtrack
 * @property integer $prodratingtotal
 * @property integer $prodnumratings
 * @property integer $prodnumsold
 * @property integer $proddateadded
 * @property integer $prodbrandid
 * @property integer $prodnumviews
 * @property string $prodpagetitle
 * @property string $prodmetakeywords
 * @property string $prodmetadesc
 * @property string $prodlayoutfile
 * @property integer $prodvariationid
 * @property integer $prodallowpurchases
 * @property integer $prodhideprice
 * @property string $prodcallforpricinglabel
 * @property string $prodcatids
 * @property string $prodlastmodified
 * @property string $prodvendorid
 * @property integer $prodhastags
 * @property string $prodwrapoptions
 * @property string $prodconfigfields
 * @property integer $prodeventdaterequired
 * @property string $prodeventdatefieldname
 * @property integer $prodeventdatelimited
 * @property integer $prodeventdatelimitedtype
 * @property integer $prodeventdatelimitedstartdate
 * @property integer $prodeventdatelimitedenddate
 * @property string $prodmyobasset
 * @property string $prodmyobincome
 * @property string $prodmyobexpense
 * @property string $prodpeachtreegl
 * @property string $prodcondition
 * @property integer $prodshowcondition
 * @property integer $product_enable_optimizer
 * @property integer $prodpreorder
 * @property integer $prodreleasedate
 * @property integer $prodreleasedateremove
 * @property string $prodpreordermessage
 * @property string $prodminqty
 * @property string $prodmaxqty
 * @property string $tax_class_id
 * @property string $opengraph_type
 * @property string $opengraph_title
 * @property integer $opengraph_use_product_name
 * @property string $opengraph_description
 * @property integer $opengraph_use_meta_description
 * @property integer $opengraph_use_image
 * @property string $upc
 * @property integer $disable_google_checkout
 * @property integer $last_import
 * @property integer $google_ps_enabled
 * @property string $produrl
 * @property string $prodvideo
 * @property string $feat1
 * @property string $feat2
 * @property string $feat3
 * @property string $feat4
 * @property string $feat5
 * @property string $feat6
 * @property string $feat7
 * @property string $feat8
 * @property string $feat9
 * @property string $feat10
 * @property string $feat11
 * @property string $feat12
 * @property string $feat13
 * @property string $feat14
 * @property string $feat15
 * @property string $feat16
 * @property string $feat17
 * @property string $feat18
 * @property string $feat19
 * @property string $feat20
 * @property string $feat21
 * @property string $feat22
 * @property string $feat23
 * @property string $feat24
 * @property string $feat25
 * @property string $feat26
 * @property string $feat27
 * @property string $feat28
 * @property string $feat29
 * @property string $feat30
 * @property string $feat31
 * @property string $feat32
 * @property integer $companystock
 * @property string $stocklocation
 * @property string $lastpurchasedate
 * @property string $prodbullets
 * @property string $amazonasinusa
 * @property string $amazonprice
 * @property string $ifs_uid
 * @property integer $syncflag
 * @property integer $imagesverified
 * @property integer $to_check
 * @property string $amazonimageurls
 * @property string $ean
 * @property string $notes
 * @property string $itemspecifics
 * @property string $ebayprice
 * @property string $ebaycategoryid
 * @property string $ebaycategoryid2
 * @property string $storecategoryid
 * @property string $storecategoryid2
 * @property integer $ebayreviseflag
 * @property string $listingduration
 * @property string $ebaytitle
 * @property string $ebaylistingtype
 * @property string $ebayauctionstartprice
 * @property string $ebayreserveprice
 * @property integer $ebayenablebestoffer
 * @property integer $ebayenablebuyitnow
 * @property integer $scheduletime
 * @property integer $scheduleswitch
 * @property integer $prodebayschdulerequired
 * @property integer $relistebay
 * @property integer $ebaysiteid
 * @property string $images_on_ebay
 * @property string $conditionnote
 * @property string $altprodcode
 * @property string $altskutemp
 * @property integer $autopay
 * @property integer $post_html
 * @property integer $shipdiscdoprofileid
 * @property integer $shipdiscintprofileid
 * @property string $listonebayid
 * @property string $ebaytemplate
 * @property integer $ebayupdatepq
 * @property integer $handlingtime
 * @property string $minbestoffer
 * @property integer $ebay_qty
 * @property string $ebaysubtitle
 *
 * @property FryProductImages[] $fryProductImages
 */
class FryProducts extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%fry_products}}';
    }

    /**
     * @return \yii\db\Connection the database connection used by this AR class.
     */
    public static function getDb()
    {
        return Yii::$app->get('affy');
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['notfoundcount', 'prodtype', 'prodsortorder', 'prodvisible', 'prodfeatured', 'prodvendorfeatured', 'prodcurrentinv', 'prodlowinv', 'prodoptionsrequired', 'prodfreeshipping', 'prodinvtrack', 'prodratingtotal', 'prodnumratings', 'prodnumsold', 'proddateadded', 'prodbrandid', 'prodnumviews', 'prodvariationid', 'prodallowpurchases', 'prodhideprice', 'prodlastmodified', 'prodvendorid', 'prodhastags', 'prodeventdaterequired', 'prodeventdatelimited', 'prodeventdatelimitedtype', 'prodeventdatelimitedstartdate', 'prodeventdatelimitedenddate', 'prodshowcondition', 'product_enable_optimizer', 'prodpreorder', 'prodreleasedate', 'prodreleasedateremove', 'prodminqty', 'prodmaxqty', 'tax_class_id', 'opengraph_use_product_name', 'opengraph_use_meta_description', 'opengraph_use_image', 'disable_google_checkout', 'last_import', 'google_ps_enabled', 'companystock', 'syncflag', 'imagesverified', 'to_check', 'ebayreviseflag', 'ebayenablebestoffer', 'ebayenablebuyitnow', 'scheduletime', 'scheduleswitch', 'prodebayschdulerequired', 'relistebay', 'ebaysiteid', 'autopay', 'post_html', 'shipdiscdoprofileid', 'shipdiscintprofileid', 'ebayupdatepq', 'handlingtime', 'ebay_qty'], 'integer'],
            [['proddesc', 'prodsearchkeywords', 'prodwarranty', 'prodmetakeywords', 'prodmetadesc', 'prodcatids', 'prodwrapoptions', 'prodcondition', 'opengraph_description', 'prodbullets', 'amazonimageurls', 'images_on_ebay'], 'string'],
            [['prodprice', 'prodcostprice', 'prodretailprice', 'prodsaleprice', 'prodcalculatedprice', 'prodweight', 'prodwidth', 'prodheight', 'proddepth', 'prodfixedshippingcost', 'amazonprice', 'ebayprice', 'ebayauctionstartprice', 'ebayreserveprice', 'minbestoffer'], 'number'],
            [['prodcatids', 'stocklocation', 'lastpurchasedate', 'prodbullets', 'ifs_uid', 'amazonimageurls', 'ean', 'notes', 'images_on_ebay'], 'required'],
            [['prodname', 'prodcode', 'prodfile', 'prodavailability', 'prodrelatedproducts', 'prodpagetitle', 'prodpreordermessage', 'opengraph_title'], 'string', 'max' => 250],
            [['prodlayoutfile'], 'string', 'max' => 50],
            [['prodcallforpricinglabel'], 'string', 'max' => 200],
            [['prodconfigfields', 'prodeventdatefieldname', 'conditionnote', 'altprodcode'], 'string', 'max' => 255],
            [['prodmyobasset', 'prodmyobincome', 'prodmyobexpense', 'prodpeachtreegl'], 'string', 'max' => 20],
            [['opengraph_type', 'ifs_uid'], 'string', 'max' => 15],
            [['upc', 'stocklocation', 'amazonasinusa', 'ean', 'ebaylistingtype', 'altskutemp'], 'string', 'max' => 32],
            [['produrl'], 'string', 'max' => 768],
            [['prodvideo', 'notes'], 'string', 'max' => 1024],
            [['feat1', 'feat2', 'feat3', 'feat4', 'feat5', 'feat6', 'feat7', 'feat8', 'feat9', 'feat10', 'feat11', 'feat12', 'feat13', 'feat14', 'feat15', 'feat16', 'feat17', 'feat18', 'feat19', 'feat20', 'feat21', 'feat22', 'feat23', 'feat24', 'feat25', 'feat26', 'feat27', 'feat28', 'feat29', 'feat30', 'feat31', 'feat32'], 'string', 'max' => 256],
            [['lastpurchasedate', 'listingduration', 'listonebayid', 'ebaytemplate'], 'string', 'max' => 128],
            [['itemspecifics'], 'string', 'max' => 512],
            [['ebaycategoryid', 'ebaycategoryid2', 'storecategoryid', 'storecategoryid2'], 'string', 'max' => 16],
            [['ebaytitle'], 'string', 'max' => 80],
            [['ebaysubtitle'], 'string', 'max' => 55],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'productid' => 'Productid',
            'notfoundcount' => 'Notfoundcount',
            'prodname' => 'Prodname',
            'prodtype' => 'Prodtype',
            'prodcode' => 'Prodcode',
            'prodfile' => 'Prodfile',
            'proddesc' => 'Proddesc',
            'prodsearchkeywords' => 'Prodsearchkeywords',
            'prodavailability' => 'Prodavailability',
            'prodprice' => 'Prodprice',
            'prodcostprice' => 'Prodcostprice',
            'prodretailprice' => 'Prodretailprice',
            'prodsaleprice' => 'Prodsaleprice',
            'prodcalculatedprice' => 'Prodcalculatedprice',
            'prodsortorder' => 'Prodsortorder',
            'prodvisible' => 'Prodvisible',
            'prodfeatured' => 'Prodfeatured',
            'prodvendorfeatured' => 'Prodvendorfeatured',
            'prodrelatedproducts' => 'Prodrelatedproducts',
            'prodcurrentinv' => 'Prodcurrentinv',
            'prodlowinv' => 'Prodlowinv',
            'prodoptionsrequired' => 'Prodoptionsrequired',
            'prodwarranty' => 'Prodwarranty',
            'prodweight' => 'Prodweight',
            'prodwidth' => 'Prodwidth',
            'prodheight' => 'Prodheight',
            'proddepth' => 'Proddepth',
            'prodfixedshippingcost' => 'Prodfixedshippingcost',
            'prodfreeshipping' => 'Prodfreeshipping',
            'prodinvtrack' => 'Prodinvtrack',
            'prodratingtotal' => 'Prodratingtotal',
            'prodnumratings' => 'Prodnumratings',
            'prodnumsold' => 'Prodnumsold',
            'proddateadded' => 'Proddateadded',
            'prodbrandid' => 'Prodbrandid',
            'prodnumviews' => 'Prodnumviews',
            'prodpagetitle' => 'Prodpagetitle',
            'prodmetakeywords' => 'Prodmetakeywords',
            'prodmetadesc' => 'Prodmetadesc',
            'prodlayoutfile' => 'Prodlayoutfile',
            'prodvariationid' => 'Prodvariationid',
            'prodallowpurchases' => 'Prodallowpurchases',
            'prodhideprice' => 'Prodhideprice',
            'prodcallforpricinglabel' => 'Prodcallforpricinglabel',
            'prodcatids' => 'Prodcatids',
            'prodlastmodified' => 'Prodlastmodified',
            'prodvendorid' => 'Prodvendorid',
            'prodhastags' => 'Prodhastags',
            'prodwrapoptions' => 'Prodwrapoptions',
            'prodconfigfields' => 'Prodconfigfields',
            'prodeventdaterequired' => 'Prodeventdaterequired',
            'prodeventdatefieldname' => 'Prodeventdatefieldname',
            'prodeventdatelimited' => 'Prodeventdatelimited',
            'prodeventdatelimitedtype' => 'Prodeventdatelimitedtype',
            'prodeventdatelimitedstartdate' => 'Prodeventdatelimitedstartdate',
            'prodeventdatelimitedenddate' => 'Prodeventdatelimitedenddate',
            'prodmyobasset' => 'Prodmyobasset',
            'prodmyobincome' => 'Prodmyobincome',
            'prodmyobexpense' => 'Prodmyobexpense',
            'prodpeachtreegl' => 'Prodpeachtreegl',
            'prodcondition' => 'Prodcondition',
            'prodshowcondition' => 'Prodshowcondition',
            'product_enable_optimizer' => 'Product Enable Optimizer',
            'prodpreorder' => 'Prodpreorder',
            'prodreleasedate' => 'Prodreleasedate',
            'prodreleasedateremove' => 'Prodreleasedateremove',
            'prodpreordermessage' => 'Prodpreordermessage',
            'prodminqty' => 'Prodminqty',
            'prodmaxqty' => 'Prodmaxqty',
            'tax_class_id' => 'Tax Class ID',
            'opengraph_type' => 'Opengraph Type',
            'opengraph_title' => 'Opengraph Title',
            'opengraph_use_product_name' => 'Opengraph Use Product Name',
            'opengraph_description' => 'Opengraph Description',
            'opengraph_use_meta_description' => 'Opengraph Use Meta Description',
            'opengraph_use_image' => 'Opengraph Use Image',
            'upc' => 'Upc',
            'disable_google_checkout' => 'Disable Google Checkout',
            'last_import' => 'Last Import',
            'google_ps_enabled' => 'Google Ps Enabled',
            'produrl' => 'Produrl',
            'prodvideo' => 'Prodvideo',
            'feat1' => 'Feat1',
            'feat2' => 'Feat2',
            'feat3' => 'Feat3',
            'feat4' => 'Feat4',
            'feat5' => 'Feat5',
            'feat6' => 'Feat6',
            'feat7' => 'Feat7',
            'feat8' => 'Feat8',
            'feat9' => 'Feat9',
            'feat10' => 'Feat10',
            'feat11' => 'Feat11',
            'feat12' => 'Feat12',
            'feat13' => 'Feat13',
            'feat14' => 'Feat14',
            'feat15' => 'Feat15',
            'feat16' => 'Feat16',
            'feat17' => 'Feat17',
            'feat18' => 'Feat18',
            'feat19' => 'Feat19',
            'feat20' => 'Feat20',
            'feat21' => 'Feat21',
            'feat22' => 'Feat22',
            'feat23' => 'Feat23',
            'feat24' => 'Feat24',
            'feat25' => 'Feat25',
            'feat26' => 'Feat26',
            'feat27' => 'Feat27',
            'feat28' => 'Feat28',
            'feat29' => 'Feat29',
            'feat30' => 'Feat30',
            'feat31' => 'Feat31',
            'feat32' => 'Feat32',
            'companystock' => 'Companystock',
            'stocklocation' => 'Stocklocation',
            'lastpurchasedate' => 'Lastpurchasedate',
            'prodbullets' => 'Prodbullets',
            'amazonasinusa' => 'Amazonasinusa',
            'amazonprice' => 'Amazonprice',
            'ifs_uid' => 'Ifs Uid',
            'syncflag' => 'Syncflag',
            'imagesverified' => 'Imagesverified',
            'to_check' => 'To Check',
            'amazonimageurls' => 'Amazonimageurls',
            'ean' => 'Ean',
            'notes' => 'Notes',
            'itemspecifics' => 'Itemspecifics',
            'ebayprice' => 'Ebayprice',
            'ebaycategoryid' => 'Ebaycategoryid',
            'ebaycategoryid2' => 'Ebaycategoryid2',
            'storecategoryid' => 'Storecategoryid',
            'storecategoryid2' => 'Storecategoryid2',
            'ebayreviseflag' => 'Ebayreviseflag',
            'listingduration' => 'Listingduration',
            'ebaytitle' => 'Ebaytitle',
            'ebaylistingtype' => 'Ebaylistingtype',
            'ebayauctionstartprice' => 'Ebayauctionstartprice',
            'ebayreserveprice' => 'Ebayreserveprice',
            'ebayenablebestoffer' => 'Ebayenablebestoffer',
            'ebayenablebuyitnow' => 'Ebayenablebuyitnow',
            'scheduletime' => 'Scheduletime',
            'scheduleswitch' => 'Scheduleswitch',
            'prodebayschdulerequired' => 'Prodebayschdulerequired',
            'relistebay' => 'Relistebay',
            'ebaysiteid' => 'Ebaysiteid',
            'images_on_ebay' => 'Images On Ebay',
            'conditionnote' => 'Conditionnote',
            'altprodcode' => 'Altprodcode',
            'altskutemp' => 'Altskutemp',
            'autopay' => 'Autopay',
            'post_html' => 'Post Html',
            'shipdiscdoprofileid' => 'Shipdiscdoprofileid',
            'shipdiscintprofileid' => 'Shipdiscintprofileid',
            'listonebayid' => 'Listonebayid',
            'ebaytemplate' => 'Ebaytemplate',
            'ebayupdatepq' => 'Ebayupdatepq',
            'handlingtime' => 'Handlingtime',
            'minbestoffer' => 'Minbestoffer',
            'ebay_qty' => 'Ebay Qty',
            'ebaysubtitle' => 'Ebaysubtitle',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getFryProductImages()
    {
        return $this->hasMany(FryProductImages::className(), ['imageprodid' => 'productid']);
    }

    /**
     * @param null $product_id
     * @return Images|mixed|null|string
     */
    public function getSingleImage($product_id = null)
    {
        $image = null;
        if ($product_id == null) {
            $images = $this->fryProductImages;
            if (is_array($images) && !empty($images)) {
                $image = $images[0]; //get only the first index
            }
        } else {
            $images = FryProductImages::find()
                ->where(['imageprodid' => $product_id])
                ->one();
            if ($images != null) {
                $image = $images;
            }
        }
        return $image;
    }
}
