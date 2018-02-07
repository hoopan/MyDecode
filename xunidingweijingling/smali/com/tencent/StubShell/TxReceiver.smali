.class public Lcom/tencent/StubShell/TxReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static TX_RECIEVER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.tencent.StubShell.TxReceiver"

    sput-object v0, Lcom/tencent/StubShell/TxReceiver;->TX_RECIEVER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p2}, Lcom/tencent/StubShell/TxAppEntry;->a(Landroid/content/Intent;)V

    return-void
.end method
