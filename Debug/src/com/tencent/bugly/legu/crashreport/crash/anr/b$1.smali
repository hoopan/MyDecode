.class final Lcom/tencent/bugly/legu/crashreport/crash/anr/b$1;
.super Landroid/os/FileObserver;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/bugly/legu/crashreport/crash/anr/b;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/legu/crashreport/crash/anr/b;Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 443
    iput-object p1, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b$1;->a:Lcom/tencent/bugly/legu/crashreport/crash/anr/b;

    const/16 v0, 0x8

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .registers 7

    .prologue
    .line 447
    if-nez p2, :cond_3

    .line 456
    :goto_2
    return-void

    .line 449
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/anr/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 450
    const-string v1, "trace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 451
    const-string v1, "not anr file %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_2

    .line 455
    :cond_26
    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/b$1;->a:Lcom/tencent/bugly/legu/crashreport/crash/anr/b;

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/legu/crashreport/crash/anr/b;->a(Ljava/lang/String;)V

    goto :goto_2
.end method
