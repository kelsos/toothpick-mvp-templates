package ${packageName};

import android.os.Bundle
import android.support.v7.app.AppCompatActivity
import toothpick.Scope
import toothpick.Toothpick
import toothpick.smoothie.module.SmoothieActivityModule

class ${className}Activity : AppCompatActivity(), ${className}View {

  private lateinit var scope: Scope

  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    <#if generateLayout>
    setContentView(R.layout.${layoutName})
    </#if>
    scope = Toothpick.openScopes(application, this)
    scope.installModules(SmoothieActivityModule(this), ${className}Module())
  }

  override fun onDestroy() {
    super.onDestroy()
    Toothpick.closeScope(this)
  }

}