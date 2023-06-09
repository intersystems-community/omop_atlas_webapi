/// 
Class User.payerplanperiod Extends (%Persistent, Base) [ ClassType = persistent, DdlAllowed, Final, Owner = {overevkina}, ProcedureBlock, SqlRowIdPrivate, SqlTableName = payer_plan_period ]
{

Property payerplanperiodid As %Library.BigInt [ Required, SqlColumnNumber = 2, SqlFieldName = payer_plan_period_id ];

Property personid As %Library.BigInt [ Required, SqlColumnNumber = 3, SqlFieldName = person_id ];

Property contractpersonid As %Library.BigInt [ SqlColumnNumber = 4, SqlFieldName = contract_person_id ];

Property payerplanperiodstartdate As %Library.Date [ Required, SqlColumnNumber = 5, SqlFieldName = payer_plan_period_start_date ];

Property payerplanperiodenddate As %Library.Date [ Required, SqlColumnNumber = 6, SqlFieldName = payer_plan_period_end_date ];

Property payerconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ Required, SqlColumnNumber = 7, SqlFieldName = payer_concept_id ];

Property planconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ Required, SqlColumnNumber = 8, SqlFieldName = plan_concept_id ];

Property contractconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ Required, SqlColumnNumber = 9, SqlFieldName = contract_concept_id ];

Property sponsorconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ Required, SqlColumnNumber = 10, SqlFieldName = sponsor_concept_id ];

Property stopreasonconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ Required, SqlColumnNumber = 11, SqlFieldName = stop_reason_concept_id ];

Property payersourcevalue As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 12, SqlFieldName = payer_source_value ];

Property payersourceconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ Required, SqlColumnNumber = 13, SqlFieldName = payer_source_concept_id ];

Property plansourcevalue As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 14, SqlFieldName = plan_source_value ];

Property plansourceconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ Required, SqlColumnNumber = 15, SqlFieldName = plan_source_concept_id ];

Property contractsourcevalue As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 16, SqlFieldName = contract_source_value ];

Property contractsourceconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ Required, SqlColumnNumber = 17, SqlFieldName = contract_source_concept_id ];

Property sponsorsourcevalue As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 18, SqlFieldName = sponsor_source_value ];

Property sponsorsourceconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ Required, SqlColumnNumber = 19, SqlFieldName = sponsor_source_concept_id ];

Property familysourcevalue As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 20, SqlFieldName = family_source_value ];

Property stopreasonsourcevalue As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 21, SqlFieldName = stop_reason_source_value ];

Property stopreasonsourceconceptid As %Library.Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 22, SqlFieldName = stop_reason_source_concept_id ];

Parameter USEEXTENTSET = 1;

/// Bitmap Extent Index auto-generated by DDL CREATE TABLE statement.  Do not edit the SqlName of this index.
Index DDLBEIndex [ Extent, SqlName = "%%DDLBEIndex", Type = bitmap ];

ClassMethod InsertLine(fileLine As %String, delimiter As %Char = "	") As %Status [ Language = objectscript ]
{
	s:$p(fileLine,delimiter,3)?4N1"-"2N1"-"2N $p(fileLine,delimiter,3) = $zdh($p($p(fileLine,delimiter,3), " ", 1),3)
	s:$p(fileLine,delimiter,4)?4N1"-"2N1"-"2N $p(fileLine,delimiter,4) = $zdh($p($p(fileLine,delimiter,4), " ", 1),3)
	set obj = ..%New()
	/*
(payer_plan_period_id, person_id, contract_person_id, payer_plan_period_start_date, payer_plan_period_end_date, payer_concept_id, plan_concept_id, 
contract_concept_id, sponsor_concept_id, stop_reason_concept_id, payer_source_value, 

payer_source_concept_id, plan_source_value, plan_source_concept_id, contract_source_value, contract_source_concept_id, sponsor_source_value, 
sponsor_source_concept_id, family_source_value, stop_reason_source_value, stop_reason_source_concept_id)	
	
	
($p(fileLine,$c(9),1), $p(fileLine,$c(9),2), "", $p(fileLine,$c(9),3), $p(fileLine,$c(9),4), $p(fileLine,$c(9),5), "", "", "", "", $p(fileLine,$c(9),6)
, $p(fileLine,$c(9),7), $p(fileLine,$c(9),8), $p(fileLine,$c(9),9), $p(fileLine,$c(9),10), $p(fileLine,$c(9),11), $p(fileLine,$c(9),12)
, $p(fileLine,$c(9),13), $p(fileLine,$c(9),14), $p(fileLine,$c(9),15), $p(fileLine,$c(9),16), $p(fileLine,$c(9),17), $p(fileLine,$c(9),18)
, $p(fileLine,$c(9),19), $p(fileLine,$c(9),20), $p(fileLine,$c(9),21)	
	*/	
	set obj.payerplanperiodid = $p(fileLine, delimiter, 1)
	set obj.personid = $p(fileLine, delimiter, 2)
	set obj.contractpersonid = ""
	set obj.payerplanperiodstartdate = $p(fileLine, delimiter, 3)
	set obj.payerplanperiodenddate = $p(fileLine, delimiter, 4)
	set obj.payerconceptid = $p(fileLine, delimiter, 5)
	set obj.planconceptid = ""
	set obj.contractconceptid = ""
	set obj.sponsorconceptid = ""
	set obj.stopreasonconceptid = ""
	set obj.payersourcevalue = $p(fileLine, delimiter, 6)
	
	set obj.payersourceconceptid = $p(fileLine, delimiter, 7)
	set obj.plansourcevalue = $p(fileLine, delimiter, 8)
	set obj.plansourceconceptid = $p(fileLine, delimiter, 9)
	set obj.contractsourcevalue = $p(fileLine, delimiter, 10)
	set obj.contractsourceconceptid = $p(fileLine, delimiter, 11)
	set obj.sponsorsourcevalue = $p(fileLine, delimiter, 12)
	
	set obj.sponsorsourceconceptid = $p(fileLine, delimiter, 13)
	set obj.familysourcevalue = $p(fileLine, delimiter, 14)
	set obj.stopreasonsourcevalue = $p(fileLine, delimiter, 15)
	set obj.stopreasonsourceconceptid = $p(fileLine, delimiter, 16)
	
	quit obj.%Save()
}

Storage Default
{
<Data name="payerplanperiodDefaultData">
<Value name="1">
<Value>payerplanperiodid</Value>
</Value>
<Value name="2">
<Value>personid</Value>
</Value>
<Value name="3">
<Value>contractpersonid</Value>
</Value>
<Value name="4">
<Value>payerplanperiodstartdate</Value>
</Value>
<Value name="5">
<Value>payerplanperiodenddate</Value>
</Value>
<Value name="6">
<Value>payerconceptid</Value>
</Value>
<Value name="7">
<Value>planconceptid</Value>
</Value>
<Value name="8">
<Value>contractconceptid</Value>
</Value>
<Value name="9">
<Value>sponsorconceptid</Value>
</Value>
<Value name="10">
<Value>stopreasonconceptid</Value>
</Value>
<Value name="11">
<Value>payersourcevalue</Value>
</Value>
<Value name="12">
<Value>payersourceconceptid</Value>
</Value>
<Value name="13">
<Value>plansourcevalue</Value>
</Value>
<Value name="14">
<Value>plansourceconceptid</Value>
</Value>
<Value name="15">
<Value>contractsourcevalue</Value>
</Value>
<Value name="16">
<Value>contractsourceconceptid</Value>
</Value>
<Value name="17">
<Value>sponsorsourcevalue</Value>
</Value>
<Value name="18">
<Value>sponsorsourceconceptid</Value>
</Value>
<Value name="19">
<Value>familysourcevalue</Value>
</Value>
<Value name="20">
<Value>stopreasonsourcevalue</Value>
</Value>
<Value name="21">
<Value>stopreasonsourceconceptid</Value>
</Value>
</Data>
<DataLocation>^poCN.Mv5a.1</DataLocation>
<DefaultData>payerplanperiodDefaultData</DefaultData>
<ExtentLocation>^poCN.Mv5a</ExtentLocation>
<IdLocation>^poCN.Mv5a.1</IdLocation>
<Index name="DDLBEIndex">
<Location>^poCN.Mv5a.2</Location>
</Index>
<Index name="IDKEY">
<Location>^poCN.Mv5a.1</Location>
</Index>
<IndexLocation>^poCN.Mv5a.I</IndexLocation>
<StreamLocation>^poCN.Mv5a.S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

