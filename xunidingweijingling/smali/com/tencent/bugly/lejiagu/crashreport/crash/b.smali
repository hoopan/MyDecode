.class public final Lcom/tencent/bugly/lejiagu/crashreport/crash/b;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static a:I


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/tencent/bugly/lejiagu/proguard/m;

.field private d:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

.field private e:Lcom/tencent/bugly/lejiagu/proguard/l;

.field private f:Lcom/tencent/bugly/lejiagu/BuglyStrategy$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->a:I

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/tencent/bugly/lejiagu/proguard/r;Lcom/tencent/bugly/lejiagu/proguard/m;Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;Lcom/tencent/bugly/lejiagu/BuglyStrategy$a;Lcom/tencent/bugly/lejiagu/proguard/l;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sput p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->a:I

    .line 70
    iput-object p2, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->b:Landroid/content/Context;

    .line 71
    iput-object p4, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->c:Lcom/tencent/bugly/lejiagu/proguard/m;

    .line 73
    iput-object p5, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    .line 74
    iput-object p6, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->f:Lcom/tencent/bugly/lejiagu/BuglyStrategy$a;

    .line 75
    iput-object p7, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->e:Lcom/tencent/bugly/lejiagu/proguard/l;

    .line 76
    return-void
.end method

.method private static a(Landroid/database/Cursor;)Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 617
    if-nez p0, :cond_1

    move-object v0, v1

    .line 634
    :cond_0
    :goto_0
    return-object v0

    .line 620
    :cond_1
    :try_start_0
    const-string v0, "_dt"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 621
    if-nez v0, :cond_2

    move-object v0, v1

    .line 622
    goto :goto_0

    .line 623
    :cond_2
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 624
    sget-object v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v4}, Lcom/tencent/bugly/lejiagu/proguard/a;->a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;

    .line 625
    if-eqz v0, :cond_0

    .line 626
    iput-wide v2, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->a:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 629
    :catch_0
    move-exception v0

    .line 630
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 631
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    move-object v0, v1

    .line 634
    goto :goto_0
.end method

.method private a(Ljava/util/List;Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;)Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/lejiagu/crashreport/crash/a;",
            ">;",
            "Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;",
            ")",
            "Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 106
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v1, p2

    .line 173
    :cond_1
    :goto_0
    return-object v1

    .line 109
    :cond_2
    const/4 v1, 0x0

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 113
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;

    .line 114
    iget-boolean v5, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;->e:Z

    if-eqz v5, :cond_3

    .line 115
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 119
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 121
    invoke-direct {p0, v2}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 122
    if-eqz v4, :cond_c

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 123
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move v2, v3

    .line 124
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 125
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;

    .line 126
    if-nez v2, :cond_5

    .line 124
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_2

    .line 130
    :cond_5
    iget-object v5, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    if-eqz v5, :cond_b

    .line 131
    iget-object v0, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 135
    if-eqz v5, :cond_b

    .line 136
    array-length v6, v5

    move v0, v3

    :goto_4
    if-ge v0, v6, :cond_b

    aget-object v7, v5, v0

    .line 139
    iget-object v8, v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 140
    iget v8, v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->t:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->t:I

    .line 141
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    .line 138
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    move-object v0, v1

    .line 149
    :goto_5
    if-nez v0, :cond_a

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->j:Z

    .line 153
    iput v3, p2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->t:I

    .line 154
    const-string v0, ""

    iput-object v0, p2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    move-object v1, p2

    .line 158
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;

    .line 159
    iget-boolean v3, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;->e:Z

    if-nez v3, :cond_8

    iget-boolean v3, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;->d:Z

    if-nez v3, :cond_8

    iget-object v3, v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;->b:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 161
    iget v3, v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->t:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->t:I

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;->b:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    goto :goto_7

    .line 166
    :cond_9
    iget-wide v2, v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->r:J

    iget-wide v4, p2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->r:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->r:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    iget v0, v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->t:I

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p2, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->r:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    move-object v1, v0

    goto/16 :goto_6

    :cond_b
    move-object v0, v1

    goto/16 :goto_3

    :cond_c
    move-object v0, v1

    goto/16 :goto_5
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/bugly/lejiagu/proguard/ah;
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 1157
    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    .line 1158
    :cond_0
    const-string v1, "rqdp{  createZipAttachment sourcePath == null || context == null ,pls check}"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1203
    :cond_1
    :goto_0
    return-object v0

    .line 1162
    :cond_2
    const-string v1, "zip %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v8

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1163
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1164
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v3, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1166
    const/16 v2, 0x1388

    invoke-static {v1, v3, v2}, Lcom/tencent/bugly/lejiagu/proguard/a;->a(Ljava/io/File;Ljava/io/File;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1167
    const-string v1, "zip fail!"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 1171
    :cond_3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1174
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1175
    const/16 v4, 0x3e8

    :try_start_1
    new-array v4, v4, [B

    .line 1177
    :goto_1
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_6

    .line 1178
    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1179
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 1187
    :catch_0
    move-exception v1

    .line 1188
    :goto_2
    :try_start_2
    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1189
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1192
    :cond_4
    if-eqz v2, :cond_5

    .line 1194
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1201
    :cond_5
    :goto_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1202
    const-string v1, "del tmp"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1203
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1181
    :cond_6
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 1182
    const-string v1, "read bytes :%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v5}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1184
    new-instance v1, Lcom/tencent/bugly/lejiagu/proguard/ah;

    const/4 v5, 0x2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6, v4}, Lcom/tencent/bugly/lejiagu/proguard/ah;-><init>(BLjava/lang/String;[B)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1192
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1201
    :cond_7
    :goto_4
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1202
    const-string v0, "del tmp"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1203
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_8
    move-object v0, v1

    goto/16 :goto_0

    .line 1195
    :catch_1
    move-exception v0

    .line 1196
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1197
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1195
    :catch_2
    move-exception v1

    .line 1196
    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1197
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1192
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_5
    if-eqz v2, :cond_9

    .line 1194
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1201
    :cond_9
    :goto_6
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1202
    const-string v1, "del tmp"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1203
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_a
    throw v0

    .line 1195
    :catch_3
    move-exception v1

    .line 1196
    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1197
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 1192
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 1187
    :catch_4
    move-exception v1

    move-object v2, v0

    goto/16 :goto_2
.end method

.method private static a(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;)Lcom/tencent/bugly/lejiagu/proguard/ai;
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 856
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 857
    :cond_0
    const-string v0, "enExp args == null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v5

    .line 1131
    :goto_0
    return-object v0

    .line 860
    :cond_1
    new-instance v4, Lcom/tencent/bugly/lejiagu/proguard/ai;

    invoke-direct {v4}, Lcom/tencent/bugly/lejiagu/proguard/ai;-><init>()V

    .line 861
    iget v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->b:I

    packed-switch v0, :pswitch_data_0

    .line 898
    const-string v0, "crash type error! %d"

    new-array v1, v3, [Ljava/lang/Object;

    iget v6, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 902
    :goto_1
    iget-wide v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->r:J

    iput-wide v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->b:J

    .line 903
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->c:Ljava/lang/String;

    .line 904
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->d:Ljava/lang/String;

    .line 905
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->e:Ljava/lang/String;

    .line 906
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->g:Ljava/lang/String;

    .line 907
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->y:Ljava/util/Map;

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->h:Ljava/util/Map;

    .line 908
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->i:Ljava/lang/String;

    .line 909
    iput-object v5, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->j:Lcom/tencent/bugly/lejiagu/proguard/ag;

    .line 910
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->l:Ljava/lang/String;

    .line 911
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->m:Ljava/lang/String;

    .line 912
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->f:Ljava/lang/String;

    .line 913
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->t:Ljava/lang/String;

    .line 915
    iput-object v5, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->n:Lcom/tencent/bugly/lejiagu/proguard/af;

    .line 916
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 917
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->o:Ljava/util/ArrayList;

    .line 918
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 919
    new-instance v7, Lcom/tencent/bugly/lejiagu/proguard/af;

    invoke-direct {v7}, Lcom/tencent/bugly/lejiagu/proguard/af;-><init>()V

    .line 920
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/lejiagu/crashreport/common/info/PlugInBean;

    iget-object v1, v1, Lcom/tencent/bugly/lejiagu/crashreport/common/info/PlugInBean;->a:Ljava/lang/String;

    iput-object v1, v7, Lcom/tencent/bugly/lejiagu/proguard/af;->a:Ljava/lang/String;

    .line 921
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/lejiagu/crashreport/common/info/PlugInBean;

    iget-object v1, v1, Lcom/tencent/bugly/lejiagu/crashreport/common/info/PlugInBean;->c:Ljava/lang/String;

    iput-object v1, v7, Lcom/tencent/bugly/lejiagu/proguard/af;->c:Ljava/lang/String;

    .line 922
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/PlugInBean;

    iget-object v0, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/PlugInBean;->b:Ljava/lang/String;

    iput-object v0, v7, Lcom/tencent/bugly/lejiagu/proguard/af;->d:Ljava/lang/String;

    .line 923
    invoke-virtual {p2}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/tencent/bugly/lejiagu/proguard/af;->b:Ljava/lang/String;

    .line 924
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 863
    :pswitch_0
    iget-boolean v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_2

    const-string v0, "203"

    :goto_3
    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    const-string v0, "103"

    goto :goto_3

    .line 867
    :pswitch_1
    iget-boolean v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_3

    const-string v0, "200"

    :goto_4
    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const-string v0, "100"

    goto :goto_4

    .line 871
    :pswitch_2
    iget-boolean v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_4

    const-string v0, "201"

    :goto_5
    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    const-string v0, "101"

    goto :goto_5

    .line 877
    :pswitch_3
    iget-boolean v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_5

    const-string v0, "202"

    :goto_6
    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    const-string v0, "102"

    goto :goto_6

    .line 882
    :pswitch_4
    iget-boolean v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_6

    const-string v0, "204"

    :goto_7
    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    const-string v0, "104"

    goto :goto_7

    .line 886
    :pswitch_5
    iget-boolean v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_7

    const-string v0, "206"

    :goto_8
    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    const-string v0, "106"

    goto :goto_8

    .line 892
    :pswitch_6
    iget-boolean v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_8

    const-string v0, "207"

    :goto_9
    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    const-string v0, "107"

    goto :goto_9

    .line 928
    :cond_9
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 929
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->p:Ljava/util/ArrayList;

    .line 930
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 931
    new-instance v7, Lcom/tencent/bugly/lejiagu/proguard/af;

    invoke-direct {v7}, Lcom/tencent/bugly/lejiagu/proguard/af;-><init>()V

    .line 932
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/lejiagu/crashreport/common/info/PlugInBean;

    iget-object v1, v1, Lcom/tencent/bugly/lejiagu/crashreport/common/info/PlugInBean;->a:Ljava/lang/String;

    iput-object v1, v7, Lcom/tencent/bugly/lejiagu/proguard/af;->a:Ljava/lang/String;

    .line 933
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/lejiagu/crashreport/common/info/PlugInBean;

    iget-object v1, v1, Lcom/tencent/bugly/lejiagu/crashreport/common/info/PlugInBean;->c:Ljava/lang/String;

    iput-object v1, v7, Lcom/tencent/bugly/lejiagu/proguard/af;->c:Ljava/lang/String;

    .line 934
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/PlugInBean;

    iget-object v0, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/PlugInBean;->b:Ljava/lang/String;

    iput-object v0, v7, Lcom/tencent/bugly/lejiagu/proguard/af;->d:Ljava/lang/String;

    .line 935
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 940
    :cond_a
    iget-boolean v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_d

    .line 941
    iget v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->t:I

    iput v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->k:I

    .line 942
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 943
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 944
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->q:Ljava/util/ArrayList;

    .line 947
    :cond_b
    :try_start_0
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->q:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/bugly/lejiagu/proguard/ah;

    const/4 v6, 0x1

    const-string v7, "alltimes.txt"

    iget-object v8, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    const-string v9, "utf-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v1, v6, v7, v8}, Lcom/tencent/bugly/lejiagu/proguard/ah;-><init>(BLjava/lang/String;[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    :cond_c
    :goto_b
    const-string v1, "crashcount:%d sz:%d"

    new-array v6, v10, [Ljava/lang/Object;

    iget v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-static {v1, v6}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 959
    :cond_d
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 960
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    .line 961
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->q:Ljava/util/ArrayList;

    .line 963
    :cond_e
    :try_start_1
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->q:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/bugly/lejiagu/proguard/ah;

    const/4 v6, 0x1

    const-string v7, "log.txt"

    iget-object v8, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    const-string v9, "utf-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v1, v6, v7, v8}, Lcom/tencent/bugly/lejiagu/proguard/ah;-><init>(BLjava/lang/String;[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 972
    :cond_f
    :goto_d
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->x:[B

    if-eqz v0, :cond_11

    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->x:[B

    array-length v0, v0

    if-lez v0, :cond_11

    .line 974
    new-instance v0, Lcom/tencent/bugly/lejiagu/proguard/ah;

    const-string v1, "buglylog.zip"

    iget-object v6, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->x:[B

    invoke-direct {v0, v10, v1, v6}, Lcom/tencent/bugly/lejiagu/proguard/ah;-><init>(BLjava/lang/String;[B)V

    .line 977
    const-string v1, "attach user log"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 979
    iget-object v1, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->q:Ljava/util/ArrayList;

    if-nez v1, :cond_10

    .line 980
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->q:Ljava/util/ArrayList;

    .line 981
    :cond_10
    iget-object v1, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 985
    :cond_11
    iget v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->b:I

    if-ne v0, v11, :cond_14

    .line 986
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    .line 987
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->q:Ljava/util/ArrayList;

    .line 989
    :cond_12
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    if-eqz v0, :cond_13

    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    const-string v1, "BUGLY_CR_01"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 993
    :try_start_2
    iget-object v1, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->q:Ljava/util/ArrayList;

    new-instance v6, Lcom/tencent/bugly/lejiagu/proguard/ah;

    const/4 v7, 0x1

    const-string v8, "anrMessage.txt"

    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    const-string v9, "BUGLY_CR_01"

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v9, "utf-8"

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v6, v7, v8, v0}, Lcom/tencent/bugly/lejiagu/proguard/ah;-><init>(BLjava/lang/String;[B)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 996
    const-string v0, "attach anr message"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1001
    :goto_e
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    const-string v1, "BUGLY_CR_01"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    :cond_13
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 1006
    const-string v0, "trace.zip"

    iget-object v1, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/bugly/lejiagu/proguard/ah;

    move-result-object v0

    .line 1008
    if-eqz v0, :cond_14

    .line 1009
    const-string v1, "attach traces"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1010
    iget-object v1, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1015
    :cond_14
    iget v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->b:I

    if-ne v0, v3, :cond_16

    .line 1016
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_15

    .line 1017
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->q:Ljava/util/ArrayList;

    .line 1019
    :cond_15
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 1020
    const-string v0, "tomb.zip"

    iget-object v1, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/bugly/lejiagu/proguard/ah;

    move-result-object v0

    .line 1022
    if-eqz v0, :cond_16

    .line 1023
    const-string v1, "attach tombs"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1024
    iget-object v1, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1029
    :cond_16
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->S:[B

    if-eqz v0, :cond_18

    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->S:[B

    array-length v0, v0

    if-lez v0, :cond_18

    .line 1030
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_17

    .line 1031
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->q:Ljava/util/ArrayList;

    .line 1033
    :cond_17
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->q:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/bugly/lejiagu/proguard/ah;

    const-string v6, "userExtraByteData"

    iget-object v7, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->S:[B

    invoke-direct {v1, v3, v6, v7}, Lcom/tencent/bugly/lejiagu/proguard/ah;-><init>(BLjava/lang/String;[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1035
    const-string v0, "attach extraData"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1038
    :cond_18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    .line 1039
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "A9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v7, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->B:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "A11"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v7, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->C:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "A10"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v7, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->D:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "A23"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "A7"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "A6"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->r()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "A5"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->q()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "A22"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "A2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v7, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->F:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "A1"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v7, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->E:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "A24"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->g:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "A17"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v7, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->G:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "A3"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "A16"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->l()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "A25"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->m()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "A14"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->k()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "A15"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->t()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "A13"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->u()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "A34"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    iget-object v0, p2, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->w:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 1060
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "productIdentify"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->w:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    :cond_19
    :try_start_3
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "A26"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->H:Ljava/lang/String;

    const-string v8, "utf-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1069
    :goto_f
    iget v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->b:I

    if-ne v0, v3, :cond_1a

    .line 1070
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "A27"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->J:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "A28"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->I:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "A29"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v7, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->k:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    :cond_1a
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "A30"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "A18"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v7, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->L:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    iget-object v1, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v6, "A36"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->M:Z

    if-nez v0, :cond_1e

    move v0, v3

    :goto_10
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "F02"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v7, p2, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->p:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "F03"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v7, p2, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->q:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "F04"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "F05"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v7, p2, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->r:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "F06"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->o:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "F08"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->u:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "F09"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->v:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "F10"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v7, p2, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->s:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    iget v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->O:I

    if-ltz v0, :cond_1b

    .line 1100
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "C01"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->O:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    :cond_1b
    iget v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->P:I

    if-ltz v0, :cond_1c

    .line 1103
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    const-string v1, "C02"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->P:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    :cond_1c
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->Q:Ljava/util/Map;

    if-eqz v0, :cond_1f

    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->Q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1f

    .line 1106
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->Q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1107
    iget-object v7, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v1, "C03_"

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 949
    :catch_0
    move-exception v0

    .line 950
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 951
    iput-object v5, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->q:Ljava/util/ArrayList;

    goto/16 :goto_b

    :cond_1d
    move v0, v2

    .line 955
    goto/16 :goto_c

    .line 965
    :catch_1
    move-exception v0

    .line 966
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 967
    iput-object v5, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->q:Ljava/util/ArrayList;

    goto/16 :goto_d

    .line 997
    :catch_2
    move-exception v0

    .line 998
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 999
    iput-object v5, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->q:Ljava/util/ArrayList;

    goto/16 :goto_e

    .line 1066
    :catch_3
    move-exception v0

    .line 1067
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_f

    :cond_1e
    move v0, v2

    .line 1078
    goto/16 :goto_10

    .line 1111
    :cond_1f
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    if-eqz v0, :cond_20

    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_20

    .line 1112
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1113
    iget-object v7, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v1, "C04_"

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 1119
    :cond_20
    iput-object v5, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->s:Ljava/util/Map;

    .line 1120
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    if-eqz v0, :cond_21

    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_21

    .line 1121
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->s:Ljava/util/Map;

    .line 1122
    const-string v0, "setted message size %d"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v5, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->s:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1124
    :cond_21
    const-string v0, "%s rid:%s sess:%s ls:%ds isR:%b isF:%b isM:%b isN:%b mc:%d ,%s ,isUp:%b ,vm:%d"

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    aput-object v5, v1, v2

    iget-object v5, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    aput-object v5, v1, v3

    invoke-virtual {p2}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v10

    iget-wide v5, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->r:J

    iget-wide v7, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->L:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v11

    const/4 v5, 0x4

    iget-boolean v6, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->k:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x5

    iget-boolean v6, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->M:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x6

    iget-boolean v6, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->j:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x7

    iget v6, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->b:I

    if-ne v6, v3, :cond_22

    :goto_13
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    const/16 v2, 0x8

    iget v3, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->t:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-boolean v3, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->d:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget-object v3, v4, Lcom/tencent/bugly/lejiagu/proguard/ai;->r:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v4

    .line 1131
    goto/16 :goto_0

    :cond_22
    move v3, v2

    .line 1124
    goto :goto_13

    .line 861
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/lejiagu/crashreport/crash/a;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/lejiagu/crashreport/crash/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 85
    :cond_0
    const/4 v0, 0x0

    .line 97
    :goto_0
    return-object v0

    .line 87
    :cond_1
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/a;->o()J

    move-result-wide v2

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 90
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;

    .line 92
    iget-boolean v5, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;->d:Z

    if-eqz v5, :cond_2

    iget-wide v5, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;->b:J

    const-wide/32 v7, 0x5265c00

    sub-long v7, v2, v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    .line 94
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 97
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/String;Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1290
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    .line 1291
    if-nez v0, :cond_0

    .line 1327
    :goto_0
    return-void

    .line 1294
    :cond_0
    const-string v3, "#++++++++++Record By Bugly++++++++++#"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1295
    const-string v3, "# You can use Bugly(http:\\\\bugly.qq.com) to get more Crash Detail!"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1296
    const-string v3, "# PKG NAME: %s"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->c:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1297
    const-string v3, "# APP VER: %s"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->i:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1298
    const-string v3, "# LAUNCH TIME: %s"

    new-array v4, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/util/Date;

    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v6

    iget-wide v6, v6, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v5}, Lcom/tencent/bugly/lejiagu/proguard/a;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1300
    const-string v3, "# CRASH TYPE: %s"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-static {v3, v4}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1301
    const-string v3, "# CRASH TIME: %s"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v3, v4}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1302
    const-string v3, "# CRASH PROCESS: %s"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p2, v4, v1

    invoke-static {v3, v4}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1303
    if-eqz p3, :cond_1

    .line 1304
    const-string v3, "# CRASH THREAD: %s"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1306
    :cond_1
    if-eqz p5, :cond_2

    .line 1307
    const-string v3, "# REPORT ID: %s"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p5, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1308
    const-string v3, "# CRASH DEVICE: %s %s"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->f:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->u()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "ROOTED"

    :goto_1
    aput-object v0, v4, v2

    invoke-static {v3, v4}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1310
    const-string v0, "# RUNTIME AVAIL RAM:%d ROM:%d SD:%d"

    new-array v3, v9, [Ljava/lang/Object;

    iget-wide v4, p5, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->B:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    iget-wide v4, p5, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->C:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    iget-wide v4, p5, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->D:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v0, v3}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1312
    const-string v0, "# RUNTIME TOTAL RAM:%d ROM:%d SD:%d"

    new-array v3, v9, [Ljava/lang/Object;

    iget-wide v4, p5, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->E:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    iget-wide v4, p5, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->F:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    iget-wide v4, p5, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->G:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v0, v3}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1314
    iget-object v0, p5, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->J:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    move v0, v1

    :goto_2
    if-nez v0, :cond_6

    .line 1315
    const-string v0, "# EXCEPTION FIRED BY %s %s"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p5, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->J:Ljava/lang/String;

    aput-object v4, v3, v1

    iget-object v4, p5, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->I:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1322
    :cond_2
    :goto_3
    if-eqz p4, :cond_8

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    move v0, v1

    :goto_4
    if-nez v0, :cond_3

    .line 1323
    const-string v0, "# CRASH STACK: "

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1324
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p4, v0}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1326
    :cond_3
    const-string v0, "#++++++++++++++++++++++++++++++++++++++++++#"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1308
    :cond_4
    const-string v0, "UNROOT"

    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 1314
    goto :goto_2

    .line 1317
    :cond_6
    iget v0, p5, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->b:I

    if-ne v0, v9, :cond_2

    .line 1318
    const-string v3, "# EXCEPTION ANR MESSAGE:\n %s"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v0, p5, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    if-nez v0, :cond_7

    const-string v0, "null"

    :goto_5
    aput-object v0, v4, v1

    invoke-static {v3, v4}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p5, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    const-string v6, "BUGLY_CR_01"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_8
    move v0, v2

    .line 1322
    goto :goto_4
.end method

.method public static a(ZLjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 423
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 424
    const-string v0, "up finish update state %b"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 425
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 426
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;

    .line 428
    const-string v2, "pre uid:%s uc:%d re:%b me:%b"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    aput-object v4, v3, v5

    iget v4, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->l:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-boolean v4, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->d:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    iget-boolean v4, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->j:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 431
    iget v2, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->l:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->l:I

    .line 432
    iput-boolean p0, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->d:Z

    .line 433
    const-string v2, "set uid:%s uc:%d re:%b me:%b"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    aput-object v4, v3, v5

    iget v4, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->l:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-boolean v4, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->d:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    iget-boolean v0, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->j:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 436
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;

    .line 437
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->a()Lcom/tencent/bugly/lejiagu/crashreport/crash/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->a(Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;)V

    goto :goto_1

    .line 439
    :cond_1
    const-string v0, "update state size %d"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 441
    :cond_2
    if-nez p0, :cond_3

    .line 442
    const-string v0, "[crash] upload fail."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 444
    :cond_3
    return-void
.end method

.method private static b(Landroid/database/Cursor;)Lcom/tencent/bugly/lejiagu/crashreport/crash/a;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 724
    if-nez p0, :cond_1

    .line 742
    :cond_0
    :goto_0
    return-object v0

    .line 728
    :cond_1
    :try_start_0
    new-instance v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;

    invoke-direct {v1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;-><init>()V

    .line 729
    const-string v4, "_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;->a:J

    .line 730
    const-string v4, "_tm"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;->b:J

    .line 731
    const-string v4, "_s1"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;->c:Ljava/lang/String;

    .line 732
    const-string v4, "_up"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v4, v2

    :goto_1
    iput-boolean v4, v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;->d:Z

    .line 734
    const-string v4, "_me"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v2, :cond_3

    :goto_2
    iput-boolean v2, v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;->e:Z

    .line 736
    const-string v2, "_uc"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;->f:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 737
    goto :goto_0

    :cond_2
    move v4, v3

    .line 732
    goto :goto_1

    :cond_3
    move v2, v3

    .line 734
    goto :goto_2

    .line 738
    :catch_0
    move-exception v1

    .line 739
    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 740
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private b()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/lejiagu/crashreport/crash/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 749
    .line 750
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 752
    const/4 v0, 0x6

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_tm"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_s1"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "_up"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "_me"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "_uc"

    aput-object v1, v2, v0

    .line 755
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/m;->a()Lcom/tencent/bugly/lejiagu/proguard/m;

    move-result-object v0

    const-string v1, "t_cr"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/bugly/lejiagu/proguard/m;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/lejiagu/proguard/l;Z)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .line 758
    if-nez v6, :cond_1

    .line 759
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 792
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v7

    .line 796
    :goto_0
    return-object v0

    .line 761
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 762
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 763
    invoke-static {v6}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->b(Landroid/database/Cursor;)Lcom/tencent/bugly/lejiagu/crashreport/crash/a;

    move-result-object v1

    .line 764
    if-eqz v1, :cond_4

    .line 765
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 787
    :catch_0
    move-exception v0

    move-object v7, v6

    .line 788
    :goto_2
    :try_start_2
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 789
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 791
    :cond_2
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 792
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v8

    .line 796
    goto :goto_0

    .line 769
    :cond_4
    :try_start_3
    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 770
    const-string v3, " or _id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 772
    :catch_1
    move-exception v1

    :try_start_4
    const-string v1, "unknown id!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 791
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 792
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 793
    :cond_5
    throw v0

    .line 778
    :cond_6
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 779
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 780
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 781
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/m;->a()Lcom/tencent/bugly/lejiagu/proguard/m;

    move-result-object v0

    const-string v1, "t_cr"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/proguard/m;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/lejiagu/proguard/l;Z)I

    move-result v0

    .line 784
    const-string v1, "deleted %s illegle data %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "t_cr"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 791
    :cond_7
    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 792
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v0, v8

    .line 793
    goto/16 :goto_0

    .line 791
    :catchall_1
    move-exception v0

    move-object v6, v7

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v6, v7

    goto :goto_3

    .line 787
    :catch_2
    move-exception v0

    goto/16 :goto_2
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/lejiagu/crashreport/crash/a;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 660
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v7

    .line 717
    :goto_0
    return-object v0

    .line 664
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 665
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;

    .line 666
    const-string v2, " or _id"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 668
    :cond_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 669
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 670
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 671
    :cond_3
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 675
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/m;->a()Lcom/tencent/bugly/lejiagu/proguard/m;

    move-result-object v0

    const-string v1, "t_cr"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/bugly/lejiagu/proguard/m;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/lejiagu/proguard/l;Z)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 678
    if-nez v8, :cond_5

    .line 679
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 713
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v7

    .line 714
    goto :goto_0

    .line 682
    :cond_5
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 683
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 684
    invoke-static {v8}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->a(Landroid/database/Cursor;)Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;

    move-result-object v0

    .line 685
    if-eqz v0, :cond_8

    .line 686
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 708
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 709
    :goto_3
    :try_start_2
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 710
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 712
    :cond_6
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 713
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v0, v7

    .line 717
    goto/16 :goto_0

    .line 690
    :cond_8
    :try_start_3
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 691
    const-string v2, " or _id"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 693
    :catch_1
    move-exception v0

    :try_start_4
    const-string v0, "unknown id!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 712
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_9

    .line 713
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 714
    :cond_9
    throw v0

    .line 699
    :cond_a
    :try_start_5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 700
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    .line 701
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 702
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/m;->a()Lcom/tencent/bugly/lejiagu/proguard/m;

    move-result-object v0

    const-string v1, "t_cr"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/proguard/m;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/lejiagu/proguard/l;Z)I

    move-result v0

    .line 705
    const-string v1, "deleted %s illegle data %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "t_cr"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 712
    :cond_b
    if-eqz v8, :cond_c

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_c

    .line 713
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_c
    move-object v0, v6

    .line 714
    goto/16 :goto_0

    .line 712
    :catchall_1
    move-exception v0

    move-object v8, v7

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v8, v1

    goto :goto_4

    .line 708
    :catch_2
    move-exception v0

    move-object v1, v7

    goto/16 :goto_3
.end method

.method private static c(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/lejiagu/crashreport/crash/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 803
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 807
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;

    .line 808
    const-string v3, " or _id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 810
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 811
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 812
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 813
    :cond_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 815
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/m;->a()Lcom/tencent/bugly/lejiagu/proguard/m;

    move-result-object v0

    const-string v1, "t_cr"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/proguard/m;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/lejiagu/proguard/l;Z)I

    move-result v0

    .line 818
    const-string v1, "deleted %s data %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "t_cr"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 819
    :catch_0
    move-exception v0

    .line 820
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 821
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static d(Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;)Landroid/content/ContentValues;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 590
    if-nez p0, :cond_1

    .line 610
    :cond_0
    :goto_0
    return-object v0

    .line 594
    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 595
    iget-wide v4, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->a:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 596
    const-string v4, "_id"

    iget-wide v5, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 598
    :cond_2
    const-string v4, "_tm"

    iget-wide v5, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->r:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 599
    const-string v4, "_s1"

    iget-object v5, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v5, "_up"

    iget-boolean v4, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->d:Z

    if-eqz v4, :cond_3

    move v4, v2

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 601
    const-string v4, "_me"

    iget-boolean v5, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v5, :cond_4

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 602
    const-string v2, "_uc"

    iget v3, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 603
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

    .line 604
    goto :goto_0

    :cond_3
    move v4, v3

    .line 600
    goto :goto_1

    :cond_4
    move v2, v3

    .line 601
    goto :goto_2

    .line 605
    :catch_0
    move-exception v1

    .line 606
    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 607
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static d(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 830
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 833
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 834
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;

    .line 835
    const-string v3, " or _id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 845
    :catch_0
    move-exception v0

    .line 846
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 847
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 837
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 838
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 839
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 840
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 841
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/m;->a()Lcom/tencent/bugly/lejiagu/proguard/m;

    move-result-object v0

    const-string v1, "t_cr"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/proguard/m;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/lejiagu/proguard/l;Z)I

    move-result v0

    .line 844
    const-string v1, "deleted %s data %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "t_cr"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/32 v12, 0x5265c00

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 265
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;

    move-result-object v1

    .line 266
    if-nez v1, :cond_1

    .line 267
    const-string v1, "have not synced remote!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 344
    :cond_0
    :goto_0
    return-object v0

    .line 271
    :cond_1
    iget-boolean v1, v1, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->d:Z

    if-nez v1, :cond_2

    .line 272
    const-string v1, "Crashreport remote closed, please check your APPID correct and Version available, then uninstall and reinstall your app."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 273
    const-string v1, "[init] WARNING! Crashreport closed by server, please check your APPID correct and Version available, then uninstall and reinstall your app."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 277
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 278
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/a;->o()J

    move-result-wide v3

    .line 280
    invoke-direct {p0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->b()Ljava/util/List;

    move-result-object v5

    .line 283
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 286
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 289
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 290
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 291
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;

    .line 292
    iget-wide v8, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;->b:J

    sget-wide v10, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->f:J

    sub-long v10, v3, v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_4

    .line 294
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 295
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 299
    :cond_4
    iget-boolean v8, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;->d:Z

    if-eqz v8, :cond_6

    .line 301
    iget-wide v8, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;->b:J

    sub-long v10, v1, v12

    cmp-long v8, v8, v10

    if-ltz v8, :cond_5

    .line 303
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 305
    :cond_5
    iget-boolean v8, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;->e:Z

    if-nez v8, :cond_3

    .line 307
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 308
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 312
    :cond_6
    iget v8, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;->f:I

    int-to-long v8, v8

    const-wide/16 v10, 0x3

    cmp-long v8, v8, v10

    if-ltz v8, :cond_3

    iget-wide v8, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;->b:J

    sub-long v10, v1, v12

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    .line 315
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 316
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 320
    :cond_7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 321
    invoke-static {v6}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->c(Ljava/util/List;)V

    .line 325
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 326
    invoke-direct {p0, v5}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 327
    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 329
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    iget-object v3, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->i:Ljava/lang/String;

    .line 330
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 331
    :cond_9
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 332
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;

    .line 333
    iget-object v5, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 334
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 335
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 340
    :cond_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 341
    invoke-static {v2}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->d(Ljava/util/List;)V

    :cond_b
    move-object v0, v1

    .line 344
    goto/16 :goto_0
.end method

.method public final a(Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;JZ)V
    .locals 3

    .prologue
    .line 351
    const-string v0, "try to upload right now"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 353
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2, p4}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->a(Ljava/util/List;JZ)V

    .line 355
    iget v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->b:I

    .line 356
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->e:Lcom/tencent/bugly/lejiagu/proguard/l;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->e:Lcom/tencent/bugly/lejiagu/proguard/l;

    .line 359
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;JZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;",
            ">;JZ)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 365
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;

    move-result-object v1

    .line 366
    iget-boolean v1, v1, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->d:Z

    if-nez v1, :cond_1

    .line 367
    const-string v0, "remote report is disable!"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 368
    const-string v0, "[crash] server closed bugly in this app. please check your appid if is correct, and re-install it"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    :try_start_0
    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->b:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v3

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    if-nez v3, :cond_3

    :cond_2
    const-string v1, "enEXPPkg args == null!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 378
    :goto_1
    if-nez v0, :cond_5

    .line 379
    const-string v0, "create eupPkg fail!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 413
    :catch_0
    move-exception v0

    .line 414
    const-string v1, "req cr error %s"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 415
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/u;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 416
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 376
    :cond_3
    :try_start_1
    new-instance v1, Lcom/tencent/bugly/lejiagu/proguard/aj;

    invoke-direct {v1}, Lcom/tencent/bugly/lejiagu/proguard/aj;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/tencent/bugly/lejiagu/proguard/aj;->a:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;

    iget-object v5, v1, Lcom/tencent/bugly/lejiagu/proguard/aj;->a:Ljava/util/ArrayList;

    invoke-static {v2, v0, v3}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->a(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;)Lcom/tencent/bugly/lejiagu/proguard/ai;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1

    .line 382
    :cond_5
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/a;->a(Lcom/tencent/bugly/lejiagu/proguard/j;)[B

    move-result-object v0

    .line 383
    if-nez v0, :cond_6

    .line 384
    const-string v0, "send encode fail!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 388
    :cond_6
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->b:Landroid/content/Context;

    const/16 v2, 0x276

    invoke-static {v1, v2, v0}, Lcom/tencent/bugly/lejiagu/proguard/a;->a(Landroid/content/Context;I[B)Lcom/tencent/bugly/lejiagu/proguard/ak;

    move-result-object v2

    .line 391
    if-nez v2, :cond_7

    .line 392
    const-string v0, "request package is null."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 395
    :cond_7
    new-instance v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/b$1;

    invoke-direct {v4, p0, p1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b$1;-><init>(Lcom/tencent/bugly/lejiagu/crashreport/crash/b;Ljava/util/List;)V

    .line 406
    if-nez p4, :cond_8

    .line 407
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/r;->a()Lcom/tencent/bugly/lejiagu/proguard/r;

    move-result-object v0

    sget v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->a:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/bugly/lejiagu/proguard/r;->a(ILcom/tencent/bugly/lejiagu/proguard/ak;Ljava/lang/String;Lcom/tencent/bugly/lejiagu/proguard/q;)V

    goto/16 :goto_0

    .line 409
    :cond_8
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/r;->a()Lcom/tencent/bugly/lejiagu/proguard/r;

    move-result-object v0

    sget v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->a:I

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-wide v6, p2

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/bugly/lejiagu/proguard/r;->a(ILcom/tencent/bugly/lejiagu/proguard/ak;Ljava/lang/String;Lcom/tencent/bugly/lejiagu/proguard/q;ZJ)V

    .line 411
    const-string v0, "wake up!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public final a(Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;)Z
    .locals 1

    .prologue
    .line 177
    const v0, -0x75bcd15

    invoke-virtual {p0, p1, v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->a(Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;I)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;I)Z
    .locals 9

    .prologue
    const/16 v6, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 186
    iget v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->b:I

    .line 187
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    .line 188
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    .line 189
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 190
    iget-wide v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->r:J

    .line 192
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    .line 193
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    .line 194
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->e:Lcom/tencent/bugly/lejiagu/proguard/l;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->e:Lcom/tencent/bugly/lejiagu/proguard/l;

    invoke-interface {v0}, Lcom/tencent/bugly/lejiagu/proguard/l;->c()Z

    move-result v0

    .line 200
    if-nez v0, :cond_0

    .line 261
    :goto_0
    return v3

    .line 206
    :cond_0
    iget v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 207
    new-instance v0, Lcom/tencent/bugly/lejiagu/proguard/o;

    invoke-direct {v0}, Lcom/tencent/bugly/lejiagu/proguard/o;-><init>()V

    .line 208
    iput v3, v0, Lcom/tencent/bugly/lejiagu/proguard/o;->b:I

    .line 209
    iget-object v1, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/lejiagu/proguard/o;->c:Ljava/lang/String;

    .line 210
    iget-object v1, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/lejiagu/proguard/o;->d:Ljava/lang/String;

    .line 211
    iget-wide v4, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->r:J

    iput-wide v4, v0, Lcom/tencent/bugly/lejiagu/proguard/o;->e:J

    .line 213
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->c:Lcom/tencent/bugly/lejiagu/proguard/m;

    invoke-static {v3}, Lcom/tencent/bugly/lejiagu/proguard/m;->b(I)V

    .line 214
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->c:Lcom/tencent/bugly/lejiagu/proguard/m;

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/lejiagu/proguard/m;->a(Lcom/tencent/bugly/lejiagu/proguard/o;)Z

    .line 215
    const-string v0, "[crash] a crash occur, handling..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 220
    :goto_1
    invoke-direct {p0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->b()Ljava/util/List;

    move-result-object v1

    .line 221
    const/4 v0, 0x0

    .line 222
    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 223
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 224
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 227
    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 228
    invoke-interface {v1, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 230
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/b;->a:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->c:Z

    if-eqz v0, :cond_6

    .line 234
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;

    .line 235
    iget-object v7, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    iget-object v8, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 236
    iget-boolean v7, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;->e:Z

    if-eqz v7, :cond_1

    move v1, v3

    .line 238
    :cond_1
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    move v0, v1

    move v1, v0

    .line 240
    goto :goto_2

    .line 217
    :cond_3
    const-string v0, "[crash] a caught exception occur, handling..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 242
    :cond_4
    if-nez v1, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_6

    .line 245
    :cond_5
    const-string v0, "same crash occur too much do merged!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 246
    invoke-direct {p0, v5, p1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->a(Ljava/util/List;Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;)Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;

    move-result-object v0

    .line 247
    const-wide/16 v6, -0x1

    iput-wide v6, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->a:J

    .line 248
    invoke-virtual {p0, v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->c(Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;)V

    .line 249
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 250
    invoke-static {v4}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->c(Ljava/util/List;)V

    .line 251
    const-string v0, "[crash] save crash success. this device crash many times, won\'t upload crashes immediately"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    move-object v0, v4

    .line 258
    :cond_7
    invoke-virtual {p0, p1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->c(Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;)V

    .line 259
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->c(Ljava/util/List;)V

    .line 260
    const-string v0, "[crash] save crash success"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v3, v2

    .line 261
    goto/16 :goto_0
.end method

.method public final b(Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;)V
    .locals 12

    .prologue
    const/16 v11, 0x64

    const/4 v0, 0x2

    const/16 v10, 0x7530

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 450
    if-nez p1, :cond_1

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->f:Lcom/tencent/bugly/lejiagu/BuglyStrategy$a;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->e:Lcom/tencent/bugly/lejiagu/proguard/l;

    if-eqz v1, :cond_0

    .line 457
    :cond_2
    :try_start_0
    const-string v1, "[crash callback] start user\'s callback:onCrashHandleStart()"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 461
    iget v1, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->b:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v5, v2

    .line 487
    :goto_1
    iget v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->b:I

    .line 489
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    .line 490
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    .line 491
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 492
    iget-wide v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->r:J

    .line 496
    const/4 v0, 0x0

    .line 497
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->e:Lcom/tencent/bugly/lejiagu/proguard/l;

    if-eqz v1, :cond_6

    .line 498
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->e:Lcom/tencent/bugly/lejiagu/proguard/l;

    .line 500
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->e:Lcom/tencent/bugly/lejiagu/proguard/l;

    invoke-interface {v1}, Lcom/tencent/bugly/lejiagu/proguard/l;->b()Ljava/lang/String;

    move-result-object v1

    .line 503
    if-eqz v1, :cond_3

    .line 504
    new-instance v0, Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 505
    const-string v4, "userData"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    :cond_3
    :goto_2
    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 517
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v1, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    .line 518
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 519
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    move v1, v2

    :goto_4
    if-nez v1, :cond_4

    .line 520
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 523
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v11, :cond_5

    .line 525
    const/4 v4, 0x0

    const/16 v7, 0x64

    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 526
    const-string v4, "setted key length is over limit %d substring to %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x64

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-static {v4, v7}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_5
    move-object v4, v1

    .line 531
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    move v1, v2

    :goto_5
    if-nez v1, :cond_9

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v10, :cond_9

    .line 533
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit16 v0, v0, -0x7530

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 537
    const-string v1, "setted %s value length is over limit %d substring"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x7530

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v1, v7}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 543
    :goto_6
    iget-object v1, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const-string v1, "add setted key %s value size:%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v4

    invoke-static {v1, v7}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 577
    :catch_0
    move-exception v0

    .line 578
    const-string v1, "crash handle callback somthing wrong! %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 579
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 580
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 463
    :pswitch_1
    const/4 v0, 0x4

    move v5, v0

    .line 464
    goto/16 :goto_1

    :pswitch_2
    move v5, v3

    .line 467
    goto/16 :goto_1

    :pswitch_3
    move v5, v0

    .line 473
    goto/16 :goto_1

    .line 475
    :pswitch_4
    const/4 v0, 0x3

    move v5, v0

    .line 476
    goto/16 :goto_1

    .line 478
    :pswitch_5
    const/4 v0, 0x5

    move v5, v0

    .line 479
    goto/16 :goto_1

    .line 481
    :pswitch_6
    const/4 v0, 0x6

    move v5, v0

    .line 482
    goto/16 :goto_1

    .line 507
    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->f:Lcom/tencent/bugly/lejiagu/BuglyStrategy$a;

    if-eqz v1, :cond_3

    .line 508
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->f:Lcom/tencent/bugly/lejiagu/BuglyStrategy$a;

    iget-object v1, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    iget-object v4, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    iget-object v6, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v0, v5, v1, v4, v6}, Lcom/tencent/bugly/lejiagu/BuglyStrategy$a;->onCrashHandleStart(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    goto/16 :goto_2

    :cond_7
    move v1, v3

    .line 519
    goto/16 :goto_4

    :cond_8
    move v1, v3

    .line 531
    goto/16 :goto_5

    .line 540
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 548
    :cond_a
    const-string v0, "[crash callback] start user\'s callback:onCrashHandleStart2GetExtraDatas()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 551
    const/4 v0, 0x0

    .line 553
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->e:Lcom/tencent/bugly/lejiagu/proguard/l;

    if-eqz v1, :cond_c

    .line 554
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->e:Lcom/tencent/bugly/lejiagu/proguard/l;

    invoke-interface {v0}, Lcom/tencent/bugly/lejiagu/proguard/l;->a()[B

    move-result-object v0

    .line 563
    :cond_b
    :goto_7
    iput-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->S:[B

    .line 564
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->S:[B

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->S:[B

    array-length v0, v0

    if-le v0, v10, :cond_d

    .line 566
    const-string v0, "extra bytes size %d is over limit %d will drop over part"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->S:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const/16 v5, 0x7530

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 570
    const/16 v0, 0x7530

    new-array v1, v0, [B

    move v0, v2

    .line 571
    :goto_8
    if-ge v0, v10, :cond_d

    .line 572
    iget-object v4, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->S:[B

    aget-byte v4, v4, v0

    aput-byte v4, v1, v0

    .line 571
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 557
    :cond_c
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->f:Lcom/tencent/bugly/lejiagu/BuglyStrategy$a;

    if-eqz v1, :cond_b

    .line 558
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->f:Lcom/tencent/bugly/lejiagu/BuglyStrategy$a;

    iget-object v1, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    iget-object v4, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    iget-object v6, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v0, v5, v1, v4, v6}, Lcom/tencent/bugly/lejiagu/BuglyStrategy$a;->onCrashHandleStart2GetExtraDatas(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_7

    .line 575
    :cond_d
    const-string v0, "add extra bytes %d "

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->S:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 461
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final c(Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 641
    if-nez p1, :cond_1

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    invoke-static {p1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->d(Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;)Landroid/content/ContentValues;

    move-result-object v0

    .line 644
    if-eqz v0, :cond_0

    .line 645
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/m;->a()Lcom/tencent/bugly/lejiagu/proguard/m;

    move-result-object v1

    const-string v2, "t_cr"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/tencent/bugly/lejiagu/proguard/m;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/lejiagu/proguard/l;Z)J

    move-result-wide v0

    .line 646
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 647
    const-string v2, "insert %s success!"

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "t_cr"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 648
    iput-wide v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->a:J

    goto :goto_0
.end method
