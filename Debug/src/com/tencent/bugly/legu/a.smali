.class public abstract Lcom/tencent/bugly/legu/a;
.super Ljava/lang/Object;
.source "BUGLY"


# instance fields
.field public id:I

.field public moduleName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getTables()[Ljava/lang/String;
.end method

.method public abstract init(Landroid/content/Context;ZLcom/tencent/bugly/legu/BuglyStrategy;)V
.end method

.method public onDbCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .prologue
    .line 23
    return-void
.end method

.method public onDbDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 10

    .prologue
    .line 44
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/bugly/legu/a;->getTables()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 55
    :cond_6
    :goto_6
    return-void

    .line 47
    :cond_7
    invoke-virtual {p0}, Lcom/tencent/bugly/legu/a;->getTables()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v2, :cond_26

    aget-object v3, v1, v0

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DROP TABLE IF EXISTS "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 50
    :cond_26
    invoke-virtual {p0, p1}, Lcom/tencent/bugly/legu/a;->onDbCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_29} :catch_2a

    goto :goto_6

    .line 51
    :catch_2a
    move-exception v0

    .line 52
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 53
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6
.end method

.method public onDbUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 10

    .prologue
    .line 28
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/bugly/legu/a;->getTables()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 39
    :cond_6
    :goto_6
    return-void

    .line 31
    :cond_7
    invoke-virtual {p0}, Lcom/tencent/bugly/legu/a;->getTables()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v2, :cond_26

    aget-object v3, v1, v0

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DROP TABLE IF EXISTS "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 34
    :cond_26
    invoke-virtual {p0, p1}, Lcom/tencent/bugly/legu/a;->onDbCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_29} :catch_2a

    goto :goto_6

    .line 35
    :catch_2a
    move-exception v0

    .line 36
    invoke-static {v0}, Lcom/tencent/bugly/legu/proguard/w;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6
.end method

.method public onServerStrategyChanged(Lcom/tencent/bugly/legu/crashreport/common/strategy/StrategyBean;)V
    .registers 2

    .prologue
    .line 60
    return-void
.end method
