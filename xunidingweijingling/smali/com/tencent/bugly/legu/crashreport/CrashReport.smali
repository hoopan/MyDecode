.class public Lcom/tencent/bugly/legu/crashreport/CrashReport;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/legu/crashreport/CrashReport$CrashHandleCallback;,
        Lcom/tencent/bugly/legu/crashreport/CrashReport$UserStrategy;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 884
    return-void
.end method

.method public static closeBugly()V
    .locals 2

    .prologue
    .line 257
    sget-boolean v0, Lcom/tencent/bugly/legu/b;->a:Z

    if-nez v0, :cond_1

    .line 258
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v1, "Can not close bugly because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    invoke-static {}, Lcom/tencent/bugly/legu/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 262
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 266
    :cond_2
    sget-object v0, Lcom/tencent/bugly/legu/crashreport/CrashReport;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 270
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier;->getInstance()Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_3

    .line 272
    sget-object v1, Lcom/tencent/bugly/legu/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier;->unregist(Landroid/content/Context;)V

    .line 275
    :cond_3
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/CrashReport;->closeCrashReport()V

    .line 277
    sget-object v0, Lcom/tencent/bugly/legu/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/legu/crashreport/biz/b;->a(Landroid/content/Context;)V

    .line 279
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/v;->a()Lcom/tencent/bugly/legu/proguard/v;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0}, Lcom/tencent/bugly/legu/proguard/v;->b()V

    goto :goto_0
.end method

.method public static declared-synchronized closeCrashReport()V
    .locals 3

    .prologue
    .line 241
    const-class v1, Lcom/tencent/bugly/legu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/legu/b;->a:Z

    if-nez v0, :cond_0

    .line 242
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v2, "Can not close crash report because bugly is disable."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :goto_0
    monitor-exit v1

    return-void

    .line 245
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/legu/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v2, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 250
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/crash/c;->a()Lcom/tencent/bugly/legu/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/crash/c;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized closeNativeReport()V
    .locals 3

    .prologue
    .line 209
    const-class v1, Lcom/tencent/bugly/legu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/legu/b;->a:Z

    if-nez v0, :cond_0

    .line 210
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v2, "Can not close native report because bugly is disable."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :goto_0
    monitor-exit v1

    return-void

    .line 213
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/legu/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v2, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 218
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/crash/c;->a()Lcom/tencent/bugly/legu/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/crash/c;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static enableBugly(Z)V
    .locals 0

    .prologue
    .line 46
    sput-boolean p0, Lcom/tencent/bugly/legu/b;->a:Z

    .line 47
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
    .line 456
    sget-boolean v0, Lcom/tencent/bugly/legu/b;->a:Z

    if-nez v0, :cond_0

    .line 457
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v1, "Can not get all keys of user data because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 465
    :goto_0
    return-object v0

    .line 460
    :cond_0
    if-nez p0, :cond_1

    .line 461
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v1, "getAllUserDataKeys args context should not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    .line 465
    :cond_1
    invoke-static {p0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->z()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized getAppChannel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 604
    const-class v1, Lcom/tencent/bugly/legu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/legu/b;->a:Z

    if-nez v0, :cond_0

    .line 605
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v2, "Can not get App channel because bugly is disable."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const-string v0, "unknown"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    :goto_0
    monitor-exit v1

    return-object v0

    .line 608
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/legu/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 609
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v2, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const-string v0, "unknown"

    goto :goto_0

    .line 613
    :cond_1
    sget-object v0, Lcom/tencent/bugly/legu/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->j:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 604
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getAppID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 491
    const-class v1, Lcom/tencent/bugly/legu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/legu/b;->a:Z

    if-nez v0, :cond_0

    .line 492
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v2, "Can not get App ID because bugly is disable."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const-string v0, "unknown"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    :goto_0
    monitor-exit v1

    return-object v0

    .line 495
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/legu/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 496
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v2, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const-string v0, "unknown"

    goto :goto_0

    .line 500
    :cond_1
    sget-object v0, Lcom/tencent/bugly/legu/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->e()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getAppVer()Ljava/lang/String;
    .locals 3

    .prologue
    .line 586
    const-class v1, Lcom/tencent/bugly/legu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/legu/b;->a:Z

    if-nez v0, :cond_0

    .line 587
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v2, "Can not get app version because bugly is disable."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const-string v0, "unknown"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    :goto_0
    monitor-exit v1

    return-object v0

    .line 590
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/legu/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 591
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v2, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const-string v0, "unknown"

    goto :goto_0

    .line 595
    :cond_1
    sget-object v0, Lcom/tencent/bugly/legu/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->i:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 586
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getBuglyVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    if-nez p0, :cond_0

    .line 111
    const-string v0, "Please call with context."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 112
    const-string v0, "unknown"

    .line 115
    :goto_0
    return-object v0

    .line 114
    :cond_0
    invoke-static {p0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/legu/crashreport/common/info/a;

    .line 115
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->b()Ljava/lang/String;

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
    .line 677
    sget-boolean v0, Lcom/tencent/bugly/legu/b;->a:Z

    if-nez v0, :cond_0

    .line 678
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v1, "Can not get SDK extra data because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 681
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/tencent/bugly/legu/b;->c:Ljava/util/Map;

    goto :goto_0
.end method

.method public static getUserData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 334
    sget-boolean v0, Lcom/tencent/bugly/legu/b;->a:Z

    if-nez v0, :cond_0

    .line 335
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v1, "Can not get user data because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string v0, "unknown"

    .line 347
    :goto_0
    return-object v0

    .line 338
    :cond_0
    if-nez p0, :cond_1

    .line 339
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v1, "getUserDataValue args context should not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const-string v0, "unknown"

    goto :goto_0

    .line 343
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

    .line 344
    const/4 v0, 0x0

    goto :goto_0

    .line 343
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 347
    :cond_3
    invoke-static {p0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUserDatasSize(Landroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 475
    sget-boolean v1, Lcom/tencent/bugly/legu/b;->a:Z

    if-nez v1, :cond_0

    .line 476
    sget-object v1, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v2, "Can not get size of user data because bugly is disable."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :goto_0
    return v0

    .line 479
    :cond_0
    if-nez p0, :cond_1

    .line 480
    sget-object v1, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v2, "getUserDatasSize args context should not be null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 484
    :cond_1
    invoke-static {p0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->y()I

    move-result v0

    goto :goto_0
.end method

.method public static declared-synchronized getUserId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 568
    const-class v1, Lcom/tencent/bugly/legu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/legu/b;->a:Z

    if-nez v0, :cond_0

    .line 569
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v2, "Can not get user ID because bugly is disable."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const-string v0, "unknown"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    :goto_0
    monitor-exit v1

    return-object v0

    .line 572
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/legu/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 573
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v2, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const-string v0, "unknown"

    goto :goto_0

    .line 577
    :cond_1
    sget-object v0, Lcom/tencent/bugly/legu/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->f()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 568
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getUserSceneTagId(Landroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 314
    sget-boolean v1, Lcom/tencent/bugly/legu/b;->a:Z

    if-nez v1, :cond_0

    .line 315
    sget-object v1, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v2, "Can not get user scene tag because bugly is disable."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :goto_0
    return v0

    .line 318
    :cond_0
    if-nez p0, :cond_1

    .line 319
    sget-object v1, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v2, "getUserSceneTagId args context should not be null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 323
    :cond_1
    invoke-static {p0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->B()I

    move-result v0

    goto :goto_0
.end method

.method public static declared-synchronized initCrashReport(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 56
    const-class v1, Lcom/tencent/bugly/legu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/tencent/bugly/legu/crashreport/CrashReport;->a:Landroid/content/Context;

    .line 57
    invoke-static {}, Lcom/tencent/bugly/legu/CrashModule;->getInstance()Lcom/tencent/bugly/legu/CrashModule;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/legu/b;->a(Lcom/tencent/bugly/legu/a;)V

    .line 58
    invoke-static {p0}, Lcom/tencent/bugly/legu/b;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit v1

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized initCrashReport(Landroid/content/Context;Lcom/tencent/bugly/legu/crashreport/CrashReport$UserStrategy;)V
    .locals 2

    .prologue
    .line 68
    const-class v1, Lcom/tencent/bugly/legu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/tencent/bugly/legu/crashreport/CrashReport;->a:Landroid/content/Context;

    .line 69
    invoke-static {}, Lcom/tencent/bugly/legu/CrashModule;->getInstance()Lcom/tencent/bugly/legu/CrashModule;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/legu/b;->a(Lcom/tencent/bugly/legu/a;)V

    .line 70
    invoke-static {p0, p1}, Lcom/tencent/bugly/legu/b;->a(Landroid/content/Context;Lcom/tencent/bugly/legu/BuglyStrategy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
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
    .line 82
    const-class v0, Lcom/tencent/bugly/legu/crashreport/CrashReport;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v1}, Lcom/tencent/bugly/legu/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/legu/crashreport/CrashReport$UserStrategy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit v0

    return-void

    .line 82
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized initCrashReport(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/legu/crashreport/CrashReport$UserStrategy;)V
    .locals 2

    .prologue
    .line 95
    const-class v1, Lcom/tencent/bugly/legu/crashreport/CrashReport;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 101
    :goto_0
    monitor-exit v1

    return-void

    .line 98
    :cond_0
    :try_start_0
    sput-object p0, Lcom/tencent/bugly/legu/crashreport/CrashReport;->a:Landroid/content/Context;

    .line 99
    invoke-static {}, Lcom/tencent/bugly/legu/CrashModule;->getInstance()Lcom/tencent/bugly/legu/CrashModule;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/legu/b;->a(Lcom/tencent/bugly/legu/a;)V

    .line 100
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/bugly/legu/b;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/legu/BuglyStrategy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isLastSessionCrash()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 626
    const-class v1, Lcom/tencent/bugly/legu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/tencent/bugly/legu/b;->a:Z

    if-nez v2, :cond_0

    .line 627
    sget-object v2, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v3, "The info \'isLastSessionCrash\' is not accurate because bugly is disable."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    :goto_0
    monitor-exit v1

    return v0

    .line 631
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/legu/CrashModule;->hasInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 632
    sget-object v2, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v3, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 626
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 636
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/crash/c;->a()Lcom/tencent/bugly/legu/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/crash/c;->b()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_0
.end method

.method public static declared-synchronized postCatchedException(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 171
    const-class v0, Lcom/tencent/bugly/legu/crashreport/CrashReport;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/tencent/bugly/legu/crashreport/CrashReport;->postCatchedException(Ljava/lang/Throwable;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit v0

    return-void

    .line 171
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized postCatchedException(Ljava/lang/Throwable;Z)V
    .locals 7

    .prologue
    .line 181
    const-class v6, Lcom/tencent/bugly/legu/crashreport/CrashReport;

    monitor-enter v6

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/legu/b;->a:Z

    if-nez v0, :cond_1

    .line 182
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v1, "Can not post crash caught because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :cond_0
    :goto_0
    monitor-exit v6

    return-void

    .line 185
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/legu/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 186
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    .line 190
    :cond_2
    if-nez p0, :cond_3

    .line 191
    :try_start_2
    const-string v0, "throwable is null, just return"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 195
    :cond_3
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/crash/c;->a()Lcom/tencent/bugly/legu/crashreport/crash/c;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/legu/crashreport/crash/c;->a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[B)V

    .line 198
    if-eqz p1, :cond_0

    .line 200
    const-string v0, "clear user datas"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 201
    sget-object v0, Lcom/tencent/bugly/legu/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->x()V
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

    .line 685
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

    .line 702
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 685
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    .line 688
    :cond_3
    const-string v0, "[a-zA-Z[0-9]]+"

    const-string v3, ""

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 689
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_4

    .line 690
    sget-object v3, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v4, "putSdkData key length over limit %d, will be cutted."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 694
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x1f4

    if-le v3, v4, :cond_5

    .line 695
    sget-object v3, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v4, "putSdkData value length over limit %d, will be cutted!"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    invoke-virtual {p2, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 700
    :cond_5
    invoke-static {p0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v3

    invoke-virtual {v3, v0, p2}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const-string v3, "[param] putSdkData data: %s - %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    aput-object p2, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

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

    .line 359
    sget-boolean v0, Lcom/tencent/bugly/legu/b;->a:Z

    if-nez v0, :cond_0

    .line 360
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v1, "Can not put user data because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :goto_0
    return-void

    .line 363
    :cond_0
    if-nez p0, :cond_1

    .line 364
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v1, "putUserData args context should not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 368
    :cond_1
    if-nez p1, :cond_2

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    const-string v0, "putUserData args key should not be null or empty"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 374
    :cond_2
    if-nez p2, :cond_3

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    const-string v0, "putUserData args value should not be null"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 380
    :cond_3
    const-string v0, "[a-zA-Z[0-9]]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 381
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

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 385
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_5

    .line 386
    const-string v0, "user data value length over limit %d, it will be cutted!"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 388
    invoke-virtual {p2, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 391
    :cond_5
    invoke-static {p0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->z()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 395
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    .line 396
    if-eqz v0, :cond_6

    .line 397
    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;->putKeyValueToNative(Ljava/lang/String;Ljava/lang/String;)Z

    .line 399
    :cond_6
    invoke-static {p0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v0, "replace KV %s %s"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 405
    :cond_7
    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->y()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_8

    .line 406
    const-string v0, "user data size is over limit %d, it will be cutted!"

    new-array v1, v4, [Ljava/lang/Object;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 411
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_9

    .line 412
    const-string v0, "user data key length over limit %d , will drop this new key %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 414
    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 418
    :cond_9
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    .line 419
    if-eqz v0, :cond_a

    .line 420
    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeCrashHandler;->putKeyValueToNative(Ljava/lang/String;Ljava/lang/String;)Z

    .line 422
    :cond_a
    invoke-static {p0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v0, "[param] set user data: %s - %s"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static removeUserData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 433
    sget-boolean v0, Lcom/tencent/bugly/legu/b;->a:Z

    if-nez v0, :cond_0

    .line 434
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v1, "Can not remove user data because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const-string v0, "unknown"

    .line 446
    :goto_0
    return-object v0

    .line 437
    :cond_0
    if-nez p0, :cond_1

    .line 438
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v1, "removeUserData args context should not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const-string v0, "unknown"

    goto :goto_0

    .line 442
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

    .line 443
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 442
    goto :goto_1

    .line 445
    :cond_3
    const-string v0, "[param] remove user data: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Lcom/tencent/bugly/legu/proguard/w;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 446
    invoke-static {p0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setAppVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 759
    sget-boolean v0, Lcom/tencent/bugly/legu/b;->a:Z

    if-nez v0, :cond_0

    .line 760
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v1, "Can not set APP version because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :goto_0
    return-void

    .line 763
    :cond_0
    if-nez p0, :cond_1

    .line 764
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v1, "setAppVersion args context should not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 767
    :cond_1
    if-nez p1, :cond_2

    .line 768
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v1, "Version is null, will not set"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 771
    :cond_2
    invoke-static {p0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v0

    iput-object p1, v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method public static declared-synchronized setContext(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 617
    const-class v0, Lcom/tencent/bugly/legu/crashreport/CrashReport;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/tencent/bugly/legu/crashreport/CrashReport;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    monitor-exit v0

    return-void

    .line 617
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setIsAppForeground(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 708
    sget-boolean v0, Lcom/tencent/bugly/legu/b;->a:Z

    if-nez v0, :cond_0

    .line 709
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v1, "Can not set \'isAppForeground\' because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :goto_0
    return-void

    .line 712
    :cond_0
    if-nez p0, :cond_1

    .line 713
    const-string v0, "Context should not be null."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 716
    :cond_1
    if-eqz p1, :cond_2

    .line 717
    const-string v0, "App is in foreground."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 721
    :goto_1
    invoke-static {p0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v0

    iput-boolean p1, v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->n:Z

    goto :goto_0

    .line 719
    :cond_2
    const-string v0, "App is in background."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static setIsDevelopmentDevice(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 728
    sget-boolean v0, Lcom/tencent/bugly/legu/b;->a:Z

    if-nez v0, :cond_0

    .line 729
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v1, "Can not set \'isDevelopmentDevice\' because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :goto_0
    return-void

    .line 732
    :cond_0
    if-nez p0, :cond_1

    .line 733
    const-string v0, "Context should not be null."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 736
    :cond_1
    if-eqz p1, :cond_2

    .line 737
    const-string v0, "This is a development device."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 741
    :goto_1
    invoke-static {p0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v0

    iput-boolean p1, v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->x:Z

    goto :goto_0

    .line 739
    :cond_2
    const-string v0, "This is not a development device."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static setJavascriptMonitor(Landroid/webkit/WebView;Z)Z
    .locals 1

    .prologue
    .line 789
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/bugly/legu/crashreport/CrashReport;->setJavascriptMonitor(Landroid/webkit/WebView;ZZ)Z

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

    .line 809
    if-nez p0, :cond_1

    .line 810
    sget-object v1, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v2, "Webview is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_0
    :goto_0
    return v0

    .line 813
    :cond_1
    invoke-static {}, Lcom/tencent/bugly/legu/CrashModule;->hasInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    .line 814
    const-string v1, "CrashReport has not been initialed! please to call method \'initCrashReport\' first!"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 817
    :cond_2
    const-string v2, "Set Javascript exception monitor of webview."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 818
    sget-boolean v2, Lcom/tencent/bugly/legu/b;->a:Z

    if-nez v2, :cond_3

    .line 819
    sget-object v1, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v2, "Can not set JavaScript monitor because bugly is disable."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 822
    :cond_3
    const-string v2, "URL of webview is %s"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 823
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 826
    if-nez p2, :cond_4

    .line 827
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 828
    const/16 v3, 0x13

    if-ge v2, v3, :cond_4

    .line 829
    const-string v1, "This interface is only available for Android 4.4 or later."

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 834
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 835
    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 836
    const-string v3, "Enable the javascript needed by webview monitor."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 837
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 839
    :cond_5
    invoke-static {p0}, Lcom/tencent/bugly/legu/crashreport/crash/h5/H5JavaScriptInterface;->getInstance(Landroid/webkit/WebView;)Lcom/tencent/bugly/legu/crashreport/crash/h5/H5JavaScriptInterface;

    move-result-object v2

    .line 840
    if-eqz v2, :cond_6

    .line 841
    const-string v3, "Add a secure javascript interface to the webview."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 842
    const-string v3, "exceptionUploader"

    invoke-virtual {p0, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 844
    :cond_6
    if-eqz p1, :cond_8

    .line 845
    const-string v2, "Inject bugly.js(v%s) to the webview."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/crash/h5/c;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 846
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/crash/h5/c;->a()Ljava/lang/String;

    move-result-object v2

    .line 847
    if-nez v2, :cond_7

    .line 848
    const-string v2, "Failed to inject Bugly.js."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/crash/h5/c;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 851
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

    .line 853
    goto/16 :goto_0
.end method

.method public static declared-synchronized setSdkExtraData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 646
    const-class v3, Lcom/tencent/bugly/legu/crashreport/CrashReport;

    monitor-enter v3

    :try_start_0
    sget-boolean v2, Lcom/tencent/bugly/legu/b;->a:Z

    if-nez v2, :cond_1

    .line 647
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v1, "Can not put SDK extra data because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 651
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

    .line 654
    sget-object v0, Lcom/tencent/bugly/legu/b;->c:Ljava/util/Map;

    .line 655
    if-nez v0, :cond_6

    .line 656
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .line 659
    :goto_3
    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 661
    const-string v4, "SDK_INFO"

    .line 662
    const-string v0, ""

    .line 663
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

    .line 664
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

    .line 665
    goto :goto_4

    :cond_2
    move v2, v1

    .line 651
    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 666
    :cond_4
    invoke-static {p0, v4, v1}, Lcom/tencent/bugly/legu/crashreport/CrashReport;->putSdkData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    :cond_5
    sput-object v2, Lcom/tencent/bugly/legu/b;->c:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 646
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
    .line 745
    sget-boolean v0, Lcom/tencent/bugly/legu/b;->a:Z

    if-nez v0, :cond_0

    .line 746
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v1, "Can not set \'SessionIntervalMills\' because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :goto_0
    return-void

    .line 749
    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/bugly/legu/crashreport/biz/b;->a(J)V

    goto :goto_0
.end method

.method public static setUserId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v3, 0x64

    const/4 v4, 0x0

    .line 528
    sget-boolean v0, Lcom/tencent/bugly/legu/b;->a:Z

    if-nez v0, :cond_1

    .line 529
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v1, "Can not set user ID because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    if-nez p0, :cond_2

    .line 533
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v1, "Context should not be null when bugly has not been initialed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 536
    :cond_2
    if-nez p1, :cond_3

    .line 537
    const-string v0, "userId should not be null"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 540
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_4

    .line 541
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 542
    const-string v1, "userId %s length is over limit %d substring to %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object p1, v0

    .line 548
    :cond_4
    invoke-static {p0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    invoke-static {p0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->b(Ljava/lang/String;)V

    .line 553
    const-string v0, "[user] set userId : %s"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 556
    invoke-static {}, Lcom/tencent/bugly/legu/CrashModule;->hasInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/biz/b;->a()V

    goto :goto_0
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 509
    sget-boolean v0, Lcom/tencent/bugly/legu/b;->a:Z

    if-nez v0, :cond_0

    .line 510
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v1, "Can not set user ID because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :goto_0
    return-void

    .line 513
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/legu/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 514
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 517
    :cond_1
    sget-object v0, Lcom/tencent/bugly/legu/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/tencent/bugly/legu/crashreport/CrashReport;->setUserId(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setUserSceneTag(Landroid/content/Context;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 291
    sget-boolean v0, Lcom/tencent/bugly/legu/b;->a:Z

    if-nez v0, :cond_0

    .line 292
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v1, "Can not set tag caught because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :goto_0
    return-void

    .line 295
    :cond_0
    if-nez p0, :cond_1

    .line 296
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v1, "setTag args context should not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 300
    :cond_1
    if-gtz p1, :cond_2

    .line 301
    const-string v0, "setTag args tagId should > 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 304
    :cond_2
    invoke-static {p0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a(I)V

    .line 305
    const-string v0, "[param] set user scene tag: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static declared-synchronized startCrashReport()V
    .locals 3

    .prologue
    .line 225
    const-class v1, Lcom/tencent/bugly/legu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/legu/b;->a:Z

    if-nez v0, :cond_0

    .line 226
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v2, "Can not start crash report because bugly is disable."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :goto_0
    monitor-exit v1

    return-void

    .line 229
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/legu/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v2, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 234
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/crash/c;->a()Lcom/tencent/bugly/legu/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/crash/c;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized testANRCrash()V
    .locals 3

    .prologue
    .line 154
    const-class v1, Lcom/tencent/bugly/legu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/legu/b;->a:Z

    if-nez v0, :cond_0

    .line 155
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v2, "Can not test ANR crash because bugly is disable."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :goto_0
    monitor-exit v1

    return-void

    .line 158
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/legu/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v2, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 162
    :cond_1
    :try_start_2
    const-string v0, "start to create a anr crash for test!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 163
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/crash/c;->a()Lcom/tencent/bugly/legu/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/crash/c;->k()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized testJavaCrash()V
    .locals 3

    .prologue
    .line 122
    const-class v1, Lcom/tencent/bugly/legu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/legu/b;->a:Z

    if-nez v0, :cond_0

    .line 123
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v2, "Can not test Java crash because bugly is disable."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :goto_0
    monitor-exit v1

    return-void

    .line 126
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/legu/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v2, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 130
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
    .line 138
    const-class v1, Lcom/tencent/bugly/legu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/legu/b;->a:Z

    if-nez v0, :cond_0

    .line 139
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v2, "Can not test native crash because bugly is disable."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :goto_0
    monitor-exit v1

    return-void

    .line 142
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/legu/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v2, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 146
    :cond_1
    :try_start_2
    const-string v0, "start to create a native crash for test!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 147
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/crash/c;->a()Lcom/tencent/bugly/legu/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/crash/c;->j()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
