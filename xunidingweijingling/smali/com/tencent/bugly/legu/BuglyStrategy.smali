.class public Lcom/tencent/bugly/legu/BuglyStrategy;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/legu/BuglyStrategy$a;
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

.field private j:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lcom/tencent/bugly/legu/BuglyStrategy$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v1, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->g:Z

    .line 21
    iput-boolean v1, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->h:Z

    .line 22
    iput-boolean v1, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->i:Z

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->j:Ljava/lang/Class;

    .line 24
    iput-boolean v1, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->k:Z

    .line 25
    iput-boolean v1, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->l:Z

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->m:Z

    .line 274
    return-void
.end method


# virtual methods
.method public declared-synchronized getAppChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a()Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAppPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a()Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->c:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAppReportDelay()J
    .locals 2

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a()Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCrashHandleCallback()Lcom/tencent/bugly/legu/BuglyStrategy$a;
    .locals 1

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->n:Lcom/tencent/bugly/legu/BuglyStrategy$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLibBuglySOFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserInfoActivity()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->j:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isBuglyLogUpload()Z
    .locals 1

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEnableANRCrashMonitor()Z
    .locals 1

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEnableNativeCrashMonitor()Z
    .locals 1

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEnableUserInfo()Z
    .locals 1

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isReplaceOldChannel()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->l:Z

    return v0
.end method

.method public declared-synchronized recordUserInfoOnceADay()Z
    .locals 1

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppChannel(Ljava/lang/String;)Lcom/tencent/bugly/legu/BuglyStrategy;
    .locals 1

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-object p0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppPackageName(Ljava/lang/String;)Lcom/tencent/bugly/legu/BuglyStrategy;
    .locals 1

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-object p0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppReportDelay(J)Lcom/tencent/bugly/legu/BuglyStrategy;
    .locals 1

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-object p0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppVersion(Ljava/lang/String;)Lcom/tencent/bugly/legu/BuglyStrategy;
    .locals 1

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-object p0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBuglyLogUpload(Z)V
    .locals 1

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCrashHandleCallback(Lcom/tencent/bugly/legu/BuglyStrategy$a;)Lcom/tencent/bugly/legu/BuglyStrategy;
    .locals 1

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->n:Lcom/tencent/bugly/legu/BuglyStrategy$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    monitor-exit p0

    return-object p0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDeviceID(Ljava/lang/String;)Lcom/tencent/bugly/legu/BuglyStrategy;
    .locals 1

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-object p0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEnableANRCrashMonitor(Z)Lcom/tencent/bugly/legu/BuglyStrategy;
    .locals 1

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    monitor-exit p0

    return-object p0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEnableNativeCrashMonitor(Z)Lcom/tencent/bugly/legu/BuglyStrategy;
    .locals 1

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit p0

    return-object p0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEnableUserInfo(Z)Lcom/tencent/bugly/legu/BuglyStrategy;
    .locals 1

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-object p0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLibBuglySOFilePath(Ljava/lang/String;)Lcom/tencent/bugly/legu/BuglyStrategy;
    .locals 1

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit p0

    return-object p0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRecordUserInfoOnceADay(Z)Lcom/tencent/bugly/legu/BuglyStrategy;
    .locals 1

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-object p0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setReplaceOldChannel(Z)V
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->l:Z

    .line 64
    return-void
.end method

.method public declared-synchronized setUserInfoActivity(Ljava/lang/Class;)Lcom/tencent/bugly/legu/BuglyStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/tencent/bugly/legu/BuglyStrategy;"
        }
    .end annotation

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/bugly/legu/BuglyStrategy;->j:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-object p0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
