.class public final Lcom/tencent/bugly/legu/proguard/an;
.super Lcom/tencent/bugly/legu/proguard/j;
.source "BUGLY"


# static fields
.field private static i:[B

.field private static j:Ljava/util/Map;
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


# instance fields
.field public a:B

.field public b:I

.field public c:[B

.field public d:Ljava/lang/String;

.field public e:J

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 72
    const/4 v0, 0x1

    new-array v0, v0, [B

    check-cast v0, [B

    .line 73
    sput-object v0, Lcom/tencent/bugly/legu/proguard/an;->i:[B

    check-cast v0, [B

    aput-byte v1, v0, v1

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/legu/proguard/an;->j:Ljava/util/Map;

    .line 79
    const-string v0, ""

    .line 80
    const-string v1, ""

    .line 81
    sget-object v2, Lcom/tencent/bugly/legu/proguard/an;->j:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Lcom/tencent/bugly/legu/proguard/j;-><init>()V

    .line 11
    iput-byte v0, p0, Lcom/tencent/bugly/legu/proguard/an;->a:B

    .line 13
    iput v0, p0, Lcom/tencent/bugly/legu/proguard/an;->b:I

    .line 15
    iput-object v2, p0, Lcom/tencent/bugly/legu/proguard/an;->c:[B

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/an;->d:Ljava/lang/String;

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/legu/proguard/an;->e:J

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/an;->f:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/an;->g:Ljava/lang/String;

    .line 25
    iput-object v2, p0, Lcom/tencent/bugly/legu/proguard/an;->h:Ljava/util/Map;

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/legu/proguard/h;)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 86
    iget-byte v0, p0, Lcom/tencent/bugly/legu/proguard/an;->a:B

    invoke-virtual {p1, v0, v3, v1}, Lcom/tencent/bugly/legu/proguard/h;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/bugly/legu/proguard/an;->a:B

    .line 87
    iget v0, p0, Lcom/tencent/bugly/legu/proguard/an;->b:I

    invoke-virtual {p1, v0, v1, v1}, Lcom/tencent/bugly/legu/proguard/h;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/legu/proguard/an;->b:I

    .line 88
    sget-object v0, Lcom/tencent/bugly/legu/proguard/an;->i:[B

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/legu/proguard/h;->c(IZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/an;->c:[B

    .line 89
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/legu/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/an;->d:Ljava/lang/String;

    .line 90
    iget-wide v0, p0, Lcom/tencent/bugly/legu/proguard/an;->e:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tencent/bugly/legu/proguard/h;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/legu/proguard/an;->e:J

    .line 91
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/legu/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/an;->f:Ljava/lang/String;

    .line 92
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/legu/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/an;->g:Ljava/lang/String;

    .line 93
    sget-object v0, Lcom/tencent/bugly/legu/proguard/an;->j:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Lcom/tencent/bugly/legu/proguard/h;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/an;->h:Ljava/util/Map;

    .line 94
    return-void
.end method

.method public final a(Lcom/tencent/bugly/legu/proguard/i;)V
    .registers 5

    .prologue
    .line 45
    iget-byte v0, p0, Lcom/tencent/bugly/legu/proguard/an;->a:B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/legu/proguard/i;->a(BI)V

    .line 46
    iget v0, p0, Lcom/tencent/bugly/legu/proguard/an;->b:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/legu/proguard/i;->a(II)V

    .line 47
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/an;->c:[B

    if-eqz v0, :cond_16

    .line 49
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/an;->c:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/legu/proguard/i;->a([BI)V

    .line 51
    :cond_16
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/an;->d:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 53
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/an;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/legu/proguard/i;->a(Ljava/lang/String;I)V

    .line 55
    :cond_20
    iget-wide v0, p0, Lcom/tencent/bugly/legu/proguard/an;->e:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/legu/proguard/i;->a(JI)V

    .line 56
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/an;->f:Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 58
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/an;->f:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/legu/proguard/i;->a(Ljava/lang/String;I)V

    .line 60
    :cond_30
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/an;->g:Ljava/lang/String;

    if-eqz v0, :cond_3a

    .line 62
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/an;->g:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/legu/proguard/i;->a(Ljava/lang/String;I)V

    .line 64
    :cond_3a
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/an;->h:Ljava/util/Map;

    if-eqz v0, :cond_44

    .line 66
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/an;->h:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/legu/proguard/i;->a(Ljava/util/Map;I)V

    .line 68
    :cond_44
    return-void
.end method
