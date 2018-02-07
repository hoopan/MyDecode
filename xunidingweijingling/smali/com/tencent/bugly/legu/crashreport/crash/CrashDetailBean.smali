.class public Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Ljava/lang/String;

.field public B:J

.field public C:J

.field public D:J

.field public E:J

.field public F:J

.field public G:J

.field public H:Ljava/lang/String;

.field public I:Ljava/lang/String;

.field public J:Ljava/lang/String;

.field public K:Ljava/lang/String;

.field public L:J

.field public M:Z

.field public N:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public O:I

.field public P:I

.field public Q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public R:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public S:[B

.field private T:Ljava/lang/String;

.field public a:J

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/legu/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/legu/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation
.end field

.field public j:Z

.field public k:Z

.field public l:I

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:J

.field public s:Ljava/lang/String;

.field public t:I

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:[B

.field public y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 193
    new-instance v0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean$1;

    invoke-direct {v0}, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean$1;-><init>()V

    sput-object v0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide v2, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->a:J

    .line 20
    iput v4, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->b:I

    .line 21
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    .line 22
    iput-boolean v4, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->d:Z

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    .line 27
    iput-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    .line 29
    iput-boolean v4, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->j:Z

    .line 30
    iput-boolean v4, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->k:Z

    .line 31
    iput v4, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->l:I

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 37
    iput-wide v2, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->r:J

    .line 38
    iput-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    .line 39
    iput v4, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->t:I

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->x:[B

    .line 44
    iput-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->y:Ljava/util/Map;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    .line 49
    iput-wide v2, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->B:J

    .line 50
    iput-wide v2, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->C:J

    .line 51
    iput-wide v2, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->D:J

    .line 52
    iput-wide v2, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->E:J

    .line 53
    iput-wide v2, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->F:J

    .line 54
    iput-wide v2, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->G:J

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->H:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->T:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->I:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->J:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    .line 63
    iput-wide v2, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->L:J

    .line 64
    iput-boolean v4, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->M:Z

    .line 65
    iput-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    .line 68
    iput v5, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->O:I

    .line 69
    iput v5, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->P:I

    .line 70
    iput-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->Q:Ljava/util/Map;

    .line 71
    iput-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    .line 73
    iput-object v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->S:[B

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x1

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide v4, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->a:J

    .line 20
    iput v2, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->b:I

    .line 21
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    .line 22
    iput-boolean v2, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->d:Z

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    .line 26
    iput-object v3, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    .line 27
    iput-object v3, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    .line 29
    iput-boolean v2, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->j:Z

    .line 30
    iput-boolean v2, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->k:Z

    .line 31
    iput v2, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->l:I

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 37
    iput-wide v4, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->r:J

    .line 38
    iput-object v3, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    .line 39
    iput v2, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->t:I

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    .line 42
    iput-object v3, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    .line 43
    iput-object v3, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->x:[B

    .line 44
    iput-object v3, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->y:Ljava/util/Map;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    .line 49
    iput-wide v4, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->B:J

    .line 50
    iput-wide v4, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->C:J

    .line 51
    iput-wide v4, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->D:J

    .line 52
    iput-wide v4, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->E:J

    .line 53
    iput-wide v4, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->F:J

    .line 54
    iput-wide v4, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->G:J

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->H:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->T:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->I:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->J:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    .line 63
    iput-wide v4, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->L:J

    .line 64
    iput-boolean v2, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->M:Z

    .line 65
    iput-object v3, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    .line 68
    iput v6, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->O:I

    .line 69
    iput v6, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->P:I

    .line 70
    iput-object v3, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->Q:Ljava/util/Map;

    .line 71
    iput-object v3, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    .line 73
    iput-object v3, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->S:[B

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->b:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->d:Z

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->j:Z

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->k:Z

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->l:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->r:J

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->t:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    .line 100
    invoke-static {p1}, Lcom/tencent/bugly/legu/proguard/a;->b(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->y:Ljava/util/Map;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->B:J

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->C:J

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->D:J

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->E:J

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->F:J

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->G:J

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->H:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->T:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->I:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->J:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->L:J

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->M:Z

    .line 116
    invoke-static {p1}, Lcom/tencent/bugly/legu/proguard/a;->b(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    .line 118
    invoke-static {p1}, Lcom/tencent/bugly/legu/proguard/a;->a(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    .line 119
    invoke-static {p1}, Lcom/tencent/bugly/legu/proguard/a;->a(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->O:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->P:I

    .line 124
    invoke-static {p1}, Lcom/tencent/bugly/legu/proguard/a;->b(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->Q:Ljava/util/Map;

    .line 125
    invoke-static {p1}, Lcom/tencent/bugly/legu/proguard/a;->b(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->S:[B

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->x:[B

    .line 131
    return-void

    :cond_0
    move v0, v2

    .line 82
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 86
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 87
    goto/16 :goto_2

    :cond_3
    move v1, v2

    .line 115
    goto :goto_3
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 15
    check-cast p1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->r:J

    iget-wide v2, p1, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->r:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-gtz v2, :cond_1

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 140
    iget v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-boolean v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->d:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 143
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-boolean v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 147
    iget-boolean v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->k:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 148
    iget v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-wide v3, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->r:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 155
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->t:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->y:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/tencent/bugly/legu/proguard/a;->b(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 161
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-wide v3, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->B:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 164
    iget-wide v3, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->C:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 165
    iget-wide v3, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->D:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 166
    iget-wide v3, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->E:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 167
    iget-wide v3, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->F:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 168
    iget-wide v3, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->G:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 169
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->H:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->T:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->I:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->J:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget-wide v3, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->L:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 175
    iget-boolean v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->M:Z

    if-eqz v0, :cond_3

    :goto_3
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 176
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/tencent/bugly/legu/proguard/a;->b(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 178
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/tencent/bugly/legu/proguard/a;->a(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 179
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/tencent/bugly/legu/proguard/a;->a(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 182
    iget v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->O:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->P:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->Q:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/tencent/bugly/legu/proguard/a;->b(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 185
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/tencent/bugly/legu/proguard/a;->b(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 187
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->S:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 190
    iget-object v0, p0, Lcom/tencent/bugly/legu/crashreport/crash/CrashDetailBean;->x:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 191
    return-void

    :cond_0
    move v0, v2

    .line 142
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 146
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 147
    goto/16 :goto_2

    :cond_3
    move v1, v2

    .line 175
    goto :goto_3
.end method
