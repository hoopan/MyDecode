.class final Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;->startNativeMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;)V
    .registers 2

    .prologue
    .line 298
    iput-object p1, p0, Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 302
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v0}, Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;->a(Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "native_record_lock"

    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/bugly/legu/proguard/a;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_19

    .line 305
    const-string v0, "Failed to lock file for handling native crash record."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 327
    :goto_18
    return-void

    .line 309
    :cond_19
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v0}, Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;->a(Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v1}, Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;->b(Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v2}, Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;->c(Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeExceptionHandler;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/legu/crashreport/crash/jni/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeExceptionHandler;)Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_58

    .line 315
    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v1}, Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;->d(Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/legu/crashreport/crash/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/legu/crashreport/crash/b;->a(Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 316
    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v1}, Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;->d(Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/legu/crashreport/crash/b;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/tencent/bugly/legu/crashreport/crash/b;->a(Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;JZ)V

    .line 321
    :cond_48
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v0}, Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;->b(Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/legu/crashreport/crash/jni/b;->b(Ljava/lang/String;)V

    .line 322
    const-string v0, "get crash from native record!"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 324
    :cond_58
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;->a()V

    .line 326
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v0}, Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;->a(Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "native_record_lock"

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_18
.end method
