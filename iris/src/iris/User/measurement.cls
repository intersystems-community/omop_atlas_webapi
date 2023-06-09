/// 
Class User.measurement Extends (%Persistent, Base) [ ClassType = persistent, DdlAllowed, Final, Owner = {overevkina}, ProcedureBlock, SqlRowIdPrivate, SqlTableName = measurement ]
{

Property measurementid As %Library.BigInt [ Required, SqlColumnNumber = 2, SqlFieldName = measurement_id ];

Property personid As %Library.BigInt [ Required, SqlColumnNumber = 3, SqlFieldName = person_id ];

Property measurementconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ Required, SqlColumnNumber = 4, SqlFieldName = measurement_concept_id ];

Property measurementdate As %Library.Date [ SqlColumnNumber = 5, SqlFieldName = measurement_date ];

Property measurementdatetime As %Library.TimeStamp [ SqlColumnNumber = 6, SqlFieldName = measurement_datetime ];

Property measurementtime As %Library.String(MAXLEN = 10) [ SqlColumnNumber = 7, SqlFieldName = measurement_time ];

Property measurementtypeconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ Required, SqlColumnNumber = 8, SqlFieldName = measurement_type_concept_id ];

Property operatorconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 9, SqlFieldName = operator_concept_id ];

Property valueasnumber As %Library.Numeric(MAXVAL = 999999999999999, MINVAL = -999999999999999, SCALE = 0) [ SqlColumnNumber = 10, SqlFieldName = value_as_number ];

Property valueasconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 11, SqlFieldName = value_as_concept_id ];

Property unitconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 12, SqlFieldName = unit_concept_id ];

Property rangelow As %Library.Numeric(MAXVAL = 999999999999999, MINVAL = -999999999999999, SCALE = 0) [ SqlColumnNumber = 13, SqlFieldName = range_low ];

Property rangehigh As %Library.Numeric(MAXVAL = 999999999999999, MINVAL = -999999999999999, SCALE = 0) [ SqlColumnNumber = 14, SqlFieldName = range_high ];

Property providerid As %Library.BigInt [ SqlColumnNumber = 15, SqlFieldName = provider_id ];

Property visitoccurrenceid As %Library.BigInt [ SqlColumnNumber = 16, SqlFieldName = visit_occurrence_id ];

Property visitdetailid As %Library.BigInt [ SqlColumnNumber = 17, SqlFieldName = visit_detail_id ];

Property measurementsourcevalue As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 18, SqlFieldName = measurement_source_value ];

Property measurementsourceconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 19, SqlFieldName = measurement_source_concept_id ];

Property unitsourcevalue As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 20, SqlFieldName = unit_source_value ];

Property valuesourcevalue As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 21, SqlFieldName = value_source_value ];

Parameter USEEXTENTSET = 1;

Index personIdIndx On personid [ SqlName = person_id_indx, Type = index ];

/// Bitmap Extent Index auto-generated by DDL CREATE TABLE statement.  Do not edit the SqlName of this index.
Index DDLBEIndex [ Extent, SqlName = "%%DDLBEIndex", Type = bitmap ];

ClassMethod InsertLine(fileLine As %String, delimiter As %Char = "	") As %Status [ Language = objectscript ]
{
	s:$p(fileLine,delimiter,4)?4N1"-"2N1"-"2N $p(fileLine,delimiter,4) = $zdh($p($p(fileLine,delimiter,4), " ", 1),3)	
	
	set obj = ..%New()

	set obj.measurementid = $p(fileLine, delimiter, 1)
	set obj.personid = $p(fileLine, delimiter, 2)
	set obj.measurementconceptid = $p(fileLine, delimiter, 3)
	set obj.measurementdate = $p(fileLine, delimiter, 4)
	set obj.measurementdatetime = $p(fileLine, delimiter, 5)
	set obj.measurementtime = ""
	
	set obj.measurementtypeconceptid = $p(fileLine, delimiter, 6)
	set obj.operatorconceptid = $p(fileLine, delimiter, 7)
	set obj.valueasnumber = $p(fileLine, delimiter, 8)
	set obj.valueasconceptid = $p(fileLine, delimiter, 9)
	set obj.unitconceptid = $p(fileLine, delimiter, 10)
	set obj.rangelow = $p(fileLine, delimiter, 11)
	
	set obj.rangehigh = $p(fileLine, delimiter, 12)
	set obj.providerid = $p(fileLine, delimiter, 13)
	set obj.visitoccurrenceid = $p(fileLine, delimiter, 14)
	set obj.visitdetailid = $p(fileLine, delimiter, 15)
	set obj.measurementsourcevalue = $p(fileLine, delimiter, 16) //??
	set obj.measurementsourceconceptid = $p(fileLine, delimiter, 16)
	set obj.unitsourcevalue = $p(fileLine, delimiter, 18)
	
	set obj.valuesourcevalue = $p(fileLine, delimiter, 19)
	
	quit obj.%Save()
}

Storage Default
{
<Data name="measurementDefaultData">
<Value name="1">
<Value>measurementid</Value>
</Value>
<Value name="2">
<Value>personid</Value>
</Value>
<Value name="3">
<Value>measurementconceptid</Value>
</Value>
<Value name="4">
<Value>measurementdate</Value>
</Value>
<Value name="5">
<Value>measurementdatetime</Value>
</Value>
<Value name="6">
<Value>measurementtime</Value>
</Value>
<Value name="7">
<Value>measurementtypeconceptid</Value>
</Value>
<Value name="8">
<Value>operatorconceptid</Value>
</Value>
<Value name="9">
<Value>valueasnumber</Value>
</Value>
<Value name="10">
<Value>valueasconceptid</Value>
</Value>
<Value name="11">
<Value>unitconceptid</Value>
</Value>
<Value name="12">
<Value>rangelow</Value>
</Value>
<Value name="13">
<Value>rangehigh</Value>
</Value>
<Value name="14">
<Value>providerid</Value>
</Value>
<Value name="15">
<Value>visitoccurrenceid</Value>
</Value>
<Value name="16">
<Value>visitdetailid</Value>
</Value>
<Value name="17">
<Value>measurementsourcevalue</Value>
</Value>
<Value name="18">
<Value>measurementsourceconceptid</Value>
</Value>
<Value name="19">
<Value>unitsourcevalue</Value>
</Value>
<Value name="20">
<Value>valuesourcevalue</Value>
</Value>
</Data>
<DataLocation>^poCN.oxEE.1</DataLocation>
<DefaultData>measurementDefaultData</DefaultData>
<ExtentLocation>^poCN.oxEE</ExtentLocation>
<IdLocation>^poCN.oxEE.1</IdLocation>
<Index name="DDLBEIndex">
<Location>^poCN.oxEE.2</Location>
</Index>
<Index name="IDKEY">
<Location>^poCN.oxEE.1</Location>
</Index>
<Index name="personIdIndx">
<Location>^poCN.oxEE.3</Location>
</Index>
<IndexLocation>^poCN.oxEE.I</IndexLocation>
<StreamLocation>^poCN.oxEE.S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

