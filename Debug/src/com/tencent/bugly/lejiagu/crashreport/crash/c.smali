.class public final Lcom/tencent/bugly/lejiagu/crashreport/crash/c;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static a:I

.field public static b:Z

.field public static c:Z

.field public static d:I

.field public static e:I

.field public static f:J

.field public static g:Ljava/lang/String;

.field public static h:Z

.field public static i:Ljava/lang/String;

.field public static j:I

.field private static n:Lcom/tencent/bugly/lejiagu/crashreport/crash/c;


# instance fields
.field public final k:Lcom/tencent/bugly/lejiagu/crashreport/crash/b;

.field public l:Lcom/tencent/bugly/lejiagu/BuglyStrategy$a;

.field private final m:Landroid/content/Context;

.field private final o:Lcom/tencent/bugly/lejiagu/crashreport/crash/e;

.field private final p:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

.field private q:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

.field private r:Lcom/tencent/bugly/lejiagu/proguard/t;

.field private final s:Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/b;

.field private t:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0x4e20

    const/4 v2, 0x0

    .line 33
    sput v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->a:I

    .line 35
    sput-boolean v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->b:Z

    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->c:Z

    .line 47
    sput v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->d:I

    .line 48
    sput v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->e:I

    .line 49
    const-wide/32 v0, 0x240c8400

    sput-wide v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->f:J

    .line 50
    sput-object v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->g:Ljava/lang/String;

    .line 51
    sput-boolean v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->h:Z

    .line 52
    sput-object v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->i:Ljava/lang/String;

    .line 53
    const/16 v0, 0x1388

    sput v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->j:I

    return-void
.end method

.method private constructor <init>(ILandroid/content/Context;Lcom/tencent/bugly/lejiagu/proguard/t;ZLcom/tencent/bugly/lejiagu/BuglyStrategy$a;Lcom/tencent/bugly/lejiagu/proguard/l;Ljava/lang/String;)V
    .registers 18

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    sput p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->a:I

    .line 77
    if-nez p2, :cond_63

    move-object v2, p2

    .line 78
    :cond_8
    :goto_8
    iput-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->m:Landroid/content/Context;

    .line 79
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->q:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    .line 80
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/r;->a()Lcom/tencent/bugly/lejiagu/proguard/r;

    move-result-object v3

    .line 81
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/m;->a()Lcom/tencent/bugly/lejiagu/proguard/m;

    move-result-object v4

    .line 82
    invoke-static {v2}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v9

    .line 83
    iput-object p3, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->r:Lcom/tencent/bugly/lejiagu/proguard/t;

    .line 84
    iput-object p5, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->l:Lcom/tencent/bugly/lejiagu/BuglyStrategy$a;

    .line 85
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;

    iget-object v5, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->q:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    move v1, p1

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;-><init>(ILandroid/content/Context;Lcom/tencent/bugly/lejiagu/proguard/r;Lcom/tencent/bugly/lejiagu/proguard/m;Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;Lcom/tencent/bugly/lejiagu/BuglyStrategy$a;Lcom/tencent/bugly/lejiagu/proguard/l;)V

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->k:Lcom/tencent/bugly/lejiagu/crashreport/crash/b;

    .line 89
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;

    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->k:Lcom/tencent/bugly/lejiagu/crashreport/crash/b;

    iget-object v3, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->q:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    invoke-direct {v0, v2, v1, v3, v9}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;-><init>(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/crashreport/crash/b;Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;)V

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->o:Lcom/tencent/bugly/lejiagu/crashreport/crash/e;

    .line 90
    iget-object v4, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->k:Lcom/tencent/bugly/lejiagu/crashreport/crash/b;

    iget-object v5, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->q:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    move-object v3, v9

    move-object v6, p3

    move v7, p4

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->getInstance(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;Lcom/tencent/bugly/lejiagu/crashreport/crash/b;Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;Lcom/tencent/bugly/lejiagu/proguard/t;ZLjava/lang/String;)Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->p:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    .line 93
    new-instance v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/b;

    iget-object v3, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->q:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    iget-object v6, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->k:Lcom/tencent/bugly/lejiagu/crashreport/crash/b;

    move-object v4, v9

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/b;-><init>(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;Lcom/tencent/bugly/lejiagu/proguard/t;Lcom/tencent/bugly/lejiagu/crashreport/crash/b;)V

    iput-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->s:Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/b;

    .line 98
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/crash/BuglyBroadcastRecevier;->getInstance()Lcom/tencent/bugly/lejiagu/crashreport/crash/BuglyBroadcastRecevier;

    move-result-object v0

    .line 99
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/BuglyBroadcastRecevier;->addFilter(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->k:Lcom/tencent/bugly/lejiagu/crashreport/crash/b;

    invoke-virtual {v0, v2, v1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/BuglyBroadcastRecevier;->regist(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/crashreport/crash/b;)V

    .line 101
    return-void

    .line 77
    :cond_63
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_8

    move-object v2, p2

    goto :goto_8
.end method

.method public static a()Lcom/tencent/bugly/lejiagu/crashreport/crash/c;
    .registers 1

    .prologue
    .line 121
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->n:Lcom/tencent/bugly/lejiagu/crashreport/crash/c;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/bugly/lejiagu/crashreport/crash/c;)Lcom/tencent/bugly/lejiagu/crashreport/crash/e;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->o:Lcom/tencent/bugly/lejiagu/crashreport/crash/e;

    return-object v0
.end method

.method public static declared-synchronized a(ILandroid/content/Context;ZLcom/tencent/bugly/lejiagu/BuglyStrategy$a;Lcom/tencent/bugly/lejiagu/proguard/l;Ljava/lang/String;)V
    .registers 15

    .prologue
    .line 106
    const-class v8, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;

    monitor-enter v8

    :try_start_3
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->n:Lcom/tencent/bugly/lejiagu/crashreport/crash/c;

    if-nez v0, :cond_19

    .line 107
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;

    const/16 v1, 0x3ec

    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/t;->a()Lcom/tencent/bugly/lejiagu/proguard/t;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;-><init>(ILandroid/content/Context;Lcom/tencent/bugly/lejiagu/proguard/t;ZLcom/tencent/bugly/lejiagu/BuglyStrategy$a;Lcom/tencent/bugly/lejiagu/proguard/l;Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->n:Lcom/tencent/bugly/lejiagu/crashreport/crash/c;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    .line 111
    :cond_19
    monitor-exit v8

    return-void

    .line 106
    :catchall_1b
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method static synthetic b(Lcom/tencent/bugly/lejiagu/crashreport/crash/c;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->m:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(J)V
    .registers 5

    .prologue
    .line 271
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/t;->a()Lcom/tencent/bugly/lejiagu/proguard/t;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/c$2;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c$2;-><init>(Lcom/tencent/bugly/lejiagu/crashreport/crash/c;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/bugly/lejiagu/proguard/t;->a(Ljava/lang/Runnable;J)Z

    .line 300
    return-void
.end method

.method public final a(Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;)V
    .registers 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->o:Lcom/tencent/bugly/lejiagu/crashreport/crash/e;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->a(Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;)V

    .line 126
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->p:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->onStrategyChanged(Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;)V

    .line 127
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->s:Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/b;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/b;->a(Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;)V

    .line 128
    return-void
.end method

.method public final a(Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;)V
    .registers 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->k:Lcom/tencent/bugly/lejiagu/crashreport/crash/b;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->c(Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;)V

    .line 268
    return-void
.end method

.method public final a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[B)V
    .registers 14

    .prologue
    const/4 v5, 0x0

    .line 247
    iget-object v7, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->r:Lcom/tencent/bugly/lejiagu/proguard/t;

    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c$1;

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c$1;-><init>(Lcom/tencent/bugly/lejiagu/crashreport/crash/c;ZLjava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[B)V

    invoke-virtual {v7, v0}, Lcom/tencent/bugly/lejiagu/proguard/t;->b(Ljava/lang/Runnable;)Z

    .line 264
    return-void
.end method

.method public final b()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 134
    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->t:Ljava/lang/Boolean;

    .line 135
    if-eqz v2, :cond_b

    .line 136
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 158
    :goto_a
    return v0

    .line 139
    :cond_b
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->d:Ljava/lang/String;

    .line 140
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/m;->a()Lcom/tencent/bugly/lejiagu/proguard/m;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/tencent/bugly/lejiagu/proguard/m;->a(I)Ljava/util/List;

    move-result-object v3

    .line 142
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 143
    if-eqz v3, :cond_56

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_56

    .line 144
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2a
    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/lejiagu/proguard/o;

    .line 145
    iget-object v5, v0, Lcom/tencent/bugly/lejiagu/proguard/o;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 146
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->t:Ljava/lang/Boolean;

    .line 147
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 151
    :cond_48
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_54

    .line 152
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/m;->a()Lcom/tencent/bugly/lejiagu/proguard/m;

    invoke-static {v4}, Lcom/tencent/bugly/lejiagu/proguard/m;->a(Ljava/util/List;)V

    :cond_54
    move v0, v1

    .line 154
    goto :goto_a

    .line 157
    :cond_56
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->t:Ljava/lang/Boolean;

    goto :goto_a
.end method

.method public final declared-synchronized c()V
    .registers 3

    .prologue
    .line 165
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->o:Lcom/tencent/bugly/lejiagu/crashreport/crash/e;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->a()V

    .line 166
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->p:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->setUserOpened(Z)V

    .line 167
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->s:Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/b;->a(Z)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 168
    monitor-exit p0

    return-void

    .line 165
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .registers 3

    .prologue
    .line 174
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->o:Lcom/tencent/bugly/lejiagu/crashreport/crash/e;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->b()V

    .line 175
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->p:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->setUserOpened(Z)V

    .line 176
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->s:Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/b;->a(Z)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 177
    monitor-exit p0

    return-void

    .line 174
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()V
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->o:Lcom/tencent/bugly/lejiagu/crashreport/crash/e;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->a()V

    .line 191
    return-void
.end method

.method public final f()V
    .registers 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->p:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->setUserOpened(Z)V

    .line 198
    return-void
.end method

.method public final g()V
    .registers 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->p:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->setUserOpened(Z)V

    .line 205
    return-void
.end method

.method public final h()V
    .registers 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->s:Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/b;->a(Z)V

    .line 212
    return-void
.end method

.method public final i()V
    .registers 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->s:Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/b;->a(Z)V

    .line 219
    return-void
.end method

.method public final declared-synchronized j()V
    .registers 2

    .prologue
    .line 225
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->p:Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->testNativeCrash()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 226
    monitor-exit p0

    return-void

    .line 225
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized k()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 232
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->s:Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/b;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_32

    :goto_4
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_30

    :try_start_a
    const-string v0, "try main sleep for make a test anr! try:%d/30 , kill it if you don\'t want to wait!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_19} :catch_26
    .catchall {:try_start_a .. :try_end_19} :catchall_32

    const-wide/16 v2, 0x1388

    :try_start_1b
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_20
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_26
    .catchall {:try_start_1b .. :try_end_1e} :catchall_32

    move v0, v1

    goto :goto_4

    :catch_20
    move-exception v0

    :try_start_21
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_24} :catch_26
    .catchall {:try_start_21 .. :try_end_24} :catchall_32

    move v0, v1

    goto :goto_4

    :catch_26
    move-exception v0

    :try_start_27
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_32

    .line 233
    :cond_30
    monitor-exit p0

    return-void

    .line 232
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final l()Z
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->s:Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/b;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/b;->a()Z

    move-result v0

    return v0
.end method