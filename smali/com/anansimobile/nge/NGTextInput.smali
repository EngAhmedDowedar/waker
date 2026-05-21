.class public Lcom/anansimobile/nge/NGTextInput;
.super Ljava/lang/Object;
.source "NGTextInput.java"


# static fields
.field public static final MSG_VIEW_APPENDSUBVIEW:I = 0x7

.field public static final MSG_VIEW_FOCESSET:I = 0x8

.field public static final MSG_VIEW_FOCUSV2:I = 0x6

.field public static final MSG_VIEW_NUMBER_ONLY:I = 0x5

.field public static final MSG_VIEW_SETTEXT:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendSubView(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 79
    if-eqz p0, :cond_0

    .line 80
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 81
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x51b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 82
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 83
    sget-object v1, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v1, v0}, Lcom/anansimobile/nge/RootActivity;->sendMessage(Landroid/os/Message;)V

    .line 85
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public static deleleCharAtEnd(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 89
    const-string/jumbo v0, ""

    .line 92
    :goto_0
    return-object v0

    .line 91
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "after":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getCharNum(Ljava/lang/String;)I
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public static handleMessage(Landroid/os/Message;)Z
    .locals 14
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 101
    iget v11, p0, Landroid/os/Message;->what:I

    add-int/lit16 v2, v11, -0x514

    .line 102
    .local v2, "msgType":I
    if-gez v2, :cond_0

    const/16 v11, 0x64

    if-lt v2, v11, :cond_0

    .line 145
    :goto_0
    return v9

    .line 107
    :cond_0
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 115
    :pswitch_1
    sget-object v9, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "ptr"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Lcom/anansimobile/nge/RootActivity;->getViewWithKey(J)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/anansimobile/nge/NGEditText;

    .line 116
    .local v3, "numEditText":Lcom/anansimobile/nge/NGEditText;
    if-eqz v3, :cond_1

    .line 117
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v11, "numberOnly"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 118
    const/4 v9, 0x2

    invoke-virtual {v3, v9}, Lcom/anansimobile/nge/NGEditText;->setInputType(I)V

    :cond_1
    :goto_1
    move v9, v10

    .line 123
    goto :goto_0

    .line 110
    .end local v3    # "numEditText":Lcom/anansimobile/nge/NGEditText;
    :pswitch_2
    sget-object v11, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    iget-object v9, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/view/View;

    invoke-virtual {v11, v9}, Lcom/anansimobile/nge/RootActivity;->appendSubView(Landroid/view/View;)V

    move v9, v10

    .line 111
    goto :goto_0

    .line 120
    .restart local v3    # "numEditText":Lcom/anansimobile/nge/NGEditText;
    :cond_2
    invoke-virtual {v3, v10}, Lcom/anansimobile/nge/NGEditText;->setInputType(I)V

    goto :goto_1

    .line 126
    .end local v3    # "numEditText":Lcom/anansimobile/nge/NGEditText;
    :pswitch_3
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v11, "ptr"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 127
    .local v6, "ptr":J
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v11, "focus"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 128
    .local v0, "focus":Z
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v11, "num"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 129
    .local v4, "numOnly":Z
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v11, "secure"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 130
    .local v5, "secureMode":Z
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v11, "text"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 131
    .local v8, "text":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v11, "textView"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 132
    .local v1, "isMultiple":Z
    invoke-static {}, Lcom/anansimobile/nge/NGTextInputConn;->getInstance()Lcom/anansimobile/nge/NGTextInputConn;

    move-result-object v9

    invoke-virtual {v9, v8, v4, v5, v1}, Lcom/anansimobile/nge/NGTextInputConn;->onFocusV2(Ljava/lang/String;ZZZ)V

    move v9, v10

    .line 133
    goto/16 :goto_0

    .line 138
    .end local v0    # "focus":Z
    .end local v1    # "isMultiple":Z
    .end local v4    # "numOnly":Z
    .end local v5    # "secureMode":Z
    .end local v6    # "ptr":J
    .end local v8    # "text":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v11, "ptr"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 139
    .restart local v6    # "ptr":J
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v11, "text"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 140
    .restart local v8    # "text":Ljava/lang/String;
    invoke-static {}, Lcom/anansimobile/nge/NGTextInputConn;->getInstance()Lcom/anansimobile/nge/NGTextInputConn;

    move-result-object v9

    invoke-virtual {v9, v6, v7, v8}, Lcom/anansimobile/nge/NGTextInputConn;->setTextFromNative(JLjava/lang/String;)V

    move v9, v10

    .line 141
    goto/16 :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static setFocus(JZZZ)V
    .locals 2
    .param p0, "ptr"    # J
    .param p2, "focus"    # Z
    .param p3, "numOnly"    # Z
    .param p4, "secureMode"    # Z

    .prologue
    .line 62
    if-eqz p2, :cond_0

    .line 63
    invoke-static {}, Lcom/anansimobile/nge/NGTextInputConn;->getInstance()Lcom/anansimobile/nge/NGTextInputConn;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/anansimobile/nge/NGTextInputConn;->appendResponder(J)V

    .line 67
    :goto_0
    invoke-static {}, Lcom/anansimobile/nge/NGTextInputConn;->getInstance()Lcom/anansimobile/nge/NGTextInputConn;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/anansimobile/nge/NGTextInputConn;->onFocus(ZZ)V

    .line 68
    return-void

    .line 65
    :cond_0
    invoke-static {}, Lcom/anansimobile/nge/NGTextInputConn;->getInstance()Lcom/anansimobile/nge/NGTextInputConn;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/anansimobile/nge/NGTextInputConn;->removeResponder(J)V

    goto :goto_0
.end method

.method public static setFocusV2(JZZZLjava/lang/String;Z)V
    .locals 4
    .param p0, "ptr"    # J
    .param p2, "focus"    # Z
    .param p3, "numOnly"    # Z
    .param p4, "secureMode"    # Z
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "isMultiple"    # Z

    .prologue
    .line 45
    if-eqz p2, :cond_0

    .line 46
    invoke-static {}, Lcom/anansimobile/nge/NGTextInputConn;->getInstance()Lcom/anansimobile/nge/NGTextInputConn;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/anansimobile/nge/NGTextInputConn;->appendResponder(J)V

    .line 50
    :goto_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 51
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x51c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 52
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "ptr"

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 53
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "focus"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "num"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 55
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "secure"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 56
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "text"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "textView"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 58
    sget-object v1, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v1, v0}, Lcom/anansimobile/nge/RootActivity;->sendMessage(Landroid/os/Message;)V

    .line 59
    return-void

    .line 48
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    invoke-static {}, Lcom/anansimobile/nge/NGTextInputConn;->getInstance()Lcom/anansimobile/nge/NGTextInputConn;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/anansimobile/nge/NGTextInputConn;->removeResponder(J)V

    goto :goto_0
.end method

.method public static setTextFieldNumberOnly(JZ)V
    .locals 4
    .param p0, "ptr"    # J
    .param p2, "numberOnly"    # Z

    .prologue
    .line 71
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 72
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x519

    iput v1, v0, Landroid/os/Message;->what:I

    .line 73
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "ptr"

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 74
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "numberOnly"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    return-void
.end method

.method public static setTextFromNative(JLjava/lang/String;)V
    .locals 4
    .param p0, "ptr"    # J
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 37
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 38
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x51d

    iput v1, v0, Landroid/os/Message;->what:I

    .line 39
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "ptr"

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 40
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "text"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget-object v1, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v1, v0}, Lcom/anansimobile/nge/RootActivity;->sendMessage(Landroid/os/Message;)V

    .line 42
    return-void
.end method
