.class final Lcom/tencent/bugly/legu/crashreport/crash/d$4;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/legu/crashreport/crash/d;->a(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/Thread;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/tencent/bugly/legu/crashreport/crash/d$4;->a:Ljava/lang/Thread;

    iput-object p2, p0, Lcom/tencent/bugly/legu/crashreport/crash/d$4;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/bugly/legu/crashreport/crash/d$4;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/bugly/legu/crashreport/crash/d$4;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/bugly/legu/crashreport/crash/d$4;->e:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 130
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/crash/d;->d()Lcom/tencent/bugly/legu/crashreport/crash/h5/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/d$4;->a:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/tencent/bugly/legu/crashreport/crash/d$4;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/bugly/legu/crashreport/crash/d$4;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/bugly/legu/crashreport/crash/d$4;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/bugly/legu/crashreport/crash/d$4;->e:Ljava/util/Map;

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/legu/crashreport/crash/h5/b;->a(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 134
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-eq v1, v6, :cond_0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 138
    :cond_0
    const-string v0, "H5 crash error %s %s %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/bugly/legu/crashreport/crash/d$4;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/tencent/bugly/legu/crashreport/crash/d$4;->c:Ljava/lang/String;

    aput-object v2, v1, v6

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/tencent/bugly/legu/crashreport/crash/d$4;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0
.end method
