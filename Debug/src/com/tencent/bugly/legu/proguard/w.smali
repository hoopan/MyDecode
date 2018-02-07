.class public final Lcom/tencent/bugly/legu/proguard/w;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Z

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const-string v0, "CrashReportInfo"

    sput-object v0, Lcom/tencent/bugly/legu/proguard/w;->c:Ljava/lang/String;

    .line 9
    const-string v0, "CrashReport"

    sput-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/bugly/legu/proguard/w;->b:Z

    return-void
.end method

.method private static varargs a(ILjava/lang/String;[Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 29
    sget-boolean v2, Lcom/tencent/bugly/legu/proguard/w;->b:Z

    if-nez v2, :cond_7

    .line 54
    :goto_6
    return v0

    .line 32
    :cond_7
    if-nez p1, :cond_16

    const-string p1, "null"

    .line 34
    :cond_b
    :goto_b
    packed-switch p0, :pswitch_data_3e

    :pswitch_e
    goto :goto_6

    .line 36
    :pswitch_f
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 37
    goto :goto_6

    .line 32
    :cond_16
    if-eqz p2, :cond_b

    array-length v2, p2

    if-eqz v2, :cond_b

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    .line 39
    :pswitch_22
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 41
    goto :goto_6

    .line 43
    :pswitch_29
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 44
    goto :goto_6

    .line 46
    :pswitch_30
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 48
    goto :goto_6

    .line 50
    :pswitch_37
    sget-object v0, Lcom/tencent/bugly/legu/proguard/w;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 52
    goto :goto_6

    .line 34
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_f
        :pswitch_29
        :pswitch_30
        :pswitch_37
        :pswitch_e
        :pswitch_22
    .end packed-switch
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/legu/proguard/w;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/Throwable;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 82
    const/4 v1, 0x2

    sget-boolean v2, Lcom/tencent/bugly/legu/proguard/w;->b:Z

    if-nez v2, :cond_7

    :goto_6
    return v0

    :cond_7
    invoke-static {p0}, Lcom/tencent/bugly/legu/proguard/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/tencent/bugly/legu/proguard/w;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_6
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 70
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/legu/proguard/w;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/Throwable;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 90
    const/4 v1, 0x3

    sget-boolean v2, Lcom/tencent/bugly/legu/proguard/w;->b:Z

    if-nez v2, :cond_7

    :goto_6
    return v0

    :cond_7
    invoke-static {p0}, Lcom/tencent/bugly/legu/proguard/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/tencent/bugly/legu/proguard/w;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_6
.end method

.method public static varargs c(Ljava/lang/String;[Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 74
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/legu/proguard/w;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 78
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/legu/proguard/w;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 86
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/legu/proguard/w;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
