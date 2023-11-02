<#--function dots dishName dishPrice>
    <#assign dishNameLength = dishName?length />
    <#assign dishPriceLength = dishPrice?length />
    <#assign dotsNumber = (52 - dishNameLength - dishPriceLength) />
    <#assign dotLine = "" />
    <#list 1..dotsNumber as dotIterator>
        <#assign dotLine = dotLine + "." />
        <#if dotIterator == dotsNumber>
          	<#break>
        </#if>
	</#list>
    <#return dotLine />
</#function-->

<#function dots dishName dishPrice>
    <#assign dishNameLength = dishName?length />
    <#assign dishPriceLength = dishPrice?length />
    <#assign dotsNumber = (52 - dishNameLength - dishPriceLength) />
    <#assign porcentualDots = ((dotsNumber * 100) / 52)?ceiling />
    <#assign dotLine = "" />
    <#list 1..porcentualDots as dotIterator>
        <#assign dotLine = dotLine + "." />
        <#if dotIterator == porcentualDots - 29>
          	<#break>
        </#if>
	</#list>
    <#return dotLine />
</#function>