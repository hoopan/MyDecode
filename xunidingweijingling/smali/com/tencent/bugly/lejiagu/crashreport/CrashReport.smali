.class public Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$CrashHandleCallback;,
        Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 877
    return-void
.end method

.method public static closeBugly()V
    .locals 2

    .prologue
    .line 239
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/Bugly;->enable:Z

    if-nez v0, :cond_1

    .line 240
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v1, "Can not close bugly because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    invoke-static {}, Lcom/tencent/bugly/lejiagu/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 244
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v1, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 248
    :cond_2
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 252
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->closeCrashReport()V

    .line 254
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->a(Landroid/content/Context;)V

    .line 256
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/t;->a()Lcom/tencent/bugly/lejiagu/proguard/t;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/proguard/t;->b()V

    goto :goto_0
.end method

.method public static declared-synchronized closeCrashReport()V
    .locals 3

    .prologue
    .line 223
    const-class v1, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 224
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v2, "Can not close crash report because bugly is disable."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :goto_0
    monitor-exit v1

    return-void

    .line 227
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/lejiagu/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 232
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->a()Lcom/tencent/bugly/lejiagu/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized closeNativeReport()V
    .locals 3

    .prologue
    .line 191
    const-class v1, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 192
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v2, "Can not close native report because bugly is disable."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :goto_0
    monitor-exit v1

    return-void

    .line 195
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/lejiagu/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 200
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->a()Lcom/tencent/bugly/lejiagu/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static enableBugly(Z)V
    .locals 0

    .prologue
    .line 47
    sput-boolean p0, Lcom/tencent/bugly/lejiagu/Bugly;->enable:Z

    .line 48
    return-void
.end method

.method public static getAllUserDataKeys(Landroid/content/Context;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 430
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v1, "Can not get all keys of user data because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 437
    :goto_0
    return-object v0

    .line 433
    :cond_0
    if-nez p0, :cond_1

    .line 434
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;

    const-string v1, "getAllUserDataKeys args context should not be null"

    invoke-direct {v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_1
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->y()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized getAppChannel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 573
    const-class v1, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 574
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v2, "Can not get App channel because bugly is disable."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const-string v0, "unknown"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    :goto_0
    monitor-exit v1

    return-object v0

    .line 577
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/lejiagu/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 578
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 573
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 582
    :cond_1
    :try_start_2
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->j:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized getAppID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 462
    const-class v1, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 463
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v2, "Can not get App ID because bugly is disable."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string v0, "unknown"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    :goto_0
    monitor-exit v1

    return-object v0

    .line 466
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/lejiagu/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 467
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 471
    :cond_1
    :try_start_2
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->e()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized getAppVer()Ljava/lang/String;
    .locals 3

    .prologue
    .line 555
    const-class v1, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 556
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v2, "Can not get app version because bugly is disable."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const-string v0, "unknown"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    :goto_0
    monitor-exit v1

    return-object v0

    .line 559
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/lejiagu/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 560
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 564
    :cond_1
    :try_start_2
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->i:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static getBuglyVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    if-nez p0, :cond_0

    .line 109
    const-string v0, "Please call with context."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 110
    const-string v0, "unknown"

    .line 113
    :goto_0
    return-object v0

    .line 112
    :cond_0
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    .line 113
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSdkExtraData()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 646
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 647
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v1, "Can not get SDK extra data because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 650
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/tencent/bugly/lejiagu/b;->b:Ljava/util/Map;

    goto :goto_0
.end method

.method public static getUserData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 309
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 310
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v1, "Can not get user data because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-string v0, "unknown"

    .line 321
    :goto_0
    return-object v0

    .line 313
    :cond_0
    if-nez p0, :cond_1

    .line 314
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;

    const-string v1, "getUserDataValue args context should not be null"

    invoke-direct {v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 318
    const/4 v0, 0x0

    goto :goto_0

    .line 317
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 321
    :cond_3
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUserDatasSize(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 447
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 448
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v1, "Can not get size of user data because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const/4 v0, -0x1

    .line 455
    :goto_0
    return v0

    .line 451
    :cond_0
    if-nez p0, :cond_1

    .line 452
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;

    const-string v1, "getUserDatasSize args context should not be null"

    invoke-direct {v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_1
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->x()I

    move-result v0

    goto :goto_0
.end method

.method public static declared-synchronized getUserId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 537
    const-class v1, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 538
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v2, "Can not get user ID because bugly is disable."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const-string v0, "unknown"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    :goto_0
    monitor-exit v1

    return-object v0

    .line 541
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/lejiagu/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 542
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 537
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 546
    :cond_1
    :try_start_2
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->f()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0
.end method

.method public static getUserSceneTagId(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 290
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 291
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v1, "Can not get user scene tag because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v0, -0x1

    .line 298
    :goto_0
    return v0

    .line 294
    :cond_0
    if-nez p0, :cond_1

    .line 295
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;

    const-string v1, "getUserSceneTagId args context should not be null"

    invoke-direct {v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_1
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->A()I

    move-result v0

    goto :goto_0
.end method

.method public static declared-synchronized initCrashReport(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 57
    const-class v1, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a:Landroid/content/Context;

    .line 58
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/b;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit v1

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized initCrashReport(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;)V
    .locals 2

    .prologue
    .line 68
    const-class v1, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a:Landroid/content/Context;

    .line 69
    invoke-static {p0, p1}, Lcom/tencent/bugly/lejiagu/b;->a(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/BuglyStrategy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit v1

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 81
    const-class v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v1}, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit v0

    return-void

    .line 81
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized initCrashReport(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;)V
    .locals 2

    .prologue
    .line 94
    const-class v1, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 99
    :goto_0
    monitor-exit v1

    return-void

    .line 97
    :cond_0
    :try_start_0
    sput-object p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a:Landroid/content/Context;

    .line 98
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/bugly/lejiagu/b;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/lejiagu/BuglyStrategy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isLastSessionCrash()Z
    .locals 3

    .prologue
    .line 595
    const-class v1, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 596
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v2, "The info \'isLastSessionCrash\' is not accurate because bugly is disable."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    const/4 v0, 0x0

    .line 605
    :goto_0
    monitor-exit v1

    return v0

    .line 600
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/lejiagu/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 601
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 595
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 605
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->a()Lcom/tencent/bugly/lejiagu/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->b()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_0
.end method

.method public static declared-synchronized postCatchedException(Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    .line 169
    const-class v6, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;

    monitor-enter v6

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 170
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v1, "Can not post crash caught because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :goto_0
    monitor-exit v6

    return-void

    .line 173
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/lejiagu/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;

    const-string v1, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    .line 178
    :cond_1
    if-nez p0, :cond_2

    .line 179
    :try_start_2
    const-string v0, "throwable is null, just return"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    :cond_2
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->a()Lcom/tencent/bugly/lejiagu/crashreport/crash/c;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static putSdkData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/16 v8, 0xc8

    const/16 v7, 0x32

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 654
    if-eqz p0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 671
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 654
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    .line 657
    :cond_3
    const-string v0, "[a-zA-Z[0-9]]+"

    const-string v3, ""

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 658
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_4

    .line 659
    sget-object v3, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v4, "putSdkData key length over limit %d, will be cutted."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 663
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x1f4

    if-le v3, v4, :cond_5

    .line 664
    sget-object v3, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v4, "putSdkData value length over limit %d, will be cutted!"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    invoke-virtual {p2, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 669
    :cond_5
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v3

    invoke-virtual {v3, v0, p2}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    sget-object v3, Lcom/tencent/bugly/lejiagu/proguard/u;->a:Ljava/lang/String;

    const-string v4, "[param] putSdkData data: %s - %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    aput-object p2, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static putUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/16 v7, 0xc8

    const/16 v6, 0x32

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 333
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 334
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v1, "Can not put user data because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :goto_0
    return-void

    .line 337
    :cond_0
    if-nez p0, :cond_1

    .line 338
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v1, "putUserData args context should not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 342
    :cond_1
    if-nez p1, :cond_2

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    const-string v0, "putUserData args key should not be null or empty"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 348
    :cond_2
    if-nez p2, :cond_3

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    const-string v0, "putUserData args value should not be null"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 354
    :cond_3
    const-string v0, "[a-zA-Z[0-9]]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "putUserData args key should match [a-zA-Z[0-9]]+  {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 359
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_5

    .line 360
    const-string v0, "user data value length over limit %d, it will be cutted!"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 362
    invoke-virtual {p2, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 365
    :cond_5
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->y()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 369
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    .line 370
    if-eqz v0, :cond_6

    .line 371
    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->putKeyValueToNative(Ljava/lang/String;Ljava/lang/String;)Z

    .line 373
    :cond_6
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v0, "replace KV %s %s"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 379
    :cond_7
    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->x()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_8

    .line 380
    const-string v0, "user data size is over limit %d, it will be cutted!"

    new-array v1, v4, [Ljava/lang/Object;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 385
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_9

    .line 386
    const-string v0, "user data key length over limit %d , will drop this new key %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 388
    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 392
    :cond_9
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    .line 393
    if-eqz v0, :cond_a

    .line 394
    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->putKeyValueToNative(Ljava/lang/String;Ljava/lang/String;)Z

    .line 396
    :cond_a
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v0, "[param] set user data: %s - %s"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static removeUserData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 407
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 408
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v1, "Can not remove user data because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const-string v0, "unknown"

    .line 419
    :goto_0
    return-object v0

    .line 411
    :cond_0
    if-nez p0, :cond_1

    .line 412
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;

    const-string v1, "removeUserData args context should not be null"

    invoke-direct {v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 416
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 415
    goto :goto_1

    .line 418
    :cond_3
    const-string v0, "[param] remove user data: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 419
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setAppChannel(Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 731
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/Bugly;->enable:Z

    if-nez v0, :cond_1

    .line 732
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v1, "Can not set APP version because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    invoke-static {}, Lcom/tencent/bugly/lejiagu/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 736
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;

    const-string v1, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 739
    :cond_2
    if-nez p0, :cond_3

    .line 740
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v1, "channel is null, will not set"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 743
    :cond_3
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/m;->a()Lcom/tencent/bugly/lejiagu/proguard/m;

    move-result-object v0

    .line 744
    if-nez v0, :cond_4

    .line 745
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v1, "DB Manager has not been initialed, can not replace App channel"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 749
    :cond_4
    if-nez p1, :cond_5

    .line 750
    const/16 v1, 0x22c

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/m;->a(ILcom/tencent/bugly/lejiagu/proguard/l;Z)Ljava/util/Map;

    move-result-object v1

    .line 752
    if-eqz v1, :cond_5

    const-string v2, "app_channel"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 753
    new-instance p0, Ljava/lang/String;

    const-string v2, "app_channel"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([B)V

    .line 757
    :cond_5
    sget-object v1, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v1

    iput-object p0, v1, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->j:Ljava/lang/String;

    .line 758
    const/16 v1, 0x22c

    const-string v2, "app_channel"

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/proguard/m;->a(ILjava/lang/String;[BLcom/tencent/bugly/lejiagu/proguard/l;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 760
    :catch_0
    move-exception v0

    .line 761
    sget-boolean v1, Lcom/tencent/bugly/lejiagu/b;->a:Z

    if-eqz v1, :cond_0

    .line 762
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static setAppVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 709
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 710
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v1, "Can not set APP version because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :goto_0
    return-void

    .line 713
    :cond_0
    if-nez p0, :cond_1

    .line 714
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v1, "setAppVersion args context should not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 717
    :cond_1
    if-nez p1, :cond_2

    .line 718
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v1, "Version is null, will not set"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 721
    :cond_2
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    iput-object p1, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method public static declared-synchronized setContext(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 586
    const-class v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    monitor-exit v0

    return-void

    .line 586
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setIsAppForeground(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 677
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 678
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v1, "Can not set \'isAppForeground\' because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :goto_0
    return-void

    .line 681
    :cond_0
    if-nez p0, :cond_1

    .line 682
    const-string v0, "Context should not be null."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 685
    :cond_1
    if-eqz p1, :cond_2

    .line 686
    const-string v0, "App is in foreground."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 690
    :goto_1
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    iput-boolean p1, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->n:Z

    goto :goto_0

    .line 688
    :cond_2
    const-string v0, "App is in background."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static setJavascriptMonitor(Landroid/webkit/WebView;Z)Z
    .locals 1

    .prologue
    .line 782
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->setJavascriptMonitor(Landroid/webkit/WebView;ZZ)Z

    move-result v0

    return v0
.end method

.method public static setJavascriptMonitor(Landroid/webkit/WebView;ZZ)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 802
    if-nez p0, :cond_1

    .line 803
    sget-object v1, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v2, "Webview is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_0
    :goto_0
    return v0

    .line 806
    :cond_1
    invoke-static {}, Lcom/tencent/bugly/lejiagu/CrashModule;->hasInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    .line 807
    const-string v1, "CrashReport has not been initialed! please to call method \'initCrashReport\' first!"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 810
    :cond_2
    const-string v2, "Set Javascript exception monitor of webview."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 811
    sget-boolean v2, Lcom/tencent/bugly/lejiagu/Bugly;->enable:Z

    if-nez v2, :cond_3

    .line 812
    sget-object v1, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v2, "Can not set JavaScript monitor because bugly is disable."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 815
    :cond_3
    const-string v2, "URL of webview is %s"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 816
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 819
    if-nez p2, :cond_4

    .line 820
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 821
    const/16 v3, 0x13

    if-ge v2, v3, :cond_4

    .line 822
    const-string v1, "This interface is only available for Android 4.4 or later."

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 827
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 828
    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 829
    const-string v3, "Enable the javascript needed by webview monitor."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 830
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 832
    :cond_5
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/h5/H5JavaScriptInterface;->getInstance(Landroid/webkit/WebView;)Lcom/tencent/bugly/lejiagu/crashreport/crash/h5/H5JavaScriptInterface;

    move-result-object v2

    .line 833
    if-eqz v2, :cond_6

    .line 834
    const-string v3, "Add a secure javascript interface to the webview."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 835
    const-string v3, "exceptionUploader"

    invoke-virtual {p0, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 837
    :cond_6
    if-eqz p1, :cond_8

    .line 838
    const-string v2, "Inject bugly.js(v%s) to the webview."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/crash/h5/c;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 839
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/crash/h5/c;->a()Ljava/lang/String;

    move-result-object v2

    .line 840
    if-nez v2, :cond_7

    .line 841
    const-string v2, "Failed to inject Bugly.js."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/crash/h5/c;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 844
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "javascript:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_8
    move v0, v1

    .line 846
    goto/16 :goto_0
.end method

.method public static declared-synchronized setSdkExtraData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 615
    const-class v3, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;

    monitor-enter v3

    :try_start_0
    sget-boolean v2, Lcom/tencent/bugly/lejiagu/Bugly;->enable:Z

    if-nez v2, :cond_1

    .line 616
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v1, "Can not put SDK extra data because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 620
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_2

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    move v2, v0

    :goto_1
    if-nez v2, :cond_0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    :goto_2
    if-nez v0, :cond_0

    .line 623
    sget-object v0, Lcom/tencent/bugly/lejiagu/b;->b:Ljava/util/Map;

    .line 624
    if-nez v0, :cond_6

    .line 625
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .line 628
    :goto_3
    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 630
    const-string v4, "SDK_INFO"

    .line 631
    const-string v0, ""

    .line 632
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v0

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 633
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 634
    goto :goto_4

    :cond_2
    move v2, v1

    .line 620
    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 635
    :cond_4
    invoke-static {p0, v4, v1}, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->putSdkData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :cond_5
    sput-object v2, Lcom/tencent/bugly/lejiagu/b;->b:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 615
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_6
    move-object v2, v0

    goto :goto_3
.end method

.method public static setSessionIntervalMills(J)V
    .locals 2

    .prologue
    .line 695
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 696
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v1, "Can not set \'SessionIntervalMills\' because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :goto_0
    return-void

    .line 699
    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->a(J)V

    goto :goto_0
.end method

.method public static setUserId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v3, 0x64

    const/4 v4, 0x0

    .line 497
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/Bugly;->enable:Z

    if-nez v0, :cond_1

    .line 498
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v1, "Can not set user ID because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    if-nez p0, :cond_2

    .line 502
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;

    const-string v1, "Context should not be null when bugly has not been initialed!"

    invoke-direct {v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_2
    if-nez p1, :cond_3

    .line 506
    const-string v0, "userId should not be null"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 509
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_4

    .line 510
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 511
    const-string v1, "userId %s length is over limit %d substring to %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object p1, v0

    .line 517
    :cond_4
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->b(Ljava/lang/String;)V

    .line 522
    const-string v0, "[user] set userId : %s"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 525
    invoke-static {}, Lcom/tencent/bugly/lejiagu/CrashModule;->hasInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->a()V

    goto :goto_0
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 480
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 481
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v1, "Can not set user ID because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :goto_0
    return-void

    .line 484
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/lejiagu/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 485
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;

    const-string v1, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_1
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->setUserId(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setUserSceneTag(Landroid/content/Context;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 268
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 269
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v1, "Can not set tag caught because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :goto_0
    return-void

    .line 272
    :cond_0
    if-nez p0, :cond_1

    .line 273
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;

    const-string v1, "setTag args context should not be null"

    invoke-direct {v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_1
    if-gtz p1, :cond_2

    .line 277
    const-string v0, "setTag args tagId should > 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 280
    :cond_2
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(I)V

    .line 281
    const-string v0, "[param] set user scene tag: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static declared-synchronized startCrashReport()V
    .locals 3

    .prologue
    .line 207
    const-class v1, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 208
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v2, "Can not start crash report because bugly is disable."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :goto_0
    monitor-exit v1

    return-void

    .line 211
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/lejiagu/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 216
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->a()Lcom/tencent/bugly/lejiagu/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized testANRCrash()V
    .locals 3

    .prologue
    .line 152
    const-class v1, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 153
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v2, "Can not test ANR crash because bugly is disable."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :goto_0
    monitor-exit v1

    return-void

    .line 156
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/lejiagu/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 160
    :cond_1
    :try_start_2
    const-string v0, "start to create a anr crash for test!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 161
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->a()Lcom/tencent/bugly/lejiagu/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->k()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized testJavaCrash()V
    .locals 3

    .prologue
    .line 120
    const-class v1, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 121
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v2, "Can not test Java crash because bugly is disable."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit v1

    return-void

    .line 124
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/lejiagu/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 128
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "This Crash create for Test! You can go to Bugly see more detail!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public static declared-synchronized testNativeCrash()V
    .locals 3

    .prologue
    .line 136
    const-class v1, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 137
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v2, "Can not test native crash because bugly is disable."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :goto_0
    monitor-exit v1

    return-void

    .line 140
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/lejiagu/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 144
    :cond_1
    :try_start_2
    const-string v0, "start to create a native crash for test!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 145
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->a()Lcom/tencent/bugly/lejiagu/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->j()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
