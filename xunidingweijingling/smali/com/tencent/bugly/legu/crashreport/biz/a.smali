.class public final Lcom/tencent/bugly/legu/crashreport/biz/a;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/legu/crashreport/biz/a$b;,
        Lcom/tencent/bugly/legu/crashreport/biz/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:J

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/tencent/bugly/legu/crashreport/biz/a;->a:Landroid/content/Context;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/legu/crashreport/biz/a;)J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/tencent/bugly/legu/crashreport/biz/a;->b:J

    return-wide v0
.end method

.method private static a(Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;)Landroid/content/ContentValues;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 411
    if-nez p0, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-object v0

    .line 415
    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 416
    iget-wide v2, p0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 417
    const-string v2, "_id"

    iget-wide v3, p0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 419
    :cond_2
    const-string v2, "_tm"

    iget-wide v3, p0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 420
    const-string v2, "_ut"

    iget-wide v3, p0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->f:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 421
    const-string v2, "_tp"

    iget v3, p0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 422
    const-string v2, "_pc"

    iget-object v3, p0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v2, "_dt"

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p0, v3, v4}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 424
    goto :goto_0

    .line 425
    :catch_0
    move-exception v1

    .line 426
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 427
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Landroid/database/Cursor;)Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 437
    if-nez p0, :cond_1

    move-object v0, v1

    .line 454
    :cond_0
    :goto_0
    return-object v0

    .line 440
    :cond_1
    :try_start_0
    const-string v0, "_dt"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 441
    if-nez v0, :cond_2

    move-object v0, v1

    .line 442
    goto :goto_0

    .line 443
    :cond_2
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 444
    sget-object v4, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v4}, Lcom/tencent/bugly/legu/proguard/a;->a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;

    .line 445
    if-eqz v0, :cond_0

    .line 446
    iput-wide v2, v0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->a:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 449
    :catch_0
    move-exception v0

    .line 450
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 451
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    move-object v0, v1

    .line 454
    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/bugly/legu/crashreport/biz/a;Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 27
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/tencent/bugly/legu/crashreport/biz/a;->a(Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-static {}, Lcom/tencent/bugly/legu/proguard/o;->a()Lcom/tencent/bugly/legu/proguard/o;

    move-result-object v1

    const-string v2, "t_ui"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v6}, Lcom/tencent/bugly/legu/proguard/o;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/legu/proguard/n;Z)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-string v2, "insert %s success! %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "t_ui"

    aput-object v5, v3, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput-wide v0, p1, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->a:J

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 385
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;

    .line 390
    const-string v3, " or _id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 392
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 393
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 394
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 395
    :cond_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 397
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/o;->a()Lcom/tencent/bugly/legu/proguard/o;

    move-result-object v0

    const-string v1, "t_ui"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/legu/proguard/o;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/legu/proguard/n;Z)I

    move-result v0

    .line 400
    const-string v1, "deleted %s data %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "t_ui"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 401
    :catch_0
    move-exception v0

    .line 402
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 403
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/bugly/legu/crashreport/biz/a;)I
    .locals 2

    .prologue
    .line 27
    iget v0, p0, Lcom/tencent/bugly/legu/crashreport/biz/a;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/bugly/legu/crashreport/biz/a;->c:I

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 331
    .line 333
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    :goto_0
    if-eqz v0, :cond_2

    move-object v3, v7

    .line 336
    :goto_1
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/o;->a()Lcom/tencent/bugly/legu/proguard/o;

    move-result-object v0

    const-string v1, "t_ui"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/bugly/legu/proguard/o;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/legu/proguard/n;Z)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 339
    if-nez v8, :cond_3

    .line 340
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v7

    .line 378
    :goto_2
    return-object v0

    :cond_1
    move v0, v1

    .line 333
    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_pc = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    goto :goto_1

    .line 342
    :cond_3
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 344
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 345
    invoke-static {v8}, Lcom/tencent/bugly/legu/crashreport/biz/a;->a(Landroid/database/Cursor;)Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;

    move-result-object v1

    .line 346
    if-eqz v1, :cond_6

    .line 347
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 369
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 370
    :goto_4
    :try_start_3
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 371
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 373
    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 374
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v7

    .line 378
    goto :goto_2

    .line 351
    :cond_6
    :try_start_4
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 352
    const-string v3, " or _id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 354
    :catch_1
    move-exception v1

    :try_start_5
    const-string v1, "unknown id!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 373
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_7

    .line 374
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 375
    :cond_7
    throw v0

    .line 360
    :cond_8
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 362
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 363
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/o;->a()Lcom/tencent/bugly/legu/proguard/o;

    move-result-object v0

    const-string v1, "t_ui"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/legu/proguard/o;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/legu/proguard/n;Z)I

    move-result v0

    .line 366
    const-string v1, "[session] deleted %s error data %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "t_ui"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 373
    :cond_9
    if-eqz v8, :cond_a

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_a

    .line 374
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_a
    move-object v0, v6

    .line 375
    goto/16 :goto_2

    .line 373
    :catchall_1
    move-exception v0

    move-object v8, v7

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v8, v1

    goto :goto_5

    .line 369
    :catch_2
    move-exception v0

    move-object v1, v7

    goto/16 :goto_4
.end method

.method public final a()V
    .locals 6

    .prologue
    .line 99
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/a;->o()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/bugly/legu/crashreport/biz/a;->b:J

    .line 100
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/v;->a()Lcom/tencent/bugly/legu/proguard/v;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/legu/crashreport/biz/a$b;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/legu/crashreport/biz/a$b;-><init>(Lcom/tencent/bugly/legu/crashreport/biz/a;)V

    iget-wide v2, p0, Lcom/tencent/bugly/legu/crashreport/biz/a;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/bugly/legu/proguard/v;->a(Ljava/lang/Runnable;J)Z

    .line 102
    return-void
.end method

.method public final a(IZJ)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 68
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/legu/crashreport/common/strategy/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;

    move-result-object v2

    .line 73
    if-eqz v2, :cond_0

    iget-boolean v2, v2, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->e:Z

    if-nez v2, :cond_0

    .line 74
    if-eq p1, v0, :cond_0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    .line 75
    const-string v0, "UserInfo is disable"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 86
    :goto_0
    return-void

    .line 79
    :cond_0
    if-ne p1, v0, :cond_1

    .line 80
    iget v2, p0, Lcom/tencent/bugly/legu/crashreport/biz/a;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/bugly/legu/crashreport/biz/a;->c:I

    .line 83
    :cond_1
    iget-object v2, p0, Lcom/tencent/bugly/legu/crashreport/biz/a;->a:Landroid/content/Context;

    if-ne p1, v0, :cond_2

    :goto_1
    invoke-static {v2}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v1

    new-instance v2, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;

    invoke-direct {v2}, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;-><init>()V

    iput p1, v2, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->b:I

    iget-object v3, v1, Lcom/tencent/bugly/legu/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->e:J

    const-wide/16 v3, -0x1

    iput-wide v3, v2, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->f:J

    iget-object v3, v1, Lcom/tencent/bugly/legu/crashreport/common/info/a;->i:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->n:Ljava/lang/String;

    iput v0, v2, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->o:I

    iget-boolean v0, v1, Lcom/tencent/bugly/legu/crashreport/common/info/a;->n:Z

    iput-boolean v0, v2, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->l:Z

    iget-object v0, v1, Lcom/tencent/bugly/legu/crashreport/common/info/a;->o:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->m:Ljava/lang/String;

    iget-wide v3, v1, Lcom/tencent/bugly/legu/crashreport/common/info/a;->p:J

    iput-wide v3, v2, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->g:J

    iget-wide v3, v1, Lcom/tencent/bugly/legu/crashreport/common/info/a;->q:J

    iput-wide v3, v2, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->h:J

    iget-wide v3, v1, Lcom/tencent/bugly/legu/crashreport/common/info/a;->r:J

    iput-wide v3, v2, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->i:J

    iget-wide v3, v1, Lcom/tencent/bugly/legu/crashreport/common/info/a;->s:J

    iput-wide v3, v2, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->k:J

    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->w()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->r:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->A()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->s:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->B()I

    move-result v0

    iput v0, v2, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->p:I

    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->C()I

    move-result v0

    iput v0, v2, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->q:I

    .line 84
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/v;->a()Lcom/tencent/bugly/legu/proguard/v;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/legu/crashreport/biz/a$a;

    invoke-direct {v1, p0, v2, p2}, Lcom/tencent/bugly/legu/crashreport/biz/a$a;-><init>(Lcom/tencent/bugly/legu/crashreport/biz/a;Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;Z)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/bugly/legu/proguard/v;->a(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    move v0, v1

    .line 83
    goto :goto_1
.end method

.method public final declared-synchronized b()V
    .locals 13

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 154
    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/biz/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/legu/crashreport/common/info/a;->d:Ljava/lang/String;

    .line 157
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 160
    invoke-virtual {p0, v0}, Lcom/tencent/bugly/legu/crashreport/biz/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 162
    if-eqz v4, :cond_9

    .line 164
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0xa

    .line 166
    if-lez v7, :cond_3

    move v5, v2

    .line 168
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v5, v0, :cond_2

    .line 169
    add-int/lit8 v0, v5, 0x1

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 170
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;

    iget-wide v8, v0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->e:J

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;

    iget-wide v10, v0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->e:J

    cmp-long v0, v8, v10

    if-lez v0, :cond_0

    .line 171
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;

    .line 172
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4, v5, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-interface {v4, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 168
    :cond_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 179
    :goto_2
    if-ge v0, v7, :cond_3

    .line 180
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 186
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    .line 187
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 188
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;

    .line 189
    iget-wide v7, v0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->f:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-eqz v7, :cond_4

    .line 191
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 194
    iget-wide v7, v0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->e:J

    invoke-static {}, Lcom/tencent/bugly/legu/proguard/a;->o()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_4

    .line 195
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_4
    iget-wide v7, v0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/32 v11, 0x927c0

    sub-long/2addr v9, v11

    cmp-long v7, v7, v9

    if-lez v7, :cond_10

    .line 201
    iget v7, v0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->b:I

    if-eq v7, v3, :cond_5

    iget v0, v0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->b:I

    const/4 v7, 0x4

    if-ne v0, v7, :cond_10

    .line 203
    :cond_5
    add-int/lit8 v0, v1, 0x1

    :goto_4
    move v1, v0

    .line 206
    goto :goto_3

    .line 208
    :cond_6
    const/16 v0, 0xf

    if-le v1, v0, :cond_f

    .line 210
    const-string v0, "[userinfo] userinfo too many times in 10 min: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v7

    invoke-static {v0, v5}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v2

    :goto_5
    move v1, v0

    move-object v0, v4

    .line 217
    :goto_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 218
    invoke-static {v6}, Lcom/tencent/bugly/legu/crashreport/biz/a;->a(Ljava/util/List;)V

    .line 221
    :cond_7
    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_a

    .line 277
    :cond_8
    :goto_7
    monitor-exit p0

    return-void

    .line 213
    :cond_9
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v3

    goto :goto_6

    .line 226
    :cond_a
    const-string v1, "[userinfo] do userinfo, size: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 229
    iget v1, p0, Lcom/tencent/bugly/legu/crashreport/biz/a;->c:I

    if-ne v1, v3, :cond_b

    .line 232
    :goto_8
    invoke-static {v0, v3}, Lcom/tencent/bugly/legu/proguard/a;->a(Ljava/util/List;I)Lcom/tencent/bugly/legu/proguard/ar;

    move-result-object v1

    .line 233
    if-nez v1, :cond_c

    .line 234
    const-string v0, "[biz] create uPkg fail!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 229
    :cond_b
    const/4 v3, 0x2

    goto :goto_8

    .line 238
    :cond_c
    :try_start_2
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/a;->a(Lcom/tencent/bugly/legu/proguard/j;)[B

    move-result-object v1

    .line 239
    if-nez v1, :cond_d

    .line 240
    const-string v0, "[biz] send encode fail!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_7

    .line 244
    :cond_d
    iget-object v2, p0, Lcom/tencent/bugly/legu/crashreport/biz/a;->a:Landroid/content/Context;

    const/16 v3, 0x280

    invoke-static {v2, v3, v1}, Lcom/tencent/bugly/legu/proguard/a;->a(Landroid/content/Context;I[B)Lcom/tencent/bugly/legu/proguard/am;

    move-result-object v1

    .line 248
    if-nez v1, :cond_e

    .line 249
    const-string v0, "request package is null."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_7

    .line 256
    :cond_e
    new-instance v2, Lcom/tencent/bugly/legu/crashreport/biz/a$1;

    invoke-direct {v2, p0, v0}, Lcom/tencent/bugly/legu/crashreport/biz/a$1;-><init>(Lcom/tencent/bugly/legu/crashreport/biz/a;Ljava/util/List;)V

    .line 276
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/t;->a()Lcom/tencent/bugly/legu/proguard/t;

    move-result-object v0

    const/16 v3, 0x3e9

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/tencent/bugly/legu/proguard/t;->a(ILcom/tencent/bugly/legu/proguard/am;Ljava/lang/String;Lcom/tencent/bugly/legu/proguard/s;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :cond_f
    move v0, v3

    goto :goto_5

    :cond_10
    move v0, v1

    goto/16 :goto_4
.end method
