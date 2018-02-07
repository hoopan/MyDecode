.class public final Lcom/tencent/bugly/lejiagu/proguard/v;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/lejiagu/proguard/v$a;
    }
.end annotation


# static fields
.field public static a:Z

.field private static b:Ljava/text/SimpleDateFormat;

.field private static c:I

.field private static d:Ljava/lang/StringBuilder;

.field private static e:Ljava/lang/StringBuilder;

.field private static f:Lcom/tencent/bugly/lejiagu/proguard/v$a;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Landroid/content/Context;

.field private static j:Ljava/lang/String;

.field private static k:Z

.field private static l:I

.field private static m:Ljava/lang/Object;

.field private static n:Ljava/lang/Object;

.field private static o:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 28
    sput-object v1, Lcom/tencent/bugly/lejiagu/proguard/v;->b:Ljava/text/SimpleDateFormat;

    .line 29
    sput-boolean v0, Lcom/tencent/bugly/lejiagu/proguard/v;->a:Z

    .line 30
    const/16 v0, 0x1400

    sput v0, Lcom/tencent/bugly/lejiagu/proguard/v;->c:I

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/bugly/lejiagu/proguard/v;->m:Ljava/lang/Object;

    .line 43
    sput-object v1, Lcom/tencent/bugly/lejiagu/proguard/v;->n:Ljava/lang/Object;

    .line 44
    sput-object v1, Lcom/tencent/bugly/lejiagu/proguard/v;->o:Ljava/lang/reflect/Method;

    .line 51
    :try_start_15
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/bugly/lejiagu/proguard/v;->b:Ljava/text/SimpleDateFormat;

    .line 52
    const-string v0, "com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 53
    const-string v1, "appendLogToNative"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/lejiagu/proguard/v;->o:Ljava/lang/reflect/Method;
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_3e} :catch_3f

    .line 59
    :goto_3e
    return-void

    .line 56
    :catch_3f
    move-exception v0

    goto :goto_3e
.end method

.method static synthetic a(Lcom/tencent/bugly/lejiagu/proguard/v$a;)Lcom/tencent/bugly/lejiagu/proguard/v$a;
    .registers 1

    .prologue
    .line 18
    sput-object p0, Lcom/tencent/bugly/lejiagu/proguard/v;->f:Lcom/tencent/bugly/lejiagu/proguard/v$a;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/v;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public static a(I)V
    .registers 3

    .prologue
    const/16 v0, 0x2800

    .line 105
    sget-object v1, Lcom/tencent/bugly/lejiagu/proguard/v;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_5
    sput p0, Lcom/tencent/bugly/lejiagu/proguard/v;->c:I

    .line 107
    if-gez p0, :cond_e

    .line 108
    const/4 v0, 0x0

    sput v0, Lcom/tencent/bugly/lejiagu/proguard/v;->c:I

    .line 112
    :cond_c
    :goto_c
    monitor-exit v1

    return-void

    .line 109
    :cond_e
    if-le p0, v0, :cond_c

    .line 110
    const/16 v0, 0x2800

    sput v0, Lcom/tencent/bugly/lejiagu/proguard/v;->c:I
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    goto :goto_c

    .line 112
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 83
    const-class v1, Lcom/tencent/bugly/lejiagu/proguard/v;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/proguard/v;->k:Z

    if-nez v0, :cond_d

    if-eqz p0, :cond_d

    sget-boolean v0, Lcom/tencent/bugly/lejiagu/proguard/v;->a:Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_71

    if-nez v0, :cond_f

    .line 102
    :cond_d
    :goto_d
    monitor-exit v1

    return-void

    .line 87
    :cond_f
    :try_start_f
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/tencent/bugly/lejiagu/proguard/v;->e:Ljava/lang/StringBuilder;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/tencent/bugly/lejiagu/proguard/v;->d:Ljava/lang/StringBuilder;

    .line 89
    sput-object p0, Lcom/tencent/bugly/lejiagu/proguard/v;->i:Landroid/content/Context;

    .line 90
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    .line 91
    iget-object v2, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->d:Ljava/lang/String;

    sput-object v2, Lcom/tencent/bugly/lejiagu/proguard/v;->g:Ljava/lang/String;

    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "lejiagu"

    sput-object v0, Lcom/tencent/bugly/lejiagu/proguard/v;->h:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/bugly/lejiagu/proguard/v;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/buglylog_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/tencent/bugly/lejiagu/proguard/v;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/tencent/bugly/lejiagu/proguard/v;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".txt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/lejiagu/proguard/v;->j:Ljava/lang/String;

    .line 97
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/tencent/bugly/lejiagu/proguard/v;->l:I
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_6d} :catch_74
    .catchall {:try_start_f .. :try_end_6d} :catchall_71

    .line 101
    :goto_6d
    const/4 v0, 0x1

    :try_start_6e
    sput-boolean v0, Lcom/tencent/bugly/lejiagu/proguard/v;->k:Z
    :try_end_70
    .catchall {:try_start_6e .. :try_end_70} :catchall_71

    goto :goto_d

    .line 83
    :catchall_71
    move-exception v0

    monitor-exit v1

    throw v0

    .line 98
    :catch_74
    move-exception v0

    goto :goto_6d
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 133
    const-class v1, Lcom/tencent/bugly/lejiagu/proguard/v;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/proguard/v;->k:Z

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/tencent/bugly/lejiagu/proguard/v;->a:Z
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_a7

    if-nez v0, :cond_d

    .line 181
    :cond_b
    :goto_b
    monitor-exit v1

    return-void

    .line 138
    :cond_d
    :try_start_d
    invoke-static {p0, p1, p2}, Lcom/tencent/bugly/lejiagu/proguard/v;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 140
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    .line 141
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/v;->d:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x7800

    if-le v0, v3, :cond_32

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit16 v0, v0, -0x7800

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_32
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sget-object v3, Lcom/tencent/bugly/lejiagu/proguard/v;->b:Ljava/text/SimpleDateFormat;

    if-eqz v3, :cond_aa

    sget-object v3, Lcom/tencent/bugly/lejiagu/proguard/v;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :goto_41
    sget-object v3, Lcom/tencent/bugly/lejiagu/proguard/v;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcom/tencent/bugly/lejiagu/proguard/v;->l:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u0001\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/v;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    sget-object v2, Lcom/tencent/bugly/lejiagu/proguard/v;->m:Ljava/lang/Object;

    monitor-enter v2
    :try_end_89
    .catchall {:try_start_d .. :try_end_89} :catchall_a7

    .line 144
    :try_start_89
    sget-object v3, Lcom/tencent/bugly/lejiagu/proguard/v;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_89 .. :try_end_8f} :catchall_af

    .line 146
    :try_start_8f
    sget-object v2, Lcom/tencent/bugly/lejiagu/proguard/v;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sget v3, Lcom/tencent/bugly/lejiagu/proguard/v;->c:I

    if-le v2, v3, :cond_b

    .line 150
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/t;->a()Lcom/tencent/bugly/lejiagu/proguard/t;

    move-result-object v2

    new-instance v3, Lcom/tencent/bugly/lejiagu/proguard/v$1;

    invoke-direct {v3, v0}, Lcom/tencent/bugly/lejiagu/proguard/v$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/t;->a(Ljava/lang/Runnable;)Z
    :try_end_a5
    .catchall {:try_start_8f .. :try_end_a5} :catchall_a7

    goto/16 :goto_b

    .line 133
    :catchall_a7
    move-exception v0

    monitor-exit v1

    throw v0

    .line 141
    :cond_aa
    :try_start_aa
    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_41

    .line 145
    :catchall_af
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_b2
    .catchall {:try_start_aa .. :try_end_b2} :catchall_a7
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 122
    if-nez p2, :cond_3

    .line 129
    :goto_2
    return-void

    .line 125
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 126
    if-nez v0, :cond_b

    const-string v0, ""

    .line 127
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p2, :cond_2a

    const-string v0, ""

    :goto_1e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {p0, p1, v0}, Lcom/tencent/bugly/lejiagu/proguard/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 127
    :cond_2a
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e
.end method

.method public static a(Z)[B
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 203
    sget-boolean v1, Lcom/tencent/bugly/lejiagu/proguard/v;->a:Z

    if-nez v1, :cond_6

    .line 223
    :goto_5
    return-object v0

    .line 206
    :cond_6
    sget-object v2, Lcom/tencent/bugly/lejiagu/proguard/v;->m:Ljava/lang/Object;

    monitor-enter v2

    .line 211
    if-eqz p0, :cond_2c

    :try_start_b
    sget-object v1, Lcom/tencent/bugly/lejiagu/proguard/v;->f:Lcom/tencent/bugly/lejiagu/proguard/v$a;

    if-eqz v1, :cond_2c

    sget-object v1, Lcom/tencent/bugly/lejiagu/proguard/v;->f:Lcom/tencent/bugly/lejiagu/proguard/v$a;

    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/proguard/v$a;->d(Lcom/tencent/bugly/lejiagu/proguard/v$a;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 212
    sget-object v1, Lcom/tencent/bugly/lejiagu/proguard/v;->f:Lcom/tencent/bugly/lejiagu/proguard/v$a;

    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/proguard/v$a;->a(Lcom/tencent/bugly/lejiagu/proguard/v$a;)Ljava/io/File;

    move-result-object v1

    .line 216
    :goto_1d
    sget-object v3, Lcom/tencent/bugly/lejiagu/proguard/v;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_22} :catch_3a
    .catchall {:try_start_b .. :try_end_22} :catchall_29

    move-result v3

    if-nez v3, :cond_2e

    if-nez v1, :cond_2e

    .line 217
    :try_start_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_29

    goto :goto_5

    .line 225
    :catchall_29
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2c
    move-object v1, v0

    .line 214
    goto :goto_1d

    .line 219
    :cond_2e
    :try_start_2e
    sget-object v3, Lcom/tencent/bugly/lejiagu/proguard/v;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/bugly/lejiagu/proguard/a;->a(Ljava/io/File;Ljava/lang/String;)[B
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_37} :catch_3a
    .catchall {:try_start_2e .. :try_end_37} :catchall_29

    move-result-object v0

    .line 220
    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_29

    goto :goto_5

    .line 223
    :catch_3a
    move-exception v1

    monitor-exit v2

    goto :goto_5
.end method

.method static synthetic b()Ljava/lang/StringBuilder;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/v;->e:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 62
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/v;->o:Ljava/lang/reflect/Method;

    if-nez v0, :cond_8

    move v0, v1

    .line 77
    :goto_7
    return v0

    .line 65
    :cond_8
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/v;->n:Ljava/lang/Object;

    if-nez v0, :cond_1a

    .line 66
    const-string v0, "com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler"

    const-string v2, "getInstance"

    invoke-static {v0, v2, v3, v3, v3}, Lcom/tencent/bugly/lejiagu/proguard/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    sput-object v0, Lcom/tencent/bugly/lejiagu/proguard/v;->n:Ljava/lang/Object;

    if-nez v0, :cond_1a

    move v0, v1

    .line 70
    goto :goto_7

    .line 74
    :cond_1a
    :try_start_1a
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/v;->o:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/tencent/bugly/lejiagu/proguard/v;->n:Ljava/lang/Object;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_33} :catch_35

    move-result v0

    goto :goto_7

    .line 75
    :catch_35
    move-exception v0

    .line 76
    sget-object v2, Lcom/tencent/bugly/lejiagu/proguard/u;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 77
    goto :goto_7
.end method

.method static synthetic c()I
    .registers 1

    .prologue
    .line 18
    sget v0, Lcom/tencent/bugly/lejiagu/proguard/v;->c:I

    return v0
.end method

.method static synthetic d()Lcom/tencent/bugly/lejiagu/proguard/v$a;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/v;->f:Lcom/tencent/bugly/lejiagu/proguard/v$a;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/v;->j:Ljava/lang/String;

    return-object v0
.end method
