.class public final Lcom/tencent/bugly/lejiagu/crashreport/crash/d;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static a:Lcom/tencent/bugly/lejiagu/proguard/x;

.field private static b:Lcom/tencent/bugly/lejiagu/proguard/w;

.field private static c:Lcom/tencent/bugly/lejiagu/crashreport/crash/h5/b;


# direct methods
.method static synthetic a()V
    .registers 6

    .prologue
    const/4 v5, 0x0

    .line 17
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v1

    :try_start_5
    const-string v0, "com.tencent.bugly.unity.UnityAgent"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v0, "com.tencent.bugly"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "lejiagu"

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_31
    const-string v3, "sdkPackageName"
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_33} :catch_7a

    :try_start_33
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3f} :catch_8e
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_3f} :catch_7a

    :goto_3f
    :try_start_3f
    const-string v0, "com.tencent.bugly.cocos.Cocos2dxAgent"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v0, "com.tencent.bugly"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "lejiagu"

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6b
    const-string v1, "sdkPackageName"
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_6d} :catch_83

    :try_start_6d
    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_79} :catch_8c
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_79} :catch_83

    :goto_79
    return-void

    :catch_7a
    move-exception v0

    const-string v0, "no unity agent"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_3f

    :catch_83
    move-exception v0

    const-string v0, "no cocos agent"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_79

    :catch_8c
    move-exception v0

    goto :goto_79

    :catch_8e
    move-exception v0

    goto :goto_3f
.end method

.method public static a(Landroid/content/Context;)V
    .registers 8

    .prologue
    .line 24
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->a()Lcom/tencent/bugly/lejiagu/crashreport/crash/c;

    move-result-object v6

    .line 28
    if-nez v6, :cond_7

    .line 53
    :goto_6
    return-void

    .line 32
    :cond_7
    new-instance v0, Lcom/tencent/bugly/lejiagu/proguard/x;

    iget-object v2, v6, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->k:Lcom/tencent/bugly/lejiagu/crashreport/crash/b;

    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    move-result-object v3

    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v4

    iget-object v5, v6, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->l:Lcom/tencent/bugly/lejiagu/BuglyStrategy$a;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/proguard/x;-><init>(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/crashreport/crash/b;Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;Lcom/tencent/bugly/lejiagu/BuglyStrategy$a;)V

    sput-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/d;->a:Lcom/tencent/bugly/lejiagu/proguard/x;

    .line 36
    new-instance v0, Lcom/tencent/bugly/lejiagu/proguard/w;

    iget-object v2, v6, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->k:Lcom/tencent/bugly/lejiagu/crashreport/crash/b;

    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    move-result-object v3

    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v4

    iget-object v5, v6, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->l:Lcom/tencent/bugly/lejiagu/BuglyStrategy$a;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/proguard/w;-><init>(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/crashreport/crash/b;Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;Lcom/tencent/bugly/lejiagu/BuglyStrategy$a;)V

    sput-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/d;->b:Lcom/tencent/bugly/lejiagu/proguard/w;

    .line 40
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/h5/b;

    iget-object v2, v6, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->k:Lcom/tencent/bugly/lejiagu/crashreport/crash/b;

    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    move-result-object v3

    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v4

    iget-object v5, v6, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->l:Lcom/tencent/bugly/lejiagu/BuglyStrategy$a;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/crashreport/crash/h5/b;-><init>(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/crashreport/crash/b;Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;Lcom/tencent/bugly/lejiagu/BuglyStrategy$a;)V

    sput-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/d;->c:Lcom/tencent/bugly/lejiagu/crashreport/crash/h5/b;

    .line 46
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/t;->a()Lcom/tencent/bugly/lejiagu/proguard/t;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/d$1;

    invoke-direct {v1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/d$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/t;->b(Ljava/lang/Runnable;)Z

    goto :goto_6
.end method

.method public static a(Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;)V
    .registers 2

    .prologue
    .line 56
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/d;->b:Lcom/tencent/bugly/lejiagu/proguard/w;

    if-eqz v0, :cond_8

    .line 57
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/d;->b:Lcom/tencent/bugly/lejiagu/proguard/w;

    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->h:Z

    .line 60
    :cond_8
    return-void
.end method

.method public static a(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    .line 95
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/d;->b:Lcom/tencent/bugly/lejiagu/proguard/w;

    if-nez v0, :cond_5

    .line 114
    :goto_4
    return-void

    .line 98
    :cond_5
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/t;->a()Lcom/tencent/bugly/lejiagu/proguard/t;

    move-result-object v6

    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/d$3;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/crashreport/crash/d$3;-><init>(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/tencent/bugly/lejiagu/proguard/t;->b(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method public static a(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 67
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/d;->a:Lcom/tencent/bugly/lejiagu/proguard/x;

    if-nez v0, :cond_5

    .line 88
    :goto_4
    return-void

    .line 70
    :cond_5
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/t;->a()Lcom/tencent/bugly/lejiagu/proguard/t;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/d$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tencent/bugly/lejiagu/crashreport/crash/d$2;-><init>(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/t;->b(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method public static a(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/d;->c:Lcom/tencent/bugly/lejiagu/crashreport/crash/h5/b;

    if-nez v0, :cond_5

    .line 143
    :goto_4
    return-void

    .line 125
    :cond_5
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/t;->a()Lcom/tencent/bugly/lejiagu/proguard/t;

    move-result-object v6

    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/d$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/crashreport/crash/d$4;-><init>(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v6, v0}, Lcom/tencent/bugly/lejiagu/proguard/t;->b(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method static synthetic b()Lcom/tencent/bugly/lejiagu/proguard/x;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/d;->a:Lcom/tencent/bugly/lejiagu/proguard/x;

    return-object v0
.end method

.method static synthetic c()Lcom/tencent/bugly/lejiagu/proguard/w;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/d;->b:Lcom/tencent/bugly/lejiagu/proguard/w;

    return-object v0
.end method

.method static synthetic d()Lcom/tencent/bugly/lejiagu/crashreport/crash/h5/b;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/d;->c:Lcom/tencent/bugly/lejiagu/crashreport/crash/h5/b;

    return-object v0
.end method
