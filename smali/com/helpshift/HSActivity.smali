.class Lcom/helpshift/HSActivity;
.super Lcom/helpshift/app/ActionBarActivity;
.source "HSActivity.java"


# static fields
.field protected static final CALL_FINISH_REQ_CODE:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "HelpShiftDebug"


# instance fields
.field private final ISSUE_POLL_DURATION:I

.field private convIcon:Landroid/widget/TextView;

.field private conversationMenu:Landroid/view/Menu;

.field private data:Lcom/helpshift/HSApiData;

.field private enableContactUs:Z

.field private extras:Landroid/os/Bundle;

.field private horizontalScale:F

.field private notifCount:Landroid/widget/TextView;

.field private pollerThread:Ljava/lang/Thread;

.field private pollerThreadHandler:Landroid/os/Handler;

.field private reportIssueAction:Landroid/view/MenuItem;

.field private screenInitialized:Z

.field private screenType:Ljava/lang/String;

.field private showConvOnReportIssue:Z

.field private storage:Lcom/helpshift/HSStorage;

.field private verticalScale:F


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/helpshift/app/ActionBarActivity;-><init>()V

    .line 41
    const/4 v0, 0x3

    iput v0, p0, Lcom/helpshift/HSActivity;->ISSUE_POLL_DURATION:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/HSActivity;->conversationMenu:Landroid/view/Menu;

    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/HSActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/helpshift/HSActivity;->pollerThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$002(Lcom/helpshift/HSActivity;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSActivity;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/helpshift/HSActivity;->pollerThreadHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$100(Lcom/helpshift/HSActivity;)Lcom/helpshift/HSApiData;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/helpshift/HSActivity;->data:Lcom/helpshift/HSApiData;

    return-object v0
.end method

.method static synthetic access$200(Lcom/helpshift/HSActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/helpshift/HSActivity;->updateCount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/helpshift/HSActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/helpshift/HSActivity;->startConversation()V

    return-void
.end method

.method private callFinish()V
    .locals 3

    .prologue
    .line 358
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 359
    .local v0, "returnIntent":Landroid/content/Intent;
    const-string/jumbo v1, "callFinish"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 360
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/helpshift/HSActivity;->setResult(ILandroid/content/Intent;)V

    .line 361
    invoke-virtual {p0}, Lcom/helpshift/HSActivity;->finish()V

    .line 362
    return-void
.end method

.method private initScale()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 199
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 200
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/helpshift/HSActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/helpshift/R$dimen;->hs__tablet_dialog_horizontal_scale:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 201
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, p0, Lcom/helpshift/HSActivity;->horizontalScale:F

    .line 203
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "outValue":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 204
    .restart local v0    # "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/helpshift/HSActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/helpshift/R$dimen;->hs__tablet_dialog_vertical_scale:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 205
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, p0, Lcom/helpshift/HSActivity;->verticalScale:F

    .line 206
    return-void
.end method

.method private initWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 209
    iget-boolean v1, p0, Lcom/helpshift/HSActivity;->screenInitialized:Z

    if-nez v1, :cond_0

    .line 210
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/helpshift/HSActivity;->requestWindowFeature(I)Z

    .line 211
    invoke-virtual {p0}, Lcom/helpshift/HSActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 213
    invoke-virtual {p0}, Lcom/helpshift/HSActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 214
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 215
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 216
    invoke-virtual {p0}, Lcom/helpshift/HSActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 217
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/helpshift/HSActivity;->screenInitialized:Z

    .line 219
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method private isDialogUIForTabletsEnabled()Z
    .locals 5

    .prologue
    .line 186
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 188
    .local v2, "enableDialogUIForTablets":Ljava/lang/Boolean;
    :try_start_0
    iget-object v3, p0, Lcom/helpshift/HSActivity;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v3}, Lcom/helpshift/HSStorage;->getAppConfig()Lorg/json/JSONObject;

    move-result-object v0

    .line 189
    .local v0, "config":Lorg/json/JSONObject;
    const-string/jumbo v3, "enableDialogUIForTablets"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 193
    .end local v0    # "config":Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 190
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "isDialogUIForTabletsEnabled : "

    invoke-static {v3, v4, v1}, Lcom/helpshift/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isTablet()Z
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/helpshift/HSActivity;->screenType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/helpshift/HSActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/helpshift/R$string;->hs__screen_type:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSActivity;->screenType:Ljava/lang/String;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/helpshift/HSActivity;->screenType:Ljava/lang/String;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private killPoller()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/helpshift/HSActivity;->pollerThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/helpshift/HSActivity;->pollerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 65
    :cond_0
    return-void
.end method

.method private setSize()V
    .locals 5

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/helpshift/HSActivity;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/helpshift/HSActivity;->isDialogUIForTabletsEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/helpshift/HSActivity;->initWindow()V

    .line 177
    invoke-direct {p0}, Lcom/helpshift/HSActivity;->initScale()V

    .line 178
    invoke-virtual {p0}, Lcom/helpshift/HSActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 179
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    iget v4, p0, Lcom/helpshift/HSActivity;->verticalScale:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 180
    .local v1, "windowHeight":I
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v4, p0, Lcom/helpshift/HSActivity;->horizontalScale:F

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 181
    .local v2, "windowWidth":I
    invoke-virtual {p0}, Lcom/helpshift/HSActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 183
    .end local v0    # "metrics":Landroid/util/DisplayMetrics;
    .end local v1    # "windowHeight":I
    .end local v2    # "windowWidth":I
    :cond_0
    return-void
.end method

.method private showConversationMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/helpshift/HSActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 318
    .local v1, "menuInflater":Landroid/view/MenuInflater;
    sget v2, Lcom/helpshift/D$menu;->hs__show_conversation:I

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 320
    sget v2, Lcom/helpshift/D$id;->hs__action_report_issue:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/helpshift/HSActivity;->reportIssueAction:Landroid/view/MenuItem;

    .line 321
    iget-object v2, p0, Lcom/helpshift/HSActivity;->reportIssueAction:Landroid/view/MenuItem;

    invoke-static {v2}, Lcom/helpshift/view/SimpleMenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 323
    .local v0, "badgeLayout":Landroid/widget/LinearLayout;
    if-nez v0, :cond_0

    .line 340
    :goto_0
    return-void

    .line 327
    :cond_0
    sget v2, Lcom/helpshift/D$id;->hs__notification_badge:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/helpshift/HSActivity;->notifCount:Landroid/widget/TextView;

    .line 328
    sget v2, Lcom/helpshift/D$id;->hs__conversation_icon:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/helpshift/HSActivity;->convIcon:Landroid/widget/TextView;

    .line 330
    iget-object v2, p0, Lcom/helpshift/HSActivity;->convIcon:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/helpshift/util/Styles;->setActionButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 331
    iget-object v2, p0, Lcom/helpshift/HSActivity;->notifCount:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/helpshift/util/Styles;->setActionButtonNotificationIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 333
    new-instance v2, Lcom/helpshift/HSActivity$2;

    invoke-direct {v2, p0}, Lcom/helpshift/HSActivity$2;-><init>(Lcom/helpshift/HSActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v2, p0, Lcom/helpshift/HSActivity;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v2}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/helpshift/HSActivity;->updateCount(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startConversation()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 280
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/helpshift/HSConversation;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "showInFullScreen"

    invoke-static {p0}, Lcom/helpshift/util/HSActivityUtil;->isFullScreen(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 282
    const-string/jumbo v1, "chatLaunchSource"

    const-string/jumbo v2, "support"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    iget-object v1, p0, Lcom/helpshift/HSActivity;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/helpshift/HSActivity;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 286
    :cond_0
    const-string/jumbo v1, "isRoot"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 287
    instance-of v1, p0, Lcom/helpshift/HSQuestion;

    if-eqz v1, :cond_1

    .line 288
    const-string/jumbo v1, "search_performed"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 293
    :goto_0
    invoke-virtual {p0, v0, v5}, Lcom/helpshift/HSActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 294
    return-void

    .line 290
    :cond_1
    const-string/jumbo v1, "search_performed"

    invoke-virtual {p0}, Lcom/helpshift/HSActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "search_performed"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method private updateCount(Ljava/lang/String;)V
    .locals 4
    .param p1, "profileId"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 110
    iget-object v1, p0, Lcom/helpshift/HSActivity;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v1, p1}, Lcom/helpshift/HSStorage;->getActiveNotifCnt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 111
    .local v0, "count":I
    iget-object v1, p0, Lcom/helpshift/HSActivity;->notifCount:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 112
    if-lez v0, :cond_1

    .line 113
    iget-object v1, p0, Lcom/helpshift/HSActivity;->convIcon:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v1, p0, Lcom/helpshift/HSActivity;->notifCount:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v1, p0, Lcom/helpshift/HSActivity;->notifCount:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/helpshift/HSActivity;->convIcon:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v1, p0, Lcom/helpshift/HSActivity;->notifCount:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 344
    invoke-super {p0, p1, p2, p3}, Lcom/helpshift/app/ActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 345
    if-eqz p3, :cond_0

    .line 346
    const-string/jumbo v1, "callFinish"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 347
    .local v0, "callFinish":Ljava/lang/Boolean;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 349
    instance-of v1, p0, Lcom/helpshift/HSConversation;

    if-eqz v1, :cond_1

    .line 350
    invoke-virtual {p0}, Lcom/helpshift/HSActivity;->onBackPressed()V

    .line 355
    .end local v0    # "callFinish":Ljava/lang/Boolean;
    :cond_0
    :goto_0
    return-void

    .line 351
    .restart local v0    # "callFinish":Ljava/lang/Boolean;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    invoke-direct {p0}, Lcom/helpshift/HSActivity;->callFinish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 163
    invoke-super {p0, p1}, Lcom/helpshift/app/ActionBarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 164
    invoke-direct {p0}, Lcom/helpshift/HSActivity;->setSize()V

    .line 165
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 125
    invoke-super {p0, p1}, Lcom/helpshift/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcom/helpshift/HSActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/helpshift/HelpshiftContext;->setApplicationContext(Landroid/content/Context;)V

    .line 127
    new-instance v1, Lcom/helpshift/HSApiData;

    invoke-direct {v1, p0}, Lcom/helpshift/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/helpshift/HSActivity;->data:Lcom/helpshift/HSApiData;

    .line 128
    iget-object v1, p0, Lcom/helpshift/HSActivity;->data:Lcom/helpshift/HSApiData;

    iget-object v1, v1, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    iput-object v1, p0, Lcom/helpshift/HSActivity;->storage:Lcom/helpshift/HSStorage;

    .line 131
    invoke-static {p0}, Lcom/helpshift/util/LocaleUtil;->changeLanguage(Landroid/content/Context;)V

    .line 133
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/helpshift/HSActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/helpshift/HSActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/HSActivity;->extras:Landroid/os/Bundle;

    .line 138
    iget-object v1, p0, Lcom/helpshift/HSActivity;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/helpshift/HSActivity;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "showConvOnReportIssue"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/helpshift/HSActivity;->showConvOnReportIssue:Z

    .line 142
    :cond_1
    new-instance v1, Lcom/helpshift/HSApiData;

    invoke-direct {v1, p0}, Lcom/helpshift/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/helpshift/HSActivity;->data:Lcom/helpshift/HSApiData;

    .line 143
    iget-object v1, p0, Lcom/helpshift/HSActivity;->data:Lcom/helpshift/HSApiData;

    iget-object v1, v1, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    iput-object v1, p0, Lcom/helpshift/HSActivity;->storage:Lcom/helpshift/HSStorage;

    .line 144
    invoke-direct {p0}, Lcom/helpshift/HSActivity;->setSize()V

    .line 146
    instance-of v1, p0, Lcom/helpshift/HSQuestion;

    if-eqz v1, :cond_3

    move-object v0, p0

    .line 147
    check-cast v0, Lcom/helpshift/HSQuestion;

    .line 148
    .local v0, "activity":Lcom/helpshift/HSQuestion;
    invoke-virtual {p0}, Lcom/helpshift/HSActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/helpshift/HSQuestion;->extras:Landroid/os/Bundle;

    .line 149
    invoke-virtual {v0}, Lcom/helpshift/HSQuestion;->isShowSearchOnNewConversationFlowActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    iput-boolean v3, p0, Lcom/helpshift/HSActivity;->enableContactUs:Z

    .line 159
    .end local v0    # "activity":Lcom/helpshift/HSQuestion;
    :goto_0
    return-void

    .line 152
    .restart local v0    # "activity":Lcom/helpshift/HSQuestion;
    :cond_2
    sget-object v1, Lcom/helpshift/ContactUsFilter$LOCATION;->QUESTION_ACTION_BAR:Lcom/helpshift/ContactUsFilter$LOCATION;

    invoke-static {v1}, Lcom/helpshift/ContactUsFilter;->showContactUs(Lcom/helpshift/ContactUsFilter$LOCATION;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/helpshift/HSActivity;->enableContactUs:Z

    goto :goto_0

    .line 154
    .end local v0    # "activity":Lcom/helpshift/HSQuestion;
    :cond_3
    instance-of v1, p0, Lcom/helpshift/SearchResultActivity;

    if-eqz v1, :cond_4

    .line 155
    sget-object v1, Lcom/helpshift/ContactUsFilter$LOCATION;->SEARCH_RESULT_ACTIVITY_HEADER:Lcom/helpshift/ContactUsFilter$LOCATION;

    invoke-static {v1}, Lcom/helpshift/ContactUsFilter;->showContactUs(Lcom/helpshift/ContactUsFilter$LOCATION;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/helpshift/HSActivity;->enableContactUs:Z

    goto :goto_0

    .line 157
    :cond_4
    sget-object v1, Lcom/helpshift/ContactUsFilter$LOCATION;->ACTION_BAR:Lcom/helpshift/ContactUsFilter$LOCATION;

    invoke-static {v1}, Lcom/helpshift/ContactUsFilter;->showContactUs(Lcom/helpshift/ContactUsFilter$LOCATION;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/helpshift/HSActivity;->enableContactUs:Z

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 268
    invoke-super {p0, p1}, Lcom/helpshift/app/ActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 270
    iput-object p1, p0, Lcom/helpshift/HSActivity;->conversationMenu:Landroid/view/Menu;

    .line 271
    iget-boolean v0, p0, Lcom/helpshift/HSActivity;->enableContactUs:Z

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/helpshift/HSConversation;

    if-nez v0, :cond_0

    .line 273
    invoke-direct {p0, p1}, Lcom/helpshift/HSActivity;->showConversationMenu(Landroid/view/Menu;)V

    .line 276
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 262
    invoke-super {p0}, Lcom/helpshift/app/ActionBarActivity;->onPause()V

    .line 263
    invoke-direct {p0}, Lcom/helpshift/HSActivity;->killPoller()V

    .line 264
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 223
    invoke-super {p0}, Lcom/helpshift/app/ActionBarActivity;->onResume()V

    .line 228
    instance-of v3, p0, Lcom/helpshift/HSQuestion;

    if-eqz v3, :cond_3

    move-object v0, p0

    .line 229
    check-cast v0, Lcom/helpshift/HSQuestion;

    .line 230
    .local v0, "activity":Lcom/helpshift/HSQuestion;
    invoke-virtual {v0}, Lcom/helpshift/HSQuestion;->isShowSearchOnNewConversationFlowActive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 231
    iput-boolean v4, p0, Lcom/helpshift/HSActivity;->enableContactUs:Z

    .line 241
    .end local v0    # "activity":Lcom/helpshift/HSQuestion;
    :goto_0
    iget-boolean v3, p0, Lcom/helpshift/HSActivity;->enableContactUs:Z

    if-nez v3, :cond_5

    .line 242
    invoke-virtual {p0, v4}, Lcom/helpshift/HSActivity;->showConversationMenu(Z)V

    .line 251
    :cond_0
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/helpshift/HSActivity;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v3}, Lcom/helpshift/HSStorage;->getConfig()Lorg/json/JSONObject;

    move-result-object v1

    .line 252
    .local v1, "configData":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 253
    invoke-static {v1}, Lcom/helpshift/res/values/HSConfig;->updateConfig(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .end local v1    # "configData":Lorg/json/JSONObject;
    :cond_1
    :goto_2
    return-void

    .line 233
    .restart local v0    # "activity":Lcom/helpshift/HSQuestion;
    :cond_2
    sget-object v3, Lcom/helpshift/ContactUsFilter$LOCATION;->QUESTION_ACTION_BAR:Lcom/helpshift/ContactUsFilter$LOCATION;

    invoke-static {v3}, Lcom/helpshift/ContactUsFilter;->showContactUs(Lcom/helpshift/ContactUsFilter$LOCATION;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/helpshift/HSActivity;->enableContactUs:Z

    goto :goto_0

    .line 235
    .end local v0    # "activity":Lcom/helpshift/HSQuestion;
    :cond_3
    instance-of v3, p0, Lcom/helpshift/SearchResultActivity;

    if-eqz v3, :cond_4

    .line 236
    sget-object v3, Lcom/helpshift/ContactUsFilter$LOCATION;->SEARCH_RESULT_ACTIVITY_HEADER:Lcom/helpshift/ContactUsFilter$LOCATION;

    invoke-static {v3}, Lcom/helpshift/ContactUsFilter;->showContactUs(Lcom/helpshift/ContactUsFilter$LOCATION;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/helpshift/HSActivity;->enableContactUs:Z

    goto :goto_0

    .line 238
    :cond_4
    sget-object v3, Lcom/helpshift/ContactUsFilter$LOCATION;->ACTION_BAR:Lcom/helpshift/ContactUsFilter$LOCATION;

    invoke-static {v3}, Lcom/helpshift/ContactUsFilter;->showContactUs(Lcom/helpshift/ContactUsFilter$LOCATION;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/helpshift/HSActivity;->enableContactUs:Z

    goto :goto_0

    .line 243
    :cond_5
    iget-boolean v3, p0, Lcom/helpshift/HSActivity;->enableContactUs:Z

    if-eqz v3, :cond_0

    instance-of v3, p0, Lcom/helpshift/HSConversation;

    if-nez v3, :cond_0

    .line 244
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/helpshift/HSActivity;->showConversationMenu(Z)V

    .line 245
    iget-object v3, p0, Lcom/helpshift/HSActivity;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v3}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 246
    iget-object v3, p0, Lcom/helpshift/HSActivity;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v3}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/helpshift/HSActivity;->updateCount(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/helpshift/HSActivity;->startPoller()V

    goto :goto_1

    .line 255
    :catch_0
    move-exception v2

    .line 256
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/helpshift/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 298
    invoke-super {p0}, Lcom/helpshift/app/ActionBarActivity;->onStart()V

    .line 299
    invoke-static {p0}, Lcom/helpshift/HSAnalytics;->onActivityStarted(Landroid/app/Activity;)V

    .line 300
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 304
    invoke-super {p0}, Lcom/helpshift/app/ActionBarActivity;->onStop()V

    .line 305
    invoke-static {p0}, Lcom/helpshift/HSAnalytics;->onActivityStopped(Landroid/app/Activity;)V

    .line 306
    return-void
.end method

.method protected showConversationMenu(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 309
    iget-object v0, p0, Lcom/helpshift/HSActivity;->reportIssueAction:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/helpshift/HSActivity;->reportIssueAction:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/helpshift/HSActivity;->conversationMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/helpshift/HSActivity;->conversationMenu:Landroid/view/Menu;

    invoke-direct {p0, v0}, Lcom/helpshift/HSActivity;->showConversationMenu(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method protected startPoller()V
    .locals 3

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/helpshift/HSActivity;->killPoller()V

    .line 71
    iget-object v1, p0, Lcom/helpshift/HSActivity;->storage:Lcom/helpshift/HSStorage;

    iget-object v2, p0, Lcom/helpshift/HSActivity;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v2}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/helpshift/HSStorage;->getActiveConversation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "conversation":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/helpshift/HSActivity$1;

    invoke-direct {v2, p0}, Lcom/helpshift/HSActivity$1;-><init>(Lcom/helpshift/HSActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/helpshift/HSActivity;->pollerThread:Ljava/lang/Thread;

    .line 106
    iget-object v1, p0, Lcom/helpshift/HSActivity;->pollerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
