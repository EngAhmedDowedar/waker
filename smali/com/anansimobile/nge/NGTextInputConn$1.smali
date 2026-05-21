.class Lcom/anansimobile/nge/NGTextInputConn$1;
.super Ljava/lang/Object;
.source "NGTextInput.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anansimobile/nge/NGTextInputConn;-><init>(Landroid/view/View;ZLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anansimobile/nge/NGTextInputConn;


# direct methods
.method constructor <init>(Lcom/anansimobile/nge/NGTextInputConn;)V
    .locals 0
    .param p1, "this$0"    # Lcom/anansimobile/nge/NGTextInputConn;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/anansimobile/nge/NGTextInputConn$1;->this$0:Lcom/anansimobile/nge/NGTextInputConn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 291
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 274
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 280
    iget-object v2, p0, Lcom/anansimobile/nge/NGTextInputConn$1;->this$0:Lcom/anansimobile/nge/NGTextInputConn;

    invoke-static {v2}, Lcom/anansimobile/nge/NGTextInputConn;->access$000(Lcom/anansimobile/nge/NGTextInputConn;)Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    move-result-object v0

    .line 281
    .local v0, "ri":Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;
    if-eqz v0, :cond_0

    .line 282
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "toNative":Ljava/lang/String;
    iget-object v2, p0, Lcom/anansimobile/nge/NGTextInputConn$1;->this$0:Lcom/anansimobile/nge/NGTextInputConn;

    invoke-virtual {v0}, Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;->getPtr()J

    move-result-wide v4

    invoke-static {v2, v4, v5, v1}, Lcom/anansimobile/nge/NGTextInputConn;->access$100(Lcom/anansimobile/nge/NGTextInputConn;JLjava/lang/String;)V

    .line 285
    .end local v1    # "toNative":Ljava/lang/String;
    :cond_0
    return-void
.end method
