.class public final Lcom/tencent/bugly/lejiagu/proguard/k;
.super Ljava/lang/Object;
.source "BUGLY"


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/16 v5, 0x100

    .line 370
    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_20

    .line 373
    new-array v2, v5, [B

    .line 374
    new-array v3, v5, [B

    .line 376
    const/4 v0, 0x0

    :goto_e
    if-ge v0, v5, :cond_1f

    .line 377
    ushr-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    aput-byte v4, v2, v0

    .line 378
    and-int/lit8 v4, v0, 0xf

    aget-byte v4, v1, v4

    aput-byte v4, v3, v0

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 381
    :cond_1f
    return-void

    .line 370
    :array_20
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method public static a(II)Z
    .registers 3

    .prologue
    .line 36
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static a(JJ)Z
    .registers 5

    .prologue
    .line 40
    cmp-long v0, p0, p2

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static a(ZZ)Z
    .registers 3

    .prologue
    .line 20
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static a(Ljava/nio/ByteBuffer;)[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 359
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    new-array v0, v0, [B

    .line 360
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    return-object v0
.end method
