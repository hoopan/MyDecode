.class public abstract Lcom/tencent/bugly/lejiagu/a;
.super Ljava/lang/Object;
.source "BUGLY"


# instance fields
.field public id:I

.field public moduleName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;ZLcom/tencent/bugly/lejiagu/BuglyStrategy;)V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public onDbCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public onDbDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public onDbUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public onServerStrategyChanged(Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;)V
    .locals 0

    .prologue
    .line 31
    return-void
.end method
