package ${packageName}

import toothpick.config.Module

class ${className}Module : Module() {
  init {
    bind(${className}Presenter::class.java)
      .to(${className}PresenterImpl::class.java)
      .singletonInScope()
  }
}
