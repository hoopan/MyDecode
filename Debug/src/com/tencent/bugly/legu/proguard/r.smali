.class public final Lcom/tencent/bugly/legu/proguard/r;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static b:Lcom/tencent/bugly/legu/proguard/r;


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
    .registers 3

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/r;->a:Ljava/util/Map;

    .line 48
    iput-object p1, p0, Lcom/tencent/bugly/legu/proguard/r;->c:Landroid/content/Context;

    .line 49
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/bugly/legu/proguard/r;
    .registers 2

    .prologue
    .line 52
    sget-object v0, Lcom/tencent/bugly/legu/proguard/r;->b:Lcom/tencent/bugly/legu/proguard/r;

    if-nez v0, :cond_b

    .line 53
    new-instance v0, Lcom/tencent/bugly/legu/proguard/r;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/legu/proguard/r;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/bugly/legu/proguard/r;->b:Lcom/tencent/bugly/legu/proguard/r;

    .line 55
    :cond_b
    sget-object v0, Lcom/tencent/bugly/legu/proguard/r;->b:Lcom/tencent/bugly/legu/proguard/r;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 6

    .prologue
    .line 268
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 271
    if-eqz p0, :cond_57

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "wap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 272
    const-string v1, "http.proxyHost"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 273
    const-string v2, "http.proxyPort"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 274
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v3, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 276
    new-instance v1, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v1, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 277
    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 281
    :goto_37
    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 282
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 283
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 284
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 285
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 286
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 288
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 296
    :goto_56
    return-object v0

    .line 279
    :cond_57
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5d} :catch_5e

    goto :goto_37

    .line 291
    :catch_5e
    move-exception v0

    .line 292
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 293
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 296
    :cond_68
    const/4 v0, 0x0

    goto :goto_56
.end method

.method private a(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .registers 12
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

    .line 217
    if-nez p1, :cond_d

    .line 218
    const-string v0, "destUrl is null."

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v2

    .line 258
    :goto_c
    return-object v0

    .line 222
    :cond_d
    invoke-static {p3, p1}, Lcom/tencent/bugly/legu/proguard/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 223
    if-nez v3, :cond_1c

    .line 224
    const-string v0, "Failed to get HttpURLConnection object."

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v2

    .line 225
    goto :goto_c

    .line 230
    :cond_1c
    :try_start_1c
    const-string v0, "wup_version"

    const-string v1, "3.0"

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    if-eqz p4, :cond_68

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_68

    .line 232
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 234
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
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_54} :catch_55

    goto :goto_33

    .line 252
    :catch_55
    move-exception v0

    .line 253
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 254
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 256
    :cond_5f
    const-string v0, "Failed to upload crash, please check your network."

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v2

    .line 258
    goto :goto_c

    .line 238
    :cond_68
    :try_start_68
    const-string v0, "A37"

    const-string v1, "utf-8"

    invoke-static {p3, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v0, "A38"

    iget-object v1, p0, Lcom/tencent/bugly/legu/proguard/r;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "utf-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 245
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 246
    if-nez p2, :cond_94

    .line 247
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    :goto_91
    move-object v0, v3

    .line 251
    goto/16 :goto_c

    .line 249
    :cond_94
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_97} :catch_55

    goto :goto_91
.end method

.method private static a(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    .registers 7
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
    .line 160
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 161
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    .line 162
    if-eqz v3, :cond_11

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_13

    .line 163
    :cond_11
    const/4 v0, 0x0

    .line 173
    :goto_12
    return-object v0

    .line 165
    :cond_13
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1b
    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 168
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1b

    .line 170
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :cond_3c
    move-object v0, v2

    .line 173
    goto :goto_12
.end method

.method private static b(Ljava/net/HttpURLConnection;)[B
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 181
    if-nez p0, :cond_4

    .line 207
    :cond_3
    :goto_3
    return-object v0

    .line 186
    :cond_4
    :try_start_4
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_56
    .catchall {:try_start_4 .. :try_end_d} :catchall_46

    .line 187
    :try_start_d
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 188
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 190
    :goto_16
    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_36

    .line 191
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_20} :catch_21
    .catchall {:try_start_d .. :try_end_20} :catchall_54

    goto :goto_16

    .line 195
    :catch_21
    move-exception v1

    .line 196
    :goto_22
    :try_start_22
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 197
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_54

    .line 200
    :cond_2b
    if-eqz v2, :cond_3

    .line 201
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_3

    .line 203
    :catch_31
    move-exception v1

    .line 204
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 193
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 194
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_3c} :catch_21
    .catchall {:try_start_36 .. :try_end_3c} :catchall_54

    move-result-object v0

    .line 200
    :try_start_3d
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_3

    .line 203
    :catch_41
    move-exception v1

    .line 204
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 199
    :catchall_46
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 200
    :goto_49
    if-eqz v2, :cond_4e

    .line 201
    :try_start_4b
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4e} :catch_4f

    .line 205
    :cond_4e
    :goto_4e
    throw v0

    .line 203
    :catch_4f
    move-exception v1

    .line 204
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4e

    .line 199
    :catchall_54
    move-exception v0

    goto :goto_49

    .line 195
    :catch_56
    move-exception v1

    move-object v2, v0

    goto :goto_22
.end method


# virtual methods
.method public final a(Ljava/lang/String;[BLcom/tencent/bugly/legu/proguard/u;Ljava/util/Map;)[B
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/tencent/bugly/legu/proguard/u;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 68
    if-nez p1, :cond_c

    .line 69
    const-string v2, "rqdp{  no destUrl!}"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 70
    const/4 v2, 0x0

    .line 151
    :goto_b
    return-object v2

    .line 72
    :cond_c
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 73
    if-nez p2, :cond_5b

    const-wide/16 v2, 0x0

    .line 75
    :goto_12
    const-string v4, "req %s sz:%d (pid=%d | tid=%d)"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 79
    const/4 v4, 0x0

    move v8, v6

    move-object/from16 v7, p1

    .line 80
    :goto_3e
    add-int/lit8 v6, v8, 0x1

    const/4 v9, 0x3

    if-ge v8, v9, :cond_18e

    const/4 v8, 0x2

    if-ge v5, v8, :cond_18e

    .line 82
    if-eqz v4, :cond_60

    .line 83
    const/4 v4, 0x0

    .line 90
    :cond_49
    :goto_49
    iget-object v8, p0, Lcom/tencent/bugly/legu/proguard/r;->c:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/bugly/legu/proguard/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 91
    if-nez v8, :cond_7e

    .line 92
    const-string v8, "req but network not avail,so drop!"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v8, v6

    .line 93
    goto :goto_3e

    .line 73
    :cond_5b
    move-object/from16 v0, p2

    array-length v2, v0

    int-to-long v2, v2

    goto :goto_12

    .line 84
    :cond_60
    const/4 v8, 0x1

    if-le v6, v8, :cond_49

    .line 85
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "try time "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 87
    const-wide/16 v8, 0x2710

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_49

    .line 96
    :cond_7e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/bugly/legu/proguard/u;->a(J)V

    .line 98
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-direct {p0, v7, v0, v8, v1}, Lcom/tencent/bugly/legu/proguard/r;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v11

    .line 100
    if-eqz v11, :cond_17e

    .line 102
    :try_start_8d
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .line 103
    const/16 v8, 0xc8

    if-ne v10, v8, :cond_bc

    .line 105
    invoke-static {v11}, Lcom/tencent/bugly/legu/proguard/r;->a(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v8

    iput-object v8, p0, Lcom/tencent/bugly/legu/proguard/r;->a:Ljava/util/Map;

    .line 107
    invoke-static {v11}, Lcom/tencent/bugly/legu/proguard/r;->b(Ljava/net/HttpURLConnection;)[B

    move-result-object v8

    .line 108
    if-nez v8, :cond_ae

    const-wide/16 v9, 0x0

    :goto_a3
    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Lcom/tencent/bugly/legu/proguard/u;->b(J)V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_a8} :catch_155
    .catchall {:try_start_8d .. :try_end_a8} :catchall_16e

    .line 137
    :try_start_a8
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_ab
    .catch Ljava/lang/Throwable; {:try_start_a8 .. :try_end_ab} :catch_b1

    :cond_ab
    :goto_ab
    move-object v2, v8

    .line 142
    goto/16 :goto_b

    .line 108
    :cond_ae
    :try_start_ae
    array-length v9, v8
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_af} :catch_155
    .catchall {:try_start_ae .. :try_end_af} :catchall_16e

    int-to-long v9, v9

    goto :goto_a3

    .line 138
    :catch_b1
    move-exception v2

    .line 139
    invoke-static {v2}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_ab

    .line 140
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_ab

    .line 110
    :cond_bc
    const/16 v8, 0x12d

    if-eq v10, v8, :cond_cc

    const/16 v8, 0x12e

    if-eq v10, v8, :cond_cc

    const/16 v8, 0x12f

    if-eq v10, v8, :cond_cc

    const/16 v8, 0x133

    if-ne v10, v8, :cond_f9

    :cond_cc
    const/4 v8, 0x1

    :goto_cd
    if-eqz v8, :cond_11d

    .line 111
    const/4 v8, 0x1

    .line 112
    :try_start_d0
    const-string v4, "Location"

    invoke-virtual {v11, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 113
    if-nez v9, :cond_106

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "rqdp{  redirect code:}"

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "rqdp{   Location is null! return}"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4, v9}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_f3} :catch_191
    .catchall {:try_start_d0 .. :try_end_f3} :catchall_16e

    .line 117
    :try_start_f3
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f6
    .catch Ljava/lang/Throwable; {:try_start_f3 .. :try_end_f6} :catch_fb

    .line 142
    :cond_f6
    :goto_f6
    const/4 v2, 0x0

    goto/16 :goto_b

    .line 110
    :cond_f9
    const/4 v8, 0x0

    goto :goto_cd

    .line 138
    :catch_fb
    move-exception v2

    .line 139
    invoke-static {v2}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_f6

    .line 140
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_f6

    .line 120
    :cond_106
    add-int/lit8 v5, v5, 0x1

    .line 121
    const/4 v6, 0x0

    .line 123
    :try_start_109
    const-string v4, "redirect code: %d ,to:%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v7, v12

    const/4 v12, 0x1

    aput-object v9, v7, v12

    invoke-static {v4, v7}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_11b
    .catch Ljava/io/IOException; {:try_start_109 .. :try_end_11b} :catch_196
    .catchall {:try_start_109 .. :try_end_11b} :catchall_16e

    move v4, v8

    move-object v7, v9

    .line 126
    :cond_11d
    :try_start_11d
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "response code "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    int-to-long v8, v8

    .line 129
    const-wide/16 v12, 0x0

    cmp-long v10, v8, v12

    if-gez v10, :cond_13f

    const-wide/16 v8, 0x0

    .line 130
    :cond_13f
    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v9}, Lcom/tencent/bugly/legu/proguard/u;->b(J)V
    :try_end_144
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_144} :catch_155
    .catchall {:try_start_11d .. :try_end_144} :catchall_16e

    .line 137
    :try_start_144
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_147
    .catch Ljava/lang/Throwable; {:try_start_144 .. :try_end_147} :catch_14a

    :cond_147
    :goto_147
    move v8, v6

    .line 149
    goto/16 :goto_3e

    .line 138
    :catch_14a
    move-exception v8

    .line 139
    invoke-static {v8}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v9

    if-nez v9, :cond_147

    .line 140
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_147

    .line 131
    :catch_155
    move-exception v8

    .line 132
    :goto_156
    :try_start_156
    invoke-static {v8}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v9

    if-nez v9, :cond_15f

    .line 133
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15f
    .catchall {:try_start_156 .. :try_end_15f} :catchall_16e

    .line 137
    :cond_15f
    :try_start_15f
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_162
    .catch Ljava/lang/Throwable; {:try_start_15f .. :try_end_162} :catch_163

    goto :goto_147

    .line 138
    :catch_163
    move-exception v8

    .line 139
    invoke-static {v8}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v9

    if-nez v9, :cond_147

    .line 140
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_147

    .line 136
    :catchall_16e
    move-exception v2

    .line 137
    :try_start_16f
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_172
    .catch Ljava/lang/Throwable; {:try_start_16f .. :try_end_172} :catch_173

    .line 142
    :cond_172
    :goto_172
    throw v2

    .line 138
    :catch_173
    move-exception v3

    .line 139
    invoke-static {v3}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_172

    .line 140
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_172

    .line 145
    :cond_17e
    const-string v8, "Failed to execute post."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 147
    const-wide/16 v8, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v9}, Lcom/tencent/bugly/legu/proguard/u;->b(J)V

    goto :goto_147

    .line 151
    :cond_18e
    const/4 v2, 0x0

    goto/16 :goto_b

    .line 131
    :catch_191
    move-exception v4

    move-object v14, v4

    move v4, v8

    move-object v8, v14

    goto :goto_156

    :catch_196
    move-exception v4

    move-object v7, v9

    move v14, v8

    move-object v8, v4

    move v4, v14

    goto :goto_156
.end method
