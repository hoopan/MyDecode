.class final Lcom/tencent/bugly/lejiagu/proguard/r$a;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/lejiagu/proguard/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/Runnable;

.field private final c:J

.field private synthetic d:Lcom/tencent/bugly/lejiagu/proguard/r;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/lejiagu/proguard/r;Landroid/content/Context;)V
    .registers 9

    .prologue
    .line 820
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/proguard/r$a;-><init>(Lcom/tencent/bugly/lejiagu/proguard/r;Landroid/content/Context;Ljava/lang/Runnable;J)V

    .line 821
    return-void
.end method

.method public constructor <init>(Lcom/tencent/bugly/lejiagu/proguard/r;Landroid/content/Context;Ljava/lang/Runnable;J)V
    .registers 6

    .prologue
    .line 823
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/proguard/r$a;->d:Lcom/tencent/bugly/lejiagu/proguard/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 824
    iput-object p2, p0, Lcom/tencent/bugly/lejiagu/proguard/r$a;->a:Landroid/content/Context;

    .line 825
    iput-object p3, p0, Lcom/tencent/bugly/lejiagu/proguard/r$a;->b:Ljava/lang/Runnable;

    .line 826
    iput-wide p4, p0, Lcom/tencent/bugly/lejiagu/proguard/r$a;->c:J

    .line 827
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .prologue
    const/16 v7, 0x80

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 837
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/r$a;->a:Landroid/content/Context;

    const-string v1, "security_info"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/a;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_49

    .line 841
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/t;->a()Lcom/tencent/bugly/lejiagu/proguard/t;

    move-result-object v0

    .line 842
    if-nez v0, :cond_1f

    .line 843
    const-string v0, "[UploadManager] async task handler has not been initialized"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 925
    :cond_1e
    :goto_1e
    return-void

    .line 846
    :cond_1f
    const-string v1, "[UploadManager] sleep %d try to lock security file again"

    new-array v2, v5, [Ljava/lang/Object;

    const/16 v3, 0x1388

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 848
    const-wide/16 v1, 0x1388

    :try_start_30
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_33} :catch_44

    .line 849
    :goto_33
    new-instance v1, Lcom/tencent/bugly/lejiagu/proguard/r$a;

    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/proguard/r$a;->d:Lcom/tencent/bugly/lejiagu/proguard/r;

    iget-object v3, p0, Lcom/tencent/bugly/lejiagu/proguard/r$a;->d:Lcom/tencent/bugly/lejiagu/proguard/r;

    invoke-static {v3}, Lcom/tencent/bugly/lejiagu/proguard/r;->a(Lcom/tencent/bugly/lejiagu/proguard/r;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/r$a;-><init>(Lcom/tencent/bugly/lejiagu/proguard/r;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/t;->c(Ljava/lang/Runnable;)Z

    goto :goto_1e

    .line 848
    :catch_44
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_33

    .line 855
    :cond_49
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/r$a;->d:Lcom/tencent/bugly/lejiagu/proguard/r;

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/r;->b(Lcom/tencent/bugly/lejiagu/proguard/r;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 857
    const-string v0, "[UploadManager] failed to load security info from database"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 858
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/r$a;->d:Lcom/tencent/bugly/lejiagu/proguard/r;

    invoke-virtual {v0, v4}, Lcom/tencent/bugly/lejiagu/proguard/r;->a(Z)V

    .line 861
    :cond_5d
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/r$a;->d:Lcom/tencent/bugly/lejiagu/proguard/r;

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/r;->c(Lcom/tencent/bugly/lejiagu/proguard/r;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c0

    .line 863
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/r$a;->d:Lcom/tencent/bugly/lejiagu/proguard/r;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/proguard/r;->c()Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 865
    const-string v0, "[UploadManager] sucessfully got session ID, try to execute upload tasks now (pid=%d | tid=%d)"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 868
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/r$a;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_95

    .line 870
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/r$a;->d:Lcom/tencent/bugly/lejiagu/proguard/r;

    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/proguard/r$a;->b:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/tencent/bugly/lejiagu/proguard/r$a;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/r;->a(Lcom/tencent/bugly/lejiagu/proguard/r;Ljava/lang/Runnable;J)V

    .line 872
    :cond_95
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/r$a;->d:Lcom/tencent/bugly/lejiagu/proguard/r;

    invoke-static {v0, v4}, Lcom/tencent/bugly/lejiagu/proguard/r;->a(Lcom/tencent/bugly/lejiagu/proguard/r;I)Z

    .line 874
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/r$a;->a:Landroid/content/Context;

    const-string v1, "security_info"

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 875
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/r$a;->d:Lcom/tencent/bugly/lejiagu/proguard/r;

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/r;->d(Lcom/tencent/bugly/lejiagu/proguard/r;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 877
    :try_start_a8
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/r$a;->d:Lcom/tencent/bugly/lejiagu/proguard/r;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/r;->a(Lcom/tencent/bugly/lejiagu/proguard/r;Z)Z

    .line 878
    monitor-exit v1
    :try_end_af
    .catchall {:try_start_a8 .. :try_end_af} :catchall_b1

    goto/16 :goto_1e

    :catchall_b1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 880
    :cond_b4
    const-string v0, "[UploadManager] session ID is expired, drop it"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 885
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/r$a;->d:Lcom/tencent/bugly/lejiagu/proguard/r;

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/lejiagu/proguard/r;->a(Z)V

    .line 889
    :cond_c0
    invoke-static {v7}, Lcom/tencent/bugly/lejiagu/proguard/a;->a(I)[B

    move-result-object v0

    .line 890
    if-eqz v0, :cond_13c

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x3

    if-ne v1, v7, :cond_13c

    .line 891
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/proguard/r$a;->d:Lcom/tencent/bugly/lejiagu/proguard/r;

    invoke-static {v1, v0}, Lcom/tencent/bugly/lejiagu/proguard/r;->a(Lcom/tencent/bugly/lejiagu/proguard/r;[B)[B

    .line 893
    const-string v0, "[UploadManager] execute one upload task for requesting session ID (pid=%d | tid=%d)"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 896
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/r$a;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_fa

    .line 898
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/r$a;->d:Lcom/tencent/bugly/lejiagu/proguard/r;

    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/proguard/r$a;->b:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/tencent/bugly/lejiagu/proguard/r$a;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/r;->a(Lcom/tencent/bugly/lejiagu/proguard/r;Ljava/lang/Runnable;J)V

    goto/16 :goto_1e

    .line 903
    :cond_fa
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/r$a;->d:Lcom/tencent/bugly/lejiagu/proguard/r;

    invoke-static {v0, v5}, Lcom/tencent/bugly/lejiagu/proguard/r;->a(Lcom/tencent/bugly/lejiagu/proguard/r;I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 908
    const-string v0, "[UploadManager] failed to execute one upload task (pid=%d | tid=%d)"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 919
    :goto_11d
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/r$a;->d:Lcom/tencent/bugly/lejiagu/proguard/r;

    invoke-virtual {v0, v4}, Lcom/tencent/bugly/lejiagu/proguard/r;->a(Z)V

    .line 921
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/r$a;->a:Landroid/content/Context;

    const-string v1, "security_info"

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 922
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/r$a;->d:Lcom/tencent/bugly/lejiagu/proguard/r;

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/r;->d(Lcom/tencent/bugly/lejiagu/proguard/r;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 924
    :try_start_130
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/r$a;->d:Lcom/tencent/bugly/lejiagu/proguard/r;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/r;->a(Lcom/tencent/bugly/lejiagu/proguard/r;Z)Z

    .line 925
    monitor-exit v1
    :try_end_137
    .catchall {:try_start_130 .. :try_end_137} :catchall_139

    goto/16 :goto_1e

    :catchall_139
    move-exception v0

    monitor-exit v1

    throw v0

    .line 915
    :cond_13c
    const-string v0, "[UploadManager] failed to create AES key (pid=%d | tid=%d)"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_11d
.end method
