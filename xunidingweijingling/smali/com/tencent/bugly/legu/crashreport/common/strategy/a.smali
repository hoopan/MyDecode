.class public final Lcom/tencent/bugly/legu/crashreport/common/strategy/a;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static a:I

.field private static b:Lcom/tencent/bugly/legu/crashreport/common/strategy/a;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/legu/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/tencent/bugly/legu/proguard/v;

.field private final e:Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;

.field private f:Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x3e8

    sput v0, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->a:I

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->b:Lcom/tencent/bugly/legu/crashreport/common/strategy/a;

    .line 37
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/legu/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;

    .line 54
    iput-object p1, p0, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->g:Landroid/content/Context;

    .line 55
    new-instance v0, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;

    invoke-direct {v0}, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->e:Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;

    .line 56
    iput-object p2, p0, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->c:Ljava/util/List;

    .line 57
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/v;->a()Lcom/tencent/bugly/legu/proguard/v;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->d:Lcom/tencent/bugly/legu/proguard/v;

    .line 58
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->d:Lcom/tencent/bugly/legu/proguard/v;

    new-instance v1, Lcom/tencent/bugly/legu/crashreport/common/strategy/a$1;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/legu/crashreport/common/strategy/a$1;-><init>(Lcom/tencent/bugly/legu/crashreport/common/strategy/a;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/legu/proguard/v;->b(Ljava/lang/Runnable;)Z

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/legu/crashreport/common/strategy/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->g:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/bugly/legu/crashreport/common/strategy/a;Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;)Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;

    return-object p1
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/legu/crashreport/common/strategy/a;
    .locals 2

    .prologue
    .line 105
    const-class v0, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->b:Lcom/tencent/bugly/legu/crashreport/common/strategy/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/legu/crashreport/common/strategy/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/legu/a;",
            ">;)",
            "Lcom/tencent/bugly/legu/crashreport/common/strategy/a;"
        }
    .end annotation

    .prologue
    .line 65
    const-class v1, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->b:Lcom/tencent/bugly/legu/crashreport/common/strategy/a;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;

    invoke-direct {v0, p0, p1}, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v0, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->b:Lcom/tencent/bugly/legu/crashreport/common/strategy/a;

    .line 68
    :cond_0
    sget-object v0, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->b:Lcom/tencent/bugly/legu/crashreport/common/strategy/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/tencent/bugly/legu/crashreport/common/strategy/a;)Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;

    return-object v0
.end method

.method public static d()Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;
    .locals 2

    .prologue
    .line 253
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/o;->a()Lcom/tencent/bugly/legu/proguard/o;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/legu/proguard/o;->a(I)Ljava/util/List;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 256
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/legu/proguard/q;

    .line 257
    iget-object v1, v0, Lcom/tencent/bugly/legu/proguard/q;->g:[B

    if-eqz v1, :cond_0

    .line 258
    iget-object v0, v0, Lcom/tencent/bugly/legu/proguard/q;->g:[B

    sget-object v1, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/a;->a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;

    .line 261
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;)V
    .locals 6

    .prologue
    .line 126
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/legu/a;

    .line 128
    :try_start_0
    const-string v2, "[strategy] Notify %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {v0, p1}, Lcom/tencent/bugly/legu/a;->onServerStrategyChanged(Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 137
    :cond_1
    invoke-static {p1}, Lcom/tencent/bugly/legu/crashreport/biz/b;->a(Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;)V

    .line 138
    return-void
.end method

.method public final a(Lcom/tencent/bugly/legu/proguard/ap;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 144
    if-nez p1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;

    if-eqz v0, :cond_2

    iget-wide v3, p1, Lcom/tencent/bugly/legu/proguard/ap;->h:J

    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;

    iget-wide v5, v0, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->l:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    .line 152
    :cond_2
    new-instance v3, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;

    invoke-direct {v3}, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;-><init>()V

    .line 154
    iget-boolean v0, p1, Lcom/tencent/bugly/legu/proguard/ap;->a:Z

    iput-boolean v0, v3, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->d:Z

    .line 155
    iget-boolean v0, p1, Lcom/tencent/bugly/legu/proguard/ap;->c:Z

    iput-boolean v0, v3, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->f:Z

    .line 156
    iget-boolean v0, p1, Lcom/tencent/bugly/legu/proguard/ap;->b:Z

    iput-boolean v0, v3, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->e:Z

    .line 159
    iget-object v0, p1, Lcom/tencent/bugly/legu/proguard/ap;->d:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    .line 160
    const-string v0, "upload url changes to %s"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/tencent/bugly/legu/proguard/ap;->d:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v0, v4}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 161
    iget-object v0, p1, Lcom/tencent/bugly/legu/proguard/ap;->d:Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->n:Ljava/lang/String;

    .line 163
    :cond_3
    iget-object v0, p1, Lcom/tencent/bugly/legu/proguard/ap;->e:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    move v0, v1

    :goto_2
    if-nez v0, :cond_4

    .line 164
    const-string v0, "exception upload url changes to %s"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/tencent/bugly/legu/proguard/ap;->e:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v0, v4}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 165
    iget-object v0, p1, Lcom/tencent/bugly/legu/proguard/ap;->e:Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->o:Ljava/lang/String;

    .line 167
    :cond_4
    iget-object v0, p1, Lcom/tencent/bugly/legu/proguard/ap;->f:Lcom/tencent/bugly/legu/proguard/ao;

    if-eqz v0, :cond_5

    .line 168
    iget-object v0, p1, Lcom/tencent/bugly/legu/proguard/ap;->f:Lcom/tencent/bugly/legu/proguard/ao;

    iget-object v0, v0, Lcom/tencent/bugly/legu/proguard/ao;->a:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    move v0, v1

    :goto_3
    if-nez v0, :cond_5

    .line 169
    iget-object v0, p1, Lcom/tencent/bugly/legu/proguard/ap;->f:Lcom/tencent/bugly/legu/proguard/ao;

    iget-object v0, v0, Lcom/tencent/bugly/legu/proguard/ao;->a:Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->q:Ljava/lang/String;

    .line 171
    :cond_5
    iget-wide v4, p1, Lcom/tencent/bugly/legu/proguard/ap;->h:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_6

    .line 172
    iget-wide v4, p1, Lcom/tencent/bugly/legu/proguard/ap;->h:J

    iput-wide v4, v3, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->l:J

    .line 175
    :cond_6
    iget-object v0, p1, Lcom/tencent/bugly/legu/proguard/ap;->g:Ljava/util/Map;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/tencent/bugly/legu/proguard/ap;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 176
    iget-object v0, p1, Lcom/tencent/bugly/legu/proguard/ap;->g:Ljava/util/Map;

    iput-object v0, v3, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->r:Ljava/util/Map;

    .line 177
    iget-object v0, p1, Lcom/tencent/bugly/legu/proguard/ap;->g:Ljava/util/Map;

    const-string v4, "B11"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    if-eqz v0, :cond_c

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 180
    iput-boolean v2, v3, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->g:Z

    .line 184
    :goto_4
    iget v0, p1, Lcom/tencent/bugly/legu/proguard/ap;->i:I

    int-to-long v4, v0

    iput-wide v4, v3, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->m:J

    .line 185
    iget v0, p1, Lcom/tencent/bugly/legu/proguard/ap;->i:I

    int-to-long v4, v0

    iput-wide v4, v3, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->t:J

    .line 203
    iget-object v0, p1, Lcom/tencent/bugly/legu/proguard/ap;->g:Ljava/util/Map;

    const-string v4, "B27"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 205
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7

    .line 207
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 208
    if-lez v0, :cond_7

    .line 209
    iput v0, v3, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->s:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_7
    :goto_5
    iget-object v0, p1, Lcom/tencent/bugly/legu/proguard/ap;->g:Ljava/util/Map;

    const-string v4, "B25"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    if-eqz v0, :cond_d

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 220
    iput-boolean v2, v3, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->h:Z

    .line 227
    :cond_8
    :goto_6
    const-string v0, "cr:%b,qu:%b,uin:%b,an:%b,ss:%b,ssT:%b,ssOT:%d,cos:%b,lstT:%d"

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/Object;

    iget-boolean v5, v3, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->d:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    iget-boolean v5, v3, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->f:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    iget-boolean v2, v3, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v8

    const/4 v2, 0x3

    iget-boolean v5, v3, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->g:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x4

    iget-boolean v5, v3, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->j:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x5

    iget-boolean v5, v3, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->k:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x6

    iget-wide v5, v3, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->m:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x7

    iget-boolean v5, v3, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->h:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    const/16 v2, 0x8

    iget-wide v5, v3, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->l:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 232
    iput-object v3, p0, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;

    .line 235
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/o;->a()Lcom/tencent/bugly/legu/proguard/o;

    invoke-static {v8}, Lcom/tencent/bugly/legu/proguard/o;->b(I)V

    .line 236
    new-instance v0, Lcom/tencent/bugly/legu/proguard/q;

    invoke-direct {v0}, Lcom/tencent/bugly/legu/proguard/q;-><init>()V

    .line 237
    iput v8, v0, Lcom/tencent/bugly/legu/proguard/q;->b:I

    .line 238
    iget-wide v4, v3, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->b:J

    iput-wide v4, v0, Lcom/tencent/bugly/legu/proguard/q;->a:J

    .line 239
    iget-wide v4, v3, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->c:J

    iput-wide v4, v0, Lcom/tencent/bugly/legu/proguard/q;->e:J

    .line 240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-interface {v3, v2, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    iput-object v1, v0, Lcom/tencent/bugly/legu/proguard/q;->g:[B

    .line 241
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/o;->a()Lcom/tencent/bugly/legu/proguard/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/legu/proguard/o;->a(Lcom/tencent/bugly/legu/proguard/q;)Z

    .line 244
    invoke-virtual {p0, v3}, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->a(Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;)V

    goto/16 :goto_0

    :cond_9
    move v0, v2

    .line 159
    goto/16 :goto_1

    :cond_a
    move v0, v2

    .line 163
    goto/16 :goto_2

    :cond_b
    move v0, v2

    .line 168
    goto/16 :goto_3

    .line 182
    :cond_c
    iput-boolean v1, v3, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->g:Z

    goto/16 :goto_4

    .line 211
    :catch_0
    move-exception v0

    .line 212
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 213
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 222
    :cond_d
    iput-boolean v1, v3, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->h:Z

    goto/16 :goto_6
.end method

.method public final declared-synchronized b()Z
    .locals 1

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->f:Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;

    .line 119
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->e:Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;

    goto :goto_0
.end method
