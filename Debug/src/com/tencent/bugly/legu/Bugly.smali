.class public Lcom/tencent/bugly/legu/Bugly;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static final SDK_IS_DEV:Ljava/lang/String; = "false"

.field private static a:Z

.field public static applicationContext:Landroid/content/Context;

.field private static b:[Ljava/lang/String;

.field private static c:[Ljava/lang/String;

.field public static enable:Z

.field public static isDev:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 31
    sput-boolean v2, Lcom/tencent/bugly/legu/Bugly;->enable:Z

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/legu/Bugly;->applicationContext:Landroid/content/Context;

    .line 44
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "BuglyCrashModule"

    aput-object v1, v0, v3

    const-string v1, "BuglyRqdModule"

    aput-object v1, v0, v2

    const-string v1, "BuglyBetaModule"

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/bugly/legu/Bugly;->b:[Ljava/lang/String;

    .line 45
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "BuglyRqdModule"

    aput-object v1, v0, v3

    const-string v1, "BuglyCrashModule"

    aput-object v1, v0, v2

    const-string v1, "BuglyBetaModule"

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/bugly/legu/Bugly;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getAppChannel()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 109
    const-class v2, Lcom/tencent/bugly/legu/Bugly;

    monitor-enter v2

    :try_start_4
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a()Lcom/tencent/bugly/legu/crashreport/common/info/a;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_3b

    move-result-object v1

    .line 110
    if-nez v1, :cond_c

    .line 131
    :goto_a
    monitor-exit v2

    return-object v0

    .line 114
    :cond_c
    :try_start_c
    iget-object v0, v1, Lcom/tencent/bugly/legu/crashreport/common/info/a;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 115
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/o;->a()Lcom/tencent/bugly/legu/proguard/o;

    move-result-object v0

    .line 116
    if-nez v0, :cond_1d

    .line 117
    iget-object v0, v1, Lcom/tencent/bugly/legu/crashreport/common/info/a;->j:Ljava/lang/String;

    goto :goto_a

    .line 121
    :cond_1d
    const/16 v3, 0x22c

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Lcom/tencent/bugly/legu/proguard/o;->a(ILcom/tencent/bugly/legu/proguard/n;Z)Ljava/util/Map;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_38

    .line 124
    const-string v3, "app_channel"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 125
    if-eqz v0, :cond_38

    .line 126
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    goto :goto_a

    .line 131
    :cond_38
    iget-object v0, v1, Lcom/tencent/bugly/legu/crashreport/common/info/a;->j:Ljava/lang/String;
    :try_end_3a
    .catchall {:try_start_c .. :try_end_3a} :catchall_3b

    goto :goto_a

    .line 109
    :catchall_3b
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/bugly/legu/Bugly;->init(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/legu/BuglyStrategy;)V

    .line 57
    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/legu/BuglyStrategy;)V
    .registers 10

    .prologue
    .line 68
    const-class v2, Lcom/tencent/bugly/legu/Bugly;

    monitor-enter v2

    :try_start_3
    sget-boolean v0, Lcom/tencent/bugly/legu/Bugly;->a:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1a

    if-eqz v0, :cond_9

    .line 102
    :goto_7
    monitor-exit v2

    return-void

    .line 71
    :cond_9
    const/4 v0, 0x1

    :try_start_a
    sput-boolean v0, Lcom/tencent/bugly/legu/Bugly;->a:Z

    .line 72
    if-nez p0, :cond_1d

    .line 73
    :cond_e
    :goto_e
    sput-object p0, Lcom/tencent/bugly/legu/Bugly;->applicationContext:Landroid/content/Context;

    if-nez p0, :cond_25

    .line 74
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v1, "init arg \'context\' should not be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1a

    goto :goto_7

    .line 68
    :catchall_1a
    move-exception v0

    monitor-exit v2

    throw v0

    .line 72
    :cond_1d
    :try_start_1d
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_e

    move-object p0, v0

    goto :goto_e

    .line 79
    :cond_25
    invoke-static {}, Lcom/tencent/bugly/legu/Bugly;->isDev()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 80
    sget-object v0, Lcom/tencent/bugly/legu/Bugly;->c:[Ljava/lang/String;

    sput-object v0, Lcom/tencent/bugly/legu/Bugly;->b:[Ljava/lang/String;

    .line 85
    :cond_2f
    sget-object v3, Lcom/tencent/bugly/legu/Bugly;->b:[Ljava/lang/String;

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_34
    if-ge v1, v4, :cond_66

    aget-object v0, v3, v1
    :try_end_38
    .catchall {:try_start_1d .. :try_end_38} :catchall_1a

    .line 87
    :try_start_38
    const-string v5, "BuglyCrashModule"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 88
    invoke-static {}, Lcom/tencent/bugly/legu/CrashModule;->getInstance()Lcom/tencent/bugly/legu/CrashModule;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/legu/b;->a(Lcom/tencent/bugly/legu/a;)V

    .line 85
    :cond_47
    :goto_47
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_34

    .line 89
    :cond_4b
    const-string v5, "BuglyBetaModule"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_47

    .line 91
    const-string v5, "BuglyRqdModule"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_47

    .line 93
    const-string v5, "BuglyFeedbackModule"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_60} :catch_61
    .catchall {:try_start_38 .. :try_end_60} :catchall_1a

    goto :goto_47

    .line 96
    :catch_61
    move-exception v0

    .line 97
    :try_start_62
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->b(Ljava/lang/Throwable;)Z

    goto :goto_47

    .line 100
    :cond_66
    sget-boolean v0, Lcom/tencent/bugly/legu/Bugly;->enable:Z

    sput-boolean v0, Lcom/tencent/bugly/legu/b;->a:Z

    .line 101
    sget-object v0, Lcom/tencent/bugly/legu/Bugly;->applicationContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/tencent/bugly/legu/b;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/legu/BuglyStrategy;)V
    :try_end_6f
    .catchall {:try_start_62 .. :try_end_6f} :catchall_1a

    goto :goto_7
.end method

.method public static isDev()Z
    .registers 3

    .prologue
    .line 139
    sget-object v0, Lcom/tencent/bugly/legu/Bugly;->isDev:Ljava/lang/Boolean;

    if-nez v0, :cond_18

    .line 140
    const-string v0, "false"

    const-string v1, "@"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/legu/Bugly;->isDev:Ljava/lang/Boolean;

    .line 142
    :cond_18
    sget-object v0, Lcom/tencent/bugly/legu/Bugly;->isDev:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
