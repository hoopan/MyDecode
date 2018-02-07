.class final Lcom/tencent/bugly/legu/crashreport/biz/b$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/legu/crashreport/biz/b;->a(Landroid/content/Context;Lcom/tencent/bugly/legu/BuglyStrategy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/tencent/bugly/legu/BuglyStrategy;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/legu/BuglyStrategy;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/tencent/bugly/legu/crashreport/biz/b$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/bugly/legu/crashreport/biz/b$1;->b:Lcom/tencent/bugly/legu/BuglyStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/biz/b$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/bugly/legu/crashreport/biz/b$1;->b:Lcom/tencent/bugly/legu/BuglyStrategy;

    invoke-static {v0, v1}, Lcom/tencent/bugly/legu/crashreport/biz/b;->b(Landroid/content/Context;Lcom/tencent/bugly/legu/BuglyStrategy;)V

    .line 200
    return-void
.end method
