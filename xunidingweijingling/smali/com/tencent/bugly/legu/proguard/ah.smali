.class public final Lcom/tencent/bugly/legu/proguard/ah;
.super Lcom/tencent/bugly/legu/proguard/j;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/tencent/bugly/legu/proguard/j;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/ah;->a:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/ah;->b:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/ah;->c:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/ah;->e:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/ah;->d:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/legu/proguard/h;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 60
    invoke-virtual {p1, v1, v2}, Lcom/tencent/bugly/legu/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/ah;->a:Ljava/lang/String;

    .line 61
    invoke-virtual {p1, v2, v1}, Lcom/tencent/bugly/legu/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/ah;->b:Ljava/lang/String;

    .line 62
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/legu/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/ah;->c:Ljava/lang/String;

    .line 63
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/legu/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/ah;->e:Ljava/lang/String;

    .line 64
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/legu/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/ah;->d:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public final a(Lcom/tencent/bugly/legu/proguard/i;)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/ah;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/legu/proguard/i;->a(Ljava/lang/String;I)V

    .line 39
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/ah;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/ah;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/legu/proguard/i;->a(Ljava/lang/String;I)V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/ah;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/ah;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/legu/proguard/i;->a(Ljava/lang/String;I)V

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/ah;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/ah;->e:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/legu/proguard/i;->a(Ljava/lang/String;I)V

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/ah;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 53
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/ah;->d:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/legu/proguard/i;->a(Ljava/lang/String;I)V

    .line 55
    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;I)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method
