package ${packageName}

import javax.inject.Inject
import ${packageName}.mvp.BasePresenter
import ${packageName}.mvp.Presenter
import ${packageName}.mvp.BaseView

class ${className}PresenterImpl
@Inject constructor() :
  BasePresenter<${className}View>(),
  ${className}Presenter {

}
