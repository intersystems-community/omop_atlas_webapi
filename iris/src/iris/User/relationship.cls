/// 
Class User.relationship Extends (%Persistent, Base) [ ClassType = persistent, DdlAllowed, Final, Owner = {overevkina}, ProcedureBlock, SqlRowIdPrivate, SqlTableName = relationship ]
{

Property relationshipid As %Library.String(MAXLEN = 20) [ Required, SqlColumnNumber = 2, SqlFieldName = relationship_id ];

Property relationshipname As %Library.String(MAXLEN = 255) [ Required, SqlColumnNumber = 3, SqlFieldName = relationship_name ];

Property ishierarchical As %Library.String(MAXLEN = 1) [ Required, SqlColumnNumber = 4, SqlFieldName = is_hierarchical ];

Property definesancestry As %Library.String(MAXLEN = 1) [ Required, SqlColumnNumber = 5, SqlFieldName = defines_ancestry ];

Property reverserelationshipid As %Library.String(MAXLEN = 20) [ Required, SqlColumnNumber = 6, SqlFieldName = reverse_relationship_id ];

Property relationshipconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ Required, SqlColumnNumber = 7, SqlFieldName = relationship_concept_id ];

Parameter USEEXTENTSET = 1;

/// Bitmap Extent Index auto-generated by DDL CREATE TABLE statement.  Do not edit the SqlName of this index.
Index DDLBEIndex [ Extent, SqlName = "%%DDLBEIndex", Type = bitmap ];

ClassMethod InsertLine(fileLine As %String, delimiter As %Char = ",") As %Status [ Language = objectscript ]
{
	set obj = ..%New()
	
	set obj.relationshipid = $p(fileLine, delimiter, 1)
	set obj.relationshipname = $p(fileLine, delimiter, 2)
	set obj.ishierarchical = $p(fileLine, delimiter, 3)
	set obj.definesancestry = $p(fileLine, delimiter, 4)
	set obj.reverserelationshipid = $p(fileLine, delimiter, 5)
	set obj.relationshipconceptid = $p(fileLine, delimiter, 6)
	
	quit obj.%Save()
}

Storage Default
{
<Data name="relationshipDefaultData">
<Value name="1">
<Value>relationshipid</Value>
</Value>
<Value name="2">
<Value>relationshipname</Value>
</Value>
<Value name="3">
<Value>ishierarchical</Value>
</Value>
<Value name="4">
<Value>definesancestry</Value>
</Value>
<Value name="5">
<Value>reverserelationshipid</Value>
</Value>
<Value name="6">
<Value>relationshipconceptid</Value>
</Value>
</Data>
<DataLocation>^poCN.aLpP.1</DataLocation>
<DefaultData>relationshipDefaultData</DefaultData>
<ExtentLocation>^poCN.aLpP</ExtentLocation>
<IdLocation>^poCN.aLpP.1</IdLocation>
<Index name="DDLBEIndex">
<Location>^poCN.aLpP.2</Location>
</Index>
<Index name="IDKEY">
<Location>^poCN.aLpP.1</Location>
</Index>
<IndexLocation>^poCN.aLpP.I</IndexLocation>
<StreamLocation>^poCN.aLpP.S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

