.class public Lcom/helpshift/HSAddIssueFragment;
.super Landroid/support/v4/app/Fragment;
.source "HSAddIssueFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HelpShiftDebug"


# instance fields
.field actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

.field private activity:Lcom/helpshift/HSActivity;

.field private addIssueMenuItem:Landroid/view/MenuItem;

.field private attachScreenshotMenu:Landroid/view/MenuItem;

.field private callFinishRequestCode:I

.field private clearBtn:Landroid/widget/ImageButton;

.field private decomp:Ljava/lang/Boolean;

.field private desc:Landroid/widget/TextView;

.field private email:Ljava/lang/String;

.field private emailField:Landroid/widget/EditText;

.field public existsHandler:Landroid/os/Handler;

.field private extras:Landroid/os/Bundle;

.field private failureHandler:Landroid/os/Handler;

.field private getLatestIssuesHandler:Landroid/os/Handler;

.field private helpshiftDelegate:Lcom/helpshift/Helpshift$HelpshiftDelegate;

.field private hsApiClient:Lcom/helpshift/HSApiClient;

.field private hsApiData:Lcom/helpshift/HSApiData;

.field private hsStorage:Lcom/helpshift/HSStorage;

.field private issueId:Ljava/lang/String;

.field private msgData:Lcom/helpshift/viewstructs/HSMsg;

.field public reportHandler:Landroid/os/Handler;

.field private requireEmail:Ljava/lang/Boolean;

.field private screenshot:Landroid/widget/ImageView;

.field private screenshotPath:Ljava/lang/String;

.field private searchActivityShown:Z

.field private selectImage:Z

.field private selectingScreenshot:Z

.field private sendAnyway:Z

.field private showConvOnReportIssue:Ljava/lang/Boolean;

.field private uploadFailHandler:Landroid/os/Handler;

.field private uploadSuccessHandler:Landroid/os/Handler;

.field private userName:Ljava/lang/String;

.field private userNameField:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lcom/helpshift/HSAddIssueFragment;->callFinishRequestCode:I

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->screenshotPath:Ljava/lang/String;

    .line 91
    iput-boolean v1, p0, Lcom/helpshift/HSAddIssueFragment;->sendAnyway:Z

    .line 92
    iput-boolean v1, p0, Lcom/helpshift/HSAddIssueFragment;->searchActivityShown:Z

    .line 96
    iput-boolean v1, p0, Lcom/helpshift/HSAddIssueFragment;->selectingScreenshot:Z

    .line 98
    new-instance v0, Lcom/helpshift/HSAddIssueFragment$1;

    invoke-direct {v0, p0}, Lcom/helpshift/HSAddIssueFragment$1;-><init>(Lcom/helpshift/HSAddIssueFragment;)V

    iput-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->failureHandler:Landroid/os/Handler;

    .line 147
    new-instance v0, Lcom/helpshift/HSAddIssueFragment$2;

    invoke-direct {v0, p0}, Lcom/helpshift/HSAddIssueFragment$2;-><init>(Lcom/helpshift/HSAddIssueFragment;)V

    iput-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->reportHandler:Landroid/os/Handler;

    .line 185
    new-instance v0, Lcom/helpshift/HSAddIssueFragment$3;

    invoke-direct {v0, p0}, Lcom/helpshift/HSAddIssueFragment$3;-><init>(Lcom/helpshift/HSAddIssueFragment;)V

    iput-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->getLatestIssuesHandler:Landroid/os/Handler;

    .line 193
    new-instance v0, Lcom/helpshift/HSAddIssueFragment$4;

    invoke-direct {v0, p0}, Lcom/helpshift/HSAddIssueFragment$4;-><init>(Lcom/helpshift/HSAddIssueFragment;)V

    iput-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->uploadSuccessHandler:Landroid/os/Handler;

    .line 229
    new-instance v0, Lcom/helpshift/HSAddIssueFragment$5;

    invoke-direct {v0, p0}, Lcom/helpshift/HSAddIssueFragment$5;-><init>(Lcom/helpshift/HSAddIssueFragment;)V

    iput-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->uploadFailHandler:Landroid/os/Handler;

    .line 248
    new-instance v0, Lcom/helpshift/HSAddIssueFragment$6;

    invoke-direct {v0, p0}, Lcom/helpshift/HSAddIssueFragment$6;-><init>(Lcom/helpshift/HSAddIssueFragment;)V

    iput-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->existsHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/HSAddIssueFragment;)Lcom/helpshift/HSActivity;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSAddIssueFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->activity:Lcom/helpshift/HSActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/helpshift/HSAddIssueFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSAddIssueFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/helpshift/HSAddIssueFragment;->setIsReportingIssue(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/helpshift/HSAddIssueFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSAddIssueFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->uploadSuccessHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/helpshift/HSAddIssueFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSAddIssueFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->uploadFailHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/helpshift/HSAddIssueFragment;)Lcom/helpshift/HSApiClient;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSAddIssueFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->hsApiClient:Lcom/helpshift/HSApiClient;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/helpshift/HSAddIssueFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSAddIssueFragment;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/helpshift/HSAddIssueFragment;->handleExit()V

    return-void
.end method

.method static synthetic access$1400(Lcom/helpshift/HSAddIssueFragment;)Lcom/helpshift/Helpshift$HelpshiftDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSAddIssueFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->helpshiftDelegate:Lcom/helpshift/Helpshift$HelpshiftDelegate;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/helpshift/HSAddIssueFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSAddIssueFragment;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/helpshift/HSAddIssueFragment;->clearScreenshot()V

    return-void
.end method

.method static synthetic access$1600(Lcom/helpshift/HSAddIssueFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSAddIssueFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->getLatestIssuesHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/helpshift/HSAddIssueFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSAddIssueFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->failureHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/helpshift/HSAddIssueFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSAddIssueFragment;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/helpshift/HSAddIssueFragment;->getIssueText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/helpshift/HSAddIssueFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSAddIssueFragment;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/helpshift/HSAddIssueFragment;->getUserInfo()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/helpshift/HSAddIssueFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSAddIssueFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->issueId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/helpshift/HSAddIssueFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSAddIssueFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->userNameField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$202(Lcom/helpshift/HSAddIssueFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSAddIssueFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/helpshift/HSAddIssueFragment;->issueId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/helpshift/HSAddIssueFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSAddIssueFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->emailField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/helpshift/HSAddIssueFragment;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSAddIssueFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/helpshift/HSAddIssueFragment;->showScreenshotPreview(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/helpshift/HSAddIssueFragment;)Lcom/helpshift/HSApiData;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSAddIssueFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->hsApiData:Lcom/helpshift/HSApiData;

    return-object v0
.end method

.method static synthetic access$400(Lcom/helpshift/HSAddIssueFragment;)Lcom/helpshift/HSStorage;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSAddIssueFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->hsStorage:Lcom/helpshift/HSStorage;

    return-object v0
.end method

.method static synthetic access$500(Lcom/helpshift/HSAddIssueFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSAddIssueFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->userName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/helpshift/HSAddIssueFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSAddIssueFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->email:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/helpshift/HSAddIssueFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSAddIssueFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->desc:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/helpshift/HSAddIssueFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSAddIssueFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->screenshotPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/helpshift/HSAddIssueFragment;)Lcom/helpshift/viewstructs/HSMsg;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSAddIssueFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->msgData:Lcom/helpshift/viewstructs/HSMsg;

    return-object v0
.end method

.method static synthetic access$902(Lcom/helpshift/HSAddIssueFragment;Lcom/helpshift/viewstructs/HSMsg;)Lcom/helpshift/viewstructs/HSMsg;
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSAddIssueFragment;
    .param p1, "x1"    # Lcom/helpshift/viewstructs/HSMsg;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/helpshift/HSAddIssueFragment;->msgData:Lcom/helpshift/viewstructs/HSMsg;

    return-object p1
.end method

.method private clearScreenshot()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 239
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->screenshot:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->clearBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 241
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->screenshotPath:Ljava/lang/String;

    .line 242
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->hsStorage:Lcom/helpshift/HSStorage;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/helpshift/HSAddIssueFragment;->hsApiData:Lcom/helpshift/HSApiData;

    invoke-virtual {v2}, Lcom/helpshift/HSApiData;->getLoginId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/HSStorage;->setConversationScreenshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->hsStorage:Lcom/helpshift/HSStorage;

    invoke-virtual {v0}, Lcom/helpshift/HSStorage;->getEnableFullPrivacy()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->attachScreenshotMenu:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 246
    :cond_0
    return-void
.end method

.method private getIssueText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->desc:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUserInfo()Ljava/util/HashMap;
    .locals 3

    .prologue
    .line 277
    const/4 v0, 0x0

    .line 279
    .local v0, "data":Ljava/util/HashMap;
    iget-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->hsStorage:Lcom/helpshift/HSStorage;

    invoke-static {v1}, Lcom/helpshift/util/IdentityFilter;->sendNameEmail(Lcom/helpshift/HSStorage;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "data":Ljava/util/HashMap;
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 281
    .restart local v0    # "data":Ljava/util/HashMap;
    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/helpshift/HSAddIssueFragment;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->email:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 283
    const-string/jumbo v1, "email"

    iget-object v2, p0, Lcom/helpshift/HSAddIssueFragment;->email:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_0
    return-object v0
.end method

.method private handleDecomp()V
    .locals 3

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 118
    .local v0, "returnIntent":Landroid/content/Intent;
    const-string/jumbo v1, "callFinish"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0}, Lcom/helpshift/HSAddIssueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 120
    invoke-virtual {p0}, Lcom/helpshift/HSAddIssueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 121
    invoke-static {}, Lcom/helpshift/util/HSActivityUtil;->sessionEnding()V

    .line 122
    return-void
.end method

.method private handleExit()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 125
    sget-object v2, Lcom/helpshift/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v3, "dia"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 126
    .local v0, "dia":Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/helpshift/HSAddIssueFragment;->showConvOnReportIssue:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 128
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/helpshift/HSAddIssueFragment;->activity:Lcom/helpshift/HSActivity;

    const-class v3, Lcom/helpshift/HSConversation;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v2, "newIssue"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    const-string/jumbo v2, "issueId"

    iget-object v3, p0, Lcom/helpshift/HSAddIssueFragment;->issueId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string/jumbo v2, "decomp"

    iget-object v3, p0, Lcom/helpshift/HSAddIssueFragment;->decomp:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 132
    const-string/jumbo v2, "showConvOnReportIssue"

    iget-object v3, p0, Lcom/helpshift/HSAddIssueFragment;->showConvOnReportIssue:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 133
    const-string/jumbo v2, "showInFullScreen"

    iget-object v3, p0, Lcom/helpshift/HSAddIssueFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-static {v3}, Lcom/helpshift/util/HSActivityUtil;->isFullScreen(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 134
    const-string/jumbo v2, "chatLaunchSource"

    const-string/jumbo v3, "support"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string/jumbo v2, "showSearchOnNewConversation"

    invoke-direct {p0}, Lcom/helpshift/HSAddIssueFragment;->isSearchOnNewConversationEnabled()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0}, Lcom/helpshift/HSAddIssueFragment;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/helpshift/HSAddIssueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 145
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/helpshift/HSAddIssueFragment;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/helpshift/HSAddIssueFragment;->showIssueFiledToast()V

    .line 142
    invoke-direct {p0}, Lcom/helpshift/HSAddIssueFragment;->handleDecomp()V

    goto :goto_0
.end method

.method private hideKeyboard(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 693
    iget-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->activity:Lcom/helpshift/HSActivity;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/helpshift/HSActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 694
    .local v0, "in":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 695
    return-void
.end method

.method private isFormValid()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 602
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 604
    .local v4, "validForm":Ljava/lang/Boolean;
    iget-object v5, p0, Lcom/helpshift/HSAddIssueFragment;->desc:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 605
    .local v2, "issueText":Ljava/lang/String;
    iget-object v5, p0, Lcom/helpshift/HSAddIssueFragment;->hsApiData:Lcom/helpshift/HSApiData;

    invoke-static {v5}, Lcom/helpshift/util/IdentityFilter;->showNameEmailForm(Lcom/helpshift/HSApiData;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 607
    .local v1, "isNameEmailFormShown":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 608
    iget-object v5, p0, Lcom/helpshift/HSAddIssueFragment;->userNameField:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/helpshift/HSAddIssueFragment;->userName:Ljava/lang/String;

    .line 609
    iget-object v5, p0, Lcom/helpshift/HSAddIssueFragment;->emailField:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/helpshift/HSAddIssueFragment;->email:Ljava/lang/String;

    .line 615
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    .line 616
    iget-object v5, p0, Lcom/helpshift/HSAddIssueFragment;->desc:Landroid/widget/TextView;

    sget v6, Lcom/helpshift/D$string;->hs__conversation_detail_error:I

    invoke-virtual {p0, v6}, Lcom/helpshift/HSAddIssueFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 617
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 630
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/helpshift/HSAddIssueFragment;->userName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/helpshift/HSAddIssueFragment;->userName:Ljava/lang/String;

    invoke-static {v5}, Lcom/helpshift/util/HSPattern;->checkSpecialCharacters(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 632
    :cond_2
    iget-object v5, p0, Lcom/helpshift/HSAddIssueFragment;->userNameField:Landroid/widget/EditText;

    sget v6, Lcom/helpshift/D$string;->hs__username_blank_error:I

    invoke-virtual {p0, v6}, Lcom/helpshift/HSAddIssueFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 633
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 636
    :cond_3
    iget-object v5, p0, Lcom/helpshift/HSAddIssueFragment;->requireEmail:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/helpshift/HSAddIssueFragment;->email:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/helpshift/HSAddIssueFragment;->email:Ljava/lang/String;

    invoke-static {v5}, Lcom/helpshift/util/HSPattern;->checkEmail(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 639
    iget-object v5, p0, Lcom/helpshift/HSAddIssueFragment;->emailField:Landroid/widget/EditText;

    sget v6, Lcom/helpshift/D$string;->hs__invalid_email_error:I

    invoke-virtual {p0, v6}, Lcom/helpshift/HSAddIssueFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 640
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 647
    :cond_4
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    return v5

    .line 611
    :cond_5
    iget-object v5, p0, Lcom/helpshift/HSAddIssueFragment;->hsApiData:Lcom/helpshift/HSApiData;

    invoke-virtual {v5}, Lcom/helpshift/HSApiData;->getUsername()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/helpshift/HSAddIssueFragment;->userName:Ljava/lang/String;

    .line 612
    iget-object v5, p0, Lcom/helpshift/HSAddIssueFragment;->hsApiData:Lcom/helpshift/HSApiData;

    invoke-virtual {v5}, Lcom/helpshift/HSApiData;->getEmail()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/helpshift/HSAddIssueFragment;->email:Ljava/lang/String;

    goto :goto_0

    .line 619
    :cond_6
    invoke-virtual {p0}, Lcom/helpshift/HSAddIssueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 620
    .local v3, "resources":Landroid/content/res/Resources;
    sget v5, Lcom/helpshift/R$integer;->hs__issue_description_min_chars:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 621
    .local v0, "descriptionMinLength":I
    const-string/jumbo v5, "\\s+"

    const-string/jumbo v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v0, :cond_7

    .line 622
    iget-object v5, p0, Lcom/helpshift/HSAddIssueFragment;->desc:Landroid/widget/TextView;

    sget v6, Lcom/helpshift/R$string;->hs__description_invalid_length_error:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 623
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_1

    .line 624
    :cond_7
    invoke-static {v2}, Lcom/helpshift/util/HSPattern;->checkSpecialCharacters(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 625
    iget-object v5, p0, Lcom/helpshift/HSAddIssueFragment;->desc:Landroid/widget/TextView;

    sget v6, Lcom/helpshift/D$string;->hs__invalid_description_error:I

    invoke-virtual {p0, v6}, Lcom/helpshift/HSAddIssueFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 626
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_1

    .line 641
    .end local v0    # "descriptionMinLength":I
    .end local v3    # "resources":Landroid/content/res/Resources;
    :cond_8
    iget-object v5, p0, Lcom/helpshift/HSAddIssueFragment;->email:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/helpshift/HSAddIssueFragment;->email:Ljava/lang/String;

    invoke-static {v5}, Lcom/helpshift/util/HSPattern;->checkEmail(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 643
    iget-object v5, p0, Lcom/helpshift/HSAddIssueFragment;->emailField:Landroid/widget/EditText;

    sget v6, Lcom/helpshift/D$string;->hs__invalid_email_error:I

    invoke-virtual {p0, v6}, Lcom/helpshift/HSAddIssueFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 644
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_2
.end method

.method private isSearchOnNewConversationEnabled()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 491
    const/4 v1, 0x1

    .line 492
    .local v1, "searchPerformed":Z
    invoke-virtual {p0}, Lcom/helpshift/HSAddIssueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 493
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 494
    const-string/jumbo v3, "search_performed"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 496
    :cond_0
    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/helpshift/HSAddIssueFragment;->hsStorage:Lcom/helpshift/HSStorage;

    invoke-virtual {v3}, Lcom/helpshift/HSStorage;->getShowSearchOnNewConversation()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSearchResultAvailable(Ljava/lang/String;)Z
    .locals 3
    .param p1, "issueText"    # Ljava/lang/String;

    .prologue
    .line 501
    iget-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->hsApiData:Lcom/helpshift/HSApiData;

    sget-object v2, Lcom/helpshift/HSSearch$HS_SEARCH_OPTIONS;->KEYWORD_SEARCH:Lcom/helpshift/HSSearch$HS_SEARCH_OPTIONS;

    invoke-virtual {v1, p1, v2}, Lcom/helpshift/HSApiData;->localFaqSearch(Ljava/lang/String;Lcom/helpshift/HSSearch$HS_SEARCH_OPTIONS;)Ljava/util/ArrayList;

    move-result-object v0

    .line 502
    .local v0, "searchResults":Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private pickImage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 449
    iput-boolean v3, p0, Lcom/helpshift/HSAddIssueFragment;->selectImage:Z

    .line 450
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 452
    .local v0, "i":Landroid/content/Intent;
    invoke-static {v3}, Lcom/helpshift/HSConversation;->setKeepActivityActive(Z)V

    .line 453
    iput-boolean v3, p0, Lcom/helpshift/HSAddIssueFragment;->selectingScreenshot:Z

    .line 454
    iget-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-virtual {v1}, Lcom/helpshift/HSActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 455
    invoke-virtual {p0, v0, v4}, Lcom/helpshift/HSAddIssueFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "i":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 458
    .restart local v0    # "i":Landroid/content/Intent;
    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    const-string/jumbo v1, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 460
    iget-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-virtual {v1}, Lcom/helpshift/HSActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 461
    invoke-virtual {p0, v0, v4}, Lcom/helpshift/HSAddIssueFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private saveScreenshot(Ljava/lang/String;)V
    .locals 2
    .param p1, "screenshotPath"    # Ljava/lang/String;

    .prologue
    .line 578
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->hsStorage:Lcom/helpshift/HSStorage;

    iget-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->hsApiData:Lcom/helpshift/HSApiData;

    invoke-virtual {v1}, Lcom/helpshift/HSApiData;->getLoginId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/helpshift/HSStorage;->setConversationScreenshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :cond_0
    return-void
.end method

.method private setIsReportingIssue(Z)V
    .locals 4
    .param p1, "isReportingIssue"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 698
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-virtual {v0, p1}, Lcom/helpshift/HSActivity;->setSupportProgressBarIndeterminateVisibility(Z)V

    .line 699
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->addIssueMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 700
    iget-object v3, p0, Lcom/helpshift/HSAddIssueFragment;->addIssueMenuItem:Landroid/view/MenuItem;

    if-nez p1, :cond_5

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->clearBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 703
    iget-object v3, p0, Lcom/helpshift/HSAddIssueFragment;->clearBtn:Landroid/widget/ImageButton;

    if-nez p1, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 705
    :cond_1
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->screenshot:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 706
    iget-object v3, p0, Lcom/helpshift/HSAddIssueFragment;->screenshot:Landroid/widget/ImageView;

    if-nez p1, :cond_7

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 709
    :cond_2
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->attachScreenshotMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_4

    .line 710
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->clearBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->clearBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    .line 712
    :cond_3
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->attachScreenshotMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 717
    :cond_4
    :goto_3
    return-void

    :cond_5
    move v0, v2

    .line 700
    goto :goto_0

    :cond_6
    move v0, v2

    .line 703
    goto :goto_1

    :cond_7
    move v0, v2

    .line 706
    goto :goto_2

    .line 713
    :cond_8
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->hsStorage:Lcom/helpshift/HSStorage;

    invoke-virtual {v0}, Lcom/helpshift/HSStorage;->getEnableFullPrivacy()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 714
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->attachScreenshotMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3
.end method

.method private setScreenshot(Ljava/lang/String;)V
    .locals 8
    .param p1, "screenshotPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 584
    const/4 v2, -0x1

    invoke-static {p1, v2}, Lcom/helpshift/util/AttachmentUtil;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 585
    .local v1, "screenshotBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 586
    iget-object v2, p0, Lcom/helpshift/HSAddIssueFragment;->screenshot:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 587
    iget-object v2, p0, Lcom/helpshift/HSAddIssueFragment;->screenshot:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 588
    iget-object v2, p0, Lcom/helpshift/HSAddIssueFragment;->clearBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 589
    iput-object p1, p0, Lcom/helpshift/HSAddIssueFragment;->screenshotPath:Ljava/lang/String;

    .line 590
    iget-object v2, p0, Lcom/helpshift/HSAddIssueFragment;->attachScreenshotMenu:Landroid/view/MenuItem;

    if-eqz v2, :cond_0

    .line 591
    iget-object v2, p0, Lcom/helpshift/HSAddIssueFragment;->attachScreenshotMenu:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 593
    :cond_0
    iget-object v2, p0, Lcom/helpshift/HSAddIssueFragment;->desc:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v3}, Landroid/widget/TextView;->measure(II)V

    .line 594
    iget-object v2, p0, Lcom/helpshift/HSAddIssueFragment;->desc:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 595
    .local v0, "height":I
    iget-object v2, p0, Lcom/helpshift/HSAddIssueFragment;->screenshot:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 596
    iget-object v2, p0, Lcom/helpshift/HSAddIssueFragment;->screenshot:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    int-to-double v4, v0

    const-wide v6, 0x3fe5555555555555L    # 0.6666666666666666

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 597
    iget-object v2, p0, Lcom/helpshift/HSAddIssueFragment;->screenshot:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->requestLayout()V

    .line 599
    .end local v0    # "height":I
    :cond_1
    return-void
.end method

.method private showIssueFiledToast()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 109
    iget-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->activity:Lcom/helpshift/HSActivity;

    sget v2, Lcom/helpshift/D$string;->hs__conversation_started_message:I

    invoke-virtual {p0, v2}, Lcom/helpshift/HSAddIssueFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 112
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 113
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 114
    return-void
.end method

.method private showScreenshotPreview(Ljava/lang/String;I)V
    .locals 3
    .param p1, "screenshotPath"    # Ljava/lang/String;
    .param p2, "textType"    # I

    .prologue
    const/4 v1, 0x1

    .line 532
    invoke-static {v1}, Lcom/helpshift/HSConversation;->setKeepActivityActive(Z)V

    .line 533
    iput-boolean v1, p0, Lcom/helpshift/HSAddIssueFragment;->selectingScreenshot:Z

    .line 534
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->activity:Lcom/helpshift/HSActivity;

    const-class v2, Lcom/helpshift/ScreenshotPreviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 535
    .local v0, "screenshotPreviewIntent":Landroid/content/Intent;
    const-string/jumbo v1, "SCREENSHOT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 536
    const-string/jumbo v1, "screenshot_text_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 537
    const-string/jumbo v1, "showInFullScreen"

    iget-object v2, p0, Lcom/helpshift/HSAddIssueFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-static {v2}, Lcom/helpshift/util/HSActivityUtil;->isFullScreen(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 538
    const/16 v1, 0x7fbc

    invoke-virtual {p0, v0, v1}, Lcom/helpshift/HSAddIssueFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 539
    return-void
.end method

.method private showSearchOnNewConversation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 506
    iput-boolean v4, p0, Lcom/helpshift/HSAddIssueFragment;->searchActivityShown:Z

    .line 507
    iget-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->hsStorage:Lcom/helpshift/HSStorage;

    invoke-direct {p0}, Lcom/helpshift/HSAddIssueFragment;->getIssueText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/helpshift/HSAddIssueFragment;->hsApiData:Lcom/helpshift/HSApiData;

    invoke-virtual {v3}, Lcom/helpshift/HSApiData;->getLoginId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/helpshift/HSStorage;->storeConversationDetail(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->activity:Lcom/helpshift/HSActivity;

    const-class v2, Lcom/helpshift/SearchResultActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 510
    .local v0, "searchResultActivity":Landroid/content/Intent;
    const-string/jumbo v1, "searchQuery"

    invoke-direct {p0}, Lcom/helpshift/HSAddIssueFragment;->getIssueText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    const-string/jumbo v1, "showInFullScreen"

    iget-object v2, p0, Lcom/helpshift/HSAddIssueFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-static {v2}, Lcom/helpshift/util/HSActivityUtil;->isFullScreen(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 512
    invoke-static {v4}, Lcom/helpshift/HSConversation;->setKeepActivityActive(Z)V

    .line 513
    const/16 v1, 0x7fbb

    invoke-virtual {p0, v0, v1}, Lcom/helpshift/HSAddIssueFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 515
    return-void
.end method

.method private startNewConversation()V
    .locals 7

    .prologue
    .line 519
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/helpshift/HSAddIssueFragment;->setIsReportingIssue(Z)V

    .line 520
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->hsApiData:Lcom/helpshift/HSApiData;

    iget-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->reportHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/helpshift/HSAddIssueFragment;->failureHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/helpshift/HSAddIssueFragment;->getIssueText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/helpshift/HSAddIssueFragment;->getUserInfo()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/helpshift/HSApiData;->createIssue(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Lcom/helpshift/exceptions/IdentityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :goto_0
    return-void

    .line 522
    :catch_0
    move-exception v6

    .line 523
    .local v6, "e":Lcom/helpshift/exceptions/IdentityException;
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->hsApiData:Lcom/helpshift/HSApiData;

    iget-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->existsHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/helpshift/HSAddIssueFragment;->failureHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/helpshift/HSAddIssueFragment;->userName:Ljava/lang/String;

    iget-object v4, p0, Lcom/helpshift/HSAddIssueFragment;->email:Ljava/lang/String;

    iget-object v5, p0, Lcom/helpshift/HSAddIssueFragment;->hsApiData:Lcom/helpshift/HSApiData;

    invoke-virtual {v5}, Lcom/helpshift/HSApiData;->getLoginId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/helpshift/HSApiData;->registerProfile(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 543
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 544
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 545
    if-nez p1, :cond_1

    .line 546
    invoke-virtual {p0}, Lcom/helpshift/HSAddIssueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/helpshift/util/AttachmentUtil;->isImageUri(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/helpshift/HSAddIssueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/helpshift/util/AttachmentUtil;->getPath(Landroid/app/Activity;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 548
    .local v1, "screenshotPath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 549
    invoke-direct {p0, v1, v4}, Lcom/helpshift/HSAddIssueFragment;->showScreenshotPreview(Ljava/lang/String;I)V

    .line 575
    .end local v1    # "screenshotPath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    const/16 v2, 0x7fbb

    if-ne p1, v2, :cond_3

    .line 553
    invoke-static {v3}, Lcom/helpshift/HSConversation;->setKeepActivityActive(Z)V

    .line 554
    const-string/jumbo v2, "action"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 556
    const-string/jumbo v2, "startConversation"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 557
    invoke-virtual {p0}, Lcom/helpshift/HSAddIssueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "search_performed"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 558
    iput-boolean v4, p0, Lcom/helpshift/HSAddIssueFragment;->sendAnyway:Z

    .line 559
    invoke-direct {p0}, Lcom/helpshift/HSAddIssueFragment;->startNewConversation()V

    goto :goto_0

    .line 560
    :cond_2
    const-string/jumbo v2, "ticketAvoided"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 561
    invoke-virtual {p0}, Lcom/helpshift/HSAddIssueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 565
    .end local v0    # "action":Ljava/lang/String;
    :cond_3
    invoke-static {v3}, Lcom/helpshift/HSConversation;->setKeepActivityActive(Z)V

    .line 566
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "SCREENSHOT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 567
    .restart local v1    # "screenshotPath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 568
    invoke-direct {p0, v1}, Lcom/helpshift/HSAddIssueFragment;->saveScreenshot(Ljava/lang/String;)V

    .line 569
    invoke-direct {p0, v1}, Lcom/helpshift/HSAddIssueFragment;->setScreenshot(Ljava/lang/String;)V

    goto :goto_0

    .line 571
    :cond_4
    invoke-direct {p0}, Lcom/helpshift/HSAddIssueFragment;->clearScreenshot()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 739
    sget v0, Lcom/helpshift/D$menu;->hs__add_conversation_menu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 742
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    invoke-virtual {v0, p1, p2}, Lcom/helpshift/app/ActionBarHelper;->setupIndeterminateProgressBar(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 744
    sget v0, Lcom/helpshift/D$id;->hs__action_add_conversation:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->addIssueMenuItem:Landroid/view/MenuItem;

    .line 745
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->activity:Lcom/helpshift/HSActivity;

    iget-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->addIssueMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/util/Styles;->setActionButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 747
    sget v0, Lcom/helpshift/D$id;->hs__attach_screenshot:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->attachScreenshotMenu:Landroid/view/MenuItem;

    .line 748
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->activity:Lcom/helpshift/HSActivity;

    iget-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->attachScreenshotMenu:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/util/Styles;->setActionButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 750
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->hsStorage:Lcom/helpshift/HSStorage;

    invoke-virtual {v0}, Lcom/helpshift/HSStorage;->getEnableFullPrivacy()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    sget v0, Lcom/helpshift/D$id;->hs__attach_screenshot:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 755
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/helpshift/HSAddIssueFragment;->setIsReportingIssue(Z)V

    .line 756
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x400

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 317
    invoke-virtual {p0}, Lcom/helpshift/HSAddIssueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/helpshift/HSActivity;

    iput-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->activity:Lcom/helpshift/HSActivity;

    .line 318
    invoke-virtual {p0}, Lcom/helpshift/HSAddIssueFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->extras:Landroid/os/Bundle;

    .line 319
    iget-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-virtual {v1}, Lcom/helpshift/HSActivity;->getActionBarHelper()Lcom/helpshift/app/ActionBarHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    .line 321
    iget-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "showInFullScreen"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 323
    .local v0, "isFullScreen":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-virtual {v1}, Lcom/helpshift/HSActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 328
    :cond_0
    new-instance v1, Lcom/helpshift/HSApiData;

    iget-object v2, p0, Lcom/helpshift/HSAddIssueFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-direct {v1, v2}, Lcom/helpshift/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->hsApiData:Lcom/helpshift/HSApiData;

    .line 329
    iget-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->hsApiData:Lcom/helpshift/HSApiData;

    iget-object v1, v1, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    iput-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->hsStorage:Lcom/helpshift/HSStorage;

    .line 330
    iget-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->hsApiData:Lcom/helpshift/HSApiData;

    iget-object v1, v1, Lcom/helpshift/HSApiData;->client:Lcom/helpshift/HSApiClient;

    iput-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->hsApiClient:Lcom/helpshift/HSApiClient;

    .line 331
    invoke-static {}, Lcom/helpshift/Helpshift;->getDelegate()Lcom/helpshift/Helpshift$HelpshiftDelegate;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->helpshiftDelegate:Lcom/helpshift/Helpshift$HelpshiftDelegate;

    .line 333
    invoke-direct {p0}, Lcom/helpshift/HSAddIssueFragment;->isSearchOnNewConversationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    iget-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->hsApiData:Lcom/helpshift/HSApiData;

    new-instance v2, Lcom/helpshift/HSAddIssueFragment$7;

    invoke-direct {v2, p0}, Lcom/helpshift/HSAddIssueFragment$7;-><init>(Lcom/helpshift/HSAddIssueFragment;)V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/helpshift/HSApiData;->getSections(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 342
    :cond_1
    iget-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->hsStorage:Lcom/helpshift/HSStorage;

    invoke-static {v1}, Lcom/helpshift/util/IdentityFilter;->requireEmailFromUI(Lcom/helpshift/HSStorage;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->requireEmail:Ljava/lang/Boolean;

    .line 344
    iget-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "decomp"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->decomp:Ljava/lang/Boolean;

    .line 345
    iget-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "showConvOnReportIssue"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->showConvOnReportIssue:Ljava/lang/Boolean;

    .line 347
    iget-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->decomp:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 348
    sput-boolean v5, Lcom/helpshift/HSAnalytics;->decomp:Z

    .line 351
    :cond_2
    iput-boolean v4, p0, Lcom/helpshift/HSAddIssueFragment;->searchActivityShown:Z

    .line 352
    invoke-virtual {p0, v5}, Lcom/helpshift/HSAddIssueFragment;->setHasOptionsMenu(Z)V

    .line 353
    sget v1, Lcom/helpshift/D$layout;->hs__new_conversation_fragment:I

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 310
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 311
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/helpshift/HelpshiftContext;->setViewState(Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 468
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 469
    .local v0, "id":I
    sget v2, Lcom/helpshift/D$id;->hs__action_add_conversation:I

    if-ne v0, v2, :cond_2

    .line 470
    invoke-direct {p0}, Lcom/helpshift/HSAddIssueFragment;->isFormValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 471
    iget-object v2, p0, Lcom/helpshift/HSAddIssueFragment;->desc:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/helpshift/HSAddIssueFragment;->hideKeyboard(Landroid/view/View;)V

    .line 472
    invoke-direct {p0}, Lcom/helpshift/HSAddIssueFragment;->isSearchOnNewConversationEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/helpshift/HSAddIssueFragment;->getIssueText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/helpshift/HSAddIssueFragment;->isSearchResultAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 474
    invoke-direct {p0}, Lcom/helpshift/HSAddIssueFragment;->showSearchOnNewConversation()V

    .line 487
    :cond_0
    :goto_0
    return v1

    .line 476
    :cond_1
    invoke-direct {p0}, Lcom/helpshift/HSAddIssueFragment;->startNewConversation()V

    goto :goto_0

    .line 480
    :cond_2
    const v2, 0x102002c

    if-ne v0, v2, :cond_3

    .line 481
    invoke-virtual {p0}, Lcom/helpshift/HSAddIssueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 483
    :cond_3
    sget v2, Lcom/helpshift/D$id;->hs__attach_screenshot:I

    if-ne v0, v2, :cond_4

    .line 484
    invoke-direct {p0}, Lcom/helpshift/HSAddIssueFragment;->pickImage()V

    goto :goto_0

    .line 487
    :cond_4
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 291
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 292
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/helpshift/HSAddIssueFragment;->setIsReportingIssue(Z)V

    .line 295
    iget-object v2, p0, Lcom/helpshift/HSAddIssueFragment;->hsStorage:Lcom/helpshift/HSStorage;

    invoke-virtual {v2}, Lcom/helpshift/HSStorage;->getConversationPrefillText()Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, "prefillText":Ljava/lang/String;
    iget-object v2, p0, Lcom/helpshift/HSAddIssueFragment;->hsStorage:Lcom/helpshift/HSStorage;

    iget-object v3, p0, Lcom/helpshift/HSAddIssueFragment;->hsApiData:Lcom/helpshift/HSApiData;

    invoke-virtual {v3}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/helpshift/HSStorage;->getActiveConversation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "activeConversation":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    iget-object v2, p0, Lcom/helpshift/HSAddIssueFragment;->hsStorage:Lcom/helpshift/HSStorage;

    invoke-direct {p0}, Lcom/helpshift/HSAddIssueFragment;->getIssueText()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/helpshift/HSAddIssueFragment;->hsApiData:Lcom/helpshift/HSApiData;

    invoke-virtual {v4}, Lcom/helpshift/HSApiData;->getLoginId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/helpshift/HSStorage;->storeConversationDetail(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/helpshift/HSAddIssueFragment;->screenshotPath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/helpshift/HSAddIssueFragment;->saveScreenshot(Ljava/lang/String;)V

    .line 305
    iget-object v2, p0, Lcom/helpshift/HSAddIssueFragment;->hsStorage:Lcom/helpshift/HSStorage;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/helpshift/HSStorage;->setForegroundIssue(Ljava/lang/String;)V

    .line 306
    return-void

    .line 300
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/helpshift/HSAddIssueFragment;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "dropMeta"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/helpshift/util/Meta;->setMetadataCallback(Lcom/helpshift/HSCallable;)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 760
    sget v0, Lcom/helpshift/D$id;->hs__attach_screenshot:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->attachScreenshotMenu:Landroid/view/MenuItem;

    .line 761
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->attachScreenshotMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->hsStorage:Lcom/helpshift/HSStorage;

    invoke-virtual {v0}, Lcom/helpshift/HSStorage;->getEnableFullPrivacy()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->attachScreenshotMenu:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 764
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 652
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 653
    const-string/jumbo v4, "issue-filing"

    invoke-static {v4}, Lcom/helpshift/HelpshiftContext;->setViewState(Ljava/lang/String;)V

    .line 654
    iget-boolean v4, p0, Lcom/helpshift/HSAddIssueFragment;->sendAnyway:Z

    if-nez v4, :cond_0

    .line 655
    const-string/jumbo v4, "i"

    invoke-static {v4}, Lcom/helpshift/HSFunnel;->pushEvent(Ljava/lang/String;)V

    .line 658
    :cond_0
    const-string/jumbo v0, ""

    .line 659
    .local v0, "initText":Ljava/lang/String;
    iget-object v4, p0, Lcom/helpshift/HSAddIssueFragment;->hsStorage:Lcom/helpshift/HSStorage;

    iget-object v5, p0, Lcom/helpshift/HSAddIssueFragment;->hsApiData:Lcom/helpshift/HSApiData;

    invoke-virtual {v5}, Lcom/helpshift/HSApiData;->getLoginId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/helpshift/HSStorage;->getConversationDetail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 660
    .local v3, "storedText":Ljava/lang/String;
    iget-object v4, p0, Lcom/helpshift/HSAddIssueFragment;->hsStorage:Lcom/helpshift/HSStorage;

    invoke-virtual {v4}, Lcom/helpshift/HSStorage;->getConversationPrefillText()Ljava/lang/String;

    move-result-object v2

    .line 662
    .local v2, "prefillText":Ljava/lang/String;
    iget-object v4, p0, Lcom/helpshift/HSAddIssueFragment;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    .line 663
    iget-object v4, p0, Lcom/helpshift/HSAddIssueFragment;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "message"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 664
    .local v1, "input":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 665
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 669
    .end local v1    # "input":Ljava/lang/String;
    :cond_1
    iget-boolean v4, p0, Lcom/helpshift/HSAddIssueFragment;->selectingScreenshot:Z

    if-nez v4, :cond_2

    .line 674
    iget-boolean v4, p0, Lcom/helpshift/HSAddIssueFragment;->searchActivityShown:Z

    if-eqz v4, :cond_3

    .line 675
    iget-object v4, p0, Lcom/helpshift/HSAddIssueFragment;->desc:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    :goto_0
    iput-boolean v6, p0, Lcom/helpshift/HSAddIssueFragment;->selectingScreenshot:Z

    .line 686
    :cond_2
    iput-boolean v6, p0, Lcom/helpshift/HSAddIssueFragment;->sendAnyway:Z

    .line 687
    iput-boolean v6, p0, Lcom/helpshift/HSAddIssueFragment;->searchActivityShown:Z

    .line 688
    iget-object v4, p0, Lcom/helpshift/HSAddIssueFragment;->desc:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->requestFocus()Z

    .line 689
    iget-object v4, p0, Lcom/helpshift/HSAddIssueFragment;->hsStorage:Lcom/helpshift/HSStorage;

    iget-object v5, p0, Lcom/helpshift/HSAddIssueFragment;->hsApiData:Lcom/helpshift/HSApiData;

    invoke-virtual {v5}, Lcom/helpshift/HSApiData;->getLoginId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/helpshift/HSStorage;->getConversationScreenshot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/helpshift/HSAddIssueFragment;->setScreenshot(Ljava/lang/String;)V

    .line 690
    return-void

    .line 676
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 677
    iget-object v4, p0, Lcom/helpshift/HSAddIssueFragment;->desc:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 678
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 679
    iget-object v4, p0, Lcom/helpshift/HSAddIssueFragment;->desc:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 681
    :cond_5
    iget-object v4, p0, Lcom/helpshift/HSAddIssueFragment;->desc:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 721
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 722
    iget-boolean v0, p0, Lcom/helpshift/HSAddIssueFragment;->selectImage:Z

    if-nez v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-static {v0}, Lcom/helpshift/HSAnalytics;->onActivityStarted(Landroid/app/Activity;)V

    .line 725
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpshift/HSAddIssueFragment;->selectImage:Z

    .line 726
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 730
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 731
    iget-boolean v0, p0, Lcom/helpshift/HSAddIssueFragment;->selectImage:Z

    if-nez v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-static {v0}, Lcom/helpshift/HSAnalytics;->onActivityStopped(Landroid/app/Activity;)V

    .line 734
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x8

    .line 360
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 362
    sget v0, Lcom/helpshift/D$id;->hs__conversationDetail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->desc:Landroid/widget/TextView;

    .line 363
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->desc:Landroid/widget/TextView;

    new-instance v1, Lcom/helpshift/HSAddIssueFragment$8;

    invoke-direct {v1, p0}, Lcom/helpshift/HSAddIssueFragment$8;-><init>(Lcom/helpshift/HSAddIssueFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 378
    sget v0, Lcom/helpshift/D$id;->hs__username:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->userNameField:Landroid/widget/EditText;

    .line 379
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->userNameField:Landroid/widget/EditText;

    new-instance v1, Lcom/helpshift/HSAddIssueFragment$9;

    invoke-direct {v1, p0}, Lcom/helpshift/HSAddIssueFragment$9;-><init>(Lcom/helpshift/HSAddIssueFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 394
    sget v0, Lcom/helpshift/D$id;->hs__email:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->emailField:Landroid/widget/EditText;

    .line 395
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->emailField:Landroid/widget/EditText;

    new-instance v1, Lcom/helpshift/HSAddIssueFragment$10;

    invoke-direct {v1, p0}, Lcom/helpshift/HSAddIssueFragment$10;-><init>(Lcom/helpshift/HSAddIssueFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 410
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->requireEmail:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->emailField:Landroid/widget/EditText;

    sget v1, Lcom/helpshift/D$string;->hs__email_required_hint:I

    invoke-virtual {p0, v1}, Lcom/helpshift/HSAddIssueFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->hsStorage:Lcom/helpshift/HSStorage;

    invoke-static {v0}, Lcom/helpshift/util/IdentityFilter;->sendNameEmail(Lcom/helpshift/HSStorage;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->userNameField:Landroid/widget/EditText;

    const-string/jumbo v1, "Anonymous"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->hsApiData:Lcom/helpshift/HSApiData;

    invoke-static {v0}, Lcom/helpshift/util/IdentityFilter;->showNameEmailForm(Lcom/helpshift/HSApiData;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->userNameField:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->emailField:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 426
    :goto_0
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-virtual {v0}, Lcom/helpshift/HSActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 428
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/helpshift/app/ActionBarHelper;->setDisplayHomeAsUpEnabled(Z)V

    .line 429
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->actionBarHelper:Lcom/helpshift/app/ActionBarHelper;

    sget v1, Lcom/helpshift/D$string;->hs__new_conversation_header:I

    invoke-virtual {p0, v1}, Lcom/helpshift/HSAddIssueFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/app/ActionBarHelper;->setTitle(Ljava/lang/String;)V

    .line 431
    sget v0, Lcom/helpshift/D$id;->hs__screenshot:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->screenshot:Landroid/widget/ImageView;

    .line 432
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->screenshot:Landroid/widget/ImageView;

    new-instance v1, Lcom/helpshift/HSAddIssueFragment$11;

    invoke-direct {v1, p0}, Lcom/helpshift/HSAddIssueFragment$11;-><init>(Lcom/helpshift/HSAddIssueFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    const v0, 0x102001a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->clearBtn:Landroid/widget/ImageButton;

    .line 440
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->clearBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/helpshift/HSAddIssueFragment$12;

    invoke-direct {v1, p0}, Lcom/helpshift/HSAddIssueFragment$12;-><init>(Lcom/helpshift/HSAddIssueFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    return-void

    .line 422
    :cond_2
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->userNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->hsApiData:Lcom/helpshift/HSApiData;

    invoke-virtual {v1}, Lcom/helpshift/HSApiData;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v0, p0, Lcom/helpshift/HSAddIssueFragment;->emailField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/helpshift/HSAddIssueFragment;->hsApiData:Lcom/helpshift/HSApiData;

    invoke-virtual {v1}, Lcom/helpshift/HSApiData;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
