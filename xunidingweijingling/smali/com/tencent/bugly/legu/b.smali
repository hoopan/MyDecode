.class public final Lcom/tencent/bugly/legu/b;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static a:Z

.field public static b:Z

.field public static c:Ljava/util/Map;
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

.field private static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/legu/a;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/tencent/bugly/legu/proguard/o;

.field private static f:Lcom/tencent/bugly/legu/proguard/m;

.field private static g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/legu/b;->a:Z

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/bugly/legu/b;->d:Ljava/util/List;

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/legu/b;->c:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 72
    const-class v0, Lcom/tencent/bugly/legu/b;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/tencent/bugly/legu/b;->a(Landroid/content/Context;Lcom/tencent/bugly/legu/BuglyStrategy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit v0

    return-void

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/tencent/bugly/legu/BuglyStrategy;)V
    .locals 3

    .prologue
    .line 76
    const-class v1, Lcom/tencent/bugly/legu/b;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/legu/b;->g:Z

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "[init] initial Multi-times, ignore this."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :goto_0
    monitor-exit v1

    return-void

    .line 80
    :cond_0
    if-nez p0, :cond_1

    .line 81
    :try_start_1
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v2, "[init] context of init() is null, check it."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 84
    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v0

    .line 87
    invoke-static {v0}, Lcom/tencent/bugly/legu/b;->a(Lcom/tencent/bugly/legu/crashreport/common/info/a;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/bugly/legu/b;->a:Z

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->e()Ljava/lang/String;

    move-result-object v2

    .line 94
    if-nez v2, :cond_3

    .line 95
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v2, "[init] meta data of BUGLY_APPID in AndroidManifest.xml should be set."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :cond_3
    iget-boolean v0, v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->t:Z

    invoke-static {p0, v2, v0, p1}, Lcom/tencent/bugly/legu/b;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/legu/BuglyStrategy;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/legu/BuglyStrategy;)V
    .locals 11

    .prologue
    const/16 v10, 0x64

    const/4 v6, 0x0

    .line 103
    const-class v8, Lcom/tencent/bugly/legu/b;

    monitor-enter v8

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/legu/b;->g:Z

    if-eqz v0, :cond_0

    .line 104
    const-string v0, "[init] initial Multi-times, ignore this."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :goto_0
    monitor-exit v8

    return-void

    .line 107
    :cond_0
    if-nez p0, :cond_1

    .line 108
    :try_start_1
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v1, "[init] context of init() is null, check it."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    .line 112
    :cond_1
    if-nez p1, :cond_2

    .line 113
    :try_start_2
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v1, "init arg \'crashReportAppID\' should not be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/legu/b;->g:Z

    .line 117
    if-eqz p2, :cond_3

    .line 119
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/legu/b;->b:Z

    .line 120
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/legu/proguard/w;->b:Z

    .line 121
    const-string v0, "Bugly debug\u6a21\u5f0f\u5f00\u542f\uff0c\u8bf7\u5728\u53d1\u5e03\u65f6\u628aisDebug\u5173\u95ed\u3002 -- Running in debug model for \'isDebug\' is enabled. Please disable it when you release."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 122
    const-string v0, "--------------------------------------------------------------------------------------------"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 123
    const-string v0, "Bugly debug\u6a21\u5f0f\u5c06\u6709\u4ee5\u4e0b\u884c\u4e3a\u7279\u6027 -- The following list shows the behaviour of debug model: "

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 124
    const-string v0, "[1] \u8f93\u51fa\u8be6\u7ec6\u7684Bugly SDK\u7684Log -- More detailed log of Bugly SDK will be output to logcat;"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 125
    const-string v0, "[2] \u6bcf\u4e00\u6761Crash\u90fd\u4f1a\u88ab\u7acb\u5373\u4e0a\u62a5 -- Every crash caught by Bugly will be uploaded immediately."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 126
    const-string v0, "[3] \u81ea\u5b9a\u4e49\u65e5\u5fd7\u5c06\u4f1a\u5728Logcat\u4e2d\u8f93\u51fa -- Custom log will be output to logcat."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 127
    const-string v0, "--------------------------------------------------------------------------------------------"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 128
    const-string v0, "[init] bugly in debug mode."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 131
    :cond_3
    if-nez p0, :cond_5

    .line 134
    :cond_4
    :goto_1
    invoke-static {p0}, Lcom/tencent/bugly/legu/proguard/x;->a(Landroid/content/Context;)V

    .line 135
    invoke-static {p0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v9

    .line 136
    sget-object v0, Lcom/tencent/bugly/legu/b;->d:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/tencent/bugly/legu/proguard/o;->a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/legu/proguard/o;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/legu/b;->e:Lcom/tencent/bugly/legu/proguard/o;

    .line 137
    invoke-static {p0}, Lcom/tencent/bugly/legu/proguard/t;->a(Landroid/content/Context;)Lcom/tencent/bugly/legu/proguard/t;

    .line 138
    sget-object v0, Lcom/tencent/bugly/legu/b;->d:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/legu/crashreport/common/strategy/a;

    .line 139
    invoke-static {p0}, Lcom/tencent/bugly/legu/proguard/m;->a(Landroid/content/Context;)Lcom/tencent/bugly/legu/proguard/m;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/legu/b;->f:Lcom/tencent/bugly/legu/proguard/m;

    .line 142
    invoke-static {v9}, Lcom/tencent/bugly/legu/b;->a(Lcom/tencent/bugly/legu/crashreport/common/info/a;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 143
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/bugly/legu/b;->a:Z

    goto/16 :goto_0

    .line 131
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    move-object p0, v0

    goto :goto_1

    .line 147
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "legu crash report start init!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 148
    const-string v0, "[init] bugly start init..."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 150
    invoke-virtual {v9, p1}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a(Ljava/lang/String;)V

    .line 151
    const-string v0, "[param] setted APPID:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 153
    if-eqz p3, :cond_c

    invoke-virtual {p3}, Lcom/tencent/bugly/legu/BuglyStrategy;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v10, :cond_13

    const/4 v0, 0x0

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "appVersion %s length is over limit %d substring to %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_2
    iput-object v0, v9, Lcom/tencent/bugly/legu/crashreport/common/info/a;->i:Ljava/lang/String;

    const-string v0, "setted APPVERSION:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p3}, Lcom/tencent/bugly/legu/BuglyStrategy;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    :try_start_3
    invoke-virtual {p3}, Lcom/tencent/bugly/legu/BuglyStrategy;->isReplaceOldChannel()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p3}, Lcom/tencent/bugly/legu/BuglyStrategy;->getAppChannel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v10, :cond_12

    const/4 v0, 0x0

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "appChannel %s length is over limit %d substring to %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v7, v0

    :goto_3
    sget-object v0, Lcom/tencent/bugly/legu/b;->e:Lcom/tencent/bugly/legu/proguard/o;

    const/16 v1, 0x22c

    const-string v2, "app_channel"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/legu/proguard/o;->a(ILjava/lang/String;[BLcom/tencent/bugly/legu/proguard/n;Z)Z

    iput-object v7, v9, Lcom/tencent/bugly/legu/crashreport/common/info/a;->j:Ljava/lang/String;

    :cond_8
    :goto_4
    const-string v0, "setted APPCHANNEL:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, v9, Lcom/tencent/bugly/legu/crashreport/common/info/a;->j:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_9
    :goto_5
    :try_start_4
    invoke-virtual {p3}, Lcom/tencent/bugly/legu/BuglyStrategy;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v10, :cond_11

    const/4 v0, 0x0

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "appPackageName %s length is over limit %d substring to %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_6
    iput-object v0, v9, Lcom/tencent/bugly/legu/crashreport/common/info/a;->c:Ljava/lang/String;

    const-string v0, "setted PACKAGENAME:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p3}, Lcom/tencent/bugly/legu/BuglyStrategy;->getAppPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_a
    invoke-virtual {p3}, Lcom/tencent/bugly/legu/BuglyStrategy;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v10, :cond_10

    const/4 v0, 0x0

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "deviceId %s length is over limit %d substring to %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_7
    invoke-virtual {v9, v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->c(Ljava/lang/String;)V

    const-string v1, "setted deviceId :%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_b
    invoke-virtual {p3}, Lcom/tencent/bugly/legu/BuglyStrategy;->isBuglyLogUpload()Z

    move-result v0

    sput-boolean v0, Lcom/tencent/bugly/legu/proguard/x;->a:Z

    .line 155
    :cond_c
    invoke-static {p0, p3}, Lcom/tencent/bugly/legu/crashreport/biz/b;->a(Landroid/content/Context;Lcom/tencent/bugly/legu/BuglyStrategy;)V

    .line 158
    sget-object v0, Lcom/tencent/bugly/legu/b;->f:Lcom/tencent/bugly/legu/proguard/m;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/proguard/m;->b()I

    move v1, v6

    .line 160
    :goto_8
    sget-object v0, Lcom/tencent/bugly/legu/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-ge v1, v0, :cond_f

    .line 162
    :try_start_5
    sget-object v2, Lcom/tencent/bugly/legu/b;->f:Lcom/tencent/bugly/legu/proguard/m;

    sget-object v0, Lcom/tencent/bugly/legu/b;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/legu/a;

    iget v0, v0, Lcom/tencent/bugly/legu/a;->id:I

    invoke-virtual {v2, v0}, Lcom/tencent/bugly/legu/proguard/m;->a(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 163
    sget-object v0, Lcom/tencent/bugly/legu/b;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/legu/a;

    invoke-virtual {v0, p0, p2, p3}, Lcom/tencent/bugly/legu/a;->init(Landroid/content/Context;ZLcom/tencent/bugly/legu/BuglyStrategy;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 160
    :cond_d
    :goto_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 153
    :cond_e
    :try_start_6
    sget-object v0, Lcom/tencent/bugly/legu/b;->e:Lcom/tencent/bugly/legu/proguard/o;

    const/16 v1, 0x22c

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/bugly/legu/proguard/o;->a(ILcom/tencent/bugly/legu/proguard/n;Z)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v1, "app_channel"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_8

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v9, Lcom/tencent/bugly/legu/crashreport/common/info/a;->j:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    :try_start_7
    sget-boolean v1, Lcom/tencent/bugly/legu/b;->b:Z

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 165
    :catch_1
    move-exception v0

    .line 166
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 167
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 171
    :cond_f
    const-string v0, "crash report inited!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 172
    const-string v0, "[init] bugly init finished."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :cond_10
    move-object v0, v1

    goto/16 :goto_7

    :cond_11
    move-object v0, v1

    goto/16 :goto_6

    :cond_12
    move-object v7, v1

    goto/16 :goto_3

    :cond_13
    move-object v0, v1

    goto/16 :goto_2
.end method

.method public static a(Lcom/tencent/bugly/legu/a;)V
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lcom/tencent/bugly/legu/b;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    sget-object v0, Lcom/tencent/bugly/legu/b;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_0
    return-void
.end method

.method private static a(Lcom/tencent/bugly/legu/crashreport/common/info/a;)Z
    .locals 3

    .prologue
    .line 63
    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->m:Ljava/util/List;

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "legu"

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bugly"

    .line 65
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    const/4 v0, 0x1

    .line 68
    :goto_1
    return v0

    .line 64
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "legu"

    goto :goto_0

    .line 68
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
