.class public Lcom/tencent/bugly/lejiagu/Bugly;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static a:Z

.field public static enable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/lejiagu/Bugly;->enable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/bugly/lejiagu/Bugly;->init(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/lejiagu/BuglyStrategy;)V

    .line 20
    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/lejiagu/BuglyStrategy;)V
    .locals 3

    .prologue
    .line 24
    const-class v1, Lcom/tencent/bugly/lejiagu/Bugly;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/Bugly;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 33
    :goto_0
    monitor-exit v1

    return-void

    .line 27
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/tencent/bugly/lejiagu/Bugly;->a:Z

    .line 28
    if-nez p0, :cond_2

    .line 29
    :cond_1
    :goto_1
    if-nez p0, :cond_3

    .line 30
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;

    const-string v2, "init arg \'context\' should not be null!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 28
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p0, v0

    goto :goto_1

    .line 32
    :cond_3
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/bugly/lejiagu/b;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/lejiagu/BuglyStrategy;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
