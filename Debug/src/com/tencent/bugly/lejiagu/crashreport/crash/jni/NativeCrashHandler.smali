.class public Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static a:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

.field private static l:Z


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

.field private final d:Lcom/tencent/bugly/lejiagu/proguard/t;

.field private e:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeExceptionHandler;

.field private f:Ljava/lang/String;

.field private final g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private m:Lcom/tencent/bugly/lejiagu/crashreport/crash/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->l:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;Lcom/tencent/bugly/lejiagu/crashreport/crash/b;Lcom/tencent/bugly/lejiagu/proguard/t;ZLjava/lang/String;)V
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->h:Z

    .line 46
    iput-boolean v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->i:Z

    .line 48
    iput-boolean v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->j:Z

    .line 50
    iput-boolean v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->k:Z

    .line 56
    if-nez p1, :cond_2b

    move-object v0, p1

    :cond_f
    :goto_f
    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->b:Landroid/content/Context;

    .line 95
    if-eqz p6, :cond_33

    :try_start_13
    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_1a} :catch_41

    move-result v0

    if-lez v0, :cond_33

    move v0, v1

    :goto_1e
    if-nez v0, :cond_35

    .line 104
    :goto_20
    iput-object p3, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->m:Lcom/tencent/bugly/lejiagu/crashreport/crash/b;

    .line 105
    iput-object p6, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    .line 107
    iput-object p4, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/tencent/bugly/lejiagu/proguard/t;

    .line 108
    iput-boolean p5, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->g:Z

    .line 109
    return-void

    .line 56
    :cond_2b
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_f

    move-object v0, p1

    goto :goto_f

    .line 95
    :cond_33
    const/4 v0, 0x1

    goto :goto_1e

    .line 98
    :cond_35
    :try_start_35
    const-string v0, "bugly"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_3f} :catch_41

    move-result-object p6

    goto :goto_20

    .line 101
    :catch_41
    move-exception v0

    invoke-static {p1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->c:Ljava/lang/String;

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/data/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/app_bugly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    goto :goto_20
.end method

.method static synthetic a(Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 27
    invoke-static {p1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;Z)Z
    .registers 2

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->i:Z

    return p1
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 330
    .line 332
    :try_start_2
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_11

    .line 334
    :try_start_5
    const-string v1, "[native] load so success: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_10} :catch_14

    .line 338
    :goto_10
    return v0

    :catch_11
    move-exception v0

    move v0, v1

    goto :goto_10

    :catch_14
    move-exception v1

    goto :goto_10
.end method

.method private declared-synchronized b()V
    .registers 8

    .prologue
    .line 345
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->j:Z

    if-nez v0, :cond_f

    .line 346
    const-string v0, "native already unregisted!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_61

    .line 373
    :goto_d
    monitor-exit p0

    return-void

    .line 350
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->unregist()Ljava/lang/String;

    move-result-object v0

    .line 351
    if-eqz v0, :cond_64

    .line 352
    const-string v0, "Native Crash Report close!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->j:Z
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_20} :catch_21
    .catchall {:try_start_f .. :try_end_20} :catchall_61

    goto :goto_d

    .line 357
    :catch_21
    move-exception v0

    .line 358
    :try_start_22
    const-string v0, "unregist bugly so fail"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_61

    .line 362
    :goto_2a
    :try_start_2a
    const-string v0, "com.tencent.feedback.eup.jni.NativeExceptionUpload"

    const-string v1, "enableHandler"

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/bugly/lejiagu/proguard/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->j:Z

    .line 365
    const-string v0, "unregist rqd so success"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_50} :catch_51
    .catchall {:try_start_2a .. :try_end_50} :catchall_61

    goto :goto_d

    .line 368
    :catch_51
    move-exception v0

    :try_start_52
    const-string v0, "unregist rqd so fail"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->i:Z

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->h:Z
    :try_end_60
    .catchall {:try_start_52 .. :try_end_60} :catchall_61

    goto :goto_d

    .line 345
    :catchall_61
    move-exception v0

    monitor-exit p0

    throw v0

    .line 356
    :cond_64
    :try_start_64
    const-string v0, "unregist bugly so success"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_6c} :catch_21
    .catchall {:try_start_64 .. :try_end_6c} :catchall_61

    goto :goto_2a
.end method

.method private declared-synchronized b(Z)V
    .registers 3

    .prologue
    .line 444
    monitor-enter p0

    if-eqz p1, :cond_8

    .line 445
    :try_start_3
    invoke-virtual {p0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->startNativeMonitor()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    .line 449
    :goto_6
    monitor-exit p0

    return-void

    .line 447
    :cond_8
    :try_start_8
    invoke-direct {p0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->b()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_c

    goto :goto_6

    .line 444
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;)Z
    .registers 2

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->i:Z

    return v0
.end method

.method private declared-synchronized c(Z)V
    .registers 6

    .prologue
    .line 462
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->k:Z

    if-eq v0, p1, :cond_16

    .line 463
    const-string v0, "user change native %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 464
    iput-boolean p1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->k:Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 466
    :cond_16
    monitor-exit p0

    return-void

    .line 462
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;)Z
    .registers 2

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->h:Z

    return v0
.end method

.method static synthetic d(Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;)Z
    .registers 2

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->g:Z

    return v0
.end method

.method static synthetic e(Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeExceptionHandler;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->e:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeExceptionHandler;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;
    .registers 2

    .prologue
    .line 124
    const-class v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->a:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;Lcom/tencent/bugly/lejiagu/crashreport/crash/b;Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;Lcom/tencent/bugly/lejiagu/proguard/t;ZLjava/lang/String;)Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;
    .registers 15

    .prologue
    .line 115
    const-class v7, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    monitor-enter v7

    :try_start_3
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->a:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    if-nez v0, :cond_14

    .line 116
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;-><init>(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;Lcom/tencent/bugly/lejiagu/crashreport/crash/b;Lcom/tencent/bugly/lejiagu/proguard/t;ZLjava/lang/String;)V

    sput-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->a:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    .line 120
    :cond_14
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->a:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v7

    return-object v0

    .line 115
    :catchall_18
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method static synthetic h(Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/lejiagu/crashreport/crash/b;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->m:Lcom/tencent/bugly/lejiagu/crashreport/crash/b;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .registers 16

    .prologue
    const/4 v14, 0x1

    const/4 v2, 0x0

    .line 395
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/a;->o()J

    move-result-wide v0

    sget-wide v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->f:J

    sub-long v3, v0, v3

    .line 396
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 398
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 399
    if-eqz v5, :cond_26

    array-length v0, v5

    if-nez v0, :cond_27

    .line 430
    :cond_26
    :goto_26
    return-void

    .line 403
    :cond_27
    const-string v6, "tomb_"

    const-string v7, ".txt"

    .line 404
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    .line 407
    array-length v9, v5

    move v1, v2

    move v0, v2

    :goto_32
    if-ge v1, v9, :cond_68

    aget-object v10, v5, v1

    .line 408
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 409
    invoke-virtual {v11, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_52

    .line 411
    :try_start_40
    invoke-virtual {v11, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 412
    if-lez v12, :cond_5f

    .line 413
    invoke-virtual {v11, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_4d} :catch_55

    move-result-wide v11

    .line 414
    cmp-long v11, v11, v3

    if-ltz v11, :cond_5f

    .line 407
    :cond_52
    :goto_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 419
    :catch_55
    move-exception v12

    const-string v12, "tomb format error delete %s"

    new-array v13, v14, [Ljava/lang/Object;

    aput-object v11, v13, v2

    invoke-static {v12, v13}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 423
    :cond_5f
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v10

    if-eqz v10, :cond_52

    .line 424
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 428
    :cond_68
    const-string v1, "clean tombs %d"

    new-array v3, v14, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_26
.end method

.method protected final declared-synchronized a(Z)V
    .registers 11

    .prologue
    const/4 v6, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 212
    monitor-enter p0

    :try_start_4
    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->j:Z

    if-eqz v0, :cond_12

    .line 213
    const-string v0, "native already registed!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_a2

    .line 270
    :goto_10
    monitor-exit p0

    return-void

    .line 217
    :cond_12
    :try_start_12
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;

    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    iget-object v3, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->m:Lcom/tencent/bugly/lejiagu/crashreport/crash/b;

    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;-><init>(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;Lcom/tencent/bugly/lejiagu/crashreport/crash/b;Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->e:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeExceptionHandler;

    .line 221
    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->i:Z
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_a2

    if-eqz v0, :cond_c8

    .line 223
    :try_start_29
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->regist(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    .line 224
    if-eqz v1, :cond_9a

    .line 225
    const-string v0, "Native Crash Report enable!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 226
    const-string v0, "Check extra jni for Bugly NDK v%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "2.1.1"

    const-string v2, "."

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "."

    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v8, :cond_a5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_6f} :catch_91
    .catchall {:try_start_29 .. :try_end_6f} :catchall_a2

    move-result-object v0

    :cond_70
    :goto_70
    :try_start_70
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lt v0, v2, :cond_7d

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->l:Z
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_7d} :catch_1a5
    .catchall {:try_start_70 .. :try_end_7d} :catchall_a2

    :cond_7d
    :goto_7d
    :try_start_7d
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->l:Z

    if-eqz v0, :cond_bf

    const-string v0, "Extra bugly jni can be accessed."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 227
    :goto_89
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    iput-object v1, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->l:Ljava/lang/String;

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->j:Z
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_90} :catch_91
    .catchall {:try_start_7d .. :try_end_90} :catchall_a2

    goto :goto_10

    .line 232
    :catch_91
    move-exception v0

    :try_start_92
    const-string v0, "load bugly so fail"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 268
    :cond_9a
    :goto_9a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->i:Z

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->h:Z
    :try_end_a0
    .catchall {:try_start_92 .. :try_end_a0} :catchall_a2

    goto/16 :goto_10

    .line 212
    :catchall_a2
    move-exception v0

    monitor-exit p0

    throw v0

    .line 226
    :cond_a5
    :try_start_a5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v7, :cond_70

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_70

    :cond_bf
    const-string v0, "Extra bugly jni can not be accessed."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_c7
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_c7} :catch_91
    .catchall {:try_start_a5 .. :try_end_c7} :catchall_a2

    goto :goto_89

    .line 234
    :cond_c8
    :try_start_c8
    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->h:Z
    :try_end_ca
    .catchall {:try_start_c8 .. :try_end_ca} :catchall_a2

    if-eqz v0, :cond_9a

    .line 236
    :try_start_cc
    const-string v0, "com.tencent.feedback.eup.jni.NativeExceptionUpload"

    const-string v1, "registNativeExceptionHandler2"

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->q()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->E()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x3

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/bugly/lejiagu/proguard/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 243
    if-nez v0, :cond_159

    .line 244
    const-string v0, "com.tencent.feedback.eup.jni.NativeExceptionUpload"

    const-string v1, "registNativeExceptionHandler"

    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->q()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->E()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/bugly/lejiagu/proguard/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 254
    :cond_159
    if-eqz v0, :cond_9a

    .line 255
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->j:Z

    .line 256
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v1

    iput-object v0, v1, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->l:Ljava/lang/String;

    .line 257
    const-string v0, "com.tencent.feedback.eup.jni.NativeExceptionUpload"

    const-string v1, "enableHandler"

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/bugly/lejiagu/proguard/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/b;->a:Z

    if-eqz v0, :cond_1a3

    move v0, v6

    .line 260
    :goto_184
    const-string v1, "com.tencent.feedback.eup.jni.NativeExceptionUpload"

    const-string v2, "setLogMode"

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tencent/bugly/lejiagu/proguard/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19e
    .catch Ljava/lang/Throwable; {:try_start_cc .. :try_end_19e} :catch_1a0
    .catchall {:try_start_cc .. :try_end_19e} :catchall_a2

    goto/16 :goto_10

    :catch_1a0
    move-exception v0

    goto/16 :goto_9a

    .line 259
    :cond_1a3
    const/4 v0, 0x5

    goto :goto_184

    :catch_1a5
    move-exception v0

    goto/16 :goto_7d
.end method

.method public appendLogToNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 507
    iget-boolean v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->i:Z

    if-eqz v1, :cond_9

    sget-boolean v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->l:Z

    if-nez v1, :cond_a

    .line 522
    :cond_9
    :goto_9
    return v0

    .line 510
    :cond_a
    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    if-eqz p3, :cond_9

    .line 514
    :try_start_10
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->appendNativeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_13
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_10 .. :try_end_13} :catch_15
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_13} :catch_19

    move-result v0

    goto :goto_9

    .line 516
    :catch_15
    move-exception v1

    sput-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->l:Z

    goto :goto_9

    .line 518
    :catch_19
    move-exception v1

    .line 519
    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 520
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9
.end method

.method protected native appendNativeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method protected native appendWholeNativeLog(Ljava/lang/String;)Z
.end method

.method public declared-synchronized getDumpFilePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNativeExceptionHandler()Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeExceptionHandler;
    .registers 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->e:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeExceptionHandler;

    return-object v0
.end method

.method protected native getNativeKeyValueList()Ljava/lang/String;
.end method

.method protected native getNativeLog()Ljava/lang/String;
.end method

.method public declared-synchronized isUserOpened()Z
    .registers 2

    .prologue
    .line 455
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->k:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStrategyChanged(Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;)V
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 485
    monitor-enter p0

    if-eqz p1, :cond_1c

    :try_start_5
    iget-boolean v2, p1, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->d:Z

    iget-boolean v3, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->j:Z

    if-eq v2, v3, :cond_1c

    .line 486
    const-string v2, "server native changed to %b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-boolean v5, p1, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->d:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 489
    :cond_1c
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;

    move-result-object v2

    iget-boolean v2, v2, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->d:Z

    if-eqz v2, :cond_44

    iget-boolean v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->k:Z

    if-eqz v2, :cond_44

    .line 491
    :goto_2c
    iget-boolean v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->j:Z

    if-eq v0, v1, :cond_42

    .line 492
    const-string v1, "native changed to %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 493
    invoke-direct {p0, v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->b(Z)V
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_46

    .line 496
    :cond_42
    monitor-exit p0

    return-void

    :cond_44
    move v0, v1

    .line 489
    goto :goto_2c

    .line 485
    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public putKeyValueToNative(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 534
    iget-boolean v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->i:Z

    if-eqz v1, :cond_9

    sget-boolean v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->l:Z

    if-nez v1, :cond_a

    .line 549
    :cond_9
    :goto_9
    return v0

    .line 537
    :cond_a
    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 541
    :try_start_e
    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->putNativeKeyValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_11
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_e .. :try_end_11} :catch_13
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_11} :catch_17

    move-result v0

    goto :goto_9

    .line 543
    :catch_13
    move-exception v1

    sput-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->l:Z

    goto :goto_9

    .line 545
    :catch_17
    move-exception v1

    .line 546
    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 547
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9
.end method

.method protected native putNativeKeyValue(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method protected native regist(Ljava/lang/String;ZI)Ljava/lang/String;
.end method

.method protected native removeNativeKeyValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public declared-synchronized setDumpFilePath(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 132
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 133
    monitor-exit p0

    return-void

    .line 132
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setUserOpened(Z)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 473
    invoke-direct {p0, p1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->c(Z)V

    .line 475
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->d:Z

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->isUserOpened()Z

    move-result v0

    if-eqz v0, :cond_2d

    move v0, v1

    .line 477
    :goto_18
    iget-boolean v3, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->j:Z

    if-eq v0, v3, :cond_2c

    .line 478
    const-string v3, "native changed to %b"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 479
    invoke-direct {p0, v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->b(Z)V

    .line 482
    :cond_2c
    return-void

    :cond_2d
    move v0, v2

    .line 475
    goto :goto_18
.end method

.method public declared-synchronized startNativeMonitor()V
    .registers 3

    .prologue
    .line 273
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->i:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->h:Z

    if-eqz v0, :cond_10

    .line 274
    :cond_9
    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->g:Z

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->a(Z)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1b

    .line 327
    :goto_e
    monitor-exit p0

    return-void

    .line 278
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/tencent/bugly/lejiagu/proguard/t;

    new-instance v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler$1;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler$1;-><init>(Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/t;->b(Ljava/lang/Runnable;)Z
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1b

    goto :goto_e

    .line 273
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected native testCrash()V
.end method

.method public testNativeCrash()V
    .registers 3

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->i:Z

    if-nez v0, :cond_d

    .line 380
    const-string v0, "libBugly.so has not been load! so fail!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 385
    :goto_c
    return-void

    .line 384
    :cond_d
    invoke-virtual {p0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->testCrash()V

    goto :goto_c
.end method

.method protected native unregist()Ljava/lang/String;
.end method