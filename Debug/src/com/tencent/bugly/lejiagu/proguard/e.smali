.class public final Lcom/tencent/bugly/lejiagu/proguard/e;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/tencent/bugly/lejiagu/proguard/e;->a:[C

    .line 17
    return-void

    .line 12
    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static a([B)Ljava/lang/String;
    .registers 7

    .prologue
    .line 53
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    .line 55
    :cond_5
    const/4 v0, 0x0

    .line 66
    :goto_6
    return-object v0

    .line 58
    :cond_7
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [C

    .line 59
    const/4 v0, 0x0

    :goto_d
    array-length v2, p0

    if-ge v0, v2, :cond_2e

    .line 61
    aget-byte v2, p0, v0

    .line 62
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/tencent/bugly/lejiagu/proguard/e;->a:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    .line 63
    ushr-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    .line 64
    mul-int/lit8 v3, v0, 0x2

    sget-object v4, Lcom/tencent/bugly/lejiagu/proguard/e;->a:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    aput-char v2, v1, v3

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 66
    :cond_2e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_6
.end method
