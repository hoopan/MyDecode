.class public final Lcom/tencent/bugly/lejiagu/proguard/n;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BUGLY"


# static fields
.field private static a:I


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/lejiagu/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const/16 v0, 0x9

    sput v0, Lcom/tencent/bugly/lejiagu/proguard/n;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 6
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
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bugly_db_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "lejiagu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget v2, Lcom/tencent/bugly/lejiagu/proguard/n;->a:I

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 43
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/proguard/n;->b:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/tencent/bugly/lejiagu/proguard/n;->c:Ljava/util/List;

    .line 53
    return-void
.end method

.method private declared-synchronized a(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 125
    monitor-enter p0

    const/4 v2, 0x4

    :try_start_4
    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "t_cr"

    aput-object v4, v3, v2

    const/4 v2, 0x1

    const-string v4, "t_lr"

    aput-object v4, v3, v2

    const/4 v2, 0x2

    const-string v4, "t_ui"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "t_pf"

    aput-object v4, v3, v2

    .line 128
    array-length v4, v3

    move v2, v1

    :goto_1c
    if-ge v2, v4, :cond_40

    aget-object v5, v3, v2

    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DROP TABLE IF EXISTS "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_32} :catch_35
    .catchall {:try_start_4 .. :try_end_32} :catchall_42

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 132
    :catch_35
    move-exception v0

    .line 133
    :try_start_36
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/u;->b(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 134
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_42

    :cond_3f
    move v0, v1

    .line 135
    :cond_40
    monitor-exit p0

    return v0

    .line 125
    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 8

    .prologue
    const/4 v6, 0x5

    const/4 v0, 0x0

    .line 196
    monitor-enter p0

    const/4 v1, 0x0

    .line 198
    :goto_4
    if-nez v1, :cond_37

    if-ge v0, v6, :cond_37

    .line 200
    add-int/lit8 v0, v0, 0x1

    .line 202
    :try_start_a
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_d} :catch_f
    .catchall {:try_start_a .. :try_end_d} :catchall_34

    move-result-object v1

    goto :goto_4

    .line 204
    :catch_f
    move-exception v2

    :try_start_10
    const-string v2, "try db count %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 205
    if-ne v0, v6, :cond_29

    .line 206
    const-string v2, "get db fail!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_34

    .line 209
    :cond_29
    const-wide/16 v2, 0xc8

    :try_start_2b
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2e} :catch_2f
    .catchall {:try_start_2b .. :try_end_2e} :catchall_34

    goto :goto_4

    .line 210
    :catch_2f
    move-exception v2

    .line 211
    :try_start_30
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_4

    .line 196
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0

    .line 215
    :cond_37
    monitor-exit p0

    return-object v1
.end method

.method public final declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 8

    .prologue
    const/4 v6, 0x5

    const/4 v0, 0x0

    .line 220
    monitor-enter p0

    const/4 v1, 0x0

    .line 222
    :goto_4
    if-nez v1, :cond_37

    if-ge v0, v6, :cond_37

    .line 223
    add-int/lit8 v0, v0, 0x1

    .line 226
    :try_start_a
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_d} :catch_f
    .catchall {:try_start_a .. :try_end_d} :catchall_34

    move-result-object v1

    goto :goto_4

    .line 228
    :catch_f
    move-exception v2

    :try_start_10
    const-string v2, "try db %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 229
    if-ne v0, v6, :cond_29

    .line 230
    const-string v2, "get db fail!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_34

    .line 234
    :cond_29
    const-wide/16 v2, 0xc8

    :try_start_2b
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2e} :catch_2f
    .catchall {:try_start_2b .. :try_end_2e} :catchall_34

    goto :goto_4

    .line 235
    :catch_2f
    move-exception v2

    .line 236
    :try_start_30
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_4

    .line 220
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0

    .line 241
    :cond_37
    if-nez v1, :cond_41

    .line 242
    :try_start_39
    const-string v0, "db error delay error record 1min"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_34

    .line 244
    :cond_41
    monitor-exit p0

    return-object v1
.end method

.method public final declared-synchronized onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7

    .prologue
    .line 60
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 64
    const-string v1, " CREATE TABLE t_ui"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ( _id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER PRIMARY KEY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , _tm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , _ut"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , _tp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , _dt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " blob"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , _pc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " text"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    const-string v2, "create %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 76
    const-string v1, " CREATE TABLE t_lr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ( _id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER PRIMARY KEY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , _tp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , _tm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , _pc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " text"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , _th"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " text"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , _dt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " blob"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    const-string v2, "create %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 87
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 88
    const-string v1, " CREATE TABLE t_pf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ( _id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " integer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , _tp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " text"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , _tm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , _dt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " blob"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",primary key(_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",_tp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    const-string v1, "create %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_135
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_135} :catch_13b
    .catchall {:try_start_1 .. :try_end_135} :catchall_146

    .line 103
    :cond_135
    :goto_135
    :try_start_135
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/n;->c:Ljava/util/List;
    :try_end_137
    .catchall {:try_start_135 .. :try_end_137} :catchall_146

    if-nez v0, :cond_149

    .line 115
    :cond_139
    monitor-exit p0

    return-void

    .line 97
    :catch_13b
    move-exception v0

    .line 98
    :try_start_13c
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/u;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_135

    .line 99
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_145
    .catchall {:try_start_13c .. :try_end_145} :catchall_146

    goto :goto_135

    .line 60
    :catchall_146
    move-exception v0

    monitor-exit p0

    throw v0

    .line 106
    :cond_149
    :try_start_149
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/n;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14f
    :goto_14f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_139

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/lejiagu/a;
    :try_end_15b
    .catchall {:try_start_149 .. :try_end_15b} :catchall_146

    .line 108
    :try_start_15b
    invoke-virtual {v0, p1}, Lcom/tencent/bugly/lejiagu/a;->onDbCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_15e
    .catch Ljava/lang/Throwable; {:try_start_15b .. :try_end_15e} :catch_15f
    .catchall {:try_start_15b .. :try_end_15e} :catchall_146

    goto :goto_14f

    .line 109
    :catch_15f
    move-exception v0

    .line 110
    :try_start_160
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/u;->b(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_14f

    .line 111
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_169
    .catchall {:try_start_160 .. :try_end_169} :catchall_146

    goto :goto_14f
.end method

.method public final declared-synchronized onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 168
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/a;->d()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_50

    .line 169
    const-string v0, "drowngrade %d to %d drop tables!}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 170
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/n;->c:Ljava/util/List;

    if-eqz v0, :cond_47

    .line 171
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/n;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_29
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/lejiagu/a;
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_44

    .line 173
    :try_start_35
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/bugly/lejiagu/a;->onDbDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_38} :catch_39
    .catchall {:try_start_35 .. :try_end_38} :catchall_44

    goto :goto_29

    .line 174
    :catch_39
    move-exception v0

    .line 175
    :try_start_3a
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/u;->b(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 176
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_44

    goto :goto_29

    .line 168
    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0

    .line 181
    :cond_47
    :try_start_47
    invoke-direct {p0, p1}, Lcom/tencent/bugly/lejiagu/proguard/n;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 182
    invoke-virtual {p0, p1}, Lcom/tencent/bugly/lejiagu/proguard/n;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_44

    .line 192
    :cond_50
    :goto_50
    monitor-exit p0

    return-void

    .line 185
    :cond_52
    :try_start_52
    const-string v0, "drop fail delete db"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/n;->b:Landroid/content/Context;

    const-string v1, "bugly_db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_50

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 188
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_6d
    .catchall {:try_start_52 .. :try_end_6d} :catchall_44

    goto :goto_50
.end method

.method public final declared-synchronized onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 8

    .prologue
    .line 141
    monitor-enter p0

    :try_start_1
    const-string v0, "upgrade %d to %d , drop tables!"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/n;->c:Ljava/util/List;

    if-eqz v0, :cond_3f

    .line 143
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/n;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/lejiagu/a;
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_3c

    .line 145
    :try_start_2d
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/bugly/lejiagu/a;->onDbUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_30} :catch_31
    .catchall {:try_start_2d .. :try_end_30} :catchall_3c

    goto :goto_21

    .line 146
    :catch_31
    move-exception v0

    .line 147
    :try_start_32
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/u;->b(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 148
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_3c

    goto :goto_21

    .line 141
    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 153
    :cond_3f
    :try_start_3f
    invoke-direct {p0, p1}, Lcom/tencent/bugly/lejiagu/proguard/n;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 154
    invoke-virtual {p0, p1}, Lcom/tencent/bugly/lejiagu/proguard/n;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_3c

    .line 163
    :cond_48
    :goto_48
    monitor-exit p0

    return-void

    .line 157
    :cond_4a
    :try_start_4a
    const-string v0, "drop fail delete db"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 158
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/n;->b:Landroid/content/Context;

    const-string v1, "bugly_db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_48

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 160
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_65
    .catchall {:try_start_4a .. :try_end_65} :catchall_3c

    goto :goto_48
.end method
