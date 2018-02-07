.class public final Lcom/tencent/bugly/legu/proguard/t;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/legu/proguard/t$a;
    }
.end annotation


# static fields
.field private static a:Lcom/tencent/bugly/legu/proguard/t;


# instance fields
.field private final b:Lcom/tencent/bugly/legu/proguard/o;

.field private final c:Landroid/content/Context;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Object;

.field private g:Ljava/lang/String;

.field private h:[B

.field private i:J

.field private j:[B

.field private k:J

.field private l:Ljava/lang/String;

.field private m:J

.field private final n:Ljava/lang/Object;

.field private o:Z

.field private final p:Ljava/lang/Object;

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/legu/proguard/t;->a:Lcom/tencent/bugly/legu/proguard/t;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/t;->d:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/t;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/t;->f:Ljava/lang/Object;

    .line 72
    iput-object v1, p0, Lcom/tencent/bugly/legu/proguard/t;->g:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lcom/tencent/bugly/legu/proguard/t;->h:[B

    .line 77
    iput-wide v3, p0, Lcom/tencent/bugly/legu/proguard/t;->i:J

    .line 83
    iput-object v1, p0, Lcom/tencent/bugly/legu/proguard/t;->j:[B

    .line 85
    iput-wide v3, p0, Lcom/tencent/bugly/legu/proguard/t;->k:J

    .line 87
    iput-object v1, p0, Lcom/tencent/bugly/legu/proguard/t;->l:Ljava/lang/String;

    .line 89
    iput-wide v3, p0, Lcom/tencent/bugly/legu/proguard/t;->m:J

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/t;->n:Ljava/lang/Object;

    .line 95
    iput-boolean v2, p0, Lcom/tencent/bugly/legu/proguard/t;->o:Z

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/t;->p:Ljava/lang/Object;

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/legu/proguard/t;->q:Z

    .line 102
    iput-object p1, p0, Lcom/tencent/bugly/legu/proguard/t;->c:Landroid/content/Context;

    .line 103
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/o;->a()Lcom/tencent/bugly/legu/proguard/o;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/t;->b:Lcom/tencent/bugly/legu/proguard/o;

    .line 111
    :try_start_0
    const-string v0, "android.util.Base64"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/bugly/legu/proguard/t;->q:Z

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    const-string v1, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDP9x32s5pPtZBXzJBz2GWM/sbTvVO2+RvW0PH01IdaBxc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fB6fbHZocC9T3nl1+J5eAFjIRVuV8vHDky7Qo82Mnh0PVvcZIEQvMMVKU8dsMQopxgsOs2gkSHJwgWdinKNS8CmWobo6pFwPUW11lMv714jAUZRq2GBOqiO2vQI6iwIDAQAB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/t;->g:Ljava/lang/String;

    .line 126
    :cond_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    const-string v0, "[UploadManager] can not find Base64 class, will not use stronger security way to upload"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 114
    iput-boolean v2, p0, Lcom/tencent/bugly/legu/proguard/t;->q:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/bugly/legu/proguard/t;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/legu/proguard/t;
    .locals 2

    .prologue
    .line 139
    const-class v0, Lcom/tencent/bugly/legu/proguard/t;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/legu/proguard/t;->a:Lcom/tencent/bugly/legu/proguard/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/bugly/legu/proguard/t;
    .locals 2

    .prologue
    .line 132
    const-class v1, Lcom/tencent/bugly/legu/proguard/t;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/legu/proguard/t;->a:Lcom/tencent/bugly/legu/proguard/t;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/tencent/bugly/legu/proguard/t;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/legu/proguard/t;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/bugly/legu/proguard/t;->a:Lcom/tencent/bugly/legu/proguard/t;

    .line 135
    :cond_0
    sget-object v0, Lcom/tencent/bugly/legu/proguard/t;->a:Lcom/tencent/bugly/legu/proguard/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/tencent/bugly/legu/proguard/t;Ljava/lang/Runnable;J)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/legu/proguard/t;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;J)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 626
    if-nez p1, :cond_0

    .line 627
    const-string v0, "[UploadManager] upload task should not be null"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 644
    :goto_0
    return-void

    .line 630
    :cond_0
    const-string v0, "[UploadManager] execute synchronized upload task (pid=%d | tid=%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 632
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 633
    const-string v1, "BuglySyncUploadThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 636
    :try_start_0
    invoke-virtual {v0, p2, p3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 637
    :catch_0
    move-exception v0

    .line 638
    const-string v1, "[UploadManager] failed to execute upload synchronized task with message: %s. Add it to queue"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 642
    invoke-direct {p0, p1}, Lcom/tencent/bugly/legu/proguard/t;->a(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private a(Ljava/lang/Runnable;ZJ)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 654
    if-nez p1, :cond_0

    .line 655
    const-string v0, "[UploadManager] upload task should not be null"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 657
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/v;->a()Lcom/tencent/bugly/legu/proguard/v;

    move-result-object v0

    .line 658
    if-nez v0, :cond_1

    .line 659
    const-string v1, "[UploadManager] async task handler has not been initialized"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 661
    :cond_1
    const-string v1, "[UploadManager] add upload task (pid=%d | tid=%d)"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 664
    iget-object v1, p0, Lcom/tencent/bugly/legu/proguard/t;->l:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 666
    invoke-virtual {p0}, Lcom/tencent/bugly/legu/proguard/t;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 668
    const-string v1, "[UploadManager] sucessfully got session ID, try to execute upload task now (pid=%d | tid=%d)"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 671
    if-eqz p2, :cond_2

    .line 672
    invoke-direct {p0, p1, p3, p4}, Lcom/tencent/bugly/legu/proguard/t;->a(Ljava/lang/Runnable;J)V

    .line 681
    :goto_0
    invoke-direct {p0, v4}, Lcom/tencent/bugly/legu/proguard/t;->b(I)Z

    .line 710
    :goto_1
    return-void

    .line 674
    :cond_2
    if-nez v0, :cond_3

    .line 675
    invoke-direct {p0, p1}, Lcom/tencent/bugly/legu/proguard/t;->a(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 677
    :cond_3
    invoke-virtual {v0, p1}, Lcom/tencent/bugly/legu/proguard/v;->c(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 686
    :cond_4
    const-string v1, "[UploadManager] session ID is expired, drop it (pid=%d | tid=%d)"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 689
    invoke-virtual {p0, v4}, Lcom/tencent/bugly/legu/proguard/t;->a(Z)V

    .line 691
    :cond_5
    iget-object v6, p0, Lcom/tencent/bugly/legu/proguard/t;->p:Ljava/lang/Object;

    monitor-enter v6

    .line 693
    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/bugly/legu/proguard/t;->o:Z

    if-nez v1, :cond_7

    .line 695
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/bugly/legu/proguard/t;->o:Z

    .line 697
    const-string v1, "[UploadManager] try to request session ID now (pid=%d | tid=%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 699
    if-eqz p2, :cond_6

    .line 700
    new-instance v0, Lcom/tencent/bugly/legu/proguard/t$a;

    iget-object v2, p0, Lcom/tencent/bugly/legu/proguard/t;->c:Landroid/content/Context;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/legu/proguard/t$a;-><init>(Lcom/tencent/bugly/legu/proguard/t;Landroid/content/Context;Ljava/lang/Runnable;J)V

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/bugly/legu/proguard/t;->a(Ljava/lang/Runnable;J)V

    .line 710
    :goto_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    .line 703
    :cond_6
    :try_start_1
    invoke-direct {p0, p1}, Lcom/tencent/bugly/legu/proguard/t;->a(Ljava/lang/Runnable;)Z

    .line 704
    new-instance v1, Lcom/tencent/bugly/legu/proguard/t$a;

    iget-object v2, p0, Lcom/tencent/bugly/legu/proguard/t;->c:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/tencent/bugly/legu/proguard/t$a;-><init>(Lcom/tencent/bugly/legu/proguard/t;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/legu/proguard/v;->c(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 708
    :cond_7
    invoke-direct {p0, p1}, Lcom/tencent/bugly/legu/proguard/t;->a(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method static synthetic a(Lcom/tencent/bugly/legu/proguard/t;I)Z
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/tencent/bugly/legu/proguard/t;->b(I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/tencent/bugly/legu/proguard/t;Z)Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/legu/proguard/t;->o:Z

    return v0
.end method

.method private a(Ljava/lang/Runnable;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 600
    if-nez p1, :cond_0

    .line 601
    const-string v1, "[UploadManager] upload task should not be null"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 615
    :goto_0
    return v0

    .line 605
    :cond_0
    :try_start_0
    const-string v2, "[UploadManager] add upload task to queue (pid=%d | tid=%d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 608
    iget-object v3, p0, Lcom/tencent/bugly/legu/proguard/t;->f:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    :try_start_1
    iget-object v2, p0, Lcom/tencent/bugly/legu/proguard/t;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 611
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 612
    goto :goto_0

    .line 611
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3

    throw v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 613
    :catch_0
    move-exception v2

    .line 614
    const-string v3, "[UploadManager] failed to add upload task to queue: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v3, v1}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/bugly/legu/proguard/t;[B)[B
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/tencent/bugly/legu/proguard/t;->j:[B

    return-object p1
.end method

.method private b(I)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 551
    if-gez p1, :cond_0

    .line 552
    const-string v0, "[UploadManager] number of task to execute should >= 0"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v1

    .line 589
    :goto_0
    return v0

    .line 556
    :cond_0
    iget-object v4, p0, Lcom/tencent/bugly/legu/proguard/t;->f:Ljava/lang/Object;

    monitor-enter v4

    .line 557
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 561
    monitor-exit v4

    move v0, v2

    goto :goto_0

    .line 563
    :cond_1
    const-string v0, "[UploadManager] execute upload tasks of queue which has %d tasks (pid=%d | tid=%d)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/tencent/bugly/legu/proguard/t;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v0, v3}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 567
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    if-le p1, v0, :cond_3

    .line 568
    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result p1

    .line 570
    :cond_3
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/v;->a()Lcom/tencent/bugly/legu/proguard/v;

    move-result-object v5

    .line 571
    if-nez v5, :cond_4

    .line 572
    const-string v0, "[UploadManager] async task handler has not been initialized"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 573
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    goto :goto_0

    :cond_4
    move v3, v1

    .line 575
    :goto_1
    if-ge v3, p1, :cond_6

    .line 577
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 578
    if-eqz v0, :cond_5

    .line 579
    invoke-virtual {v5, v0}, Lcom/tencent/bugly/legu/proguard/v;->c(Ljava/lang/Runnable;)Z

    .line 575
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 581
    :cond_5
    const-string v0, "[UploadManager] upload task poll from queue is null"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 583
    :catch_0
    move-exception v0

    .line 584
    :try_start_2
    const-string v2, "[UploadManager] failed to execute upload task with message: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 586
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto/16 :goto_0

    .line 589
    :cond_6
    monitor-exit v4

    move v0, v2

    goto/16 :goto_0

    .line 590
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method static synthetic b(Lcom/tencent/bugly/legu/proguard/t;)Z
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/tencent/bugly/legu/proguard/t;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/tencent/bugly/legu/proguard/t;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/bugly/legu/proguard/t;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t;->p:Ljava/lang/Object;

    return-object v0
.end method

.method private static d()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 364
    const-string v1, "[UploadManager] drop security info of database (pid=%d | tid=%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 367
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/o;->a()Lcom/tencent/bugly/legu/proguard/o;

    move-result-object v1

    .line 368
    if-nez v1, :cond_0

    .line 369
    const-string v1, "[UploadManager] failed to get Database"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 377
    :goto_0
    return v0

    .line 373
    :cond_0
    const/16 v2, 0x22b

    const-string v3, "security_info"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/tencent/bugly/legu/proguard/o;->a(ILjava/lang/String;Lcom/tencent/bugly/legu/proguard/n;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 374
    :catch_0
    move-exception v1

    .line 376
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method private e()Z
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 387
    const-string v0, "[UploadManager] record security info to database (pid=%d | tid=%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 390
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/o;->a()Lcom/tencent/bugly/legu/proguard/o;

    move-result-object v0

    .line 391
    if-nez v0, :cond_0

    .line 392
    const-string v0, "[UploadManager] failed to get Database"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v6

    .line 432
    :goto_0
    return v0

    .line 395
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    iget-object v1, p0, Lcom/tencent/bugly/legu/proguard/t;->j:[B

    if-eqz v1, :cond_1

    .line 398
    iget-object v1, p0, Lcom/tencent/bugly/legu/proguard/t;->j:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    const-string v1, "#"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    iget-wide v1, p0, Lcom/tencent/bugly/legu/proguard/t;->m:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_2

    .line 406
    iget-wide v1, p0, Lcom/tencent/bugly/legu/proguard/t;->k:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    :goto_1
    const-string v1, "#"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    iget-object v1, p0, Lcom/tencent/bugly/legu/proguard/t;->l:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 413
    iget-object v1, p0, Lcom/tencent/bugly/legu/proguard/t;->l:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    :goto_2
    const-string v1, "#"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    iget-wide v1, p0, Lcom/tencent/bugly/legu/proguard/t;->m:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_4

    .line 420
    iget-wide v1, p0, Lcom/tencent/bugly/legu/proguard/t;->m:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    :goto_3
    const/16 v1, 0x22b

    const-string v2, "security_info"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/legu/proguard/o;->a(ILjava/lang/String;[BLcom/tencent/bugly/legu/proguard/n;Z)Z

    move v0, v7

    .line 426
    goto :goto_0

    .line 400
    :cond_1
    const-string v0, "[UploadManager] AES key is null, will not record"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v6

    .line 401
    goto :goto_0

    .line 408
    :cond_2
    const-string v1, "null"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 427
    :catch_0
    move-exception v0

    .line 429
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    .line 431
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/t;->d()Z

    move v0, v6

    .line 432
    goto :goto_0

    .line 415
    :cond_3
    :try_start_1
    const-string v1, "null"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 422
    :cond_4
    const-string v1, "null"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private f()Z
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 442
    const-string v0, "[UploadManager] load security info from dataBase (pid=%d | tid=%d)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 445
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/o;->a()Lcom/tencent/bugly/legu/proguard/o;

    move-result-object v0

    .line 446
    if-nez v0, :cond_0

    .line 447
    const-string v0, "[UploadManager] failed to get Database"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v1

    .line 500
    :goto_0
    return v0

    .line 452
    :cond_0
    const/16 v3, 0x22b

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Lcom/tencent/bugly/legu/proguard/o;->a(ILcom/tencent/bugly/legu/proguard/n;Z)Ljava/util/Map;

    move-result-object v0

    .line 453
    if-eqz v0, :cond_4

    const-string v3, "security_info"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 454
    new-instance v3, Ljava/lang/String;

    const-string v4, "security_info"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 455
    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 456
    array-length v0, v4

    const/4 v5, 0x4

    if-ne v0, v5, :cond_5

    .line 457
    const/4 v0, 0x0

    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    aget-object v0, v4, v0

    const-string v3, "null"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    if-nez v0, :cond_6

    .line 459
    const/4 v0, 0x0

    :try_start_1
    aget-object v0, v4, v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/t;->j:[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 466
    :goto_1
    if-nez v0, :cond_1

    const/4 v3, 0x1

    :try_start_2
    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    aget-object v3, v4, v3

    const-string v5, "null"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move-result v3

    if-nez v3, :cond_1

    .line 468
    const/4 v3, 0x1

    :try_start_3
    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/tencent/bugly/legu/proguard/t;->k:J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 475
    :cond_1
    :goto_2
    if-nez v0, :cond_2

    const/4 v3, 0x2

    :try_start_4
    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x2

    aget-object v3, v4, v3

    const-string v5, "null"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 476
    const/4 v3, 0x2

    aget-object v3, v4, v3

    iput-object v3, p0, Lcom/tencent/bugly/legu/proguard/t;->l:Ljava/lang/String;

    .line 478
    :cond_2
    if-nez v0, :cond_3

    const/4 v3, 0x3

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x3

    aget-object v3, v4, v3

    const-string v5, "null"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    move-result v3

    if-nez v3, :cond_3

    .line 480
    const/4 v3, 0x3

    :try_start_5
    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/legu/proguard/t;->m:J
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 492
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 493
    :try_start_6
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/t;->d()Z

    :cond_4
    move v0, v2

    .line 496
    goto/16 :goto_0

    .line 460
    :catch_0
    move-exception v0

    .line 462
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move v0, v2

    .line 463
    goto :goto_1

    .line 469
    :catch_1
    move-exception v0

    .line 471
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move v0, v2

    .line 472
    goto :goto_2

    .line 481
    :catch_2
    move-exception v0

    .line 483
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move v0, v2

    .line 485
    goto :goto_3

    .line 488
    :cond_5
    const-string v0, "securityInfo = %s, strings.length = %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-static {v0, v5}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    move v0, v2

    .line 490
    goto :goto_3

    .line 497
    :catch_3
    move-exception v0

    .line 499
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move v0, v1

    .line 500
    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto/16 :goto_1
.end method


# virtual methods
.method public final declared-synchronized a(I)J
    .locals 6

    .prologue
    const-wide/16 v1, -0x2

    .line 349
    monitor-enter p0

    if-ltz p1, :cond_1

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    if-nez v0, :cond_0

    move-wide v0, v1

    .line 354
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 351
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 353
    :cond_1
    const-string v0, "unknown up %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v0, v1

    .line 354
    goto :goto_0

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(II[BLjava/lang/String;Lcom/tencent/bugly/legu/proguard/s;)V
    .locals 8

    .prologue
    .line 166
    const/4 v5, 0x0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/legu/proguard/t;->q:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/tencent/bugly/legu/proguard/u;

    iget-object v1, p0, Lcom/tencent/bugly/legu/proguard/t;->c:Landroid/content/Context;

    const/4 v7, 0x1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/tencent/bugly/legu/proguard/u;-><init>(Landroid/content/Context;II[BLjava/lang/String;Lcom/tencent/bugly/legu/proguard/s;Z)V

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/tencent/bugly/legu/proguard/t;->a(Ljava/lang/Runnable;ZJ)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    new-instance v0, Lcom/tencent/bugly/legu/proguard/u;

    iget-object v1, p0, Lcom/tencent/bugly/legu/proguard/t;->c:Landroid/content/Context;

    const/4 v7, 0x0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/tencent/bugly/legu/proguard/u;-><init>(Landroid/content/Context;II[BLjava/lang/String;Lcom/tencent/bugly/legu/proguard/s;Z)V

    invoke-static {}, Lcom/tencent/bugly/legu/proguard/v;->a()Lcom/tencent/bugly/legu/proguard/v;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/legu/proguard/v;->b(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final declared-synchronized a(IJ)V
    .locals 4

    .prologue
    .line 337
    monitor-enter p0

    if-ltz p1, :cond_0

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string v0, "up %d %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    :goto_0
    monitor-exit p0

    return-void

    .line 341
    :cond_0
    :try_start_1
    const-string v0, "unknown up %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(ILcom/tencent/bugly/legu/proguard/am;Ljava/lang/String;Lcom/tencent/bugly/legu/proguard/s;)V
    .locals 8

    .prologue
    .line 151
    const/4 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/bugly/legu/proguard/t;->a(ILcom/tencent/bugly/legu/proguard/am;Ljava/lang/String;Lcom/tencent/bugly/legu/proguard/s;ZJ)V

    .line 152
    return-void
.end method

.method public final a(ILcom/tencent/bugly/legu/proguard/am;Ljava/lang/String;Lcom/tencent/bugly/legu/proguard/s;ZJ)V
    .locals 7

    .prologue
    .line 256
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/legu/proguard/t;->q:Z

    if-eqz v0, :cond_1

    .line 257
    new-instance v0, Lcom/tencent/bugly/legu/proguard/u;

    iget-object v1, p0, Lcom/tencent/bugly/legu/proguard/t;->c:Landroid/content/Context;

    const/4 v6, 0x1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/tencent/bugly/legu/proguard/u;-><init>(Landroid/content/Context;ILcom/tencent/bugly/legu/proguard/am;Ljava/lang/String;Lcom/tencent/bugly/legu/proguard/s;Z)V

    .line 259
    invoke-direct {p0, v0, p5, p6, p7}, Lcom/tencent/bugly/legu/proguard/t;->a(Ljava/lang/Runnable;ZJ)V

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    new-instance v0, Lcom/tencent/bugly/legu/proguard/u;

    iget-object v1, p0, Lcom/tencent/bugly/legu/proguard/t;->c:Landroid/content/Context;

    const/4 v6, 0x0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/tencent/bugly/legu/proguard/u;-><init>(Landroid/content/Context;ILcom/tencent/bugly/legu/proguard/am;Ljava/lang/String;Lcom/tencent/bugly/legu/proguard/s;Z)V

    .line 263
    if-eqz p5, :cond_2

    .line 264
    invoke-direct {p0, v0, p6, p7}, Lcom/tencent/bugly/legu/proguard/t;->a(Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 266
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/v;->a()Lcom/tencent/bugly/legu/proguard/v;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/legu/proguard/v;->b(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final a(ILcom/tencent/bugly/legu/proguard/an;)V
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 721
    iget-boolean v0, p0, Lcom/tencent/bugly/legu/proguard/t;->q:Z

    if-nez v0, :cond_1

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    if-ne p1, v3, :cond_4

    .line 728
    const-string v0, "[UploadManager] Session ID is invalid, will clear security context (pid=%d | tid=%d)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 730
    invoke-virtual {p0, v2}, Lcom/tencent/bugly/legu/proguard/t;->a(Z)V

    .line 794
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/tencent/bugly/legu/proguard/t;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 796
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/legu/proguard/t;->o:Z

    if-eqz v0, :cond_3

    .line 798
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/legu/proguard/t;->o:Z

    .line 800
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t;->c:Landroid/content/Context;

    const-string v2, "security_info"

    invoke-static {v0, v2}, Lcom/tencent/bugly/legu/proguard/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 802
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 733
    :cond_4
    iget-boolean v0, p0, Lcom/tencent/bugly/legu/proguard/t;->o:Z

    if-eqz v0, :cond_0

    .line 737
    if-eqz p2, :cond_9

    .line 738
    const-string v0, "[UploadManager] record security context (pid=%d | tid=%d)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 742
    :try_start_1
    iget-object v3, p2, Lcom/tencent/bugly/legu/proguard/an;->h:Ljava/util/Map;

    .line 743
    if-eqz v3, :cond_8

    const-string v0, "S1"

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "S2"

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 746
    iget-wide v4, p2, Lcom/tencent/bugly/legu/proguard/an;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/tencent/bugly/legu/proguard/t;->i:J

    .line 747
    const-string v0, "[UploadManager] time lag of server is: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/tencent/bugly/legu/proguard/t;->i:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 748
    const-string v0, "S1"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/t;->l:Ljava/lang/String;

    .line 749
    const-string v0, "[UploadManager] session ID from server is: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/tencent/bugly/legu/proguard/t;->l:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 750
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-lez v0, :cond_7

    .line 752
    :try_start_2
    const-string v0, "S2"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/legu/proguard/t;->m:J

    .line 754
    const-string v0, "[UploadManager] session expired time from server is: %d(%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/tencent/bugly/legu/proguard/t;->m:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/util/Date;

    iget-wide v6, p0, Lcom/tencent/bugly/legu/proguard/t;->m:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 757
    iget-wide v3, p0, Lcom/tencent/bugly/legu/proguard/t;->m:J

    const-wide/16 v5, 0x3e8

    cmp-long v0, v3, v5

    if-gez v0, :cond_5

    .line 758
    const-string v0, "[UploadManager] session expired time from server is less than 1 second, will set to default value"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 759
    const-wide/32 v3, 0xf731400

    iput-wide v3, p0, Lcom/tencent/bugly/legu/proguard/t;->m:J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 765
    :cond_5
    :goto_2
    const/4 v0, 0x0

    :try_start_3
    invoke-direct {p0, v0}, Lcom/tencent/bugly/legu/proguard/t;->b(I)Z

    .line 767
    invoke-direct {p0}, Lcom/tencent/bugly/legu/proguard/t;->e()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 782
    :goto_3
    if-eqz v0, :cond_2

    .line 784
    invoke-virtual {p0, v1}, Lcom/tencent/bugly/legu/proguard/t;->a(Z)V

    goto/16 :goto_1

    .line 762
    :catch_0
    move-exception v0

    :try_start_4
    const-string v0, "[UploadManager] session expired time is invalid, will set to default value"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 763
    const-wide/32 v3, 0xf731400

    iput-wide v3, p0, Lcom/tencent/bugly/legu/proguard/t;->m:J
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 778
    :catch_1
    move-exception v0

    .line 780
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move v0, v2

    goto :goto_3

    .line 771
    :cond_6
    :try_start_5
    const-string v0, "[UploadManager] failed to record database"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_3

    .line 775
    :cond_7
    const-string v0, "[UploadManager] session ID from server is invalid, try next time"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :cond_8
    move v0, v2

    .line 781
    goto :goto_3

    .line 787
    :cond_9
    const-string v0, "[UploadManager] fail to init security context and clear local info (pid=%d | tid=%d)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 791
    invoke-virtual {p0, v1}, Lcom/tencent/bugly/legu/proguard/t;->a(Z)V

    goto/16 :goto_1
.end method

.method protected final declared-synchronized a(J)V
    .locals 4

    .prologue
    .line 321
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/tencent/bugly/legu/proguard/q;

    invoke-direct {v0}, Lcom/tencent/bugly/legu/proguard/q;-><init>()V

    .line 322
    const/4 v1, 0x3

    iput v1, v0, Lcom/tencent/bugly/legu/proguard/q;->b:I

    .line 323
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/a;->o()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/legu/proguard/q;->e:J

    .line 324
    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/bugly/legu/proguard/q;->c:Ljava/lang/String;

    .line 325
    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/bugly/legu/proguard/q;->d:Ljava/lang/String;

    .line 326
    invoke-static {p1, p2}, Lcom/tencent/bugly/legu/proguard/a;->a(J)[B

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/legu/proguard/q;->g:[B

    .line 327
    iget-object v1, p0, Lcom/tencent/bugly/legu/proguard/t;->b:Lcom/tencent/bugly/legu/proguard/o;

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/o;->b(I)V

    .line 328
    iget-object v1, p0, Lcom/tencent/bugly/legu/proguard/t;->b:Lcom/tencent/bugly/legu/proguard/o;

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/legu/proguard/o;->a(Lcom/tencent/bugly/legu/proguard/q;)Z

    .line 329
    const-string v0, "consume update %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    monitor-exit p0

    return-void

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final a(Z)V
    .locals 5

    .prologue
    .line 531
    iget-object v1, p0, Lcom/tencent/bugly/legu/proguard/t;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 532
    :try_start_0
    const-string v0, "[UploadManager] clear security context (pid=%d | tid=%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 534
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/t;->j:[B

    .line 535
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/t;->l:Ljava/lang/String;

    .line 536
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/bugly/legu/proguard/t;->m:J

    .line 537
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    if-eqz p1, :cond_0

    .line 540
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/t;->d()Z

    .line 542
    :cond_0
    return-void

    .line 537
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 956
    if-nez p1, :cond_0

    .line 992
    :goto_0
    return v0

    .line 959
    :cond_0
    const-string v2, "[UploadManager] integrate security to HTTP headers (pid=%d | tid=%d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 962
    iget-object v2, p0, Lcom/tencent/bugly/legu/proguard/t;->l:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 964
    const-string v0, "secureSessionId"

    iget-object v2, p0, Lcom/tencent/bugly/legu/proguard/t;->l:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 965
    goto :goto_0

    .line 967
    :cond_1
    iget-object v2, p0, Lcom/tencent/bugly/legu/proguard/t;->j:[B

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/bugly/legu/proguard/t;->j:[B

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x3

    const/16 v3, 0x80

    if-eq v2, v3, :cond_3

    .line 968
    :cond_2
    const-string v1, "[UploadManager] AES key is invalid"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 971
    :cond_3
    iget-object v2, p0, Lcom/tencent/bugly/legu/proguard/t;->h:[B

    if-nez v2, :cond_4

    .line 973
    iget-object v2, p0, Lcom/tencent/bugly/legu/proguard/t;->g:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/legu/proguard/t;->h:[B

    .line 974
    iget-object v2, p0, Lcom/tencent/bugly/legu/proguard/t;->h:[B

    if-nez v2, :cond_4

    .line 975
    const-string v1, "[UploadManager] failed to decode RSA public key"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 980
    :cond_4
    iget-object v2, p0, Lcom/tencent/bugly/legu/proguard/t;->j:[B

    iget-object v3, p0, Lcom/tencent/bugly/legu/proguard/t;->h:[B

    invoke-static {v1, v2, v3}, Lcom/tencent/bugly/legu/proguard/a;->b(I[B[B)[B

    move-result-object v2

    .line 981
    if-nez v2, :cond_5

    .line 982
    const-string v1, "[UploadManager] failed to encrypt AES key"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 986
    :cond_5
    invoke-static {v2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 987
    if-nez v2, :cond_6

    .line 988
    const-string v1, "[UploadManager] failed to encode AES key"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 991
    :cond_6
    const-string v0, "raKey"

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 992
    goto :goto_0
.end method

.method public final a([B)[B
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 930
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t;->j:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t;->j:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x3

    const/16 v1, 0x80

    if-eq v0, v1, :cond_1

    .line 931
    :cond_0
    const-string v0, "[UploadManager] AES key is invalid (pid=%d | tid=%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 933
    const/4 v0, 0x0

    .line 936
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t;->j:[B

    invoke-static {v4, p1, v0}, Lcom/tencent/bugly/legu/proguard/a;->a(I[B[B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public final b()J
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 280
    const-wide/16 v1, 0x0

    .line 281
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/a;->o()J

    move-result-wide v3

    .line 282
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t;->b:Lcom/tencent/bugly/legu/proguard/o;

    invoke-virtual {v0, v10}, Lcom/tencent/bugly/legu/proguard/o;->a(I)Ljava/util/List;

    move-result-object v5

    .line 284
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 286
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/legu/proguard/q;

    .line 287
    iget-wide v6, v0, Lcom/tencent/bugly/legu/proguard/q;->e:J

    cmp-long v3, v6, v3

    if-ltz v3, :cond_0

    .line 288
    iget-object v3, v0, Lcom/tencent/bugly/legu/proguard/q;->g:[B

    invoke-static {v3}, Lcom/tencent/bugly/legu/proguard/a;->c([B)J

    move-result-wide v1

    .line 289
    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-wide v0, v1

    .line 294
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 295
    iget-object v2, p0, Lcom/tencent/bugly/legu/proguard/t;->b:Lcom/tencent/bugly/legu/proguard/o;

    invoke-static {v5}, Lcom/tencent/bugly/legu/proguard/o;->a(Ljava/util/List;)V

    .line 298
    :cond_1
    :goto_1
    const-string v2, "consume getted %d"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 299
    return-wide v0

    .line 291
    :catch_0
    move-exception v0

    move-wide v0, v1

    .line 292
    const-string v2, "error local type %d"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-wide v0, v1

    goto :goto_1
.end method

.method public final b([B)[B
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 940
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t;->j:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t;->j:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x3

    const/16 v1, 0x80

    if-eq v0, v1, :cond_1

    .line 941
    :cond_0
    const-string v0, "[UploadManager] AES key is invalid (pid=%d | tid=%d)"

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 943
    const/4 v0, 0x0

    .line 946
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t;->j:[B

    invoke-static {v2, p1, v0}, Lcom/tencent/bugly/legu/proguard/a;->a(I[B[B)[B

    move-result-object v0

    goto :goto_0
.end method

.method protected final c()Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 510
    iget-object v2, p0, Lcom/tencent/bugly/legu/proguard/t;->l:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/tencent/bugly/legu/proguard/t;->m:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 521
    :cond_0
    :goto_0
    return v0

    .line 513
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tencent/bugly/legu/proguard/t;->i:J

    add-long/2addr v2, v4

    .line 514
    iget-wide v4, p0, Lcom/tencent/bugly/legu/proguard/t;->m:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_2

    .line 515
    const-string v4, "[UploadManager] session ID expired time from server is: %d(%s), but now is: %d(%s)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/tencent/bugly/legu/proguard/t;->m:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v0

    new-instance v6, Ljava/util/Date;

    iget-wide v7, p0, Lcom/tencent/bugly/legu/proguard/t;->m:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x3

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move v0, v1

    .line 521
    goto :goto_0
.end method
