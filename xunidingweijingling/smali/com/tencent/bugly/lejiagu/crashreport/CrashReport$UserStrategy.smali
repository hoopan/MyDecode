.class public Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;
.super Lcom/tencent/bugly/lejiagu/BuglyStrategy;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserStrategy"
.end annotation


# instance fields
.field private a:Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$CrashHandleCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 853
    invoke-direct {p0}, Lcom/tencent/bugly/lejiagu/BuglyStrategy;-><init>()V

    .line 854
    return-void
.end method


# virtual methods
.method public bridge synthetic getCrashHandleCallback()Lcom/tencent/bugly/lejiagu/BuglyStrategy$a;
    .locals 1

    .prologue
    .line 849
    invoke-virtual {p0}, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->getCrashHandleCallback()Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$CrashHandleCallback;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCrashHandleCallback()Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$CrashHandleCallback;
    .locals 1

    .prologue
    .line 863
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->a:Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$CrashHandleCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCrashHandleCallback(Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$CrashHandleCallback;)V
    .locals 1

    .prologue
    .line 873
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->a:Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$CrashHandleCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 874
    monitor-exit p0

    return-void

    .line 873
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
