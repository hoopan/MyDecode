.class public final Lcom/tencent/bugly/lejiagu/b;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static a:Z

.field public static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/lejiagu/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;

.field private static h:[Ljava/lang/String;

.field private static i:[Ljava/lang/String;

.field private static j:Ljava/lang/Boolean;

.field private static k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/bugly/lejiagu/b;->c:Ljava/util/List;

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "com.tencent.bugly"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "lejiagu"

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "lejiagu"

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/lejiagu/b;->d:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/bugly/lejiagu/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".CrashModule"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/lejiagu/b;->e:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/bugly/lejiagu/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".beta.Beta"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/lejiagu/b;->f:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/bugly/lejiagu/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".feedback.BFeedback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/lejiagu/b;->g:Ljava/lang/String;

    .line 44
    new-array v0, v6, [Ljava/lang/String;

    sget-object v1, Lcom/tencent/bugly/lejiagu/b;->e:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string v1, "com.tencent.feedback.eup.CrashReport"

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/bugly/lejiagu/b;->f:Ljava/lang/String;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tencent/bugly/lejiagu/b;->h:[Ljava/lang/String;

    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.tencent.feedback.eup.CrashReport"

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/bugly/lejiagu/b;->e:Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/bugly/lejiagu/b;->f:Ljava/lang/String;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/bugly/lejiagu/b;->g:Ljava/lang/String;

    aput-object v1, v0, v6

    sput-object v0, Lcom/tencent/bugly/lejiagu/b;->i:[Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/lejiagu/b;->b:Ljava/util/Map;

    return-void

    .line 32
    :cond_1
    const-string v0, ".lejiagu"

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 87
    const-class v0, Lcom/tencent/bugly/lejiagu/b;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/tencent/bugly/lejiagu/b;->a(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/BuglyStrategy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit v0

    return-void

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/BuglyStrategy;)V
    .locals 3

    .prologue
    .line 91
    const-class v1, Lcom/tencent/bugly/lejiagu/b;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/b;->k:Z

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "[init] initial Multi-times, ignore this."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :goto_0
    monitor-exit v1

    return-void

    .line 95
    :cond_0
    if-nez p0, :cond_1

    .line 96
    :try_start_1
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v2, "[init] context of init() is null, check it."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 99
    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    .line 102
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/b;->a(Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/bugly/lejiagu/Bugly;->enable:Z

    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->e()Ljava/lang/String;

    move-result-object v2

    .line 109
    if-nez v2, :cond_3

    .line 110
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;

    const-string v2, "[init] meta data of BUGLY_APPID in AndroidManifest.xml should be set."

    invoke-direct {v0, v2}, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_3
    iget-boolean v0, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->t:Z

    invoke-static {p0, v2, v0, p1}, Lcom/tencent/bugly/lejiagu/b;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/lejiagu/BuglyStrategy;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/lejiagu/BuglyStrategy;)V
    .locals 11

    .prologue
    const/16 v10, 0x64

    const/4 v1, 0x0

    .line 118
    const-class v3, Lcom/tencent/bugly/lejiagu/b;

    monitor-enter v3

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/b;->k:Z

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "[init] initial Multi-times, ignore this."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :goto_0
    monitor-exit v3

    return-void

    .line 122
    :cond_0
    if-nez p0, :cond_1

    .line 123
    :try_start_1
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    const-string v1, "[init] context of init() is null, check it."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 127
    :cond_1
    if-nez p1, :cond_2

    .line 128
    :try_start_2
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;

    const-string v1, "init arg \'crashReportAppID\' should not be null!"

    invoke-direct {v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/lejiagu/b;->k:Z

    .line 131
    if-eqz p2, :cond_3

    .line 133
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/lejiagu/b;->a:Z

    .line 134
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/lejiagu/proguard/u;->c:Z

    .line 135
    const-string v0, "Bugly debug\u6a21\u5f0f\u5f00\u542f\uff0c\u8bf7\u5728\u53d1\u5e03\u65f6\u628aisDebug\u5173\u95ed\u3002 -- Running in debug model for \'isDebug\' is enabled. Please disable it when you release."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 136
    const-string v0, "--------------------------------------------------------------------------------------------"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 137
    const-string v0, "Bugly debug\u6a21\u5f0f\u5c06\u6709\u4ee5\u4e0b\u884c\u4e3a\u7279\u6027 -- The following list shows the behaviour of debug model: "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 138
    const-string v0, "[1] \u8f93\u51fa\u8be6\u7ec6\u7684Bugly SDK\u7684Log -- More detailed log of Bugly SDK will be output to logcat;"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 139
    const-string v0, "[2] \u6bcf\u4e00\u6761Crash\u90fd\u4f1a\u88ab\u7acb\u5373\u4e0a\u62a5 -- Every crash caught by Bugly will be uploaded immediately."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 140
    const-string v0, "[3] \u81ea\u5b9a\u4e49\u65e5\u5fd7\u5c06\u4f1a\u5728Logcat\u4e2d\u8f93\u51fa -- Custom log will be output to logcat."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 141
    const-string v0, "--------------------------------------------------------------------------------------------"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 142
    const-string v0, "[init] bugly in debug mode."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 145
    :cond_3
    if-nez p0, :cond_8

    .line 149
    :cond_4
    :goto_1
    sget-object v0, Lcom/tencent/bugly/lejiagu/b;->j:Ljava/lang/Boolean;

    if-nez v0, :cond_5

    const-string v0, "false"

    const-string v2, "@"

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/lejiagu/b;->j:Ljava/lang/Boolean;

    :cond_5
    sget-object v0, Lcom/tencent/bugly/lejiagu/b;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 150
    sget-object v0, Lcom/tencent/bugly/lejiagu/b;->i:[Ljava/lang/String;

    sput-object v0, Lcom/tencent/bugly/lejiagu/b;->h:[Ljava/lang/String;

    .line 154
    :cond_6
    sget-object v4, Lcom/tencent/bugly/lejiagu/b;->h:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    :goto_2
    if-ge v2, v5, :cond_9

    aget-object v6, v4, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    :try_start_3
    const-string v0, "getInstance"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v0, v7, v8, v9}, Lcom/tencent/bugly/lejiagu/proguard/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/lejiagu/a;

    .line 159
    if-eqz v0, :cond_7

    .line 160
    sget-object v7, Lcom/tencent/bugly/lejiagu/b;->c:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    const-string v0, "[module] load: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-static {v0, v7}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    :cond_7
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 145
    :cond_8
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    move-object p0, v0

    goto :goto_1

    .line 169
    :cond_9
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/proguard/v;->a(Landroid/content/Context;)V

    .line 170
    sget-object v0, Lcom/tencent/bugly/lejiagu/b;->c:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/tencent/bugly/lejiagu/proguard/m;->a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/lejiagu/proguard/m;

    .line 171
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/proguard/r;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/proguard/r;

    .line 172
    sget-object v0, Lcom/tencent/bugly/lejiagu/b;->c:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    .line 173
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v4

    .line 176
    invoke-static {v4}, Lcom/tencent/bugly/lejiagu/b;->a(Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 177
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/bugly/lejiagu/Bugly;->enable:Z

    goto/16 :goto_0

    .line 181
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "lejiagu crash report start init!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 182
    const-string v0, "[init] bugly start init..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 184
    invoke-virtual {v4, p1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Ljava/lang/String;)V

    .line 185
    const-string v0, "[param] setted APPID:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v2, v5

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 187
    if-eqz p3, :cond_f

    invoke-virtual {p3}, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v10, :cond_15

    const/4 v0, 0x0

    const/16 v5, 0x64

    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v5, "appVersion %s length is over limit %d substring to %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    const/16 v7, 0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x2

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_4
    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->i:Ljava/lang/String;

    const-string v0, "setted APPVERSION:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p3}, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->getAppVersion()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_b
    invoke-virtual {p3}, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->getAppChannel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v10, :cond_14

    const/4 v0, 0x0

    const/16 v5, 0x64

    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v5, "appChannel %s length is over limit %d substring to %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    const/16 v7, 0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x2

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_5
    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->j:Ljava/lang/String;

    const-string v0, "setted APPCHANNEL:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p3}, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->getAppChannel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_c
    invoke-virtual {p3}, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->getAppPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v10, :cond_13

    const/4 v0, 0x0

    const/16 v5, 0x64

    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v5, "appPackageName %s length is over limit %d substring to %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    const/16 v7, 0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x2

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_6
    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->c:Ljava/lang/String;

    const-string v0, "setted PACKAGENAME:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p3}, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->getAppPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_d
    invoke-virtual {p3}, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v10, :cond_12

    const/4 v0, 0x0

    const/16 v5, 0x64

    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v5, "deviceId %s length is over limit %d substring to %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    const/16 v7, 0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x2

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_7
    invoke-virtual {v4, v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->c(Ljava/lang/String;)V

    const-string v2, "setted deviceId :%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_e
    invoke-virtual {p3}, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->isBuglyLogUpload()Z

    move-result v0

    sput-boolean v0, Lcom/tencent/bugly/lejiagu/proguard/v;->a:Z

    .line 189
    :cond_f
    invoke-static {p0, p3}, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->a(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/BuglyStrategy;)V

    .line 192
    :goto_8
    sget-object v0, Lcom/tencent/bugly/lejiagu/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-ge v1, v0, :cond_11

    .line 194
    :try_start_5
    sget-object v0, Lcom/tencent/bugly/lejiagu/b;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/lejiagu/a;

    invoke-virtual {v0, p0, p2, p3}, Lcom/tencent/bugly/lejiagu/a;->init(Landroid/content/Context;ZLcom/tencent/bugly/lejiagu/BuglyStrategy;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 192
    :cond_10
    :goto_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 195
    :catch_0
    move-exception v0

    .line 196
    :try_start_6
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 197
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 201
    :cond_11
    const-string v0, "crash report inited!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 202
    const-string v0, "[init] bugly init finished."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 163
    :catch_1
    move-exception v0

    goto/16 :goto_3

    :cond_12
    move-object v0, v2

    goto :goto_7

    :cond_13
    move-object v0, v2

    goto/16 :goto_6

    :cond_14
    move-object v0, v2

    goto/16 :goto_5

    :cond_15
    move-object v0, v2

    goto/16 :goto_4
.end method

.method private static a(Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;)Z
    .locals 3

    .prologue
    .line 78
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->m:Ljava/util/List;

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "lejiagu"

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bugly"

    .line 80
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    const/4 v0, 0x1

    .line 83
    :goto_1
    return v0

    .line 79
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "lejiagu"

    goto :goto_0

    .line 83
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
