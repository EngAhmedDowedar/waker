.class final Lcom/anansimobile/extra/Notification/FCMMessagingService$1;
.super Landroid/os/Handler;
.source "FCMMessagingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anansimobile/extra/Notification/FCMMessagingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 29
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 32
    :pswitch_0
    invoke-static {}, Lcom/anansimobile/extra/Notification/FCMMessagingService;->access$000()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "notifiMsg"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/anansimobile/extra/Notification/FCMMessagingService;->access$000()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "OK"

    new-instance v3, Lcom/anansimobile/extra/Notification/FCMMessagingService$1$1;

    invoke-direct {v3, p0}, Lcom/anansimobile/extra/Notification/FCMMessagingService$1$1;-><init>(Lcom/anansimobile/extra/Notification/FCMMessagingService$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
