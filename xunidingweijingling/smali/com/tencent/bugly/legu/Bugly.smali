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
    .locals 6

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
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getAppChannel()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 109
    const-class v2, Lcom/tencent/bugly/legu/Bugly;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a()Lcom/tencent/bugly/legu/crashreport/common/info/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 110
    if-nez v1, :cond_0

    .line 131
    :goto_0
    monitor-exit v2

    return-object v0

    .line 114
    :cond_0
    :try_start_1
    iget-object v0, v1, Lcom/tencent/bugly/legu/crashreport/common/info/a;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/o;->a()Lcom/tencent/bugly/legu/proguard/o;

    move-result-object v0

    .line 116
    if-nez v0, :cond_1

    .line 117
    iget-object v0, v1, Lcom/tencent/bugly/legu/crashreport/common/info/a;->j:Ljava/lang/String;

    goto :goto_0

    .line 121
    :cond_1
    const/16 v3, 0x22c

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Lcom/tencent/bugly/legu/proguard/o;->a(ILcom/tencent/bugly/legu/proguard/n;Z)Ljava/util/Map;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_2

    .line 124
    const-string v3, "app_channel"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 125
    if-eqz v0, :cond_2

    .line 126
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    goto :goto_0

    .line 131
    :cond_2
    iget-object v0, v1, Lcom/tencent/bugly/legu/crashreport/common/info/a;->j:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/bugly/legu/Bugly;->init(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/legu/BuglyStrategy;)V

    .line 57
    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/legu/BuglyStrategy;)V
    .locals 6

    .prologue
    .line 68
    const-class v2, Lcom/tencent/bugly/legu/Bugly;

    monitor-enter v2

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/legu/Bugly;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 102
    :goto_0
    monitor-exit v2

    return-void

    .line 71
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/tencent/bugly/legu/Bugly;->a:Z

    .line 72
    if-nez p0, :cond_2

    .line 73
    :cond_1
    :goto_1
    sput-object p0, Lcom/tencent/bugly/legu/Bugly;->applicationContext:Landroid/content/Context;

    if-nez p0, :cond_3

    .line 74
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v1, "init arg \'context\' should not be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 72
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p0, v0

    goto :goto_1

    .line 79
    :cond_3
    invoke-static {}, Lcom/tencent/bugly/legu/Bugly;->isDev()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    sget-object v0, Lcom/tencent/bugly/legu/Bugly;->c:[Ljava/lang/String;

    sput-object v0, Lcom/tencent/bugly/legu/Bugly;->b:[Ljava/lang/String;

    .line 85
    :cond_4
    sget-object v3, Lcom/tencent/bugly/legu/Bugly;->b:[Ljava/lang/String;

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v4, :cond_7

    aget-object v0, v3, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    :try_start_3
    const-string v5, "BuglyCrashModule"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 88
    invoke-static {}, Lcom/tencent/bugly/legu/CrashModule;->getInstance()Lcom/tencent/bugly/legu/CrashModule;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/legu/b;->a(Lcom/tencent/bugly/legu/a;)V

    .line 85
    :cond_5
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 89
    :cond_6
    const-string v5, "BuglyBetaModule"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 91
    const-string v5, "BuglyRqdModule"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 93
    const-string v5, "BuglyFeedbackModule"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 96
    :catch_0
    move-exception v0

    .line 97
    :try_start_4
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->b(Ljava/lang/Throwable;)Z

    goto :goto_3

    .line 100
    :cond_7
    sget-boolean v0, Lcom/tencent/bugly/legu/Bugly;->enable:Z

    sput-boolean v0, Lcom/tencent/bugly/legu/b;->a:Z

    .line 101
    sget-object v0, Lcom/tencent/bugly/legu/Bugly;->applicationContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/tencent/bugly/legu/b;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/legu/BuglyStrategy;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static isDev()Z
    .locals 3

    .prologue
    .line 139
    sget-object v0, Lcom/tencent/bugly/legu/Bugly;->isDev:Ljava/lang/Boolean;

    if-nez v0, :cond_0

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
    :cond_0
    sget-object v0, Lcom/tencent/bugly/legu/Bugly;->isDev:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
