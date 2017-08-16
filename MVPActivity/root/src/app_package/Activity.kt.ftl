package ${packageName};

import android.os.Bundle
import android.support.v7.app.AppCompatActivity
import toothpick.Scope
import toothpick.Toothpick
import toothpick.smoothie.module.SmoothieActivityModule
import javax.inject.Inject

class ${className}Activity : AppCompatActivity(), ${className}View {

  private lateinit var scope: Scope

  @Inject internal lateinit var presenter: ${className}Presenter

  override fun onCreate(savedInstanceState: Bundle?) {
    scope = Toothpick.openScopes(application, this)
    scope.installModules(SmoothieActivityModule(this), ${className}Module())
    Toothpick.inject(this, scope)
    super.onCreate(savedInstanceState)
    <#if generateLayout>
    setContentView(R.layout.${layoutName})
    </#if>

  }

  override fun onDestroy() {
    super.onDestroy()
    Toothpick.closeScope(this)
  }

  override fun onStart() {
    super.onStart()
    presenter.attach(this)
  }

  override fun onStop() {
    super.onStop()
    presenter.detach()
  }
}