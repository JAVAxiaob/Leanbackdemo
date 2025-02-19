package com.example.leanbackdemo.views

import android.app.Activity
import android.os.Binder
import android.os.Bundle
import android.os.PersistableBundle
import androidx.appcompat.app.AppCompatActivity
import com.example.leanbackdemo.R
import com.example.leanbackdemo.databinding.MainActivityBinding

class MainActivity : AppCompatActivity() {
    private lateinit var bing: MainActivityBinding
    override fun onCreate(savedInstanceState: Bundle?, persistentState: PersistableBundle?) {
        super.onCreate(savedInstanceState, persistentState)
        bing=MainActivityBinding.inflate(layoutInflater)
        setContentView(bing.root)

    }

    override fun onStart() {
        super.onStart()
    }

    override fun onStop() {
        super.onStop()
    }

    override fun onDestroy() {
        super.onDestroy()
    }


    override fun onResume() {
        super.onResume()
    }

    override fun onPause() {
        super.onPause()
    }
}