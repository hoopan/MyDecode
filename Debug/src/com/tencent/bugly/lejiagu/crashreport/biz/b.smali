.class public final Lcom/tencent/bugly/lejiagu/crashreport/biz/b;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static a:Lcom/tencent/bugly/lejiagu/crashreport/biz/a;

.field private static b:Z

.field private static c:I

.field private static d:J

.field private static e:J

.field private static f:J

.field private static g:I

.field private static h:J

.field private static i:J

.field private static j:J

.field private static k:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const-wide/16 v2, 0x0

    .line 41
    const/16 v0, 0xa

    sput v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->c:I

    .line 42
    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->d:J

    .line 43
    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->e:J

    .line 44
    sput-wide v2, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->f:J

    .line 59
    sput-wide v2, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->j:J

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.method public static a()V
    .registers 5

    .prologue
    .line 238
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->a:Lcom/tencent/bugly/lejiagu/crashreport/biz/a;

    if-eqz v0, :cond_d

    .line 239
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->a:Lcom/tencent/bugly/lejiagu/crashreport/biz/a;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/bugly/lejiagu/crashreport/biz/a;->a(IZJ)V

    .line 241
    :cond_d
    return-void
.end method

.method public static a(J)V
    .registers 4

    .prologue
    .line 203
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_10

    .line 204
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    iget-wide p0, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->m:J

    .line 206
    :cond_10
    sput-wide p0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->f:J

    .line 207
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 382
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->b:Z

    if-eqz v0, :cond_6

    if-nez p0, :cond_7

    .line 387
    :cond_6
    :goto_6
    return-void

    .line 385
    :cond_7
    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_27

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    :cond_1c
    if-eqz v0, :cond_27

    :try_start_1e
    sget-object v1, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v1, :cond_27

    sget-object v1, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_27} :catch_2b

    .line 386
    :cond_27
    :goto_27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->b:Z

    goto :goto_6

    :catch_2b
    move-exception v0

    goto :goto_27
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/BuglyStrategy;)V
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    .line 171
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->b:Z

    if-eqz v0, :cond_7

    .line 200
    :goto_6
    return-void

    .line 175
    :cond_7
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    iget-wide v0, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->m:J

    sput-wide v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->e:J

    .line 176
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    iget v0, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->s:I

    sput v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->c:I

    .line 178
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/a;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/lejiagu/crashreport/biz/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->a:Lcom/tencent/bugly/lejiagu/crashreport/biz/a;

    .line 180
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->b:Z

    .line 184
    if-eqz p1, :cond_44

    .line 185
    invoke-virtual {p1}, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->getAppReportDelay()J

    move-result-wide v0

    .line 188
    :goto_2f
    cmp-long v2, v0, v2

    if-gtz v2, :cond_37

    .line 189
    invoke-static {p0, p1}, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->c(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/BuglyStrategy;)V

    goto :goto_6

    .line 191
    :cond_37
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/t;->a()Lcom/tencent/bugly/lejiagu/proguard/t;

    move-result-object v2

    new-instance v3, Lcom/tencent/bugly/lejiagu/crashreport/biz/b$1;

    invoke-direct {v3, p0, p1}, Lcom/tencent/bugly/lejiagu/crashreport/biz/b$1;-><init>(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/BuglyStrategy;)V

    invoke-virtual {v2, v3, v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/t;->a(Ljava/lang/Runnable;J)Z

    goto :goto_6

    :cond_44
    move-wide v0, v2

    goto :goto_2f
.end method

.method public static a(Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;)V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 211
    if-nez p0, :cond_5

    .line 223
    :cond_4
    :goto_4
    return-void

    .line 214
    :cond_5
    iget-wide v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->m:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    .line 215
    iget-wide v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->m:J

    sput-wide v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->e:J

    .line 217
    :cond_f
    iget v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->s:I

    if-lez v0, :cond_17

    .line 218
    iget v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->s:I

    sput v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->c:I

    .line 220
    :cond_17
    iget-wide v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->t:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 221
    iget-wide v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->t:J

    sput-wide v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->d:J

    goto :goto_4
.end method

.method static synthetic b()J
    .registers 2

    .prologue
    .line 25
    sget-wide v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->i:J

    return-wide v0
.end method

.method static synthetic b(J)J
    .registers 2

    .prologue
    .line 25
    sput-wide p0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->j:J

    return-wide p0
.end method

.method static synthetic b(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/BuglyStrategy;)V
    .registers 2

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->c(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/BuglyStrategy;)V

    return-void
.end method

.method static synthetic c()J
    .registers 2

    .prologue
    .line 25
    sget-wide v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->h:J

    return-wide v0
.end method

.method static synthetic c(J)J
    .registers 2

    .prologue
    .line 25
    sput-wide p0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->h:J

    return-wide p0
.end method

.method private static c(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/BuglyStrategy;)V
    .registers 13

    .prologue
    .line 140
    const/4 v1, 0x1

    .line 141
    const/4 v0, 0x0

    .line 142
    if-eqz p1, :cond_115

    .line 143
    invoke-virtual {p1}, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->recordUserInfoOnceADay()Z

    move-result v0

    .line 144
    invoke-virtual {p1}, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->isEnableUserInfo()Z

    move-result v1

    move v10, v0

    move v0, v1

    move v1, v10

    .line 147
    :goto_f
    if-eqz v1, :cond_64

    .line 148
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v2

    iget-object v0, v2, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->d:Ljava/lang/String;

    sget-object v1, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->a:Lcom/tencent/bugly/lejiagu/crashreport/biz/a;

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/lejiagu/crashreport/biz/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_61

    const/4 v0, 0x0

    move v1, v0

    :goto_21
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_61

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/UserInfoBean;

    iget-object v4, v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/UserInfoBean;->n:Ljava/lang/String;

    iget-object v5, v2, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->i:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    iget v4, v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/UserInfoBean;->b:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5d

    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/a;->o()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_61

    iget-wide v6, v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/UserInfoBean;->e:J

    cmp-long v4, v6, v4

    if-ltz v4, :cond_5d

    iget-wide v0, v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/UserInfoBean;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_59

    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->a:Lcom/tencent/bugly/lejiagu/crashreport/biz/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/biz/a;->b()V

    :cond_59
    const/4 v0, 0x0

    :goto_5a
    if-nez v0, :cond_63

    .line 168
    :goto_5c
    return-void

    .line 148
    :cond_5d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_21

    :cond_61
    const/4 v0, 0x1

    goto :goto_5a

    .line 153
    :cond_63
    const/4 v0, 0x0

    .line 156
    :cond_64
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v4

    if-eqz v4, :cond_a6

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    array-length v6, v5

    const/4 v1, 0x0

    move v10, v1

    move-object v1, v3

    move v3, v10

    :goto_79
    if-ge v3, v6, :cond_9d

    aget-object v7, v5, v3

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "onCreate"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8d

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    :cond_8d
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.app.Activity"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9a

    const/4 v2, 0x1

    :cond_9a
    add-int/lit8 v3, v3, 0x1

    goto :goto_79

    :cond_9d
    if-eqz v1, :cond_110

    if-eqz v2, :cond_10d

    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->n:Z

    :goto_a4
    iput-object v1, v4, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->o:Ljava/lang/String;

    .line 158
    :cond_a6
    if-eqz v0, :cond_cf

    .line 159
    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_cf

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_bd

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    :cond_bd
    if-eqz v0, :cond_cf

    :try_start_bf
    sget-object v1, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez v1, :cond_ca

    new-instance v1, Lcom/tencent/bugly/lejiagu/crashreport/biz/b$2;

    invoke-direct {v1}, Lcom/tencent/bugly/lejiagu/crashreport/biz/b$2;-><init>()V

    sput-object v1, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    :cond_ca
    sget-object v1, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_cf} :catch_113

    .line 163
    :cond_cf
    :goto_cf
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->i:J

    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->a:Lcom/tencent/bugly/lejiagu/crashreport/biz/a;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/bugly/lejiagu/crashreport/biz/a;->a(IZJ)V

    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/r;->a()Lcom/tencent/bugly/lejiagu/proguard/r;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/r;->a(IJ)V

    const-string v0, "[session] launch app, new start"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->a:Lcom/tencent/bugly/lejiagu/crashreport/biz/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/biz/a;->a()V

    .line 167
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->a:Lcom/tencent/bugly/lejiagu/crashreport/biz/a;

    const-wide/32 v1, 0x1499700

    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/t;->a()Lcom/tencent/bugly/lejiagu/proguard/t;

    move-result-object v3

    new-instance v4, Lcom/tencent/bugly/lejiagu/crashreport/biz/a$a;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v4, v0, v5, v6}, Lcom/tencent/bugly/lejiagu/crashreport/biz/a$a;-><init>(Lcom/tencent/bugly/lejiagu/crashreport/biz/a;Lcom/tencent/bugly/lejiagu/crashreport/biz/UserInfoBean;Z)V

    invoke-virtual {v3, v4, v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/t;->a(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5c

    .line 156
    :cond_10d
    const-string v1, "background"

    goto :goto_a4

    :cond_110
    const-string v1, "unknown"

    goto :goto_a4

    :catch_113
    move-exception v0

    goto :goto_cf

    :cond_115
    move v10, v0

    move v0, v1

    move v1, v10

    goto/16 :goto_f
.end method

.method static synthetic d()J
    .registers 2

    .prologue
    .line 25
    sget-wide v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->f:J

    return-wide v0
.end method

.method static synthetic e()J
    .registers 2

    .prologue
    .line 25
    sget-wide v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->e:J

    return-wide v0
.end method

.method static synthetic f()I
    .registers 2

    .prologue
    .line 25
    sget v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->g:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->g:I

    return v0
.end method

.method static synthetic g()I
    .registers 1

    .prologue
    .line 25
    sget v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->g:I

    return v0
.end method

.method static synthetic h()I
    .registers 1

    .prologue
    .line 25
    sget v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->c:I

    return v0
.end method

.method static synthetic i()J
    .registers 2

    .prologue
    .line 25
    sget-wide v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->j:J

    return-wide v0
.end method

.method static synthetic j()J
    .registers 2

    .prologue
    .line 25
    sget-wide v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->d:J

    return-wide v0
.end method
