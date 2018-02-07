.class public final Lcom/tencent/bugly/lejiagu/proguard/y;
.super Ljava/lang/Object;
.source "BUGLY"


# direct methods
.method public static a(I)Lcom/tencent/bugly/lejiagu/proguard/z;
    .locals 2

    .prologue
    .line 13
    const/4 v0, 0x0

    .line 14
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 16
    new-instance v0, Lcom/tencent/bugly/lejiagu/proguard/ab;

    invoke-direct {v0}, Lcom/tencent/bugly/lejiagu/proguard/ab;-><init>()V

    .line 22
    :cond_0
    :goto_0
    return-object v0

    .line 17
    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 19
    new-instance v0, Lcom/tencent/bugly/lejiagu/proguard/aa;

    invoke-direct {v0}, Lcom/tencent/bugly/lejiagu/proguard/aa;-><init>()V

    goto :goto_0
.end method
