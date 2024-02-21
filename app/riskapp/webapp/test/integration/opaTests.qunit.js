sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'riskmanagement/riskapp/test/integration/FirstJourney',
		'riskmanagement/riskapp/test/integration/pages/RisksList',
		'riskmanagement/riskapp/test/integration/pages/RisksObjectPage'
    ],
    function(JourneyRunner, opaJourney, RisksList, RisksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('riskmanagement/riskapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheRisksList: RisksList,
					onTheRisksObjectPage: RisksObjectPage
                }
            },
            opaJourney.run
        );
    }
);