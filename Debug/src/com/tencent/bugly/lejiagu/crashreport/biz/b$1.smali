.class final Lcom/tencent/bugly/lejiagu/crashreport/biz/b$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->a(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/BuglyStrategy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/tencent/bugly/lejiagu/BuglyStrategy;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/BuglyStrategy;)V
    .registers 3

    .prologue
    .line 191
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b$1;->b:Lcom/tencent/bugly/lejiagu/BuglyStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/biz/b$1;->b:Lcom/tencent/bugly/lejiagu/BuglyStrategy;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/biz/b;->b(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/BuglyStrategy;)V

    .line 196
    return-void
.end method
