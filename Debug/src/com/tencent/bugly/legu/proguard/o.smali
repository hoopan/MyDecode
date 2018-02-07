.class public final Lcom/tencent/bugly/legu/proguard/o;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/legu/proguard/o$a;
    }
.end annotation


# static fields
.field private static a:Lcom/tencent/bugly/legu/proguard/o;

.field private static b:Lcom/tencent/bugly/legu/proguard/p;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 29
    sput-object v0, Lcom/tencent/bugly/legu/proguard/o;->a:Lcom/tencent/bugly/legu/proguard/o;

    .line 30
    sput-object v0, Lcom/tencent/bugly/legu/proguard/o;->b:Lcom/tencent/bugly/legu/proguard/p;

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/bugly/legu/proguard/o;->c:Z

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
            "Lcom/tencent/bugly/legu/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/tencent/bugly/legu/proguard/p;

    invoke-direct {v0, p1, p2}, Lcom/tencent/bugly/legu/proguard/p;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v0, Lcom/tencent/bugly/legu/proguard/o;->b:Lcom/tencent/bugly/legu/proguard/p;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/legu/proguard/o;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/legu/proguard/n;)I
    .registers 6

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/bugly/legu/proguard/o;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/legu/proguard/n;)I

    move-result v0

    return v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/legu/proguard/n;)I
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 197
    monitor-enter p0

    .line 200
    :try_start_2
    sget-object v1, Lcom/tencent/bugly/legu/proguard/o;->b:Lcom/tencent/bugly/legu/proguard/p;

    invoke-virtual {v1}, Lcom/tencent/bugly/legu/proguard/p;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 201
    if-eqz v1, :cond_e

    .line 202
    invoke-virtual {v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_d} :catch_15
    .catchall {:try_start_2 .. :try_end_d} :catchall_29

    move-result v0

    .line 209
    :cond_e
    if-eqz p4, :cond_13

    .line 210
    :try_start_10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_26

    .line 216
    :cond_13
    :goto_13
    monitor-exit p0

    return v0

    .line 213
    :catch_15
    move-exception v1

    .line 205
    :try_start_16
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 206
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_29

    .line 209
    :cond_1f
    if-eqz p4, :cond_13

    .line 210
    const/4 v1, 0x0

    :try_start_22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_13

    .line 197
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0

    .line 213
    :catchall_29
    move-exception v0

    if-eqz p4, :cond_30

    .line 210
    const/4 v1, 0x0

    :try_start_2d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    :cond_30
    throw v0
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_26
.end method

.method static synthetic a(Lcom/tencent/bugly/legu/proguard/o;Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/legu/proguard/n;)J
    .registers 6

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/legu/proguard/o;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/legu/proguard/n;)J

    move-result-wide v0

    return-wide v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/legu/proguard/n;)J
    .registers 11

    .prologue
    const-wide/16 v0, 0x0

    .line 142
    monitor-enter p0

    .line 145
    :try_start_3
    sget-object v2, Lcom/tencent/bugly/legu/proguard/o;->b:Lcom/tencent/bugly/legu/proguard/p;

    invoke-virtual {v2}, Lcom/tencent/bugly/legu/proguard/p;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 146
    if-eqz v2, :cond_23

    if-eqz p2, :cond_23

    .line 147
    const-string v3, "_id"

    invoke-virtual {v2, p1, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 148
    cmp-long v4, v2, v0

    if-ltz v4, :cond_2a

    .line 149
    const-string v4, "[db] insert %s success"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_22} :catch_36
    .catchall {:try_start_3 .. :try_end_22} :catchall_4b

    :goto_22
    move-wide v0, v2

    .line 160
    :cond_23
    if-eqz p3, :cond_28

    .line 161
    :try_start_25
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_48

    .line 167
    :cond_28
    :goto_28
    monitor-exit p0

    return-wide v0

    .line 151
    :cond_2a
    :try_start_2a
    const-string v4, "[db] replace %s error"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_35} :catch_36
    .catchall {:try_start_2a .. :try_end_35} :catchall_4b

    goto :goto_22

    .line 164
    :catch_36
    move-exception v2

    .line 156
    :try_start_37
    invoke-static {v2}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 157
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_4b

    .line 160
    :cond_40
    if-eqz p3, :cond_28

    .line 161
    const-wide/16 v2, 0x0

    :try_start_44
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_28

    .line 142
    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0

    .line 164
    :catchall_4b
    move-exception v0

    if-eqz p3, :cond_53

    .line 161
    const-wide/16 v1, 0x0

    :try_start_50
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 163
    :cond_53
    throw v0
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_48
.end method

.method static synthetic a(Lcom/tencent/bugly/legu/proguard/o;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/legu/proguard/n;)Landroid/database/Cursor;
    .registers 12

    .prologue
    .line 28
    invoke-direct/range {p0 .. p10}, Lcom/tencent/bugly/legu/proguard/o;->a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/legu/proguard/n;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/legu/proguard/n;)Landroid/database/Cursor;
    .registers 22

    .prologue
    .line 173
    monitor-enter p0

    const/4 v10, 0x0

    .line 176
    :try_start_2
    sget-object v0, Lcom/tencent/bugly/legu/proguard/o;->b:Lcom/tencent/bugly/legu/proguard/p;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/proguard/p;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 177
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

    .line 178
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1b} :catch_20
    .catchall {:try_start_2 .. :try_end_1b} :catchall_2e

    move-result-object v0

    .line 187
    :goto_1c
    if-eqz p10, :cond_1e

    .line 191
    :cond_1e
    :goto_1e
    monitor-exit p0

    return-object v0

    .line 182
    :catch_20
    move-exception v0

    .line 183
    :try_start_21
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 184
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_2e

    .line 187
    :cond_2a
    if-eqz p10, :cond_33

    move-object v0, v10

    .line 188
    goto :goto_1e

    .line 187
    :catchall_2e
    move-exception v0

    .line 188
    :try_start_2f
    throw v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    .line 173
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

.method public static declared-synchronized a()Lcom/tencent/bugly/legu/proguard/o;
    .registers 2

    .prologue
    .line 47
    const-class v0, Lcom/tencent/bugly/legu/proguard/o;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tencent/bugly/legu/proguard/o;->a:Lcom/tencent/bugly/legu/proguard/o;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/legu/proguard/o;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/legu/a;",
            ">;)",
            "Lcom/tencent/bugly/legu/proguard/o;"
        }
    .end annotation

    .prologue
    .line 40
    const-class v1, Lcom/tencent/bugly/legu/proguard/o;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/bugly/legu/proguard/o;->a:Lcom/tencent/bugly/legu/proguard/o;

    if-nez v0, :cond_e

    .line 41
    new-instance v0, Lcom/tencent/bugly/legu/proguard/o;

    invoke-direct {v0, p0, p1}, Lcom/tencent/bugly/legu/proguard/o;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v0, Lcom/tencent/bugly/legu/proguard/o;->a:Lcom/tencent/bugly/legu/proguard/o;

    .line 43
    :cond_e
    sget-object v0, Lcom/tencent/bugly/legu/proguard/o;->a:Lcom/tencent/bugly/legu/proguard/o;
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

.method private static a(Landroid/database/Cursor;)Lcom/tencent/bugly/legu/proguard/q;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 537
    if-nez p0, :cond_4

    .line 553
    :cond_3
    :goto_3
    return-object v0

    .line 540
    :cond_4
    :try_start_4
    new-instance v1, Lcom/tencent/bugly/legu/proguard/q;

    invoke-direct {v1}, Lcom/tencent/bugly/legu/proguard/q;-><init>()V

    .line 541
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/legu/proguard/q;->a:J

    .line 542
    const-string v2, "_tp"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/tencent/bugly/legu/proguard/q;->b:I

    .line 543
    const-string v2, "_pc"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/legu/proguard/q;->c:Ljava/lang/String;

    .line 544
    const-string v2, "_th"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/legu/proguard/q;->d:Ljava/lang/String;

    .line 545
    const-string v2, "_tm"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/legu/proguard/q;->e:J

    .line 546
    const-string v2, "_dt"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/legu/proguard/q;->g:[B
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_51} :catch_53

    move-object v0, v1

    .line 547
    goto :goto_3

    .line 548
    :catch_53
    move-exception v1

    .line 549
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 550
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method private a(ILcom/tencent/bugly/legu/proguard/n;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tencent/bugly/legu/proguard/n;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 293
    const/4 v2, 0x0

    .line 295
    :try_start_1
    invoke-direct {p0, p1}, Lcom/tencent/bugly/legu/proguard/o;->c(I)Ljava/util/List;

    move-result-object v0

    .line 296
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_3a
    .catchall {:try_start_1 .. :try_end_a} :catchall_38

    .line 297
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

    check-cast v0, Lcom/tencent/bugly/legu/proguard/q;

    .line 298
    iget-object v3, v0, Lcom/tencent/bugly/legu/proguard/q;->g:[B

    .line 299
    if-eqz v3, :cond_e

    .line 300
    iget-object v0, v0, Lcom/tencent/bugly/legu/proguard/q;->f:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_23} :catch_24
    .catchall {:try_start_a .. :try_end_23} :catchall_38

    goto :goto_e

    .line 303
    :catch_24
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 304
    :goto_28
    :try_start_28
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 305
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_38

    .line 308
    :cond_31
    if-eqz p2, :cond_33

    .line 312
    :cond_33
    :goto_33
    return-object v0

    .line 308
    :cond_34
    if-eqz p2, :cond_3e

    move-object v0, v1

    .line 309
    goto :goto_33

    .line 308
    :catchall_38
    move-exception v0

    .line 309
    throw v0

    .line 303
    :catch_3a
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_28

    :cond_3e
    move-object v0, v1

    goto :goto_33
.end method

.method static synthetic a(Lcom/tencent/bugly/legu/proguard/o;ILcom/tencent/bugly/legu/proguard/n;)Ljava/util/Map;
    .registers 4

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/legu/proguard/o;->a(ILcom/tencent/bugly/legu/proguard/n;)Ljava/util/Map;

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
            "Lcom/tencent/bugly/legu/proguard/q;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 456
    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 480
    :cond_9
    :goto_9
    return-void

    .line 458
    :cond_a
    sget-object v0, Lcom/tencent/bugly/legu/proguard/o;->b:Lcom/tencent/bugly/legu/proguard/p;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/proguard/p;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 459
    if-eqz v1, :cond_9

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/legu/proguard/q;

    .line 462
    const-string v4, " or _id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/tencent/bugly/legu/proguard/q;->a:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 464
    :cond_39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 465
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_48

    .line 466
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 467
    :cond_48
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 469
    :try_start_4b
    const-string v2, "t_lr"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 470
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

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_66} :catch_67
    .catchall {:try_start_4b .. :try_end_66} :catchall_72

    goto :goto_9

    .line 476
    :catch_67
    move-exception v0

    .line 472
    :try_start_68
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 473
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_71
    .catchall {:try_start_68 .. :try_end_71} :catchall_72

    goto :goto_9

    .line 476
    :catchall_72
    move-exception v0

    throw v0
.end method

.method public static a(ILjava/lang/String;Lcom/tencent/bugly/legu/proguard/n;)Z
    .registers 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 622
    .line 625
    :try_start_2
    sget-object v2, Lcom/tencent/bugly/legu/proguard/o;->b:Lcom/tencent/bugly/legu/proguard/p;

    invoke-virtual {v2}, Lcom/tencent/bugly/legu/proguard/p;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 626
    if-eqz v3, :cond_46

    .line 628
    if-eqz p1, :cond_4c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4c

    move v2, v1

    :goto_17
    if-eqz v2, :cond_4e

    .line 629
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "_id = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 635
    :goto_28
    const-string v4, "t_pf"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 636
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

    invoke-static {v3, v4}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_43} :catch_76
    .catchall {:try_start_2 .. :try_end_43} :catchall_86

    .line 637
    if-lez v2, :cond_74

    :goto_45
    move v1, v0

    .line 644
    :cond_46
    if-eqz p2, :cond_4b

    .line 645
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 651
    :cond_4b
    :goto_4b
    return v1

    :cond_4c
    move v2, v0

    .line 628
    goto :goto_17

    .line 631
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

    .line 637
    goto :goto_45

    .line 648
    :catch_76
    move-exception v0

    .line 640
    :try_start_77
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_80

    .line 641
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_80
    .catchall {:try_start_77 .. :try_end_80} :catchall_86

    .line 644
    :cond_80
    if-eqz p2, :cond_4b

    .line 645
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_4b

    .line 648
    :catchall_86
    move-exception v0

    if-eqz p2, :cond_8c

    .line 645
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 647
    :cond_8c
    throw v0
.end method

.method private a(ILjava/lang/String;[BLcom/tencent/bugly/legu/proguard/n;)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 272
    .line 274
    :try_start_1
    new-instance v1, Lcom/tencent/bugly/legu/proguard/q;

    invoke-direct {v1}, Lcom/tencent/bugly/legu/proguard/q;-><init>()V

    .line 275
    int-to-long v2, p1

    iput-wide v2, v1, Lcom/tencent/bugly/legu/proguard/q;->a:J

    .line 276
    iput-object p2, v1, Lcom/tencent/bugly/legu/proguard/q;->f:Ljava/lang/String;

    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/legu/proguard/q;->e:J

    .line 278
    iput-object p3, v1, Lcom/tencent/bugly/legu/proguard/q;->g:[B

    .line 279
    invoke-direct {p0, v1}, Lcom/tencent/bugly/legu/proguard/o;->b(Lcom/tencent/bugly/legu/proguard/q;)Z
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_16} :catch_1d
    .catchall {:try_start_1 .. :try_end_16} :catchall_2d

    move-result v0

    .line 285
    if-eqz p4, :cond_1c

    .line 286
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 289
    :cond_1c
    :goto_1c
    return v0

    .line 280
    :catch_1d
    move-exception v1

    .line 281
    :try_start_1e
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 282
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_2d

    .line 285
    :cond_27
    if-eqz p4, :cond_1c

    .line 286
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_1c

    .line 285
    :catchall_2d
    move-exception v1

    if-eqz p4, :cond_33

    .line 286
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :cond_33
    throw v1
.end method

.method static synthetic a(Lcom/tencent/bugly/legu/proguard/o;ILjava/lang/String;[BLcom/tencent/bugly/legu/proguard/n;)Z
    .registers 6

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/bugly/legu/proguard/o;->a(ILjava/lang/String;[BLcom/tencent/bugly/legu/proguard/n;)Z

    move-result v0

    return v0
.end method

.method private static b(Lcom/tencent/bugly/legu/proguard/l;)Landroid/content/ContentValues;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 920
    if-nez p0, :cond_4

    .line 941
    :cond_3
    :goto_3
    return-object v0

    .line 924
    :cond_4
    :try_start_4
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 925
    iget-wide v2, p0, Lcom/tencent/bugly/legu/proguard/l;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/tencent/bugly/legu/proguard/l;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 928
    const-string v2, "_id"

    iget-wide v3, p0, Lcom/tencent/bugly/legu/proguard/l;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 929
    const-string v2, "_pc"

    iget-object v3, p0, Lcom/tencent/bugly/legu/proguard/l;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    const-string v2, "_tm"

    iget-wide v3, p0, Lcom/tencent/bugly/legu/proguard/l;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 931
    const-string v2, "_fl"

    iget v3, p0, Lcom/tencent/bugly/legu/proguard/l;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 932
    const-string v2, "_av"

    iget-object v3, p0, Lcom/tencent/bugly/legu/proguard/l;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    const-string v2, "_sv"

    iget-object v3, p0, Lcom/tencent/bugly/legu/proguard/l;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    const-string v2, "_uid"

    iget-wide v3, p0, Lcom/tencent/bugly/legu/proguard/l;->g:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_5a} :catch_5c

    move-object v0, v1

    .line 935
    goto :goto_3

    .line 936
    :catch_5c
    move-exception v1

    .line 937
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 938
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method private static b(Landroid/database/Cursor;)Lcom/tencent/bugly/legu/proguard/q;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 683
    if-nez p0, :cond_4

    .line 697
    :cond_3
    :goto_3
    return-object v0

    .line 686
    :cond_4
    :try_start_4
    new-instance v1, Lcom/tencent/bugly/legu/proguard/q;

    invoke-direct {v1}, Lcom/tencent/bugly/legu/proguard/q;-><init>()V

    .line 687
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/legu/proguard/q;->a:J

    .line 688
    const-string v2, "_tm"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/legu/proguard/q;->e:J

    .line 689
    const-string v2, "_tp"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/legu/proguard/q;->f:Ljava/lang/String;

    .line 690
    const-string v2, "_dt"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/legu/proguard/q;->g:[B
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_39} :catch_3b

    move-object v0, v1

    .line 691
    goto :goto_3

    .line 692
    :catch_3b
    move-exception v1

    .line 693
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 694
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public static b(I)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 488
    sget-object v1, Lcom/tencent/bugly/legu/proguard/o;->b:Lcom/tencent/bugly/legu/proguard/p;

    invoke-virtual {v1}, Lcom/tencent/bugly/legu/proguard/p;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 489
    if-eqz v1, :cond_35

    .line 491
    if-ltz p0, :cond_1a

    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "_tp = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 492
    :cond_1a
    const-string v2, "t_lr"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 493
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

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_35} :catch_36
    .catchall {:try_start_b .. :try_end_35} :catchall_41

    .line 503
    :cond_35
    :goto_35
    return-void

    .line 499
    :catch_36
    move-exception v0

    .line 495
    :try_start_37
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 496
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_41

    goto :goto_35

    .line 499
    :catchall_41
    move-exception v0

    throw v0
.end method

.method private b(Lcom/tencent/bugly/legu/proguard/q;)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 359
    if-nez p1, :cond_5

    .line 383
    :cond_4
    :goto_4
    return v0

    .line 364
    :cond_5
    :try_start_5
    sget-object v2, Lcom/tencent/bugly/legu/proguard/o;->b:Lcom/tencent/bugly/legu/proguard/p;

    invoke-virtual {v2}, Lcom/tencent/bugly/legu/proguard/p;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 365
    if-eqz v2, :cond_4

    .line 366
    invoke-static {p1}, Lcom/tencent/bugly/legu/proguard/o;->d(Lcom/tencent/bugly/legu/proguard/q;)Landroid/content/ContentValues;

    move-result-object v3

    .line 367
    if-eqz v3, :cond_4

    .line 368
    const-string v4, "t_pf"

    const-string v5, "_id"

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 369
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_4

    .line 370
    const-string v4, "insert %s success!"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "t_pf"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 371
    iput-wide v2, p1, Lcom/tencent/bugly/legu/proguard/q;->a:J
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_30} :catch_32
    .catchall {:try_start_5 .. :try_end_30} :catchall_3d

    move v0, v1

    .line 372
    goto :goto_4

    .line 379
    :catch_32
    move-exception v1

    .line 380
    :try_start_33
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 381
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_3d

    goto :goto_4

    .line 385
    :catchall_3d
    move-exception v0

    .line 386
    throw v0
.end method

.method private static c(Lcom/tencent/bugly/legu/proguard/q;)Landroid/content/ContentValues;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 510
    if-nez p0, :cond_4

    .line 530
    :cond_3
    :goto_3
    return-object v0

    .line 514
    :cond_4
    :try_start_4
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 515
    iget-wide v2, p0, Lcom/tencent/bugly/legu/proguard/q;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1c

    .line 516
    const-string v2, "_id"

    iget-wide v3, p0, Lcom/tencent/bugly/legu/proguard/q;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 518
    :cond_1c
    const-string v2, "_tp"

    iget v3, p0, Lcom/tencent/bugly/legu/proguard/q;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 519
    const-string v2, "_pc"

    iget-object v3, p0, Lcom/tencent/bugly/legu/proguard/q;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v2, "_th"

    iget-object v3, p0, Lcom/tencent/bugly/legu/proguard/q;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v2, "_tm"

    iget-wide v3, p0, Lcom/tencent/bugly/legu/proguard/q;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 522
    iget-object v2, p0, Lcom/tencent/bugly/legu/proguard/q;->g:[B

    if-eqz v2, :cond_4b

    .line 523
    const-string v2, "_dt"

    iget-object v3, p0, Lcom/tencent/bugly/legu/proguard/q;->g:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4b} :catch_4d

    :cond_4b
    move-object v0, v1

    .line 524
    goto :goto_3

    .line 525
    :catch_4d
    move-exception v1

    .line 526
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 527
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method private static c(Landroid/database/Cursor;)Lcom/tencent/bugly/legu/proguard/l;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 948
    if-nez p0, :cond_4

    .line 965
    :cond_3
    :goto_3
    return-object v0

    .line 951
    :cond_4
    :try_start_4
    new-instance v1, Lcom/tencent/bugly/legu/proguard/l;

    invoke-direct {v1}, Lcom/tencent/bugly/legu/proguard/l;-><init>()V

    .line 952
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/legu/proguard/l;->a:J

    .line 953
    const-string v2, "_pc"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/legu/proguard/l;->b:Ljava/lang/String;

    .line 954
    const-string v2, "_sv"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/legu/proguard/l;->e:Ljava/lang/String;

    .line 955
    const-string v2, "_av"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/legu/proguard/l;->f:Ljava/lang/String;

    .line 956
    const-string v2, "_tm"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/legu/proguard/l;->c:J

    .line 957
    const-string v2, "_fl"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/tencent/bugly/legu/proguard/l;->d:I

    .line 958
    const-string v2, "_uid"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/legu/proguard/l;->g:J
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_5d} :catch_5f

    move-object v0, v1

    .line 959
    goto :goto_3

    .line 960
    :catch_5f
    move-exception v1

    .line 961
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 962
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
            "Lcom/tencent/bugly/legu/proguard/q;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 562
    .line 565
    :try_start_1
    sget-object v0, Lcom/tencent/bugly/legu/proguard/o;->b:Lcom/tencent/bugly/legu/proguard/p;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/proguard/p;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 566
    if-eqz v0, :cond_62

    .line 567
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 568
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

    .line 570
    if-nez v2, :cond_32

    .line 571
    if-eqz v2, :cond_30

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_30

    .line 606
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_30
    move-object v0, v8

    .line 612
    :goto_31
    return-object v0

    .line 574
    :cond_32
    :try_start_32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 575
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 576
    :goto_3c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_95

    .line 577
    invoke-static {v2}, Lcom/tencent/bugly/legu/proguard/o;->b(Landroid/database/Cursor;)Lcom/tencent/bugly/legu/proguard/q;

    move-result-object v5

    .line 578
    if-eqz v5, :cond_64

    .line 579
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_4b} :catch_4c
    .catchall {:try_start_32 .. :try_end_4b} :catchall_88

    goto :goto_3c

    .line 609
    :catch_4c
    move-exception v0

    move-object v1, v2

    .line 601
    :goto_4e
    :try_start_4e
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 602
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_db

    .line 605
    :cond_57
    if-eqz v1, :cond_62

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_62

    .line 606
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_62
    move-object v0, v8

    .line 612
    goto :goto_31

    .line 583
    :cond_64
    :try_start_64
    const-string v5, "_tp"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 584
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

    .line 586
    :catch_7e
    move-exception v5

    :try_start_7f
    const-string v5, "unknown id!"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_87} :catch_4c
    .catchall {:try_start_7f .. :try_end_87} :catchall_88

    goto :goto_3c

    .line 609
    :catchall_88
    move-exception v0

    :goto_89
    if-eqz v2, :cond_94

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_94

    .line 606
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 608
    :cond_94
    throw v0

    .line 592
    :cond_95
    :try_start_95
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_ca

    .line 593
    const-string v5, " and _id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 594
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 595
    const-string v4, "t_pf"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 596
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

    invoke-static {v3, v4}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_ca
    .catch Ljava/lang/Throwable; {:try_start_95 .. :try_end_ca} :catch_4c
    .catchall {:try_start_95 .. :try_end_ca} :catchall_88

    .line 605
    :cond_ca
    if-eqz v2, :cond_d5

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_d5

    .line 606
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_d5
    move-object v0, v1

    .line 608
    goto/16 :goto_31

    .line 609
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

.method private static d(Lcom/tencent/bugly/legu/proguard/q;)Landroid/content/ContentValues;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 658
    if-eqz p0, :cond_14

    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/q;->f:Ljava/lang/String;

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

    .line 676
    :cond_15
    :goto_15
    return-object v0

    .line 658
    :cond_16
    const/4 v0, 0x1

    goto :goto_12

    .line 662
    :cond_18
    :try_start_18
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 663
    iget-wide v2, p0, Lcom/tencent/bugly/legu/proguard/q;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_30

    .line 664
    const-string v2, "_id"

    iget-wide v3, p0, Lcom/tencent/bugly/legu/proguard/q;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 666
    :cond_30
    const-string v2, "_tp"

    iget-object v3, p0, Lcom/tencent/bugly/legu/proguard/q;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-string v2, "_tm"

    iget-wide v3, p0, Lcom/tencent/bugly/legu/proguard/q;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 668
    iget-object v2, p0, Lcom/tencent/bugly/legu/proguard/q;->g:[B

    if-eqz v2, :cond_15

    .line 669
    const-string v2, "_dt"

    iget-object v3, p0, Lcom/tencent/bugly/legu/proguard/q;->g:[B

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_4d} :catch_4e

    goto :goto_15

    .line 671
    :catch_4e
    move-exception v0

    .line 672
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_58

    .line 673
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_58
    move-object v0, v1

    .line 676
    goto :goto_15
.end method


# virtual methods
.method public final a(ILjava/lang/String;J)I
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and _pc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-nez v0, :cond_39

    const-string v0, ""

    :goto_2a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 903
    const-string v1, "t_crd"

    invoke-direct {p0, v1, v0, v4, v4}, Lcom/tencent/bugly/legu/proguard/o;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/legu/proguard/n;)I

    move-result v0

    .line 904
    return v0

    .line 902
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " and _tm < "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2a
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/legu/proguard/n;Z)I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/tencent/bugly/legu/proguard/o;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/legu/proguard/n;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/legu/proguard/n;Z)J
    .registers 7

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/bugly/legu/proguard/o;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/legu/proguard/n;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/legu/proguard/n;Z)Landroid/database/Cursor;
    .registers 18

    .prologue
    .line 83
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

    invoke-direct/range {v0 .. v10}, Lcom/tencent/bugly/legu/proguard/o;->a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/legu/proguard/n;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILjava/lang/String;)Lcom/tencent/bugly/legu/proguard/l;
    .registers 12

    .prologue
    const/4 v8, 0x0

    .line 868
    sget-object v0, Lcom/tencent/bugly/legu/proguard/o;->b:Lcom/tencent/bugly/legu/proguard/p;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/proguard/p;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 869
    if-eqz v0, :cond_4d

    .line 872
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and _pc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and _fl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 874
    const-string v1, "t_crd"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_tm DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_3f} :catch_67
    .catchall {:try_start_9 .. :try_end_3f} :catchall_7e

    move-result-object v1

    .line 877
    if-nez v1, :cond_4e

    .line 878
    if-eqz v1, :cond_4d

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 890
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 898
    :cond_4d
    :goto_4d
    return-object v8

    .line 881
    :cond_4e
    if-eqz v1, :cond_90

    :try_start_50
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 882
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/o;->c(Landroid/database/Cursor;)Lcom/tencent/bugly/legu/proguard/l;
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_59} :catch_8e
    .catchall {:try_start_50 .. :try_end_59} :catchall_8b

    move-result-object v0

    .line 889
    :goto_5a
    if-eqz v1, :cond_65

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_65

    .line 890
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_65
    move-object v8, v0

    .line 892
    goto :goto_4d

    .line 885
    :catch_67
    move-exception v0

    move-object v1, v8

    .line 886
    :goto_69
    :try_start_69
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_72

    .line 887
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_72
    .catchall {:try_start_69 .. :try_end_72} :catchall_8b

    .line 889
    :cond_72
    if-eqz v1, :cond_4d

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 890
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4d

    .line 893
    :catchall_7e
    move-exception v0

    :goto_7f
    if-eqz v8, :cond_8a

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_8a

    .line 890
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 892
    :cond_8a
    throw v0

    .line 893
    :catchall_8b
    move-exception v0

    move-object v8, v1

    goto :goto_7f

    .line 885
    :catch_8e
    move-exception v0

    goto :goto_69

    :cond_90
    move-object v0, v8

    goto :goto_5a
.end method

.method public final a(I)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/legu/proguard/q;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 397
    sget-object v0, Lcom/tencent/bugly/legu/proguard/o;->b:Lcom/tencent/bugly/legu/proguard/p;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/proguard/p;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 398
    if-eqz v0, :cond_66

    .line 401
    if-ltz p1, :cond_34

    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_tp = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 402
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

    .line 405
    if-nez v2, :cond_36

    .line 406
    if-eqz v2, :cond_32

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_32

    .line 440
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_32
    move-object v0, v8

    .line 448
    :goto_33
    return-object v0

    :cond_34
    move-object v3, v8

    .line 401
    goto :goto_1a

    .line 409
    :cond_36
    :try_start_36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 411
    :goto_40
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_99

    .line 412
    invoke-static {v2}, Lcom/tencent/bugly/legu/proguard/o;->a(Landroid/database/Cursor;)Lcom/tencent/bugly/legu/proguard/q;

    move-result-object v4

    .line 413
    if-eqz v4, :cond_68

    .line 414
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_4f} :catch_50
    .catchall {:try_start_36 .. :try_end_4f} :catchall_8c

    goto :goto_40

    .line 435
    :catch_50
    move-exception v0

    move-object v1, v2

    .line 436
    :goto_52
    :try_start_52
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 437
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_d4

    .line 439
    :cond_5b
    if-eqz v1, :cond_66

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_66

    .line 440
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_66
    move-object v0, v8

    .line 448
    goto :goto_33

    .line 418
    :cond_68
    :try_start_68
    const-string v4, "_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 419
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

    .line 422
    :catch_82
    move-exception v4

    :try_start_83
    const-string v4, "unknown id!"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_8b} :catch_50
    .catchall {:try_start_83 .. :try_end_8b} :catchall_8c

    goto :goto_40

    .line 443
    :catchall_8c
    move-exception v0

    :goto_8d
    if-eqz v2, :cond_98

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_98

    .line 440
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 442
    :cond_98
    throw v0

    .line 428
    :cond_99
    :try_start_99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 429
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_c3

    .line 430
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 431
    const-string v4, "t_lr"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 432
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

    invoke-static {v3, v4}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_c3
    .catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_c3} :catch_50
    .catchall {:try_start_99 .. :try_end_c3} :catchall_8c

    .line 439
    :cond_c3
    if-eqz v2, :cond_ce

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_ce

    .line 440
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_ce
    move-object v0, v1

    .line 442
    goto/16 :goto_33

    .line 443
    :catchall_d1
    move-exception v0

    move-object v2, v8

    goto :goto_8d

    :catchall_d4
    move-exception v0

    move-object v2, v1

    goto :goto_8d

    .line 435
    :catch_d7
    move-exception v0

    move-object v1, v8

    goto/16 :goto_52
.end method

.method public final a(ILjava/lang/String;JLjava/lang/String;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/legu/proguard/l;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 830
    sget-object v0, Lcom/tencent/bugly/legu/proguard/o;->b:Lcom/tencent/bugly/legu/proguard/p;

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/proguard/p;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 832
    if-eqz v0, :cond_a5

    .line 834
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and _pc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and _fl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > 0 and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_sv = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x0

    cmp-long v1, p3, v3

    if-eqz v1, :cond_78

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " and _tm > "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_55
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 837
    const-string v1, "t_crd"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_tm ASC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_68} :catch_c3
    .catchall {:try_start_9 .. :try_end_68} :catchall_b3

    move-result-object v1

    .line 840
    if-nez v1, :cond_7b

    .line 841
    if-eqz v1, :cond_76

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_76

    .line 857
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_76
    move-object v0, v8

    .line 864
    :cond_77
    :goto_77
    return-object v0

    .line 834
    :cond_78
    :try_start_78
    const-string v1, ""
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_7a} :catch_c3
    .catchall {:try_start_78 .. :try_end_7a} :catchall_b3

    goto :goto_55

    .line 843
    :cond_7b
    :try_start_7b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 844
    :cond_80
    :goto_80
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 845
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/o;->c(Landroid/database/Cursor;)Lcom/tencent/bugly/legu/proguard/l;

    move-result-object v2

    .line 846
    if-eqz v2, :cond_80

    .line 847
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_8f} :catch_90
    .catchall {:try_start_7b .. :try_end_8f} :catchall_c0

    goto :goto_80

    .line 851
    :catch_90
    move-exception v0

    .line 852
    :goto_91
    :try_start_91
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_9a

    .line 853
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9a
    .catchall {:try_start_91 .. :try_end_9a} :catchall_c0

    .line 856
    :cond_9a
    if-eqz v1, :cond_a5

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_a5

    .line 857
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a5
    move-object v0, v8

    .line 864
    goto :goto_77

    .line 856
    :cond_a7
    if-eqz v1, :cond_77

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_77

    .line 857
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_77

    .line 860
    :catchall_b3
    move-exception v0

    :goto_b4
    if-eqz v8, :cond_bf

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_bf

    .line 857
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 859
    :cond_bf
    throw v0

    .line 860
    :catchall_c0
    move-exception v0

    move-object v8, v1

    goto :goto_b4

    .line 851
    :catch_c3
    move-exception v0

    move-object v1, v8

    goto :goto_91
.end method

.method public final a(ILcom/tencent/bugly/legu/proguard/n;Z)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tencent/bugly/legu/proguard/n;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/bugly/legu/proguard/o;->a(ILcom/tencent/bugly/legu/proguard/n;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILjava/lang/String;Lcom/tencent/bugly/legu/proguard/n;Z)Z
    .registers 7

    .prologue
    .line 261
    const/16 v0, 0x22b

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/tencent/bugly/legu/proguard/o;->a(ILjava/lang/String;Lcom/tencent/bugly/legu/proguard/n;)Z

    move-result v0

    return v0
.end method

.method public final a(ILjava/lang/String;[BLcom/tencent/bugly/legu/proguard/n;Z)Z
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 228
    if-nez p5, :cond_15

    .line 229
    new-instance v0, Lcom/tencent/bugly/legu/proguard/o$a;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, v2}, Lcom/tencent/bugly/legu/proguard/o$a;-><init>(Lcom/tencent/bugly/legu/proguard/o;ILcom/tencent/bugly/legu/proguard/n;)V

    .line 230
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/bugly/legu/proguard/o$a;->a(ILjava/lang/String;[B)V

    .line 231
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/v;->a()Lcom/tencent/bugly/legu/proguard/v;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/legu/proguard/v;->b(Ljava/lang/Runnable;)Z

    .line 232
    const/4 v0, 0x1

    .line 234
    :goto_14
    return v0

    :cond_15
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/tencent/bugly/legu/proguard/o;->a(ILjava/lang/String;[BLcom/tencent/bugly/legu/proguard/n;)Z

    move-result v0

    goto :goto_14
.end method

.method public final a(Lcom/tencent/bugly/legu/proguard/l;)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 797
    if-nez p1, :cond_5

    .line 821
    :cond_4
    :goto_4
    return v0

    .line 802
    :cond_5
    :try_start_5
    sget-object v2, Lcom/tencent/bugly/legu/proguard/o;->b:Lcom/tencent/bugly/legu/proguard/p;

    invoke-virtual {v2}, Lcom/tencent/bugly/legu/proguard/p;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 803
    if-eqz v2, :cond_4

    .line 804
    invoke-static {p1}, Lcom/tencent/bugly/legu/proguard/o;->b(Lcom/tencent/bugly/legu/proguard/l;)Landroid/content/ContentValues;

    move-result-object v3

    .line 805
    if-eqz v3, :cond_4

    .line 806
    const-string v4, "t_crd"

    const-string v5, "_id"

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 807
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_4

    .line 808
    const-string v4, "insert %s success!"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "t_crd"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 809
    iput-wide v2, p1, Lcom/tencent/bugly/legu/proguard/l;->a:J
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_30} :catch_32
    .catchall {:try_start_5 .. :try_end_30} :catchall_3d

    move v0, v1

    .line 810
    goto :goto_4

    .line 817
    :catch_32
    move-exception v1

    .line 818
    :try_start_33
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 819
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_3d

    goto :goto_4

    .line 823
    :catchall_3d
    move-exception v0

    .line 824
    throw v0
.end method

.method public final a(Lcom/tencent/bugly/legu/proguard/q;)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 321
    if-nez p1, :cond_5

    .line 345
    :cond_4
    :goto_4
    return v0

    .line 326
    :cond_5
    :try_start_5
    sget-object v2, Lcom/tencent/bugly/legu/proguard/o;->b:Lcom/tencent/bugly/legu/proguard/p;

    invoke-virtual {v2}, Lcom/tencent/bugly/legu/proguard/p;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 327
    if-eqz v2, :cond_4

    .line 328
    invoke-static {p1}, Lcom/tencent/bugly/legu/proguard/o;->c(Lcom/tencent/bugly/legu/proguard/q;)Landroid/content/ContentValues;

    move-result-object v3

    .line 329
    if-eqz v3, :cond_4

    .line 330
    const-string v4, "t_lr"

    const-string v5, "_id"

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 331
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_4

    .line 332
    const-string v4, "insert %s success!"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "t_lr"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 333
    iput-wide v2, p1, Lcom/tencent/bugly/legu/proguard/q;->a:J
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_30} :catch_32
    .catchall {:try_start_5 .. :try_end_30} :catchall_3d

    move v0, v1

    .line 334
    goto :goto_4

    .line 341
    :catch_32
    move-exception v1

    .line 342
    :try_start_33
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 343
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_3d

    goto :goto_4

    .line 347
    :catchall_3d
    move-exception v0

    .line 348
    throw v0
.end method

.method public final b()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_fl = 0 or _sv <> \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a()Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "2.1.9\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 909
    const-string v1, "t_crd"

    invoke-direct {p0, v1, v0, v2, v2}, Lcom/tencent/bugly/legu/proguard/o;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/legu/proguard/n;)I

    move-result v0

    .line 910
    return v0
.end method
