.class public Lcom/tencent/bugly/legu/CrashModule;
.super Lcom/tencent/bugly/legu/a;
.source "BUGLY"


# static fields
.field public static final MODULE_ID:I = 0x3ec

.field private static c:I

.field private static d:Z

.field private static e:Lcom/tencent/bugly/legu/CrashModule;


# instance fields
.field private a:J

.field private b:Lcom/tencent/bugly/legu/BuglyStrategy$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    sput v0, Lcom/tencent/bugly/legu/CrashModule;->c:I

    .line 22
    sput-boolean v0, Lcom/tencent/bugly/legu/CrashModule;->d:Z

    .line 24
    new-instance v0, Lcom/tencent/bugly/legu/CrashModule;

    invoke-direct {v0}, Lcom/tencent/bugly/legu/CrashModule;-><init>()V

    sput-object v0, Lcom/tencent/bugly/legu/CrashModule;->e:Lcom/tencent/bugly/legu/CrashModule;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/tencent/bugly/legu/a;-><init>()V

    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;Lcom/tencent/bugly/legu/BuglyStrategy;)V
    .locals 5

    .prologue
    .line 74
    monitor-enter p0

    if-nez p2, :cond_1

    .line 93
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 78
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lcom/tencent/bugly/legu/BuglyStrategy;->getLibBuglySOFilePath()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 80
    invoke-static {p1}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v1

    iput-object v0, v1, Lcom/tencent/bugly/legu/crashreport/common/info/a;->k:Ljava/lang/String;

    .line 81
    const-string v1, "setted libBugly.so file path :%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 84
    :cond_2
    invoke-virtual {p2}, Lcom/tencent/bugly/legu/BuglyStrategy;->getCrashHandleCallback()Lcom/tencent/bugly/legu/BuglyStrategy$a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 85
    invoke-virtual {p2}, Lcom/tencent/bugly/legu/BuglyStrategy;->getCrashHandleCallback()Lcom/tencent/bugly/legu/BuglyStrategy$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/CrashModule;->b:Lcom/tencent/bugly/legu/BuglyStrategy$a;

    .line 86
    const-string v0, "setted CrashHanldeCallback"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 89
    :cond_3
    invoke-virtual {p2}, Lcom/tencent/bugly/legu/BuglyStrategy;->getAppReportDelay()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 90
    invoke-virtual {p2}, Lcom/tencent/bugly/legu/BuglyStrategy;->getAppReportDelay()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/legu/CrashModule;->a:J

    .line 91
    const-string v0, "setted delay: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/tencent/bugly/legu/CrashModule;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance()Lcom/tencent/bugly/legu/CrashModule;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/tencent/bugly/legu/CrashModule;->e:Lcom/tencent/bugly/legu/CrashModule;

    const/16 v1, 0x3ec

    iput v1, v0, Lcom/tencent/bugly/legu/CrashModule;->id:I

    .line 28
    sget-object v0, Lcom/tencent/bugly/legu/CrashModule;->e:Lcom/tencent/bugly/legu/CrashModule;

    return-object v0
.end method

.method public static hasInitialized()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/tencent/bugly/legu/CrashModule;->d:Z

    return v0
.end method


# virtual methods
.method public getTables()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "t_cr"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public init(Landroid/content/Context;ZLcom/tencent/bugly/legu/BuglyStrategy;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v0, 0x3ec

    .line 36
    if-eqz p1, :cond_0

    sget-boolean v1, Lcom/tencent/bugly/legu/CrashModule;->d:Z

    if-eqz v1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/m;->a()Lcom/tencent/bugly/legu/proguard/m;

    move-result-object v1

    sget v2, Lcom/tencent/bugly/legu/CrashModule;->c:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/tencent/bugly/legu/CrashModule;->c:I

    invoke-virtual {v1, v0, v2}, Lcom/tencent/bugly/legu/proguard/m;->a(II)Z

    .line 40
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tencent/bugly/legu/CrashModule;->d:Z

    .line 41
    invoke-static {p1}, Lcom/tencent/bugly/legu/crashreport/CrashReport;->setContext(Landroid/content/Context;)V

    .line 42
    invoke-direct {p0, p1, p3}, Lcom/tencent/bugly/legu/CrashModule;->a(Landroid/content/Context;Lcom/tencent/bugly/legu/BuglyStrategy;)V

    .line 43
    iget-object v3, p0, Lcom/tencent/bugly/legu/CrashModule;->b:Lcom/tencent/bugly/legu/BuglyStrategy$a;

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/tencent/bugly/legu/crashreport/crash/c;->a(ILandroid/content/Context;ZLcom/tencent/bugly/legu/BuglyStrategy$a;Lcom/tencent/bugly/legu/proguard/n;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/crash/c;->a()Lcom/tencent/bugly/legu/crashreport/crash/c;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/crash/c;->e()V

    .line 48
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/tencent/bugly/legu/BuglyStrategy;->isEnableNativeCrashMonitor()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 49
    :cond_2
    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/crash/c;->g()V

    .line 54
    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/tencent/bugly/legu/BuglyStrategy;->isEnableANRCrashMonitor()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 55
    :cond_3
    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/crash/c;->h()V

    .line 62
    :goto_2
    sput-object p1, Lcom/tencent/bugly/legu/crashreport/inner/InnerAPI;->context:Landroid/content/Context;

    .line 65
    invoke-static {p1}, Lcom/tencent/bugly/legu/crashreport/crash/d;->a(Landroid/content/Context;)V

    .line 68
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/crash/c;->a()Lcom/tencent/bugly/legu/crashreport/crash/c;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/bugly/legu/CrashModule;->a:J

    invoke-virtual {v1, v2, v3}, Lcom/tencent/bugly/legu/crashreport/crash/c;->a(J)V

    .line 70
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/m;->a()Lcom/tencent/bugly/legu/proguard/m;

    move-result-object v1

    sget v2, Lcom/tencent/bugly/legu/CrashModule;->c:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/tencent/bugly/legu/CrashModule;->c:I

    invoke-virtual {v1, v0, v2}, Lcom/tencent/bugly/legu/proguard/m;->a(II)Z

    goto :goto_0

    .line 51
    :cond_4
    const-string v2, "[crash] Closed native crash monitor!"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/crash/c;->f()V

    goto :goto_1

    .line 57
    :cond_5
    const-string v2, "[crash] Closed ANR monitor!"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/crash/c;->i()V

    goto :goto_2
.end method

.method public onServerStrategyChanged(Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;)V
    .locals 1

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/crash/c;->a()Lcom/tencent/bugly/legu/crashreport/crash/c;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v0, p1}, Lcom/tencent/bugly/legu/crashreport/crash/c;->a(Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;)V

    .line 104
    :cond_1
    invoke-static {p1}, Lcom/tencent/bugly/legu/crashreport/crash/d;->a(Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;)V

    goto :goto_0
.end method
