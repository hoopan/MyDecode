.class public Lcom/tencent/bugly/legu/proguard/a;
.super Ljava/lang/Object;
.source "BUGLY"


# instance fields
.field protected a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;>;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/String;

.field c:Lcom/tencent/bugly/legu/proguard/h;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/a;->a:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/a;->d:Ljava/util/HashMap;

    .line 32
    const-string v0, "GBK"

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/a;->b:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/tencent/bugly/legu/proguard/h;

    invoke-direct {v0}, Lcom/tencent/bugly/legu/proguard/h;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/a;->c:Lcom/tencent/bugly/legu/proguard/h;

    return-void
.end method

.method public static a(Landroid/content/Context;I[B)Lcom/tencent/bugly/legu/proguard/am;
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 216
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a()Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v2

    .line 217
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/legu/crashreport/common/strategy/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;

    move-result-object v3

    .line 219
    if-eqz v2, :cond_11

    if-nez v3, :cond_1b

    .line 220
    :cond_11
    const-string v0, "illigle access to create req pkg!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v1

    .line 265
    :goto_1a
    return-object v0

    .line 226
    :cond_1b
    :try_start_1b
    new-instance v0, Lcom/tencent/bugly/legu/proguard/am;

    invoke-direct {v0}, Lcom/tencent/bugly/legu/proguard/am;-><init>()V

    .line 228
    monitor-enter v2
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_21} :catch_f3

    .line 229
    const/4 v4, 0x1

    :try_start_22
    iput v4, v0, Lcom/tencent/bugly/legu/proguard/am;->a:I

    .line 230
    invoke-virtual {v2}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->e()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/tencent/bugly/legu/proguard/am;->b:Ljava/lang/String;

    .line 231
    iget-object v4, v2, Lcom/tencent/bugly/legu/crashreport/common/info/a;->c:Ljava/lang/String;

    iput-object v4, v0, Lcom/tencent/bugly/legu/proguard/am;->c:Ljava/lang/String;

    .line 232
    iget-object v4, v2, Lcom/tencent/bugly/legu/crashreport/common/info/a;->i:Ljava/lang/String;

    iput-object v4, v0, Lcom/tencent/bugly/legu/proguard/am;->d:Ljava/lang/String;

    .line 233
    iget-object v4, v2, Lcom/tencent/bugly/legu/crashreport/common/info/a;->j:Ljava/lang/String;

    iput-object v4, v0, Lcom/tencent/bugly/legu/proguard/am;->e:Ljava/lang/String;

    .line 234
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "2.1.9"

    iput-object v4, v0, Lcom/tencent/bugly/legu/proguard/am;->f:Ljava/lang/String;

    .line 235
    iput p1, v0, Lcom/tencent/bugly/legu/proguard/am;->g:I

    .line 236
    if-nez p2, :cond_47

    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    :cond_47
    iput-object p2, v0, Lcom/tencent/bugly/legu/proguard/am;->h:[B

    .line 237
    iget-object v4, v2, Lcom/tencent/bugly/legu/crashreport/common/info/a;->f:Ljava/lang/String;

    iput-object v4, v0, Lcom/tencent/bugly/legu/proguard/am;->i:Ljava/lang/String;

    .line 238
    iget-object v4, v2, Lcom/tencent/bugly/legu/crashreport/common/info/a;->g:Ljava/lang/String;

    iput-object v4, v0, Lcom/tencent/bugly/legu/proguard/am;->j:Ljava/lang/String;

    .line 239
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v0, Lcom/tencent/bugly/legu/proguard/am;->k:Ljava/util/Map;

    .line 240
    invoke-virtual {v2}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->d()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/tencent/bugly/legu/proguard/am;->l:Ljava/lang/String;

    .line 241
    iget-wide v3, v3, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->l:J

    iput-wide v3, v0, Lcom/tencent/bugly/legu/proguard/am;->m:J

    .line 242
    invoke-virtual {v2}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/bugly/legu/proguard/am;->o:Ljava/lang/String;

    .line 243
    invoke-static {p0}, Lcom/tencent/bugly/legu/proguard/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/bugly/legu/proguard/am;->p:Ljava/lang/String;

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/tencent/bugly/legu/proguard/am;->q:J

    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/bugly/legu/proguard/am;->r:Ljava/lang/String;

    .line 246
    invoke-virtual {v2}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/bugly/legu/proguard/am;->s:Ljava/lang/String;

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/bugly/legu/proguard/am;->t:Ljava/lang/String;

    .line 248
    invoke-virtual {v2}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->k()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/bugly/legu/proguard/am;->u:Ljava/lang/String;

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/bugly/legu/proguard/am;->v:Ljava/lang/String;

    .line 250
    iget-object v3, v0, Lcom/tencent/bugly/legu/proguard/am;->p:Ljava/lang/String;

    iput-object v3, v0, Lcom/tencent/bugly/legu/proguard/am;->w:Ljava/lang/String;

    .line 251
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "com.tencent.bugly"

    iput-object v3, v0, Lcom/tencent/bugly/legu/proguard/am;->n:Ljava/lang/String;

    .line 252
    monitor-exit v2
    :try_end_c5
    .catchall {:try_start_22 .. :try_end_c5} :catchall_100

    .line 255
    :try_start_c5
    iget-object v3, v0, Lcom/tencent/bugly/legu/proguard/am;->k:Ljava/util/Map;

    const-string v4, "F11"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v6, v2, Lcom/tencent/bugly/legu/crashreport/common/info/a;->y:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v3, v0, Lcom/tencent/bugly/legu/proguard/am;->k:Ljava/util/Map;

    const-string v4, "F12"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, v2, Lcom/tencent/bugly/legu/crashreport/common/info/a;->x:Z

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f1
    .catch Ljava/lang/Throwable; {:try_start_c5 .. :try_end_f1} :catch_f3

    goto/16 :goto_1a

    .line 262
    :catch_f3
    move-exception v0

    .line 263
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->b(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_fd

    .line 264
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_fd
    move-object v0, v1

    .line 265
    goto/16 :goto_1a

    .line 252
    :catchall_100
    move-exception v0

    :try_start_101
    monitor-exit v2

    throw v0
    :try_end_103
    .catch Ljava/lang/Throwable; {:try_start_101 .. :try_end_103} :catch_f3
.end method

.method public static a([BZ)Lcom/tencent/bugly/legu/proguard/an;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 294
    if-eqz p0, :cond_71

    .line 296
    :try_start_3
    new-instance v0, Lcom/tencent/bugly/legu/proguard/d;

    invoke-direct {v0}, Lcom/tencent/bugly/legu/proguard/d;-><init>()V

    .line 297
    invoke-virtual {v0}, Lcom/tencent/bugly/legu/proguard/d;->p()V

    .line 298
    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/legu/proguard/d;->a(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0, p0}, Lcom/tencent/bugly/legu/proguard/d;->a([B)V

    .line 300
    const-string v2, "detail"

    new-instance v3, Lcom/tencent/bugly/legu/proguard/an;

    invoke-direct {v3}, Lcom/tencent/bugly/legu/proguard/an;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/tencent/bugly/legu/proguard/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 303
    const-class v2, Lcom/tencent/bugly/legu/proguard/an;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 304
    const-class v2, Lcom/tencent/bugly/legu/proguard/an;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/legu/proguard/an;

    .line 306
    :goto_2e
    if-nez p1, :cond_66

    .line 307
    if-eqz v0, :cond_66

    iget-object v2, v0, Lcom/tencent/bugly/legu/proguard/an;->c:[B

    if-eqz v2, :cond_66

    iget-object v2, v0, Lcom/tencent/bugly/legu/proguard/an;->c:[B

    array-length v2, v2

    if-lez v2, :cond_66

    .line 308
    const-string v2, "resp buf %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/tencent/bugly/legu/proguard/an;->c:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 310
    iget-object v2, v0, Lcom/tencent/bugly/legu/proguard/an;->c:[B

    const/4 v3, 0x2

    const/4 v4, 0x1

    sget-object v5, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->a:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/tencent/bugly/legu/proguard/a;->a([BIILjava/lang/String;)[B

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/bugly/legu/proguard/an;->c:[B

    .line 314
    iget-object v2, v0, Lcom/tencent/bugly/legu/proguard/an;->c:[B

    if-nez v2, :cond_66

    .line 315
    const-string v0, "resp sbuffer error!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_65} :catch_67

    move-object v0, v1

    .line 328
    :cond_66
    :goto_66
    return-object v0

    .line 322
    :catch_67
    move-exception v0

    .line 323
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->b(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_71

    .line 324
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_71
    move-object v0, v1

    .line 328
    goto :goto_66

    :cond_73
    move-object v0, v1

    goto :goto_2e
.end method

.method public static a(Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;)Lcom/tencent/bugly/legu/proguard/aq;
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 43
    if-nez p0, :cond_8

    move-object v0, v1

    .line 120
    :goto_7
    return-object v0

    .line 45
    :cond_8
    new-instance v4, Lcom/tencent/bugly/legu/proguard/aq;

    invoke-direct {v4}, Lcom/tencent/bugly/legu/proguard/aq;-><init>()V

    .line 46
    iget-wide v5, p0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->e:J

    iput-wide v5, v4, Lcom/tencent/bugly/legu/proguard/aq;->a:J

    .line 47
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->j:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/legu/proguard/aq;->e:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->c:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/legu/proguard/aq;->d:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->d:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/legu/proguard/aq;->c:Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a()Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/bugly/legu/proguard/aq;->g:Ljava/lang/String;

    .line 51
    iget v0, p0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->o:I

    if-ne v0, v2, :cond_c0

    move v0, v2

    :goto_2c
    iput-boolean v0, v4, Lcom/tencent/bugly/legu/proguard/aq;->h:Z

    .line 53
    iget v0, p0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->b:I

    packed-switch v0, :pswitch_data_1e6

    .line 72
    iget v0, p0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->b:I

    const/16 v5, 0xa

    if-lt v0, v5, :cond_d5

    iget v0, p0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->b:I

    const/16 v5, 0x14

    if-ge v0, v5, :cond_d5

    .line 74
    iget v0, p0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->b:I

    int-to-byte v0, v0

    iput-byte v0, v4, Lcom/tencent/bugly/legu/proguard/aq;->b:B

    .line 83
    :goto_44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/legu/proguard/aq;->f:Ljava/util/Map;

    .line 84
    iget v0, p0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->p:I

    if-ltz v0, :cond_65

    .line 85
    iget-object v0, v4, Lcom/tencent/bugly/legu/proguard/aq;->f:Ljava/util/Map;

    const-string v1, "C01"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->p:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_65
    iget v0, p0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->q:I

    if-ltz v0, :cond_7f

    .line 88
    iget-object v0, v4, Lcom/tencent/bugly/legu/proguard/aq;->f:Ljava/util/Map;

    const-string v1, "C02"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->q:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_7f
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->r:Ljava/util/Map;

    if-eqz v0, :cond_e7

    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_e7

    .line 91
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_95
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 92
    iget-object v6, v4, Lcom/tencent/bugly/legu/proguard/aq;->f:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v1, "C03_"

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_95

    :cond_c0
    move v0, v3

    .line 51
    goto/16 :goto_2c

    .line 55
    :pswitch_c3
    iput-byte v2, v4, Lcom/tencent/bugly/legu/proguard/aq;->b:B

    goto/16 :goto_44

    .line 59
    :pswitch_c7
    iput-byte v8, v4, Lcom/tencent/bugly/legu/proguard/aq;->b:B

    goto/16 :goto_44

    .line 63
    :pswitch_cb
    const/4 v0, 0x4

    iput-byte v0, v4, Lcom/tencent/bugly/legu/proguard/aq;->b:B

    goto/16 :goto_44

    .line 67
    :pswitch_d0
    const/4 v0, 0x3

    iput-byte v0, v4, Lcom/tencent/bugly/legu/proguard/aq;->b:B

    goto/16 :goto_44

    .line 76
    :cond_d5
    const-string v0, "unknown uinfo type %d "

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v1

    .line 77
    goto/16 :goto_7

    .line 97
    :cond_e7
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->s:Ljava/util/Map;

    if-eqz v0, :cond_128

    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_128

    .line 98
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_fd
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_128

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 99
    iget-object v6, v4, Lcom/tencent/bugly/legu/proguard/aq;->f:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v1, "C04_"

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_fd

    .line 105
    :cond_128
    iget-object v1, v4, Lcom/tencent/bugly/legu/proguard/aq;->f:Ljava/util/Map;

    const-string v5, "A36"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->l:Z

    if-nez v0, :cond_1e3

    move v0, v2

    :goto_136
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, v4, Lcom/tencent/bugly/legu/proguard/aq;->f:Ljava/util/Map;

    const-string v1, "F02"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->g:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, v4, Lcom/tencent/bugly/legu/proguard/aq;->f:Ljava/util/Map;

    const-string v1, "F03"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->h:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, v4, Lcom/tencent/bugly/legu/proguard/aq;->f:Ljava/util/Map;

    const-string v1, "F04"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->j:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, v4, Lcom/tencent/bugly/legu/proguard/aq;->f:Ljava/util/Map;

    const-string v1, "F05"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->i:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, v4, Lcom/tencent/bugly/legu/proguard/aq;->f:Ljava/util/Map;

    const-string v1, "F06"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->m:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, v4, Lcom/tencent/bugly/legu/proguard/aq;->f:Ljava/util/Map;

    const-string v1, "F10"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;->k:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v0, "summary type %d vm:%d"

    new-array v1, v8, [Ljava/lang/Object;

    iget-byte v5, v4, Lcom/tencent/bugly/legu/proguard/aq;->b:B

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v1, v3

    iget-object v3, v4, Lcom/tencent/bugly/legu/proguard/aq;->f:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v4

    .line 120
    goto/16 :goto_7

    :cond_1e3
    move v0, v3

    .line 105
    goto/16 :goto_136

    .line 53
    :pswitch_data_1e6
    .packed-switch 0x1
        :pswitch_c3
        :pswitch_cb
        :pswitch_c7
        :pswitch_d0
    .end packed-switch
.end method

.method public static a(Ljava/util/List;I)Lcom/tencent/bugly/legu/proguard/ar;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;",
            ">;I)",
            "Lcom/tencent/bugly/legu/proguard/ar;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 127
    if-eqz p0, :cond_a

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    move-object v0, v2

    .line 179
    :goto_b
    return-object v0

    .line 129
    :cond_c
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a()Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v1

    .line 130
    new-instance v3, Lcom/tencent/bugly/legu/proguard/ar;

    invoke-direct {v3}, Lcom/tencent/bugly/legu/proguard/ar;-><init>()V

    .line 131
    iget-object v0, v1, Lcom/tencent/bugly/legu/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/bugly/legu/proguard/ar;->b:Ljava/lang/String;

    .line 132
    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/bugly/legu/proguard/ar;->c:Ljava/lang/String;

    .line 133
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 134
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_28
    :goto_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;

    .line 135
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/a;->a(Lcom/tencent/bugly/legu/crashreport/biz/UserInfoBean;)Lcom/tencent/bugly/legu/proguard/aq;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_28

    .line 137
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 139
    :cond_3e
    iput-object v4, v3, Lcom/tencent/bugly/legu/proguard/ar;->d:Ljava/util/ArrayList;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v3, Lcom/tencent/bugly/legu/proguard/ar;->e:Ljava/util/Map;

    .line 141
    iget-object v0, v3, Lcom/tencent/bugly/legu/proguard/ar;->e:Ljava/util/Map;

    const-string v4, "A7"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/tencent/bugly/legu/crashreport/common/info/a;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, v3, Lcom/tencent/bugly/legu/proguard/ar;->e:Ljava/util/Map;

    const-string v4, "A6"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->r()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, v3, Lcom/tencent/bugly/legu/proguard/ar;->e:Ljava/util/Map;

    const-string v4, "A5"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->q()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, v3, Lcom/tencent/bugly/legu/proguard/ar;->e:Ljava/util/Map;

    const-string v4, "A2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->o()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, v3, Lcom/tencent/bugly/legu/proguard/ar;->e:Ljava/util/Map;

    const-string v4, "A1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->o()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, v3, Lcom/tencent/bugly/legu/proguard/ar;->e:Ljava/util/Map;

    const-string v4, "A24"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/tencent/bugly/legu/crashreport/common/info/a;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, v3, Lcom/tencent/bugly/legu/proguard/ar;->e:Ljava/util/Map;

    const-string v4, "A17"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->p()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, v3, Lcom/tencent/bugly/legu/proguard/ar;->e:Ljava/util/Map;

    const-string v4, "A15"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->t()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, v3, Lcom/tencent/bugly/legu/proguard/ar;->e:Ljava/util/Map;

    const-string v4, "A13"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->u()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, v3, Lcom/tencent/bugly/legu/proguard/ar;->e:Ljava/util/Map;

    const-string v4, "F08"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/tencent/bugly/legu/crashreport/common/info/a;->u:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, v3, Lcom/tencent/bugly/legu/proguard/ar;->e:Ljava/util/Map;

    const-string v4, "F09"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/tencent/bugly/legu/crashreport/common/info/a;->v:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->A()Ljava/util/Map;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_186

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_186

    .line 159
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_186

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 160
    iget-object v5, v3, Lcom/tencent/bugly/legu/proguard/ar;->e:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v1, "C04_"

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15b

    .line 165
    :cond_186
    packed-switch p1, :pswitch_data_1a4

    .line 175
    const-string v0, "unknown up type %d "

    new-array v1, v8, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v2

    .line 176
    goto/16 :goto_b

    .line 167
    :pswitch_19a
    iput-byte v8, v3, Lcom/tencent/bugly/legu/proguard/ar;->a:B

    :goto_19c
    move-object v0, v3

    .line 179
    goto/16 :goto_b

    .line 171
    :pswitch_19f
    const/4 v0, 0x2

    iput-byte v0, v3, Lcom/tencent/bugly/legu/proguard/ar;->a:B

    goto :goto_19c

    .line 165
    nop

    :pswitch_data_1a4
    .packed-switch 0x1
        :pswitch_19a
        :pswitch_19f
    .end packed-switch
.end method

.method public static a([BLjava/lang/Class;)Lcom/tencent/bugly/legu/proguard/j;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tencent/bugly/legu/proguard/j;",
            ">([B",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 191
    if-eqz p0, :cond_6

    array-length v0, p0

    if-gtz v0, :cond_8

    :cond_6
    move-object v0, v1

    .line 204
    :goto_7
    return-object v0

    .line 194
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/legu/proguard/j;

    .line 195
    new-instance v2, Lcom/tencent/bugly/legu/proguard/h;

    invoke-direct {v2, p0}, Lcom/tencent/bugly/legu/proguard/h;-><init>([B)V

    .line 196
    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Lcom/tencent/bugly/legu/proguard/h;->a(Ljava/lang/String;)I

    .line 197
    invoke-virtual {v0, v2}, Lcom/tencent/bugly/legu/proguard/j;->a(Lcom/tencent/bugly/legu/proguard/h;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_1b} :catch_1c

    goto :goto_7

    .line 200
    :catch_1c
    move-exception v0

    .line 201
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->b(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 202
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_26
    move-object v0, v1

    .line 204
    goto :goto_7
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 686
    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 687
    invoke-virtual {v1, p1, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 688
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 689
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_13

    move-result-object v0

    .line 691
    :goto_12
    return-object v0

    :catch_13
    move-exception v1

    goto :goto_12
.end method

.method public static a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 808
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    array-length v0, p0

    invoke-virtual {v1, p0, v2, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 810
    :try_start_c
    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_f} :catch_16
    .catchall {:try_start_c .. :try_end_f} :catchall_21

    move-result-object v0

    .line 815
    if-eqz v1, :cond_15

    .line 816
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_15
    :goto_15
    return-object v0

    .line 811
    :catch_16
    move-exception v0

    .line 812
    :try_start_17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_21

    .line 813
    if-eqz v1, :cond_1f

    .line 816
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_1f
    const/4 v0, 0x0

    goto :goto_15

    .line 815
    :catchall_21
    move-exception v0

    if-eqz v1, :cond_27

    .line 816
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_27
    throw v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 70
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/tencent/bugly/legu/crashreport/common/info/AppInfo;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 71
    const-string v0, "no READ_PHONE_STATE permission to get IMEI"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 72
    const-string v0, "null"

    .line 89
    :cond_13
    :goto_13
    return-object v0

    .line 75
    :cond_14
    if-nez p0, :cond_18

    move-object v0, v1

    .line 76
    goto :goto_13

    .line 79
    :cond_18
    :try_start_18
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 81
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_23} :catch_2b

    move-result-object v0

    .line 82
    if-eqz v0, :cond_13

    .line 83
    :try_start_26
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_29} :catch_35

    move-result-object v0

    goto :goto_13

    .line 85
    :catch_2b
    move-exception v0

    move-object v0, v1

    .line 87
    :goto_2d
    sget-object v1, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v2, "failed to get IMEI"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 85
    :catch_35
    move-exception v1

    goto :goto_2d
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 826
    const-string v0, "android.permission.READ_LOGS"

    invoke-static {p0, v0}, Lcom/tencent/bugly/legu/crashreport/common/info/AppInfo;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 827
    const-string v0, "no read_log permission!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 828
    const/4 v0, 0x0

    .line 871
    :cond_15
    :goto_15
    return-object v0

    .line 832
    :cond_16
    if-nez p2, :cond_b2

    .line 833
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "logcat"

    aput-object v1, v0, v2

    const-string v1, "-d"

    aput-object v1, v0, v3

    const-string v1, "-v"

    aput-object v1, v0, v4

    const-string v1, "threadtime"

    aput-object v1, v0, v5

    .line 837
    :goto_2a
    const/4 v1, 0x0

    .line 838
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 840
    :try_start_30
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_37} :catch_130
    .catchall {:try_start_30 .. :try_end_37} :catchall_105

    move-result-object v2

    .line 841
    :try_start_38
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 844
    :cond_46
    :goto_46
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ce

    .line 845
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    if-lez p1, :cond_46

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-le v1, p1, :cond_46

    .line 847
    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, p1

    invoke-virtual {v3, v1, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_66} :catch_67
    .catchall {:try_start_38 .. :try_end_66} :catchall_12d

    goto :goto_46

    .line 851
    :catch_67
    move-exception v0

    move-object v1, v2

    .line 852
    :goto_69
    :try_start_69
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_72

    .line 853
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 854
    :cond_72
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\n[error:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_92
    .catchall {:try_start_69 .. :try_end_92} :catchall_105

    move-result-object v0

    .line 856
    if-eqz v1, :cond_15

    .line 858
    :try_start_95
    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_9c} :catch_fb

    .line 863
    :goto_9c
    :try_start_9c
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_a3} :catch_100

    .line 868
    :goto_a3
    :try_start_a3
    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_aa} :catch_ac

    goto/16 :goto_15

    .line 869
    :catch_ac
    move-exception v1

    .line 870
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_15

    .line 835
    :cond_b2
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "logcat"

    aput-object v1, v0, v2

    const-string v1, "-d"

    aput-object v1, v0, v3

    const-string v1, "-v"

    aput-object v1, v0, v4

    const-string v1, "threadtime"

    aput-object v1, v0, v5

    const-string v1, "-s"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    aput-object p2, v0, v1

    goto/16 :goto_2a

    .line 850
    :cond_ce
    :try_start_ce
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_d1
    .catch Ljava/lang/Throwable; {:try_start_ce .. :try_end_d1} :catch_67
    .catchall {:try_start_ce .. :try_end_d1} :catchall_12d

    move-result-object v0

    .line 856
    if-eqz v2, :cond_15

    .line 858
    :try_start_d4
    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_db} :catch_f1

    .line 863
    :goto_db
    :try_start_db
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_e2} :catch_f6

    .line 868
    :goto_e2
    :try_start_e2
    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e9} :catch_eb

    goto/16 :goto_15

    .line 869
    :catch_eb
    move-exception v1

    .line 870
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_15

    .line 859
    :catch_f1
    move-exception v1

    .line 860
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_db

    .line 864
    :catch_f6
    move-exception v1

    .line 865
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e2

    .line 859
    :catch_fb
    move-exception v2

    .line 860
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9c

    .line 864
    :catch_100
    move-exception v2

    .line 865
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a3

    .line 856
    :catchall_105
    move-exception v0

    :goto_106
    if-eqz v1, :cond_11d

    .line 858
    :try_start_108
    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_10f
    .catch Ljava/io/IOException; {:try_start_108 .. :try_end_10f} :catch_11e

    .line 863
    :goto_10f
    :try_start_10f
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_116} :catch_123

    .line 868
    :goto_116
    :try_start_116
    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_11d
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_11d} :catch_128

    .line 871
    :cond_11d
    :goto_11d
    throw v0

    .line 859
    :catch_11e
    move-exception v2

    .line 860
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10f

    .line 864
    :catch_123
    move-exception v2

    .line 865
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_116

    .line 869
    :catch_128
    move-exception v1

    .line 870
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11d

    .line 856
    :catchall_12d
    move-exception v0

    move-object v1, v2

    goto :goto_106

    .line 851
    :catch_130
    move-exception v0

    goto/16 :goto_69
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 526
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 527
    :cond_f
    const-string v0, ""

    .line 535
    :goto_11
    return-object v0

    .line 529
    :cond_12
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/system/bin/sh"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "-c"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getprop "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/tencent/bugly/legu/proguard/a;->a(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 532
    if-eqz v0, :cond_43

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_43

    .line 533
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_11

    .line 535
    :cond_43
    const-string v0, "fail"

    goto :goto_11
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 67
    if-nez p0, :cond_5

    .line 68
    const-string v0, ""

    .line 79
    :goto_4
    return-object v0

    .line 71
    :cond_5
    :try_start_5
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 72
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 73
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_19} :catch_1b

    move-result-object v0

    goto :goto_4

    .line 74
    :catch_1b
    move-exception v0

    .line 75
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 76
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    :cond_25
    const-string v0, "fail"

    goto :goto_4
.end method

.method public static a(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 86
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v2

    .line 87
    :goto_7
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_d2

    .line 88
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "java.lang.Integer"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string v4, "int"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    :cond_23
    const-string v0, "int32"

    :cond_25
    :goto_25
    invoke-virtual {p0, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 87
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 88
    :cond_2c
    const-string v4, "java.lang.Boolean"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c

    const-string v4, "boolean"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    :cond_3c
    const-string v0, "bool"

    goto :goto_25

    :cond_3f
    const-string v4, "java.lang.Byte"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    const-string v4, "byte"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    :cond_4f
    const-string v0, "char"

    goto :goto_25

    :cond_52
    const-string v4, "java.lang.Double"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_62

    const-string v4, "double"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    :cond_62
    const-string v0, "double"

    goto :goto_25

    :cond_65
    const-string v4, "java.lang.Float"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_75

    const-string v4, "float"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_78

    :cond_75
    const-string v0, "float"

    goto :goto_25

    :cond_78
    const-string v4, "java.lang.Long"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_88

    const-string v4, "long"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8b

    :cond_88
    const-string v0, "int64"

    goto :goto_25

    :cond_8b
    const-string v4, "java.lang.Short"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9b

    const-string v4, "short"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9e

    :cond_9b
    const-string v0, "short"

    goto :goto_25

    :cond_9e
    const-string v4, "java.lang.Character"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ae

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can not support java.lang.Character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ae
    const-string v4, "java.lang.String"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ba

    const-string v0, "string"

    goto/16 :goto_25

    :cond_ba
    const-string v4, "java.util.List"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c6

    const-string v0, "list"

    goto/16 :goto_25

    :cond_c6
    const-string v4, "java.util.Map"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    const-string v0, "map"

    goto/16 :goto_25

    .line 90
    :cond_d2
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    move v1, v2

    .line 91
    :goto_d6
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1af

    .line 92
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    const-string v4, "list"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_126

    .line 94
    add-int/lit8 v4, v1, -0x1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "<"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ">"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_122
    :goto_122
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d6

    .line 96
    :cond_126
    const-string v4, "map"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16d

    .line 97
    add-int/lit8 v4, v1, -0x1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "<"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ">"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_122

    .line 99
    :cond_16d
    const-string v4, "Array"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_122

    .line 100
    add-int/lit8 v4, v1, -0x1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "<"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ">"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_122

    .line 104
    :cond_1af
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 105
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1b6

    .line 108
    :cond_1c6
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Date;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 93
    if-nez p0, :cond_4

    .line 94
    const/4 v0, 0x0

    .line 100
    :goto_3
    return-object v0

    .line 97
    :cond_4
    :try_start_4
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 98
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_12

    move-result-object v0

    goto :goto_3

    .line 100
    :catch_12
    move-exception v0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 477
    .line 478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 482
    invoke-static {p0}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/legu/crashreport/common/info/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->D()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 484
    new-instance v1, Ljava/lang/String;

    const-string v2, "unknown(low memory)"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    :goto_1f
    return-object v0

    .line 488
    :cond_20
    :try_start_20
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 489
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_36} :catch_a8
    .catchall {:try_start_20 .. :try_end_36} :catchall_8c

    .line 490
    :goto_36
    :try_start_36
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_57

    .line 491
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_3f} :catch_40
    .catchall {:try_start_36 .. :try_end_3f} :catchall_a3

    goto :goto_36

    .line 498
    :catch_40
    move-exception v0

    move-object v2, v1

    .line 499
    :goto_42
    :try_start_42
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_4b

    .line 500
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_a5

    .line 501
    :cond_4b
    if-eqz v3, :cond_50

    .line 505
    :try_start_4d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_82

    .line 511
    :cond_50
    :goto_50
    if-eqz v2, :cond_55

    .line 513
    :try_start_52
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_87

    :cond_55
    :goto_55
    move-object v0, v1

    .line 516
    goto :goto_1f

    .line 494
    :cond_57
    :try_start_57
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_65} :catch_40
    .catchall {:try_start_57 .. :try_end_65} :catchall_a3

    .line 495
    :goto_65
    :try_start_65
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_71

    .line 496
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_6e} :catch_6f
    .catchall {:try_start_65 .. :try_end_6e} :catchall_a5

    goto :goto_65

    .line 498
    :catch_6f
    move-exception v0

    goto :goto_42

    .line 503
    :cond_71
    :try_start_71
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_7d

    .line 511
    :goto_74
    :try_start_74
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_78

    goto :goto_1f

    .line 514
    :catch_78
    move-exception v1

    .line 515
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f

    .line 506
    :catch_7d
    move-exception v1

    .line 507
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_74

    .line 506
    :catch_82
    move-exception v0

    .line 507
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_50

    .line 514
    :catch_87
    move-exception v0

    .line 515
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_55

    .line 503
    :catchall_8c
    move-exception v0

    move-object v3, v1

    :goto_8e
    if-eqz v3, :cond_93

    .line 505
    :try_start_90
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_99

    .line 511
    :cond_93
    :goto_93
    if-eqz v1, :cond_98

    .line 513
    :try_start_95
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_9e

    .line 516
    :cond_98
    :goto_98
    throw v0

    .line 506
    :catch_99
    move-exception v2

    .line 507
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_93

    .line 514
    :catch_9e
    move-exception v1

    .line 515
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_98

    .line 503
    :catchall_a3
    move-exception v0

    goto :goto_8e

    :catchall_a5
    move-exception v0

    move-object v1, v2

    goto :goto_8e

    .line 498
    :catch_a8
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_42
.end method

.method public static a(IZ)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 883
    new-instance v2, Ljava/util/HashMap;

    const/16 v0, 0xc

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 884
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    .line 885
    if-nez v0, :cond_10

    .line 886
    const/4 v0, 0x0

    .line 911
    :goto_f
    return-object v0

    .line 888
    :cond_10
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    .line 889
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 890
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_24
    :goto_24
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 891
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 895
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/StackTraceElement;

    array-length v1, v1

    if-eqz v1, :cond_24

    .line 896
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/StackTraceElement;

    array-length v7, v1

    move v3, v4

    :goto_4a
    if-ge v3, v7, :cond_6e

    aget-object v8, v1, v3

    .line 899
    if-lez p0, :cond_a8

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lt v9, p0, :cond_a8

    .line 901
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\n[Stack over limit size :"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " , has been cutted !]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    :cond_6e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_24

    .line 905
    :cond_a8
    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    :cond_b8
    move-object v0, v2

    .line 911
    goto/16 :goto_f
.end method

.method public static a(Landroid/os/Parcel;)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/legu/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 721
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 722
    if-nez v3, :cond_9

    .line 748
    :goto_8
    return-object v2

    .line 725
    :cond_9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 726
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 727
    const-string v0, "pluginNum"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v0, v1

    .line 728
    :goto_20
    if-ge v0, v6, :cond_3b

    .line 729
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "pluginKey"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_3b
    move v0, v1

    .line 731
    :goto_3c
    if-ge v0, v6, :cond_94

    .line 732
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "pluginVal"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "plugInId"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 733
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "pluginVal"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "plugInUUID"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 734
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "pluginVal"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "plugInVersion"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 735
    new-instance v10, Lcom/tencent/bugly/legu/crashreport/common/info/PlugInBean;

    invoke-direct {v10, v7, v9, v8}, Lcom/tencent/bugly/legu/crashreport/common/info/PlugInBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 739
    :cond_94
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_c6

    .line 740
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    move v0, v1

    .line 741
    :goto_a8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c2

    .line 742
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-class v3, Lcom/tencent/bugly/legu/crashreport/common/info/PlugInBean;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    add-int/lit8 v0, v0, 0x1

    goto :goto_a8

    :cond_c2
    move-object v0, v2

    :goto_c3
    move-object v2, v0

    .line 748
    goto/16 :goto_8

    .line 745
    :cond_c6
    const-string v0, "map plugin parcel error!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v2

    goto :goto_c3
.end method

.method public static a(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/legu/crashreport/common/info/PlugInBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 696
    if-eqz p1, :cond_b

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_10

    .line 697
    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 718
    :goto_f
    return-void

    .line 700
    :cond_10
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 701
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 702
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 703
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 704
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 707
    :cond_41
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 708
    const-string v0, "pluginNum"

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v1, v2

    .line 709
    :goto_50
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_72

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "pluginKey"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_50

    .line 712
    :cond_72
    :goto_72
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_db

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pluginVal"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "plugInId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/legu/crashreport/common/info/PlugInBean;

    iget-object v0, v0, Lcom/tencent/bugly/legu/crashreport/common/info/PlugInBean;->a:Ljava/lang/String;

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pluginVal"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "plugInUUID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/legu/crashreport/common/info/PlugInBean;

    iget-object v0, v0, Lcom/tencent/bugly/legu/crashreport/common/info/PlugInBean;->c:Ljava/lang/String;

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pluginVal"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "plugInVersion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/legu/crashreport/common/info/PlugInBean;

    iget-object v0, v0, Lcom/tencent/bugly/legu/crashreport/common/info/PlugInBean;->b:Ljava/lang/String;

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    add-int/lit8 v2, v2, 0x1

    goto :goto_72

    .line 717
    :cond_db
    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto/16 :goto_f
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 278
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 279
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "byte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only byte[] is supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_27
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_3a

    .line 283
    const-string v0, "java.util.List"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-static {p2, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tencent/bugly/legu/proguard/a;->a(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 318
    :goto_39
    return-void

    .line 286
    :cond_3a
    const-string v0, "Array"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 290
    :cond_45
    instance-of v0, p2, Ljava/lang/reflect/Array;

    if-eqz v0, :cond_51

    .line 291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can not support Array, please use List"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_51
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_70

    .line 293
    const-string v0, "java.util.List"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    check-cast p2, Ljava/util/List;

    .line 295
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6a

    .line 296
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tencent/bugly/legu/proguard/a;->a(Ljava/util/ArrayList;Ljava/lang/Object;)V

    goto :goto_39

    .line 298
    :cond_6a
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 301
    :cond_70
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_ab

    .line 302
    const-string v0, "java.util.Map"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    check-cast p2, Ljava/util/Map;

    .line 304
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_a0

    .line 305
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 306
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 307
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 308
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    invoke-direct {p0, p1, v1}, Lcom/tencent/bugly/legu/proguard/a;->a(Ljava/util/ArrayList;Ljava/lang/Object;)V

    goto :goto_39

    .line 311
    :cond_a0
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 316
    :cond_ab
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 12

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1039
    const-string v2, "[Util] try to lock file:%s (pid=%d | tid=%d)"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1042
    :try_start_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1045
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 1048
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v2, v4, p2

    if-gez v2, :cond_55

    .line 1066
    :cond_54
    :goto_54
    return v0

    .line 1053
    :cond_55
    const-string v2, "[Util] lock file(%s) is expired, unlock it"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v2, v4}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1054
    invoke-static {p0, p1}, Lcom/tencent/bugly/legu/proguard/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1057
    :cond_63
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 1058
    const-string v2, "[Util] successfully locked file:%s (pid=%d | tid=%d)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_8a} :catch_8c

    move v0, v1

    .line 1060
    goto :goto_54

    .line 1063
    :catch_8c
    move-exception v1

    .line 1065
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    goto :goto_54
.end method

.method public static a(Ljava/io/File;Ljava/io/File;I)Z
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 402
    const-string v1, "rqdp{  ZF start}"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 403
    if-eqz p0, :cond_13

    if-eqz p1, :cond_13

    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 404
    :cond_13
    const-string v1, "rqdp{  err ZF 1R!}"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 469
    :cond_1a
    :goto_1a
    return v0

    .line 408
    :cond_1b
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 409
    :cond_27
    const-string v1, "rqdp{  !sFile.exists() || !sFile.canRead(),pls check ,return!}"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1a

    .line 414
    :cond_2f
    :try_start_2f
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_46

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_46

    .line 415
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 418
    :cond_46
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 419
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_4f} :catch_a8

    .line 427
    :cond_4f
    :goto_4f
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 434
    :try_start_5b
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_60} :catch_104
    .catchall {:try_start_5b .. :try_end_60} :catchall_dd

    .line 435
    :try_start_60
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_6a} :catch_107
    .catchall {:try_start_60 .. :try_end_6a} :catchall_fc

    .line 436
    const/16 v1, 0x8

    :try_start_6c
    invoke-virtual {v2, v1}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    .line 437
    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 438
    invoke-virtual {v2, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 440
    const/16 v1, 0x1388

    new-array v1, v1, [B

    .line 443
    :goto_7f
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_b3

    .line 444
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_89} :catch_8a
    .catchall {:try_start_6c .. :try_end_89} :catchall_ff

    goto :goto_7f

    .line 449
    :catch_8a
    move-exception v1

    move-object v3, v4

    .line 450
    :goto_8c
    :try_start_8c
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_95

    .line 451
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_95
    .catchall {:try_start_8c .. :try_end_95} :catchall_101

    .line 452
    :cond_95
    if-eqz v3, :cond_9a

    .line 456
    :try_start_97
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_d3

    .line 462
    :cond_9a
    :goto_9a
    if-eqz v2, :cond_9f

    .line 464
    :try_start_9c
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_d8

    .line 469
    :cond_9f
    :goto_9f
    const-string v1, "rqdp{  ZF end}"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_1a

    .line 422
    :catch_a8
    move-exception v1

    .line 423
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 424
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4f

    .line 446
    :cond_b3
    :try_start_b3
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 447
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_b9
    .catch Ljava/lang/Throwable; {:try_start_b3 .. :try_end_b9} :catch_8a
    .catchall {:try_start_b3 .. :try_end_b9} :catchall_ff

    .line 448
    :try_start_b9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bc} :catch_c9

    .line 462
    :goto_bc
    :try_start_bc
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bf} :catch_ce

    .line 469
    :goto_bf
    const-string v1, "rqdp{  ZF end}"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto/16 :goto_1a

    .line 457
    :catch_c9
    move-exception v1

    .line 458
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_bc

    .line 465
    :catch_ce
    move-exception v1

    .line 466
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_bf

    .line 457
    :catch_d3
    move-exception v1

    .line 458
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9a

    .line 465
    :catch_d8
    move-exception v1

    .line 466
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9f

    .line 454
    :catchall_dd
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    :goto_e0
    if-eqz v4, :cond_e5

    .line 456
    :try_start_e2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e5} :catch_f2

    .line 462
    :cond_e5
    :goto_e5
    if-eqz v2, :cond_ea

    .line 464
    :try_start_e7
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ea} :catch_f7

    .line 469
    :cond_ea
    :goto_ea
    const-string v2, "rqdp{  ZF end}"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    throw v1

    .line 457
    :catch_f2
    move-exception v3

    .line 458
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e5

    .line 465
    :catch_f7
    move-exception v2

    .line 466
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ea

    .line 454
    :catchall_fc
    move-exception v1

    move-object v2, v3

    goto :goto_e0

    :catchall_ff
    move-exception v1

    goto :goto_e0

    :catchall_101
    move-exception v1

    move-object v4, v3

    goto :goto_e0

    .line 449
    :catch_104
    move-exception v1

    move-object v2, v3

    goto :goto_8c

    :catch_107
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    goto :goto_8c
.end method

.method public static declared-synchronized a(I)[B
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 956
    const-class v3, Lcom/tencent/bugly/legu/proguard/a;

    monitor-enter v3

    .line 959
    const/16 v0, 0x10

    :try_start_6
    new-array v0, v0, [B

    .line 960
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    const-string v6, "/dev/urandom"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_19} :catch_21
    .catchall {:try_start_6 .. :try_end_19} :catchall_4c

    .line 961
    :try_start_19
    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_65
    .catchall {:try_start_19 .. :try_end_1c} :catchall_63

    .line 966
    :try_start_1c
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_54
    .catchall {:try_start_1c .. :try_end_1f} :catchall_60

    .line 981
    :goto_1f
    monitor-exit v3

    return-object v0

    .line 963
    :catch_21
    move-exception v0

    move-object v2, v1

    .line 964
    :goto_23
    :try_start_23
    const-string v4, "Failed to read from /dev/urandom : %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_63

    .line 966
    if-eqz v2, :cond_33

    .line 967
    :try_start_30
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 972
    :cond_33
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 973
    const/16 v2, 0x80

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v2, v4}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 974
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 975
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    goto :goto_1f

    .line 966
    :catchall_4c
    move-exception v0

    move-object v2, v1

    :goto_4e
    if-eqz v2, :cond_53

    .line 967
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    :cond_53
    throw v0
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_54} :catch_54
    .catchall {:try_start_30 .. :try_end_54} :catchall_60

    .line 976
    :catch_54
    move-exception v0

    .line 977
    :try_start_55
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->b(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 978
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_60

    :cond_5e
    move-object v0, v1

    .line 981
    goto :goto_1f

    .line 956
    :catchall_60
    move-exception v0

    monitor-exit v3

    throw v0

    .line 966
    :catchall_63
    move-exception v0

    goto :goto_4e

    .line 963
    :catch_65
    move-exception v0

    goto :goto_23
.end method

.method public static a(I[B[B)[B
    .registers 6

    .prologue
    .line 992
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 993
    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 994
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 995
    invoke-virtual {v1, p0, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 996
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1a

    move-result-object v0

    .line 1002
    :goto_19
    return-object v0

    .line 997
    :catch_1a
    move-exception v0

    .line 998
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 999
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1002
    :cond_24
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static a(J)[B
    .registers 4

    .prologue
    .line 611
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_12} :catch_14

    move-result-object v0

    .line 615
    :goto_13
    return-object v0

    .line 612
    :catch_14
    move-exception v0

    .line 613
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 615
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static a(Lcom/tencent/bugly/legu/proguard/am;)[B
    .registers 3

    .prologue
    .line 274
    :try_start_0
    new-instance v0, Lcom/tencent/bugly/legu/proguard/d;

    invoke-direct {v0}, Lcom/tencent/bugly/legu/proguard/d;-><init>()V

    .line 275
    invoke-virtual {v0}, Lcom/tencent/bugly/legu/proguard/d;->p()V

    .line 276
    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/legu/proguard/d;->a(Ljava/lang/String;)V

    .line 277
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/legu/proguard/d;->b(I)V

    .line 278
    const-string v1, "RqdServer"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/legu/proguard/d;->b(Ljava/lang/String;)V

    .line 279
    const-string v1, "sync"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/legu/proguard/d;->c(Ljava/lang/String;)V

    .line 280
    const-string v1, "detail"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/bugly/legu/proguard/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 281
    invoke-virtual {v0}, Lcom/tencent/bugly/legu/proguard/d;->a()[B
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_23} :catch_25

    move-result-object v0

    .line 286
    :goto_24
    return-object v0

    .line 282
    :catch_25
    move-exception v0

    .line 283
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 284
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 286
    :cond_2f
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public static a(Lcom/tencent/bugly/legu/proguard/j;)[B
    .registers 3

    .prologue
    .line 336
    :try_start_0
    new-instance v0, Lcom/tencent/bugly/legu/proguard/i;

    invoke-direct {v0}, Lcom/tencent/bugly/legu/proguard/i;-><init>()V

    .line 337
    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/legu/proguard/i;->a(Ljava/lang/String;)I

    .line 338
    invoke-virtual {p0, v0}, Lcom/tencent/bugly/legu/proguard/j;->a(Lcom/tencent/bugly/legu/proguard/i;)V

    .line 339
    invoke-virtual {v0}, Lcom/tencent/bugly/legu/proguard/i;->b()[B
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v0

    .line 344
    :goto_11
    return-object v0

    .line 340
    :catch_12
    move-exception v0

    .line 341
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 342
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 344
    :cond_1c
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)[B
    .registers 11

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 163
    const-string v1, "rqdp{  ZF start}"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 168
    const-string v1, "buglyCacheLog.txt"

    .line 170
    if-eqz p0, :cond_e7

    :try_start_d
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_e7

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 171
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_1e} :catch_d9
    .catchall {:try_start_d .. :try_end_1e} :catchall_cb

    .line 172
    :try_start_1e
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_21} :catch_de
    .catchall {:try_start_1e .. :try_end_21} :catchall_d0

    move-result-object v1

    move-object v3, v2

    .line 174
    :goto_23
    :try_start_23
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 175
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 176
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 177
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v2, v5}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_38} :catch_e3
    .catchall {:try_start_23 .. :try_end_38} :catchall_d5

    .line 178
    const/16 v6, 0x8

    :try_start_3a
    invoke-virtual {v2, v6}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    .line 179
    new-instance v6, Ljava/util/zip/ZipEntry;

    invoke-direct {v6, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v2, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 182
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 184
    if-eqz v3, :cond_72

    .line 185
    :goto_4b
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_72

    .line 186
    const/4 v7, 0x0

    invoke-virtual {v2, v1, v7, v6}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_55} :catch_56
    .catchall {:try_start_3a .. :try_end_55} :catchall_7d

    goto :goto_4b

    .line 196
    :catch_56
    move-exception v1

    .line 197
    :goto_57
    :try_start_57
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_60

    .line 198
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_7d

    .line 199
    :cond_60
    if-eqz v3, :cond_65

    .line 203
    :try_start_62
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_b7

    .line 209
    :cond_65
    :goto_65
    if-eqz v2, :cond_6a

    .line 211
    :try_start_67
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_bc

    .line 216
    :cond_6a
    :goto_6a
    const-string v1, "rqdp{  ZF end}"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_71
    return-object v0

    .line 189
    :cond_72
    :goto_72
    :try_start_72
    invoke-virtual {v4, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_90

    .line 190
    const/4 v7, 0x0

    invoke-virtual {v2, v1, v7, v6}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_7c} :catch_56
    .catchall {:try_start_72 .. :try_end_7c} :catchall_7d

    goto :goto_72

    .line 201
    :catchall_7d
    move-exception v0

    :goto_7e
    if-eqz v3, :cond_83

    .line 203
    :try_start_80
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_c1

    .line 209
    :cond_83
    :goto_83
    if-eqz v2, :cond_88

    .line 211
    :try_start_85
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_c6

    .line 216
    :cond_88
    :goto_88
    const-string v1, "rqdp{  ZF end}"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    throw v0

    .line 192
    :cond_90
    :try_start_90
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 193
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 194
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 195
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_9c} :catch_56
    .catchall {:try_start_90 .. :try_end_9c} :catchall_7d

    move-result-object v0

    .line 201
    if-eqz v3, :cond_a2

    .line 203
    :try_start_9f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_ad

    .line 209
    :cond_a2
    :goto_a2
    :try_start_a2
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_b2

    .line 216
    :goto_a5
    const-string v1, "rqdp{  ZF end}"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_71

    .line 204
    :catch_ad
    move-exception v1

    .line 205
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a2

    .line 212
    :catch_b2
    move-exception v1

    .line 213
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a5

    .line 204
    :catch_b7
    move-exception v1

    .line 205
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_65

    .line 212
    :catch_bc
    move-exception v1

    .line 213
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6a

    .line 204
    :catch_c1
    move-exception v1

    .line 205
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_83

    .line 212
    :catch_c6
    move-exception v1

    .line 213
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_88

    .line 201
    :catchall_cb
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    goto :goto_7e

    :catchall_d0
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_7e

    :catchall_d5
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_7e

    .line 196
    :catch_d9
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_57

    :catch_de
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_57

    :catch_e3
    move-exception v1

    move-object v2, v0

    goto/16 :goto_57

    :cond_e7
    move-object v3, v0

    goto/16 :goto_23
.end method

.method public static a([BI)[B
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x2

    .line 222
    if-nez p0, :cond_5

    .line 241
    :goto_4
    return-object p0

    .line 225
    :cond_5
    const-string v1, "rqdp{  zp:} %s rqdp{  len:} %s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    array-length v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 231
    const/4 v1, 0x2

    :try_start_1c
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/aa;->a(I)Lcom/tencent/bugly/legu/proguard/ab;

    move-result-object v1

    .line 232
    if-nez v1, :cond_24

    move-object p0, v0

    .line 233
    goto :goto_4

    .line 235
    :cond_24
    invoke-interface {v1, p0}, Lcom/tencent/bugly/legu/proguard/ab;->a([B)[B
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_27} :catch_29

    move-result-object p0

    goto :goto_4

    .line 238
    :catch_29
    move-exception v1

    .line 239
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 240
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_33
    move-object p0, v0

    .line 241
    goto :goto_4
.end method

.method public static a([BIILjava/lang/String;)[B
    .registers 6

    .prologue
    .line 295
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, v0, p3}, Lcom/tencent/bugly/legu/proguard/a;->a([BILjava/lang/String;)[B

    move-result-object v0

    .line 297
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/a;->b([BI)[B
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_b

    move-result-object v0

    .line 302
    :goto_a
    return-object v0

    .line 299
    :catch_b
    move-exception v0

    .line 300
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 301
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 302
    :cond_15
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static a([BILjava/lang/String;)[B
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 136
    if-eqz p0, :cond_7

    const/4 v1, -0x1

    if-ne p1, v1, :cond_8

    .line 155
    :cond_7
    :goto_7
    return-object p0

    .line 142
    :cond_8
    if-ne p1, v5, :cond_13

    :try_start_a
    new-instance v1, Lcom/tencent/bugly/legu/proguard/af;

    invoke-direct {v1}, Lcom/tencent/bugly/legu/proguard/af;-><init>()V

    .line 143
    :goto_f
    if-nez v1, :cond_3b

    move-object p0, v0

    .line 144
    goto :goto_7

    .line 142
    :cond_13
    const/4 v1, 0x3

    if-ne p1, v1, :cond_39

    new-instance v1, Lcom/tencent/bugly/legu/proguard/ae;

    invoke-direct {v1}, Lcom/tencent/bugly/legu/proguard/ae;-><init>()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_1b} :catch_1c

    goto :goto_f

    .line 151
    :catch_1c
    move-exception v1

    .line 152
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 153
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 154
    :cond_26
    const-string v1, "encrytype %d %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object p2, v2, v5

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object p0, v0

    .line 155
    goto :goto_7

    :cond_39
    move-object v1, v0

    .line 142
    goto :goto_f

    .line 146
    :cond_3b
    :try_start_3b
    invoke-interface {v1, p2}, Lcom/tencent/bugly/legu/proguard/ag;->a(Ljava/lang/String;)V

    .line 147
    invoke-interface {v1, p0}, Lcom/tencent/bugly/legu/proguard/ag;->a([B)[B
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_41} :catch_1c

    move-result-object p0

    goto :goto_7
.end method

.method public static b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2} :catch_3

    .line 45
    :goto_2
    return-object v0

    .line 41
    :catch_3
    move-exception v0

    .line 42
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    :cond_d
    const-string v0, "fail"

    goto :goto_2
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 94
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/tencent/bugly/legu/crashreport/common/info/AppInfo;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 95
    const-string v0, "no READ_PHONE_STATE permission to get IMSI"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 96
    const-string v0, "null"

    .line 113
    :cond_13
    :goto_13
    return-object v0

    .line 99
    :cond_14
    if-nez p0, :cond_18

    move-object v0, v1

    .line 100
    goto :goto_13

    .line 103
    :cond_18
    :try_start_18
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 105
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_23} :catch_2b

    move-result-object v0

    .line 106
    if-eqz v0, :cond_13

    .line 107
    :try_start_26
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_29} :catch_35

    move-result-object v0

    goto :goto_13

    .line 109
    :catch_2b
    move-exception v0

    move-object v0, v1

    .line 111
    :goto_2d
    sget-object v1, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v2, "failed to get IMSI"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 109
    :catch_35
    move-exception v1

    goto :goto_2d
.end method

.method public static b([B)Ljava/lang/String;
    .registers 7

    .prologue
    .line 344
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_8

    .line 345
    :cond_5
    const-string v0, "NULL"

    .line 355
    :goto_7
    return-object v0

    .line 349
    :cond_8
    :try_start_8
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 350
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 351
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    if-nez v1, :cond_1a

    const-string v0, ""

    goto :goto_7

    :cond_1a
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_20
    array-length v3, v1

    if-ge v0, v3, :cond_3d

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_37

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_3d
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_44} :catch_46

    move-result-object v0

    goto :goto_7

    .line 352
    :catch_46
    move-exception v0

    .line 353
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 354
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 355
    :cond_50
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static b(Landroid/os/Parcel;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 772
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 773
    if-nez v2, :cond_9

    .line 789
    :goto_8
    return-object v1

    .line 777
    :cond_9
    const-string v3, "keys"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 778
    const-string v4, "values"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 780
    if-eqz v3, :cond_43

    if-eqz v2, :cond_43

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_43

    .line 781
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 782
    :goto_2c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_40

    .line 783
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_40
    move-object v0, v1

    :goto_41
    move-object v1, v0

    .line 789
    goto :goto_8

    .line 786
    :cond_43
    const-string v2, "map parcel error!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_41
.end method

.method public static b(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 752
    if-eqz p1, :cond_a

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_f

    .line 753
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 769
    :goto_e
    return-void

    .line 757
    :cond_f
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 759
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 760
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 761
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 762
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 765
    :cond_40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 766
    const-string v3, "keys"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 767
    const-string v1, "values"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 768
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_e
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1076
    const-string v2, "[Util] try to unlock file:%s (pid=%d | tid=%d)"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1079
    :try_start_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1082
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 1084
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 1085
    const-string v2, "[Util] successfully unlocked file:%s (pid=%d | tid=%d)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_6e} :catch_71

    .line 1097
    :cond_6e
    :goto_6e
    return v0

    :cond_6f
    move v0, v1

    .line 1089
    goto :goto_6e

    .line 1094
    :catch_71
    move-exception v0

    .line 1096
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move v0, v1

    .line 1097
    goto :goto_6e
.end method

.method public static b(I[B[B)[B
    .registers 6

    .prologue
    .line 1013
    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 1015
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 1018
    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 1021
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1022
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1e

    move-result-object v0

    .line 1028
    :goto_1d
    return-object v0

    .line 1023
    :catch_1e
    move-exception v0

    .line 1024
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 1025
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1028
    :cond_28
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public static b([BI)[B
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 247
    if-eqz p0, :cond_6

    const/4 v1, -0x1

    if-ne p1, v1, :cond_7

    .line 266
    :cond_6
    :goto_6
    return-object p0

    .line 250
    :cond_7
    const-string v1, "rqdp{  unzp:} %s rqdp{  len:} %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    array-length v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 256
    :try_start_1e
    invoke-static {p1}, Lcom/tencent/bugly/legu/proguard/aa;->a(I)Lcom/tencent/bugly/legu/proguard/ab;

    move-result-object v1

    .line 257
    if-nez v1, :cond_26

    move-object p0, v0

    .line 258
    goto :goto_6

    .line 260
    :cond_26
    invoke-interface {v1, p0}, Lcom/tencent/bugly/legu/proguard/ab;->b([B)[B
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_29} :catch_2b

    move-result-object p0

    goto :goto_6

    .line 263
    :catch_2b
    move-exception v1

    .line 264
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 265
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_35
    move-object p0, v0

    .line 266
    goto :goto_6
.end method

.method public static c([B)J
    .registers 5

    .prologue
    const-wide/16 v0, -0x1

    .line 623
    if-nez p0, :cond_5

    .line 631
    :goto_4
    return-wide v0

    .line 627
    :cond_5
    :try_start_5
    new-instance v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_f} :catch_11

    move-result-wide v0

    goto :goto_4

    .line 628
    :catch_11
    move-exception v2

    .line 629
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_4
.end method

.method public static c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2} :catch_3

    .line 55
    :goto_2
    return-object v0

    .line 51
    :catch_3
    move-exception v0

    .line 52
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 53
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    :cond_d
    const-string v0, "fail"

    goto :goto_2
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 118
    const-string v0, "fail"

    .line 119
    if-nez p0, :cond_5

    .line 134
    :cond_4
    :goto_4
    return-object v0

    .line 124
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_e} :catch_19

    move-result-object v1

    .line 125
    if-nez v1, :cond_14

    .line 126
    :try_start_11
    const-string v0, "null"

    goto :goto_4

    .line 128
    :cond_14
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_17} :catch_28

    move-result-object v0

    goto :goto_4

    .line 130
    :catch_19
    move-exception v1

    .line 131
    :goto_1a
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 132
    sget-object v1, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    const-string v2, "failed to get Android ID"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 130
    :catch_28
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_1a
.end method

.method public static d()I
    .registers 2

    .prologue
    .line 60
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2} :catch_3

    .line 65
    :goto_2
    return v0

    .line 61
    :catch_3
    move-exception v0

    .line 62
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 63
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    :cond_d
    const/4 v0, -0x1

    goto :goto_2
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 139
    const-string v1, "fail"

    .line 140
    if-nez p0, :cond_6

    move-object v0, v1

    .line 157
    :cond_5
    :goto_5
    return-object v0

    .line 145
    :cond_6
    :try_start_6
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 146
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 148
    if-nez v1, :cond_1b

    .line 149
    const-string v0, "null"

    goto :goto_5

    .line 151
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1e} :catch_20

    move-result-object v0

    goto :goto_5

    .line 153
    :catch_20
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 154
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 155
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method

.method public static e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 226
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/a;->p()Ljava/lang/String;

    move-result-object v0

    .line 227
    if-nez v0, :cond_c

    .line 228
    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_18} :catch_1a

    move-result-object v0

    .line 235
    :goto_19
    return-object v0

    .line 231
    :catch_1a
    move-exception v0

    .line 232
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 233
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 235
    :cond_24
    const-string v0, "fail"

    goto :goto_19
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 446
    const-string v1, "unknown"

    .line 448
    :try_start_2
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 450
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 451
    if-nez v0, :cond_12

    .line 452
    const/4 v1, 0x0

    .line 515
    :cond_11
    :goto_11
    return-object v1

    .line 453
    :cond_12
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    .line 454
    const-string v1, "WIFI"

    goto :goto_11

    .line 455
    :cond_1c
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_82

    .line 456
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 458
    if-eqz v0, :cond_82

    .line 459
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 460
    packed-switch v0, :pswitch_data_84

    .line 507
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MOBILE("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_48
    move-object v1, v0

    .line 514
    goto :goto_11

    .line 462
    :pswitch_4a
    const-string v1, "GPRS"

    goto :goto_11

    .line 465
    :pswitch_4d
    const-string v1, "EDGE"

    goto :goto_11

    .line 468
    :pswitch_50
    const-string v1, "UMTS"

    goto :goto_11

    .line 471
    :pswitch_53
    const-string v1, "HSDPA"

    goto :goto_11

    .line 474
    :pswitch_56
    const-string v1, "HSUPA"

    goto :goto_11

    .line 477
    :pswitch_59
    const-string v1, "HSPA"

    goto :goto_11

    .line 480
    :pswitch_5c
    const-string v1, "CDMA"

    goto :goto_11

    .line 483
    :pswitch_5f
    const-string v1, "EVDO_0"

    goto :goto_11

    .line 486
    :pswitch_62
    const-string v1, "EVDO_A"

    goto :goto_11

    .line 489
    :pswitch_65
    const-string v1, "1xRTT"

    goto :goto_11

    .line 492
    :pswitch_68
    const-string v1, "iDen"

    goto :goto_11

    .line 495
    :pswitch_6b
    const-string v1, "EVDO_B"

    goto :goto_11

    .line 498
    :pswitch_6e
    const-string v1, "LTE"

    goto :goto_11

    .line 501
    :pswitch_71
    const-string v1, "eHRPD"

    goto :goto_11

    .line 504
    :pswitch_74
    const-string v1, "HSPA+"
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_76} :catch_77

    goto :goto_11

    .line 511
    :catch_77
    move-exception v0

    .line 512
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 513
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11

    :cond_82
    move-object v0, v1

    goto :goto_48

    .line 460
    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_4d
        :pswitch_50
        :pswitch_5c
        :pswitch_5f
        :pswitch_62
        :pswitch_65
        :pswitch_53
        :pswitch_56
        :pswitch_59
        :pswitch_68
        :pswitch_6b
        :pswitch_6e
        :pswitch_71
        :pswitch_74
    .end packed-switch
.end method

.method public static f()J
    .registers 6

    .prologue
    .line 243
    const-wide/16 v0, -0x1

    .line 245
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 246
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    .line 248
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_17} :catch_1b

    move-result v0

    int-to-long v0, v0

    .line 249
    mul-long/2addr v0, v4

    .line 254
    :cond_1a
    :goto_1a
    return-wide v0

    .line 250
    :catch_1b
    move-exception v2

    .line 251
    invoke-static {v2}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 252
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1a
.end method

.method public static f(Landroid/content/Context;)Z
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 597
    .line 598
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v0, :cond_5d

    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5d

    move v1, v2

    .line 602
    :goto_11
    :try_start_11
    new-instance v0, Ljava/io/File;

    const-string v4, "/system/app/Superuser.apk"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_1b} :catch_5f

    move-result v0

    move v4, v0

    .line 606
    :goto_1d
    const/4 v5, 0x0

    .line 607
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v6, "/system/bin/sh"

    aput-object v6, v0, v3

    const-string v6, "-c"

    aput-object v6, v0, v2

    const/4 v6, 0x2

    const-string v7, "type su"

    aput-object v7, v0, v6

    invoke-static {p0, v0}, Lcom/tencent/bugly/legu/proguard/a;->a(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 609
    if-eqz v0, :cond_68

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_68

    .line 610
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 611
    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v0, v7}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 612
    const-string v7, "not found"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 613
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_5b
    move-object v5, v0

    .line 615
    goto :goto_3e

    :cond_5d
    move v1, v3

    .line 598
    goto :goto_11

    :catch_5f
    move-exception v0

    move v4, v3

    goto :goto_1d

    .line 616
    :cond_62
    if-nez v5, :cond_68

    .line 617
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 620
    :cond_68
    if-nez v5, :cond_7b

    move v0, v3

    :goto_6b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 623
    if-nez v1, :cond_79

    if-nez v4, :cond_79

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7a

    :cond_79
    move v3, v2

    .line 626
    :cond_7a
    return v3

    .line 620
    :cond_7b
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_6b

    :cond_80
    move-object v0, v5

    goto :goto_5b
.end method

.method public static g()J
    .registers 6

    .prologue
    .line 262
    const-wide/16 v0, -0x1

    .line 264
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 265
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    .line 267
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_17} :catch_1b

    move-result v0

    int-to-long v0, v0

    .line 268
    mul-long/2addr v0, v4

    .line 273
    :cond_1a
    :goto_1a
    return-wide v0

    .line 269
    :catch_1b
    move-exception v2

    .line 270
    invoke-static {v2}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 271
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1a
.end method

.method public static h()J
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 280
    const-string v0, "/proc/meminfo"

    .line 284
    :try_start_3
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_51
    .catchall {:try_start_3 .. :try_end_8} :catchall_7f

    .line 285
    :try_start_8
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v0, 0x800

    invoke-direct {v2, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_f} :catch_ac
    .catchall {:try_start_8 .. :try_end_f} :catchall_a3

    .line 286
    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 287
    const-string v1, ":\\s+"

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 288
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 289
    const-string v1, "kb"

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_30} :catch_af
    .catchall {:try_start_f .. :try_end_30} :catchall_a6

    move-result-wide v0

    const/16 v4, 0xa

    shl-long/2addr v0, v4

    .line 291
    :try_start_34
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_3b

    .line 305
    :cond_37
    :goto_37
    :try_start_37
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_46

    .line 315
    :cond_3a
    :goto_3a
    return-wide v0

    .line 300
    :catch_3b
    move-exception v2

    .line 301
    invoke-static {v2}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_37

    .line 302
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_37

    .line 308
    :catch_46
    move-exception v2

    .line 309
    invoke-static {v2}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 310
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3a

    .line 292
    :catch_51
    move-exception v0

    move-object v2, v1

    .line 293
    :goto_53
    :try_start_53
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_5c

    .line 294
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_a8

    .line 297
    :cond_5c
    if-eqz v1, :cond_61

    .line 299
    :try_start_5e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_69

    .line 305
    :cond_61
    :goto_61
    if-eqz v2, :cond_66

    .line 307
    :try_start_63
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_74

    .line 315
    :cond_66
    :goto_66
    const-wide/16 v0, -0x2

    goto :goto_3a

    .line 300
    :catch_69
    move-exception v0

    .line 301
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_61

    .line 302
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_61

    .line 308
    :catch_74
    move-exception v0

    .line 309
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_66

    .line 310
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_66

    .line 297
    :catchall_7f
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_82
    if-eqz v2, :cond_87

    .line 299
    :try_start_84
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_8d

    .line 305
    :cond_87
    :goto_87
    if-eqz v3, :cond_8c

    .line 307
    :try_start_89
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_98

    .line 311
    :cond_8c
    :goto_8c
    throw v0

    .line 300
    :catch_8d
    move-exception v1

    .line 301
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_87

    .line 302
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_87

    .line 308
    :catch_98
    move-exception v1

    .line 309
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_8c

    .line 310
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8c

    .line 297
    :catchall_a3
    move-exception v0

    move-object v2, v1

    goto :goto_82

    :catchall_a6
    move-exception v0

    goto :goto_82

    :catchall_a8
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_82

    .line 292
    :catch_ac
    move-exception v0

    move-object v2, v3

    goto :goto_53

    :catch_af
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_53
.end method

.method public static i()J
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/16 v9, 0xa

    .line 322
    const-string v0, "/proc/meminfo"

    .line 326
    :try_start_5
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_9c
    .catchall {:try_start_5 .. :try_end_a} :catchall_ca

    .line 327
    :try_start_a
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v0, 0x800

    invoke-direct {v2, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_11} :catch_f7
    .catchall {:try_start_a .. :try_end_11} :catchall_ee

    .line 328
    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 329
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 330
    const-string v1, ":\\s+"

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 331
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 332
    const-string v1, "kb"

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    shl-long/2addr v0, v9

    .line 335
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 336
    const-string v5, ":\\s+"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 337
    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 338
    const-string v5, "kb"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 339
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    shl-long/2addr v4, v9

    .line 341
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 342
    const-string v7, ":\\s+"

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 343
    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 344
    const-string v7, "kb"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 345
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_7b} :catch_fa
    .catchall {:try_start_11 .. :try_end_7b} :catchall_f1

    move-result-wide v6

    shl-long/2addr v6, v9

    .line 347
    add-long/2addr v0, v4

    add-long/2addr v0, v6

    .line 353
    :try_start_7f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_86

    .line 361
    :cond_82
    :goto_82
    :try_start_82
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_91

    .line 371
    :cond_85
    :goto_85
    return-wide v0

    .line 356
    :catch_86
    move-exception v2

    .line 357
    invoke-static {v2}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_82

    .line 358
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_82

    .line 364
    :catch_91
    move-exception v2

    .line 365
    invoke-static {v2}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_85

    .line 366
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_85

    .line 348
    :catch_9c
    move-exception v0

    move-object v2, v1

    .line 349
    :goto_9e
    :try_start_9e
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_a7

    .line 350
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a7
    .catchall {:try_start_9e .. :try_end_a7} :catchall_f3

    .line 353
    :cond_a7
    if-eqz v1, :cond_ac

    .line 355
    :try_start_a9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_b4

    .line 361
    :cond_ac
    :goto_ac
    if-eqz v2, :cond_b1

    .line 363
    :try_start_ae
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_bf

    .line 371
    :cond_b1
    :goto_b1
    const-wide/16 v0, -0x2

    goto :goto_85

    .line 356
    :catch_b4
    move-exception v0

    .line 357
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_ac

    .line 358
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ac

    .line 364
    :catch_bf
    move-exception v0

    .line 365
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_b1

    .line 366
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b1

    .line 353
    :catchall_ca
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_cd
    if-eqz v2, :cond_d2

    .line 355
    :try_start_cf
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_d8

    .line 361
    :cond_d2
    :goto_d2
    if-eqz v3, :cond_d7

    .line 363
    :try_start_d4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d7} :catch_e3

    .line 367
    :cond_d7
    :goto_d7
    throw v0

    .line 356
    :catch_d8
    move-exception v1

    .line 357
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_d2

    .line 358
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d2

    .line 364
    :catch_e3
    move-exception v1

    .line 365
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_d7

    .line 366
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d7

    .line 353
    :catchall_ee
    move-exception v0

    move-object v2, v1

    goto :goto_cd

    :catchall_f1
    move-exception v0

    goto :goto_cd

    :catchall_f3
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_cd

    .line 348
    :catch_f7
    move-exception v0

    move-object v2, v3

    goto :goto_9e

    :catch_fa
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_9e
.end method

.method public static j()J
    .registers 4

    .prologue
    .line 377
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_d
    if-nez v0, :cond_14

    .line 378
    const-wide/16 v0, 0x0

    .line 390
    :goto_11
    return-wide v0

    .line 377
    :cond_12
    const/4 v0, 0x0

    goto :goto_d

    .line 382
    :cond_14
    :try_start_14
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    .line 384
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_28} :catch_2d

    move-result v0

    int-to-long v2, v0

    .line 385
    int-to-long v0, v1

    mul-long/2addr v0, v2

    goto :goto_11

    .line 386
    :catch_2d
    move-exception v0

    .line 387
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 388
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 390
    :cond_37
    const-wide/16 v0, -0x2

    goto :goto_11
.end method

.method public static k()J
    .registers 4

    .prologue
    .line 396
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_d
    if-nez v0, :cond_14

    .line 397
    const-wide/16 v0, 0x0

    .line 409
    :goto_11
    return-wide v0

    .line 396
    :cond_12
    const/4 v0, 0x0

    goto :goto_d

    .line 401
    :cond_14
    :try_start_14
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    .line 403
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_28} :catch_2d

    move-result v0

    int-to-long v2, v0

    .line 404
    int-to-long v0, v1

    mul-long/2addr v0, v2

    goto :goto_11

    .line 405
    :catch_2d
    move-exception v0

    .line 406
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 407
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 409
    :cond_37
    const-wide/16 v0, -0x2

    goto :goto_11
.end method

.method public static l()Ljava/lang/String;
    .registers 3

    .prologue
    .line 416
    const-string v0, "fail"

    .line 418
    :try_start_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_9} :catch_b

    move-result-object v0

    .line 423
    :cond_a
    :goto_a
    return-object v0

    .line 419
    :catch_b
    move-exception v1

    .line 420
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 421
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a
.end method

.method public static m()Ljava/lang/String;
    .registers 3

    .prologue
    .line 430
    const-string v0, "fail"

    .line 432
    :try_start_2
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_4} :catch_5

    .line 437
    :cond_4
    :goto_4
    return-object v0

    .line 433
    :catch_5
    move-exception v1

    .line 434
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 435
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4
.end method

.method public static n()Ljava/lang/String;
    .registers 3

    .prologue
    .line 84
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 85
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_13

    move-result-object v0

    .line 88
    :goto_12
    return-object v0

    :catch_13
    move-exception v0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public static o()J
    .registers 3

    .prologue
    .line 308
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 309
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_19} :catch_1b

    move-result-wide v0

    .line 315
    :goto_1a
    return-wide v0

    .line 311
    :catch_1b
    move-exception v0

    .line 312
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 313
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 315
    :cond_25
    const-wide/16 v0, -0x1

    goto :goto_1a
.end method

.method private static p()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    .line 173
    const-string v0, "/system/build.prop"

    .line 177
    :try_start_4
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_65
    .catchall {:try_start_4 .. :try_end_9} :catchall_93

    .line 178
    :try_start_9
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v0, 0x800

    invoke-direct {v2, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_10} :catch_bc
    .catchall {:try_start_9 .. :try_end_10} :catchall_b7

    .line 181
    :cond_10
    :try_start_10
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c1

    .line 182
    const-string v4, "="

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 183
    array-length v4, v0

    if-ne v4, v6, :cond_10

    .line 184
    const/4 v4, 0x0

    aget-object v4, v0, v4

    const-string v5, "ro.product.cpu.abilist"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 185
    const/4 v4, 0x1

    aget-object v0, v0, v4

    .line 193
    :goto_2e
    if-eqz v0, :cond_39

    .line 194
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aget-object v0, v0, v4
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_39} :catch_bf
    .catchall {:try_start_10 .. :try_end_39} :catchall_ba

    .line 203
    :cond_39
    :try_start_39
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_4f

    .line 211
    :cond_3c
    :goto_3c
    :try_start_3c
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_5a

    .line 217
    :cond_3f
    :goto_3f
    return-object v0

    .line 187
    :cond_40
    const/4 v4, 0x0

    :try_start_41
    aget-object v4, v0, v4

    const-string v5, "ro.product.cpu.abi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 188
    const/4 v4, 0x1

    aget-object v0, v0, v4
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_4e} :catch_bf
    .catchall {:try_start_41 .. :try_end_4e} :catchall_ba

    goto :goto_2e

    .line 206
    :catch_4f
    move-exception v1

    .line 207
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 208
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3c

    .line 214
    :catch_5a
    move-exception v1

    .line 215
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 216
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3f

    .line 197
    :catch_65
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 198
    :goto_68
    :try_start_68
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_71

    .line 199
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_71
    .catchall {:try_start_68 .. :try_end_71} :catchall_ba

    .line 200
    :cond_71
    if-eqz v2, :cond_76

    .line 205
    :try_start_73
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_7d

    .line 211
    :cond_76
    :goto_76
    if-eqz v3, :cond_7b

    .line 213
    :try_start_78
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_88

    :cond_7b
    :goto_7b
    move-object v0, v1

    .line 217
    goto :goto_3f

    .line 206
    :catch_7d
    move-exception v0

    .line 207
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_76

    .line 208
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_76

    .line 214
    :catch_88
    move-exception v0

    .line 215
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_7b

    .line 216
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7b

    .line 203
    :catchall_93
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_96
    if-eqz v2, :cond_9b

    .line 205
    :try_start_98
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_a1

    .line 211
    :cond_9b
    :goto_9b
    if-eqz v3, :cond_a0

    .line 213
    :try_start_9d
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_ac

    .line 217
    :cond_a0
    :goto_a0
    throw v0

    .line 206
    :catch_a1
    move-exception v1

    .line 207
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_9b

    .line 208
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9b

    .line 214
    :catch_ac
    move-exception v1

    .line 215
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_a0

    .line 216
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a0

    .line 203
    :catchall_b7
    move-exception v0

    move-object v2, v1

    goto :goto_96

    :catchall_ba
    move-exception v0

    goto :goto_96

    .line 197
    :catch_bc
    move-exception v0

    move-object v2, v1

    goto :goto_68

    :catch_bf
    move-exception v0

    goto :goto_68

    :cond_c1
    move-object v0, v1

    goto/16 :goto_2e
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 49
    iput-object p1, p0, Lcom/tencent/bugly/legu/proguard/a;->b:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 86
    if-nez p1, :cond_b

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "put key can not is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_b
    if-nez p2, :cond_15

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "put value can not is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_15
    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_21

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can not support Set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_21
    new-instance v0, Lcom/tencent/bugly/legu/proguard/i;

    invoke-direct {v0}, Lcom/tencent/bugly/legu/proguard/i;-><init>()V

    .line 96
    iget-object v1, p0, Lcom/tencent/bugly/legu/proguard/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/legu/proguard/i;->a(Ljava/lang/String;)I

    .line 97
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/tencent/bugly/legu/proguard/i;->a(Ljava/lang/Object;I)V

    .line 98
    invoke-virtual {v0}, Lcom/tencent/bugly/legu/proguard/i;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/k;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 99
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 100
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    invoke-direct {p0, v2, p2}, Lcom/tencent/bugly/legu/proguard/a;->a(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 102
    invoke-static {v2}, Lcom/tencent/bugly/legu/proguard/a;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public a([B)V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 328
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/a;->c:Lcom/tencent/bugly/legu/proguard/h;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/legu/proguard/h;->a([B)V

    .line 329
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/a;->c:Lcom/tencent/bugly/legu/proguard/h;

    iget-object v1, p0, Lcom/tencent/bugly/legu/proguard/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/legu/proguard/h;->a(Ljava/lang/String;)I

    .line 330
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 331
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 332
    const-string v2, ""

    new-array v3, v4, [B

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v2, ""

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v1, p0, Lcom/tencent/bugly/legu/proguard/a;->c:Lcom/tencent/bugly/legu/proguard/h;

    invoke-virtual {v1, v0, v4, v4}, Lcom/tencent/bugly/legu/proguard/h;->a(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/proguard/a;->a:Ljava/util/HashMap;

    .line 335
    return-void
.end method

.method public a()[B
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 321
    new-instance v0, Lcom/tencent/bugly/legu/proguard/i;

    invoke-direct {v0, v2}, Lcom/tencent/bugly/legu/proguard/i;-><init>(I)V

    .line 322
    iget-object v1, p0, Lcom/tencent/bugly/legu/proguard/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/legu/proguard/i;->a(Ljava/lang/String;)I

    .line 323
    iget-object v1, p0, Lcom/tencent/bugly/legu/proguard/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/legu/proguard/i;->a(Ljava/util/Map;I)V

    .line 324
    invoke-virtual {v0}, Lcom/tencent/bugly/legu/proguard/i;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/k;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    return-object v0
.end method
