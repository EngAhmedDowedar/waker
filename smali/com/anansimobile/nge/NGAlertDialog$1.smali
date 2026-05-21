.class final Lcom/anansimobile/nge/NGAlertDialog$1;
.super Ljava/lang/Object;
.source "NGAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anansimobile/nge/NGAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 20
    const/4 v0, -0x1

    .line 21
    .local v0, "btnIdx":I
    packed-switch p2, :pswitch_data_0

    .line 33
    :goto_0
    invoke-static {v0}, Lcom/anansimobile/nge/NGAlertDialog;->access$000(I)V

    .line 34
    return-void

    .line 23
    :pswitch_0
    const/4 v0, 0x0

    .line 24
    goto :goto_0

    .line 26
    :pswitch_1
    const/4 v0, 0x1

    .line 27
    goto :goto_0

    .line 29
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 21
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
