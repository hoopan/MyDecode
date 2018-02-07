.class Lcom/tencent/StubShell/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/StubShell/TxAppEntry;


# direct methods
.method constructor <init>(Lcom/tencent/StubShell/TxAppEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/StubShell/c;->a:Lcom/tencent/StubShell/TxAppEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/tencent/StubShell/SystemInfoException;

    invoke-static {}, Lcom/tencent/StubShell/TxAppEntry;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/StubShell/TxAppEntry;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/StubShell/SystemInfoException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/bugly/legu/crashreport/CrashReport;->postCatchedException(Ljava/lang/Throwable;)V

    return-void
.end method
