.class public final Lcom/tencent/bugly/legu/crashreport/common/info/a;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static V:Lcom/tencent/bugly/legu/crashreport/common/info/a;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:J

.field private K:J

.field private L:J

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/legu/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation
.end field

.field private P:Z

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/Boolean;

.field private T:Ljava/lang/String;

.field private U:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/legu/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation
.end field

.field private W:I

.field private X:I

.field private Y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final a:J

.field private final aa:Ljava/lang/Object;

.field private final ab:Ljava/lang/Object;

.field public final b:B

.field public c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public h:J

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public n:Z

.field public o:Ljava/lang/String;

.field public p:J

.field public q:J

.field public r:J

.field public s:J

.field public t:Z

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Z

.field public y:Z

.field private final z:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->V:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 10

    .prologue
    const-wide/16 v6, -0x1

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->C:Ljava/lang/String;

    .line 42
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->D:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->E:Ljava/lang/String;

    .line 44
    iput-object v3, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->F:Ljava/lang/String;

    .line 47
    iput-object v3, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->G:Ljava/lang/String;

    .line 48
    iput-object v3, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->H:Ljava/lang/String;

    .line 49
    iput-object v3, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->I:Ljava/lang/String;

    .line 51
    iput-wide v6, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->J:J

    .line 52
    iput-wide v6, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->K:J

    .line 53
    iput-wide v6, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->L:J

    .line 54
    iput-object v3, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->M:Ljava/lang/String;

    .line 55
    iput-object v3, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->N:Ljava/lang/String;

    .line 56
    iput-object v3, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->O:Ljava/util/Map;

    .line 57
    iput-boolean v1, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->P:Z

    .line 58
    iput-object v3, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->Q:Ljava/lang/String;

    .line 59
    iput-object v3, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->i:Ljava/lang/String;

    .line 60
    iput-object v3, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->R:Ljava/lang/String;

    .line 61
    iput-object v3, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->j:Ljava/lang/String;

    .line 62
    iput-object v3, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->S:Ljava/lang/Boolean;

    .line 63
    iput-object v3, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->T:Ljava/lang/String;

    .line 64
    iput-object v3, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->k:Ljava/lang/String;

    .line 65
    iput-object v3, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->l:Ljava/lang/String;

    .line 66
    iput-object v3, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->U:Ljava/util/Map;

    .line 68
    iput-object v3, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->m:Ljava/util/List;

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->W:I

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->X:I

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->Y:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->Z:Ljava/util/Map;

    .line 77
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->o:Ljava/lang/String;

    .line 78
    iput-wide v4, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->p:J

    .line 79
    iput-wide v4, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->q:J

    .line 80
    iput-wide v4, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->r:J

    .line 81
    iput-wide v4, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->s:J

    .line 83
    iput-boolean v2, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->t:Z

    .line 84
    iput-object v3, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->u:Ljava/lang/String;

    .line 85
    iput-object v3, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->v:Ljava/lang/String;

    .line 87
    iput-object v3, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->w:Ljava/lang/String;

    .line 88
    iput-boolean v2, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->x:Z

    .line 89
    iput-boolean v2, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->y:Z

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->aa:Ljava/lang/Object;

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->ab:Ljava/lang/Object;

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a:J

    .line 100
    if-nez p1, :cond_166

    move-object v0, p1

    :cond_83
    :goto_83
    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->z:Landroid/content/Context;

    .line 102
    iput-byte v1, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->b:B

    .line 103
    invoke-static {p1}, Lcom/tencent/bugly/legu/crashreport/common/info/AppInfo;->b(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_9d

    invoke-static {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/AppInfo;->a(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->i:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/AppInfo;->b(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->v:Ljava/lang/String;

    .line 104
    :cond_9d
    invoke-static {p1}, Lcom/tencent/bugly/legu/crashreport/common/info/AppInfo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->c:Ljava/lang/String;

    .line 105
    invoke-static {p1}, Lcom/tencent/bugly/legu/crashreport/common/info/AppInfo;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->d:Ljava/lang/String;

    .line 106
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/a;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->e:Ljava/lang/String;

    .line 107
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->f:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Android "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/legu/proguard/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",level "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/bugly/legu/proguard/a;->d()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->g:Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    invoke-static {p1}, Lcom/tencent/bugly/legu/crashreport/common/info/AppInfo;->d(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_147

    :try_start_f8
    invoke-static {v3}, Lcom/tencent/bugly/legu/crashreport/common/info/AppInfo;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->m:Ljava/util/List;

    const-string v0, "BUGLY_APPID"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_10a

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->R:Ljava/lang/String;

    :cond_10a
    const-string v0, "BUGLY_APP_VERSION"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_116

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->i:Ljava/lang/String;

    :cond_116
    const-string v0, "BUGLY_APP_CHANNEL"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_122

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->j:Ljava/lang/String;

    :cond_122
    const-string v0, "BUGLY_ENABLE_DEBUG"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_13b

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16f

    move v0, v1

    :goto_139
    iput-boolean v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->t:Z

    :cond_13b
    const-string v0, "com.tencent.rdm.uuid"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_147

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->w:Ljava/lang/String;
    :try_end_147
    .catch Ljava/lang/Throwable; {:try_start_f8 .. :try_end_147} :catch_171

    .line 113
    :cond_147
    :goto_147
    :try_start_147
    const-string v0, "bugly_db_legu"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_15e

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->y:Z

    .line 117
    const-string v0, "App is first time to be installed on the device."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_15e
    .catch Ljava/lang/Throwable; {:try_start_147 .. :try_end_15e} :catch_17c

    .line 124
    :cond_15e
    :goto_15e
    const-string v0, "com info create end"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 125
    return-void

    .line 100
    :cond_166
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_83

    move-object v0, p1

    goto/16 :goto_83

    :cond_16f
    move v0, v2

    .line 110
    goto :goto_139

    :catch_171
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_147

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_147

    .line 119
    :catch_17c
    move-exception v0

    .line 120
    sget-boolean v1, Lcom/tencent/bugly/legu/b;->b:Z

    if-eqz v1, :cond_15e

    .line 121
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_15e
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/legu/crashreport/common/info/a;
    .registers 2

    .prologue
    .line 189
    const-class v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tencent/bugly/legu/crashreport/common/info/a;->V:Lcom/tencent/bugly/legu/crashreport/common/info/a;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/bugly/legu/crashreport/common/info/a;
    .registers 3

    .prologue
    .line 182
    const-class v1, Lcom/tencent/bugly/legu/crashreport/common/info/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->V:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    if-nez v0, :cond_e

    .line 183
    new-instance v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->V:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    .line 185
    :cond_e
    sget-object v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->V:Lcom/tencent/bugly/legu/crashreport/common/info/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 182
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 193
    const-string v0, "2.1.9"

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized A()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 483
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->Z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_14

    move-result v0

    if-gtz v0, :cond_c

    .line 484
    const/4 v0, 0x0

    .line 487
    :goto_a
    monitor-exit p0

    return-object v0

    :cond_c
    :try_start_c
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->Z:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_14

    goto :goto_a

    .line 483
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized B()I
    .registers 2

    .prologue
    .line 501
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->W:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized C()I
    .registers 2

    .prologue
    .line 517
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->X:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized D()Z
    .registers 2

    .prologue
    .line 521
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->z:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/AppInfo;->e(Landroid/content/Context;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized E()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/legu/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 529
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public final declared-synchronized F()I
    .registers 2

    .prologue
    .line 534
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/a;->d()I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .registers 6

    .prologue
    .line 493
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->W:I

    .line 494
    if-eq v0, p1, :cond_1f

    .line 495
    iput p1, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->W:I

    .line 496
    const-string v1, "user scene tag %d changed to tag %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget v3, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->W:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 498
    :cond_1f
    monitor-exit p0

    return-void

    .line 493
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 221
    iput-object p1, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->R:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 454
    monitor-enter p0

    if-eqz p1, :cond_4a

    :try_start_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4a

    move v2, v0

    :goto_10
    if-nez v2, :cond_20

    if-eqz p2, :cond_4c

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4c

    :goto_1e
    if-eqz v0, :cond_4e

    .line 455
    :cond_20
    const-string v0, "key&value should not be empty %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_48
    .catchall {:try_start_5 .. :try_end_48} :catchall_54

    .line 459
    :goto_48
    monitor-exit p0

    return-void

    :cond_4a
    move v2, v1

    .line 454
    goto :goto_10

    :cond_4c
    move v0, v1

    goto :goto_1e

    .line 458
    :cond_4e
    :try_start_4e
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->Y:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_54

    goto :goto_48

    .line 454
    :catchall_54
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 229
    monitor-enter p0

    if-nez p1, :cond_5

    .line 230
    :try_start_3
    const-string p1, "10000"

    .line 231
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->C:Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    .line 232
    monitor-exit p0

    return-void

    .line 229
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 474
    monitor-enter p0

    if-eqz p1, :cond_4a

    :try_start_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4a

    move v2, v0

    :goto_10
    if-nez v2, :cond_20

    if-eqz p2, :cond_4c

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4c

    :goto_1e
    if-eqz v0, :cond_4e

    .line 475
    :cond_20
    const-string v0, "server key&value should not be empty %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_48
    .catchall {:try_start_5 .. :try_end_48} :catchall_54

    .line 480
    :goto_48
    monitor-exit p0

    return-void

    :cond_4a
    move v2, v1

    .line 474
    goto :goto_10

    :cond_4c
    move v0, v1

    goto :goto_1e

    .line 479
    :cond_4e
    :try_start_4e
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->Z:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_54

    goto :goto_48

    .line 474
    :catchall_54
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 197
    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->aa:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    :try_start_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->A:Ljava/lang/String;

    .line 199
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final declared-synchronized c(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 244
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->B:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 245
    monitor-exit p0

    return-void

    .line 244
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Ljava/lang/String;
    .registers 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->A:Ljava/lang/String;

    if-nez v0, :cond_16

    .line 204
    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->aa:Ljava/lang/Object;

    monitor-enter v1

    .line 205
    :try_start_7
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->A:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 206
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->A:Ljava/lang/String;

    .line 208
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_19

    .line 210
    :cond_16
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->A:Ljava/lang/String;

    return-object v0

    .line 208
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final declared-synchronized d(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 252
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->D:Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 253
    monitor-exit p0

    return-void

    .line 252
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 214
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_11

    const/4 v1, 0x0

    :goto_e
    if-nez v1, :cond_13

    .line 217
    :goto_10
    return-object v0

    .line 214
    :cond_11
    const/4 v1, 0x1

    goto :goto_e

    .line 217
    :cond_13
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->R:Ljava/lang/String;

    goto :goto_10
.end method

.method public final declared-synchronized e(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 260
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->E:Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 261
    monitor-exit p0

    return-void

    .line 260
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 225
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->C:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 434
    monitor-enter p0

    if-eqz p1, :cond_2c

    :try_start_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2c

    :goto_f
    if-eqz v0, :cond_2e

    .line 435
    const-string v0, "key should not be empty %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_37

    .line 436
    const/4 v0, 0x0

    .line 438
    :goto_2a
    monitor-exit p0

    return-object v0

    :cond_2c
    move v0, v1

    .line 434
    goto :goto_f

    .line 438
    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->Y:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_37

    goto :goto_2a

    .line 434
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()Ljava/lang/String;
    .registers 3

    .prologue
    .line 235
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->B:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 236
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->B:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_3b

    .line 239
    :goto_7
    monitor-exit p0

    return-object v0

    .line 238
    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->B:Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->B:Ljava/lang/String;
    :try_end_3a
    .catchall {:try_start_9 .. :try_end_3a} :catchall_3b

    goto :goto_7

    .line 235
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 446
    monitor-enter p0

    if-eqz p1, :cond_2c

    :try_start_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2c

    :goto_f
    if-eqz v0, :cond_2e

    .line 447
    const-string v0, "key should not be empty %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_37

    .line 448
    const/4 v0, 0x0

    .line 450
    :goto_2a
    monitor-exit p0

    return-object v0

    :cond_2c
    move v0, v1

    .line 446
    goto :goto_f

    .line 450
    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->Y:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_37

    goto :goto_2a

    .line 446
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 248
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->D:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 256
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->E:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 264
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->P:Z

    if-nez v0, :cond_9

    .line 265
    const-string v0, ""
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_18

    .line 271
    :goto_7
    monitor-exit p0

    return-object v0

    .line 268
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->F:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 269
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->z:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->F:Ljava/lang/String;

    .line 271
    :cond_15
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->F:Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_18

    goto :goto_7

    .line 264
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 275
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->P:Z

    if-nez v0, :cond_9

    .line 276
    const-string v0, ""
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_18

    .line 282
    :goto_7
    monitor-exit p0

    return-object v0

    .line 279
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->G:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 280
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->z:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->G:Ljava/lang/String;

    .line 282
    :cond_15
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->G:Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_18

    goto :goto_7

    .line 275
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized l()Ljava/lang/String;
    .registers 2

    .prologue
    .line 286
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->P:Z

    if-nez v0, :cond_9

    .line 287
    const-string v0, ""
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_18

    .line 293
    :goto_7
    monitor-exit p0

    return-object v0

    .line 290
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->H:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 291
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->z:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->H:Ljava/lang/String;

    .line 293
    :cond_15
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->H:Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_18

    goto :goto_7

    .line 286
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized m()Ljava/lang/String;
    .registers 2

    .prologue
    .line 297
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->P:Z

    if-nez v0, :cond_9

    .line 298
    const-string v0, ""
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_18

    .line 304
    :goto_7
    monitor-exit p0

    return-object v0

    .line 301
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->I:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 302
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->z:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->I:Ljava/lang/String;

    .line 304
    :cond_15
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->I:Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_18

    goto :goto_7

    .line 297
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized n()J
    .registers 5

    .prologue
    .line 308
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->J:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_f

    .line 309
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/a;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->J:J

    .line 311
    :cond_f
    iget-wide v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->J:J
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-wide v0

    .line 308
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized o()J
    .registers 5

    .prologue
    .line 315
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->K:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_f

    .line 316
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/a;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->K:J

    .line 318
    :cond_f
    iget-wide v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->K:J
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-wide v0

    .line 315
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized p()J
    .registers 5

    .prologue
    .line 322
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->L:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_f

    .line 323
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/a;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->L:J

    .line 325
    :cond_f
    iget-wide v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->L:J
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-wide v0

    .line 322
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized q()Ljava/lang/String;
    .registers 2

    .prologue
    .line 329
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->M:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 330
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->M:Ljava/lang/String;

    .line 332
    :cond_b
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->M:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 329
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final r()Ljava/lang/String;
    .registers 4

    .prologue
    .line 336
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->N:Ljava/lang/String;

    if-nez v0, :cond_16

    .line 337
    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->ab:Ljava/lang/Object;

    monitor-enter v1

    .line 338
    :try_start_7
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->N:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 339
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->z:Landroid/content/Context;

    const-string v2, "ro.board.platform"

    invoke-static {v0, v2}, Lcom/tencent/bugly/legu/proguard/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->N:Ljava/lang/String;

    .line 341
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_19

    .line 343
    :cond_16
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->N:Ljava/lang/String;

    return-object v0

    .line 341
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final declared-synchronized s()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/legu/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .registers 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->Q:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 393
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/a;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->Q:Ljava/lang/String;

    .line 395
    :cond_a
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->Q:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized u()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 403
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->S:Ljava/lang/Boolean;

    if-nez v0, :cond_11

    .line 404
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->z:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/a;->f(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->S:Ljava/lang/Boolean;

    .line 406
    :cond_11
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->S:Ljava/lang/Boolean;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    .line 403
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized v()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 414
    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->T:Ljava/lang/String;

    if-nez v2, :cond_51

    .line 415
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->z:Landroid/content/Context;

    const-string v2, "ro.miui.ui.version.name"

    invoke-static {v4, v2}, Lcom/tencent/bugly/legu/proguard/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_55

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_55

    move v2, v0

    :goto_21
    if-nez v2, :cond_57

    const-string v2, "fail"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "XiaoMi/MIUI/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->T:Ljava/lang/String;

    .line 416
    const-string v0, "rom:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->T:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 418
    :cond_51
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->T:Ljava/lang/String;
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_2a5

    monitor-exit p0

    return-object v0

    :cond_55
    move v2, v1

    .line 415
    goto :goto_21

    :cond_57
    :try_start_57
    const-string v2, "ro.build.version.emui"

    invoke-static {v4, v2}, Lcom/tencent/bugly/legu/proguard/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_84

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_84

    move v2, v0

    :goto_6a
    if-nez v2, :cond_86

    const-string v2, "fail"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_86

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HuaWei/EMOTION/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    :cond_84
    move v2, v1

    goto :goto_6a

    :cond_86
    const-string v2, "ro.lenovo.series"

    invoke-static {v4, v2}, Lcom/tencent/bugly/legu/proguard/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b9

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b9

    move v2, v0

    :goto_99
    if-nez v2, :cond_bb

    const-string v2, "fail"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bb

    const-string v0, "ro.build.version.incremental"

    invoke-static {v4, v0}, Lcom/tencent/bugly/legu/proguard/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Lenovo/VIBE/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    :cond_b9
    move v2, v1

    goto :goto_99

    :cond_bb
    const-string v2, "ro.build.nubia.rom.name"

    invoke-static {v4, v2}, Lcom/tencent/bugly/legu/proguard/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f9

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_f9

    move v2, v0

    :goto_ce
    if-nez v2, :cond_fb

    const-string v2, "fail"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fb

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Zte/NUBIA/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.build.nubia.rom.code"

    invoke-static {v4, v1}, Lcom/tencent/bugly/legu/proguard/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3a

    :cond_f9
    move v2, v1

    goto :goto_ce

    :cond_fb
    const-string v2, "ro.meizu.product.model"

    invoke-static {v4, v2}, Lcom/tencent/bugly/legu/proguard/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_12f

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_12f

    move v2, v0

    :goto_10e
    if-nez v2, :cond_131

    const-string v2, "fail"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_131

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Meizu/FLYME/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ro.build.display.id"

    invoke-static {v4, v1}, Lcom/tencent/bugly/legu/proguard/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3a

    :cond_12f
    move v2, v1

    goto :goto_10e

    :cond_131
    const-string v2, "ro.build.version.opporom"

    invoke-static {v4, v2}, Lcom/tencent/bugly/legu/proguard/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_15f

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_15f

    move v2, v0

    :goto_144
    if-nez v2, :cond_161

    const-string v2, "fail"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_161

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Oppo/COLOROS/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3a

    :cond_15f
    move v2, v1

    goto :goto_144

    :cond_161
    const-string v2, "ro.vivo.os.build.display.id"

    invoke-static {v4, v2}, Lcom/tencent/bugly/legu/proguard/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_18f

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_18f

    move v2, v0

    :goto_174
    if-nez v2, :cond_191

    const-string v2, "fail"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_191

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "vivo/FUNTOUCH/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3a

    :cond_18f
    move v2, v1

    goto :goto_174

    :cond_191
    const-string v2, "ro.aa.romver"

    invoke-static {v4, v2}, Lcom/tencent/bugly/legu/proguard/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1cf

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1cf

    move v2, v0

    :goto_1a4
    if-nez v2, :cond_1d1

    const-string v2, "fail"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "htc/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.build.description"

    invoke-static {v4, v1}, Lcom/tencent/bugly/legu/proguard/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3a

    :cond_1cf
    move v2, v1

    goto :goto_1a4

    :cond_1d1
    const-string v2, "ro.lewa.version"

    invoke-static {v4, v2}, Lcom/tencent/bugly/legu/proguard/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_20f

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_20f

    move v2, v0

    :goto_1e4
    if-nez v2, :cond_211

    const-string v2, "fail"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_211

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tcl/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.build.display.id"

    invoke-static {v4, v1}, Lcom/tencent/bugly/legu/proguard/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3a

    :cond_20f
    move v2, v1

    goto :goto_1e4

    :cond_211
    const-string v2, "ro.gn.gnromvernumber"

    invoke-static {v4, v2}, Lcom/tencent/bugly/legu/proguard/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_24f

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_24f

    move v2, v0

    :goto_224
    if-nez v2, :cond_251

    const-string v2, "fail"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_251

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "amigo/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.build.display.id"

    invoke-static {v4, v1}, Lcom/tencent/bugly/legu/proguard/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3a

    :cond_24f
    move v2, v1

    goto :goto_224

    :cond_251
    const-string v2, "ro.build.tyd.kbstyle_version"

    invoke-static {v4, v2}, Lcom/tencent/bugly/legu/proguard/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_27e

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_27e

    :goto_263
    if-nez v0, :cond_280

    const-string v0, "fail"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_280

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dido/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3a

    :cond_27e
    move v0, v1

    goto :goto_263

    :cond_280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ro.build.fingerprint"

    invoke-static {v4, v1}, Lcom/tencent/bugly/legu/proguard/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.build.rom.id"

    invoke-static {v4, v1}, Lcom/tencent/bugly/legu/proguard/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2a2
    .catchall {:try_start_57 .. :try_end_2a2} :catchall_2a5

    move-result-object v0

    goto/16 :goto_3a

    .line 414
    :catchall_2a5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized w()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 426
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->Y:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_14

    move-result v0

    if-gtz v0, :cond_c

    .line 427
    const/4 v0, 0x0

    .line 430
    :goto_a
    monitor-exit p0

    return-object v0

    :cond_c
    :try_start_c
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->Y:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_14

    goto :goto_a

    .line 426
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized x()V
    .registers 2

    .prologue
    .line 442
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->Y:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 443
    monitor-exit p0

    return-void

    .line 442
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized y()I
    .registers 2

    .prologue
    .line 462
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->Y:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized z()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->Y:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
