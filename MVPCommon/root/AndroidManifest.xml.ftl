<manifest xmlns:android="http://schemas.android.com/apk/res/android">
  <application>
    <activity android:name="${relativePackage}.${activityClass}"
        android:parentActivityName="${parentActivityClass}">

      <meta-data android:name="android.support.PARENT_ACTIVITY"
          android:value="${parentActivityClass}" />

    </activity>
  </application>
</manifest>
