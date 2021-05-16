#include <stdio.h>
#include <unistd.h>
#include <pthread.h>
#include <jni.h>
#include <android/log.h>
#include <fcntl.h>
#include "xhook.h"

static int my_system_log_print(int prio, const char* tag, const char* fmt, ...)
{
    va_list ap;
    char buf[1024];
    int r;
    
    snprintf(buf, sizeof(buf), "[%s] %s", (NULL == tag ? "" : tag), (NULL == fmt ? "" : fmt));

    va_start(ap, fmt);
    r = __android_log_vprint(prio, "xxs xhook_system", buf, ap);
    va_end(ap);
    return r;
}

static int my_libtest_log_print(int prio, const char* tag, const char* fmt, ...)
{
    va_list ap;
    char buf[1024];
    int r;
    
    snprintf(buf, sizeof(buf), "[%s] %s", (NULL == tag ? "" : tag), (NULL == fmt ? "" : fmt));

    va_start(ap, fmt);
    r = __android_log_vprint(prio, "xhook_libtest", buf, ap);
    va_end(ap);
    return r;
}

static int my_open(const char* filename, int mode, ...) {
    va_list ap;
    int r;
    __android_log_write(ANDROID_LOG_INFO, "xxs my_open", filename);

    va_start(ap, mode);
    r = open(filename, mode, ap);
    va_end(ap);
    return r;
}
/* 
static int my_open64(const char* filename, int mode, ...) {
    va_list ap;
    int r;
__android_log_write(4, "my_open64", filename);

    va_start(ap, mode);
    r = open64(filename, mode, ap);
    va_end(ap);
    return r;
}
 */


static ssize_t my_write(int __fd, const void* __buf, size_t __count) {
    int count = __count;
    __android_log_print(ANDROID_LOG_INFO, "xxs my_write", "fd: %d, count: %d", __fd, count);

    return write(__fd, __buf, __count);
}

void Java_com_qiyi_biz_NativeHandler_start(JNIEnv* env, jobject obj)
{
    (void)env;
    (void)obj;

    xhook_register("^/system/.*\\.so$",  "__android_log_print", my_system_log_print,  NULL);
    xhook_register("^/vendor/.*\\.so$",  "__android_log_print", my_system_log_print,  NULL);
    xhook_register(".*/libtest\\.so$", "__android_log_print", my_libtest_log_print, NULL);
    xhook_register("^/system/lib/libc.so",  "open", my_open,  NULL);
    xhook_register(".*/libc.so",  "open", my_open,  NULL);
    xhook_register(".*/libc.so",  "write", my_write,  NULL);
    //xhook_register("/system/lib/libc.so",  "open", my_open,  NULL);
    //xhook_register("/apex/com.android.runtime/lib/bionic/libc.so",  "open", my_open,  NULL);
    //xhook_register("/apex/com.android.runtime@1/lib/bionic/libc.so",  "open", my_open,  NULL);

    //just for testing
    xhook_ignore(".*/liblog\\.so$", "__android_log_print"); //ignore __android_log_print in liblog.so
    xhook_ignore(".*/libjavacore\\.so$", NULL); //ignore all hooks in libjavacore.so
}
