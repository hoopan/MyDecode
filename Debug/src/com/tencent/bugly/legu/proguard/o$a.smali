.class final Lcom/tencent/bugly/legu/proguard/o$a;
.super Ljava/lang/Thread;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/legu/proguard/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/tencent/bugly/legu/proguard/n;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/ContentValues;

.field private e:Z

.field private f:[Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:[Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:[Ljava/lang/String;

.field private o:I

.field private p:Ljava/lang/String;

.field private q:[B

.field private synthetic r:Lcom/tencent/bugly/legu/proguard/o;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/legu/proguard/o;ILcom/tencent/bugly/legu/proguard/n;)V
    .registers 4

    .prologue
    .line 725
    iput-object p1, p0, Lcom/tencent/bugly/legu/proguard/o$a;->r:Lcom/tencent/bugly/legu/proguard/o;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 726
    iput p2, p0, Lcom/tencent/bugly/legu/proguard/o$a;->a:I

    .line 727
    iput-object p3, p0, Lcom/tencent/bugly/legu/proguard/o$a;->b:Lcom/tencent/bugly/legu/proguard/n;

    .line 728
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;[B)V
    .registers 4

    .prologue
    .line 756
    iput p1, p0, Lcom/tencent/bugly/legu/proguard/o$a;->o:I

    .line 757
    iput-object p2, p0, Lcom/tencent/bugly/legu/proguard/o$a;->p:Ljava/lang/String;

    .line 758
    iput-object p3, p0, Lcom/tencent/bugly/legu/proguard/o$a;->q:[B

    .line 759
    return-void
.end method

.method public final a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 738
    iput-boolean p1, p0, Lcom/tencent/bugly/legu/proguard/o$a;->e:Z

    .line 739
    iput-object p2, p0, Lcom/tencent/bugly/legu/proguard/o$a;->c:Ljava/lang/String;

    .line 740
    iput-object p3, p0, Lcom/tencent/bugly/legu/proguard/o$a;->f:[Ljava/lang/String;

    .line 741
    iput-object p4, p0, Lcom/tencent/bugly/legu/proguard/o$a;->g:Ljava/lang/String;

    .line 742
    iput-object p5, p0, Lcom/tencent/bugly/legu/proguard/o$a;->h:[Ljava/lang/String;

    .line 743
    iput-object p6, p0, Lcom/tencent/bugly/legu/proguard/o$a;->i:Ljava/lang/String;

    .line 744
    iput-object p7, p0, Lcom/tencent/bugly/legu/proguard/o$a;->j:Ljava/lang/String;

    .line 745
    iput-object p8, p0, Lcom/tencent/bugly/legu/proguard/o$a;->k:Ljava/lang/String;

    .line 746
    iput-object p9, p0, Lcom/tencent/bugly/legu/proguard/o$a;->l:Ljava/lang/String;

    .line 747
    return-void
.end method

.method public final run()V
    .registers 12

    .prologue
    .line 772
    iget v0, p0, Lcom/tencent/bugly/legu/proguard/o$a;->a:I

    packed-switch v0, :pswitch_data_5e

    .line 793
    :goto_5
    return-void

    .line 774
    :pswitch_6
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/o$a;->r:Lcom/tencent/bugly/legu/proguard/o;

    iget-object v1, p0, Lcom/tencent/bugly/legu/proguard/o$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/bugly/legu/proguard/o$a;->d:Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/tencent/bugly/legu/proguard/o$a;->b:Lcom/tencent/bugly/legu/proguard/n;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/bugly/legu/proguard/o;->a(Lcom/tencent/bugly/legu/proguard/o;Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/legu/proguard/n;)J

    goto :goto_5

    .line 777
    :pswitch_12
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/o$a;->r:Lcom/tencent/bugly/legu/proguard/o;

    iget-object v1, p0, Lcom/tencent/bugly/legu/proguard/o$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/bugly/legu/proguard/o$a;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/bugly/legu/proguard/o$a;->n:[Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/bugly/legu/proguard/o$a;->b:Lcom/tencent/bugly/legu/proguard/n;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/bugly/legu/proguard/o;->a(Lcom/tencent/bugly/legu/proguard/o;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/legu/proguard/n;)I

    goto :goto_5

    .line 780
    :pswitch_20
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/o$a;->r:Lcom/tencent/bugly/legu/proguard/o;

    iget-boolean v1, p0, Lcom/tencent/bugly/legu/proguard/o$a;->e:Z

    iget-object v2, p0, Lcom/tencent/bugly/legu/proguard/o$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/bugly/legu/proguard/o$a;->f:[Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/bugly/legu/proguard/o$a;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/bugly/legu/proguard/o$a;->h:[Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/bugly/legu/proguard/o$a;->i:Ljava/lang/String;

    iget-object v7, p0, Lcom/tencent/bugly/legu/proguard/o$a;->j:Ljava/lang/String;

    iget-object v8, p0, Lcom/tencent/bugly/legu/proguard/o$a;->k:Ljava/lang/String;

    iget-object v9, p0, Lcom/tencent/bugly/legu/proguard/o$a;->l:Ljava/lang/String;

    iget-object v10, p0, Lcom/tencent/bugly/legu/proguard/o$a;->b:Lcom/tencent/bugly/legu/proguard/n;

    invoke-static/range {v0 .. v10}, Lcom/tencent/bugly/legu/proguard/o;->a(Lcom/tencent/bugly/legu/proguard/o;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/legu/proguard/n;)Landroid/database/Cursor;

    goto :goto_5

    .line 784
    :pswitch_3a
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/o$a;->r:Lcom/tencent/bugly/legu/proguard/o;

    iget v1, p0, Lcom/tencent/bugly/legu/proguard/o$a;->o:I

    iget-object v2, p0, Lcom/tencent/bugly/legu/proguard/o$a;->p:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/bugly/legu/proguard/o$a;->q:[B

    iget-object v4, p0, Lcom/tencent/bugly/legu/proguard/o$a;->b:Lcom/tencent/bugly/legu/proguard/n;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/bugly/legu/proguard/o;->a(Lcom/tencent/bugly/legu/proguard/o;ILjava/lang/String;[BLcom/tencent/bugly/legu/proguard/n;)Z

    goto :goto_5

    .line 787
    :pswitch_48
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/o$a;->r:Lcom/tencent/bugly/legu/proguard/o;

    iget v1, p0, Lcom/tencent/bugly/legu/proguard/o$a;->o:I

    iget-object v2, p0, Lcom/tencent/bugly/legu/proguard/o$a;->b:Lcom/tencent/bugly/legu/proguard/n;

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/legu/proguard/o;->a(Lcom/tencent/bugly/legu/proguard/o;ILcom/tencent/bugly/legu/proguard/n;)Ljava/util/Map;

    goto :goto_5

    .line 790
    :pswitch_52
    iget-object v0, p0, Lcom/tencent/bugly/legu/proguard/o$a;->r:Lcom/tencent/bugly/legu/proguard/o;

    iget v0, p0, Lcom/tencent/bugly/legu/proguard/o$a;->o:I

    iget-object v1, p0, Lcom/tencent/bugly/legu/proguard/o$a;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/bugly/legu/proguard/o$a;->b:Lcom/tencent/bugly/legu/proguard/n;

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/legu/proguard/o;->a(ILjava/lang/String;Lcom/tencent/bugly/legu/proguard/n;)Z

    goto :goto_5

    .line 772
    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_12
        :pswitch_20
        :pswitch_3a
        :pswitch_48
        :pswitch_52
    .end packed-switch
.end method
