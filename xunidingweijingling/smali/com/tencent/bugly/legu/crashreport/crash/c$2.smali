.class final Lcom/tencent/bugly/legu/crashreport/crash/c$2;
.super Ljava/lang/Thread;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/legu/crashreport/crash/c;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/bugly/legu/crashreport/crash/c;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/legu/crashreport/crash/c;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/tencent/bugly/legu/crashreport/crash/c$2;->a:Lcom/tencent/bugly/legu/crashreport/crash/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x64

    const/4 v3, 0x0

    .line 275
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/c$2;->a:Lcom/tencent/bugly/legu/crashreport/crash/c;

    invoke-static {v0}, Lcom/tencent/bugly/legu/crashreport/crash/c;->b(Lcom/tencent/bugly/legu/crashreport/crash/c;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "local_crash_lock"

    const-wide/16 v4, 0x2710

    invoke-static {v0, v1, v4, v5}, Lcom/tencent/bugly/legu/proguard/a;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/c$2;->a:Lcom/tencent/bugly/legu/crashreport/crash/c;

    iget-object v0, v0, Lcom/tencent/bugly/legu/crashreport/crash/c;->k:Lcom/tencent/bugly/legu/crashreport/crash/b;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/crash/b;->a()Ljava/util/List;

    move-result-object v1

    .line 282
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 284
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 285
    int-to-long v5, v4

    cmp-long v0, v5, v7

    if-lez v0, :cond_1

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move v2, v3

    .line 290
    :goto_1
    int-to-long v5, v2

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    .line 291
    add-int/lit8 v5, v4, -0x1

    sub-int/2addr v5, v2

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 294
    :cond_2
    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/c$2;->a:Lcom/tencent/bugly/legu/crashreport/crash/c;

    iget-object v1, v1, Lcom/tencent/bugly/legu/crashreport/crash/c;->k:Lcom/tencent/bugly/legu/crashreport/crash/b;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v0, v4, v5, v3}, Lcom/tencent/bugly/legu/crashreport/crash/b;->a(Ljava/util/List;JZ)V

    .line 297
    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/c$2;->a:Lcom/tencent/bugly/legu/crashreport/crash/c;

    invoke-static {v0}, Lcom/tencent/bugly/legu/crashreport/crash/c;->b(Lcom/tencent/bugly/legu/crashreport/crash/c;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "local_crash_lock"

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0
.end method
