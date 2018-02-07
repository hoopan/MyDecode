.class public final Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeExceptionHandler;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/tencent/bugly/lejiagu/crashreport/crash/b;

.field private final c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

.field private final d:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;Lcom/tencent/bugly/lejiagu/crashreport/crash/b;Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->a:Landroid/content/Context;

    .line 38
    iput-object p3, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->b:Lcom/tencent/bugly/lejiagu/crashreport/crash/b;

    .line 39
    iput-object p2, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    .line 40
    iput-object p4, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    .line 41
    iput-object p5, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->e:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public final handleNativeException(IIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 19

    .prologue
    .line 144
    const-string v0, "Native Crash Happen v1"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 145
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    invoke-virtual/range {v0 .. v18}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->handleNativeException2(IIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public final handleNativeException2(IIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 16

    .prologue
    .line 156
    const-string v1, "Native Crash Happen v2"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 159
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;

    .line 160
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    const-string v1, "waiting for remote sync"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 163
    const/4 v1, 0x0

    .line 164
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->b()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_1

    .line 165
    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    :goto_0
    add-int/lit16 v1, v1, 0x1f4

    .line 167
    const/16 v2, 0x1388

    if-lt v1, v2, :cond_0

    .line 168
    :cond_1
    const-wide/16 v1, 0x3e8

    mul-long v1, v1, p3

    const-wide/16 v3, 0x3e8

    :try_start_2
    div-long v3, p5, v3

    add-long v4, v1, v3

    .line 176
    invoke-static/range {p9 .. p9}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UNKNOWN("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p13

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 179
    if-lez p11, :cond_4

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p12

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    .line 182
    const-string p12, "KERNEL"

    move-object/from16 v9, p12

    move-object/from16 v6, p7

    .line 191
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->b()Z

    move-result v1

    if-nez v1, :cond_2

    .line 192
    const-string v1, "no remote but still store!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 195
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;

    move-result-object v1

    .line 196
    iget-boolean v1, v1, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->d:Z

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 197
    const-string v1, "crash report was closed by remote , will not upload to Bugly , print local for helpful!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 198
    const-string v1, "NATIVE_CRASH"

    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/a;->n()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    iget-object v3, v3, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/String;Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;)V

    .line 201
    if-eqz p10, :cond_3

    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p10

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 258
    :cond_3
    :goto_2
    return-void

    .line 165
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 253
    :catch_1
    move-exception v1

    .line 254
    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 255
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 186
    :cond_4
    if-lez p13, :cond_f

    .line 187
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->a:Landroid/content/Context;

    invoke-static/range {p13 .. p13}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->a(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v9, p12

    move-object/from16 v6, p7

    goto/16 :goto_1

    .line 206
    :cond_5
    const/4 v2, 0x0

    .line 207
    const/4 v3, 0x0

    .line 208
    if-eqz p18, :cond_a

    .line 209
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 210
    move-object/from16 v0, p18

    array-length v3, v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_7

    aget-object v7, p18, v1

    .line 211
    const-string v11, "="

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 212
    array-length v12, v11

    const/4 v13, 0x2

    if-ne v12, v13, :cond_6

    .line 213
    const/4 v7, 0x0

    aget-object v7, v11, v7

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-interface {v2, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 215
    :cond_6
    const-string v11, "bad extraMsg %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    invoke-static {v11, v12}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_4

    .line 218
    :cond_7
    const-string v1, "ExceptionProcessName"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 219
    const-string v3, "ExceptionThreadName"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v3, v2

    move-object v2, v1

    .line 224
    :goto_5
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    .line 225
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    iget-object v2, v1, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->d:Ljava/lang/String;

    .line 230
    :goto_6
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    .line 231
    :cond_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 236
    :goto_7
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v1, p0

    move-object/from16 v7, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p17

    invoke-virtual/range {v1 .. v15}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->packageCrashDatas(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;Z)Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;

    move-result-object v7

    .line 240
    if-nez v7, :cond_d

    .line 241
    const-string v1, "pkg crash datas fail!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 221
    :cond_a
    const-string v1, "not found extraMsg"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1, v7}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_5

    .line 227
    :cond_b
    const-string v1, "crash process name change to %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v7, v11

    invoke-static {v1, v7}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_6

    .line 233
    :cond_c
    const-string v1, "crash thread name change to %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v7, v11

    invoke-static {v1, v7}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_7

    .line 245
    :cond_d
    const-string v1, "NATIVE_CRASH"

    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/a;->n()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    iget-object v3, v3, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/String;Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->b:Lcom/tencent/bugly/lejiagu/crashreport/crash/b;

    move/from16 v0, p11

    invoke-virtual {v1, v7, v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->a(Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 249
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->b:Lcom/tencent/bugly/lejiagu/crashreport/crash/b;

    const-wide/16 v2, 0x1388

    const/4 v4, 0x1

    invoke-virtual {v1, v7, v2, v3, v4}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->a(Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;JZ)V

    .line 252
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/b;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    :cond_f
    move-object/from16 v9, p12

    move-object/from16 v6, p7

    goto/16 :goto_1
.end method

.method public final packageCrashDatas(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;Z)Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;"
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->a()Lcom/tencent/bugly/lejiagu/crashreport/crash/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->l()Z

    move-result v2

    .line 54
    if-eqz v2, :cond_2

    const-string v1, " This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful![Bugly]"

    .line 57
    :goto_0
    if-eqz v2, :cond_0

    .line 58
    const-string v2, "This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 61
    :cond_0
    new-instance v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;

    invoke-direct {v2}, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;-><init>()V

    .line 63
    const/4 v3, 0x1

    iput v3, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->b:I

    .line 64
    iget-object v3, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v3}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    .line 65
    iget-object v3, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    iget-object v3, v3, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->i:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    .line 66
    iget-object v3, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v3}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->t()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    .line 67
    iget-object v3, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v3}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    .line 68
    iput-object p5, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    .line 69
    iput-object v1, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    .line 70
    iput-object p6, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    .line 71
    iput-object p7, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 72
    iput-wide p3, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->r:J

    .line 73
    iget-object v1, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/proguard/a;->b([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    .line 74
    iput-object p1, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    .line 75
    iput-object p2, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->H:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->s()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    .line 78
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->D()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    .line 79
    iput-object p10, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    .line 80
    iput-object p9, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->I:Ljava/lang/String;

    .line 81
    iput-object p8, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->J:Ljava/lang/String;

    .line 82
    move-object/from16 v0, p11

    iput-object v0, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->o()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->E:J

    .line 86
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->n()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->F:J

    .line 87
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->p()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->G:J

    .line 88
    if-eqz p14, :cond_3

    .line 90
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/a;->i()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->B:J

    .line 91
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/a;->g()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->C:J

    .line 92
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/a;->k()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->D:J

    .line 93
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->a:Landroid/content/Context;

    sget v3, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->d:I

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/tencent/bugly/lejiagu/proguard/a;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    .line 96
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/proguard/v;->a(Z)[B

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->x:[B

    .line 97
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    iget-wide v3, v1, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a:J

    iput-wide v3, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->L:J

    .line 98
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    iget-boolean v1, v1, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->n:Z

    iput-boolean v1, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->M:Z

    .line 100
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->A()I

    move-result v1

    iput v1, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->O:I

    .line 101
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->B()I

    move-result v1

    iput v1, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->P:I

    .line 102
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->w()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->Q:Ljava/util/Map;

    .line 103
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->z()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    .line 104
    sget v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->e:I

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/tencent/bugly/lejiagu/proguard/a;->a(IZ)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->y:Ljava/util/Map;

    .line 106
    if-nez p1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    iget-object v1, v1, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object v1, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/a;->b:Lcom/tencent/bugly/lejiagu/crashreport/crash/b;

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->b(Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;)V

    .line 136
    :goto_1
    return-object v2

    .line 54
    :cond_2
    const-string v1, ""

    goto/16 :goto_0

    .line 113
    :cond_3
    const-wide/16 v3, -0x1

    iput-wide v3, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->B:J

    .line 114
    const-wide/16 v3, -0x1

    iput-wide v3, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->C:J

    .line 115
    const-wide/16 v3, -0x1

    iput-wide v3, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->D:J

    .line 116
    const-string v1, "this crash is occurred at last process! Log is miss, when get an terrible ABRT Native Exception etc."

    iput-object v1, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    .line 118
    const-wide/16 v3, -0x1

    iput-wide v3, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->L:J

    .line 119
    const/4 v1, -0x1

    iput v1, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->O:I

    .line 120
    const/4 v1, -0x1

    iput v1, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->P:I

    .line 121
    move-object/from16 v0, p13

    iput-object v0, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->Q:Ljava/util/Map;

    .line 122
    const/4 v1, 0x0

    iput-object v1, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    .line 123
    const/4 v1, 0x0

    iput-object v1, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->y:Ljava/util/Map;

    .line 124
    if-nez p1, :cond_4

    .line 125
    const-string v1, "unknown(record)"

    iput-object v1, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    .line 127
    :cond_4
    if-nez p12, :cond_5

    .line 128
    const-string v1, "this crash is occurred at last process! Log is miss, when get an terrible ABRT Native Exception etc."

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->x:[B

    goto :goto_1

    .line 132
    :cond_5
    move-object/from16 v0, p12

    iput-object v0, v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->x:[B

    goto :goto_1
.end method
