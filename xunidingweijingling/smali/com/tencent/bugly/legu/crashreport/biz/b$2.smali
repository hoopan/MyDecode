.class final Lcom/tencent/bugly/legu/crashreport/biz/b$2;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/legu/crashreport/biz/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 372
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 367
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    .line 332
    const-string v0, "unknown"

    .line 333
    if-eqz p1, :cond_0

    .line 334
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 336
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/biz/b;->b()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 337
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/biz/b;->b()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 362
    :cond_1
    :goto_0
    return-void

    .line 342
    :cond_2
    const-string v1, ">>> %s onPaused <<<"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 343
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a()Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_1

    .line 347
    iput-boolean v3, v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->n:Z

    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->q:J

    .line 350
    iget-wide v1, v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->q:J

    iget-wide v3, v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->p:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->r:J

    .line 352
    iget-wide v1, v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->q:J

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/crashreport/biz/b;->c(J)J

    .line 354
    iget-wide v1, v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->r:J

    cmp-long v1, v1, v5

    if-gez v1, :cond_3

    .line 355
    iput-wide v5, v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->r:J

    .line 357
    :cond_3
    if-eqz p1, :cond_4

    .line 358
    const-string v1, "background"

    iput-object v1, v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->o:Ljava/lang/String;

    goto :goto_0

    .line 360
    :cond_4
    const-string v1, "unknown"

    iput-object v1, v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->o:Ljava/lang/String;

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

    .line 279
    const-string v0, "unknown"

    .line 280
    if-eqz p1, :cond_0

    .line 281
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 283
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/biz/b;->b()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 284
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/biz/b;->b()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 328
    :cond_1
    :goto_0
    return-void

    .line 289
    :cond_2
    const-string v1, ">>> %s onResumed <<<"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 290
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a()Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v2

    .line 291
    if-eqz v2, :cond_1

    .line 294
    iput-boolean v6, v2, Lcom/tencent/bugly/legu/crashreport/common/info/a;->n:Z

    .line 295
    iput-object v0, v2, Lcom/tencent/bugly/legu/crashreport/common/info/a;->o:Ljava/lang/String;

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/tencent/bugly/legu/crashreport/common/info/a;->p:J

    .line 299
    iget-wide v0, v2, Lcom/tencent/bugly/legu/crashreport/common/info/a;->p:J

    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/biz/b;->c()J

    move-result-wide v3

    sub-long/2addr v0, v3

    iput-wide v0, v2, Lcom/tencent/bugly/legu/crashreport/common/info/a;->s:J

    .line 301
    iget-wide v0, v2, Lcom/tencent/bugly/legu/crashreport/common/info/a;->p:J

    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/biz/b;->d()J

    move-result-wide v3

    sub-long v3, v0, v3

    .line 303
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/biz/b;->e()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-lez v0, :cond_3

    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/biz/b;->e()J

    move-result-wide v0

    .line 306
    :goto_1
    cmp-long v0, v3, v0

    if-lez v0, :cond_1

    .line 308
    invoke-virtual {v2}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->c()V

    .line 309
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/biz/b;->g()I

    .line 310
    const-string v0, "[session] launch app one times (app in background %d seconds and over %d seconds)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    div-long v2, v3, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/biz/b;->f()J

    move-result-wide v2

    div-long/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 314
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/biz/b;->h()I

    move-result v0

    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/biz/b;->i()I

    move-result v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_4

    .line 315
    sget-object v0, Lcom/tencent/bugly/legu/crashreport/biz/b;->a:Lcom/tencent/bugly/legu/crashreport/biz/a;

    invoke-virtual {v0, v5, v6, v8, v9}, Lcom/tencent/bugly/legu/crashreport/biz/a;->a(IZJ)V

    goto :goto_0

    .line 303
    :cond_3
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/biz/b;->f()J

    move-result-wide v0

    goto :goto_1

    .line 317
    :cond_4
    sget-object v0, Lcom/tencent/bugly/legu/crashreport/biz/b;->a:Lcom/tencent/bugly/legu/crashreport/biz/a;

    invoke-virtual {v0, v5, v7, v8, v9}, Lcom/tencent/bugly/legu/crashreport/biz/a;->a(IZJ)V

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 319
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/biz/b;->j()J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/biz/b;->k()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 320
    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/crashreport/biz/b;->b(J)J

    .line 321
    const-string v0, "add a timer to upload hot start user info"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 323
    sget-object v0, Lcom/tencent/bugly/legu/crashreport/biz/b;->a:Lcom/tencent/bugly/legu/crashreport/biz/a;

    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/biz/b;->k()J

    move-result-wide v1

    invoke-static {}, Lcom/tencent/bugly/legu/proguard/v;->a()Lcom/tencent/bugly/legu/proguard/v;

    move-result-object v3

    new-instance v4, Lcom/tencent/bugly/legu/crashreport/biz/a$a;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v6}, Lcom/tencent/bugly/legu/crashreport/biz/a$a;-><init>(Lcom/tencent/bugly/legu/crashreport/biz/a;Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;Z)V

    invoke-virtual {v3, v4, v1, v2}, Lcom/tencent/bugly/legu/proguard/v;->a(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 275
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 265
    return-void
.end method
