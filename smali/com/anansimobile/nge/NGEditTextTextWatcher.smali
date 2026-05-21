.class Lcom/anansimobile/nge/NGEditTextTextWatcher;
.super Ljava/lang/Object;
.source "NGTextInput.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mEdit:Lcom/anansimobile/nge/NGEditText;

.field private mPtr:J


# direct methods
.method constructor <init>(JLcom/anansimobile/nge/NGEditText;)V
    .locals 3
    .param p1, "ptr"    # J
    .param p3, "edit"    # Lcom/anansimobile/nge/NGEditText;

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anansimobile/nge/NGEditTextTextWatcher;->mPtr:J

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anansimobile/nge/NGEditTextTextWatcher;->mEdit:Lcom/anansimobile/nge/NGEditText;

    .line 205
    iput-wide p1, p0, Lcom/anansimobile/nge/NGEditTextTextWatcher;->mPtr:J

    .line 206
    iput-object p3, p0, Lcom/anansimobile/nge/NGEditTextTextWatcher;->mEdit:Lcom/anansimobile/nge/NGEditText;

    .line 207
    return-void
.end method

.method private native beforeTextChanged(JLjava/lang/String;III)V
.end method

.method private native getMaxCharacters(JZ)I
.end method

.method private native onTextChanged(JLjava/lang/String;III)V
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v5, 0x0

    .line 211
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-wide v2, p0, Lcom/anansimobile/nge/NGEditTextTextWatcher;->mPtr:J

    iget-object v4, p0, Lcom/anansimobile/nge/NGEditTextTextWatcher;->mEdit:Lcom/anansimobile/nge/NGEditText;

    invoke-virtual {v4}, Lcom/anansimobile/nge/NGEditText;->isTextView()Z

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/anansimobile/nge/NGEditTextTextWatcher;->getMaxCharacters(JZ)I

    move-result v0

    .line 216
    .local v0, "limit":I
    if-ltz v0, :cond_0

    .line 220
    iget-object v2, p0, Lcom/anansimobile/nge/NGEditTextTextWatcher;->mEdit:Lcom/anansimobile/nge/NGEditText;

    invoke-virtual {v2}, Lcom/anansimobile/nge/NGEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 221
    .local v1, "text":Landroid/text/Editable;
    const-string/jumbo v2, "afterTextChanged, s: \"%s\", edit text: \"%s\""

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 223
    iget-object v2, p0, Lcom/anansimobile/nge/NGEditTextTextWatcher;->mEdit:Lcom/anansimobile/nge/NGEditText;

    invoke-interface {v1, v5, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anansimobile/nge/NGEditText;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v2, p0, Lcom/anansimobile/nge/NGEditTextTextWatcher;->mEdit:Lcom/anansimobile/nge/NGEditText;

    invoke-virtual {v2, v0}, Lcom/anansimobile/nge/NGEditText;->setSelection(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 230
    iget-wide v2, p0, Lcom/anansimobile/nge/NGEditTextTextWatcher;->mPtr:J

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/anansimobile/nge/NGEditTextTextWatcher;->beforeTextChanged(JLjava/lang/String;III)V

    .line 231
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 235
    iget-wide v2, p0, Lcom/anansimobile/nge/NGEditTextTextWatcher;->mPtr:J

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/anansimobile/nge/NGEditTextTextWatcher;->onTextChanged(JLjava/lang/String;III)V

    .line 236
    return-void
.end method
