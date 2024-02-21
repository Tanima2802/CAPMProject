using { riskmanagement as my } from '../db/schema';

Service RiskService {
    entity Risks @(restrict : [
{
grant : [ 'READ' ],
to : [ 'RiskViewer' ]
},
{
grant : [ '*' ],
to : [ 'RiskManager' ]
}
]) as projection on my.Risks;
    annotate Risks with @odata.draft.enabled;
    entity Mitigations @(restrict : [
{
grant : [ 'READ' ],
to : [ 'RiskViewer' ]
},
{
grant : [ '*' ],
to : [ 'RiskManager' ]
}
]) as projection on my.Mitigations
    annotate Mitigations with @odata.draft.enabled;
    entity Impacts as projection on my.Impacts
    entity BusinessPartners as projection on my.BusinessPartners;
}