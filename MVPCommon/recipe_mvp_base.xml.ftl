<recipe folder="root://other/MVPCommon">

    <instantiate from="root/src/app_package/BasePresenter.kt.ftl"
                 to="${escapeXmlAttribute(srcOut?replace('java', 'kotlin'))}/mvp/BasePresenter.kt"/>
    <instantiate from="root/src/app_package/Presenter.kt.ftl"
                 to="${escapeXmlAttribute(srcOut?replace('java', 'kotlin'))}/mvp/Presenter.kt"/>
    <instantiate from="root/src/app_package/BaseView.kt.ftl"
                 to="${escapeXmlAttribute(srcOut?replace('java', 'kotlin'))}/mvp/BaseView.kt"/>
</recipe>