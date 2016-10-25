<recipe folder="root://other/MVPCommon">
    <instantiate from="root/res/layout/empty_layout.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${simpleLayoutName}.xml"/>

<#include "recipe_dimens.xml.ftl" />
</recipe>
