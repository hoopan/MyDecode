.class public Lcom/tencent/bugly/legu/crashreport/BuglyLog;
.super Ljava/lang/Object;
.source "BUGLY"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-string p0, ""

    .line 21
    :cond_0
    if-nez p1, :cond_1

    const-string p1, "null"

    .line 22
    :cond_1
    sget-boolean v0, Lcom/tencent/bugly/legu/b;->b:Z

    if-eqz v0, :cond_2

    .line 23
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_2
    const-string v0, "D"

    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/legu/proguard/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 47
    if-nez p0, :cond_0

    const-string p0, ""

    .line 48
    :cond_0
    if-nez p1, :cond_1

    const-string p1, "null"

    .line 49
    :cond_1
    sget-boolean v0, Lcom/tencent/bugly/legu/b;->b:Z

    if-eqz v0, :cond_2

    .line 50
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_2
    const-string v0, "E"

    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/legu/proguard/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 56
    if-nez p0, :cond_0

    const-string p0, ""

    .line 57
    :cond_0
    if-nez p1, :cond_1

    const-string p1, "null"

    .line 58
    :cond_1
    sget-boolean v0, Lcom/tencent/bugly/legu/b;->b:Z

    if-eqz v0, :cond_2

    .line 59
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    :cond_2
    const-string v0, "E"

    invoke-static {v0, p0, p2}, Lcom/tencent/bugly/legu/proguard/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    if-nez p0, :cond_0

    const-string p0, ""

    .line 30
    :cond_0
    if-nez p1, :cond_1

    const-string p1, "null"

    .line 31
    :cond_1
    sget-boolean v0, Lcom/tencent/bugly/legu/b;->b:Z

    if-eqz v0, :cond_2

    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_2
    const-string v0, "I"

    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/legu/proguard/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static setCache(I)V
    .locals 0

    .prologue
    .line 65
    invoke-static {p0}, Lcom/tencent/bugly/legu/proguard/x;->a(I)V

    .line 66
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 11
    if-nez p0, :cond_0

    const-string p0, ""

    .line 12
    :cond_0
    if-nez p1, :cond_1

    const-string p1, "null"

    .line 13
    :cond_1
    sget-boolean v0, Lcom/tencent/bugly/legu/b;->b:Z

    if-eqz v0, :cond_2

    .line 14
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_2
    const-string v0, "V"

    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/legu/proguard/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    if-nez p0, :cond_0

    const-string p0, ""

    .line 39
    :cond_0
    if-nez p1, :cond_1

    const-string p1, "null"

    .line 40
    :cond_1
    sget-boolean v0, Lcom/tencent/bugly/legu/b;->b:Z

    if-eqz v0, :cond_2

    .line 41
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_2
    const-string v0, "W"

    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/legu/proguard/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method
