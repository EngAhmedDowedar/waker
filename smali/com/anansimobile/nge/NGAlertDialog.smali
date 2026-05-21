.class public Lcom/anansimobile/nge/NGAlertDialog;
.super Ljava/lang/Object;
.source "NGAlertDialog.java"


# static fields
.field public static final AlertClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public static final UI_MSG_TEXT_ALERT:I = 0x0

.field public static final UI_MSG_WAITING_ALERT:I = 0x1

.field private static curProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/anansimobile/nge/NGAlertDialog;->curProgressDialog:Landroid/app/ProgressDialog;

    .line 16
    new-instance v0, Lcom/anansimobile/nge/NGAlertDialog$1;

    invoke-direct {v0}, Lcom/anansimobile/nge/NGAlertDialog$1;-><init>()V

    sput-object v0, Lcom/anansimobile/nge/NGAlertDialog;->AlertClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 9
    invoke-static {p0}, Lcom/anansimobile/nge/NGAlertDialog;->onAlertDialogButtonClick(I)V

    return-void
.end method

.method public static dismiss()V
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/anansimobile/nge/NGAlertDialog;->curProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/anansimobile/nge/NGAlertDialog;->curProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/anansimobile/nge/NGAlertDialog;->curProgressDialog:Landroid/app/ProgressDialog;

    .line 76
    :cond_0
    return-void
.end method

.method public static handleMessage(Landroid/os/Message;)Z
    .locals 9
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 79
    iget v4, p0, Landroid/os/Message;->what:I

    add-int/lit16 v4, v4, -0x4b0

    packed-switch v4, :pswitch_data_0

    move v2, v3

    .line 133
    :goto_0
    return v2

    .line 82
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 83
    .local v0, "ab_text":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "alert_title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 84
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "alert_content"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 85
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 88
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "alert_buttons"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "btns":[Ljava/lang/String;
    array-length v4, v1

    if-lt v4, v2, :cond_0

    .line 90
    aget-object v3, v1, v3

    sget-object v4, Lcom/anansimobile/nge/NGAlertDialog;->AlertClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 92
    :cond_0
    array-length v3, v1

    if-lt v3, v7, :cond_1

    .line 93
    aget-object v3, v1, v2

    sget-object v4, Lcom/anansimobile/nge/NGAlertDialog;->AlertClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    :cond_1
    array-length v3, v1

    if-lt v3, v8, :cond_2

    .line 96
    aget-object v3, v1, v7

    sget-object v4, Lcom/anansimobile/nge/NGAlertDialog;->AlertClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 100
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 106
    .end local v0    # "ab_text":Landroid/app/AlertDialog$Builder;
    .end local v1    # "btns":[Ljava/lang/String;
    :pswitch_1
    invoke-static {}, Lcom/anansimobile/nge/NGAlertDialog;->dismiss()V

    .line 108
    new-instance v4, Landroid/app/ProgressDialog;

    sget-object v5, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-direct {v4, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/anansimobile/nge/NGAlertDialog;->curProgressDialog:Landroid/app/ProgressDialog;

    .line 109
    sget-object v4, Lcom/anansimobile/nge/NGAlertDialog;->curProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "alert_title"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    sget-object v4, Lcom/anansimobile/nge/NGAlertDialog;->curProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "alert_content"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 111
    sget-object v4, Lcom/anansimobile/nge/NGAlertDialog;->curProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 112
    sget-object v4, Lcom/anansimobile/nge/NGAlertDialog;->curProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 115
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "alert_buttons"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 116
    .restart local v1    # "btns":[Ljava/lang/String;
    array-length v4, v1

    if-lt v4, v2, :cond_3

    .line 117
    sget-object v4, Lcom/anansimobile/nge/NGAlertDialog;->curProgressDialog:Landroid/app/ProgressDialog;

    const/4 v5, -0x1

    aget-object v3, v1, v3

    sget-object v6, Lcom/anansimobile/nge/NGAlertDialog;->AlertClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v3, v6}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 119
    :cond_3
    array-length v3, v1

    if-lt v3, v7, :cond_4

    .line 120
    sget-object v3, Lcom/anansimobile/nge/NGAlertDialog;->curProgressDialog:Landroid/app/ProgressDialog;

    const/4 v4, -0x3

    aget-object v5, v1, v2

    sget-object v6, Lcom/anansimobile/nge/NGAlertDialog;->AlertClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 122
    :cond_4
    array-length v3, v1

    if-lt v3, v8, :cond_5

    .line 123
    sget-object v3, Lcom/anansimobile/nge/NGAlertDialog;->curProgressDialog:Landroid/app/ProgressDialog;

    const/4 v4, -0x2

    aget-object v5, v1, v7

    sget-object v6, Lcom/anansimobile/nge/NGAlertDialog;->AlertClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 127
    :cond_5
    sget-object v3, Lcom/anansimobile/nge/NGAlertDialog;->curProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static native onAlertDialogButtonClick(I)V
.end method

.method public static show(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "buttons"    # [Ljava/lang/String;

    .prologue
    .line 42
    array-length v3, p2

    new-array v0, v3, [Ljava/lang/String;

    .line 43
    .local v0, "btns":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_0

    .line 44
    new-instance v3, Ljava/lang/String;

    aget-object v4, p2, v1

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v1

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_0
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 48
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x4b0

    iput v3, v2, Landroid/os/Message;->what:I

    .line 49
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "alert_title"

    invoke-virtual {v3, v4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "alert_content"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "alert_buttons"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 52
    sget-object v3, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v3, v2}, Lcom/anansimobile/nge/RootActivity;->sendMessage(Landroid/os/Message;)V

    .line 54
    return-void
.end method

.method public static showWaiting(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "buttons"    # [Ljava/lang/String;

    .prologue
    .line 58
    array-length v3, p2

    new-array v0, v3, [Ljava/lang/String;

    .line 59
    .local v0, "btns":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_0

    .line 60
    new-instance v3, Ljava/lang/String;

    aget-object v4, p2, v1

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v1

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :cond_0
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 64
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x4b1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 65
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "alert_title"

    invoke-virtual {v3, v4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "alert_content"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "alert_buttons"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 68
    sget-object v3, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v3, v2}, Lcom/anansimobile/nge/RootActivity;->sendMessage(Landroid/os/Message;)V

    .line 69
    return-void
.end method
