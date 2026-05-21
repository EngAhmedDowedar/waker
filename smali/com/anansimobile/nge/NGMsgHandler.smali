.class Lcom/anansimobile/nge/NGMsgHandler;
.super Landroid/os/Handler;
.source "RootActivity.java"


# static fields
.field public static final UI_ASK_PERMISSION_CONFIRM:I = 0x1784

.field public static final UI_MSG_CHECK_ASSETS_DONE:I = 0x1773

.field public static final UI_MSG_CHECK_ASSETS_PROGRESS:I = 0x1772

.field public static final UI_MSG_CHECK_ASSETS_START:I = 0x1771

.field public static final UI_MSG_COMFIRM_QUIT_GAME:I = 0x177a

.field public static final UI_MSG_OPEN_URL:I = 0x44f

.field public static final UI_MSG_TOAST:I = 0x1388

.field public static final UI_MSG_VIEW_APPEND:I = 0x3ea

.field public static final UI_MSG_VIEW_LAYOUT:I = 0x3e9

.field public static final UI_MSG_VIEW_REMOVE:I = 0x3eb

.field public static final UI_MSG_VIEW_VISIBLE:I = 0x3ec


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1007
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1028
    invoke-static/range {p1 .. p1}, Lcom/anansimobile/nge/NGAlertDialog;->handleMessage(Landroid/os/Message;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1218
    :cond_0
    :goto_0
    return-void

    .line 1029
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/anansimobile/nge/NGTextInput;->handleMessage(Landroid/os/Message;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 1030
    invoke-static/range {p1 .. p1}, Lcom/anansimobile/nge/NGAppRater;->handleMessage(Landroid/os/Message;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 1031
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    sparse-switch v14, :sswitch_data_0

    goto :goto_0

    .line 1059
    :sswitch_0
    sget-object v14, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v15

    const-string/jumbo v16, "ptr"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/anansimobile/nge/RootActivity;->getViewWithKey(J)Landroid/view/View;

    move-result-object v4

    .line 1061
    .local v4, "layoutview":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 1062
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1063
    .local v5, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v12, 0xb4

    .line 1064
    .local v12, "w":I
    const/16 v3, 0x1e

    .line 1065
    .local v3, "h":I
    iput v12, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1066
    iput v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1067
    const/16 v14, 0x64

    iput v14, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1068
    const/16 v14, 0x1f4

    iput v14, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 1033
    .end local v3    # "h":I
    .end local v4    # "layoutview":Landroid/view/View;
    .end local v5    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12    # "w":I
    :sswitch_1
    new-instance v13, Lcom/anansimobile/nge/NGWebView;

    sget-object v14, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-direct {v13, v14}, Lcom/anansimobile/nge/NGWebView;-><init>(Landroid/content/Context;)V

    .line 1034
    .local v13, "webview":Lcom/anansimobile/nge/NGWebView;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string/jumbo v15, "ptr"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/anansimobile/nge/NGWebView;->SetListener(I)V

    .line 1035
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string/jumbo v15, "url"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/anansimobile/nge/NGWebView;->loadUrl(Ljava/lang/String;)V

    .line 1038
    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getScreenWidth()I

    move-result v9

    .line 1039
    .local v9, "sw":I
    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getScreenHeight()I

    move-result v8

    .line 1040
    .local v8, "sh":I
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1041
    .restart local v5    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v14, 0x0

    iput v14, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1042
    const/4 v14, 0x0

    iput v14, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1043
    invoke-virtual {v13, v5}, Lcom/anansimobile/nge/NGWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1045
    sget-object v14, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v14, v13}, Lcom/anansimobile/nge/RootActivity;->appendSubView(Landroid/view/View;)V

    .line 1046
    sget-object v14, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v14, v13}, Lcom/anansimobile/nge/RootActivity;->setWebView(Lcom/anansimobile/nge/NGWebView;)V

    goto/16 :goto_0

    .line 1052
    .end local v5    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v8    # "sh":I
    .end local v9    # "sw":I
    .end local v13    # "webview":Lcom/anansimobile/nge/NGWebView;
    :sswitch_2
    sget-object v14, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v15

    const-string/jumbo v16, "ptr"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/anansimobile/nge/RootActivity;->getViewWithKey(J)Landroid/view/View;

    move-result-object v10

    .line 1053
    .local v10, "view":Landroid/view/View;
    sget-object v14, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v14, v10}, Lcom/anansimobile/nge/RootActivity;->appendSubView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1076
    .end local v10    # "view":Landroid/view/View;
    :sswitch_3
    sget-object v14, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v15

    const-string/jumbo v16, "ptr"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/anansimobile/nge/RootActivity;->removeView(J)Landroid/view/View;

    move-result-object v7

    .line 1077
    .local v7, "removeview":Landroid/view/View;
    if-eqz v7, :cond_0

    .line 1078
    sget-object v14, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual {v14, v7}, Lcom/anansimobile/nge/RootActivity;->removeSubView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1084
    .end local v7    # "removeview":Landroid/view/View;
    :sswitch_4
    sget-object v14, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v15

    const-string/jumbo v16, "ptr"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/anansimobile/nge/RootActivity;->getViewWithKey(J)Landroid/view/View;

    move-result-object v11

    .line 1085
    .local v11, "visibleview":Landroid/view/View;
    if-eqz v11, :cond_0

    .line 1086
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string/jumbo v15, "visible"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1087
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Landroid/view/View;->setFocusable(Z)V

    .line 1088
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1090
    :cond_2
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/view/View;->setFocusable(Z)V

    .line 1091
    const/4 v14, 0x4

    invoke-virtual {v11, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1097
    .end local v11    # "visibleview":Landroid/view/View;
    :sswitch_5
    sget-object v14, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v15

    const-string/jumbo v16, "msg"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v16

    const-string/jumbo v17, "duration"

    invoke-virtual/range {v16 .. v17}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1101
    :sswitch_6
    new-instance v14, Landroid/app/ProgressDialog;

    sget-object v15, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-direct {v14, v15}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v14, Lcom/anansimobile/nge/RootActivity;->curProgressDialog:Landroid/app/ProgressDialog;

    .line 1102
    sget-object v14, Lcom/anansimobile/nge/RootActivity;->curProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v15

    const-string/jumbo v16, "title"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1103
    sget-object v14, Lcom/anansimobile/nge/RootActivity;->curProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v15

    const-string/jumbo v16, "alert_content"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1104
    sget-object v14, Lcom/anansimobile/nge/RootActivity;->curProgressDialog:Landroid/app/ProgressDialog;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1105
    sget-object v14, Lcom/anansimobile/nge/RootActivity;->curProgressDialog:Landroid/app/ProgressDialog;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1106
    sget-object v14, Lcom/anansimobile/nge/RootActivity;->curProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v15

    const-string/jumbo v16, "max"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1107
    sget-object v14, Lcom/anansimobile/nge/RootActivity;->curProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0

    .line 1111
    :sswitch_7
    sget-object v14, Lcom/anansimobile/nge/RootActivity;->curProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v14, :cond_0

    .line 1112
    sget-object v14, Lcom/anansimobile/nge/RootActivity;->curProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v15

    const-string/jumbo v16, "progress"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto/16 :goto_0

    .line 1116
    :sswitch_8
    sget-object v14, Lcom/anansimobile/nge/RootActivity;->curProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v14, :cond_0

    .line 1117
    sget-object v14, Lcom/anansimobile/nge/RootActivity;->curProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1118
    const/4 v14, 0x0

    sput-object v14, Lcom/anansimobile/nge/RootActivity;->curProgressDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 1124
    :sswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string/jumbo v15, "permission"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1125
    .local v6, "msgPermission":Ljava/lang/String;
    new-instance v14, Landroid/app/AlertDialog$Builder;

    sget-object v15, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-direct {v14, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v15

    const-string/jumbo v16, "ask"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const-string/jumbo v15, "OK"

    new-instance v16, Lcom/anansimobile/nge/NGMsgHandler$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/anansimobile/nge/NGMsgHandler$1;-><init>(Lcom/anansimobile/nge/NGMsgHandler;Ljava/lang/String;)V

    invoke-virtual/range {v14 .. v16}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    .line 1133
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1142
    .end local v6    # "msgPermission":Ljava/lang/String;
    :sswitch_a
    invoke-static {}, Lcom/anansimobile/nge/NGDevice;->getDeviceSDKVersion()I

    move-result v14

    const/16 v15, 0x11

    if-lt v14, v15, :cond_3

    .line 1143
    new-instance v2, Landroid/app/AlertDialog$Builder;

    sget-object v14, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-direct {v2, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1144
    .local v2, "ab_text":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v14, "Quit Game?"

    .line 1146
    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const-string/jumbo v15, "No"

    new-instance v16, Lcom/anansimobile/nge/NGMsgHandler$4;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/anansimobile/nge/NGMsgHandler$4;-><init>(Lcom/anansimobile/nge/NGMsgHandler;)V

    .line 1148
    invoke-virtual/range {v14 .. v16}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const-string/jumbo v15, "Yes"

    new-instance v16, Lcom/anansimobile/nge/NGMsgHandler$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/anansimobile/nge/NGMsgHandler$3;-><init>(Lcom/anansimobile/nge/NGMsgHandler;)V

    .line 1158
    invoke-virtual/range {v14 .. v16}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    new-instance v15, Lcom/anansimobile/nge/NGMsgHandler$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/anansimobile/nge/NGMsgHandler$2;-><init>(Lcom/anansimobile/nge/NGMsgHandler;)V

    .line 1169
    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    .line 1179
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1183
    .end local v2    # "ab_text":Landroid/app/AlertDialog$Builder;
    :cond_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    sget-object v14, Lcom/anansimobile/nge/NextGenEngine;->sMainActivity:Lcom/anansimobile/nge/RootActivity;

    invoke-direct {v2, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1184
    .restart local v2    # "ab_text":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v14, "Quit Game?"

    .line 1186
    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const-string/jumbo v15, "No"

    new-instance v16, Lcom/anansimobile/nge/NGMsgHandler$6;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/anansimobile/nge/NGMsgHandler$6;-><init>(Lcom/anansimobile/nge/NGMsgHandler;)V

    .line 1188
    invoke-virtual/range {v14 .. v16}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const-string/jumbo v15, "Yes"

    new-instance v16, Lcom/anansimobile/nge/NGMsgHandler$5;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/anansimobile/nge/NGMsgHandler$5;-><init>(Lcom/anansimobile/nge/NGMsgHandler;)V

    .line 1200
    invoke-virtual/range {v14 .. v16}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    .line 1211
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1031
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_3
        0x3ec -> :sswitch_4
        0x44f -> :sswitch_1
        0x1388 -> :sswitch_5
        0x1771 -> :sswitch_6
        0x1772 -> :sswitch_7
        0x1773 -> :sswitch_8
        0x177a -> :sswitch_a
        0x1784 -> :sswitch_9
    .end sparse-switch
.end method
