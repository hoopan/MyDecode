.class public final Lcom/tencent/bugly/legu/proguard/aj;
.super Lcom/tencent/bugly/legu/proguard/j;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static d:[B


# instance fields
.field private a:B

.field private b:Ljava/lang/String;

.field private c:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/tencent/bugly/legu/proguard/j;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/tencent/bugly/legu/proguard/aj;->a:B

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/aj;->b:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/aj;->c:[B

    .line 20
    return-void
.end method

.method public constructor <init>(BLjava/lang/String;[B)V
    .registers 5

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/tencent/bugly/legu/proguard/j;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/tencent/bugly/legu/proguard/aj;->a:B

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/aj;->b:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/aj;->c:[B

    .line 24
    iput-byte p1, p0, Lcom/tencent/bugly/legu/proguard/aj;->a:B

    .line 25
    iput-object p2, p0, Lcom/tencent/bugly/legu/proguard/aj;->b:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/tencent/bugly/legu/proguard/aj;->c:[B

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/legu/proguard/h;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 44
    iget-byte v0, p0, Lcom/tencent/bugly/legu/proguard/aj;->a:B

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/legu/proguard/h;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/bugly/legu/proguard/aj;->a:B

    .line 45
    invoke-virtual {p1, v2, v2}, Lcom/tencent/bugly/legu/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/aj;->b:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/tencent/bugly/legu/proguard/aj;->d:[B

    if-nez v0, :cond_1e

    .line 48
    new-array v0, v2, [B

    check-cast v0, [B

    .line 49
    sput-object v0, Lcom/tencent/bugly/legu/proguard/aj;->d:[B

    check-cast v0, [B

    aput-byte v1, v0, v1

    .line 52
    :cond_1e
    sget-object v0, Lcom/tencent/bugly/legu/proguard/aj;->d:[B

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/legu/proguard/h;->c(IZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/aj;->c:[B

    .line 53
    return-void
.end method

.method public final a(Lcom/tencent/bugly/legu/proguard/i;)V
    .registers 4

    .prologue
    .line 32
    iget-byte v0, p0, Lcom/tencent/bugly/legu/proguard/aj;->a:B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/legu/proguard/i;->a(BI)V

    .line 33
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/aj;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/legu/proguard/i;->a(Ljava/lang/String;I)V

    .line 34
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/aj;->c:[B

    if-eqz v0, :cond_16

    .line 36
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/aj;->c:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/legu/proguard/i;->a([BI)V

    .line 38
    :cond_16
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;I)V
    .registers 3

    .prologue
    .line 57
    return-void
.end method
