/// 
Class User.attributedefinition Extends %Persistent [ ClassType = persistent, DdlAllowed, Final, Owner = {overevkina}, ProcedureBlock, SqlRowIdPrivate, SqlTableName = attribute_definition ]
{

Property attributedefinitionid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ Required, SqlColumnNumber = 2, SqlFieldName = attribute_definition_id ];

Property attributename As %Library.String(MAXLEN = 255) [ Required, SqlColumnNumber = 3, SqlFieldName = attribute_name ];

Property attributedescription As %Stream.GlobalCharacter [ SqlColumnNumber = 4, SqlFieldName = attribute_description ];

Property attributetypeconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ Required, SqlColumnNumber = 5, SqlFieldName = attribute_type_concept_id ];

Property attributesyntax As %Stream.GlobalCharacter [ SqlColumnNumber = 6, SqlFieldName = attribute_syntax ];

Parameter USEEXTENTSET = 1;

/// Bitmap Extent Index auto-generated by DDL CREATE TABLE statement.  Do not edit the SqlName of this index.
Index DDLBEIndex [ Extent, SqlName = "%%DDLBEIndex", Type = bitmap ];

Storage Default
{
<Data name="attributedefinitionDefaultData">
<Value name="1">
<Value>attributedefinitionid</Value>
</Value>
<Value name="2">
<Value>attributename</Value>
</Value>
<Value name="3">
<Value>attributedescription</Value>
</Value>
<Value name="4">
<Value>attributetypeconceptid</Value>
</Value>
<Value name="5">
<Value>attributesyntax</Value>
</Value>
</Data>
<DataLocation>^poCN.CnD9.1</DataLocation>
<DefaultData>attributedefinitionDefaultData</DefaultData>
<ExtentLocation>^poCN.CnD9</ExtentLocation>
<IdFunction>sequence</IdFunction>
<IdLocation>^poCN.CnD9.1</IdLocation>
<Index name="DDLBEIndex">
<Location>^poCN.CnD9.2</Location>
</Index>
<Index name="IDKEY">
<Location>^poCN.CnD9.1</Location>
</Index>
<IndexLocation>^poCN.CnD9.I</IndexLocation>
<StreamLocation>^poCN.CnD9.S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}