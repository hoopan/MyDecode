.class public Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;,
        Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    return-void
.end method

.method private static a(Ljava/io/BufferedReader;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 322
    const/4 v0, 0x0

    :goto_6
    const/4 v2, 0x3

    if-ge v0, v2, :cond_2a

    .line 323
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 324
    if-nez v2, :cond_11

    .line 325
    const/4 v0, 0x0

    .line 329
    :goto_10
    return-object v0

    .line 326
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 329
    :cond_2a
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method private static varargs a(Ljava/io/BufferedReader;[Ljava/util/regex/Pattern;)[Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 301
    if-eqz p0, :cond_6

    if-nez p1, :cond_7

    .line 313
    :cond_6
    :goto_6
    return-object v0

    .line 304
    :cond_7
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 305
    array-length v4, p1

    move v1, v2

    :goto_f
    if-ge v1, v4, :cond_7

    aget-object v5, p1, v1

    .line 306
    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 307
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_26

    .line 308
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v2

    const/4 v1, 0x1

    aput-object v3, v0, v1

    goto :goto_6

    .line 305
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method private static b(Ljava/io/BufferedReader;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 338
    :goto_5
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 339
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2c

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 345
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readFirstDumpInfo(Ljava/lang/String;Z)Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;
    .registers 10

    .prologue
    const-wide/16 v5, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 139
    if-nez p0, :cond_11

    .line 140
    const-string v1, "path:%s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v7

    invoke-static {v1, v2}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 188
    :goto_10
    return-object v0

    .line 143
    :cond_11
    new-instance v1, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;

    invoke-direct {v1}, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;-><init>()V

    .line 144
    new-instance v2, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$2;

    invoke-direct {v2, v1, p1}, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$2;-><init>(Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;Z)V

    invoke-static {p0, v2}, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper;->readTraceFile(Ljava/lang/String;Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$b;)V

    .line 183
    iget-wide v2, v1, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;->a:J

    cmp-long v2, v2, v5

    if-lez v2, :cond_30

    iget-wide v2, v1, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;->c:J

    cmp-long v2, v2, v5

    if-lez v2, :cond_30

    iget-object v2, v1, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;->b:Ljava/lang/String;

    if-eqz v2, :cond_30

    move-object v0, v1

    .line 184
    goto :goto_10

    .line 186
    :cond_30
    const-string v2, "first dump error %s"

    new-array v3, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, v1, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;->a:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;->c:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v1, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_10
.end method

.method public static readTargetDumpInfo(Ljava/lang/String;Ljava/lang/String;Z)Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;
    .registers 9

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 69
    if-eqz p0, :cond_7

    if-nez p1, :cond_9

    :cond_7
    move-object v0, v1

    .line 128
    :cond_8
    :goto_8
    return-object v0

    .line 71
    :cond_9
    new-instance v0, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;

    invoke-direct {v0}, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;-><init>()V

    .line 72
    new-instance v2, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$1;

    invoke-direct {v2, v0, p2}, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$1;-><init>(Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;Z)V

    invoke-static {p1, v2}, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper;->readTraceFile(Ljava/lang/String;Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$b;)V

    .line 125
    iget-wide v2, v0, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;->a:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_26

    iget-wide v2, v0, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;->c:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_26

    iget-object v2, v0, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$a;->b:Ljava/lang/String;

    if-nez v2, :cond_8

    :cond_26
    move-object v0, v1

    .line 128
    goto :goto_8
.end method

.method public static readTraceFile(Ljava/lang/String;Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$b;)V
    .registers 14

    .prologue
    .line 196
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 290
    :cond_4
    :goto_4
    return-void

    .line 199
    :cond_5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 204
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 205
    const/4 v1, 0x0

    .line 209
    :try_start_17
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_21} :catch_1cc
    .catchall {:try_start_17 .. :try_end_21} :catchall_1b4

    .line 212
    :try_start_21
    const-string v0, "-{5}\\spid\\s\\d+\\sat\\s\\d+-\\d+-\\d+\\s\\d{2}:\\d{2}:\\d{2}\\s-{5}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 213
    const-string v0, "-{5}\\send\\s\\d+\\s-{5}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 214
    const-string v0, "Cmd\\sline:\\s(\\S+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 215
    const-string v0, "\".+\"\\s(daemon\\s){0,1}prio=\\d+\\stid=\\d+\\s.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 216
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v11, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 217
    :cond_42
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    invoke-static {v6, v0}, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper;->a(Ljava/io/BufferedReader;[Ljava/util/regex/Pattern;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a3

    .line 219
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 220
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x4

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-virtual {v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 225
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/regex/Pattern;

    const/4 v5, 0x0

    aput-object v9, v0, v5

    invoke-static {v6, v0}, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper;->a(Ljava/io/BufferedReader;[Ljava/util/regex/Pattern;)[Ljava/lang/Object;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_90} :catch_13c
    .catchall {:try_start_21 .. :try_end_90} :catchall_1c7

    move-result-object v0

    if-nez v0, :cond_a4

    .line 281
    :try_start_93
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_98

    goto/16 :goto_4

    .line 284
    :catch_98
    move-exception v0

    .line 285
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 286
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 229
    :cond_a4
    const/4 v5, 0x1

    :try_start_a5
    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 231
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 232
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    .line 235
    invoke-interface/range {v0 .. v5}, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$b;->a(JJLjava/lang/String;)Z
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_bf} :catch_13c
    .catchall {:try_start_a5 .. :try_end_bf} :catchall_1c7

    move-result v0

    if-nez v0, :cond_d3

    .line 281
    :try_start_c2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_c7

    goto/16 :goto_4

    .line 284
    :catch_c7
    move-exception v0

    .line 285
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 286
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 239
    :cond_d3
    :goto_d3
    const/4 v0, 0x2

    :try_start_d4
    new-array v0, v0, [Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    aput-object v10, v0, v1

    const/4 v1, 0x1

    aput-object v8, v0, v1

    invoke-static {v6, v0}, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper;->a(Ljava/io/BufferedReader;[Ljava/util/regex/Pattern;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 240
    const/4 v1, 0x0

    aget-object v1, v0, v1

    if-ne v1, v10, :cond_178

    .line 242
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    const-string v1, "\".+\""

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 245
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 246
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 247
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 248
    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 250
    const-string v2, "NATIVE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 252
    const-string v2, "tid=\\d+"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 253
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 255
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 256
    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 259
    invoke-static {v6}, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v2

    .line 260
    invoke-static {v6}, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper;->b(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v3

    .line 262
    invoke-interface {p1, v1, v0, v2, v3}, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$b;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_13b} :catch_13c
    .catchall {:try_start_d4 .. :try_end_13b} :catchall_1c7

    goto :goto_d3

    .line 276
    :catch_13c
    move-exception v0

    move-object v1, v6

    .line 279
    :goto_13e
    :try_start_13e
    const-string v2, "trace open fail:%s : %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/legu/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_165
    .catchall {:try_start_13e .. :try_end_165} :catchall_1c9

    .line 281
    if-eqz v1, :cond_4

    .line 283
    :try_start_167
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_16a
    .catch Ljava/io/IOException; {:try_start_167 .. :try_end_16a} :catch_16c

    goto/16 :goto_4

    .line 284
    :catch_16c
    move-exception v0

    .line 285
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 286
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 267
    :cond_178
    const/4 v1, 0x1

    :try_start_179
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 268
    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 269
    invoke-interface {p1, v0, v1}, Lcom/tencent/bugly/legu/crashreport/crash/anr/TraceFileHelper$b;->a(J)Z
    :try_end_18f
    .catch Ljava/lang/Exception; {:try_start_179 .. :try_end_18f} :catch_13c
    .catchall {:try_start_179 .. :try_end_18f} :catchall_1c7

    move-result v0

    if-nez v0, :cond_42

    .line 281
    :try_start_192
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_195
    .catch Ljava/io/IOException; {:try_start_192 .. :try_end_195} :catch_197

    goto/16 :goto_4

    .line 284
    :catch_197
    move-exception v0

    .line 285
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 286
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 281
    :cond_1a3
    :try_start_1a3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_1a6
    .catch Ljava/io/IOException; {:try_start_1a3 .. :try_end_1a6} :catch_1a8

    goto/16 :goto_4

    .line 284
    :catch_1a8
    move-exception v0

    .line 285
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 286
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 281
    :catchall_1b4
    move-exception v0

    move-object v6, v1

    :goto_1b6
    if-eqz v6, :cond_1bb

    .line 283
    :try_start_1b8
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_1bb
    .catch Ljava/io/IOException; {:try_start_1b8 .. :try_end_1bb} :catch_1bc

    .line 287
    :cond_1bb
    :goto_1bb
    throw v0

    .line 284
    :catch_1bc
    move-exception v1

    .line 285
    invoke-static {v1}, Lcom/tencent/bugly/legu/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_1bb

    .line 286
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1bb

    .line 281
    :catchall_1c7
    move-exception v0

    goto :goto_1b6

    :catchall_1c9
    move-exception v0

    move-object v6, v1

    goto :goto_1b6

    .line 276
    :catch_1cc
    move-exception v0

    goto/16 :goto_13e
.end method
