/// 
Class User.note Extends %Persistent [ ClassType = persistent, DdlAllowed, Final, Owner = {overevkina}, ProcedureBlock, SqlRowIdPrivate, SqlTableName = note ]
{

Property noteid As %Library.BigInt [ Required, SqlColumnNumber = 2, SqlFieldName = note_id ];

Property personid As %Library.BigInt [ Required, SqlColumnNumber = 3, SqlFieldName = person_id ];

/// Property noteeventid As %Library.BigInt [ SqlColumnNumber = 4, SqlFieldName = note_event_id ];
/// Property noteeventfieldconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ Required, SqlColumnNumber = 5, SqlFieldName = note_event_field_concept_id ];
Property notedate As %Library.Date [ SqlColumnNumber = 6, SqlFieldName = note_date ];

Property notedatetime As %Library.TimeStamp [ Required, SqlColumnNumber = 7, SqlFieldName = note_datetime ];

Property notetypeconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ Required, SqlColumnNumber = 8, SqlFieldName = note_type_concept_id ];

Property noteclassconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ Required, SqlColumnNumber = 9, SqlFieldName = note_class_concept_id ];

Property notetitle As %Library.String(MAXLEN = 250) [ SqlColumnNumber = 10, SqlFieldName = note_title ];

Property notetext As %Library.String(MAXLEN = "") [ SqlColumnNumber = 11, SqlFieldName = note_text ];

Property encodingconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ Required, SqlColumnNumber = 12, SqlFieldName = encoding_concept_id ];

Property languageconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ Required, SqlColumnNumber = 13, SqlFieldName = language_concept_id ];

Property providerid As %Library.BigInt [ SqlColumnNumber = 14, SqlFieldName = provider_id ];

Property visitoccurrenceid As %Library.BigInt [ SqlColumnNumber = 15, SqlFieldName = visit_occurrence_id ];

Property visitdetailid As %Library.BigInt [ SqlColumnNumber = 16, SqlFieldName = visit_detail_id ];

Property notesourcevalue As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 17, SqlFieldName = note_source_value ];

Parameter USEEXTENTSET = 1;

/// Bitmap Extent Index auto-generated by DDL CREATE TABLE statement.  Do not edit the SqlName of this index.
Index DDLBEIndex [ Extent, SqlName = "%%DDLBEIndex", Type = bitmap ];

Storage Default
{
<Data name="noteDefaultData">
<Value name="1">
<Value>noteid</Value>
</Value>
<Value name="2">
<Value>personid</Value>
</Value>
<Value name="3">
<Value>noteeventid</Value>
</Value>
<Value name="4">
<Value>noteeventfieldconceptid</Value>
</Value>
<Value name="5">
<Value>notedate</Value>
</Value>
<Value name="6">
<Value>notedatetime</Value>
</Value>
<Value name="7">
<Value>notetypeconceptid</Value>
</Value>
<Value name="8">
<Value>noteclassconceptid</Value>
</Value>
<Value name="9">
<Value>notetitle</Value>
</Value>
<Value name="10">
<Value>notetext</Value>
</Value>
<Value name="11">
<Value>encodingconceptid</Value>
</Value>
<Value name="12">
<Value>languageconceptid</Value>
</Value>
<Value name="13">
<Value>providerid</Value>
</Value>
<Value name="14">
<Value>visitoccurrenceid</Value>
</Value>
<Value name="15">
<Value>visitdetailid</Value>
</Value>
<Value name="16">
<Value>notesourcevalue</Value>
</Value>
</Data>
<DataLocation>^poCN.Dns6.1</DataLocation>
<DefaultData>noteDefaultData</DefaultData>
<ExtentLocation>^poCN.Dns6</ExtentLocation>
<IdFunction>sequence</IdFunction>
<IdLocation>^poCN.Dns6.1</IdLocation>
<Index name="DDLBEIndex">
<Location>^poCN.Dns6.2</Location>
</Index>
<Index name="IDKEY">
<Location>^poCN.Dns6.1</Location>
</Index>
<IndexLocation>^poCN.Dns6.I</IndexLocation>
<StreamLocation>^poCN.Dns6.S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}