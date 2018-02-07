.class public final Lcom/tencent/bugly/legu/proguard/v;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static a:Lcom/tencent/bugly/legu/proguard/v;


# instance fields
.field private b:Ljava/util/concurrent/ScheduledExecutorService;

.field private c:Ljava/util/concurrent/ThreadPoolExecutor;

.field private d:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method protected constructor <init>()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/v;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 17
    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/v;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 18
    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/v;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 21
    new-instance v7, Lcom/tencent/bugly/legu/proguard/v$1;

    invoke-direct {v7, p0}, Lcom/tencent/bugly/legu/proguard/v$1;-><init>(Lcom/tencent/bugly/legu/proguard/v;)V

    .line 30
    const/4 v0, 0x3

    invoke-static {v0, v7}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/v;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 32
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0x64

    invoke-direct {v6, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    move v2, v1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/v;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 36
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x2

    const v2, 0x7fffffff

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/v;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 39
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/v;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/v;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    :cond_0
    const-string v0, "ScheduledExecutorService is not valiable!"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/v;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/v;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 43
    :cond_2
    const-string v0, "QueueExecutorService is not valiable!"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 45
    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/v;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/v;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 46
    :cond_4
    const-string v0, "ploadExecutorService is not valiable!"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 48
    :cond_5
    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/legu/proguard/v;
    .locals 2

    .prologue
    .line 54
    const-class v1, Lcom/tencent/bugly/legu/proguard/v;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/legu/proguard/v;->a:Lcom/tencent/bugly/legu/proguard/v;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/tencent/bugly/legu/proguard/v;

    invoke-direct {v0}, Lcom/tencent/bugly/legu/proguard/v;-><init>()V

    sput-object v0, Lcom/tencent/bugly/legu/proguard/v;->a:Lcom/tencent/bugly/legu/proguard/v;

    .line 57
    :cond_0
    sget-object v0, Lcom/tencent/bugly/legu/proguard/v;->a:Lcom/tencent/bugly/legu/proguard/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized c()Z
    .locals 1

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/v;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/v;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/v;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/v;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/v;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/v;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

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


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Runnable;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 68
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/bugly/legu/proguard/v;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    sget-boolean v1, Lcom/tencent/bugly/legu/b;->b:Z

    if-eqz v1, :cond_0

    .line 70
    sget-object v1, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v2, "queue handler was closed , should not post task!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 74
    :cond_1
    if-nez p1, :cond_2

    .line 75
    :try_start_1
    sget-boolean v1, Lcom/tencent/bugly/legu/b;->b:Z

    if-eqz v1, :cond_0

    .line 76
    sget-object v1, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v2, "queue task is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 81
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/tencent/bugly/legu/proguard/v;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    const/4 v0, 0x1

    goto :goto_0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    :try_start_3
    sget-boolean v2, Lcom/tencent/bugly/legu/b;->b:Z

    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized a(Ljava/lang/Runnable;J)Z
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 95
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/bugly/legu/proguard/v;->c()Z

    move-result v4

    if-nez v4, :cond_1

    .line 96
    const-string v1, "async handler was closed , should not post task!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 100
    :cond_1
    if-nez p1, :cond_2

    .line 101
    :try_start_1
    const-string v1, "async task == null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 105
    :cond_2
    cmp-long v4, p2, v2

    if-lez v4, :cond_3

    .line 107
    :goto_1
    :try_start_2
    const-string v2, "delay %d task %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    :try_start_3
    iget-object v2, p0, Lcom/tencent/bugly/legu/proguard/v;->b:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, p1, p2, p3, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v1

    .line 110
    goto :goto_0

    :cond_3
    move-wide p2, v2

    .line 105
    goto :goto_1

    .line 111
    :catch_0
    move-exception v1

    .line 112
    :try_start_4
    sget-boolean v2, Lcom/tencent/bugly/legu/b;->b:Z

    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized b()V
    .locals 2

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/v;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/v;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    const-string v0, "close async handler"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 179
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/v;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/v;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/v;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    const-string v0, "close async queue handler"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/v;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/v;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/v;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 186
    const-string v0, "close async upload handler"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 187
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/v;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :cond_2
    monitor-exit p0

    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/Runnable;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 123
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/bugly/legu/proguard/v;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 124
    const-string v1, "async handler was closed , should not post task!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 128
    :cond_1
    if-nez p1, :cond_2

    .line 129
    :try_start_1
    const-string v1, "async task == null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 133
    :cond_2
    :try_start_2
    const-string v2, "normal task %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    :try_start_3
    iget-object v2, p0, Lcom/tencent/bugly/legu/proguard/v;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v1

    .line 136
    goto :goto_0

    .line 137
    :catch_0
    move-exception v1

    .line 138
    :try_start_4
    sget-boolean v2, Lcom/tencent/bugly/legu/b;->b:Z

    if-eqz v2, :cond_0

    .line 139
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized c(Ljava/lang/Runnable;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 150
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/bugly/legu/proguard/v;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    sget-boolean v1, Lcom/tencent/bugly/legu/b;->b:Z

    if-eqz v1, :cond_0

    .line 152
    sget-object v1, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v2, "queue handler was closed , should not post task!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 156
    :cond_1
    if-nez p1, :cond_2

    .line 157
    :try_start_1
    sget-boolean v1, Lcom/tencent/bugly/legu/b;->b:Z

    if-eqz v1, :cond_0

    .line 158
    sget-object v1, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v2, "queue task is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 163
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/tencent/bugly/legu/proguard/v;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    const/4 v0, 0x1

    goto :goto_0

    .line 165
    :catch_0
    move-exception v1

    .line 166
    :try_start_3
    sget-boolean v2, Lcom/tencent/bugly/legu/b;->b:Z

    if-eqz v2, :cond_0

    .line 167
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
