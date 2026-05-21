.class public Lcom/anansimobile/nge/NGAppRater;
.super Ljava/lang/Object;
.source "NGAppRater.java"


# static fields
.field public static final MSG_POPUP:I = 0x0

.field private static final PREF_INDEX_DATE_FIRST_LAUNCH:Ljava/lang/String; = "date_firstlaunch"

.field private static final PREF_INDEX_DONNOT_SHOW_AGAIN:Ljava/lang/String; = "dont_show_again"

.field private static final PREF_INDEX_LAUNCH_COUNT:Ljava/lang/String; = "launch_count"

.field private static final PREF_INDEX_RATE_DONE:Ljava/lang/String; = "rate_done"

.field private static final PREF_NAME:Ljava/lang/String; = "apprater"

.field public static final sAlertClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private static sCtxPtr:I

.field private static sRaterAlert:Landroid/app/AlertDialog$Builder;

.field private static sTimesUntilPrompt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/anansimobile/nge/NGAppRater;->sRaterAlert:Landroid/app/AlertDialog$Builder;

    .line 26
    const/4 v0, 0x0

    sput v0, Lcom/anansimobile/nge/NGAppRater;->sCtxPtr:I

    .line 27
    const/16 v0, 0xa

    sput v0, Lcom/anansimobile/nge/NGAppRater;->sTimesUntilPrompt:I

    .line 197
    new-instance v0, Lcom/anansimobile/nge/NGAppRater$1;

    invoke-direct {v0}, Lcom/anansimobile/nge/NGAppRater$1;-><init>()V

    sput-object v0, Lcom/anansimobile/nge/NGAppRater;->sAlertClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/anansimobile/nge/NGAppRater;->sCtxPtr:I

    return v0
.end method

.method static synthetic access$100(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 22
    invoke-static {p0}, Lcom/anansimobile/nge/NGAppRater;->onTapRate(I)V

    return-void
.end method

.method public static handleMessage(Landroid/os/Message;)Z
    .locals 14
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v12, 0x0

    const/4 v2, 0x0

    .line 56
    iget v3, p0, Landroid/os/Message;->what:I

    add-int/lit16 v10, v3, -0x776

    .line 57
    .local v10, "msgType":I
    if-gez v10, :cond_0

    const/16 v3, 0xa

    if-lt v10, v3, :cond_0

    .line 101
    :goto_0
    return v2

    .line 62
    :cond_0
    packed-switch v10, :pswitch_data_0

    goto :goto_0

    .line 65
    :pswitch_0
    sget-object v0, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    .line 67
    .local v0, "ctx":Landroid/content/Context;
    const-string/jumbo v3, "apprater"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 68
    .local v11, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "dont_show_again"

    invoke-interface {v11, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "rate_done"

    invoke-interface {v11, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 69
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 72
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "launch_count"

    invoke-interface {v11, v2, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long v8, v2, v4

    .line 73
    .local v8, "launch_count":J
    const-string/jumbo v2, "launch_count"

    invoke-interface {v1, v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 76
    const-string/jumbo v2, "date_firstlaunch"

    invoke-interface {v11, v2, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 77
    .local v7, "date_firstLaunch":Ljava/lang/Long;
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v12

    if-nez v2, :cond_1

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 79
    const-string/jumbo v2, "date_firstlaunch"

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 83
    :cond_1
    sget v2, Lcom/anansimobile/nge/NGAppRater;->sTimesUntilPrompt:I

    int-to-long v2, v2

    cmp-long v2, v8, v2

    if-ltz v2, :cond_2

    .line 87
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "content"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "btnOK"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 90
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "btnCancel"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 91
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v12, "btnReminder"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 84
    invoke-static/range {v0 .. v6}, Lcom/anansimobile/nge/NGAppRater;->showRateDialog(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "date_firstLaunch":Ljava/lang/Long;
    .end local v8    # "launch_count":J
    :cond_3
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static native onTapRate(I)V
.end method

.method public static popup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "btnOK"    # Ljava/lang/String;
    .param p3, "btnCancel"    # Ljava/lang/String;
    .param p4, "btnReminder"    # Ljava/lang/String;

    .prologue
    .line 105
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 106
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x776

    iput v1, v0, Landroid/os/Message;->what:I

    .line 107
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "content"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "btnOK"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "btnCancel"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "btnReminder"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object v1, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v1, v0}, Lcom/anansimobile/nge/RootActivity;->sendMessage(Landroid/os/Message;)V

    .line 113
    return-void
.end method

.method private static setTimesUntilPrompt(I)V
    .locals 0
    .param p0, "times"    # I

    .prologue
    .line 34
    sput p0, Lcom/anansimobile/nge/NGAppRater;->sTimesUntilPrompt:I

    .line 35
    return-void
.end method

.method private static setup(I)V
    .locals 0
    .param p0, "ctxPtr"    # I

    .prologue
    .line 42
    sput p0, Lcom/anansimobile/nge/NGAppRater;->sCtxPtr:I

    .line 43
    return-void
.end method

.method private static showRateDialog(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "btnTextOK"    # Ljava/lang/String;
    .param p5, "btnTextCancel"    # Ljava/lang/String;
    .param p6, "btnTextReminder"    # Ljava/lang/String;

    .prologue
    .line 179
    sget-object v0, Lcom/anansimobile/nge/NGAppRater;->sRaterAlert:Landroid/app/AlertDialog$Builder;

    if-nez v0, :cond_1

    .line 180
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/anansimobile/nge/NGAppRater;->sRaterAlert:Landroid/app/AlertDialog$Builder;

    .line 181
    sget-object v0, Lcom/anansimobile/nge/NGAppRater;->sRaterAlert:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 182
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 183
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    .line 184
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/anansimobile/nge/NGAppRater;->sAlertClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 185
    invoke-virtual {v0, p4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/anansimobile/nge/NGAppRater;->sAlertClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 186
    invoke-virtual {v0, p5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 188
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 189
    sget-object v0, Lcom/anansimobile/nge/NGAppRater;->sRaterAlert:Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/anansimobile/nge/NGAppRater;->sAlertClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p6, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 192
    :cond_0
    sget-object v0, Lcom/anansimobile/nge/NGAppRater;->sRaterAlert:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 195
    :cond_1
    return-void
.end method
