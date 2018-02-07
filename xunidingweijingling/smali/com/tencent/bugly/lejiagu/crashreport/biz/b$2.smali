.class final Lcom/tencent/bugly/lejiagu/crashreport/biz/b$2;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/lejiagu/crashreport/biz/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 352
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 347
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 323
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    .line 324
    if-nez v0, :cond_0

    .line 342
    :goto_0
    return-void

    .line 327
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->n:Z

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->q:J

    .line 330
    iget-wide v1, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->q:J

    iget-wide v3, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->p:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->r:J

    .line 332
    iget-wide v1, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->q:J

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->c(J)J

    .line 334
    iget-wide v1, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->r:J

    cmp-long v1, v1, v5

    if-gez v1, :cond_1

    .line 335
    iput-wide v5, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->r:J

    .line 337
    :cond_1
    if-eqz p1, :cond_2

    .line 338
    const-string v1, "background"

    iput-object v1, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->o:Ljava/lang/String;

    goto :goto_0

    .line 340
    :cond_2
    const-string v1, "unknown"

    iput-object v1, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->o:Ljava/lang/String;

    goto :goto_0
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v5, 0x4

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 276
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v2

    .line 277
    if-nez v2, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iput-boolean v6, v2, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->n:Z

    .line 281
    if-eqz p1, :cond_2

    .line 282
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->o:Ljava/lang/String;

    .line 287
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->p:J

    .line 289
    iget-wide v0, v2, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->p:J

    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->b()J

    move-result-wide v3

    sub-long/2addr v0, v3

    iput-wide v0, v2, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->s:J

    .line 291
    iget-wide v0, v2, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->p:J

    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->c()J

    move-result-wide v3

    sub-long v3, v0, v3

    .line 293
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->d()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-lez v0, :cond_3

    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->d()J

    move-result-wide v0

    .line 296
    :goto_2
    cmp-long v0, v3, v0

    if-lez v0, :cond_0

    .line 298
    invoke-virtual {v2}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->c()V

    .line 299
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->f()I

    .line 300
    const-string v0, "[session] launch app one times (app in foreground %d seconds and over %d seconds)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    div-long v2, v3, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->e()J

    move-result-wide v2

    div-long/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 304
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->g()I

    move-result v0

    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->h()I

    move-result v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_4

    .line 305
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->a:Lcom/tencent/bugly/lejiagu/crashreport/biz/a;

    invoke-virtual {v0, v5, v6, v8, v9}, Lcom/tencent/bugly/lejiagu/crashreport/biz/a;->a(IZJ)V

    goto :goto_0

    .line 284
    :cond_2
    const-string v0, "unknown"

    iput-object v0, v2, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->o:Ljava/lang/String;

    goto :goto_1

    .line 293
    :cond_3
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->e()J

    move-result-wide v0

    goto :goto_2

    .line 307
    :cond_4
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->a:Lcom/tencent/bugly/lejiagu/crashreport/biz/a;

    invoke-virtual {v0, v5, v7, v8, v9}, Lcom/tencent/bugly/lejiagu/crashreport/biz/a;->a(IZJ)V

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 309
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->i()J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->j()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 310
    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->b(J)J

    .line 311
    const-string v0, "add a timer to upload hot start user info"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 313
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->a:Lcom/tencent/bugly/lejiagu/crashreport/biz/a;

    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->j()J

    move-result-wide v1

    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/t;->a()Lcom/tencent/bugly/lejiagu/proguard/t;

    move-result-object v3

    new-instance v4, Lcom/tencent/bugly/lejiagu/crashreport/biz/a$a;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v6}, Lcom/tencent/bugly/lejiagu/crashreport/biz/a$a;-><init>(Lcom/tencent/bugly/lejiagu/crashreport/biz/a;Lcom/tencent/bugly/lejiagu/crashreport/biz/UserInfoBean;Z)V

    invoke-virtual {v3, v4, v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/t;->a(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 271
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 261
    return-void
.end method
