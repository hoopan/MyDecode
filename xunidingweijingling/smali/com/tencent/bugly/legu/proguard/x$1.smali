.class final Lcom/tencent/bugly/legu/proguard/x$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/legu/proguard/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/tencent/bugly/legu/proguard/x$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 153
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/x;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 156
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/x;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-static {}, Lcom/tencent/bugly/legu/proguard/x;->c()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-gt v0, v2, :cond_0

    .line 157
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :goto_0
    return-void

    .line 159
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/x;->d()Lcom/tencent/bugly/legu/proguard/x$a;

    move-result-object v0

    if-nez v0, :cond_2

    .line 161
    new-instance v0, Lcom/tencent/bugly/legu/proguard/x$a;

    invoke-static {}, Lcom/tencent/bugly/legu/proguard/x;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tencent/bugly/legu/proguard/x$a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/x;->a(Lcom/tencent/bugly/legu/proguard/x$a;)Lcom/tencent/bugly/legu/proguard/x$a;

    .line 166
    :cond_1
    :goto_1
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/x;->d()Lcom/tencent/bugly/legu/proguard/x$a;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/x$a;->d(Lcom/tencent/bugly/legu/proguard/x$a;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/x;->d()Lcom/tencent/bugly/legu/proguard/x$a;

    move-result-object v0

    invoke-static {}, Lcom/tencent/bugly/legu/proguard/x;->b()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/legu/proguard/x$a;->a(Ljava/lang/String;)Z

    .line 169
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/x;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 162
    :cond_2
    :try_start_4
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/x;->d()Lcom/tencent/bugly/legu/proguard/x$a;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/x$a;->a(Lcom/tencent/bugly/legu/proguard/x$a;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {}, Lcom/tencent/bugly/legu/proguard/x;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-static {}, Lcom/tencent/bugly/legu/proguard/x;->d()Lcom/tencent/bugly/legu/proguard/x$a;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/x$a;->b(Lcom/tencent/bugly/legu/proguard/x$a;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 164
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/x;->d()Lcom/tencent/bugly/legu/proguard/x$a;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/x$a;->c(Lcom/tencent/bugly/legu/proguard/x$a;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    .line 172
    :cond_3
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/x;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 173
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/x;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/bugly/legu/proguard/x$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method
