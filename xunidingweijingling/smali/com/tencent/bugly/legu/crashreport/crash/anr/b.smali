.class public final Lcom/tencent/bugly/legu/crashreport/crash/anr/b;
.super Ljava/lang/Object;
.source "BUGLY"


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private b:J

.field private final c:Landroid/content/Context;

.field private final d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

.field private final e:Lcom/tencent/bugly/legu/proguard/v;

.field private final f:Lcom/tencent/bugly/legu/crashreport/common/strategy/a;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/tencent/bugly/legu/crashreport/crash/b;

.field private i:Landroid/os/FileObserver;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/legu/crashreport/common/strategy/a;Lcom/tencent/bugly/legu/crashreport/common/info/a;Lcom/tencent/bugly/legu/proguard/v;Lcom/tencent/bugly/legu/crashreport/crash/b;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->b:J

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->j:Z

    .line 69
    if-nez p1, :cond_1

    move-object v0, p1

    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->c:Landroid/content/Context;

    .line 70
    const-string v0, "bugly"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->g:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    .line 73
    iput-object p4, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->e:Lcom/tencent/bugly/legu/proguard/v;

    .line 74
    iput-object p2, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->f:Lcom/tencent/bugly/legu/crashreport/common/strategy/a;

    .line 75
    iput-object p5, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->h:Lcom/tencent/bugly/legu/crashreport/crash/b;

    .line 76
    return-void

    .line 69
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;J)Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .locals 9

    .prologue
    const-wide/16 v2, 0x2710

    const-wide/16 v6, 0x1f4

    const-wide/16 v0, 0x0

    const/4 v4, 0x0

    .line 82
    cmp-long v5, v2, v0

    if-gez v5, :cond_1

    move-wide v1, v0

    .line 83
    :goto_0
    const-string v0, "to find!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 84
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 86
    div-long v5, v1, v6

    move v2, v4

    .line 89
    :goto_1
    const-string v1, "waiting!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v1

    .line 91
    if-eqz v1, :cond_2

    .line 92
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 93
    iget v7, v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 94
    const-string v0, "found!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 104
    :goto_2
    return-object v1

    :cond_1
    move-wide v1, v2

    .line 82
    goto :goto_0

    .line 101
    :cond_2
    const-wide/16 v7, 0x1f4

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_3
    add-int/lit8 v1, v2, 0x1

    int-to-long v2, v2

    cmp-long v2, v2, v5

    if-ltz v2, :cond_3

    .line 103
    const-string v0, "end!"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 104
    const/4 v1, 0x0

    goto :goto_2

    .line 101
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    :cond_3
    move v2, v1

    goto :goto_1
.end method

.method private a(Lcom/tencent/bugly/legu/crashreport/crash/anr/a;)Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;
    .locals 4

    .prologue
    .line 139
    new-instance v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;

    invoke-direct {v1}, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;-><init>()V

    .line 142
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/a;->i()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->B:J

    .line 143
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/a;->g()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->C:J

    .line 144
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/a;->k()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->D:J

    .line 145
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->o()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->E:J

    .line 146
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->n()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->F:J

    .line 147
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->p()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->G:J

    .line 148
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->c:Landroid/content/Context;

    sget v2, Lcom/tencent/bugly/legu/crashreport/crash/c;->d:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/tencent/bugly/legu/proguard/a;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    .line 151
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/x;->a(Z)[B

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->x:[B

    .line 152
    const/4 v0, 0x3

    iput v0, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->b:I

    .line 153
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    iget-object v0, v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->i:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    .line 157
    const-string v0, "ANR_EXCEPTION"

    iput-object v0, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    .line 158
    iget-object v0, p1, Lcom/tencent/bugly/legu/crashreport/crash/anr/a;->f:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    .line 159
    iget-object v0, p1, Lcom/tencent/bugly/legu/crashreport/crash/anr/a;->g:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    .line 161
    iget-object v0, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    const-string v2, "BUGLY_CR_01"

    iget-object v3, p1, Lcom/tencent/bugly/legu/crashreport/crash/anr/a;->e:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 164
    if-lez v0, :cond_1

    iget-object v2, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    .line 167
    iget-wide v2, p1, Lcom/tencent/bugly/legu/crashreport/crash/anr/a;->c:J

    iput-wide v2, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->r:J

    .line 168
    iget-object v0, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/a;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    .line 169
    iget-object v0, p1, Lcom/tencent/bugly/legu/crashreport/crash/anr/a;->b:Ljava/util/Map;

    iput-object v0, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->y:Ljava/util/Map;

    .line 170
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    iget-object v0, v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    .line 171
    const-string v0, "main(1)"

    iput-object v0, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->H:Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->s()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    .line 174
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->E()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    .line 175
    iget-object v0, p1, Lcom/tencent/bugly/legu/crashreport/crash/anr/a;->d:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    iget-object v0, v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->l:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    iget-wide v2, v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a:J

    iput-wide v2, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->L:J

    .line 178
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    iget-boolean v0, v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->n:Z

    iput-boolean v0, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->M:Z

    .line 181
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->B()I

    move-result v0

    iput v0, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->O:I

    .line 182
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->C()I

    move-result v0

    iput v0, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->P:I

    .line 183
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->w()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->Q:Ljava/util/Map;

    .line 184
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->A()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    .line 190
    :cond_0
    :goto_1
    return-object v1

    .line 164
    :cond_1
    const-string v0, "GET_FAIL"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 187
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/app/ActivityManager$ProcessErrorStateInfo;JLjava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/app/ActivityManager$ProcessErrorStateInfo;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->f:Lcom/tencent/bugly/legu/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;

    .line 286
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->f:Lcom/tencent/bugly/legu/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 288
    const-string v0, "waiting for remote sync"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 289
    const/4 v0, 0x0

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->f:Lcom/tencent/bugly/legu/crashreport/common/strategy/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 291
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    add-int/lit16 v0, v0, 0x1f4

    .line 293
    const/16 v1, 0x1388

    if-lt v0, v1, :cond_0

    .line 294
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bugly/bugly_trace_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Lcom/tencent/bugly/legu/crashreport/crash/anr/a;

    invoke-direct {v4}, Lcom/tencent/bugly/legu/crashreport/crash/anr/a;-><init>()V

    iput-wide p4, v4, Lcom/tencent/bugly/legu/crashreport/crash/anr/a;->c:J

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/bugly/legu/crashreport/crash/anr/a;->d:Ljava/lang/String;

    iget-object v0, p3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/legu/crashreport/crash/anr/a;->a:Ljava/lang/String;

    iget-object v0, p3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/legu/crashreport/crash/anr/a;->f:Ljava/lang/String;

    iget-object v0, p3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/legu/crashreport/crash/anr/a;->e:Ljava/lang/String;

    iput-object p6, v4, Lcom/tencent/bugly/legu/crashreport/crash/anr/a;->b:Ljava/util/Map;

    if-eqz p6, :cond_3

    invoke-interface {p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "main("

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/legu/crashreport/crash/anr/a;->g:Ljava/lang/String;

    goto :goto_1

    .line 291
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 294
    :cond_3
    const-string v1, "anr tm:%d\ntr:%s\nproc:%s\nsMsg:%s\n lMsg:%s\n threads:%d"

    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-wide v5, v4, Lcom/tencent/bugly/legu/crashreport/crash/anr/a;->c:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget-object v3, v4, Lcom/tencent/bugly/legu/crashreport/crash/anr/a;->d:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-object v3, v4, Lcom/tencent/bugly/legu/crashreport/crash/anr/a;->a:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-object v3, v4, Lcom/tencent/bugly/legu/crashreport/crash/anr/a;->f:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x4

    iget-object v3, v4, Lcom/tencent/bugly/legu/crashreport/crash/anr/a;->e:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v3, 0x5

    iget-object v0, v4, Lcom/tencent/bugly/legu/crashreport/crash/anr/a;->b:Ljava/util/Map;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 299
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->f:Lcom/tencent/bugly/legu/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->b()Z

    move-result v0

    if-nez v0, :cond_5

    .line 300
    const-string v0, "crash report sync remote fail, will not upload to Bugly , print local for helpful!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 301
    const-string v0, "ANR"

    invoke-static {}, Lcom/tencent/bugly/legu/proguard/a;->n()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v4, Lcom/tencent/bugly/legu/crashreport/crash/anr/a;->a:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v4, Lcom/tencent/bugly/legu/crashreport/crash/anr/a;->e:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/tencent/bugly/legu/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/String;Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;)V

    .line 303
    const/4 v0, 0x0

    .line 344
    :goto_3
    return v0

    .line 294
    :cond_4
    iget-object v0, v4, Lcom/tencent/bugly/legu/crashreport/crash/anr/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_2

    .line 306
    :cond_5
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->f:Lcom/tencent/bugly/legu/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    .line 307
    iget-boolean v0, v0, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->g:Z

    if-nez v0, :cond_6

    .line 308
    const-string v0, "ANR Report is closed!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 309
    const/4 v0, 0x0

    goto :goto_3

    .line 312
    :cond_6
    const-string v0, "found visiable anr , start to upload!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 313
    invoke-direct {p0, v4}, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->a(Lcom/tencent/bugly/legu/crashreport/crash/anr/a;)Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;

    move-result-object v5

    .line 315
    if-nez v5, :cond_7

    .line 316
    const-string v0, "pack anr fail!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 317
    const/4 v0, 0x0

    goto :goto_3

    .line 320
    :cond_7
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/crash/c;->a()Lcom/tencent/bugly/legu/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/legu/crashreport/crash/c;->a(Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;)V

    .line 321
    iget-wide v0, v5, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_a

    .line 322
    const-string v0, "backup anr record success!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 328
    :goto_4
    if-eqz p2, :cond_8

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 329
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 330
    iget-object v0, v4, Lcom/tencent/bugly/legu/crashreport/crash/anr/a;->d:Ljava/lang/String;

    iget-object v1, v4, Lcom/tencent/bugly/legu/crashreport/crash/anr/a;->a:Ljava/lang/String;

    invoke-static {p2, v0, v1}, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 331
    if-eqz v0, :cond_8

    .line 332
    const-string v0, "backup trace success"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 336
    :cond_8
    const-string v0, "ANR"

    invoke-static {}, Lcom/tencent/bugly/legu/proguard/a;->n()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v4, Lcom/tencent/bugly/legu/crashreport/crash/anr/a;->a:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v4, Lcom/tencent/bugly/legu/crashreport/crash/anr/a;->e:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/tencent/bugly/legu/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/String;Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;)V

    .line 339
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->h:Lcom/tencent/bugly/legu/crashreport/crash/b;

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/legu/crashreport/crash/b;->a(Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 340
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->h:Lcom/tencent/bugly/legu/crashreport/crash/b;

    const-wide/16 v1, 0x1388

    const/4 v3, 0x1

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/tencent/bugly/legu/crashreport/crash/b;->a(Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;JZ)V

    .line 343
    :cond_9
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->h:Lcom/tencent/bugly/legu/crashreport/crash/b;

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/legu/crashreport/crash/b;->b(Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;)V

    .line 344
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 324
    :cond_a
    const-string v0, "backup anr record fail!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 197
    invoke-static {p2, p0, v3}, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper;->readTargetDumpInfo(Ljava/lang/String;Ljava/lang/String;Z)Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;

    move-result-object v6

    .line 198
    if-eqz v6, :cond_0

    iget-object v1, v6, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;->d:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, v6, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 199
    :cond_0
    const-string v1, "not found trace dump for %s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v1, v4

    .line 266
    :goto_0
    return v1

    .line 203
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 206
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 207
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 210
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_6

    .line 222
    :cond_4
    const-string v1, "backup file create fail %s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v1, v4

    .line 223
    goto :goto_0

    .line 213
    :catch_0
    move-exception v1

    .line 214
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 215
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 216
    :cond_5
    const-string v2, "backup file create error! %s  %s"

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    aput-object p1, v5, v3

    invoke-static {v2, v5}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v1, v4

    .line 218
    goto :goto_0

    .line 226
    :cond_6
    const/4 v2, 0x0

    .line 229
    :try_start_1
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    const/4 v8, 0x0

    invoke-direct {v7, v1, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v5, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    :try_start_2
    iget-object v1, v6, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;->d:Ljava/util/Map;

    const-string v2, "main"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 232
    if-eqz v1, :cond_7

    array-length v2, v1

    if-lt v2, v11, :cond_7

    .line 233
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 234
    const/4 v7, 0x1

    aget-object v7, v1, v7

    .line 235
    const/4 v8, 0x2

    aget-object v1, v1, v8

    .line 236
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\"main\" tid="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " :\n"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V

    .line 240
    :cond_7
    iget-object v1, v6, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 241
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v7, "main"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 242
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    array-length v1, v1

    if-lt v1, v11, :cond_8

    .line 245
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v7, v1, v7

    .line 246
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v8, v1, v8

    .line 247
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v9, 0x2

    aget-object v9, v1, v9

    .line 248
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_1

    .line 254
    :catch_1
    move-exception v1

    move-object v2, v5

    .line 255
    :goto_2
    :try_start_3
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 256
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 257
    :cond_9
    const-string v3, "dump trace fail %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v3, v5}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 258
    if-eqz v2, :cond_a

    .line 262
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_a
    :goto_3
    move v1, v4

    .line 266
    goto/16 :goto_0

    .line 253
    :cond_b
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_c
    :goto_4
    move v1, v3

    .line 266
    goto/16 :goto_0

    .line 263
    :catch_2
    move-exception v1

    .line 264
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 265
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 263
    :catch_3
    move-exception v1

    .line 264
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 265
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 260
    :catchall_0
    move-exception v1

    move-object v5, v2

    :goto_5
    if-eqz v5, :cond_d

    .line 262
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 266
    :cond_d
    :goto_6
    throw v1

    .line 263
    :catch_4
    move-exception v2

    .line 264
    invoke-static {v2}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 265
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 260
    :catchall_1
    move-exception v1

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v5, v2

    goto :goto_5

    .line 254
    :catch_5
    move-exception v1

    goto :goto_2
.end method

.method private declared-synchronized b(Z)V
    .locals 1

    .prologue
    .line 515
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 516
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    :goto_0
    monitor-exit p0

    return-void

    .line 518
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()V
    .locals 3

    .prologue
    .line 438
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    const-string v0, "start when started!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 443
    :cond_1
    :try_start_1
    new-instance v0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b$1;

    const-string v1, "/data/anr/"

    const/16 v2, 0x8

    invoke-direct {v0, p0, v1, v2}, Lcom/tencent/bugly/legu/crashreport/crash/anr/b$1;-><init>(Lcom/tencent/bugly/legu/crashreport/crash/anr/b;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->i:Landroid/os/FileObserver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    :try_start_2
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->i:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 461
    const-string v0, "start anr monitor!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 462
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->e:Lcom/tencent/bugly/legu/proguard/v;

    new-instance v1, Lcom/tencent/bugly/legu/crashreport/crash/anr/b$2;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/legu/crashreport/crash/anr/b$2;-><init>(Lcom/tencent/bugly/legu/crashreport/crash/anr/b;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/legu/proguard/v;->b(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 469
    :catch_0
    move-exception v0

    .line 470
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->i:Landroid/os/FileObserver;

    .line 471
    const-string v1, "start anr monitor failed!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 472
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 473
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Z)V
    .locals 4

    .prologue
    .line 533
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->j:Z

    if-eq v0, p1, :cond_0

    .line 534
    const-string v0, "user change anr %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 535
    iput-boolean p1, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    :cond_0
    monitor-exit p0

    return-void

    .line 533
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()V
    .locals 3

    .prologue
    .line 483
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 484
    const-string v0, "close when closed!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 490
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->i:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 491
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->i:Landroid/os/FileObserver;

    .line 492
    const-string v0, "close anr monitor!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 493
    :catch_0
    move-exception v0

    .line 494
    :try_start_2
    const-string v1, "stop anr monitor failed!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 495
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 496
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 483
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()Z
    .locals 1

    .prologue
    .line 506
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->i:Landroid/os/FileObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()Z
    .locals 1

    .prologue
    .line 526
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 594
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v2, p1, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->g:Z

    invoke-direct {p0}, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->e()Z

    move-result v3

    if-eq v2, v3, :cond_0

    .line 595
    const-string v2, "server anr changed to %b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-boolean v5, p1, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->g:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 599
    :cond_0
    iget-boolean v2, p1, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->g:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 600
    :goto_0
    invoke-direct {p0}, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->e()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 601
    const-string v1, "anr changed to %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 602
    invoke-direct {p0, v0}, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    move v0, v1

    .line 599
    goto :goto_0

    .line 594
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x2710

    const-wide/16 v0, -0x1

    const/4 v7, 0x0

    .line 355
    monitor-enter p0

    .line 356
    :try_start_0
    iget-object v2, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    const-string v0, "trace started return "

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 358
    monitor-exit p0

    .line 429
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v2, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 361
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    :try_start_1
    const-string v2, "read trace first dump for create time!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 369
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper;->readFirstDumpInfo(Ljava/lang/String;Z)Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;

    move-result-object v2

    .line 370
    if-eqz v2, :cond_8

    .line 371
    iget-wide v4, v2, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;->c:J

    .line 374
    :goto_1
    cmp-long v0, v4, v0

    if-nez v0, :cond_1

    .line 376
    const-string v0, "trace dump fail could not get time!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 380
    :cond_1
    iget-wide v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->b:J

    sub-long v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-gez v0, :cond_2

    .line 381
    const-string v0, "should not process ANR too Fre in %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0x2710

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 428
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 385
    :cond_2
    :try_start_2
    iput-wide v4, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->b:J

    .line 388
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 390
    :try_start_3
    sget v0, Lcom/tencent/bugly/legu/crashreport/crash/c;->e:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/a;->a(IZ)Ljava/util/Map;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v6

    .line 401
    if-eqz v6, :cond_3

    :try_start_4
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_4

    .line 402
    :cond_3
    const-string v0, "can\'t get all thread skip this anr"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 428
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    .line 395
    :catch_0
    move-exception v0

    .line 396
    :try_start_5
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    .line 397
    const-string v0, "get all thread stack fail!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 428
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_0

    .line 406
    :cond_4
    :try_start_6
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->c:Landroid/content/Context;

    const-wide/16 v1, 0x2710

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->a(Landroid/content/Context;J)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v3

    .line 409
    if-nez v3, :cond_5

    .line 411
    const-string v0, "proc state is unvisiable!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 428
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_0

    .line 415
    :cond_5
    :try_start_7
    iget v0, v3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 416
    const-string v0, "not mind proc!"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, v3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 428
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_0

    .line 420
    :cond_6
    :try_start_8
    const-string v0, "found visiable anr , start to process!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 422
    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->c:Landroid/content/Context;

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->a(Landroid/content/Context;Ljava/lang/String;Landroid/app/ActivityManager$ProcessErrorStateInfo;JLjava/util/Map;)Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 428
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_0

    .line 423
    :catch_1
    move-exception v0

    .line 424
    :try_start_9
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 425
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 426
    :cond_7
    const-string v1, "handle anr error %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 428
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    throw v0

    :cond_8
    move-wide v4, v0

    goto/16 :goto_1
.end method

.method public final a(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 544
    invoke-direct {p0, p1}, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->c(Z)V

    .line 547
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/legu/crashreport/common/strategy/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->g:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 548
    :goto_0
    invoke-direct {p0}, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->e()Z

    move-result v3

    if-eq v0, v3, :cond_0

    .line 549
    const-string v3, "anr changed to %b"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 550
    invoke-direct {p0, v0}, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->b(Z)V

    .line 553
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 547
    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v2, 0x0

    .line 559
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/a;->o()J

    move-result-wide v0

    sget-wide v3, Lcom/tencent/bugly/legu/crashreport/crash/c;->f:J

    sub-long v3, v0, v3

    .line 560
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 561
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 562
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 563
    if-eqz v5, :cond_0

    array-length v0, v5

    if-nez v0, :cond_1

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    const-string v6, "bugly_trace_"

    const-string v7, ".txt"

    .line 567
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    .line 570
    array-length v9, v5

    move v1, v2

    move v0, v2

    :goto_1
    if-ge v1, v9, :cond_4

    aget-object v10, v5, v1

    .line 571
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 572
    invoke-virtual {v11, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 574
    :try_start_0
    invoke-virtual {v11, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 575
    if-lez v12, :cond_3

    .line 576
    invoke-virtual {v11, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v11

    .line 577
    cmp-long v11, v11, v3

    if-ltz v11, :cond_3

    .line 570
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 581
    :catch_0
    move-exception v12

    const-string v12, "tomb format error delete %s"

    new-array v13, v14, [Ljava/lang/Object;

    aput-object v11, v13, v2

    invoke-static {v12, v13}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 585
    :cond_3
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 586
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 589
    :cond_4
    const-string v1, "clean tombs %d"

    new-array v3, v14, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0
.end method
