/// 
Class User.person Extends (%Persistent, Base) [ ClassType = persistent, DdlAllowed, Final, Owner = {overevkina}, ProcedureBlock, SqlRowIdPrivate, SqlTableName = person ]
{

Property personid As %Library.BigInt [ Required, SqlColumnNumber = 2, SqlFieldName = person_id ];

Property genderconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ Required, SqlColumnNumber = 3, SqlFieldName = gender_concept_id ];

Property yearofbirth As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 4, SqlFieldName = year_of_birth ];

Property monthofbirth As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 5, SqlFieldName = month_of_birth ];

Property dayofbirth As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 6, SqlFieldName = day_of_birth ];

Property birthdatetime As %Library.TimeStamp [ SqlColumnNumber = 7, SqlFieldName = birth_datetime ];

Property raceconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 9, SqlFieldName = race_concept_id ];

Property ethnicityconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 10, SqlFieldName = ethnicity_concept_id ];

Property locationid As %Library.BigInt [ SqlColumnNumber = 11, SqlFieldName = location_id ];

Property providerid As %Library.BigInt [ SqlColumnNumber = 12, SqlFieldName = provider_id ];

Property caresiteid As %Library.BigInt [ SqlColumnNumber = 13, SqlFieldName = care_site_id ];

Property personsourcevalue As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 14, SqlFieldName = person_source_value ];

Property gendersourcevalue As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 15, SqlFieldName = gender_source_value ];

Property gendersourceconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 16, SqlFieldName = gender_source_concept_id ];

Property racesourcevalue As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 17, SqlFieldName = race_source_value ];

Property racesourceconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 18, SqlFieldName = race_source_concept_id ];

Property ethnicitysourcevalue As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 19, SqlFieldName = ethnicity_source_value ];

Property ethnicitysourceconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 20, SqlFieldName = ethnicity_source_concept_id ];

Parameter USEEXTENTSET = 1;

/// Bitmap Extent Index auto-generated by DDL CREATE TABLE statement.  Do not edit the SqlName of this index.
Index DDLBEIndex [ Extent, SqlName = "%%DDLBEIndex", Type = bitmap ];

/// DDL Primary Key Specification
Index PERSONPKEY2 On personid [ PrimaryKey, SqlName = PERSON_PKEY2, Type = index, Unique ];

ClassMethod InsertLine(fileLine As %String, delimiter As %Char = "	") As %Status [ Language = objectscript ]
{
	s:$p(fileLine,delimiter,4)?4N1"-"2N1"-"2N $p(fileLine,delimiter,4) = $zdh($p($p(fileLine,delimiter,4), " ", 1),3)	
	
	set obj = ..%New()

	set obj.personid = $p(fileLine, delimiter, 1)
	set obj.genderconceptid = $p(fileLine, delimiter, 2)
	set obj.yearofbirth = $p(fileLine, delimiter, 3)
	set obj.monthofbirth = $p(fileLine, delimiter, 4)
	set obj.dayofbirth = $p(fileLine, delimiter, 5)
	set obj.birthdatetime = $p(fileLine, delimiter, 6)
	set obj.raceconceptid = $p(fileLine, delimiter, 7)
	set obj.ethnicityconceptid = $p(fileLine, delimiter, 8)
	set obj.locationid = $p(fileLine, delimiter, 9)
	set obj.providerid = $p(fileLine, delimiter, 10)
	set obj.caresiteid = $p(fileLine, delimiter, 11)
	set obj.personsourcevalue = $p(fileLine, delimiter, 12)
	set obj.gendersourcevalue = $p(fileLine, delimiter, 13)
	set obj.gendersourceconceptid = $p(fileLine, delimiter, 14)
	set obj.racesourcevalue = $p(fileLine, delimiter, 15)
	set obj.racesourceconceptid = $p(fileLine, delimiter, 16)
	set obj.ethnicitysourcevalue = $p(fileLine, delimiter, 17)
	set obj.ethnicitysourceconceptid = $p(fileLine, delimiter, 18)
	
	quit obj.%Save()
}

Storage Default
{
<Data name="personDefaultData">
<Value name="1">
<Value>personid</Value>
</Value>
<Value name="2">
<Value>genderconceptid</Value>
</Value>
<Value name="3">
<Value>yearofbirth</Value>
</Value>
<Value name="4">
<Value>monthofbirth</Value>
</Value>
<Value name="5">
<Value>dayofbirth</Value>
</Value>
<Value name="6">
<Value>birthdatetime</Value>
</Value>
<Value name="7">
<Value>raceconceptid</Value>
</Value>
<Value name="8">
<Value>ethnicityconceptid</Value>
</Value>
<Value name="9">
<Value>locationid</Value>
</Value>
<Value name="10">
<Value>providerid</Value>
</Value>
<Value name="11">
<Value>caresiteid</Value>
</Value>
<Value name="12">
<Value>personsourcevalue</Value>
</Value>
<Value name="13">
<Value>gendersourcevalue</Value>
</Value>
<Value name="14">
<Value>gendersourceconceptid</Value>
</Value>
<Value name="15">
<Value>racesourcevalue</Value>
</Value>
<Value name="16">
<Value>racesourceconceptid</Value>
</Value>
<Value name="17">
<Value>ethnicitysourcevalue</Value>
</Value>
<Value name="18">
<Value>ethnicitysourceconceptid</Value>
</Value>
</Data>
<DataLocation>^poCN.y1Hl.1</DataLocation>
<DefaultData>personDefaultData</DefaultData>
<ExtentLocation>^poCN.y1Hl</ExtentLocation>
<IdLocation>^poCN.y1Hl.1</IdLocation>
<Index name="DDLBEIndex">
<Location>^poCN.y1Hl.2</Location>
</Index>
<Index name="IDKEY">
<Location>^poCN.y1Hl.1</Location>
</Index>
<Index name="PERSONPKEY2">
<Location>^poCN.y1Hl.3</Location>
</Index>
<IndexLocation>^poCN.y1Hl.I</IndexLocation>
<StreamLocation>^poCN.y1Hl.S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

