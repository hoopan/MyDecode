.class public Lcom/tencent/bugly/lejiagu/BuglyStrategy;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/lejiagu/BuglyStrategy$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Lcom/tencent/bugly/lejiagu/BuglyStrategy$a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v0, p0, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->g:Z

    .line 21
    iput-boolean v0, p0, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->h:Z

    .line 22
    iput-boolean v0, p0, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->i:Z

    .line 23
    iput-boolean v0, p0, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->j:Z

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->k:Z

    .line 237
    return-void
.end method


# virtual methods
.method public declared-synchronized getAppChannel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->b:Ljava/lang/String;

    if-nez v0, :cond_d

    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->j:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_10

    :goto_b
    monitor-exit p0

    return-object v0

    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->b:Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_10

    goto :goto_b

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAppPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->c:Ljava/lang/String;

    if-nez v0, :cond_d

    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->c:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_10

    :goto_b
    monitor-exit p0

    return-object v0

    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->c:Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_10

    goto :goto_b

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAppReportDelay()J
    .registers 3

    .prologue
    .line 117
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->d:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAppVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->a:Ljava/lang/String;

    if-nez v0, :cond_d

    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->i:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_10

    :goto_b
    monitor-exit p0

    return-object v0

    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->a:Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_10

    goto :goto_b

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCrashHandleCallback()Lcom/tencent/bugly/lejiagu/BuglyStrategy$a;
    .registers 2

    .prologue
    .line 219
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->l:Lcom/tencent/bugly/lejiagu/BuglyStrategy$a;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDeviceID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->f:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLibBuglySOFilePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 137
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->e:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isBuglyLogUpload()Z
    .registers 2

    .prologue
    .line 48
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->j:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEnableANRCrashMonitor()Z
    .registers 2

    .prologue
    .line 203
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->h:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEnableNativeCrashMonitor()Z
    .registers 2

    .prologue
    .line 171
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->g:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEnableUserInfo()Z
    .registers 2

    .prologue
    .line 196
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->i:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized recordUserInfoOnceADay()Z
    .registers 2

    .prologue
    .line 52
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->k:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppChannel(Ljava/lang/String;)Lcom/tencent/bugly/lejiagu/BuglyStrategy;
    .registers 3

    .prologue
    .line 91
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->b:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 92
    monitor-exit p0

    return-object p0

    .line 91
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppPackageName(Ljava/lang/String;)Lcom/tencent/bugly/lejiagu/BuglyStrategy;
    .registers 3

    .prologue
    .line 111
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->c:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 112
    monitor-exit p0

    return-object p0

    .line 111
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppReportDelay(J)Lcom/tencent/bugly/lejiagu/BuglyStrategy;
    .registers 4

    .prologue
    .line 127
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->d:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 128
    monitor-exit p0

    return-object p0

    .line 127
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppVersion(Ljava/lang/String;)Lcom/tencent/bugly/lejiagu/BuglyStrategy;
    .registers 3

    .prologue
    .line 71
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->a:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 72
    monitor-exit p0

    return-object p0

    .line 71
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBuglyLogUpload(Z)V
    .registers 3

    .prologue
    .line 34
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->j:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 35
    monitor-exit p0

    return-void

    .line 34
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCrashHandleCallback(Lcom/tencent/bugly/lejiagu/BuglyStrategy$a;)V
    .registers 3

    .prologue
    .line 228
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->l:Lcom/tencent/bugly/lejiagu/BuglyStrategy$a;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 229
    monitor-exit p0

    return-void

    .line 228
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDeviceID(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 164
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->f:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 165
    monitor-exit p0

    return-void

    .line 164
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEnableANRCrashMonitor(Z)V
    .registers 3

    .prologue
    .line 210
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->h:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 211
    monitor-exit p0

    return-void

    .line 210
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEnableNativeCrashMonitor(Z)V
    .registers 3

    .prologue
    .line 180
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->g:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 181
    monitor-exit p0

    return-void

    .line 180
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEnableUserInfo(Z)V
    .registers 2

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->i:Z

    .line 190
    return-void
.end method

.method public declared-synchronized setLibBuglySOFilePath(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 146
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->e:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 147
    monitor-exit p0

    return-void

    .line 146
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRecordUserInfoOnceADay(Z)V
    .registers 3

    .prologue
    .line 44
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->k:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 45
    monitor-exit p0

    return-void

    .line 44
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method