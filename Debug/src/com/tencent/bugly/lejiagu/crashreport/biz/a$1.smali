.class final Lcom/tencent/bugly/lejiagu/crashreport/biz/a$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/bugly/lejiagu/proguard/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/lejiagu/crashreport/biz/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lcom/tencent/bugly/lejiagu/crashreport/biz/a;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/lejiagu/crashreport/biz/a;Ljava/util/List;)V
    .registers 3

    .prologue
    .line 256
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/crashreport/biz/a$1;->b:Lcom/tencent/bugly/lejiagu/crashreport/biz/a;

    iput-object p2, p0, Lcom/tencent/bugly/lejiagu/crashreport/biz/a$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 7

    .prologue
    .line 265
    if-eqz p1, :cond_28

    .line 266
    const-string v0, "up success do final"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 268
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/biz/a$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/UserInfoBean;

    .line 269
    iput-wide v1, v0, Lcom/tencent/bugly/lejiagu/crashreport/biz/UserInfoBean;->f:J

    .line 270
    iget-object v4, p0, Lcom/tencent/bugly/lejiagu/crashreport/biz/a$1;->b:Lcom/tencent/bugly/lejiagu/crashreport/biz/a;

    invoke-static {v4, v0}, Lcom/tencent/bugly/lejiagu/crashreport/biz/a;->a(Lcom/tencent/bugly/lejiagu/crashreport/biz/a;Lcom/tencent/bugly/lejiagu/crashreport/biz/UserInfoBean;)V

    goto :goto_14

    .line 273
    :cond_28
    return-void
.end method
