@echo off

mkdir  %CD%\xhookwrapper\xhook\libs\armeabi
mkdir  %CD%\xhookwrapper\xhook\libs\armeabi-v7a
mkdir  %CD%\xhookwrapper\xhook\libs\arm64-v8a
mkdir  %CD%\xhookwrapper\xhook\libs\x86
mkdir  %CD%\xhookwrapper\xhook\libs\x86_64
COPY  %CD%\libxhook\libs\armeabi\libxhook.so %CD%\xhookwrapper\xhook\libs\armeabi\
COPY  %CD%\libxhook\libs\armeabi-v7a\libxhook.so %CD%\xhookwrapper\xhook\libs\armeabi-v7a\
COPY  %CD%\libxhook\libs\arm64-v8a\libxhook.so %CD%\xhookwrapper\xhook\libs\arm64-v8a\
COPY  %CD%\libxhook\libs\x86\libxhook.so %CD%\xhookwrapper\xhook\libs\x86\
COPY  %CD%\libxhook\libs\x86_64\libxhook.so %CD%\xhookwrapper\xhook\libs\x86_64\
mkdir  %CD%\xhookwrapper\biz\libs\armeabi
mkdir  %CD%\xhookwrapper\biz\libs\armeabi-v7a
mkdir  %CD%\xhookwrapper\biz\libs\arm64-v8a
mkdir  %CD%\xhookwrapper\biz\libs\x86
mkdir  %CD%\xhookwrapper\biz\libs\x86_64
COPY  %CD%\libbiz\libs\armeabi\libbiz.so %CD%\xhookwrapper\biz\libs\armeabi\
COPY  %CD%\libbiz\libs\armeabi-v7a\libbiz.so %CD%\xhookwrapper\biz\libs\armeabi-v7a\
COPY  %CD%\libbiz\libs\arm64-v8a\libbiz.so %CD%\xhookwrapper\biz\libs\arm64-v8a\
COPY  %CD%\libbiz\libs\x86\libbiz.so %CD%\xhookwrapper\biz\libs\x86\
COPY  %CD%\libbiz\libs\x86_64\libbiz.so %CD%\xhookwrapper\biz\libs\x86_64\
mkdir  %CD%\xhookwrapper\app\libs\armeabi
mkdir  %CD%\xhookwrapper\app\libs\armeabi-v7a
mkdir  %CD%\xhookwrapper\app\libs\arm64-v8a
mkdir  %CD%\xhookwrapper\app\libs\x86
mkdir  %CD%\xhookwrapper\app\libs\x86_64
COPY  %CD%\libtest\libs\armeabi\libtest.so %CD%\xhookwrapper\app\libs\armeabi\
COPY  %CD%\libtest\libs\armeabi-v7a\libtest.so %CD%\xhookwrapper\app\libs\armeabi-v7a\
COPY  %CD%\libtest\libs\arm64-v8a\libtest.so %CD%\xhookwrapper\app\libs\arm64-v8a\
COPY  %CD%\libtest\libs\x86\libtest.so %CD%\xhookwrapper\app\libs\x86\
COPY  %CD%\libtest\libs\x86_64\libtest.so %CD%\xhookwrapper\app\libs\x86_64\