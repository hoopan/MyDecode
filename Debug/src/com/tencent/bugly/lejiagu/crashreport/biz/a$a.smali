.class final Lcom/tencent/bugly/lejiagu/crashreport/biz/a$a;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/lejiagu/crashreport/biz/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/tencent/bugly/lejiagu/crashreport/biz/UserInfoBean;

.field private synthetic c:Lcom/tencent/bugly/lejiagu/crashreport/biz/a;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/lejiagu/crashreport/biz/a;Lcom/tencent/bugly/lejiagu/crashreport/biz/UserInfoBean;Z)V
    .registers 4

    .prologue
    .line 109
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/crashreport/biz/a$a;->c:Lcom/tencent/bugly/lejiagu/crashreport/biz/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p2, p0, Lcom/tencent/bugly/lejiagu/crashreport/biz/a$a;->b:Lcom/tencent/bugly/lejiagu/crashreport/biz/UserInfoBean;

    .line 111
    iput-boolean p3, p0, Lcom/tencent/bugly/lejiagu/crashreport/biz/a$a;->a:Z

    .line 112
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/biz/a$a;->b:Lcom/tencent/bugly/lejiagu/crashreport/biz/UserInfoBean;

    if-eqz v0, :cond_23

    .line 129
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/biz/a$a;->b:Lcom/tencent/bugly/lejiagu/crashreport/biz/UserInfoBean;

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/UserInfoBean;->j:Ljava/lang/String;

    .line 131
    :cond_14
    const-string v0, "record userinfo"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/biz/a$a;->c:Lcom/tencent/bugly/lejiagu/crashreport/biz/a;

    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/biz/a$a;->b:Lcom/tencent/bugly/lejiagu/crashreport/biz/UserInfoBean;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/biz/a;->a(Lcom/tencent/bugly/lejiagu/crashreport/biz/a;Lcom/tencent/bugly/lejiagu/crashreport/biz/UserInfoBean;)V

    .line 134
    :cond_23
    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/biz/a$a;->a:Z

    if-eqz v0, :cond_2c

    .line 135
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/biz/a$a;->c:Lcom/tencent/bugly/lejiagu/crashreport/biz/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/biz/a;->b()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 142
    :cond_2c
    :goto_2c
    return-void

    .line 137
    :catch_2d
    move-exception v0

    .line 138
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 139
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2c
.end method
