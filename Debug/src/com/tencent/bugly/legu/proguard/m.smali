.class public final Lcom/tencent/bugly/legu/proguard/m;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static a:Lcom/tencent/bugly/legu/proguard/m;

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

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
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/legu/proguard/m;
    .registers 2

    .prologue
    .line 47
    const-class v0, Lcom/tencent/bugly/legu/proguard/m;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tencent/bugly/legu/proguard/m;->a:Lcom/tencent/bugly/legu/proguard/m;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/bugly/legu/proguard/m;
    .registers 3

    .prologue
    .line 40
    const-class v1, Lcom/tencent/bugly/legu/proguard/m;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/bugly/legu/proguard/m;->a:Lcom/tencent/bugly/legu/proguard/m;

    if-nez v0, :cond_e

    .line 41
    new-instance v0, Lcom/tencent/bugly/legu/proguard/m;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/legu/proguard/m;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/bugly/legu/proguard/m;->a:Lcom/tencent/bugly/legu/proguard/m;

    .line 43
    :cond_e
    sget-object v0, Lcom/tencent/bugly/legu/proguard/m;->a:Lcom/tencent/bugly/legu/proguard/m;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized b(II)I
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 134
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_3
    invoke-direct {p0, v1}, Lcom/tencent/bugly/legu/proguard/m;->d(I)J

    move-result-wide v1

    .line 135
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/o;->a()Lcom/tencent/bugly/legu/proguard/o;

    move-result-object v3

    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a()Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/bugly/legu/crashreport/common/info/a;->d:Ljava/lang/String;

    invoke-virtual {v3, p1, v4, v1, v2}, Lcom/tencent/bugly/legu/proguard/o;->a(ILjava/lang/String;J)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_14} :catch_17
    .catchall {:try_start_3 .. :try_end_14} :catchall_21

    move-result v0

    .line 139
    :goto_15
    monitor-exit p0

    return v0

    .line 137
    :catch_17
    move-exception v1

    :try_start_18
    const-string v1, "clearHistoryCrashRecord failed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_21

    goto :goto_15

    .line 134
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(I)Z
    .registers 11

    .prologue
    const/4 v6, 0x0

    .line 60
    monitor-enter p0

    :try_start_2
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a()Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v0

    iget-object v2, v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->d:Ljava/lang/String;

    .line 61
    if-nez v2, :cond_15

    .line 62
    const-string v0, "process name is null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_64
    .catchall {:try_start_2 .. :try_end_12} :catchall_6f

    move v0, v6

    .line 82
    :goto_13
    monitor-exit p0

    return v0

    .line 65
    :cond_15
    const/4 v0, 0x0

    :try_start_16
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
    if-nez v2, :cond_30

    move v0, v6

    .line 68
    goto :goto_13

    .line 70
    :cond_30
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_39

    move v0, v6

    .line 71
    goto :goto_13

    :cond_39
    move v1, v6

    .line 73
    :goto_3a
    add-int/lit8 v0, v1, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_62

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
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_54} :catch_64
    .catchall {:try_start_16 .. :try_end_54} :catchall_6f

    sub-long/2addr v3, v7

    const-wide/32 v7, 0x5265c00

    cmp-long v0, v3, v7

    if-gez v0, :cond_5e

    .line 75
    const/4 v0, 0x1

    goto :goto_13

    .line 73
    :cond_5e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3a

    :cond_62
    move v0, v6

    .line 78
    goto :goto_13

    .line 80
    :catch_64
    move-exception v0

    :try_start_65
    const-string v0, "FrenquencyCrash failed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_6d
    .catchall {:try_start_65 .. :try_end_6d} :catchall_6f

    move v0, v6

    .line 82
    goto :goto_13

    .line 60
    :catchall_6f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(I)Lcom/tencent/bugly/legu/proguard/l;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 87
    monitor-enter p0

    .line 89
    :try_start_2
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a()Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/bugly/legu/crashreport/common/info/a;->d:Ljava/lang/String;

    .line 90
    if-nez v1, :cond_14

    .line 91
    const-string v1, "process name is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_1d
    .catchall {:try_start_2 .. :try_end_12} :catchall_27

    .line 98
    :goto_12
    monitor-exit p0

    return-object v0

    .line 94
    :cond_14
    :try_start_14
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/o;->a()Lcom/tencent/bugly/legu/proguard/o;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/tencent/bugly/legu/proguard/o;->a(ILjava/lang/String;)Lcom/tencent/bugly/legu/proguard/l;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1b} :catch_1d
    .catchall {:try_start_14 .. :try_end_1b} :catchall_27

    move-result-object v0

    goto :goto_12

    .line 95
    :catch_1d
    move-exception v1

    .line 96
    :try_start_1e
    const-string v1, "getLatestCrashRecord failed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_27

    goto :goto_12

    .line 87
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d(I)J
    .registers 6

    .prologue
    const-wide/16 v0, 0x0

    .line 149
    monitor-enter p0

    .line 150
    packed-switch p1, :pswitch_data_14

    .line 158
    :goto_6
    :pswitch_6
    monitor-exit p0

    return-wide v0

    .line 155
    :pswitch_8
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_11

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    sub-long/2addr v0, v2

    goto :goto_6

    .line 149
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    .line 150
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public final declared-synchronized a(I)Z
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 175
    monitor-enter p0

    .line 177
    :try_start_3
    invoke-direct {p0, p1}, Lcom/tencent/bugly/legu/proguard/m;->c(I)Lcom/tencent/bugly/legu/proguard/l;

    move-result-object v2

    .line 178
    if-eqz v2, :cond_1e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/tencent/bugly/legu/proguard/l;->c:J

    sub-long v2, v3, v5

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1e

    invoke-direct {p0, p1}, Lcom/tencent/bugly/legu/proguard/m;->b(I)Z

    move-result v2

    if-nez v2, :cond_26

    .line 184
    :cond_1e
    :goto_1e
    if-eqz v0, :cond_24

    .line 186
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/tencent/bugly/legu/proguard/m;->b(II)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_24} :catch_28
    .catchall {:try_start_3 .. :try_end_24} :catchall_32

    .line 191
    :cond_24
    :goto_24
    monitor-exit p0

    return v0

    :cond_26
    move v0, v1

    .line 178
    goto :goto_1e

    .line 188
    :catch_28
    move-exception v1

    .line 189
    :try_start_29
    const-string v1, "canInit failed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_32

    goto :goto_24

    .line 175
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(II)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 110
    monitor-enter p0

    .line 112
    :try_start_2
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
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_39} :catch_3c
    .catchall {:try_start_2 .. :try_end_39} :catchall_46

    move-result v0

    .line 124
    :goto_3a
    monitor-exit p0

    return v0

    .line 122
    :catch_3c
    move-exception v1

    :try_start_3d
    const-string v1, "saveCrashRecord failed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_46

    goto :goto_3a

    .line 110
    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 166
    monitor-enter p0

    :try_start_2
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/o;->a()Lcom/tencent/bugly/legu/proguard/o;

    move-result-object v1

    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a()Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/tencent/bugly/legu/proguard/o;->b()I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_13
    .catchall {:try_start_2 .. :try_end_10} :catchall_1d

    move-result v0

    .line 170
    :goto_11
    monitor-exit p0

    return v0

    .line 168
    :catch_13
    move-exception v1

    :try_start_14
    const-string v1, "clearInvalidCrashRecord failed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1d

    goto :goto_11

    .line 166
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
