.class final Lcom/tencent/bugly/lejiagu/proguard/v$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/lejiagu/proguard/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 150
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/proguard/v$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    .line 153
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/v;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 156
    :try_start_5
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/v;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/v;->c()I
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_10} :catch_77
    .catchall {:try_start_5 .. :try_end_10} :catchall_4a

    move-result v2

    if-gt v0, v2, :cond_15

    .line 157
    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_4a

    .line 178
    :goto_14
    return-void

    .line 159
    :cond_15
    :try_start_15
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/v;->d()Lcom/tencent/bugly/lejiagu/proguard/v$a;

    move-result-object v0

    if-nez v0, :cond_4d

    .line 161
    new-instance v0, Lcom/tencent/bugly/lejiagu/proguard/v$a;

    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/v;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/v$a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/v;->a(Lcom/tencent/bugly/lejiagu/proguard/v$a;)Lcom/tencent/bugly/lejiagu/proguard/v$a;

    .line 166
    :cond_27
    :goto_27
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/v;->d()Lcom/tencent/bugly/lejiagu/proguard/v$a;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/v$a;->d(Lcom/tencent/bugly/lejiagu/proguard/v$a;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 168
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/v;->d()Lcom/tencent/bugly/lejiagu/proguard/v$a;

    move-result-object v0

    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/v;->b()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/v$a;->a(Ljava/lang/String;)Z

    .line 169
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/v;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_48} :catch_77
    .catchall {:try_start_15 .. :try_end_48} :catchall_4a

    .line 178
    :goto_48
    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_4a

    goto :goto_14

    :catchall_4a
    move-exception v0

    monitor-exit v1

    throw v0

    .line 162
    :cond_4d
    :try_start_4d
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/v;->d()Lcom/tencent/bugly/lejiagu/proguard/v$a;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/v$a;->a(Lcom/tencent/bugly/lejiagu/proguard/v$a;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/v;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/v;->d()Lcom/tencent/bugly/lejiagu/proguard/v$a;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/v$a;->b(Lcom/tencent/bugly/lejiagu/proguard/v$a;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_27

    .line 164
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/v;->d()Lcom/tencent/bugly/lejiagu/proguard/v$a;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/v$a;->c(Lcom/tencent/bugly/lejiagu/proguard/v$a;)Z

    goto :goto_27

    :catch_77
    move-exception v0

    goto :goto_48

    .line 172
    :cond_79
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/v;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 173
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/v;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/proguard/v$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_8a} :catch_77
    .catchall {:try_start_4d .. :try_end_8a} :catchall_4a

    goto :goto_48
.end method
