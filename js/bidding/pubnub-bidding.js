//var channelName = 
pubnub = new PubNub({
    publishKey: 'pub-c-aff9a28a-b826-4967-bd28-feec905e3904',
    subscribeKey: 'sub-c-a06dfe00-3223-11e7-b3fb-0619f8945a4f'
});

function sub() {
    pubnub.addListener({

        message: function(m) {
            // handle message
            var channelName = m.channel; // The channel for which the message belongs
            var channelGroup = m.subscription; // The channel group or wildcard subscription match (if exists)
            var pubTT = m.timetoken; // Publish timetoken
            var msg = m.message; // The Payload

            console.log(msg);
            $("#pubnub").html(msg.color);
        },
        presence: function(p) {
            // handle presence
            var action = p.action; // Can be join, leave, state-change or timeout
            var channelName = p.channel; // The channel for which the message belongs
            var occupancy = p.occupancy; // No. of users connected with the channel
            var state = p.state; // User State
            var channelGroup = p.subscription; //  The channel group or wildcard subscription match (if exists)
            var publishTime = p.timestamp; // Publish timetoken
            var timetoken = p.timetoken; // Current timetoken
            var uuid = p.uuid; // UUIDs of users who are connected with the channel
            console.log(action);
        },
        status: function(s) {
            // handle status
        }
    });

    pubnub.subscribe({
        channels: ['hello-world'],
        connect: pub(),
        callback: function(m) {
            console.log('subscribe callback: ' + m);
        }
    });
}


function pub(c) {

    // (c) means if empty.
    var color = (c) ? c : "blue";

    console.log("Connected");

    pubnub.publish({
            channel: 'hello-world',
            message: { "color": color },
            sendByPost: false, // true to send via post
            storeInHistory: false, //override default storage options
        },
        function(status, response) {
            if (status.error) {
                // handle error
                console.log(status)
            } else {
                console.log(status);
                console.log(response);
                console.log("message Published w/ timetoken", response.timetoken)
            }
        }
    );

}

$(document).ready(function() {
    sub();
    pub();
});
