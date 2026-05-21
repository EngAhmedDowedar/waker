.class Lcom/anansimobile/extra/Notification/FCMMessagingService$1$1;
.super Ljava/lang/Object;
.source "FCMMessagingService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anansimobile/extra/Notification/FCMMessagingService$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anansimobile/extra/Notification/FCMMessagingService$1;


# direct methods
.method constructor <init>(Lcom/anansimobile/extra/Notification/FCMMessagingService$1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/anansimobile/extra/Notification/FCMMessagingService$1;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/anansimobile/extra/Notification/FCMMessagingService$1$1;->this$0:Lcom/anansimobile/extra/Notification/FCMMessagingService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 38
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 39
    return-void
.end method
