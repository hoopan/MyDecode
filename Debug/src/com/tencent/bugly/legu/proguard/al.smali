.class public final Lcom/tencent/bugly/legu/proguard/al;
.super Lcom/tencent/bugly/legu/proguard/j;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/bugly/legu/proguard/ak;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/bugly/legu/proguard/ak;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/tencent/bugly/legu/proguard/j;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/al;->a:Ljava/util/ArrayList;

    .line 17
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/legu/proguard/h;)V
    .registers 5

    .prologue
    .line 34
    sget-object v0, Lcom/tencent/bugly/legu/proguard/al;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_15

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/bugly/legu/proguard/al;->b:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Lcom/tencent/bugly/legu/proguard/ak;

    invoke-direct {v0}, Lcom/tencent/bugly/legu/proguard/ak;-><init>()V

    .line 38
    sget-object v1, Lcom/tencent/bugly/legu/proguard/al;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_15
    sget-object v0, Lcom/tencent/bugly/legu/proguard/al;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/legu/proguard/h;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/al;->a:Ljava/util/ArrayList;

    .line 41
    return-void
.end method

.method public final a(Lcom/tencent/bugly/legu/proguard/i;)V
    .registers 4

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/al;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/legu/proguard/i;->a(Ljava/util/Collection;I)V

    .line 28
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;I)V
    .registers 3

    .prologue
    .line 45
    return-void
.end method
