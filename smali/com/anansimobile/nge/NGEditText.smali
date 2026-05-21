.class Lcom/anansimobile/nge/NGEditText;
.super Landroid/widget/EditText;
.source "NGTextInput.java"


# instance fields
.field private mIsTextView:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anansimobile/nge/NGEditText;->mIsTextView:Z

    .line 177
    return-void
.end method


# virtual methods
.method public NGSetMinmize()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 162
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/anansimobile/nge/NGEditText;->setWidth(I)V

    .line 163
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/anansimobile/nge/NGEditText;->setHeight(I)V

    .line 164
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/anansimobile/nge/NGEditText;->setPadding(IIII)V

    .line 165
    invoke-virtual {p0, v1}, Lcom/anansimobile/nge/NGEditText;->setBackgroundResource(I)V

    .line 166
    const v0, -0x3b04c000    # -2010.0f

    invoke-virtual {p0, v0}, Lcom/anansimobile/nge/NGEditText;->setX(F)V

    .line 167
    const/high16 v0, -0x3c060000    # -500.0f

    invoke-virtual {p0, v0}, Lcom/anansimobile/nge/NGEditText;->setY(F)V

    .line 168
    invoke-virtual {p0}, Lcom/anansimobile/nge/NGEditText;->setSingleLine()V

    .line 169
    return-void
.end method

.method public SetIsTextView(Z)V
    .locals 1
    .param p1, "isMultiple"    # Z

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/anansimobile/nge/NGEditText;->mIsTextView:Z

    .line 156
    if-eqz p1, :cond_0

    .line 157
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/anansimobile/nge/NGEditText;->setSingleLine(Z)V

    .line 159
    :cond_0
    return-void

    .line 157
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTextView()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/anansimobile/nge/NGEditText;->mIsTextView:Z

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 180
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 182
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 183
    invoke-static {}, Lcom/anansimobile/nge/NGTextInputConn;->getInstance()Lcom/anansimobile/nge/NGTextInputConn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anansimobile/nge/NGTextInputConn;->__UserPressBackEvent()V

    .line 187
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p2}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
