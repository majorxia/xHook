package com.qiyi;

import android.content.Context;
import com.qiyi.biz.Biz;
import com.qiyi.xhook.XHook;

public class Ref {

    private Context m_Context;

    public void onCreate() {
        //load xhook
        XHook.getInstance().init(m_Context);
        if(!XHook.getInstance().isInited()) {
            return;
        }

        //load and run your biz lib (for register hook points)
        Biz.getInstance().init();
        Biz.getInstance().start();

        //xhook do refresh
        XHook.getInstance().refresh(false);
    }
}
