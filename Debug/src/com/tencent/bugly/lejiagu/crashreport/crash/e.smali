.class public final Lcom/tencent/bugly/lejiagu/crashreport/crash/e;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static f:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static h:Z

.field private static final i:Ljava/lang/Object;

.field private static j:I


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tencent/bugly/lejiagu/crashreport/crash/b;

.field private c:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

.field private d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

.field private e:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/crashreport/crash/b;Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;)V
    .registers 6

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->g:Z

    .line 41
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->a:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->b:Lcom/tencent/bugly/lejiagu/crashreport/crash/b;

    .line 43
    iput-object p3, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    .line 44
    iput-object p4, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    .line 45
    return-void
.end method

.method private static a(Ljava/lang/Throwable;I)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 398
    if-nez p0, :cond_5

    .line 399
    const/4 v0, 0x0

    .line 417
    :goto_4
    return-object v0

    .line 401
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 404
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_16
    if-ge v0, v4, :cond_5e

    aget-object v5, v3, v0

    .line 405
    if-lez p1, :cond_3f

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lt v6, p1, :cond_3f

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\n[Stack over limit size :"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " , has been cutted !]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 411
    :cond_3f
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_4c} :catch_4f

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 414
    :catch_4f
    move-exception v0

    .line 415
    const-string v3, "gen stack error %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 417
    :cond_5e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private declared-synchronized a(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 3

    .prologue
    .line 117
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 118
    monitor-exit p0

    return-void

    .line 117
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[B)Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;
    .registers 15

    .prologue
    .line 135
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->a()Lcom/tencent/bugly/lejiagu/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->l()Z

    move-result v1

    .line 136
    if-eqz v1, :cond_9e

    if-eqz p3, :cond_9e

    const-string v0, " This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful![Bugly]"

    move-object v4, v0

    .line 139
    :goto_f
    if-eqz v1, :cond_1b

    if-eqz p3, :cond_1b

    .line 140
    const-string v0, "This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 143
    :cond_1b
    new-instance v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;

    invoke-direct {v3}, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;-><init>()V

    .line 144
    const-string v0, "3"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 146
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/a;->i()J

    move-result-wide v0

    iput-wide v0, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->B:J

    .line 147
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/a;->g()J

    move-result-wide v0

    iput-wide v0, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->C:J

    .line 148
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/a;->k()J

    move-result-wide v0

    iput-wide v0, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->D:J

    .line 149
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->o()J

    move-result-wide v0

    iput-wide v0, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->E:J

    .line 150
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->n()J

    move-result-wide v0

    iput-wide v0, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->F:J

    .line 151
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->p()J

    move-result-wide v0

    iput-wide v0, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->G:J

    .line 152
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->a:Landroid/content/Context;

    sget v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->d:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/a;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    .line 155
    invoke-static {p3}, Lcom/tencent/bugly/lejiagu/proguard/v;->a(Z)[B

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->x:[B

    .line 156
    const-string v1, "user log size:%d"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v0, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->x:[B

    if-nez v0, :cond_a3

    const/4 v0, 0x0

    :goto_6e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 157
    if-eqz p3, :cond_a7

    const/4 v0, 0x0

    :goto_7a
    iput v0, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->b:I

    .line 159
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    iget-object v0, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->i:Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    .line 165
    if-nez p2, :cond_24d

    .line 166
    const/4 v0, 0x0

    .line 249
    :goto_9d
    return-object v0

    .line 136
    :cond_9e
    const-string v0, ""

    move-object v4, v0

    goto/16 :goto_f

    .line 156
    :cond_a3
    iget-object v0, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->x:[B

    array-length v0, v0

    goto :goto_6e

    .line 157
    :cond_a7
    const/4 v0, 0x2

    goto :goto_7a

    .line 168
    :goto_a9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_b4

    .line 169
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_a9

    .line 172
    :cond_b4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 173
    const/16 v1, 0x3e8

    invoke-static {p2, v1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->b(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v1

    .line 174
    if-nez v1, :cond_c6

    .line 175
    const-string v1, ""

    .line 177
    :cond_c6
    const-string v6, "stack frame :%d, has cause %b"

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    array-length v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v8, 0x1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1e5

    const/4 v2, 0x1

    :goto_df
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 179
    const-string v2, ""

    .line 180
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    array-length v6, v6

    if-lez v6, :cond_fc

    .line 181
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v6, 0x0

    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    .line 184
    :cond_fc
    if-eq v0, p2, :cond_1e8

    .line 186
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    .line 187
    const/16 v4, 0x3e8

    invoke-static {v0, v4}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->b(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    .line 188
    iget-object v4, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    if-nez v4, :cond_118

    .line 189
    const-string v4, ""

    iput-object v4, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    .line 190
    :cond_118
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v1, "\n......"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v1, "\nCaused by:\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-object v1, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    sget v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->e:I

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->a(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 212
    :goto_170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->r:J

    .line 214
    iget-object v0, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/a;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    .line 216
    :try_start_182
    sget v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->e:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/a;->a(IZ)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->y:Ljava/util/Map;

    .line 218
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    iget-object v0, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->H:Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->s()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    .line 222
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->D()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    .line 223
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    iget-wide v0, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a:J

    iput-wide v0, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->L:J

    .line 224
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    iget-boolean v0, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->n:Z

    iput-boolean v0, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->M:Z

    .line 227
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->A()I

    move-result v0

    iput v0, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->O:I

    .line 228
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->B()I

    move-result v0

    iput v0, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->P:I

    .line 229
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->w()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->Q:Ljava/util/Map;

    .line 230
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->z()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;
    :try_end_1db
    .catch Ljava/lang/Throwable; {:try_start_182 .. :try_end_1db} :catch_211

    .line 235
    :goto_1db
    if-eqz p3, :cond_222

    .line 236
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->b:Lcom/tencent/bugly/lejiagu/crashreport/crash/b;

    invoke-virtual {v0, v3}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->b(Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;)V

    :cond_1e2
    :goto_1e2
    move-object v0, v3

    .line 249
    goto/16 :goto_9d

    .line 177
    :cond_1e5
    const/4 v2, 0x0

    goto/16 :goto_df

    .line 203
    :cond_1e8
    iput-object v5, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    .line 205
    iget-object v0, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    if-nez v0, :cond_205

    .line 206
    const-string v0, ""

    iput-object v0, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    .line 207
    :cond_205
    iput-object v2, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    .line 208
    sget v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->e:I

    invoke-static {p2, v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->a(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    goto/16 :goto_170

    .line 232
    :catch_211
    move-exception v0

    .line 233
    const-string v1, "handle crash error %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1db

    .line 238
    :cond_222
    if-eqz p4, :cond_248

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_248

    const/4 v0, 0x1

    move v1, v0

    .line 239
    :goto_22c
    if-eqz p5, :cond_24b

    array-length v0, p5

    if-lez v0, :cond_24b

    const/4 v0, 0x1

    .line 240
    :goto_232
    if-eqz v1, :cond_243

    .line 241
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    .line 242
    iget-object v1, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    const-string v2, "UserData"

    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_243
    if-eqz v0, :cond_1e2

    .line 245
    iput-object p5, v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->S:[B

    goto :goto_1e2

    .line 238
    :cond_248
    const/4 v0, 0x0

    move v1, v0

    goto :goto_22c

    .line 239
    :cond_24b
    const/4 v0, 0x0

    goto :goto_232

    :cond_24d
    move-object v0, p2

    goto/16 :goto_a9
.end method

.method private static b(Ljava/lang/Throwable;I)Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v3, 0x3e8

    .line 424
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    .line 425
    const-string v0, ""

    .line 430
    :goto_a
    return-object v0

    .line 427
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v3, :cond_1a

    .line 428
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 430
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n[Message over limit size:1000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", has been cutted!]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private static b(Ljava/lang/Thread$UncaughtExceptionHandler;)Z
    .registers 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 362
    if-nez p0, :cond_5

    .line 375
    :cond_4
    :goto_4
    return v0

    .line 365
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 366
    const-string v4, "uncaughtException"

    .line 367
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 368
    array-length v6, v5

    move v2, v1

    :goto_19
    if-ge v2, v6, :cond_4

    aget-object v7, v5, v2

    .line 369
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 370
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    .line 371
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_33

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    move v0, v1

    .line 372
    goto :goto_4

    .line 368
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_19
.end method

.method private declared-synchronized c()Z
    .registers 2

    .prologue
    .line 103
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_c

    move-result-object v0

    if-ne v0, p0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static d()Z
    .registers 3

    .prologue
    .line 254
    sget-object v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 255
    :try_start_3
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->h:Z

    .line 256
    const/4 v2, 0x1

    sput-boolean v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->h:Z

    .line 257
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_a

    .line 258
    return v0

    .line 257
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 6

    .prologue
    const/16 v1, 0xa

    .line 51
    monitor-enter p0

    :try_start_3
    sget v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->j:I

    if-lt v0, v1, :cond_1a

    .line 52
    const-string v0, "java crash handler over %d, no need set."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_78

    .line 83
    :cond_18
    :goto_18
    monitor-exit p0

    return-void

    .line 56
    :cond_1a
    :try_start_1a
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_18

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 65
    const-string v1, "com.android.internal.os.RuntimeInit$UncaughtHandler"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 67
    const-string v1, "backup system java handler: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 68
    sput-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 69
    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 78
    :goto_59
    invoke-direct {p0, v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 79
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->g:Z

    .line 81
    sget v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->j:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->j:I

    .line 82
    const-string v0, "registered java monitor: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_77
    .catchall {:try_start_1a .. :try_end_77} :catchall_78

    goto :goto_18

    .line 51
    :catchall_78
    move-exception v0

    monitor-exit p0

    throw v0

    .line 71
    :cond_7b
    :try_start_7b
    const-string v1, "backup java handler: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 72
    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_end_8c
    .catchall {:try_start_7b .. :try_end_8c} :catchall_78

    goto :goto_59
.end method

.method public final declared-synchronized a(Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;)V
    .registers 6

    .prologue
    .line 384
    monitor-enter p0

    if-eqz p1, :cond_23

    :try_start_3
    iget-boolean v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->d:Z

    invoke-direct {p0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->c()Z

    move-result v1

    if-eq v0, v1, :cond_23

    .line 385
    const-string v0, "java changed to %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p1, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->d:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 386
    iget-boolean v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->d:Z

    if-eqz v0, :cond_25

    .line 387
    invoke-virtual {p0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->a()V
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_29

    .line 392
    :cond_23
    :goto_23
    monitor-exit p0

    return-void

    .line 389
    :cond_25
    :try_start_25
    invoke-virtual {p0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->b()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_23

    .line 384
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[B)V
    .registers 14

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 271
    if-eqz p3, :cond_61

    .line 272
    const-string v0, "Java Crash Happen cause by %s(%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 273
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 274
    const-string v0, "this class has handled this exception"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 276
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_4f

    .line 277
    const-string v0, "call system handler"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 278
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 286
    :cond_39
    :goto_39
    :try_start_39
    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->g:Z

    if-nez v0, :cond_c1

    .line 289
    const-string v0, "Java crash handler is disable. Just return."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_45} :catch_134
    .catchall {:try_start_39 .. :try_end_45} :catchall_302

    .line 335
    if-nez p3, :cond_69

    .line 336
    const-string v0, "not to shut down return"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 358
    :goto_4e
    return-void

    .line 280
    :cond_4f
    const-string v0, "current process die"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    goto :goto_39

    .line 284
    :cond_61
    const-string v0, "Java Catch Happen"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_39

    .line 340
    :cond_69
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->b(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 346
    const-string v0, "sys default last handle start!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 347
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 348
    const-string v0, "sys default last handle end!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_4e

    .line 349
    :cond_89
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_a1

    .line 350
    const-string v0, "system handle start!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 351
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 352
    const-string v0, "system handle end!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_4e

    .line 354
    :cond_a1
    const-string v0, "crashreport last handle start!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 355
    const-string v0, "current process die"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    .line 356
    const-string v0, "crashreport last handle end!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_4e

    .line 293
    :cond_c1
    :try_start_c1
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->b()Z

    move-result v0

    if-nez v0, :cond_e5

    .line 295
    const-string v0, "waiting for remote sync"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v6

    .line 297
    :cond_d2
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->b()Z
    :try_end_d7
    .catch Ljava/lang/Throwable; {:try_start_c1 .. :try_end_d7} :catch_134
    .catchall {:try_start_c1 .. :try_end_d7} :catchall_302

    move-result v1

    if-nez v1, :cond_e5

    .line 298
    const-wide/16 v1, 0x1f4

    :try_start_dc
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_df
    .catch Ljava/lang/InterruptedException; {:try_start_dc .. :try_end_df} :catch_12f
    .catch Ljava/lang/Throwable; {:try_start_dc .. :try_end_df} :catch_134
    .catchall {:try_start_dc .. :try_end_df} :catchall_302

    .line 299
    :goto_df
    add-int/lit16 v0, v0, 0x1f4

    .line 300
    const/16 v1, 0x1388

    if-lt v0, v1, :cond_d2

    .line 301
    :cond_e5
    :try_start_e5
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->b()Z

    move-result v0

    if-nez v0, :cond_f5

    .line 306
    const-string v0, "no remote but still store!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 309
    :cond_f5
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    .line 310
    iget-boolean v0, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->d:Z

    if-nez v0, :cond_1a7

    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1a7

    .line 311
    const-string v0, "crash report was closed by remote , will not upload to Bugly , print local for helpful!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 312
    if-eqz p3, :cond_149

    const-string v0, "JAVA_CRASH"

    :goto_113
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/a;->n()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    iget-object v2, v2, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->d:Ljava/lang/String;

    invoke-static {p2}, Lcom/tencent/bugly/lejiagu/proguard/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/String;Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;)V
    :try_end_124
    .catch Ljava/lang/Throwable; {:try_start_e5 .. :try_end_124} :catch_134
    .catchall {:try_start_e5 .. :try_end_124} :catchall_302

    .line 335
    if-nez p3, :cond_14c

    .line 336
    const-string v0, "not to shut down return"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_4e

    .line 298
    :catch_12f
    move-exception v1

    :try_start_130
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_133
    .catch Ljava/lang/Throwable; {:try_start_130 .. :try_end_133} :catch_134
    .catchall {:try_start_130 .. :try_end_133} :catchall_302

    goto :goto_df

    .line 330
    :catch_134
    move-exception v0

    .line 331
    :try_start_135
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_13e

    .line 332
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_13e
    .catchall {:try_start_135 .. :try_end_13e} :catchall_302

    .line 335
    :cond_13e
    if-nez p3, :cond_2a7

    .line 336
    const-string v0, "not to shut down return"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_4e

    .line 312
    :cond_149
    :try_start_149
    const-string v0, "JAVA_CATCH"
    :try_end_14b
    .catch Ljava/lang/Throwable; {:try_start_149 .. :try_end_14b} :catch_134
    .catchall {:try_start_149 .. :try_end_14b} :catchall_302

    goto :goto_113

    .line 340
    :cond_14c
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_16d

    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->b(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_16d

    .line 346
    const-string v0, "sys default last handle start!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 347
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 348
    const-string v0, "sys default last handle end!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_4e

    .line 349
    :cond_16d
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_186

    .line 350
    const-string v0, "system handle start!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 351
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 352
    const-string v0, "system handle end!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_4e

    .line 354
    :cond_186
    const-string v0, "crashreport last handle start!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 355
    const-string v0, "current process die"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    .line 356
    const-string v0, "crashreport last handle end!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_4e

    .line 318
    :cond_1a7
    :try_start_1a7
    invoke-direct/range {p0 .. p5}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->b(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[B)Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;

    move-result-object v5

    .line 319
    if-nez v5, :cond_21b

    .line 320
    const-string v0, "pkg crash datas fail!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1b5
    .catch Ljava/lang/Throwable; {:try_start_1a7 .. :try_end_1b5} :catch_134
    .catchall {:try_start_1a7 .. :try_end_1b5} :catchall_302

    .line 335
    if-nez p3, :cond_1c0

    .line 336
    const-string v0, "not to shut down return"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_4e

    .line 340
    :cond_1c0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1e1

    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->b(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_1e1

    .line 346
    const-string v0, "sys default last handle start!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 347
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 348
    const-string v0, "sys default last handle end!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_4e

    .line 349
    :cond_1e1
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1fa

    .line 350
    const-string v0, "system handle start!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 351
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 352
    const-string v0, "system handle end!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_4e

    .line 354
    :cond_1fa
    const-string v0, "crashreport last handle start!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 355
    const-string v0, "current process die"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    .line 356
    const-string v0, "crashreport last handle end!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_4e

    .line 324
    :cond_21b
    if-eqz p3, :cond_249

    :try_start_21d
    const-string v0, "JAVA_CRASH"

    :goto_21f
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/a;->n()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    iget-object v2, v2, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->d:Ljava/lang/String;

    invoke-static {p2}, Lcom/tencent/bugly/lejiagu/proguard/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/String;Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;)V

    .line 327
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->b:Lcom/tencent/bugly/lejiagu/crashreport/crash/b;

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->a(Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;)Z

    move-result v0

    if-nez v0, :cond_23e

    .line 328
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->b:Lcom/tencent/bugly/lejiagu/crashreport/crash/b;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v5, v1, v2, p3}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->a(Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;JZ)V
    :try_end_23e
    .catch Ljava/lang/Throwable; {:try_start_21d .. :try_end_23e} :catch_134
    .catchall {:try_start_21d .. :try_end_23e} :catchall_302

    .line 335
    :cond_23e
    if-nez p3, :cond_24c

    .line 336
    const-string v0, "not to shut down return"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_4e

    .line 324
    :cond_249
    :try_start_249
    const-string v0, "JAVA_CATCH"
    :try_end_24b
    .catch Ljava/lang/Throwable; {:try_start_249 .. :try_end_24b} :catch_134
    .catchall {:try_start_249 .. :try_end_24b} :catchall_302

    goto :goto_21f

    .line 340
    :cond_24c
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_26d

    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->b(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_26d

    .line 346
    const-string v0, "sys default last handle start!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 347
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 348
    const-string v0, "sys default last handle end!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_4e

    .line 349
    :cond_26d
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_286

    .line 350
    const-string v0, "system handle start!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 351
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 352
    const-string v0, "system handle end!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_4e

    .line 354
    :cond_286
    const-string v0, "crashreport last handle start!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 355
    const-string v0, "current process die"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    .line 356
    const-string v0, "crashreport last handle end!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_4e

    .line 340
    :cond_2a7
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_2c8

    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->b(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_2c8

    .line 346
    const-string v0, "sys default last handle start!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 347
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 348
    const-string v0, "sys default last handle end!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_4e

    .line 349
    :cond_2c8
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_2e1

    .line 350
    const-string v0, "system handle start!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 351
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 352
    const-string v0, "system handle end!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_4e

    .line 354
    :cond_2e1
    const-string v0, "crashreport last handle start!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 355
    const-string v0, "current process die"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    .line 356
    const-string v0, "crashreport last handle end!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_4e

    .line 335
    :catchall_302
    move-exception v0

    if-nez p3, :cond_30e

    .line 336
    const-string v0, "not to shut down return"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_4e

    .line 340
    :cond_30e
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_32e

    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->b(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v1

    if-eqz v1, :cond_32e

    .line 346
    const-string v1, "sys default last handle start!"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 347
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 348
    const-string v1, "sys default last handle end!"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 356
    :goto_32d
    throw v0

    .line 349
    :cond_32e
    sget-object v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_346

    .line 350
    const-string v1, "system handle start!"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 351
    sget-object v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 352
    const-string v1, "system handle end!"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_32d

    .line 354
    :cond_346
    const-string v1, "crashreport last handle start!"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 355
    const-string v1, "current process die"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    .line 356
    const-string v1, "crashreport last handle end!"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_32d
.end method

.method public final declared-synchronized b()V
    .registers 5

    .prologue
    .line 89
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->g:Z

    .line 90
    const-string v0, "close java monitor!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 91
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bugly"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 93
    const-string v0, "Java monitor to unregister: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 95
    sget v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->j:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->j:I
    :try_end_3a
    .catchall {:try_start_2 .. :try_end_3a} :catchall_3c

    .line 97
    :cond_3a
    monitor-exit p0

    return-void

    .line 89
    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 380
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[B)V

    .line 381
    return-void
.end method
