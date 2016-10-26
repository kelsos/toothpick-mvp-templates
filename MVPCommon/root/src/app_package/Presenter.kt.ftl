package ${packageName}

interface Presenter<in T : BaseView> {
  fun attach(view: T)

  fun detach()
}
