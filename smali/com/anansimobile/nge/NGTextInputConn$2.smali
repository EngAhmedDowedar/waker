.class Lcom/anansimobile/nge/NGTextInputConn$2;
.super Ljava/lang/Object;
.source "NGTextInput.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 296
    iput-object p1, p0, Lcom/anansimobile/nge/NGTextInputConn$2;->this$0:Lcom/anansimobile/nge/NGTextInputConn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x0

    .line 298
    iget-object v1, p0, Lcom/anansimobile/nge/NGTextInputConn$2;->this$0:Lcom/anansimobile/nge/NGTextInputConn;

    invoke-static {v1}, Lcom/anansimobile/nge/NGTextInputConn;->access$000(Lcom/anansimobile/nge/NGTextInputConn;)Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    move-result-object v0

    .line 299
    .local v0, "ri":Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;
    if-eqz v0, :cond_0

    .line 300
    iget-object v1, p0, Lcom/anansimobile/nge/NGTextInputConn$2;->this$0:Lcom/anansimobile/nge/NGTextInputConn;

    invoke-virtual {v0}, Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;->getPtr()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/anansimobile/nge/NGTextInputConn;->access$200(Lcom/anansimobile/nge/NGTextInputConn;JI)V

    .line 301
    iget-object v1, p0, Lcom/anansimobile/nge/NGTextInputConn$2;->this$0:Lcom/anansimobile/nge/NGTextInputConn;

    invoke-static {v1}, Lcom/anansimobile/nge/NGTextInputConn;->access$300(Lcom/anansimobile/nge/NGTextInputConn;)Lcom/anansimobile/nge/NGEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anansimobile/nge/NGEditText;->isTextView()Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/anansimobile/nge/NGTextInputConn$2;->this$0:Lcom/anansimobile/nge/NGTextInputConn;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/anansimobile/nge/NGTextInputConn;->access$002(Lcom/anansimobile/nge/NGTextInputConn;Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;)Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    .line 303
    iget-object v1, p0, Lcom/anansimobile/nge/NGTextInputConn$2;->this$0:Lcom/anansimobile/nge/NGTextInputConn;

    invoke-static {v1, v5}, Lcom/anansimobile/nge/NGTextInputConn;->access$402(Lcom/anansimobile/nge/NGTextInputConn;Z)Z

    .line 306
    iget-object v1, p0, Lcom/anansimobile/nge/NGTextInputConn$2;->this$0:Lcom/anansimobile/nge/NGTextInputConn;

    invoke-static {v1, v0}, Lcom/anansimobile/nge/NGTextInputConn;->access$002(Lcom/anansimobile/nge/NGTextInputConn;Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;)Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    .line 309
    :cond_0
    return v5
.end method
