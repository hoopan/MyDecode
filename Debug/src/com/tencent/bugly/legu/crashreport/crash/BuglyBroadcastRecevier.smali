.class public Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier;
.super Landroid/content/BroadcastReceiver;
.source "BUGLY"


# static fields
.field public static ACTION_PROCESS_CRASHED:Ljava/lang/String; = null

.field public static ACTION_PROCESS_LAUNCHED:Ljava/lang/String; = null

.field public static final UPLOADLIMITED:J = 0xea60L

.field private static d:Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier;


# instance fields
.field private a:Landroid/content/IntentFilter;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-string v0, "com.tencent.feedback.A01"

    sput-object v0, Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier;->ACTION_PROCESS_LAUNCHED:Ljava/lang/String;

    .line 30
    const-string v0, "com.tencent.feedback.A02"

    sput-object v0, Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier;->ACTION_PROCESS_CRASHED:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier;->d:Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 45
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier;->a:Landroid/content/IntentFilter;

    .line 46
    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 14

    .prologue
    const-wide/32 v9, 0xea60

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 104
    monitor-enter p0

    if-eqz p1, :cond_16

    if-eqz p2, :cond_16

    :try_start_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_64

    move-result v2

    if-nez v2, :cond_19

    :cond_16
    move v0, v1

    .line 198
    :cond_17
    :goto_17
    monitor-exit p0

    return v0

    .line 108
    :cond_19
    :try_start_19
    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "is Connect BC "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 110
    const-string v2, "network %s changed to %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 112
    if-nez v1, :cond_67

    .line 114
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier;->c:Ljava/lang/String;
    :try_end_63
    .catchall {:try_start_19 .. :try_end_63} :catchall_64

    goto :goto_17

    .line 104
    :catchall_64
    move-exception v0

    monitor-exit p0

    throw v0

    .line 117
    :cond_67
    :try_start_67
    iget-object v2, p0, Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier;->c:Ljava/lang/String;

    .line 118
    iput-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier;->c:Ljava/lang/String;

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 122
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/legu/crashreport/common/strategy/a;

    move-result-object v5

    .line 123
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/t;->a()Lcom/tencent/bugly/legu/proguard/t;

    move-result-object v6

    .line 124
    invoke-static {p1}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v7

    .line 126
    if-eqz v5, :cond_81

    if-eqz v6, :cond_81

    if-nez v7, :cond_8a

    .line 127
    :cond_81
    const-string v1, "not inited BC not work"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_17

    .line 159
    :cond_8a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 160
    sget v1, Lcom/tencent/bugly/legu/crashreport/crash/c;->a:I

    invoke-virtual {v6, v1}, Lcom/tencent/bugly/legu/proguard/t;->a(I)J

    move-result-wide v1

    sub-long v1, v3, v1

    cmp-long v1, v1, v9

    if-lez v1, :cond_ad

    .line 162
    const-string v1, "try to upload crash on network changed."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 163
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/crash/c;->a()Lcom/tencent/bugly/legu/crashreport/crash/c;

    move-result-object v1

    const-wide/16 v7, 0x0

    invoke-virtual {v1, v7, v8}, Lcom/tencent/bugly/legu/crashreport/crash/c;->a(J)V

    .line 182
    :cond_ad
    const/16 v1, 0x3e9

    invoke-virtual {v6, v1}, Lcom/tencent/bugly/legu/proguard/t;->a(I)J

    move-result-wide v1

    sub-long v1, v3, v1

    cmp-long v1, v1, v9

    if-lez v1, :cond_17

    .line 183
    const-string v1, "try to upload userinfo on network changed."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 187
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/v;->a()Lcom/tencent/bugly/legu/proguard/v;

    move-result-object v1

    new-instance v2, Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier$1;

    invoke-direct {v2, p0}, Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier$1;-><init>(Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier;)V

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/legu/proguard/v;->b(Ljava/lang/Runnable;)Z
    :try_end_cd
    .catchall {:try_start_67 .. :try_end_cd} :catchall_64

    goto/16 :goto_17
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier;
    .registers 2

    .prologue
    .line 38
    const-class v1, Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier;->d:Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier;

    if-nez v0, :cond_e

    .line 39
    new-instance v0, Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier;

    invoke-direct {v0}, Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier;-><init>()V

    sput-object v0, Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier;->d:Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier;

    .line 41
    :cond_e
    sget-object v0, Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier;->d:Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized addFilter(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 58
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier;->a:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 59
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier;->a:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    :cond_e
    const-string v0, "add action %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 61
    monitor-exit p0

    return-void

    .line 58
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 51
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 52
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier;->b:Landroid/content/Context;

    if-eqz v0, :cond_c

    .line 53
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 54
    :cond_c
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 92
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier;->a(Landroid/content/Context;Landroid/content/Intent;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 98
    :cond_3
    :goto_3
    return-void

    .line 93
    :catch_4
    move-exception v0

    .line 94
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 95
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public declared-synchronized regist(Landroid/content/Context;Lcom/tencent/bugly/legu/crashreport/crash/b;)V
    .registers 5

    .prologue
    .line 66
    monitor-enter p0

    :try_start_1
    const-string v0, "regis BC"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 67
    iput-object p1, p0, Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier;->b:Landroid/content/Context;

    .line 69
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier;->a:Landroid/content/IntentFilter;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_10} :catch_12
    .catchall {:try_start_1 .. :try_end_10} :catchall_17

    .line 74
    :goto_10
    monitor-exit p0

    return-void

    .line 70
    :catch_12
    move-exception v0

    .line 71
    :try_start_13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_10

    .line 66
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregist(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 79
    monitor-enter p0

    :try_start_1
    const-string v0, "unregis BC"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 81
    iput-object p1, p0, Lcom/tencent/bugly/legu/crashreport/crash/BuglyBroadcastRecevier;->b:Landroid/content/Context;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_e} :catch_10
    .catchall {:try_start_1 .. :try_end_e} :catchall_1b

    .line 87
    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    .line 82
    :catch_10
    move-exception v0

    .line 83
    :try_start_11
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 84
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1b

    goto :goto_e

    .line 79
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
