<?php $this->registerJsFile('@web/js/bidding/pubnub-bidding.js'); ?>

<button onclick="pub('white')">white</button>
<button onclick="pub('blue')">blue</button>
<button onclick="pub('yellow')">blue</button>
<div id="pubnub" style="width: 200px; height: 200px;">Change my background</div>
