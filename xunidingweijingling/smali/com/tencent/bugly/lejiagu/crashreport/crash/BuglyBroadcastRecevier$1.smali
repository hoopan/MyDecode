.class final Lcom/tencent/bugly/lejiagu/crashreport/crash/BuglyBroadcastRecevier$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/lejiagu/crashreport/crash/BuglyBroadcastRecevier;->a(Landroid/content/Context;Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/tencent/bugly/lejiagu/crashreport/crash/BuglyBroadcastRecevier;)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->a:Lcom/tencent/bugly/lejiagu/crashreport/biz/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/biz/a;->b()V

    .line 189
    return-void
.end method