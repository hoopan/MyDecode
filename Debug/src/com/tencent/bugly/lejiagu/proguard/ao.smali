.class public final Lcom/tencent/bugly/lejiagu/proguard/ao;
.super Lcom/tencent/bugly/lejiagu/proguard/j;
.source "BUGLY"


# static fields
.field private static i:Ljava/util/Map;
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
.field public a:J

.field public b:B

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/util/Map;
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

.field public g:Ljava/lang/String;

.field public h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/lejiagu/proguard/ao;->i:Ljava/util/Map;

    .line 73
    const-string v0, ""

    .line 74
    const-string v1, ""

    .line 75
    sget-object v2, Lcom/tencent/bugly/lejiagu/proguard/ao;->i:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/tencent/bugly/lejiagu/proguard/j;-><init>()V

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/lejiagu/proguard/ao;->a:J

    .line 13
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/tencent/bugly/lejiagu/proguard/ao;->b:B

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/ao;->c:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/ao;->d:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/ao;->e:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/ao;->f:Ljava/util/Map;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/ao;->g:Ljava/lang/String;

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/lejiagu/proguard/ao;->h:Z

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/lejiagu/proguard/h;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    iget-wide v0, p0, Lcom/tencent/bugly/lejiagu/proguard/ao;->a:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/h;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/lejiagu/proguard/ao;->a:J

    .line 81
    iget-byte v0, p0, Lcom/tencent/bugly/lejiagu/proguard/ao;->b:B

    invoke-virtual {p1, v0, v3, v3}, Lcom/tencent/bugly/lejiagu/proguard/h;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/bugly/lejiagu/proguard/ao;->b:B

    .line 82
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/ao;->c:Ljava/lang/String;

    .line 83
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/ao;->d:Ljava/lang/String;

    .line 84
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/ao;->e:Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/ao;->i:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/h;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/ao;->f:Ljava/util/Map;

    .line 86
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/ao;->g:Ljava/lang/String;

    .line 87
    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/proguard/ao;->h:Z

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/h;->a(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/bugly/lejiagu/proguard/ao;->h:Z

    .line 88
    return-void
.end method

.method public final a(Lcom/tencent/bugly/lejiagu/proguard/i;)V
    .registers 5

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/tencent/bugly/lejiagu/proguard/ao;->a:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/i;->a(JI)V

    .line 46
    iget-byte v0, p0, Lcom/tencent/bugly/lejiagu/proguard/ao;->b:B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/i;->a(BI)V

    .line 47
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/ao;->c:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 49
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/ao;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/i;->a(Ljava/lang/String;I)V

    .line 51
    :cond_16
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/ao;->d:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 53
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/ao;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/i;->a(Ljava/lang/String;I)V

    .line 55
    :cond_20
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/ao;->e:Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 57
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/ao;->e:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/i;->a(Ljava/lang/String;I)V

    .line 59
    :cond_2a
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/ao;->f:Ljava/util/Map;

    if-eqz v0, :cond_34

    .line 61
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/ao;->f:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/i;->a(Ljava/util/Map;I)V

    .line 63
    :cond_34
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/ao;->g:Ljava/lang/String;

    if-eqz v0, :cond_3e

    .line 65
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/ao;->g:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/i;->a(Ljava/lang/String;I)V

    .line 67
    :cond_3e
    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/proguard/ao;->h:Z

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/i;->a(ZI)V

    .line 68
    return-void
.end method
