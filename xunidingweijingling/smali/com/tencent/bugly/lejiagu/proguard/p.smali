.class public final Lcom/tencent/bugly/lejiagu/proguard/p;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static b:Lcom/tencent/bugly/lejiagu/proguard/p;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/p;->a:Ljava/util/Map;

    .line 48
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/proguard/p;->c:Landroid/content/Context;

    .line 49
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/proguard/p;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/p;->b:Lcom/tencent/bugly/lejiagu/proguard/p;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/tencent/bugly/lejiagu/proguard/p;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/lejiagu/proguard/p;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/bugly/lejiagu/proguard/p;->b:Lcom/tencent/bugly/lejiagu/proguard/p;

    .line 55
    :cond_0
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/p;->b:Lcom/tencent/bugly/lejiagu/proguard/p;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 4

    .prologue
    .line 260
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 263
    if-eqz p0, :cond_0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "wap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    const-string v1, "http.proxyHost"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    const-string v2, "http.proxyPort"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 266
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v3, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 268
    new-instance v1, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v1, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 269
    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 273
    :goto_0
    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 274
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 275
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 276
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 277
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 278
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 280
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 288
    :goto_1
    return-object v0

    .line 271
    :cond_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 285
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 288
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 209
    if-nez p1, :cond_0

    .line 210
    const-string v0, "destUrl is null."

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v2

    .line 250
    :goto_0
    return-object v0

    .line 214
    :cond_0
    invoke-static {p3, p1}, Lcom/tencent/bugly/lejiagu/proguard/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 215
    if-nez v3, :cond_1

    .line 216
    const-string v0, "Failed to get HttpURLConnection object."

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v2

    .line 217
    goto :goto_0

    .line 222
    :cond_1
    :try_start_0
    const-string v0, "wup_version"

    const-string v1, "3.0"

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    if-eqz p4, :cond_3

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 224
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 226
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 244
    :catch_0
    move-exception v0

    .line 245
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 246
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 248
    :cond_2
    const-string v0, "Failed to upload crash, please check your network."

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v2

    .line 250
    goto :goto_0

    .line 230
    :cond_3
    :try_start_1
    const-string v0, "A37"

    const-string v1, "utf-8"

    invoke-static {p3, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v0, "A38"

    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/proguard/p;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/proguard/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "utf-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 237
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 238
    if-nez p2, :cond_4

    .line 239
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    :goto_2
    move-object v0, v3

    .line 243
    goto/16 :goto_0

    .line 241
    :cond_4
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private static a(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 153
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    .line 154
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 155
    :cond_0
    const/4 v0, 0x0

    .line 165
    :goto_0
    return-object v0

    .line 157
    :cond_1
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 160
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 162
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 165
    goto :goto_0
.end method

.method private static b(Ljava/net/HttpURLConnection;)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 173
    if-nez p0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-object v0

    .line 178
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 180
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 182
    :goto_1
    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_3

    .line 183
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 187
    :catch_0
    move-exception v1

    .line 188
    :goto_2
    :try_start_2
    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 189
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 192
    :cond_2
    if-eqz v2, :cond_0

    .line 193
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 195
    :catch_1
    move-exception v1

    .line 196
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 185
    :cond_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 186
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 192
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 195
    :catch_2
    move-exception v1

    .line 196
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 191
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 192
    :goto_3
    if-eqz v2, :cond_4

    .line 193
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 197
    :cond_4
    :goto_4
    throw v0

    .line 195
    :catch_3
    move-exception v1

    .line 196
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 191
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 187
    :catch_4
    move-exception v1

    move-object v2, v0

    goto :goto_2
.end method


# virtual methods
.method public final a(Ljava/lang/String;[BLcom/tencent/bugly/lejiagu/proguard/s;Ljava/util/Map;)[B
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/tencent/bugly/lejiagu/proguard/s;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 69
    const-string v2, "rqdp{  no destUrl!}"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 70
    const/4 v2, 0x0

    .line 143
    :goto_0
    return-object v2

    .line 72
    :cond_0
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 73
    if-nez p2, :cond_2

    const-wide/16 v2, 0x0

    .line 75
    :goto_1
    const-string v4, "req %s sz:%d (pid=%d | tid=%d)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v5, v8

    const/4 v8, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v4, v5}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 79
    const/4 v4, 0x0

    move v5, v7

    move-object/from16 v8, p1

    .line 80
    :goto_2
    add-int/lit8 v7, v5, 0x1

    const/4 v9, 0x3

    if-ge v5, v9, :cond_d

    const/4 v5, 0x2

    if-ge v6, v5, :cond_d

    .line 82
    if-eqz v4, :cond_3

    .line 83
    const/4 v4, 0x0

    .line 90
    :cond_1
    :goto_3
    iget-object v5, p0, Lcom/tencent/bugly/lejiagu/proguard/p;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/bugly/lejiagu/proguard/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 91
    if-nez v5, :cond_4

    .line 92
    const-string v5, "req but network not avail,so drop!"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v9}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v5, v7

    .line 93
    goto :goto_2

    .line 73
    :cond_2
    move-object/from16 v0, p2

    array-length v2, v0

    int-to-long v2, v2

    goto :goto_1

    .line 84
    :cond_3
    const/4 v5, 0x1

    if-le v7, v5, :cond_1

    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "try time "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v9}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 87
    const-wide/16 v9, 0x2710

    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_3

    .line 96
    :cond_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/s;->a(J)V

    .line 98
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-direct {p0, v8, v0, v5, v1}, Lcom/tencent/bugly/lejiagu/proguard/p;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v10

    .line 100
    if-eqz v10, :cond_c

    .line 102
    :try_start_0
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    .line 103
    const/16 v5, 0xc8

    if-ne v11, v5, :cond_6

    .line 105
    invoke-static {v10}, Lcom/tencent/bugly/lejiagu/proguard/p;->a(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/bugly/lejiagu/proguard/p;->a:Ljava/util/Map;

    .line 107
    invoke-static {v10}, Lcom/tencent/bugly/lejiagu/proguard/p;->b(Ljava/net/HttpURLConnection;)[B

    move-result-object v5

    .line 108
    if-nez v5, :cond_5

    const-wide/16 v9, 0x0

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Lcom/tencent/bugly/lejiagu/proguard/s;->b(J)V

    move-object v2, v5

    .line 109
    goto/16 :goto_0

    .line 108
    :cond_5
    array-length v9, v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v9, v9

    goto :goto_4

    .line 110
    :cond_6
    const/16 v5, 0x12d

    if-eq v11, v5, :cond_7

    const/16 v5, 0x12e

    if-eq v11, v5, :cond_7

    const/16 v5, 0x12f

    if-eq v11, v5, :cond_7

    const/16 v5, 0x133

    if-ne v11, v5, :cond_8

    :cond_7
    const/4 v5, 0x1

    :goto_5
    if-eqz v5, :cond_e

    .line 111
    const/4 v5, 0x1

    .line 112
    :try_start_1
    const-string v4, "Location"

    invoke-virtual {v10, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 113
    if-nez v9, :cond_9

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "rqdp{  redirect code:}"

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "rqdp{   Location is null! return}"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4, v9}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 110
    :cond_8
    const/4 v5, 0x0

    goto :goto_5

    .line 120
    :cond_9
    add-int/lit8 v6, v6, 0x1

    .line 121
    const/4 v7, 0x0

    .line 123
    :try_start_2
    const-string v4, "redirect code: %d ,to:%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v8, v12

    const/4 v12, 0x1

    aput-object v9, v8, v12

    invoke-static {v4, v8}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v8, v9

    .line 126
    :goto_6
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "response code "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4, v9}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    int-to-long v9, v4

    .line 129
    const-wide/16 v11, 0x0

    cmp-long v4, v9, v11

    if-gez v4, :cond_a

    const-wide/16 v9, 0x0

    .line 130
    :cond_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Lcom/tencent/bugly/lejiagu/proguard/s;->b(J)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move v4, v5

    move v5, v7

    .line 135
    goto/16 :goto_2

    .line 131
    :catch_0
    move-exception v5

    move-object v14, v5

    move v5, v4

    move-object v4, v14

    .line 132
    :goto_7
    invoke-static {v4}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 133
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    move v4, v5

    move v5, v7

    .line 135
    goto/16 :goto_2

    .line 137
    :cond_c
    const-string v5, "Failed to execute post."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v9}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 139
    const-wide/16 v9, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Lcom/tencent/bugly/lejiagu/proguard/s;->b(J)V

    move v5, v7

    .line 141
    goto/16 :goto_2

    .line 143
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 131
    :catch_1
    move-exception v4

    goto :goto_7

    :catch_2
    move-exception v4

    move-object v8, v9

    goto :goto_7

    :cond_e
    move v5, v4

    goto :goto_6
.end method
