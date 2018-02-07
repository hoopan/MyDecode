.class public final Lcom/tencent/bugly/legu/crashreport/crash/jni/a;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/bugly/legu/crashreport/crash/jni/NativeExceptionHandler;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/tencent/bugly/legu/crashreport/crash/b;

.field private final c:Lcom/tencent/bugly/legu/crashreport/common/info/a;

.field private final d:Lcom/tencent/bugly/legu/crashreport/common/strategy/a;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/legu/crashreport/common/info/a;Lcom/tencent/bugly/legu/crashreport/crash/b;Lcom/tencent/bugly/legu/crashreport/common/strategy/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->a:Landroid/content/Context;

    .line 40
    iput-object p3, p0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->b:Lcom/tencent/bugly/legu/crashreport/crash/b;

    .line 41
    iput-object p2, p0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    .line 42
    iput-object p4, p0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/legu/crashreport/common/strategy/a;

    .line 43
    iput-object p5, p0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->e:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public final handleNativeException(IIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 19

    .prologue
    .line 172
    const-string v0, "Native Crash Happen v1"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 173
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

    invoke-virtual/range {v0 .. v18}, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->handleNativeException2(IIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public final handleNativeException2(IIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 16

    .prologue
    .line 184
    const-string v1, "Native Crash Happen v2"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 187
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/legu/crashreport/common/strategy/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;

    .line 188
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/legu/crashreport/common/strategy/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 190
    const-string v1, "waiting for remote sync"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 191
    const/4 v1, 0x0

    .line 192
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/legu/crashreport/common/strategy/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->b()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_1

    .line 193
    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    :goto_0
    add-int/lit16 v1, v1, 0x1f4

    .line 195
    const/16 v2, 0x1388

    if-lt v1, v2, :cond_0

    .line 196
    :cond_1
    const-wide/16 v1, 0x3e8

    mul-long v1, v1, p3

    const-wide/16 v3, 0x3e8

    :try_start_2
    div-long v3, p5, v3

    add-long v4, v1, v3

    .line 204
    invoke-static/range {p9 .. p9}, Lcom/tencent/bugly/legu/crashreport/crash/jni/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 205
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

    .line 208
    if-lez p11, :cond_4

    .line 210
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

    .line 211
    const-string p12, "KERNEL"

    move-object/from16 v9, p12

    move-object/from16 v6, p7

    .line 220
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/legu/crashreport/common/strategy/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->b()Z

    move-result v1

    if-nez v1, :cond_2

    .line 221
    const-string v1, "no remote but still store!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 224
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/legu/crashreport/common/strategy/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;

    move-result-object v1

    .line 225
    iget-boolean v1, v1, Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;->d:Z

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/legu/crashreport/common/strategy/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/common/strategy/a;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 226
    const-string v1, "crash report was closed by remote , will not upload to Bugly , print local for helpful!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 227
    const-string v1, "NATIVE_CRASH"

    invoke-static {}, Lcom/tencent/bugly/legu/proguard/a;->n()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    iget-object v3, v3, Lcom/tencent/bugly/legu/crashreport/common/info/a;->d:Ljava/lang/String;

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

    invoke-static/range {v1 .. v6}, Lcom/tencent/bugly/legu/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/String;Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;)V

    .line 230
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

    .line 297
    :cond_3
    :goto_2
    return-void

    .line 193
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 292
    :catch_1
    move-exception v1

    .line 293
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 294
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 215
    :cond_4
    if-lez p13, :cond_11

    .line 216
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->a:Landroid/content/Context;

    invoke-static/range {p13 .. p13}, Lcom/tencent/bugly/legu/crashreport/common/info/AppInfo;->a(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v9, p12

    move-object/from16 v6, p7

    goto/16 :goto_1

    .line 235
    :cond_5
    const/4 v2, 0x0

    .line 236
    const/4 v3, 0x0

    .line 237
    if-eqz p18, :cond_b

    .line 238
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 239
    move-object/from16 v0, p18

    array-length v3, v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_7

    aget-object v7, p18, v1

    .line 240
    const-string v11, "="

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 241
    array-length v12, v11

    const/4 v13, 0x2

    if-ne v12, v13, :cond_6

    .line 242
    const/4 v7, 0x0

    aget-object v7, v11, v7

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-interface {v2, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 244
    :cond_6
    const-string v11, "bad extraMsg %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    invoke-static {v11, v12}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_4

    .line 247
    :cond_7
    const-string v1, "ExceptionProcessName"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 248
    const-string v3, "ExceptionThreadName"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v3, v2

    move-object v2, v1

    .line 253
    :goto_5
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    .line 254
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    iget-object v2, v1, Lcom/tencent/bugly/legu/crashreport/common/info/a;->d:Ljava/lang/String;

    .line 259
    :goto_6
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    .line 260
    :cond_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 275
    :cond_a
    :goto_7
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v1, p0

    move-object/from16 v7, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p17

    invoke-virtual/range {v1 .. v15}, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->packageCrashDatas(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;Z)Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;

    move-result-object v7

    .line 279
    if-nez v7, :cond_f

    .line 280
    const-string v1, "pkg crash datas fail!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 250
    :cond_b
    const-string v1, "not found extraMsg"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1, v7}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_5

    .line 256
    :cond_c
    const-string v1, "crash process name change to %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v7, v11

    invoke-static {v1, v7}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_6

    .line 263
    :cond_d
    const-string v1, "crash thread name change to %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v7, v11

    invoke-static {v1, v7}, Lcom/tencent/bugly/legu/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 264
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 265
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 266
    :cond_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 267
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    .line 268
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 269
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 284
    :cond_f
    const-string v1, "NATIVE_CRASH"

    invoke-static {}, Lcom/tencent/bugly/legu/proguard/a;->n()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    iget-object v3, v3, Lcom/tencent/bugly/legu/crashreport/common/info/a;->d:Ljava/lang/String;

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

    invoke-static/range {v1 .. v6}, Lcom/tencent/bugly/legu/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/String;Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->b:Lcom/tencent/bugly/legu/crashreport/crash/b;

    move/from16 v0, p11

    invoke-virtual {v1, v7, v0}, Lcom/tencent/bugly/legu/crashreport/crash/b;->a(Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;I)Z

    move-result v1

    if-nez v1, :cond_10

    .line 288
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->b:Lcom/tencent/bugly/legu/crashreport/crash/b;

    const-wide/16 v2, 0x1388

    const/4 v4, 0x1

    invoke-virtual {v1, v7, v2, v3, v4}, Lcom/tencent/bugly/legu/crashreport/crash/b;->a(Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;JZ)V

    .line 291
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/legu/crashreport/crash/jni/b;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    :cond_11
    move-object/from16 v9, p12

    move-object/from16 v6, p7

    goto/16 :goto_1
.end method

.method public final packageCrashDatas(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;Z)Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;
    .locals 6
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
            "Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;"
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {}, Lcom/tencent/bugly/legu/crashreport/crash/c;->a()Lcom/tencent/bugly/legu/crashreport/crash/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/crash/c;->l()Z

    move-result v2

    .line 56
    if-eqz v2, :cond_3

    const-string v1, " This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful![Bugly]"

    .line 59
    :goto_0
    if-eqz v2, :cond_0

    .line 60
    const-string v2, "This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 63
    :cond_0
    new-instance v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;

    invoke-direct {v2}, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;-><init>()V

    .line 65
    const/4 v3, 0x1

    iput v3, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->b:I

    .line 66
    iget-object v3, p0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v3}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    .line 67
    iget-object v3, p0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    iget-object v3, v3, Lcom/tencent/bugly/legu/crashreport/common/info/a;->i:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    .line 68
    iget-object v3, p0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v3}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->t()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    .line 69
    iget-object v3, p0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v3}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    .line 70
    iput-object p5, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    .line 71
    iput-object v1, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    .line 72
    iput-object p6, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    .line 73
    iput-object p7, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 74
    iput-wide p3, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->r:J

    .line 75
    iget-object v1, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/a;->b([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    .line 76
    iput-object p1, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    .line 77
    iput-object p2, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->H:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->s()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    .line 80
    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->E()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    .line 81
    move-object/from16 v0, p10

    iput-object v0, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    .line 82
    iput-object p9, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->I:Ljava/lang/String;

    .line 83
    iput-object p8, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->J:Ljava/lang/String;

    .line 84
    move-object/from16 v0, p11

    iput-object v0, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    .line 87
    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->o()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->E:J

    .line 88
    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->n()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->F:J

    .line 89
    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->p()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->G:J

    .line 90
    if-eqz p14, :cond_4

    .line 92
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/a;->i()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->B:J

    .line 93
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/a;->g()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->C:J

    .line 94
    invoke-static {}, Lcom/tencent/bugly/legu/proguard/a;->k()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->D:J

    .line 95
    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->a:Landroid/content/Context;

    sget v3, Lcom/tencent/bugly/legu/crashreport/crash/c;->d:I

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/tencent/bugly/legu/proguard/a;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    .line 98
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/x;->a(Z)[B

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->x:[B

    .line 99
    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    iget-wide v3, v1, Lcom/tencent/bugly/legu/crashreport/common/info/a;->a:J

    iput-wide v3, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->L:J

    .line 100
    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    iget-boolean v1, v1, Lcom/tencent/bugly/legu/crashreport/common/info/a;->n:Z

    iput-boolean v1, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->M:Z

    .line 102
    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->B()I

    move-result v1

    iput v1, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->O:I

    .line 103
    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->C()I

    move-result v1

    iput v1, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->P:I

    .line 104
    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->w()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->Q:Ljava/util/Map;

    .line 105
    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/legu/crashreport/common/info/a;->A()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    .line 106
    sget v1, Lcom/tencent/bugly/legu/crashreport/crash/c;->e:I

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/tencent/bugly/legu/proguard/a;->a(IZ)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->y:Ljava/util/Map;

    .line 108
    const-string v1, "java:\n"

    .line 109
    iget-object v3, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 110
    iget-object v3, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 111
    if-lez v3, :cond_1

    .line 112
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v3, v1

    .line 113
    iget-object v1, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    iget-object v4, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 117
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->y:Ljava/util/Map;

    iget-object v5, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->y:Ljava/util/Map;

    iget-object v5, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 122
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 123
    if-lez v4, :cond_1

    .line 124
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 126
    iget-object v4, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->y:Ljava/util/Map;

    iget-object v5, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v4, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 134
    :cond_1
    if-nez p1, :cond_2

    .line 135
    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/legu/crashreport/common/info/a;

    iget-object v1, v1, Lcom/tencent/bugly/legu/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object v1, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    .line 138
    :cond_2
    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/jni/a;->b:Lcom/tencent/bugly/legu/crashreport/crash/b;

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/legu/crashreport/crash/b;->b(Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;)V

    .line 164
    :goto_1
    return-object v2

    .line 56
    :cond_3
    const-string v1, ""

    goto/16 :goto_0

    .line 141
    :cond_4
    const-wide/16 v3, -0x1

    iput-wide v3, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->B:J

    .line 142
    const-wide/16 v3, -0x1

    iput-wide v3, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->C:J

    .line 143
    const-wide/16 v3, -0x1

    iput-wide v3, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->D:J

    .line 144
    const-string v1, "this crash is occurred at last process! Log is miss, when get an terrible ABRT Native Exception etc."

    iput-object v1, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    .line 146
    const-wide/16 v3, -0x1

    iput-wide v3, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->L:J

    .line 147
    const/4 v1, -0x1

    iput v1, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->O:I

    .line 148
    const/4 v1, -0x1

    iput v1, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->P:I

    .line 149
    move-object/from16 v0, p13

    iput-object v0, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->Q:Ljava/util/Map;

    .line 150
    const/4 v1, 0x0

    iput-object v1, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    .line 151
    const/4 v1, 0x0

    iput-object v1, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->y:Ljava/util/Map;

    .line 152
    if-nez p1, :cond_5

    .line 153
    const-string v1, "unknown(record)"

    iput-object v1, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    .line 155
    :cond_5
    if-nez p12, :cond_6

    .line 156
    const-string v1, "this crash is occurred at last process! Log is miss, when get an terrible ABRT Native Exception etc."

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->x:[B

    goto :goto_1

    .line 160
    :cond_6
    move-object/from16 v0, p12

    iput-object v0, v2, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->x:[B

    goto :goto_1
.end method
