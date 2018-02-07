.class final Lcom/tencent/bugly/legu/proguard/t$a;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/legu/proguard/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/Runnable;

.field private final c:J

.field private synthetic d:Lcom/tencent/bugly/legu/proguard/t;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/legu/proguard/t;Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 820
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/legu/proguard/t$a;-><init>(Lcom/tencent/bugly/legu/proguard/t;Landroid/content/Context;Ljava/lang/Runnable;J)V

    .line 821
    return-void
.end method

.method public constructor <init>(Lcom/tencent/bugly/legu/proguard/t;Landroid/content/Context;Ljava/lang/Runnable;J)V
    .locals 0

    .prologue
    .line 823
    iput-object p1, p0, Lcom/tencent/bugly/legu/proguard/t$a;->d:Lcom/tencent/bugly/legu/proguard/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 824
    iput-object p2, p0, Lcom/tencent/bugly/legu/proguard/t$a;->a:Landroid/content/Context;

    .line 825
    iput-object p3, p0, Lcom/tencent/bugly/legu/proguard/t$a;->b:Ljava/lang/Runnable;

    .line 826
    iput-wide p4, p0, Lcom/tencent/bugly/legu/proguard/t$a;->c:J

    .line 827
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/16 v7, 0x80

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 837
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t$a;->a:Landroid/content/Context;

    const-string v1, "security_info"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/bugly/legu/proguard/a;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 841
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/v;->a()Lcom/tencent/bugly/legu/proguard/v;

    move-result-object v0

    .line 842
    if-nez v0, :cond_1

    .line 843
    const-string v0, "[UploadManager] async task handler has not been initialized"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 925
    :cond_0
    :goto_0
    return-void

    .line 846
    :cond_1
    const-string v1, "[UploadManager] sleep %d try to lock security file again"

    new-array v2, v5, [Ljava/lang/Object;

    const/16 v3, 0x1388

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 848
    const-wide/16 v1, 0x1388

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    :goto_1
    new-instance v1, Lcom/tencent/bugly/legu/proguard/t$a;

    iget-object v2, p0, Lcom/tencent/bugly/legu/proguard/t$a;->d:Lcom/tencent/bugly/legu/proguard/t;

    iget-object v3, p0, Lcom/tencent/bugly/legu/proguard/t$a;->d:Lcom/tencent/bugly/legu/proguard/t;

    invoke-static {v3}, Lcom/tencent/bugly/legu/proguard/t;->a(Lcom/tencent/bugly/legu/proguard/t;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/tencent/bugly/legu/proguard/t$a;-><init>(Lcom/tencent/bugly/legu/proguard/t;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/legu/proguard/v;->c(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 848
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 855
    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t$a;->d:Lcom/tencent/bugly/legu/proguard/t;

    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/t;->b(Lcom/tencent/bugly/legu/proguard/t;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 857
    const-string v0, "[UploadManager] failed to load security info from database"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 858
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t$a;->d:Lcom/tencent/bugly/legu/proguard/t;

    invoke-virtual {v0, v4}, Lcom/tencent/bugly/legu/proguard/t;->a(Z)V

    .line 861
    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t$a;->d:Lcom/tencent/bugly/legu/proguard/t;

    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/t;->c(Lcom/tencent/bugly/legu/proguard/t;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 863
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t$a;->d:Lcom/tencent/bugly/legu/proguard/t;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/proguard/t;->c()Z

    move-result v0

    if-eqz v0, :cond_5

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

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 868
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t$a;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 870
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t$a;->d:Lcom/tencent/bugly/legu/proguard/t;

    iget-object v1, p0, Lcom/tencent/bugly/legu/proguard/t$a;->b:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/tencent/bugly/legu/proguard/t$a;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/bugly/legu/proguard/t;->a(Lcom/tencent/bugly/legu/proguard/t;Ljava/lang/Runnable;J)V

    .line 872
    :cond_4
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t$a;->d:Lcom/tencent/bugly/legu/proguard/t;

    invoke-static {v0, v4}, Lcom/tencent/bugly/legu/proguard/t;->a(Lcom/tencent/bugly/legu/proguard/t;I)Z

    .line 874
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t$a;->a:Landroid/content/Context;

    const-string v1, "security_info"

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 875
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t$a;->d:Lcom/tencent/bugly/legu/proguard/t;

    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/t;->d(Lcom/tencent/bugly/legu/proguard/t;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 877
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t$a;->d:Lcom/tencent/bugly/legu/proguard/t;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/tencent/bugly/legu/proguard/t;->a(Lcom/tencent/bugly/legu/proguard/t;Z)Z

    .line 878
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 880
    :cond_5
    const-string v0, "[UploadManager] session ID is expired, drop it"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 885
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t$a;->d:Lcom/tencent/bugly/legu/proguard/t;

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/legu/proguard/t;->a(Z)V

    .line 889
    :cond_6
    invoke-static {v7}, Lcom/tencent/bugly/legu/proguard/a;->a(I)[B

    move-result-object v0

    .line 890
    if-eqz v0, :cond_8

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x3

    if-ne v1, v7, :cond_8

    .line 891
    iget-object v1, p0, Lcom/tencent/bugly/legu/proguard/t$a;->d:Lcom/tencent/bugly/legu/proguard/t;

    invoke-static {v1, v0}, Lcom/tencent/bugly/legu/proguard/t;->a(Lcom/tencent/bugly/legu/proguard/t;[B)[B

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

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 896
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t$a;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 898
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t$a;->d:Lcom/tencent/bugly/legu/proguard/t;

    iget-object v1, p0, Lcom/tencent/bugly/legu/proguard/t$a;->b:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/tencent/bugly/legu/proguard/t$a;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/bugly/legu/proguard/t;->a(Lcom/tencent/bugly/legu/proguard/t;Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 903
    :cond_7
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t$a;->d:Lcom/tencent/bugly/legu/proguard/t;

    invoke-static {v0, v5}, Lcom/tencent/bugly/legu/proguard/t;->a(Lcom/tencent/bugly/legu/proguard/t;I)Z

    move-result v0

    if-nez v0, :cond_0

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

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 919
    :goto_2
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t$a;->d:Lcom/tencent/bugly/legu/proguard/t;

    invoke-virtual {v0, v4}, Lcom/tencent/bugly/legu/proguard/t;->a(Z)V

    .line 921
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t$a;->a:Landroid/content/Context;

    const-string v1, "security_info"

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 922
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t$a;->d:Lcom/tencent/bugly/legu/proguard/t;

    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/t;->d(Lcom/tencent/bugly/legu/proguard/t;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 924
    :try_start_2
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/t$a;->d:Lcom/tencent/bugly/legu/proguard/t;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/tencent/bugly/legu/proguard/t;->a(Lcom/tencent/bugly/legu/proguard/t;Z)Z

    .line 925
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 915
    :cond_8
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

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_2
.end method
