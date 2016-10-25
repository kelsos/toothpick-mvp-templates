<?xml version="1.0"?>
<recipe>
<#include "../MVPCommon/recipe_manifest.xml.ftl" />
<#include "../MVPCommon/recipe_mvp.xml.ftl"  />

<#if generateLayout>
  <#include "../MVPCommon/recipe_layout.xml.ftl" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml"/>
</#if>


    <instantiate from="src/app_package/Activity.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${className}Activity.kt"/>

    <open file="${srcOut}/${className}PresenterImpl.kt"/>
</recipe>