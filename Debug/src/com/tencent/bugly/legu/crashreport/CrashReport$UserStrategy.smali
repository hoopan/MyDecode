.class public Lcom/tencent/bugly/legu/crashreport/CrashReport$UserStrategy;
.super Lcom/tencent/bugly/legu/BuglyStrategy;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/legu/crashreport/CrashReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserStrategy"
.end annotation


# instance fields
.field private a:Lcom/tencent/bugly/legu/crashreport/CrashReport$CrashHandleCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 860
    invoke-direct {p0}, Lcom/tencent/bugly/legu/BuglyStrategy;-><init>()V

    .line 861
    return-void
.end method


# virtual methods
.method public bridge synthetic getCrashHandleCallback()Lcom/tencent/bugly/legu/BuglyStrategy$a;
    .registers 2

    .prologue
    .line 856
    invoke-virtual {p0}, Lcom/tencent/bugly/legu/crashreport/CrashReport$UserStrategy;->getCrashHandleCallback()Lcom/tencent/bugly/legu/crashreport/CrashReport$CrashHandleCallback;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCrashHandleCallback()Lcom/tencent/bugly/legu/crashreport/CrashReport$CrashHandleCallback;
    .registers 2

    .prologue
    .line 870
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/CrashReport$UserStrategy;->a:Lcom/tencent/bugly/legu/crashreport/CrashReport$CrashHandleCallback;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCrashHandleCallback(Lcom/tencent/bugly/legu/crashreport/CrashReport$CrashHandleCallback;)V
    .registers 3

    .prologue
    .line 880
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/tencent/bugly/legu/crashreport/CrashReport$UserStrategy;->a:Lcom/tencent/bugly/legu/crashreport/CrashReport$CrashHandleCallback;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 881
    monitor-exit p0

    return-void

    .line 880
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
