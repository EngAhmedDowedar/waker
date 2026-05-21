.class Lcom/anansimobile/nge/NGMsgHandler$1;
.super Ljava/lang/Object;
.source "RootActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anansimobile/nge/NGMsgHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anansimobile/nge/NGMsgHandler;

.field final synthetic val$msgPermission:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/anansimobile/nge/NGMsgHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/anansimobile/nge/NGMsgHandler;

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/anansimobile/nge/NGMsgHandler$1;->this$0:Lcom/anansimobile/nge/NGMsgHandler;

    iput-object p2, p0, Lcom/anansimobile/nge/NGMsgHandler$1;->val$msgPermission:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x1

    .line 1128
    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getDeviceSDKVersion()I

    move-result v0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 1129
    sget-object v0, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/anansimobile/nge/NGMsgHandler$1;->val$msgPermission:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1, v4}, Lcom/anansimobile/nge/RootActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 1132
    :cond_0
    return-void
.end method
