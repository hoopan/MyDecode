.class public final Lcom/tencent/bugly/lejiagu/proguard/s;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private b:I

.field private final c:Landroid/content/Context;

.field private final d:I

.field private final e:[B

.field private final f:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

.field private final g:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

.field private final h:Lcom/tencent/bugly/lejiagu/proguard/p;

.field private final i:Lcom/tencent/bugly/lejiagu/proguard/r;

.field private final j:I

.field private final k:Lcom/tencent/bugly/lejiagu/proguard/q;

.field private final l:Lcom/tencent/bugly/lejiagu/proguard/q;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:J

.field private p:J

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II[BLjava/lang/String;Lcom/tencent/bugly/lejiagu/proguard/q;Z)V
    .registers 18

    .prologue
    .line 82
    const/4 v8, 0x5

    const v9, 0xea60

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/tencent/bugly/lejiagu/proguard/s;-><init>(Landroid/content/Context;II[BLjava/lang/String;Lcom/tencent/bugly/lejiagu/proguard/q;ZII)V

    .line 83
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;II[BLjava/lang/String;Lcom/tencent/bugly/lejiagu/proguard/q;ZII)V
    .registers 13

    .prologue
    const-wide/16 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->a:I

    .line 40
    const/16 v0, 0x7530

    iput v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->b:I

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->m:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->n:I

    .line 56
    iput-wide v1, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->o:J

    .line 57
    iput-wide v1, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->p:J

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->q:Z

    .line 99
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->c:Landroid/content/Context;

    .line 100
    invoke-static {p1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->f:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    .line 101
    iput-object p4, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->e:[B

    .line 102
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->g:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    .line 103
    invoke-static {p1}, Lcom/tencent/bugly/lejiagu/proguard/p;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/proguard/p;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->h:Lcom/tencent/bugly/lejiagu/proguard/p;

    .line 104
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/r;->a()Lcom/tencent/bugly/lejiagu/proguard/r;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->i:Lcom/tencent/bugly/lejiagu/proguard/r;

    .line 105
    iput p2, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->j:I

    .line 106
    iput-object p5, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->m:Ljava/lang/String;

    .line 107
    iput-object p6, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->k:Lcom/tencent/bugly/lejiagu/proguard/q;

    .line 108
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->i:Lcom/tencent/bugly/lejiagu/proguard/r;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->l:Lcom/tencent/bugly/lejiagu/proguard/q;

    .line 110
    iput-boolean p7, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->q:Z

    .line 112
    if-eqz p7, :cond_48

    .line 113
    sparse-switch p3, :sswitch_data_5a

    .line 120
    :cond_48
    :goto_48
    iput p3, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->d:I

    .line 126
    const/4 v0, 0x5

    iput v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->a:I

    .line 127
    const v0, 0xea60

    iput v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->b:I

    .line 128
    return-void

    .line 115
    :sswitch_53
    const/16 p3, 0x33e

    .line 116
    goto :goto_48

    .line 119
    :sswitch_56
    const/16 p3, 0x348

    goto :goto_48

    .line 113
    nop

    :sswitch_data_5a
    .sparse-switch
        0x1fe -> :sswitch_56
        0x276 -> :sswitch_53
        0x280 -> :sswitch_56
    .end sparse-switch
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/tencent/bugly/lejiagu/proguard/ak;Ljava/lang/String;Lcom/tencent/bugly/lejiagu/proguard/q;Z)V
    .registers 15

    .prologue
    .line 69
    iget v3, p3, Lcom/tencent/bugly/lejiagu/proguard/ak;->g:I

    invoke-static {p3}, Lcom/tencent/bugly/lejiagu/proguard/a;->a(Lcom/tencent/bugly/lejiagu/proguard/ak;)[B

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/tencent/bugly/lejiagu/proguard/s;-><init>(Landroid/content/Context;II[BLjava/lang/String;Lcom/tencent/bugly/lejiagu/proguard/q;Z)V

    .line 71
    return-void
.end method

.method private a(Lcom/tencent/bugly/lejiagu/proguard/al;ZILjava/lang/String;I)V
    .registers 11

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 160
    iget v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->d:I

    sparse-switch v0, :sswitch_data_78

    .line 170
    iget v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->d:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    :goto_d
    if-eqz p2, :cond_59

    .line 173
    const-string v1, "[upload] success: %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 181
    :cond_18
    :goto_18
    iget-wide v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->o:J

    iget-wide v2, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->p:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_34

    .line 182
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->i:Lcom/tencent/bugly/lejiagu/proguard/r;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/proguard/r;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->o:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->p:J

    add-long/2addr v0, v2

    .line 183
    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->i:Lcom/tencent/bugly/lejiagu/proguard/r;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/r;->a(J)V

    .line 186
    :cond_34
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->k:Lcom/tencent/bugly/lejiagu/proguard/q;

    if-eqz v0, :cond_43

    .line 187
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->k:Lcom/tencent/bugly/lejiagu/proguard/q;

    iget v1, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->d:I

    iget-wide v1, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->o:J

    iget-wide v1, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->p:J

    invoke-interface {v0, p2}, Lcom/tencent/bugly/lejiagu/proguard/q;->a(Z)V

    .line 189
    :cond_43
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->l:Lcom/tencent/bugly/lejiagu/proguard/q;

    if-eqz v0, :cond_52

    .line 190
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->l:Lcom/tencent/bugly/lejiagu/proguard/q;

    iget v1, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->d:I

    iget-wide v1, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->o:J

    iget-wide v1, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->p:J

    invoke-interface {v0, p2}, Lcom/tencent/bugly/lejiagu/proguard/q;->a(Z)V

    .line 192
    :cond_52
    return-void

    .line 163
    :sswitch_53
    const-string v0, "crash"

    goto :goto_d

    .line 167
    :sswitch_56
    const-string v0, "userinfo"

    goto :goto_d

    .line 175
    :cond_59
    const-string v1, "[upload] fail! %s %d %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    const/4 v0, 0x2

    aput-object p4, v2, v0

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 176
    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->q:Z

    if-eqz v0, :cond_18

    .line 177
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->i:Lcom/tencent/bugly/lejiagu/proguard/r;

    const/4 v1, 0x0

    invoke-virtual {v0, p5, v1}, Lcom/tencent/bugly/lejiagu/proguard/r;->a(ILcom/tencent/bugly/lejiagu/proguard/al;)V

    goto :goto_18

    .line 160
    nop

    :sswitch_data_78
    .sparse-switch
        0x276 -> :sswitch_53
        0x280 -> :sswitch_56
        0x33e -> :sswitch_53
        0x348 -> :sswitch_56
    .end sparse-switch
.end method

.method private static a(Lcom/tencent/bugly/lejiagu/proguard/al;Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;)Z
    .registers 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 199
    if-nez p0, :cond_d

    .line 200
    const-string v0, "resp == null!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v6

    .line 247
    :goto_c
    return v0

    .line 204
    :cond_d
    iget-byte v0, p0, Lcom/tencent/bugly/lejiagu/proguard/al;->a:B

    if-eqz v0, :cond_22

    .line 205
    const-string v0, "resp result error %d"

    new-array v1, v7, [Ljava/lang/Object;

    iget-byte v2, p0, Lcom/tencent/bugly/lejiagu/proguard/al;->a:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v6

    .line 206
    goto :goto_c

    .line 209
    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/al;->d:Ljava/lang/String;

    if-eqz v0, :cond_b0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b0

    move v0, v6

    :goto_31
    if-nez v0, :cond_59

    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/proguard/al;->d:Ljava/lang/String;

    if-eq v0, v1, :cond_59

    .line 211
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/m;->a()Lcom/tencent/bugly/lejiagu/proguard/m;

    move-result-object v0

    sget v1, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->a:I

    const-string v2, "key_ip"

    iget-object v3, p0, Lcom/tencent/bugly/lejiagu/proguard/al;->d:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/proguard/m;->a(ILjava/lang/String;[BLcom/tencent/bugly/lejiagu/proguard/l;Z)Z

    .line 214
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/al;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->d(Ljava/lang/String;)V

    .line 216
    :cond_59
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/al;->g:Ljava/lang/String;

    if-eqz v0, :cond_b2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b2

    move v0, v6

    :goto_68
    if-nez v0, :cond_90

    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/proguard/al;->g:Ljava/lang/String;

    if-eq v0, v1, :cond_90

    .line 218
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/m;->a()Lcom/tencent/bugly/lejiagu/proguard/m;

    move-result-object v0

    sget v1, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->a:I

    const-string v2, "key_imei"

    iget-object v3, p0, Lcom/tencent/bugly/lejiagu/proguard/al;->g:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/proguard/m;->a(ILjava/lang/String;[BLcom/tencent/bugly/lejiagu/proguard/l;Z)Z

    .line 220
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/al;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->e(Ljava/lang/String;)V
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_90} :catch_10c

    .line 225
    :cond_90
    :goto_90
    iget-wide v0, p0, Lcom/tencent/bugly/lejiagu/proguard/al;->e:J

    iput-wide v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->h:J

    .line 228
    iget v0, p0, Lcom/tencent/bugly/lejiagu/proguard/al;->b:I

    const/16 v1, 0x1fe

    if-ne v0, v1, :cond_102

    .line 229
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/al;->c:[B

    if-nez v0, :cond_b4

    .line 230
    const-string v0, "remote data is miss! %d"

    new-array v1, v7, [Ljava/lang/Object;

    iget v2, p0, Lcom/tencent/bugly/lejiagu/proguard/al;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v6

    .line 231
    goto/16 :goto_c

    :cond_b0
    move v0, v7

    .line 209
    goto :goto_31

    :cond_b2
    move v0, v7

    .line 216
    goto :goto_68

    .line 234
    :cond_b4
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/al;->c:[B

    const-class v1, Lcom/tencent/bugly/lejiagu/proguard/an;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/a;->a([BLjava/lang/Class;)Lcom/tencent/bugly/lejiagu/proguard/j;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/lejiagu/proguard/an;

    .line 236
    if-nez v0, :cond_d2

    .line 237
    const-string v0, "remote data is error! %d"

    new-array v1, v7, [Ljava/lang/Object;

    iget v2, p0, Lcom/tencent/bugly/lejiagu/proguard/al;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v6

    .line 238
    goto/16 :goto_c

    .line 241
    :cond_d2
    const-string v2, "en:%b qu:%b uin:%b vm:%d"

    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/Object;

    iget-boolean v1, v0, Lcom/tencent/bugly/lejiagu/proguard/an;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v6

    iget-boolean v1, v0, Lcom/tencent/bugly/lejiagu/proguard/an;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v7

    const/4 v1, 0x2

    iget-boolean v4, v0, Lcom/tencent/bugly/lejiagu/proguard/an;->b:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x3

    iget-object v1, v0, Lcom/tencent/bugly/lejiagu/proguard/an;->g:Ljava/util/Map;

    if-nez v1, :cond_105

    const/4 v1, -0x1

    :goto_f6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 244
    invoke-virtual {p2, v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->a(Lcom/tencent/bugly/lejiagu/proguard/an;)V

    :cond_102
    move v0, v7

    .line 247
    goto/16 :goto_c

    .line 241
    :cond_105
    iget-object v1, v0, Lcom/tencent/bugly/lejiagu/proguard/an;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    goto :goto_f6

    :catch_10c
    move-exception v0

    goto :goto_90
.end method


# virtual methods
.method public final a(J)V
    .registers 5

    .prologue
    .line 463
    iget v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->n:I

    .line 464
    iget-wide v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->o:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->o:J

    .line 465
    return-void
.end method

.method public final b(J)V
    .registers 5

    .prologue
    .line 468
    iget-wide v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->p:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->p:J

    .line 469
    return-void
.end method

.method public final run()V
    .registers 16

    .prologue
    const-wide/16 v13, 0x0

    const/4 v12, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 253
    :try_start_5
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->e:[B

    .line 254
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->n:I

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->o:J

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->p:J

    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->i:Lcom/tencent/bugly/lejiagu/proguard/r;

    iget v3, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->j:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v3, v5, v6}, Lcom/tencent/bugly/lejiagu/proguard/r;->a(IJ)V

    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->k:Lcom/tencent/bugly/lejiagu/proguard/q;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->k:Lcom/tencent/bugly/lejiagu/proguard/q;

    iget v1, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->d:I

    :cond_25
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->l:Lcom/tencent/bugly/lejiagu/proguard/q;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->l:Lcom/tencent/bugly/lejiagu/proguard/q;

    iget v1, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->d:I

    .line 257
    :cond_2d
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/proguard/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_40

    .line 258
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "network is not availiable!"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/proguard/s;->a(Lcom/tencent/bugly/lejiagu/proguard/al;ZILjava/lang/String;I)V

    .line 460
    :cond_3f
    :goto_3f
    return-void

    .line 261
    :cond_40
    if-eqz v0, :cond_45

    array-length v1, v0

    if-nez v1, :cond_5b

    .line 262
    :cond_45
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "[upload] fail, request package is empty!"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/proguard/s;->a(Lcom/tencent/bugly/lejiagu/proguard/al;ZILjava/lang/String;I)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_4f} :catch_50

    goto :goto_3f

    .line 456
    :catch_50
    move-exception v0

    .line 457
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 458
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3f

    .line 266
    :cond_5b
    :try_start_5b
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->i:Lcom/tencent/bugly/lejiagu/proguard/r;

    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/proguard/r;->b()J

    move-result-wide v5

    .line 267
    array-length v1, v0

    int-to-long v7, v1

    add-long/2addr v7, v5

    const-wide/32 v9, 0x200000

    cmp-long v1, v7, v9

    if-ltz v1, :cond_a4

    .line 269
    const-string v0, "up too much wait to next time ! %d %d "

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-wide/32 v3, 0x200000

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 270
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "[upload] fail, over net consume: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x800

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "K"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/proguard/s;->a(Lcom/tencent/bugly/lejiagu/proguard/al;ZILjava/lang/String;I)V

    goto :goto_3f

    .line 275
    :cond_a4
    const-string v1, "do upload task %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v1, v3}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 277
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->c:Landroid/content/Context;

    if-eqz v1, :cond_c7

    if-eqz v0, :cond_c7

    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->f:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    if-eqz v1, :cond_c7

    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->g:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    if-eqz v1, :cond_c7

    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->h:Lcom/tencent/bugly/lejiagu/proguard/p;

    if-nez v1, :cond_d3

    .line 279
    :cond_c7
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "[upload] fail, illegal access error!"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/proguard/s;->a(Lcom/tencent/bugly/lejiagu/proguard/al;ZILjava/lang/String;I)V

    goto/16 :goto_3f

    .line 284
    :cond_d3
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->g:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;

    move-result-object v7

    .line 285
    if-nez v7, :cond_e7

    .line 286
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "[upload] fail, illegal local strategy!"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/proguard/s;->a(Lcom/tencent/bugly/lejiagu/proguard/al;ZILjava/lang/String;I)V

    goto/16 :goto_3f

    .line 293
    :cond_e7
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 294
    const-string v1, "prodId"

    iget-object v3, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->f:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v3}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v1, "bundleId"

    iget-object v3, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->f:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    iget-object v3, v3, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->c:Ljava/lang/String;

    invoke-interface {v8, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v1, "appVer"

    iget-object v3, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->f:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    iget-object v3, v3, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->i:Ljava/lang/String;

    invoke-interface {v8, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-boolean v1, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->q:Z

    if-eqz v1, :cond_174

    .line 301
    const-string v1, "cmd"

    iget v3, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v1, "platformId"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v1, "sdkVer"

    iget-object v3, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->f:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "2.1.6"

    invoke-interface {v8, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v1, "strategylastUpdateTime"

    iget-wide v5, v7, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->l:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->i:Lcom/tencent/bugly/lejiagu/proguard/r;

    invoke-virtual {v1, v8}, Lcom/tencent/bugly/lejiagu/proguard/r;->a(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_14d

    .line 309
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "[upload] fail, failed to add security info to HTTP headers"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/proguard/s;->a(Lcom/tencent/bugly/lejiagu/proguard/al;ZILjava/lang/String;I)V

    goto/16 :goto_3f

    .line 314
    :cond_14d
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/a;->a([BI)[B

    move-result-object v0

    .line 315
    if-nez v0, :cond_160

    .line 316
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "[upload] fail, failed to zip request body"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/proguard/s;->a(Lcom/tencent/bugly/lejiagu/proguard/al;ZILjava/lang/String;I)V

    goto/16 :goto_3f

    .line 321
    :cond_160
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->i:Lcom/tencent/bugly/lejiagu/proguard/r;

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/lejiagu/proguard/r;->a([B)[B

    move-result-object v0

    .line 322
    if-nez v0, :cond_174

    .line 323
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "[upload] fail, failed to encrypt request body"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/proguard/s;->a(Lcom/tencent/bugly/lejiagu/proguard/al;ZILjava/lang/String;I)V

    goto/16 :goto_3f

    :cond_174
    move-object v1, v0

    .line 329
    const/4 v5, -0x1

    move v0, v2

    move v3, v2

    .line 331
    :goto_178
    iget v6, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->a:I

    if-ge v0, v6, :cond_3da

    .line 332
    add-int/lit8 v6, v0, 0x1

    if-eqz v0, :cond_195

    .line 333
    const-string v0, "failed to upload last time, wait and try(%d) again"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v9

    invoke-static {v0, v3}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 334
    iget v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->b:I
    :try_end_191
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_191} :catch_50

    int-to-long v9, v0

    :try_start_192
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_195
    .catch Ljava/lang/InterruptedException; {:try_start_192 .. :try_end_195} :catch_214
    .catch Ljava/lang/Throwable; {:try_start_192 .. :try_end_195} :catch_50

    .line 337
    :cond_195
    :goto_195
    :try_start_195
    const-string v0, "send %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    array-length v10, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v9

    invoke-static {v0, v3}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 340
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->m:Ljava/lang/String;

    if-eqz v0, :cond_21a

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_21a

    move v0, v2

    :goto_1b4
    if-eqz v0, :cond_1c4

    .line 341
    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->q:Z

    if-eqz v0, :cond_221

    .line 343
    iget v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->d:I

    const/16 v3, 0x33e

    if-ne v0, v3, :cond_21c

    .line 344
    iget-object v0, v7, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->m:Ljava/lang/String;

    .line 353
    :cond_1c4
    :goto_1c4
    const-string v0, "do upload to %s with cmd %d (pid=%d | tid=%d)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->m:Ljava/lang/String;

    aput-object v10, v3, v9

    const/4 v9, 0x1

    iget v10, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->d:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v9

    const/4 v9, 0x2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v9

    const/4 v9, 0x3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v9

    invoke-static {v0, v3}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 355
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->h:Lcom/tencent/bugly/lejiagu/proguard/p;

    iget-object v3, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->m:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, p0, v8}, Lcom/tencent/bugly/lejiagu/proguard/p;->a(Ljava/lang/String;[BLcom/tencent/bugly/lejiagu/proguard/s;Ljava/util/Map;)[B

    move-result-object v3

    .line 356
    if-nez v3, :cond_226

    .line 357
    const-string v0, "upload fail, no response!"

    const-string v3, "try upload fail! %d %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->d:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v0, v9, v10

    invoke-static {v3, v9}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v6

    move v3, v4

    .line 359
    goto/16 :goto_178

    .line 334
    :catch_214
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_195

    :cond_21a
    move v0, v4

    .line 340
    goto :goto_1b4

    .line 346
    :cond_21c
    iget-object v0, v7, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->m:Ljava/lang/String;

    goto :goto_1c4

    .line 350
    :cond_221
    iget-object v0, v7, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->m:Ljava/lang/String;

    goto :goto_1c4

    .line 362
    :cond_226
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->h:Lcom/tencent/bugly/lejiagu/proguard/p;

    iget-object v0, v0, Lcom/tencent/bugly/lejiagu/proguard/p;->a:Ljava/util/Map;

    .line 363
    iget-boolean v9, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->q:Z

    if-eqz v9, :cond_341

    .line 364
    if-eqz v0, :cond_23e

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v9

    if-eqz v9, :cond_23e

    const-string v9, "status"

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_276

    .line 366
    :cond_23e
    const-string v0, "no headers from server, just try again (pid=%d | tid=%d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v9

    const/4 v9, 0x1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v9

    invoke-static {v0, v3}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 368
    const-string v0, "upload fail, no status header"

    const-string v3, "try upload fail! %d %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->d:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v0, v9, v10

    invoke-static {v3, v9}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_272
    .catch Ljava/lang/Throwable; {:try_start_195 .. :try_end_272} :catch_50

    move v0, v6

    move v3, v4

    .line 370
    goto/16 :goto_178

    .line 374
    :cond_276
    :try_start_276
    const-string v9, "status"

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 377
    const-string v0, "status from server is %d (pid=%d | tid=%d)"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v0, v9}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2a7
    .catch Ljava/lang/Throwable; {:try_start_276 .. :try_end_2a7} :catch_2f9

    .line 389
    if-eqz v5, :cond_341

    .line 391
    if-ne v5, v12, :cond_325

    .line 393
    :try_start_2ab
    iget-wide v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->o:J

    iget-wide v2, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->p:J

    add-long/2addr v0, v2

    cmp-long v0, v0, v13

    if-lez v0, :cond_2c5

    .line 394
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->i:Lcom/tencent/bugly/lejiagu/proguard/r;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/proguard/r;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->o:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->p:J

    add-long/2addr v0, v2

    .line 395
    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->i:Lcom/tencent/bugly/lejiagu/proguard/r;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/r;->a(J)V

    .line 398
    :cond_2c5
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->i:Lcom/tencent/bugly/lejiagu/proguard/r;

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Lcom/tencent/bugly/lejiagu/proguard/r;->a(ILcom/tencent/bugly/lejiagu/proguard/al;)V

    .line 400
    const-string v0, "Session ID is invalid, will try again immediately (pid=%d | tid=%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 402
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->i:Lcom/tencent/bugly/lejiagu/proguard/r;

    iget v1, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->j:I

    iget v2, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->d:I

    iget-object v3, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->e:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->l:Lcom/tencent/bugly/lejiagu/proguard/q;

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/proguard/r;->a(II[BLjava/lang/String;Lcom/tencent/bugly/lejiagu/proguard/q;)V

    goto/16 :goto_3f

    .line 381
    :catch_2f9
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "upload fail, format of status header is invalid: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "try upload fail! %d %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->d:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v0, v9, v10

    invoke-static {v3, v9}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v6

    move v3, v4

    .line 386
    goto/16 :goto_178

    .line 404
    :cond_325
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "upload fail, status: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/proguard/s;->a(Lcom/tencent/bugly/lejiagu/proguard/al;ZILjava/lang/String;I)V

    goto/16 :goto_3f

    .line 411
    :cond_341
    const-string v0, "recv %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    array-length v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 413
    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->q:Z

    if-eqz v0, :cond_37c

    .line 415
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->i:Lcom/tencent/bugly/lejiagu/proguard/r;

    invoke-virtual {v0, v3}, Lcom/tencent/bugly/lejiagu/proguard/r;->b([B)[B

    move-result-object v0

    .line 416
    if-nez v0, :cond_369

    .line 417
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "upload fail, failed to decrypt response from server"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/proguard/s;->a(Lcom/tencent/bugly/lejiagu/proguard/al;ZILjava/lang/String;I)V

    goto/16 :goto_3f

    .line 422
    :cond_369
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/a;->b([BI)[B

    move-result-object v0

    .line 423
    if-nez v0, :cond_37d

    .line 424
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "upload fail, failed to unzip(gzip) response from server"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/proguard/s;->a(Lcom/tencent/bugly/lejiagu/proguard/al;ZILjava/lang/String;I)V

    goto/16 :goto_3f

    :cond_37c
    move-object v0, v3

    .line 430
    :cond_37d
    iget-boolean v1, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->q:Z

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/a;->a([BZ)Lcom/tencent/bugly/lejiagu/proguard/al;

    move-result-object v1

    .line 434
    if-nez v1, :cond_391

    .line 435
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "upload fail, resp null!"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/proguard/s;->a(Lcom/tencent/bugly/lejiagu/proguard/al;ZILjava/lang/String;I)V

    goto/16 :goto_3f

    .line 439
    :cond_391
    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->q:Z

    if-eqz v0, :cond_39a

    .line 441
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->i:Lcom/tencent/bugly/lejiagu/proguard/r;

    invoke-virtual {v0, v5, v1}, Lcom/tencent/bugly/lejiagu/proguard/r;->a(ILcom/tencent/bugly/lejiagu/proguard/al;)V

    .line 444
    :cond_39a
    const-string v3, "response %d %d"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget v5, v1, Lcom/tencent/bugly/lejiagu/proguard/al;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x1

    iget-object v0, v1, Lcom/tencent/bugly/lejiagu/proguard/al;->c:[B

    if-nez v0, :cond_3cc

    move v0, v2

    :goto_3ae
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 446
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->f:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/proguard/s;->g:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    invoke-static {v1, v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/s;->a(Lcom/tencent/bugly/lejiagu/proguard/al;Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;)Z

    move-result v0

    if-nez v0, :cond_3d0

    .line 447
    const/4 v2, 0x0

    const/4 v3, 0x2

    iget-object v4, v1, Lcom/tencent/bugly/lejiagu/proguard/al;->f:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/proguard/s;->a(Lcom/tencent/bugly/lejiagu/proguard/al;ZILjava/lang/String;I)V

    goto/16 :goto_3f

    .line 444
    :cond_3cc
    iget-object v0, v1, Lcom/tencent/bugly/lejiagu/proguard/al;->c:[B

    array-length v0, v0

    goto :goto_3ae

    .line 451
    :cond_3d0
    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/proguard/s;->a(Lcom/tencent/bugly/lejiagu/proguard/al;ZILjava/lang/String;I)V

    goto/16 :goto_3f

    .line 455
    :cond_3da
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v4, "try OT Fail!"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/proguard/s;->a(Lcom/tencent/bugly/lejiagu/proguard/al;ZILjava/lang/String;I)V
    :try_end_3e3
    .catch Ljava/lang/Throwable; {:try_start_2ab .. :try_end_3e3} :catch_50

    goto/16 :goto_3f
.end method
