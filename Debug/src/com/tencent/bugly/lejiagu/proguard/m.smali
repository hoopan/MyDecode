.class public final Lcom/tencent/bugly/lejiagu/proguard/m;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/lejiagu/proguard/m$a;
    }
.end annotation


# static fields
.field private static a:Lcom/tencent/bugly/lejiagu/proguard/m;

.field private static b:Lcom/tencent/bugly/lejiagu/proguard/n;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 27
    sput-object v0, Lcom/tencent/bugly/lejiagu/proguard/m;->a:Lcom/tencent/bugly/lejiagu/proguard/m;

    .line 28
    sput-object v0, Lcom/tencent/bugly/lejiagu/proguard/m;->b:Lcom/tencent/bugly/lejiagu/proguard/n;

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/bugly/lejiagu/proguard/m;->c:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/lejiagu/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/tencent/bugly/lejiagu/proguard/n;

    invoke-direct {v0, p1, p2}, Lcom/tencent/bugly/lejiagu/proguard/n;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v0, Lcom/tencent/bugly/lejiagu/proguard/m;->b:Lcom/tencent/bugly/lejiagu/proguard/n;

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/lejiagu/proguard/m;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/lejiagu/proguard/l;)I
    .registers 6

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/bugly/lejiagu/proguard/m;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/lejiagu/proguard/l;)I

    move-result v0

    return v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/lejiagu/proguard/l;)I
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 195
    monitor-enter p0

    .line 198
    :try_start_2
    sget-object v1, Lcom/tencent/bugly/lejiagu/proguard/m;->b:Lcom/tencent/bugly/lejiagu/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/proguard/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 199
    if-eqz v1, :cond_e

    .line 200
    invoke-virtual {v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_d} :catch_15
    .catchall {:try_start_2 .. :try_end_d} :catchall_29

    move-result v0

    .line 207
    :cond_e
    if-eqz p4, :cond_13

    .line 208
    :try_start_10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_26

    .line 214
    :cond_13
    :goto_13
    monitor-exit p0

    return v0

    .line 211
    :catch_15
    move-exception v1

    .line 203
    :try_start_16
    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 204
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_29

    .line 207
    :cond_1f
    if-eqz p4, :cond_13

    .line 208
    const/4 v1, 0x0

    :try_start_22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_13

    .line 195
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0

    .line 211
    :catchall_29
    move-exception v0

    if-eqz p4, :cond_30

    .line 208
    const/4 v1, 0x0

    :try_start_2d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    :cond_30
    throw v0
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_26
.end method

.method static synthetic a(Lcom/tencent/bugly/lejiagu/proguard/m;Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/lejiagu/proguard/l;)J
    .registers 6

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/lejiagu/proguard/m;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/lejiagu/proguard/l;)J

    move-result-wide v0

    return-wide v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/lejiagu/proguard/l;)J
    .registers 11

    .prologue
    const-wide/16 v0, 0x0

    .line 140
    monitor-enter p0

    .line 143
    :try_start_3
    sget-object v2, Lcom/tencent/bugly/lejiagu/proguard/m;->b:Lcom/tencent/bugly/lejiagu/proguard/n;

    invoke-virtual {v2}, Lcom/tencent/bugly/lejiagu/proguard/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 144
    if-eqz v2, :cond_23

    if-eqz p2, :cond_23

    .line 145
    const-string v3, "_id"

    invoke-virtual {v2, p1, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 146
    cmp-long v4, v2, v0

    if-ltz v4, :cond_2a

    .line 147
    const-string v4, "[db] insert %s success"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_22} :catch_36
    .catchall {:try_start_3 .. :try_end_22} :catchall_4b

    :goto_22
    move-wide v0, v2

    .line 158
    :cond_23
    if-eqz p3, :cond_28

    .line 159
    :try_start_25
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_48

    .line 165
    :cond_28
    :goto_28
    monitor-exit p0

    return-wide v0

    .line 149
    :cond_2a
    :try_start_2a
    const-string v4, "[db] replace %s error"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_35} :catch_36
    .catchall {:try_start_2a .. :try_end_35} :catchall_4b

    goto :goto_22

    .line 162
    :catch_36
    move-exception v2

    .line 154
    :try_start_37
    invoke-static {v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 155
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_4b

    .line 158
    :cond_40
    if-eqz p3, :cond_28

    .line 159
    const-wide/16 v2, 0x0

    :try_start_44
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_28

    .line 140
    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0

    .line 162
    :catchall_4b
    move-exception v0

    if-eqz p3, :cond_53

    .line 159
    const-wide/16 v1, 0x0

    :try_start_50
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 161
    :cond_53
    throw v0
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_48
.end method

.method static synthetic a(Lcom/tencent/bugly/lejiagu/proguard/m;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/lejiagu/proguard/l;)Landroid/database/Cursor;
    .registers 12

    .prologue
    .line 26
    invoke-direct/range {p0 .. p10}, Lcom/tencent/bugly/lejiagu/proguard/m;->a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/lejiagu/proguard/l;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/lejiagu/proguard/l;)Landroid/database/Cursor;
    .registers 22

    .prologue
    .line 171
    monitor-enter p0

    const/4 v10, 0x0

    .line 174
    :try_start_2
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/m;->b:Lcom/tencent/bugly/lejiagu/proguard/n;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/proguard/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_35

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 176
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1b} :catch_20
    .catchall {:try_start_2 .. :try_end_1b} :catchall_2e

    move-result-object v0

    .line 185
    :goto_1c
    if-eqz p10, :cond_1e

    .line 189
    :cond_1e
    :goto_1e
    monitor-exit p0

    return-object v0

    .line 180
    :catch_20
    move-exception v0

    .line 181
    :try_start_21
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 182
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_2e

    .line 185
    :cond_2a
    if-eqz p10, :cond_33

    move-object v0, v10

    .line 186
    goto :goto_1e

    .line 185
    :catchall_2e
    move-exception v0

    .line 186
    :try_start_2f
    throw v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    .line 171
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_33
    move-object v0, v10

    goto :goto_1e

    :cond_35
    move-object v0, v10

    goto :goto_1c
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/lejiagu/proguard/m;
    .registers 2

    .prologue
    .line 45
    const-class v0, Lcom/tencent/bugly/lejiagu/proguard/m;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tencent/bugly/lejiagu/proguard/m;->a:Lcom/tencent/bugly/lejiagu/proguard/m;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/lejiagu/proguard/m;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/lejiagu/a;",
            ">;)",
            "Lcom/tencent/bugly/lejiagu/proguard/m;"
        }
    .end annotation

    .prologue
    .line 38
    const-class v1, Lcom/tencent/bugly/lejiagu/proguard/m;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/m;->a:Lcom/tencent/bugly/lejiagu/proguard/m;

    if-nez v0, :cond_e

    .line 39
    new-instance v0, Lcom/tencent/bugly/lejiagu/proguard/m;

    invoke-direct {v0, p0, p1}, Lcom/tencent/bugly/lejiagu/proguard/m;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v0, Lcom/tencent/bugly/lejiagu/proguard/m;->a:Lcom/tencent/bugly/lejiagu/proguard/m;

    .line 41
    :cond_e
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/m;->a:Lcom/tencent/bugly/lejiagu/proguard/m;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/database/Cursor;)Lcom/tencent/bugly/lejiagu/proguard/o;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 535
    if-nez p0, :cond_4

    .line 551
    :cond_3
    :goto_3
    return-object v0

    .line 538
    :cond_4
    :try_start_4
    new-instance v1, Lcom/tencent/bugly/lejiagu/proguard/o;

    invoke-direct {v1}, Lcom/tencent/bugly/lejiagu/proguard/o;-><init>()V

    .line 539
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/lejiagu/proguard/o;->a:J

    .line 540
    const-string v2, "_tp"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/tencent/bugly/lejiagu/proguard/o;->b:I

    .line 541
    const-string v2, "_pc"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/lejiagu/proguard/o;->c:Ljava/lang/String;

    .line 542
    const-string v2, "_th"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/lejiagu/proguard/o;->d:Ljava/lang/String;

    .line 543
    const-string v2, "_tm"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/lejiagu/proguard/o;->e:J

    .line 544
    const-string v2, "_dt"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/lejiagu/proguard/o;->g:[B
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_51} :catch_53

    move-object v0, v1

    .line 545
    goto :goto_3

    .line 546
    :catch_53
    move-exception v1

    .line 547
    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 548
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method private a(ILcom/tencent/bugly/lejiagu/proguard/l;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tencent/bugly/lejiagu/proguard/l;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 291
    const/4 v2, 0x0

    .line 293
    :try_start_1
    invoke-direct {p0, p1}, Lcom/tencent/bugly/lejiagu/proguard/m;->c(I)Ljava/util/List;

    move-result-object v0

    .line 294
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_3a
    .catchall {:try_start_1 .. :try_end_a} :catchall_38

    .line 295
    :try_start_a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/lejiagu/proguard/o;

    .line 296
    iget-object v3, v0, Lcom/tencent/bugly/lejiagu/proguard/o;->g:[B

    .line 297
    if-eqz v3, :cond_e

    .line 298
    iget-object v0, v0, Lcom/tencent/bugly/lejiagu/proguard/o;->f:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_23} :catch_24
    .catchall {:try_start_a .. :try_end_23} :catchall_38

    goto :goto_e

    .line 301
    :catch_24
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 302
    :goto_28
    :try_start_28
    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 303
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_38

    .line 306
    :cond_31
    if-eqz p2, :cond_33

    .line 310
    :cond_33
    :goto_33
    return-object v0

    .line 306
    :cond_34
    if-eqz p2, :cond_3e

    move-object v0, v1

    .line 307
    goto :goto_33

    .line 306
    :catchall_38
    move-exception v0

    .line 307
    throw v0

    .line 301
    :catch_3a
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_28

    :cond_3e
    move-object v0, v1

    goto :goto_33
.end method

.method static synthetic a(Lcom/tencent/bugly/lejiagu/proguard/m;ILcom/tencent/bugly/lejiagu/proguard/l;)Ljava/util/Map;
    .registers 4

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/lejiagu/proguard/m;->a(ILcom/tencent/bugly/lejiagu/proguard/l;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/lejiagu/proguard/o;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 454
    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 478
    :cond_9
    :goto_9
    return-void

    .line 456
    :cond_a
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/m;->b:Lcom/tencent/bugly/lejiagu/proguard/n;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/proguard/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 457
    if-eqz v1, :cond_9

    .line 458
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/lejiagu/proguard/o;

    .line 460
    const-string v4, " or _id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/tencent/bugly/lejiagu/proguard/o;->a:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 462
    :cond_39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_48

    .line 464
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 465
    :cond_48
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 467
    :try_start_4b
    const-string v2, "t_lr"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 468
    const-string v1, "deleted %s data %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "t_lr"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_66} :catch_67
    .catchall {:try_start_4b .. :try_end_66} :catchall_72

    goto :goto_9

    .line 474
    :catch_67
    move-exception v0

    .line 470
    :try_start_68
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 471
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_71
    .catchall {:try_start_68 .. :try_end_71} :catchall_72

    goto :goto_9

    .line 474
    :catchall_72
    move-exception v0

    throw v0
.end method

.method public static a(ILjava/lang/String;Lcom/tencent/bugly/lejiagu/proguard/l;)Z
    .registers 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 620
    .line 623
    :try_start_2
    sget-object v2, Lcom/tencent/bugly/lejiagu/proguard/m;->b:Lcom/tencent/bugly/lejiagu/proguard/n;

    invoke-virtual {v2}, Lcom/tencent/bugly/lejiagu/proguard/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 624
    if-eqz v3, :cond_46

    .line 626
    if-eqz p1, :cond_4c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4c

    move v2, v1

    :goto_17
    if-eqz v2, :cond_4e

    .line 627
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "_id = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 633
    :goto_28
    const-string v4, "t_pf"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 634
    const-string v3, "deleted %s data %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "t_pf"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_43} :catch_76
    .catchall {:try_start_2 .. :try_end_43} :catchall_86

    .line 635
    if-lez v2, :cond_74

    :goto_45
    move v1, v0

    .line 642
    :cond_46
    if-eqz p2, :cond_4b

    .line 643
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 649
    :cond_4b
    :goto_4b
    return v1

    :cond_4c
    move v2, v0

    .line 626
    goto :goto_17

    .line 629
    :cond_4e
    :try_start_4e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "_id = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " and _tp"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " = \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_72} :catch_76
    .catchall {:try_start_4e .. :try_end_72} :catchall_86

    move-result-object v2

    goto :goto_28

    :cond_74
    move v0, v1

    .line 635
    goto :goto_45

    .line 646
    :catch_76
    move-exception v0

    .line 638
    :try_start_77
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_80

    .line 639
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_80
    .catchall {:try_start_77 .. :try_end_80} :catchall_86

    .line 642
    :cond_80
    if-eqz p2, :cond_4b

    .line 643
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_4b

    .line 646
    :catchall_86
    move-exception v0

    if-eqz p2, :cond_8c

    .line 643
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 645
    :cond_8c
    throw v0
.end method

.method private a(ILjava/lang/String;[BLcom/tencent/bugly/lejiagu/proguard/l;)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 270
    .line 272
    :try_start_1
    new-instance v1, Lcom/tencent/bugly/lejiagu/proguard/o;

    invoke-direct {v1}, Lcom/tencent/bugly/lejiagu/proguard/o;-><init>()V

    .line 273
    int-to-long v2, p1

    iput-wide v2, v1, Lcom/tencent/bugly/lejiagu/proguard/o;->a:J

    .line 274
    iput-object p2, v1, Lcom/tencent/bugly/lejiagu/proguard/o;->f:Ljava/lang/String;

    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/lejiagu/proguard/o;->e:J

    .line 276
    iput-object p3, v1, Lcom/tencent/bugly/lejiagu/proguard/o;->g:[B

    .line 277
    invoke-direct {p0, v1}, Lcom/tencent/bugly/lejiagu/proguard/m;->b(Lcom/tencent/bugly/lejiagu/proguard/o;)Z
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_16} :catch_1d
    .catchall {:try_start_1 .. :try_end_16} :catchall_2d

    move-result v0

    .line 283
    if-eqz p4, :cond_1c

    .line 284
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 287
    :cond_1c
    :goto_1c
    return v0

    .line 278
    :catch_1d
    move-exception v1

    .line 279
    :try_start_1e
    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 280
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_2d

    .line 283
    :cond_27
    if-eqz p4, :cond_1c

    .line 284
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_1c

    .line 283
    :catchall_2d
    move-exception v1

    if-eqz p4, :cond_33

    .line 284
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :cond_33
    throw v1
.end method

.method static synthetic a(Lcom/tencent/bugly/lejiagu/proguard/m;ILjava/lang/String;[BLcom/tencent/bugly/lejiagu/proguard/l;)Z
    .registers 6

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/bugly/lejiagu/proguard/m;->a(ILjava/lang/String;[BLcom/tencent/bugly/lejiagu/proguard/l;)Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/database/Cursor;)Lcom/tencent/bugly/lejiagu/proguard/o;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 681
    if-nez p0, :cond_4

    .line 695
    :cond_3
    :goto_3
    return-object v0

    .line 684
    :cond_4
    :try_start_4
    new-instance v1, Lcom/tencent/bugly/lejiagu/proguard/o;

    invoke-direct {v1}, Lcom/tencent/bugly/lejiagu/proguard/o;-><init>()V

    .line 685
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/lejiagu/proguard/o;->a:J

    .line 686
    const-string v2, "_tm"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/lejiagu/proguard/o;->e:J

    .line 687
    const-string v2, "_tp"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/lejiagu/proguard/o;->f:Ljava/lang/String;

    .line 688
    const-string v2, "_dt"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/lejiagu/proguard/o;->g:[B
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_39} :catch_3b

    move-object v0, v1

    .line 689
    goto :goto_3

    .line 690
    :catch_3b
    move-exception v1

    .line 691
    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 692
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public static b(I)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 486
    sget-object v1, Lcom/tencent/bugly/lejiagu/proguard/m;->b:Lcom/tencent/bugly/lejiagu/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/proguard/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 487
    if-eqz v1, :cond_35

    .line 489
    if-ltz p0, :cond_1a

    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "_tp = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 490
    :cond_1a
    const-string v2, "t_lr"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 491
    const-string v1, "deleted %s data %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "t_lr"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_35} :catch_36
    .catchall {:try_start_b .. :try_end_35} :catchall_41

    .line 501
    :cond_35
    :goto_35
    return-void

    .line 497
    :catch_36
    move-exception v0

    .line 493
    :try_start_37
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 494
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_41

    goto :goto_35

    .line 497
    :catchall_41
    move-exception v0

    throw v0
.end method

.method private b(Lcom/tencent/bugly/lejiagu/proguard/o;)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 357
    if-nez p1, :cond_5

    .line 381
    :cond_4
    :goto_4
    return v0

    .line 362
    :cond_5
    :try_start_5
    sget-object v2, Lcom/tencent/bugly/lejiagu/proguard/m;->b:Lcom/tencent/bugly/lejiagu/proguard/n;

    invoke-virtual {v2}, Lcom/tencent/bugly/lejiagu/proguard/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 363
    if-eqz v2, :cond_4

    .line 364
    invoke-static {p1}, Lcom/tencent/bugly/lejiagu/proguard/m;->d(Lcom/tencent/bugly/lejiagu/proguard/o;)Landroid/content/ContentValues;

    move-result-object v3

    .line 365
    if-eqz v3, :cond_4

    .line 366
    const-string v4, "t_pf"

    const-string v5, "_id"

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 367
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_4

    .line 368
    const-string v4, "insert %s success!"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "t_pf"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 369
    iput-wide v2, p1, Lcom/tencent/bugly/lejiagu/proguard/o;->a:J
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_30} :catch_32
    .catchall {:try_start_5 .. :try_end_30} :catchall_3d

    move v0, v1

    .line 370
    goto :goto_4

    .line 377
    :catch_32
    move-exception v1

    .line 378
    :try_start_33
    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 379
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_3d

    goto :goto_4

    .line 383
    :catchall_3d
    move-exception v0

    .line 384
    throw v0
.end method

.method private static c(Lcom/tencent/bugly/lejiagu/proguard/o;)Landroid/content/ContentValues;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 508
    if-nez p0, :cond_4

    .line 528
    :cond_3
    :goto_3
    return-object v0

    .line 512
    :cond_4
    :try_start_4
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 513
    iget-wide v2, p0, Lcom/tencent/bugly/lejiagu/proguard/o;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1c

    .line 514
    const-string v2, "_id"

    iget-wide v3, p0, Lcom/tencent/bugly/lejiagu/proguard/o;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 516
    :cond_1c
    const-string v2, "_tp"

    iget v3, p0, Lcom/tencent/bugly/lejiagu/proguard/o;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 517
    const-string v2, "_pc"

    iget-object v3, p0, Lcom/tencent/bugly/lejiagu/proguard/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v2, "_th"

    iget-object v3, p0, Lcom/tencent/bugly/lejiagu/proguard/o;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v2, "_tm"

    iget-wide v3, p0, Lcom/tencent/bugly/lejiagu/proguard/o;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 520
    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/proguard/o;->g:[B

    if-eqz v2, :cond_4b

    .line 521
    const-string v2, "_dt"

    iget-object v3, p0, Lcom/tencent/bugly/lejiagu/proguard/o;->g:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4b} :catch_4d

    :cond_4b
    move-object v0, v1

    .line 522
    goto :goto_3

    .line 523
    :catch_4d
    move-exception v1

    .line 524
    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 525
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method private c(I)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/lejiagu/proguard/o;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 560
    .line 563
    :try_start_1
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/m;->b:Lcom/tencent/bugly/lejiagu/proguard/n;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/proguard/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 564
    if-eqz v0, :cond_62

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 566
    const-string v1, "t_pf"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_22} :catch_de
    .catchall {:try_start_1 .. :try_end_22} :catchall_d8

    move-result-object v2

    .line 568
    if-nez v2, :cond_32

    .line 569
    if-eqz v2, :cond_30

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_30

    .line 604
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_30
    move-object v0, v8

    .line 610
    :goto_31
    return-object v0

    .line 572
    :cond_32
    :try_start_32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 573
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 574
    :goto_3c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_95

    .line 575
    invoke-static {v2}, Lcom/tencent/bugly/lejiagu/proguard/m;->b(Landroid/database/Cursor;)Lcom/tencent/bugly/lejiagu/proguard/o;

    move-result-object v5

    .line 576
    if-eqz v5, :cond_64

    .line 577
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_4b} :catch_4c
    .catchall {:try_start_32 .. :try_end_4b} :catchall_88

    goto :goto_3c

    .line 607
    :catch_4c
    move-exception v0

    move-object v1, v2

    .line 599
    :goto_4e
    :try_start_4e
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 600
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_db

    .line 603
    :cond_57
    if-eqz v1, :cond_62

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_62

    .line 604
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_62
    move-object v0, v8

    .line 610
    goto :goto_31

    .line 581
    :cond_64
    :try_start_64
    const-string v5, "_tp"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 582
    const-string v6, " or _tp"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_7d} :catch_7e
    .catchall {:try_start_64 .. :try_end_7d} :catchall_88

    goto :goto_3c

    .line 584
    :catch_7e
    move-exception v5

    :try_start_7f
    const-string v5, "unknown id!"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_87} :catch_4c
    .catchall {:try_start_7f .. :try_end_87} :catchall_88

    goto :goto_3c

    .line 607
    :catchall_88
    move-exception v0

    :goto_89
    if-eqz v2, :cond_94

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_94

    .line 604
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 606
    :cond_94
    throw v0

    .line 590
    :cond_95
    :try_start_95
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_ca

    .line 591
    const-string v5, " and _id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 592
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 593
    const-string v4, "t_pf"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 594
    const-string v3, "deleted %s illegle data %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "t_pf"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_ca
    .catch Ljava/lang/Throwable; {:try_start_95 .. :try_end_ca} :catch_4c
    .catchall {:try_start_95 .. :try_end_ca} :catchall_88

    .line 603
    :cond_ca
    if-eqz v2, :cond_d5

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_d5

    .line 604
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_d5
    move-object v0, v1

    .line 606
    goto/16 :goto_31

    .line 607
    :catchall_d8
    move-exception v0

    move-object v2, v8

    goto :goto_89

    :catchall_db
    move-exception v0

    move-object v2, v1

    goto :goto_89

    :catch_de
    move-exception v0

    move-object v1, v8

    goto/16 :goto_4e
.end method

.method private static d(Lcom/tencent/bugly/lejiagu/proguard/o;)Landroid/content/ContentValues;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 656
    if-eqz p0, :cond_14

    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/o;->f:Ljava/lang/String;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_16

    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_18

    :cond_14
    move-object v0, v1

    .line 674
    :cond_15
    :goto_15
    return-object v0

    .line 656
    :cond_16
    const/4 v0, 0x1

    goto :goto_12

    .line 660
    :cond_18
    :try_start_18
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 661
    iget-wide v2, p0, Lcom/tencent/bugly/lejiagu/proguard/o;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_30

    .line 662
    const-string v2, "_id"

    iget-wide v3, p0, Lcom/tencent/bugly/lejiagu/proguard/o;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 664
    :cond_30
    const-string v2, "_tp"

    iget-object v3, p0, Lcom/tencent/bugly/lejiagu/proguard/o;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v2, "_tm"

    iget-wide v3, p0, Lcom/tencent/bugly/lejiagu/proguard/o;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 666
    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/proguard/o;->g:[B

    if-eqz v2, :cond_15

    .line 667
    const-string v2, "_dt"

    iget-object v3, p0, Lcom/tencent/bugly/lejiagu/proguard/o;->g:[B

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_4d} :catch_4e

    goto :goto_15

    .line 669
    :catch_4e
    move-exception v0

    .line 670
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_58

    .line 671
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_58
    move-object v0, v1

    .line 674
    goto :goto_15
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/lejiagu/proguard/l;Z)I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/tencent/bugly/lejiagu/proguard/m;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/lejiagu/proguard/l;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/lejiagu/proguard/l;Z)J
    .registers 7

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/bugly/lejiagu/proguard/m;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/lejiagu/proguard/l;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/lejiagu/proguard/l;Z)Landroid/database/Cursor;
    .registers 18

    .prologue
    .line 81
    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v10}, Lcom/tencent/bugly/lejiagu/proguard/m;->a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/lejiagu/proguard/l;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/lejiagu/proguard/o;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 395
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/m;->b:Lcom/tencent/bugly/lejiagu/proguard/n;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/proguard/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 396
    if-eqz v0, :cond_66

    .line 399
    if-ltz p1, :cond_34

    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_tp = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 400
    :goto_1a
    const-string v1, "t_lr"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_24} :catch_d7
    .catchall {:try_start_b .. :try_end_24} :catchall_d1

    move-result-object v2

    .line 403
    if-nez v2, :cond_36

    .line 404
    if-eqz v2, :cond_32

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_32

    .line 438
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_32
    move-object v0, v8

    .line 446
    :goto_33
    return-object v0

    :cond_34
    move-object v3, v8

    .line 399
    goto :goto_1a

    .line 407
    :cond_36
    :try_start_36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 409
    :goto_40
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_99

    .line 410
    invoke-static {v2}, Lcom/tencent/bugly/lejiagu/proguard/m;->a(Landroid/database/Cursor;)Lcom/tencent/bugly/lejiagu/proguard/o;

    move-result-object v4

    .line 411
    if-eqz v4, :cond_68

    .line 412
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_4f} :catch_50
    .catchall {:try_start_36 .. :try_end_4f} :catchall_8c

    goto :goto_40

    .line 433
    :catch_50
    move-exception v0

    move-object v1, v2

    .line 434
    :goto_52
    :try_start_52
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 435
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_d4

    .line 437
    :cond_5b
    if-eqz v1, :cond_66

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_66

    .line 438
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_66
    move-object v0, v8

    .line 446
    goto :goto_33

    .line 416
    :cond_68
    :try_start_68
    const-string v4, "_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 417
    const-string v6, " or _id"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_81} :catch_82
    .catchall {:try_start_68 .. :try_end_81} :catchall_8c

    goto :goto_40

    .line 420
    :catch_82
    move-exception v4

    :try_start_83
    const-string v4, "unknown id!"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_8b} :catch_50
    .catchall {:try_start_83 .. :try_end_8b} :catchall_8c

    goto :goto_40

    .line 441
    :catchall_8c
    move-exception v0

    :goto_8d
    if-eqz v2, :cond_98

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_98

    .line 438
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 440
    :cond_98
    throw v0

    .line 426
    :cond_99
    :try_start_99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 427
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_c3

    .line 428
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 429
    const-string v4, "t_lr"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 430
    const-string v3, "deleted %s illegle data %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "t_lr"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_c3
    .catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_c3} :catch_50
    .catchall {:try_start_99 .. :try_end_c3} :catchall_8c

    .line 437
    :cond_c3
    if-eqz v2, :cond_ce

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_ce

    .line 438
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_ce
    move-object v0, v1

    .line 440
    goto/16 :goto_33

    .line 441
    :catchall_d1
    move-exception v0

    move-object v2, v8

    goto :goto_8d

    :catchall_d4
    move-exception v0

    move-object v2, v1

    goto :goto_8d

    .line 433
    :catch_d7
    move-exception v0

    move-object v1, v8

    goto/16 :goto_52
.end method

.method public final a(ILcom/tencent/bugly/lejiagu/proguard/l;Z)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tencent/bugly/lejiagu/proguard/l;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/bugly/lejiagu/proguard/m;->a(ILcom/tencent/bugly/lejiagu/proguard/l;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILjava/lang/String;Lcom/tencent/bugly/lejiagu/proguard/l;Z)Z
    .registers 7

    .prologue
    .line 259
    const/16 v0, 0x22b

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/tencent/bugly/lejiagu/proguard/m;->a(ILjava/lang/String;Lcom/tencent/bugly/lejiagu/proguard/l;)Z

    move-result v0

    return v0
.end method

.method public final a(ILjava/lang/String;[BLcom/tencent/bugly/lejiagu/proguard/l;Z)Z
    .registers 7

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tencent/bugly/lejiagu/proguard/m;->a(ILjava/lang/String;[BLcom/tencent/bugly/lejiagu/proguard/l;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/tencent/bugly/lejiagu/proguard/o;)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 319
    if-nez p1, :cond_5

    .line 343
    :cond_4
    :goto_4
    return v0

    .line 324
    :cond_5
    :try_start_5
    sget-object v2, Lcom/tencent/bugly/lejiagu/proguard/m;->b:Lcom/tencent/bugly/lejiagu/proguard/n;

    invoke-virtual {v2}, Lcom/tencent/bugly/lejiagu/proguard/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 325
    if-eqz v2, :cond_4

    .line 326
    invoke-static {p1}, Lcom/tencent/bugly/lejiagu/proguard/m;->c(Lcom/tencent/bugly/lejiagu/proguard/o;)Landroid/content/ContentValues;

    move-result-object v3

    .line 327
    if-eqz v3, :cond_4

    .line 328
    const-string v4, "t_lr"

    const-string v5, "_id"

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 329
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_4

    .line 330
    const-string v4, "insert %s success!"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "t_lr"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 331
    iput-wide v2, p1, Lcom/tencent/bugly/lejiagu/proguard/o;->a:J
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_30} :catch_32
    .catchall {:try_start_5 .. :try_end_30} :catchall_3d

    move v0, v1

    .line 332
    goto :goto_4

    .line 339
    :catch_32
    move-exception v1

    .line 340
    :try_start_33
    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 341
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_3d

    goto :goto_4

    .line 345
    :catchall_3d
    move-exception v0

    .line 346
    throw v0
.end method
