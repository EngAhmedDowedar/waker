.class Lcom/anansimobile/nge/NGTextInputConn$3;
.super Landroid/os/ResultReceiver;
.source "NGTextInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anansimobile/nge/NGTextInputConn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anansimobile/nge/NGTextInputConn;


# direct methods
.method constructor <init>(Lcom/anansimobile/nge/NGTextInputConn;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/anansimobile/nge/NGTextInputConn;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 673
    iput-object p1, p0, Lcom/anansimobile/nge/NGTextInputConn$3;->this$0:Lcom/anansimobile/nge/NGTextInputConn;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 677
    packed-switch p1, :pswitch_data_0

    .line 692
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 693
    return-void

    .line 679
    :pswitch_0
    iget-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn$3;->this$0:Lcom/anansimobile/nge/NGTextInputConn;

    invoke-static {v0, v2}, Lcom/anansimobile/nge/NGTextInputConn;->access$402(Lcom/anansimobile/nge/NGTextInputConn;Z)Z

    .line 680
    iget-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn$3;->this$0:Lcom/anansimobile/nge/NGTextInputConn;

    invoke-virtual {v0}, Lcom/anansimobile/nge/NGTextInputConn;->__OnKeyboardShow()V

    goto :goto_0

    .line 683
    :pswitch_1
    iget-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn$3;->this$0:Lcom/anansimobile/nge/NGTextInputConn;

    invoke-static {v0, v1}, Lcom/anansimobile/nge/NGTextInputConn;->access$402(Lcom/anansimobile/nge/NGTextInputConn;Z)Z

    goto :goto_0

    .line 686
    :pswitch_2
    iget-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn$3;->this$0:Lcom/anansimobile/nge/NGTextInputConn;

    invoke-static {v0, v2}, Lcom/anansimobile/nge/NGTextInputConn;->access$402(Lcom/anansimobile/nge/NGTextInputConn;Z)Z

    goto :goto_0

    .line 689
    :pswitch_3
    iget-object v0, p0, Lcom/anansimobile/nge/NGTextInputConn$3;->this$0:Lcom/anansimobile/nge/NGTextInputConn;

    invoke-static {v0, v1}, Lcom/anansimobile/nge/NGTextInputConn;->access$402(Lcom/anansimobile/nge/NGTextInputConn;Z)Z

    goto :goto_0

    .line 677
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
