.class Lcom/anansimobile/nge/NGMsgHandler$2;
.super Ljava/lang/Object;
.source "RootActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/anansimobile/nge/NGMsgHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/anansimobile/nge/NGMsgHandler;

    .prologue
    .line 1169
    iput-object p1, p0, Lcom/anansimobile/nge/NGMsgHandler$2;->this$0:Lcom/anansimobile/nge/NGMsgHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1173
    sget-object v0, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    if-eqz v0, :cond_0

    .line 1174
    sget-object v0, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v0}, Lcom/anansimobile/nge/RootActivity;->onExitGameCancel()V

    .line 1176
    :cond_0
    return-void
.end method
