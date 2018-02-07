.class final Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->startNativeMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 282
    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v2}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->a(Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->k:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    move v2, v1

    :goto_0
    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v2}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->a(Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->k:Ljava/lang/String;

    .line 284
    :cond_0
    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v2}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->a(Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->k:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    move v0, v1

    :cond_1
    if-eqz v0, :cond_3

    const-string v0, "Bugly"

    .line 286
    :goto_1
    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    iget-object v3, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v3, v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->a(Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->a(Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;Z)Z

    .line 294
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->b(Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->c(Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 325
    :goto_2
    return-void

    :cond_2
    move v2, v0

    .line 282
    goto :goto_0

    .line 284
    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->a(Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->k:Ljava/lang/String;

    goto :goto_1

    .line 298
    :cond_4
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v2}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->d(Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->a(Z)V

    .line 300
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->e(Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "native_record_lock"

    const-wide/16 v3, 0x2710

    invoke-static {v0, v2, v3, v4}, Lcom/tencent/bugly/lejiagu/proguard/a;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_5

    .line 303
    const-string v0, "Failed to lock file for handling native crash record."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_2

    .line 307
    :cond_5
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->e(Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v2}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->f(Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v3}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->g(Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeExceptionHandler;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeExceptionHandler;)Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_7

    .line 313
    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v2}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->h(Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/lejiagu/crashreport/crash/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->a(Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 314
    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v2}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->h(Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/lejiagu/crashreport/crash/b;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->a(Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;JZ)V

    .line 319
    :cond_6
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->f(Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/b;->b(Ljava/lang/String;)V

    .line 320
    const-string v0, "get crash from native record!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 322
    :cond_7
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->a()V

    .line 324
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler$1;->a:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->e(Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "native_record_lock"

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_2
.end method
