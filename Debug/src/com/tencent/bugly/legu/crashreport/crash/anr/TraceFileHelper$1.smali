.class final Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper;->readTargetDumpInfo(Ljava/lang/String;Ljava/lang/String;Z)Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;

.field private synthetic b:Z


# direct methods
.method constructor <init>(Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;Z)V
    .registers 3

    .prologue
    .line 72
    iput-object p1, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$1;->a:Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;

    iput-boolean p2, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)Z
    .registers 10

    .prologue
    const-wide/16 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 114
    const-string v2, "process end %d"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 116
    iget-object v2, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$1;->a:Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;

    iget-wide v2, v2, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;->a:J

    cmp-long v2, v2, v5

    if-lez v2, :cond_27

    iget-object v2, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$1;->a:Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;

    iget-wide v2, v2, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;->c:J

    cmp-long v2, v2, v5

    if-lez v2, :cond_27

    iget-object v2, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$1;->a:Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;

    iget-object v2, v2, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;->b:Ljava/lang/String;

    if-nez v2, :cond_28

    :cond_27
    move v0, v1

    .line 121
    :cond_28
    return v0
.end method

.method public final a(JJLjava/lang/String;)Z
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 97
    const-string v2, "new process %s"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p5, v3, v1

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {p5, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 109
    :cond_11
    :goto_11
    return v0

    .line 102
    :cond_12
    iget-object v2, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$1;->a:Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;

    iput-wide p1, v2, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;->a:J

    .line 103
    iget-object v2, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$1;->a:Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;

    iput-object p5, v2, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;->b:Ljava/lang/String;

    .line 104
    iget-object v2, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$1;->a:Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;

    iput-wide p3, v2, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;->c:J

    .line 105
    iget-boolean v2, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$1;->b:Z

    if-nez v2, :cond_11

    move v0, v1

    .line 107
    goto :goto_11
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 12

    .prologue
    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 82
    const-string v0, "new thread %s"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$1;->a:Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;

    iget-wide v0, v0, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;->a:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_23

    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$1;->a:Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;

    iget-wide v0, v0, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;->c:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_23

    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$1;->a:Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;

    iget-object v0, v0, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;->b:Ljava/lang/String;

    if-nez v0, :cond_24

    .line 92
    :cond_23
    :goto_23
    return v4

    .line 88
    :cond_24
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$1;->a:Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;

    iget-object v0, v0, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;->d:Ljava/util/Map;

    if-nez v0, :cond_33

    .line 89
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$1;->a:Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;->d:Ljava/util/Map;

    .line 91
    :cond_33
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$1;->a:Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;

    iget-object v0, v0, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;->d:Ljava/util/Map;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    aput-object p3, v1, v2

    aput-object p4, v1, v4

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23
.end method
