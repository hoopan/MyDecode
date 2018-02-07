.class public Lcom/tencent/bugly/lejiagu/CrashModule;
.super Lcom/tencent/bugly/lejiagu/a;
.source "BUGLY"


# static fields
.field public static final MODULE_ID:I = 0x3ec

.field private static c:Z

.field private static d:Lcom/tencent/bugly/lejiagu/CrashModule;


# instance fields
.field private a:J

.field private b:Lcom/tencent/bugly/lejiagu/BuglyStrategy$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/bugly/lejiagu/CrashModule;->c:Z

    .line 23
    new-instance v0, Lcom/tencent/bugly/lejiagu/CrashModule;

    invoke-direct {v0}, Lcom/tencent/bugly/lejiagu/CrashModule;-><init>()V

    sput-object v0, Lcom/tencent/bugly/lejiagu/CrashModule;->d:Lcom/tencent/bugly/lejiagu/CrashModule;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/tencent/bugly/lejiagu/a;-><init>()V

    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/BuglyStrategy;)V
    .locals 5

    .prologue
    .line 69
    monitor-enter p0

    if-nez p2, :cond_1

    .line 88
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 73
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->getLibBuglySOFilePath()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 75
    invoke-static {p1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v1

    iput-object v0, v1, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->k:Ljava/lang/String;

    .line 76
    const-string v1, "setted libBugly.so file path :%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 79
    :cond_2
    invoke-virtual {p2}, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->getCrashHandleCallback()Lcom/tencent/bugly/lejiagu/BuglyStrategy$a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 80
    invoke-virtual {p2}, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->getCrashHandleCallback()Lcom/tencent/bugly/lejiagu/BuglyStrategy$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/CrashModule;->b:Lcom/tencent/bugly/lejiagu/BuglyStrategy$a;

    .line 81
    const-string v0, "setted CrashHanldeCallback"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 84
    :cond_3
    invoke-virtual {p2}, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->getAppReportDelay()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 85
    invoke-virtual {p2}, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->getAppReportDelay()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/lejiagu/CrashModule;->a:J

    .line 86
    const-string v0, "setted delay: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/tencent/bugly/lejiagu/CrashModule;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance()Lcom/tencent/bugly/lejiagu/CrashModule;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/tencent/bugly/lejiagu/CrashModule;->d:Lcom/tencent/bugly/lejiagu/CrashModule;

    return-object v0
.end method

.method public static hasInitialized()Z
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/CrashModule;->c:Z

    return v0
.end method


# virtual methods
.method public init(Landroid/content/Context;ZLcom/tencent/bugly/lejiagu/BuglyStrategy;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 34
    if-eqz p1, :cond_0

    sget-boolean v0, Lcom/tencent/bugly/lejiagu/CrashModule;->c:Z

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/lejiagu/CrashModule;->c:Z

    .line 38
    invoke-static {p1}, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->setContext(Landroid/content/Context;)V

    .line 39
    invoke-direct {p0, p1, p3}, Lcom/tencent/bugly/lejiagu/CrashModule;->a(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/BuglyStrategy;)V

    .line 40
    const/16 v0, 0x3ec

    iget-object v3, p0, Lcom/tencent/bugly/lejiagu/CrashModule;->b:Lcom/tencent/bugly/lejiagu/BuglyStrategy$a;

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->a(ILandroid/content/Context;ZLcom/tencent/bugly/lejiagu/BuglyStrategy$a;Lcom/tencent/bugly/lejiagu/proguard/l;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->a()Lcom/tencent/bugly/lejiagu/crashreport/crash/c;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->e()V

    .line 45
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->isEnableNativeCrashMonitor()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 46
    :cond_2
    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->g()V

    .line 51
    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/tencent/bugly/lejiagu/BuglyStrategy;->isEnableANRCrashMonitor()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 52
    :cond_3
    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->h()V

    .line 59
    :goto_2
    sput-object p1, Lcom/tencent/bugly/lejiagu/crashreport/inner/InnerAPI;->context:Landroid/content/Context;

    .line 62
    invoke-static {p1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/d;->a(Landroid/content/Context;)V

    .line 65
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->a()Lcom/tencent/bugly/lejiagu/crashreport/crash/c;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/bugly/lejiagu/CrashModule;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->a(J)V

    goto :goto_0

    .line 48
    :cond_4
    const-string v1, "[crash] Closed native crash monitor!"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->f()V

    goto :goto_1

    .line 54
    :cond_5
    const-string v1, "[crash] Closed ANR monitor!"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->i()V

    goto :goto_2
.end method

.method public onDbCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 105
    const-string v1, " CREATE TABLE t_cr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ( _id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER PRIMARY KEY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , _tm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , _s1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " text"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , _up"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , _me"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , _uc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , _dt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " blob"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, "create %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public onServerStrategyChanged(Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;)V
    .locals 1

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->a()Lcom/tencent/bugly/lejiagu/crashreport/crash/c;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {v0, p1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->a(Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;)V

    .line 99
    :cond_1
    invoke-static {p1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/d;->a(Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;)V

    goto :goto_0
.end method
