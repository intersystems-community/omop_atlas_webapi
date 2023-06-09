/// 
Class User.observation Extends (%Persistent, Base) [ ClassType = persistent, DdlAllowed, Final, Owner = {overevkina}, ProcedureBlock, SqlRowIdPrivate, SqlTableName = observation ]
{

Property observationid As %Library.BigInt [ Required, SqlColumnNumber = 2, SqlFieldName = observation_id ];

Property personid As %Library.BigInt [ Required, SqlColumnNumber = 3, SqlFieldName = person_id ];

Property observationconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ Required, SqlColumnNumber = 4, SqlFieldName = observation_concept_id ];

/// Required
Property observationdate As %Library.Date [ SqlColumnNumber = 5, SqlFieldName = observation_date ];

Property observationdatetime As %Library.TimeStamp [ SqlColumnNumber = 6, SqlFieldName = observation_datetime ];

/// Required
Property observationtypeconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 7, SqlFieldName = observation_type_concept_id ];

Property valueasnumber As %Library.String [ SqlColumnNumber = 8, SqlFieldName = value_as_number ];

Property valueasstring As %Library.String(MAXLEN = 60) [ SqlColumnNumber = 9, SqlFieldName = value_as_string ];

Property valueasconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 10, SqlFieldName = value_as_concept_id ];

Property qualifierconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 11, SqlFieldName = qualifier_concept_id ];

Property unitconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 12, SqlFieldName = unit_concept_id ];

Property providerid As %Library.BigInt [ SqlColumnNumber = 13, SqlFieldName = provider_id ];

Property visitoccurrenceid As %Library.BigInt [ SqlColumnNumber = 14, SqlFieldName = visit_occurrence_id ];

Property visitdetailid As %Library.BigInt [ SqlColumnNumber = 15, SqlFieldName = visit_detail_id ];

Property observationsourcevalue As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 16, SqlFieldName = observation_source_value ];

Property observationsourceconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 17, SqlFieldName = observation_source_concept_id ];

Property unitsourcevalue As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 18, SqlFieldName = unit_source_value ];

Property qualifiersourcevalue As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 19, SqlFieldName = qualifier_source_value ];

/// Property observationeventid As %Library.BigInt [ SqlColumnNumber = 20, SqlFieldName = observation_event_id ];
/// Property obseventfieldconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 21, SqlFieldName = obs_event_field_concept_id ];
/// Property valueasdatetime As %Library.TimeStamp [ SqlColumnNumber = 22, SqlFieldName = value_as_datetime ];
Parameter USEEXTENTSET = 1;

Index personIdIndx On personid [ SqlName = person_id_indx, Type = index ];

/// Bitmap Extent Index auto-generated by DDL CREATE TABLE statement.  Do not edit the SqlName of this index.
Index DDLBEIndex [ Extent, SqlName = "%%DDLBEIndex", Type = bitmap ];

ClassMethod InsertLine(fileLine As %String, delimiter As %Char = "	") As %Status [ Language = objectscript ]
{
	s:$p(fileLine,delimiter,4)?4N1"-"2N1"-"2N $p(fileLine,delimiter,4) = $zdh($p($p(fileLine,delimiter,4), " ", 1),3)	
	set obj = ..%New()

	set obj.observationid = $p(fileLine, delimiter, 1)
	set obj.personid = $p(fileLine, delimiter, 2)
	set obj.observationconceptid = $p(fileLine, delimiter, 3)
	set obj.observationdate = $p(fileLine, delimiter, 4)
	set obj.observationdatetime = $p(fileLine, delimiter, 5)
	set obj.observationtypeconceptid = $p(fileLine, delimiter, 6)
	
	set obj.valueasnumber = $p(fileLine, delimiter, 7)
	set obj.valueasstring = $p(fileLine, delimiter, 8)
	set obj.valueasconceptid = $p(fileLine, delimiter, 9)
	set obj.qualifierconceptid = $p(fileLine, delimiter, 10)
	set obj.unitconceptid = $p(fileLine, delimiter, 11)
	set obj.providerid = $p(fileLine, delimiter, 12)
	
	set obj.visitoccurrenceid = $p(fileLine, delimiter, 13)
	set obj.visitdetailid = $p(fileLine, delimiter, 14)
	set obj.observationsourcevalue = $p(fileLine, delimiter, 15)
	set obj.observationsourceconceptid = $p(fileLine, delimiter, 16)
	set obj.unitsourcevalue = $p(fileLine, delimiter, 17)
	set obj.qualifiersourcevalue = $p(fileLine, delimiter, 18)
	
	quit obj.%Save()
}

Storage Default
{
<Data name="observationDefaultData">
<Value name="1">
<Value>observationid</Value>
</Value>
<Value name="2">
<Value>personid</Value>
</Value>
<Value name="3">
<Value>observationconceptid</Value>
</Value>
<Value name="4">
<Value>observationdate</Value>
</Value>
<Value name="5">
<Value>observationdatetime</Value>
</Value>
<Value name="6">
<Value>observationtypeconceptid</Value>
</Value>
<Value name="7">
<Value>valueasnumber</Value>
</Value>
<Value name="8">
<Value>valueasstring</Value>
</Value>
<Value name="9">
<Value>valueasconceptid</Value>
</Value>
<Value name="10">
<Value>qualifierconceptid</Value>
</Value>
<Value name="11">
<Value>unitconceptid</Value>
</Value>
<Value name="12">
<Value>providerid</Value>
</Value>
<Value name="13">
<Value>visitoccurrenceid</Value>
</Value>
<Value name="14">
<Value>visitdetailid</Value>
</Value>
<Value name="15">
<Value>observationsourcevalue</Value>
</Value>
<Value name="16">
<Value>observationsourceconceptid</Value>
</Value>
<Value name="17">
<Value>unitsourcevalue</Value>
</Value>
<Value name="18">
<Value>qualifiersourcevalue</Value>
</Value>
</Data>
<DataLocation>^poCN.DcCa.1</DataLocation>
<DefaultData>observationDefaultData</DefaultData>
<ExtentLocation>^poCN.DcCa</ExtentLocation>
<IdLocation>^poCN.DcCa.1</IdLocation>
<Index name="DDLBEIndex">
<Location>^poCN.DcCa.2</Location>
</Index>
<Index name="IDKEY">
<Location>^poCN.DcCa.1</Location>
</Index>
<Index name="personIdIndx">
<Location>^poCN.DcCa.3</Location>
</Index>
<IndexLocation>^poCN.DcCa.I</IndexLocation>
<StreamLocation>^poCN.DcCa.S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

