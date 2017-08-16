<recipe folder="root://other/MVPCommon">

    <instantiate from="root/src/app_package/Contract.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${className}Contract.kt"/>
    <instantiate from="root/src/app_package/PresenterImpl.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${className}PresenterImpl.kt"/>
    <instantiate from="root/src/app_package/Module.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${className}Module.kt"/>

    <open file="${srcOut}/${className}PresenterImpl.kt"/>
</recipe>