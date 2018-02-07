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
    .locals 4

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
    .locals 5

    .prologue
    .line 238
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->a:Lcom/tencent/bugly/lejiagu/crashreport/biz/a;

    if-eqz v0, :cond_0

    .line 239
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->a:Lcom/tencent/bugly/lejiagu/crashreport/biz/a;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/bugly/lejiagu/crashreport/biz/a;->a(IZJ)V

    .line 241
    :cond_0
    return-void
.end method

.method public static a(J)V
    .locals 2

    .prologue
    .line 203
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 204
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    iget-wide p0, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->m:J

    .line 206
    :cond_0
    sput-wide p0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->f:J

    .line 207
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 382
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->b:Z

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    :cond_2
    if-eqz v0, :cond_3

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :cond_3
    :goto_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->b:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/BuglyStrategy;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 171
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->b:Z

    if-eqz v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 175
    :cond_0
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
    if-eqz p1, :cond_2

    .line 185
    invoke-virtual {p1}, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->getAppReportDelay()J

    move-result-wide v0

    .line 188
    :goto_1
    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 189
    invoke-static {p0, p1}, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->c(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/BuglyStrategy;)V

    goto :goto_0

    .line 191
    :cond_1
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/t;->a()Lcom/tencent/bugly/lejiagu/proguard/t;

    move-result-object v2

    new-instance v3, Lcom/tencent/bugly/lejiagu/crashreport/biz/b$1;

    invoke-direct {v3, p0, p1}, Lcom/tencent/bugly/lejiagu/crashreport/biz/b$1;-><init>(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/BuglyStrategy;)V

    invoke-virtual {v2, v3, v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/t;->a(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method public static a(Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 211
    if-nez p0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-wide v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->m:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 215
    iget-wide v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->m:J

    sput-wide v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->e:J

    .line 217
    :cond_2
    iget v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->s:I

    if-lez v0, :cond_3

    .line 218
    iget v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->s:I

    sput v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->c:I

    .line 220
    :cond_3
    iget-wide v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->t:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 221
    iget-wide v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->t:J

    sput-wide v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->d:J

    goto :goto_0
.end method

.method static synthetic b()J
    .locals 2

    .prologue
    .line 25
    sget-wide v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->i:J

    return-wide v0
.end method

.method static synthetic b(J)J
    .locals 0

    .prologue
    .line 25
    sput-wide p0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->j:J

    return-wide p0
.end method

.method static synthetic b(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/BuglyStrategy;)V
    .locals 0

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->c(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/BuglyStrategy;)V

    return-void
.end method

.method static synthetic c()J
    .locals 2

    .prologue
    .line 25
    sget-wide v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->h:J

    return-wide v0
.end method

.method static synthetic c(J)J
    .locals 0

    .prologue
    .line 25
    sput-wide p0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->h:J

    return-wide p0
.end method

.method private static c(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/BuglyStrategy;)V
    .locals 11

    .prologue
    .line 140
    const/4 v1, 0x1

    .line 141
    const/4 v0, 0x0

    .line 142
    if-eqz p1, :cond_e

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
    :goto_0
    if-eqz v1, :cond_4

    .line 148
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v2

    iget-object v0, v2, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->d:Ljava/lang/String;

    sget-object v1, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->a:Lcom/tencent/bugly/lejiagu/crashreport/biz/a;

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/lejiagu/crashreport/biz/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/UserInfoBean;

    iget-object v4, v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/UserInfoBean;->n:Ljava/lang/String;

    iget-object v5, v2, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->i:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/UserInfoBean;->b:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/a;->o()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    iget-wide v6, v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/UserInfoBean;->e:J

    cmp-long v4, v6, v4

    if-ltz v4, :cond_1

    iget-wide v0, v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/UserInfoBean;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->a:Lcom/tencent/bugly/lejiagu/crashreport/biz/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/biz/a;->b()V

    :cond_0
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_3

    .line 168
    :goto_3
    return-void

    .line 148
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    .line 153
    :cond_3
    const/4 v0, 0x0

    .line 156
    :cond_4
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v4

    if-eqz v4, :cond_8

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

    :goto_4
    if-ge v3, v6, :cond_7

    aget-object v7, v5, v3

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "onCreate"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.app.Activity"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v2, 0x1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    if-eqz v1, :cond_d

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->n:Z

    :goto_5
    iput-object v1, v4, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->o:Ljava/lang/String;

    .line 158
    :cond_8
    if-eqz v0, :cond_b

    .line 159
    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_b

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    :cond_9
    if-eqz v0, :cond_b

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez v1, :cond_a

    new-instance v1, Lcom/tencent/bugly/lejiagu/crashreport/biz/b$2;

    invoke-direct {v1}, Lcom/tencent/bugly/lejiagu/crashreport/biz/b$2;-><init>()V

    sput-object v1, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    :cond_a
    sget-object v1, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_b
    :goto_6
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

    goto/16 :goto_3

    .line 156
    :cond_c
    const-string v1, "background"

    goto :goto_5

    :cond_d
    const-string v1, "unknown"

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_e
    move v10, v0

    move v0, v1

    move v1, v10

    goto/16 :goto_0
.end method

.method static synthetic d()J
    .locals 2

    .prologue
    .line 25
    sget-wide v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->f:J

    return-wide v0
.end method

.method static synthetic e()J
    .locals 2

    .prologue
    .line 25
    sget-wide v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->e:J

    return-wide v0
.end method

.method static synthetic f()I
    .locals 2

    .prologue
    .line 25
    sget v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->g:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->g:I

    return v0
.end method

.method static synthetic g()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->g:I

    return v0
.end method

.method static synthetic h()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->c:I

    return v0
.end method

.method static synthetic i()J
    .locals 2

    .prologue
    .line 25
    sget-wide v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->j:J

    return-wide v0
.end method

.method static synthetic j()J
    .locals 2

    .prologue
    .line 25
    sget-wide v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->d:J

    return-wide v0
.end method
