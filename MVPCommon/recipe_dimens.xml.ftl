<recipe folder="root://other/MVPCommon">
    <merge from="root/res/values/empty_dimens.xml"
           to="${escapeXmlAttribute(resOut)}/values/dimens.xml"/>
    <merge from="root/res/values-w820dp/empty_dimens.xml"
           to="${escapeXmlAttribute(resOut)}/values-w820dp/dimens.xml"/>
</recipe>