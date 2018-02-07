.class public final Lcom/tencent/bugly/legu/proguard/x$a;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/legu/proguard/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/io/File;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    const-wide/16 v0, 0x7800

    iput-wide v0, p0, Lcom/tencent/bugly/legu/proguard/x$a;->e:J

    .line 236
    if-eqz p1, :cond_11

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 241
    :cond_11
    :goto_11
    return-void

    .line 239
    :cond_12
    iput-object p1, p0, Lcom/tencent/bugly/legu/proguard/x$a;->c:Ljava/lang/String;

    .line 240
    invoke-direct {p0}, Lcom/tencent/bugly/legu/proguard/x$a;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/bugly/legu/proguard/x$a;->a:Z

    goto :goto_11
.end method

.method static synthetic a(Lcom/tencent/bugly/legu/proguard/x$a;)Ljava/io/File;
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/x$a;->b:Ljava/io/File;

    return-object v0
.end method

.method private declared-synchronized a()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 245
    monitor-enter p0

    :try_start_2
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/bugly/legu/proguard/x$a;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/bugly/legu/proguard/x$a;->b:Ljava/io/File;

    .line 246
    iget-object v1, p0, Lcom/tencent/bugly/legu/proguard/x$a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 247
    iget-object v1, p0, Lcom/tencent/bugly/legu/proguard/x$a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    .line 248
    if-nez v1, :cond_20

    .line 249
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/bugly/legu/proguard/x$a;->a:Z
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1e} :catch_2c
    .catchall {:try_start_2 .. :try_end_1e} :catchall_32

    .line 264
    :goto_1e
    monitor-exit p0

    return v0

    .line 253
    :cond_20
    :try_start_20
    iget-object v1, p0, Lcom/tencent/bugly/legu/proguard/x$a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v1

    .line 254
    if-nez v1, :cond_30

    .line 255
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/bugly/legu/proguard/x$a;->a:Z
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_2b} :catch_2c
    .catchall {:try_start_20 .. :try_end_2b} :catchall_32

    goto :goto_1e

    .line 259
    :catch_2c
    move-exception v0

    const/4 v0, 0x0

    :try_start_2e
    iput-boolean v0, p0, Lcom/tencent/bugly/legu/proguard/x$a;->a:Z
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_32

    .line 264
    :cond_30
    const/4 v0, 0x1

    goto :goto_1e

    .line 245
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/tencent/bugly/legu/proguard/x$a;)J
    .registers 3

    .prologue
    .line 228
    iget-wide v0, p0, Lcom/tencent/bugly/legu/proguard/x$a;->e:J

    return-wide v0
.end method

.method static synthetic c(Lcom/tencent/bugly/legu/proguard/x$a;)Z
    .registers 2

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/tencent/bugly/legu/proguard/x$a;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/tencent/bugly/legu/proguard/x$a;)Z
    .registers 2

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/tencent/bugly/legu/proguard/x$a;->a:Z

    return v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 268
    monitor-enter p0

    :try_start_3
    iget-boolean v2, p0, Lcom/tencent/bugly/legu/proguard/x$a;->a:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2e

    if-nez v2, :cond_9

    .line 282
    :goto_7
    monitor-exit p0

    return v0

    .line 272
    :cond_9
    :try_start_9
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/tencent/bugly/legu/proguard/x$a;->b:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 273
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 274
    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 275
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 276
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 277
    iget-wide v4, p0, Lcom/tencent/bugly/legu/proguard/x$a;->d:J

    array-length v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/bugly/legu/proguard/x$a;->d:J
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_27} :catch_29
    .catchall {:try_start_9 .. :try_end_27} :catchall_2e

    move v0, v1

    .line 282
    goto :goto_7

    .line 279
    :catch_29
    move-exception v1

    const/4 v1, 0x0

    :try_start_2b
    iput-boolean v1, p0, Lcom/tencent/bugly/legu/proguard/x$a;->a:Z
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_2e

    goto :goto_7

    .line 268
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
