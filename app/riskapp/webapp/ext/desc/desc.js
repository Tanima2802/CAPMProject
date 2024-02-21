sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        Desc: function(oEvent) {
            MessageToast.show("Custom handler invoked.");
        }
    };
});
