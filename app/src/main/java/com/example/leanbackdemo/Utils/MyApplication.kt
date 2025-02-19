package com.example.leanbackdemo.Utils

import android.app.Application
import android.content.Context

class MyApplication : Application() {
  companion object{
      private var myApplication :MyApplication?=null
      private var context:Context?=null
  }

    override fun onCreate() {
        super.onCreate()
        myApplication=this
        context=this
    }
    fun getApplication(): MyApplication ?{
        return myApplication
    }
}