/// 
Class User.location Extends (%Persistent, Base) [ ClassType = persistent, DdlAllowed, Final, Owner = {overevkina}, ProcedureBlock, SqlRowIdPrivate, SqlTableName = location ]
{

Property locationid As %Library.BigInt [ Required, SqlColumnNumber = 2, SqlFieldName = location_id ];

Property address1 As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 3, SqlFieldName = address_1 ];

Property address2 As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 4, SqlFieldName = address_2 ];

Property city As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 5 ];

Property state As %Library.String(MAXLEN = 2) [ SqlColumnNumber = 6 ];

Property zip As %Library.String(MAXLEN = 9) [ SqlColumnNumber = 7 ];

Property county As %Library.String(MAXLEN = 20) [ SqlColumnNumber = 8 ];

Property locationsourcevalue As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 10, SqlFieldName = location_source_value ];

Parameter USEEXTENTSET = 1;

Index locationidIndx On locationid;

/// Bitmap Extent Index auto-generated by DDL CREATE TABLE statement.  Do not edit the SqlName of this index.
Index DDLBEIndex [ Extent, SqlName = "%%DDLBEIndex", Type = bitmap ];

Index locationsourcevalueind On locationsourcevalue [ SqlName = location_source_value_ind, Type = index ];

ClassMethod InsertLine(fileLine As %String, delimiter As %Char = "	") As %Status [ Language = objectscript ]
{
	set obj = ..%New()
	
	set obj.locationid = $p(fileLine, delimiter, 1)
	set obj.address1 = $p(fileLine, delimiter, 2)
	set obj.address2 = $p(fileLine, delimiter, 3)
	set obj.city = $p(fileLine, delimiter, 4)
	set obj.state = $p(fileLine, delimiter, 5)
	set obj.zip = $p(fileLine, delimiter, 6)
	set obj.county = $p(fileLine, delimiter, 7)
	set obj.locationsourcevalue = $p(fileLine, delimiter, 8)
	
	quit obj.%Save()
}

Storage Default
{
<Data name="locationDefaultData">
<Value name="1">
<Value>locationid</Value>
</Value>
<Value name="2">
<Value>address1</Value>
</Value>
<Value name="3">
<Value>address2</Value>
</Value>
<Value name="4">
<Value>city</Value>
</Value>
<Value name="5">
<Value>state</Value>
</Value>
<Value name="6">
<Value>zip</Value>
</Value>
<Value name="7">
<Value>county</Value>
</Value>
<Value name="8">
<Value>locationsourcevalue</Value>
</Value>
</Data>
<DataLocation>^poCN.BjQl.1</DataLocation>
<DefaultData>locationDefaultData</DefaultData>
<ExtentLocation>^poCN.BjQl</ExtentLocation>
<IdLocation>^poCN.BjQl.1</IdLocation>
<Index name="DDLBEIndex">
<Location>^poCN.BjQl.2</Location>
</Index>
<Index name="IDKEY">
<Location>^poCN.BjQl.1</Location>
</Index>
<Index name="locationidIndx">
<Location>^poCN.BjQl.3</Location>
</Index>
<Index name="locationsourcevalueind">
<Location>^poCN.BjQl.4</Location>
</Index>
<IndexLocation>^poCN.BjQl.I</IndexLocation>
<StreamLocation>^poCN.BjQl.S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

