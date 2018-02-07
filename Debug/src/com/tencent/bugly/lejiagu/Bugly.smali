.class public Lcom/tencent/bugly/lejiagu/Bugly;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static a:Z

.field public static enable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/lejiagu/Bugly;->enable:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/bugly/lejiagu/Bugly;->init(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/lejiagu/BuglyStrategy;)V

    .line 20
    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/lejiagu/BuglyStrategy;)V
    .registers 7

    .prologue
    .line 24
    const-class v1, Lcom/tencent/bugly/lejiagu/Bugly;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/Bugly;->a:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_18

    if-eqz v0, :cond_9

    .line 33
    :goto_7
    monitor-exit v1

    return-void

    .line 27
    :cond_9
    const/4 v0, 0x1

    :try_start_a
    sput-boolean v0, Lcom/tencent/bugly/lejiagu/Bugly;->a:Z

    .line 28
    if-nez p0, :cond_1b

    .line 29
    :cond_e
    :goto_e
    if-nez p0, :cond_23

    .line 30
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;

    const-string v2, "init arg \'context\' should not be null!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/lejiagu/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_18

    .line 24
    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0

    .line 28
    :cond_1b
    :try_start_1b
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_e

    move-object p0, v0

    goto :goto_e

    .line 32
    :cond_23
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/bugly/lejiagu/b;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/lejiagu/BuglyStrategy;)V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_18

    goto :goto_7
.end method
