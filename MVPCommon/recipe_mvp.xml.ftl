<recipe folder="root://other/MVPCommon">

    <instantiate from="root/src/app_package/Contract.kt.ftl"
                 to="${escapeXmlAttribute(srcOut?replace('java', 'kotlin'))}/${className}Contract.kt"/>
    <instantiate from="root/src/app_package/Presenter.kt.ftl"
                 to="${escapeXmlAttribute(srcOut?replace('java', 'kotlin'))}/${className}PresenterImpl.kt"/>
    <instantiate from="root/src/app_package/Module.kt.ftl"
                 to="${escapeXmlAttribute(srcOut?replace('java', 'kotlin'))}/${className}Module.kt"/>

    <open file="${srcOut}/${className}PresenterImpl.kt"/>
</recipe>