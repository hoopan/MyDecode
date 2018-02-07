.class public final Lcom/tencent/bugly/legu/proguard/m;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static a:Lcom/tencent/bugly/legu/proguard/m;

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/legu/proguard/m;->a:Lcom/tencent/bugly/legu/proguard/m;

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/bugly/legu/proguard/m;->b:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/legu/proguard/m;
    .locals 2

    .prologue
    .line 47
    const-class v0, Lcom/tencent/bugly/legu/proguard/m;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/legu/proguard/m;->a:Lcom/tencent/bugly/legu/proguard/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/bugly/legu/proguard/m;
    .locals 2

    .prologue
    .line 40
    const-class v1, Lcom/tencent/bugly/legu/proguard/m;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/legu/proguard/m;->a:Lcom/tencent/bugly/legu/proguard/m;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/tencent/bugly/legu/proguard/m;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/legu/proguard/m;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/bugly/legu/proguard/m;->a:Lcom/tencent/bugly/legu/proguard/m;

    .line 43
    :cond_0
    sget-object v0, Lcom/tencent/bugly/legu/proguard/m;->a:Lcom/tencent/bugly/legu/proguard/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized b(II)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 134
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lcom/tencent/bugly/legu/proguard/m;->d(I)J

    move-result-wide v1

    .line 135
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/o;->a()Lcom/tencent/bugly/legu/proguard/o;

    move-result-object v3

    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a()Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/bugly/legu/crashreport/common/info/a;->d:Ljava/lang/String;

    invoke-virtual {v3, p1, v4, v1, v2}, Lcom/tencent/bugly/legu/proguard/o;->a(ILjava/lang/String;J)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 139
    :goto_0
    monitor-exit p0

    return v0

    .line 137
    :catch_0
    move-exception v1

    :try_start_1
    const-string v1, "clearHistoryCrashRecord failed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(I)Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 60
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a()Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v0

    iget-object v2, v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->d:Ljava/lang/String;

    .line 61
    if-nez v2, :cond_0

    .line 62
    const-string v0, "process name is null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v6

    .line 82
    :goto_0
    monitor-exit p0

    return v0

    .line 65
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lcom/tencent/bugly/legu/proguard/m;->d(I)J

    move-result-wide v3

    .line 66
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/o;->a()Lcom/tencent/bugly/legu/proguard/o;

    move-result-object v0

    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a()Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "2.1.9"

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/legu/proguard/o;->a(ILjava/lang/String;JLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 67
    if-nez v2, :cond_1

    move v0, v6

    .line 68
    goto :goto_0

    .line 70
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    move v0, v6

    .line 71
    goto :goto_0

    :cond_2
    move v1, v6

    .line 73
    :goto_1
    add-int/lit8 v0, v1, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 74
    add-int/lit8 v0, v1, 0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/legu/proguard/l;

    iget-wide v3, v0, Lcom/tencent/bugly/legu/proguard/l;->c:J

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/legu/proguard/l;

    iget-wide v7, v0, Lcom/tencent/bugly/legu/proguard/l;->c:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr v3, v7

    const-wide/32 v7, 0x5265c00

    cmp-long v0, v3, v7

    if-gez v0, :cond_3

    .line 75
    const/4 v0, 0x1

    goto :goto_0

    .line 73
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    move v0, v6

    .line 78
    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "FrenquencyCrash failed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v6

    .line 82
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(I)Lcom/tencent/bugly/legu/proguard/l;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 87
    monitor-enter p0

    .line 89
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a()Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/bugly/legu/crashreport/common/info/a;->d:Ljava/lang/String;

    .line 90
    if-nez v1, :cond_0

    .line 91
    const-string v1, "process name is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :goto_0
    monitor-exit p0

    return-object v0

    .line 94
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/o;->a()Lcom/tencent/bugly/legu/proguard/o;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/tencent/bugly/legu/proguard/o;->a(ILjava/lang/String;)Lcom/tencent/bugly/legu/proguard/l;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    :try_start_2
    const-string v1, "getLatestCrashRecord failed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d(I)J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 149
    monitor-enter p0

    .line 150
    packed-switch p1, :pswitch_data_0

    .line 158
    :goto_0
    :pswitch_0
    monitor-exit p0

    return-wide v0

    .line 155
    :pswitch_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    sub-long/2addr v0, v2

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final declared-synchronized a(I)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 175
    monitor-enter p0

    .line 177
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/bugly/legu/proguard/m;->c(I)Lcom/tencent/bugly/legu/proguard/l;

    move-result-object v2

    .line 178
    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/tencent/bugly/legu/proguard/l;->c:J

    sub-long v2, v3, v5

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/tencent/bugly/legu/proguard/m;->b(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 184
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 186
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/tencent/bugly/legu/proguard/m;->b(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :cond_1
    :goto_1
    monitor-exit p0

    return v0

    :cond_2
    move v0, v1

    .line 178
    goto :goto_0

    .line 188
    :catch_0
    move-exception v1

    .line 189
    :try_start_1
    const-string v1, "canInit failed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(II)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 110
    monitor-enter p0

    .line 112
    :try_start_0
    new-instance v1, Lcom/tencent/bugly/legu/proguard/l;

    invoke-direct {v1}, Lcom/tencent/bugly/legu/proguard/l;-><init>()V

    .line 113
    const-wide/16 v2, 0x3ec

    iput-wide v2, v1, Lcom/tencent/bugly/legu/proguard/l;->a:J

    .line 114
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a()Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/bugly/legu/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/bugly/legu/proguard/l;->b:Ljava/lang/String;

    .line 115
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a()Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/bugly/legu/crashreport/common/info/a;->i:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/bugly/legu/proguard/l;->f:Ljava/lang/String;

    .line 116
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a()Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "2.1.9"

    iput-object v2, v1, Lcom/tencent/bugly/legu/proguard/l;->e:Ljava/lang/String;

    .line 117
    iput p2, v1, Lcom/tencent/bugly/legu/proguard/l;->d:I

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/legu/proguard/l;->c:J

    .line 119
    sget-wide v2, Lcom/tencent/bugly/legu/proguard/m;->b:J

    iput-wide v2, v1, Lcom/tencent/bugly/legu/proguard/l;->g:J

    .line 120
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/o;->a()Lcom/tencent/bugly/legu/proguard/o;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/bugly/legu/proguard/o;->a(Lcom/tencent/bugly/legu/proguard/l;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 124
    :goto_0
    monitor-exit p0

    return v0

    .line 122
    :catch_0
    move-exception v1

    :try_start_1
    const-string v1, "saveCrashRecord failed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 166
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/o;->a()Lcom/tencent/bugly/legu/proguard/o;

    move-result-object v1

    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a()Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/tencent/bugly/legu/proguard/o;->b()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 170
    :goto_0
    monitor-exit p0

    return v0

    .line 168
    :catch_0
    move-exception v1

    :try_start_1
    const-string v1, "clearInvalidCrashRecord failed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
