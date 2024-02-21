using RiskService as service from '../../srv/service';

annotate service.Risks with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Title',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Owner',
            Value : owner,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Business Partner',
            Value : bp_BusinessPartner,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Priority',
            Value : prio,
            Criticality: criticality,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Description',
            Value : descr,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Impact',
            Value : impact,
        },
    ],
    UI.SelectionFields: [
        prio,miti_ID],
);

annotate service.Risks with {
    miti @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Mitigations',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : miti_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'descr',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'owner',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'timeline',
            },
        ],
    };
    impact @Common.ValueList :{
        $Type   : 'Common.ValueListType',
        CollectionPath:'Impacts',
Parameters  : [

    {
      $Type    : 'Common.ValueListParameterInOut',
      LocalDataProperty : impact,
      ValueListProperty:'ID'
    },
    {
        $Type   :'Common.ValueListParameterDisplayOnly',
        ValueListProperty:'desc',
    }]

}
};


annotate service.Risks with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Owner',
                Value : owner,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Business Partner',
                Value : bp_BusinessPartner,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Priority',
                Value : prio,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Description',
                Value : descr,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Impact',
                Value : impact,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Criticality',
                Value : criticality,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Attachment',
            ID : 'Attachment',
            Target : '@UI.FieldGroup#Attachment',
        },
    ]
);
annotate service.Risks with @(
    UI.FieldGroup #Attachment : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : createdAt,
            },{
                $Type : 'UI.DataField',
                Value : createdBy,
            },],
    }
);
