@echo off

mkdir  %CD%\libs\armeabi
mkdir  %CD%\libs\armeabi-v7a
mkdir  %CD%\libs\arm64-v8a
mkdir  %CD%\libs\x86
mkdir  %CD%\libs\x86_64

COPY  %CD%\jni\libxhook\libs\armeabi\libxhook.so %CD%\libs\armeabi\
COPY  %CD%\jni\libxhook\libs\armeabi-v7a\libxhook.so %CD%\libs\armeabi-v7a\
COPY  %CD%\jni\libxhook\libs\arm64-v8a\libxhook.so %CD%\libs\arm64-v8a\
COPY  %CD%\jni\libxhook\libs\x86\libxhook.so %CD%\libs\x86\
COPY  %CD%\jni\libxhook\libs\x86_64\libxhook.so %CD%\libs\x86_64\

COPY  %CD%\jni\libbiz\libs\armeabi\libbiz.so %CD%\libs\armeabi\
COPY  %CD%\jni\libbiz\libs\armeabi-v7a\libbiz.so %CD%\libs\armeabi-v7a\
COPY  %CD%\jni\libbiz\libs\arm64-v8a\libbiz.so %CD%\libs\arm64-v8a\
COPY  %CD%\jni\libbiz\libs\x86\libbiz.so %CD%\libs\x86\
COPY  %CD%\jni\libbiz\libs\x86_64\libbiz.so %CD%\libs\x86_64\
