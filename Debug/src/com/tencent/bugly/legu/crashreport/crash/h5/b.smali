.class public final Lcom/tencent/bugly/legu/crashreport/crash/h5/b;
.super Ljava/lang/Object;
.source "BUGLY"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tencent/bugly/legu/crashreport/crash/b;

.field private c:Lcom/tencent/bugly/legu/crashreport/common/strategy/a;

.field private d:Lcom/tencent/bugly/legu/crashreport/common/info/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/legu/crashreport/crash/b;Lcom/tencent/bugly/legu/crashreport/common/strategy/a;Lcom/tencent/bugly/legu/crashreport/common/info/a;Lcom/tencent/bugly/legu/BuglyStrategy$a;)V
    .registers 6

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/b;->a:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/b;->b:Lcom/tencent/bugly/legu/crashreport/crash/b;

    .line 46
    iput-object p3, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/b;->c:Lcom/tencent/bugly/legu/crashreport/common/strategy/a;

    .line 47
    iput-object p4, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    .line 48
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 112
    const-string v0, "H5 Crash Happen"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 122
    :try_start_8
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/b;->c:Lcom/tencent/bugly/legu/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->b()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 124
    const-string v0, "waiting for remote sync"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v6

    .line 126
    :cond_19
    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/b;->c:Lcom/tencent/bugly/legu/crashreport/common/strategy/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->b()Z
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_1e} :catch_93
    .catchall {:try_start_8 .. :try_end_1e} :catchall_235

    move-result v1

    if-nez v1, :cond_2c

    .line 127
    const-wide/16 v1, 0x1f4

    :try_start_23
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_8e
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_26} :catch_93
    .catchall {:try_start_23 .. :try_end_26} :catchall_235

    .line 128
    :goto_26
    add-int/lit16 v0, v0, 0x1f4

    .line 129
    const/16 v1, 0x1388

    if-lt v0, v1, :cond_19

    .line 130
    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/b;->c:Lcom/tencent/bugly/legu/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->b()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 135
    const-string v0, "no remote but still store!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 138
    :cond_3c
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/b;->c:Lcom/tencent/bugly/legu/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    .line 139
    iget-boolean v1, v0, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->d:Z

    if-nez v1, :cond_a5

    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/b;->c:Lcom/tencent/bugly/legu/crashreport/common/strategy/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->b()Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 140
    const-string v0, "crash report was closed by remote , will not upload to Bugly , print local for helpful!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 141
    const-string v0, "H5"

    invoke-static {}, Lcom/tencent/bugly/legu/proguard/a;->n()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    iget-object v2, v2, Lcom/tencent/bugly/legu/crashreport/common/info/a;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/tencent/bugly/legu/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/String;Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;)V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_86} :catch_93
    .catchall {:try_start_2c .. :try_end_86} :catchall_235

    .line 169
    const-string v0, "handle end"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 170
    :goto_8d
    return-void

    .line 127
    :catch_8e
    move-exception v1

    :try_start_8f
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_92} :catch_93
    .catchall {:try_start_8f .. :try_end_92} :catchall_235

    goto :goto_26

    .line 164
    :catch_93
    move-exception v0

    .line 165
    :try_start_94
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_9d

    .line 166
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9d
    .catchall {:try_start_94 .. :try_end_9d} :catchall_235

    .line 169
    :cond_9d
    const-string v0, "handle end"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_8d

    .line 146
    :cond_a5
    :try_start_a5
    iget-boolean v0, v0, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->i:Z

    if-nez v0, :cond_b9

    .line 147
    const-string v0, "cocos report is disabled."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_b1
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_b1} :catch_93
    .catchall {:try_start_a5 .. :try_end_b1} :catchall_235

    .line 169
    const-string v0, "handle end"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_8d

    .line 151
    :cond_b9
    :try_start_b9
    new-instance v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;

    invoke-direct {v5}, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/legu/proguard/a;->i()J

    move-result-wide v0

    iput-wide v0, v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->B:J

    invoke-static {}, Lcom/tencent/bugly/legu/proguard/a;->g()J

    move-result-wide v0

    iput-wide v0, v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->C:J

    invoke-static {}, Lcom/tencent/bugly/legu/proguard/a;->k()J

    move-result-wide v0

    iput-wide v0, v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->D:J

    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->o()J

    move-result-wide v0

    iput-wide v0, v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->E:J

    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->n()J

    move-result-wide v0

    iput-wide v0, v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->F:J

    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->p()J

    move-result-wide v0

    iput-wide v0, v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->G:J

    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/b;->a:Landroid/content/Context;

    sget v1, Lcom/tencent/bugly/legu/crashreport/crash/c;->d:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/legu/proguard/a;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    const/4 v0, 0x5

    iput v0, v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->b:I

    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    iget-object v0, v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->i:Ljava/lang/String;

    iput-object v0, v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    iput-object p4, v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->r:J

    iget-object v0, v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/a;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    sget v0, Lcom/tencent/bugly/legu/crashreport/crash/c;->e:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/a;->a(IZ)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->y:Ljava/util/Map;

    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    iget-object v0, v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object v0, v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->H:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->s()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    iget-wide v0, v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a:J

    iput-wide v0, v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->L:J

    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    iget-boolean v0, v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->n:Z

    iput-boolean v0, v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->M:Z

    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->B()I

    move-result v0

    iput v0, v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->O:I

    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->C()I

    move-result v0

    iput v0, v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->P:I

    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->w()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->Q:Ljava/util/Map;

    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->A()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/b;->b:Lcom/tencent/bugly/legu/crashreport/crash/b;

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/legu/crashreport/crash/b;->b(Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/x;->a(Z)[B

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->x:[B

    iget-object v0, v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    if-nez v0, :cond_1d3

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    :cond_1d3
    if-eqz p5, :cond_1da

    iget-object v0, v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    invoke-interface {v0, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 153
    :cond_1da
    if-nez v5, :cond_1ed

    .line 154
    const-string v0, "pkg crash datas fail!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1e4
    .catch Ljava/lang/Throwable; {:try_start_b9 .. :try_end_1e4} :catch_93
    .catchall {:try_start_b9 .. :try_end_1e4} :catchall_235

    .line 169
    const-string v0, "handle end"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_8d

    .line 158
    :cond_1ed
    :try_start_1ed
    const-string v0, "H5"

    invoke-static {}, Lcom/tencent/bugly/legu/proguard/a;->n()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    iget-object v2, v2, Lcom/tencent/bugly/legu/crashreport/common/info/a;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/tencent/bugly/legu/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/String;Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;)V

    .line 160
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/b;->b:Lcom/tencent/bugly/legu/crashreport/crash/b;

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/legu/crashreport/crash/b;->a(Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;)Z

    move-result v0

    if-nez v0, :cond_22c

    .line 162
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/h5/b;->b:Lcom/tencent/bugly/legu/crashreport/crash/b;

    const-wide/16 v1, 0x1388

    const/4 v3, 0x0

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/tencent/bugly/legu/crashreport/crash/b;->a(Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;JZ)V
    :try_end_22c
    .catch Ljava/lang/Throwable; {:try_start_1ed .. :try_end_22c} :catch_93
    .catchall {:try_start_1ed .. :try_end_22c} :catchall_235

    .line 169
    :cond_22c
    const-string v0, "handle end"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :catchall_235
    move-exception v0

    const-string v1, "handle end"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    throw v0
.end method
