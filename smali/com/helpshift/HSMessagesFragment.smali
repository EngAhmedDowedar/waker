.class public Lcom/helpshift/HSMessagesFragment;
.super Landroid/support/v4/app/Fragment;
.source "HSMessagesFragment.java"

# interfaces
.implements Lcom/helpshift/widget/CSATView$CSATListener;
.implements Lcom/helpshift/DownloadTaskCallBacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/HSMessagesFragment$DownloadImagesTask;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "HelpShiftDebug"


# instance fields
.field private final MESSAGE_POLL_DURATION:I

.field private activity:Lcom/helpshift/HSActivity;

.field private adapter:Lcom/helpshift/customadapters/MessagesAdapter;

.field private attachScreenshotMenu:Landroid/view/MenuItem;

.field private chatLaunchSource:Ljava/lang/String;

.field private confirmationBox:Landroid/widget/LinearLayout;

.field private final connChecker:Landroid/content/BroadcastReceiver;

.field private csatView:Lcom/helpshift/widget/CSATView;

.field private csatViewStub:Landroid/view/ViewStub;

.field private decomp:Ljava/lang/Boolean;

.field private downloadTaskCallBacks:Lcom/helpshift/DownloadTaskCallBacks;

.field private enableNCRMessage:Z

.field private extras:Landroid/os/Bundle;

.field private final failedMessageRequestChecker:Landroid/content/BroadcastReceiver;

.field private fetchMessagesFailure:Landroid/os/Handler;

.field private fetchMessagesSuccess:Landroid/os/Handler;

.field private helpshiftDelegate:Lcom/helpshift/Helpshift$HelpshiftDelegate;

.field private hsApiData:Lcom/helpshift/HSApiData;

.field private hsClient:Lcom/helpshift/HSApiClient;

.field private hsStorage:Lcom/helpshift/HSStorage;

.field private issueId:Ljava/lang/String;

.field private messageBox:Landroid/widget/RelativeLayout;

.field private messageIdsSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private messagesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/viewstructs/HSMsg;",
            ">;"
        }
    .end annotation
.end field

.field private messagesListFooterView:Landroid/widget/TextView;

.field private messagesListView:Landroid/widget/ListView;

.field private newActivity:Z

.field private newConversationBox:Landroid/widget/LinearLayout;

.field private newConversationBtn:Landroid/widget/Button;

.field private newIssue:Ljava/lang/Boolean;

.field private persistMessageBox:Z

.field private pollerThread:Ljava/lang/Thread;

.field private pollerThreadHandler:Landroid/os/Handler;

.field private replyFailHandler:Landroid/os/Handler;

.field private replyField:Landroid/widget/EditText;

.field private replyHandler:Landroid/os/Handler;

.field private scReferIdsSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectImage:Z

.field private showAgentName:Z

.field private showConvOnReportIssue:Ljava/lang/Boolean;

.field private showingConfirmationBox:Z

.field private showingNewConversationBox:Z

.field private solvedBtn:Landroid/widget/ImageButton;

.field private ssMsgPos:Ljava/lang/String;

.field private unsolvedBtn:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 54
    new-instance v0, Lcom/helpshift/HSMessagesFragment$1;

    invoke-direct {v0, p0}, Lcom/helpshift/HSMessagesFragment$1;-><init>(Lcom/helpshift/HSMessagesFragment;)V

    iput-object v0, p0, Lcom/helpshift/HSMessagesFragment;->failedMessageRequestChecker:Landroid/content/BroadcastReceiver;

    .line 61
    new-instance v0, Lcom/helpshift/HSMessagesFragment$2;

    invoke-direct {v0, p0}, Lcom/helpshift/HSMessagesFragment$2;-><init>(Lcom/helpshift/HSMessagesFragment;)V

    iput-object v0, p0, Lcom/helpshift/HSMessagesFragment;->connChecker:Landroid/content/BroadcastReceiver;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helpshift/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/helpshift/HSMessagesFragment;->messageIdsSet:Ljava/util/HashSet;

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/helpshift/HSMessagesFragment;->scReferIdsSet:Ljava/util/HashSet;

    .line 82
    const/4 v0, 0x3

    iput v0, p0, Lcom/helpshift/HSMessagesFragment;->MESSAGE_POLL_DURATION:I

    .line 88
    iput-boolean v1, p0, Lcom/helpshift/HSMessagesFragment;->selectImage:Z

    .line 96
    iput-boolean v1, p0, Lcom/helpshift/HSMessagesFragment;->persistMessageBox:Z

    .line 97
    iput-boolean v2, p0, Lcom/helpshift/HSMessagesFragment;->enableNCRMessage:Z

    .line 98
    iput-boolean v2, p0, Lcom/helpshift/HSMessagesFragment;->newActivity:Z

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/HSMessagesFragment;->csatView:Lcom/helpshift/widget/CSATView;

    .line 103
    iput-boolean v1, p0, Lcom/helpshift/HSMessagesFragment;->showingConfirmationBox:Z

    .line 104
    iput-boolean v1, p0, Lcom/helpshift/HSMessagesFragment;->showingNewConversationBox:Z

    .line 120
    new-instance v0, Lcom/helpshift/HSMessagesFragment$3;

    invoke-direct {v0, p0}, Lcom/helpshift/HSMessagesFragment$3;-><init>(Lcom/helpshift/HSMessagesFragment;)V

    iput-object v0, p0, Lcom/helpshift/HSMessagesFragment;->fetchMessagesSuccess:Landroid/os/Handler;

    .line 133
    new-instance v0, Lcom/helpshift/HSMessagesFragment$4;

    invoke-direct {v0, p0}, Lcom/helpshift/HSMessagesFragment$4;-><init>(Lcom/helpshift/HSMessagesFragment;)V

    iput-object v0, p0, Lcom/helpshift/HSMessagesFragment;->fetchMessagesFailure:Landroid/os/Handler;

    .line 157
    new-instance v0, Lcom/helpshift/HSMessagesFragment$5;

    invoke-direct {v0, p0}, Lcom/helpshift/HSMessagesFragment$5;-><init>(Lcom/helpshift/HSMessagesFragment;)V

    iput-object v0, p0, Lcom/helpshift/HSMessagesFragment;->replyHandler:Landroid/os/Handler;

    .line 163
    new-instance v0, Lcom/helpshift/HSMessagesFragment$6;

    invoke-direct {v0, p0}, Lcom/helpshift/HSMessagesFragment$6;-><init>(Lcom/helpshift/HSMessagesFragment;)V

    iput-object v0, p0, Lcom/helpshift/HSMessagesFragment;->replyFailHandler:Landroid/os/Handler;

    .line 1381
    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/HSMessagesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSMessagesFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/helpshift/HSMessagesFragment;->refreshMessages()V

    return-void
.end method

.method static synthetic access$1000(Lcom/helpshift/HSMessagesFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSMessagesFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->fetchMessagesSuccess:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/helpshift/HSMessagesFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSMessagesFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/helpshift/HSMessagesFragment;->showAgentName:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/helpshift/HSMessagesFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSMessagesFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->fetchMessagesFailure:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/helpshift/HSMessagesFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSMessagesFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->chatLaunchSource:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/helpshift/HSMessagesFragment;)Lcom/helpshift/HSApiData;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSMessagesFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->hsApiData:Lcom/helpshift/HSApiData;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/helpshift/HSMessagesFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSMessagesFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->replyField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/helpshift/HSMessagesFragment;)Lcom/helpshift/HSStorage;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSMessagesFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/helpshift/HSMessagesFragment;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSMessagesFragment;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/helpshift/HSMessagesFragment;->sendResolutionEvent(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$1702(Lcom/helpshift/HSMessagesFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSMessagesFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/helpshift/HSMessagesFragment;->persistMessageBox:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/helpshift/HSMessagesFragment;)Lcom/helpshift/Helpshift$HelpshiftDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSMessagesFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->helpshiftDelegate:Lcom/helpshift/Helpshift$HelpshiftDelegate;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/helpshift/HSMessagesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSMessagesFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/helpshift/HSMessagesFragment;->showMessageBox()V

    return-void
.end method

.method static synthetic access$200(Lcom/helpshift/HSMessagesFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSMessagesFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->issueId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/helpshift/HSMessagesFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSMessagesFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/helpshift/HSMessagesFragment;->showKeyboard(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/helpshift/HSMessagesFragment;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSMessagesFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/helpshift/HSMessagesFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSMessagesFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->replyHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/helpshift/HSMessagesFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSMessagesFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->replyFailHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/helpshift/HSMessagesFragment;Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSMessagesFragment;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # Landroid/os/Handler;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct/range {p0 .. p6}, Lcom/helpshift/HSMessagesFragment;->addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/helpshift/HSMessagesFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSMessagesFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/helpshift/HSMessagesFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSMessagesFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/helpshift/HSMessagesFragment;->gotoApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/helpshift/HSMessagesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSMessagesFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/helpshift/HSMessagesFragment;->refreshStatus()V

    return-void
.end method

.method static synthetic access$400(Lcom/helpshift/HSMessagesFragment;)Lcom/helpshift/customadapters/MessagesAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSMessagesFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->adapter:Lcom/helpshift/customadapters/MessagesAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/helpshift/HSMessagesFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSMessagesFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/helpshift/HSMessagesFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSMessagesFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->pollerThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$602(Lcom/helpshift/HSMessagesFragment;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSMessagesFragment;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/helpshift/HSMessagesFragment;->pollerThreadHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$700(Lcom/helpshift/HSMessagesFragment;)Lcom/helpshift/HSActivity;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSMessagesFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->activity:Lcom/helpshift/HSActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/helpshift/HSMessagesFragment;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSMessagesFragment;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/helpshift/HSMessagesFragment;->renderReplyMsg(Landroid/os/Message;)V

    return-void
.end method

.method private addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "issueId"    # Ljava/lang/String;
    .param p4, "messageText"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "refers"    # Ljava/lang/String;

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/HSStorage;->setScreenShotDraft(Ljava/lang/Boolean;)V

    .line 1465
    const-string/jumbo v0, "ar"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1466
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->hsApiData:Lcom/helpshift/HSApiData;

    sget-object v1, Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_NOT_APPLICABLE:Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;

    invoke-virtual {v0, p3, v1}, Lcom/helpshift/HSApiData;->setCSatState(Ljava/lang/String;Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;)Ljava/lang/Boolean;

    .line 1468
    :cond_0
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->hsApiData:Lcom/helpshift/HSApiData;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/helpshift/HSApiData;->addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    return-void
.end method

.method private addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "issueId"    # Ljava/lang/String;
    .param p4, "messageText"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "refers"    # Ljava/lang/String;
    .param p7, "failedState"    # I

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/HSStorage;->setScreenShotDraft(Ljava/lang/Boolean;)V

    .line 1484
    const-string/jumbo v0, "ar"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1485
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->hsApiData:Lcom/helpshift/HSApiData;

    sget-object v1, Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_NOT_APPLICABLE:Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;

    invoke-virtual {v0, p3, v1}, Lcom/helpshift/HSApiData;->setCSatState(Ljava/lang/String;Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;)Ljava/lang/Boolean;

    .line 1487
    :cond_0
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->hsApiData:Lcom/helpshift/HSApiData;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/helpshift/HSApiData;->addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1494
    return-void
.end method

.method private changeNewConversationButtonMargin(Landroid/content/res/Configuration;)V
    .locals 10
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/16 v9, 0x1c

    const/4 v8, 0x6

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 624
    iget-object v4, p0, Lcom/helpshift/HSMessagesFragment;->newConversationBtn:Landroid/widget/Button;

    if-eqz v4, :cond_0

    .line 629
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 630
    invoke-direct {p0, v9}, Lcom/helpshift/HSMessagesFragment;->dpToPixel(I)I

    move-result v3

    .line 631
    .local v3, "topMargin":I
    const/16 v4, 0x20

    invoke-direct {p0, v4}, Lcom/helpshift/HSMessagesFragment;->dpToPixel(I)I

    move-result v0

    .line 632
    .local v0, "bottomMargin":I
    invoke-direct {p0, v9}, Lcom/helpshift/HSMessagesFragment;->dpToPixel(I)I

    move-result v1

    .line 639
    .local v1, "dividerTopMargin":I
    :goto_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 641
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v6, v3, v6, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 642
    iget-object v4, p0, Lcom/helpshift/HSMessagesFragment;->newConversationBtn:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 644
    iget-object v4, p0, Lcom/helpshift/HSMessagesFragment;->csatView:Lcom/helpshift/widget/CSATView;

    if-eqz v4, :cond_0

    .line 645
    iget-object v4, p0, Lcom/helpshift/HSMessagesFragment;->csatView:Lcom/helpshift/widget/CSATView;

    invoke-virtual {v4, v6, v1, v6, v6}, Lcom/helpshift/widget/CSATView;->setDividerMargin(IIII)V

    .line 648
    .end local v0    # "bottomMargin":I
    .end local v1    # "dividerTopMargin":I
    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "topMargin":I
    :cond_0
    return-void

    .line 634
    :cond_1
    invoke-direct {p0, v8}, Lcom/helpshift/HSMessagesFragment;->dpToPixel(I)I

    move-result v3

    .line 635
    .restart local v3    # "topMargin":I
    invoke-direct {p0, v8}, Lcom/helpshift/HSMessagesFragment;->dpToPixel(I)I

    move-result v0

    .line 636
    .restart local v0    # "bottomMargin":I
    const/4 v1, 0x0

    .restart local v1    # "dividerTopMargin":I
    goto :goto_0
.end method

.method private dpToPixel(I)I
    .locals 2
    .param p1, "dpValue"    # I

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/helpshift/HSMessagesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 652
    .local v0, "d":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method private gotoApp(Ljava/lang/String;)V
    .locals 4
    .param p1, "marketUrl"    # Ljava/lang/String;

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0}, Lcom/helpshift/HSMessagesFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/helpshift/HSMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {p0, v0}, Lcom/helpshift/HSMessagesFragment;->startActivity(Landroid/content/Intent;)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-static {v1, v2, v3}, Lcom/helpshift/util/HSErrors;->showFailToast(ILandroid/app/ProgressDialog;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private hideKeyboard(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 288
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->activity:Lcom/helpshift/HSActivity;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/helpshift/HSActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 289
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 290
    return-void
.end method

.method private inflateCSATView()Lcom/helpshift/widget/CSATView;
    .locals 4

    .prologue
    .line 236
    const/4 v0, 0x0

    .line 238
    .local v0, "rView":Lcom/helpshift/widget/CSATView;
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->csatViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->csatViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .end local v0    # "rView":Lcom/helpshift/widget/CSATView;
    check-cast v0, Lcom/helpshift/widget/CSATView;

    .line 240
    .restart local v0    # "rView":Lcom/helpshift/widget/CSATView;
    invoke-virtual {v0, p0}, Lcom/helpshift/widget/CSATView;->setCSATListener(Lcom/helpshift/widget/CSATView$CSATListener;)V

    .line 241
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/helpshift/HSMessagesFragment;->csatViewStub:Landroid/view/ViewStub;

    .line 242
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->hsApiData:Lcom/helpshift/HSApiData;

    iget-object v2, p0, Lcom/helpshift/HSMessagesFragment;->issueId:Ljava/lang/String;

    sget-object v3, Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_REQUESTED:Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;

    invoke-virtual {v1, v2, v3}, Lcom/helpshift/HSApiData;->setCSatState(Ljava/lang/String;Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;)Ljava/lang/Boolean;

    .line 245
    :cond_0
    return-object v0
.end method

.method private refreshMessages()V
    .locals 3

    .prologue
    .line 293
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->hsApiData:Lcom/helpshift/HSApiData;

    iget-object v2, p0, Lcom/helpshift/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/helpshift/HSApiData;->getMessagesWithFails(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 294
    .local v0, "messages":Lorg/json/JSONArray;
    invoke-direct {p0, v0}, Lcom/helpshift/HSMessagesFragment;->refreshMessages(Lorg/json/JSONArray;)V

    .line 295
    return-void
.end method

.method private refreshMessages(Lorg/json/JSONArray;)V
    .locals 34
    .param p1, "messages"    # Lorg/json/JSONArray;

    .prologue
    .line 299
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSMessagesFragment;->messageIdsSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSMessagesFragment;->scReferIdsSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 302
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v25

    .line 303
    .local v25, "messagesLength":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    .line 305
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    .line 306
    .local v23, "message":Lorg/json/JSONObject;
    const-string/jumbo v2, "id"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 307
    .local v3, "id":Ljava/lang/String;
    const-string/jumbo v2, "type"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, "type":Ljava/lang/String;
    const-string/jumbo v2, "admin_attachment_generic"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    invoke-virtual {v2, v3}, Lcom/helpshift/HSStorage;->getFilePathForGenericAttachment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 311
    .local v18, "filePath":Ljava/lang/String;
    new-instance v17, Ljava/io/File;

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 312
    .local v17, "file":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 313
    const-string/jumbo v2, "state"

    const/16 v32, 0x3

    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 346
    .end local v17    # "file":Ljava/io/File;
    .end local v18    # "filePath":Ljava/lang/String;
    :cond_0
    :goto_1
    const-string/jumbo v2, "origin"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 347
    .local v5, "origin":Ljava/lang/String;
    const-string/jumbo v2, "body"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 348
    .local v6, "body":Ljava/lang/String;
    const-string/jumbo v2, "created_at"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 349
    .local v7, "date":Ljava/lang/String;
    const-string/jumbo v2, "state"

    const/16 v32, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 350
    .local v10, "state":I
    const-string/jumbo v2, "inProgress"

    const/16 v32, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 352
    .local v11, "inProgress":Ljava/lang/Boolean;
    const-string/jumbo v2, "mobile"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string/jumbo v2, "ncr"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/helpshift/HSMessagesFragment;->enableNCRMessage:Z

    if-nez v2, :cond_b

    add-int/lit8 v2, v25, -0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_b

    .line 303
    :cond_1
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 315
    .end local v5    # "origin":Ljava/lang/String;
    .end local v6    # "body":Ljava/lang/String;
    .end local v7    # "date":Ljava/lang/String;
    .end local v10    # "state":I
    .end local v11    # "inProgress":Ljava/lang/Boolean;
    .restart local v17    # "file":Ljava/io/File;
    .restart local v18    # "filePath":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    invoke-virtual {v2, v3}, Lcom/helpshift/HSStorage;->removeFromDownloadedGenericFiles(Ljava/lang/String;)V

    .line 318
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    invoke-virtual {v2, v3}, Lcom/helpshift/HSStorage;->isDownloadActive(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    const-string/jumbo v2, "state"

    const/16 v32, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 435
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "type":Ljava/lang/String;
    .end local v17    # "file":Ljava/io/File;
    .end local v18    # "filePath":Ljava/lang/String;
    .end local v19    # "i":I
    .end local v23    # "message":Lorg/json/JSONObject;
    .end local v25    # "messagesLength":I
    :catch_0
    move-exception v16

    .line 436
    .local v16, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v32, "Slug in get(\"slug\") no found"

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 439
    .end local v16    # "e":Lorg/json/JSONException;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSMessagesFragment;->adapter:Lcom/helpshift/customadapters/MessagesAdapter;

    invoke-virtual {v2}, Lcom/helpshift/customadapters/MessagesAdapter;->notifyDataSetChanged()V

    .line 442
    :cond_5
    return-void

    .line 322
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v4    # "type":Ljava/lang/String;
    .restart local v19    # "i":I
    .restart local v23    # "message":Lorg/json/JSONObject;
    .restart local v25    # "messagesLength":I
    :cond_6
    :try_start_1
    const-string/jumbo v2, "admin_attachment_image"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    invoke-virtual {v2, v3}, Lcom/helpshift/HSStorage;->getFilePathForImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 324
    .local v21, "imagePath":Ljava/lang/String;
    new-instance v20, Ljava/io/File;

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    .local v20, "imageFile":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 326
    const-string/jumbo v2, "screenshot"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 327
    const-string/jumbo v2, "state"

    const/16 v32, 0x3

    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 329
    :cond_7
    const-string/jumbo v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    invoke-virtual {v2, v3}, Lcom/helpshift/HSStorage;->removeFromDownloadedImageFiles(Ljava/lang/String;)V

    .line 332
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    invoke-virtual {v2, v3}, Lcom/helpshift/HSStorage;->getFilePathForThumbnail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 333
    .local v30, "thumbnailPath":Ljava/lang/String;
    new-instance v29, Ljava/io/File;

    invoke-direct/range {v29 .. v30}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 334
    .local v29, "thumbnailFile":Ljava/io/File;
    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 335
    const-string/jumbo v2, "screenshot"

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    invoke-virtual {v2, v3}, Lcom/helpshift/HSStorage;->isDownloadActive(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 337
    const-string/jumbo v2, "state"

    const/16 v32, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 339
    :cond_9
    const-string/jumbo v2, "state"

    const/16 v32, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 341
    :cond_a
    const-string/jumbo v2, ""

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    invoke-virtual {v2, v3}, Lcom/helpshift/HSStorage;->removeFromDownloadedThumbnailFiles(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 358
    .end local v20    # "imageFile":Ljava/io/File;
    .end local v21    # "imagePath":Ljava/lang/String;
    .end local v29    # "thumbnailFile":Ljava/io/File;
    .end local v30    # "thumbnailPath":Ljava/lang/String;
    .restart local v5    # "origin":Ljava/lang/String;
    .restart local v6    # "body":Ljava/lang/String;
    .restart local v7    # "date":Ljava/lang/String;
    .restart local v10    # "state":I
    .restart local v11    # "inProgress":Ljava/lang/Boolean;
    :cond_b
    const-string/jumbo v2, "screenshot"

    const-string/jumbo v32, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 359
    .local v9, "screenshot":Ljava/lang/String;
    const-string/jumbo v2, "rsc"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 360
    const-string/jumbo v2, "screenshot"

    const-string/jumbo v32, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 361
    const-string/jumbo v2, "localRscMessage_"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSMessagesFragment;->scReferIdsSet:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 363
    invoke-static {v3}, Lcom/helpshift/storage/IssuesDataSource;->deleteMessage(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 368
    :cond_c
    const-string/jumbo v2, "admin"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string/jumbo v2, "rfr"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 369
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1, v3}, Lcom/helpshift/util/MessagesUtil;->isRfrAccepted(Lorg/json/JSONArray;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 374
    :cond_d
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    .line 375
    .local v27, "metaResponse":Ljava/lang/Boolean;
    const-string/jumbo v2, "meta"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    .line 377
    .local v26, "meta":Lorg/json/JSONObject;
    if-eqz v26, :cond_e

    .line 378
    const-string/jumbo v2, "response"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    .line 379
    .local v24, "messageMeta":Lorg/json/JSONObject;
    if-eqz v24, :cond_e

    .line 380
    const-string/jumbo v2, "state"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    .line 384
    .end local v24    # "messageMeta":Lorg/json/JSONObject;
    :cond_e
    const-string/jumbo v12, ""

    .line 385
    .local v12, "agentName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/helpshift/HSMessagesFragment;->showAgentName:Z

    if-eqz v2, :cond_f

    .line 386
    const-string/jumbo v2, "author"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 387
    .local v15, "author":Lorg/json/JSONObject;
    if-eqz v15, :cond_f

    .line 388
    const-string/jumbo v2, "name"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 392
    .end local v15    # "author":Lorg/json/JSONObject;
    :cond_f
    const-string/jumbo v2, "invisible"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_10
    const/4 v2, 0x1

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 393
    .local v8, "invisible":Ljava/lang/Boolean;
    invoke-static {v5, v4}, Lcom/helpshift/util/MessagesUtil;->isMessageSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSMessagesFragment;->messageIdsSet:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSMessagesFragment;->messageIdsSet:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    new-instance v2, Lcom/helpshift/viewstructs/HSMsg;

    invoke-direct/range {v2 .. v12}, Lcom/helpshift/viewstructs/HSMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    const-string/jumbo v2, "sc"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 400
    const/16 v26, 0x0

    .line 401
    const-string/jumbo v2, "meta"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    .line 402
    if-eqz v26, :cond_1

    .line 403
    const-string/jumbo v2, "attachments"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 405
    .local v14, "attachments":Lorg/json/JSONArray;
    const-string/jumbo v2, "refers"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 407
    .local v28, "refers":Ljava/lang/String;
    const-string/jumbo v2, "localRscMessage_"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSMessagesFragment;->messageIdsSet:Ljava/util/HashSet;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 409
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/helpshift/HSMessagesFragment;->removeMessage(Ljava/lang/String;)V

    .line 410
    invoke-static/range {v28 .. v28}, Lcom/helpshift/storage/IssuesDataSource;->deleteMessage(Ljava/lang/String;)V

    .line 416
    :cond_11
    :goto_4
    if-eqz v14, :cond_14

    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_14

    if-eqz v28, :cond_14

    .line 418
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 419
    .local v13, "attachment":Lorg/json/JSONObject;
    if-eqz v13, :cond_1

    .line 420
    const-string/jumbo v2, "url"

    const-string/jumbo v32, ""

    move-object/from16 v0, v32

    invoke-virtual {v13, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 421
    .local v31, "url":Ljava/lang/String;
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 422
    .local v22, "imgData":Ljava/util/HashMap;
    const-string/jumbo v2, "url"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const-string/jumbo v2, "messageId"

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string/jumbo v2, "attachId"

    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string/jumbo v2, "position"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    add-int/lit8 v32, v32, -0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    new-instance v2, Lcom/helpshift/HSMessagesFragment$DownloadImagesTask;

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v2, v0, v1}, Lcom/helpshift/HSMessagesFragment$DownloadImagesTask;-><init>(Lcom/helpshift/HSMessagesFragment;Lcom/helpshift/HSMessagesFragment$1;)V

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/util/HashMap;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v22, v32, v33

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Lcom/helpshift/HSMessagesFragment$DownloadImagesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    .line 392
    .end local v8    # "invisible":Ljava/lang/Boolean;
    .end local v13    # "attachment":Lorg/json/JSONObject;
    .end local v14    # "attachments":Lorg/json/JSONArray;
    .end local v22    # "imgData":Ljava/util/HashMap;
    .end local v28    # "refers":Ljava/lang/String;
    .end local v31    # "url":Ljava/lang/String;
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 412
    .restart local v8    # "invisible":Ljava/lang/Boolean;
    .restart local v14    # "attachments":Lorg/json/JSONArray;
    .restart local v28    # "refers":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/HSMessagesFragment;->scReferIdsSet:Ljava/util/HashSet;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 428
    :cond_14
    if-nez v14, :cond_1

    .line 429
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/helpshift/HSMessagesFragment;->removeMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method private refreshStatus()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 174
    iget-object v4, p0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    iget-object v5, p0, Lcom/helpshift/HSMessagesFragment;->hsApiData:Lcom/helpshift/HSApiData;

    invoke-virtual {v5}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/helpshift/HSStorage;->getOpenConversations(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 175
    .local v1, "openConversations":Ljava/util/List;
    iget-object v4, p0, Lcom/helpshift/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-static {v4}, Lcom/helpshift/storage/IssuesDataSource;->getIssue(Ljava/lang/String;)Lcom/helpshift/models/Issue;

    move-result-object v0

    .line 176
    .local v0, "issue":Lcom/helpshift/models/Issue;
    invoke-virtual {v0}, Lcom/helpshift/models/Issue;->getStatus()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 177
    .local v3, "status":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    iget-object v5, p0, Lcom/helpshift/HSMessagesFragment;->hsApiData:Lcom/helpshift/HSApiData;

    invoke-virtual {v5}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/helpshift/HSStorage;->getReply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 179
    .local v2, "replyLength":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/helpshift/HSMessagesFragment;->showMessageBox()V

    .line 182
    iput-boolean v6, p0, Lcom/helpshift/HSMessagesFragment;->persistMessageBox:Z

    .line 192
    :cond_1
    :goto_0
    return-void

    .line 183
    :cond_2
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 184
    iget-object v4, p0, Lcom/helpshift/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 185
    invoke-direct {p0}, Lcom/helpshift/HSMessagesFragment;->showConfirmationBox()V

    goto :goto_0

    .line 186
    :cond_3
    iget-boolean v4, p0, Lcom/helpshift/HSMessagesFragment;->persistMessageBox:Z

    if-nez v4, :cond_4

    if-nez v2, :cond_4

    iget-object v4, p0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    invoke-virtual {v4}, Lcom/helpshift/HSStorage;->getScreenShotDraft()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 187
    :cond_4
    invoke-direct {p0}, Lcom/helpshift/HSMessagesFragment;->showMessageBox()V

    goto :goto_0

    .line 189
    :cond_5
    invoke-direct {p0}, Lcom/helpshift/HSMessagesFragment;->showNewConversationBox()V

    goto :goto_0
.end method

.method private removeMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 445
    iget-object v2, p0, Lcom/helpshift/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 446
    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 447
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/viewstructs/HSMsg;

    .line 448
    .local v1, "msg":Lcom/helpshift/viewstructs/HSMsg;
    iget-object v2, v1, Lcom/helpshift/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 449
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 452
    .end local v1    # "msg":Lcom/helpshift/viewstructs/HSMsg;
    :cond_1
    iget-object v2, p0, Lcom/helpshift/HSMessagesFragment;->messageIdsSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 453
    return-void
.end method

.method private renderReplyMsg(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 147
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    .line 148
    .local v2, "result":Ljava/util/HashMap;
    const-string/jumbo v3, "response"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 149
    .local v0, "message":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 150
    .local v1, "messages":Lorg/json/JSONArray;
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 152
    invoke-static {v1}, Lcom/helpshift/util/IssuesUtil;->jsonArrayToMessageList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/helpshift/storage/IssuesDataSource;->storeMessages(Ljava/util/List;)I

    .line 154
    invoke-direct {p0}, Lcom/helpshift/HSMessagesFragment;->refreshMessages()V

    .line 155
    return-void
.end method

.method private sendResolutionEvent(Ljava/lang/Boolean;)V
    .locals 9
    .param p1, "accepted"    # Ljava/lang/Boolean;

    .prologue
    .line 809
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->issueId:Ljava/lang/String;

    iget-object v2, p0, Lcom/helpshift/HSMessagesFragment;->hsApiData:Lcom/helpshift/HSApiData;

    invoke-virtual {v2}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/HSStorage;->clearAndUpdateActiveConversation(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 813
    .local v8, "eventData":Lorg/json/JSONObject;
    const-string/jumbo v0, "id"

    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 814
    const-string/jumbo v5, ""

    .line 815
    .local v5, "messageType":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    const-string/jumbo v0, "y"

    invoke-static {v0, v8}, Lcom/helpshift/HSFunnel;->pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 817
    const-string/jumbo v5, "ca"

    .line 822
    :goto_0
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->replyHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/helpshift/HSMessagesFragment;->replyFailHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment;->issueId:Ljava/lang/String;

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/helpshift/HSMessagesFragment;->addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->hsApiData:Lcom/helpshift/HSApiData;

    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->issueId:Ljava/lang/String;

    sget-object v2, Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_APPLICABLE:Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/HSApiData;->setCSatState(Ljava/lang/String;Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;)Ljava/lang/Boolean;

    .line 829
    .end local v5    # "messageType":Ljava/lang/String;
    .end local v8    # "eventData":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 819
    .restart local v5    # "messageType":Ljava/lang/String;
    .restart local v8    # "eventData":Lorg/json/JSONObject;
    :cond_0
    const-string/jumbo v0, "n"

    invoke-static {v0, v8}, Lcom/helpshift/HSFunnel;->pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 820
    const-string/jumbo v5, "ncr"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 826
    .end local v5    # "messageType":Ljava/lang/String;
    .end local v8    # "eventData":Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    .line 827
    .local v7, "e":Lorg/json/JSONException;
    const-string/jumbo v0, "HelpShiftDebug"

    const-string/jumbo v1, "JSONException"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private setMessagesListViewFooter(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 263
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->messagesListFooterView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 264
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->messagesListFooterView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 266
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->messagesListFooterView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 268
    :cond_0
    return-void
.end method

.method private showConfirmationBox()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 195
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->adapter:Lcom/helpshift/customadapters/MessagesAdapter;

    invoke-virtual {v1, v2}, Lcom/helpshift/customadapters/MessagesAdapter;->enableButtons(Z)V

    .line 196
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->confirmationBox:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 198
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->messageBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 199
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->replyField:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/helpshift/HSMessagesFragment;->hideKeyboard(Landroid/view/View;)V

    .line 200
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 202
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->confirmationBox:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->confirmationBox:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->newConversationBox:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 206
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->attachScreenshotMenu:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->attachScreenshotMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 209
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/helpshift/HSMessagesFragment;->showingConfirmationBox:Z

    .line 210
    sget v1, Lcom/helpshift/D$string;->hs__confirmation_footer_msg:I

    invoke-direct {p0, v1}, Lcom/helpshift/HSMessagesFragment;->setMessagesListViewFooter(I)V

    .line 211
    return-void
.end method

.method private showKeyboard(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 282
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 283
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->activity:Lcom/helpshift/HSActivity;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/helpshift/HSActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 284
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 285
    return-void
.end method

.method private showMessageBox()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x1

    .line 271
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->adapter:Lcom/helpshift/customadapters/MessagesAdapter;

    invoke-virtual {v0, v2}, Lcom/helpshift/customadapters/MessagesAdapter;->enableButtons(Z)V

    .line 272
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->confirmationBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->newConversationBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->messageBox:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->attachScreenshotMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    invoke-virtual {v0}, Lcom/helpshift/HSStorage;->getEnableFullPrivacy()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->attachScreenshotMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 278
    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/helpshift/HSMessagesFragment;->setMessagesListViewFooter(I)V

    .line 279
    return-void
.end method

.method private showNewConversationBox()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 214
    iput-boolean v2, p0, Lcom/helpshift/HSMessagesFragment;->enableNCRMessage:Z

    .line 215
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->adapter:Lcom/helpshift/customadapters/MessagesAdapter;

    invoke-virtual {v1, v2}, Lcom/helpshift/customadapters/MessagesAdapter;->enableButtons(Z)V

    .line 216
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->replyField:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/helpshift/HSMessagesFragment;->hideKeyboard(Landroid/view/View;)V

    .line 217
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->confirmationBox:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 218
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->newConversationBox:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 219
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->messageBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 220
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->attachScreenshotMenu:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->attachScreenshotMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->hsApiData:Lcom/helpshift/HSApiData;

    iget-object v2, p0, Lcom/helpshift/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/helpshift/HSApiData;->getCSatState(Ljava/lang/String;)Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;

    move-result-object v0

    .line 225
    .local v0, "state":Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;
    sget-object v1, Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_APPLICABLE:Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_REQUESTED:Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;

    if-ne v0, v1, :cond_2

    .line 226
    :cond_1
    invoke-direct {p0}, Lcom/helpshift/HSMessagesFragment;->inflateCSATView()Lcom/helpshift/widget/CSATView;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/HSMessagesFragment;->csatView:Lcom/helpshift/widget/CSATView;

    .line 227
    invoke-virtual {p0}, Lcom/helpshift/HSMessagesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/helpshift/HSMessagesFragment;->changeNewConversationButtonMargin(Landroid/content/res/Configuration;)V

    .line 228
    sget v1, Lcom/helpshift/D$string;->hs__confirmation_footer_msg:I

    invoke-direct {p0, v1}, Lcom/helpshift/HSMessagesFragment;->setMessagesListViewFooter(I)V

    .line 232
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/helpshift/HSMessagesFragment;->showingNewConversationBox:Z

    .line 233
    return-void

    .line 230
    :cond_2
    sget v1, Lcom/helpshift/D$string;->hs__conversation_end_msg:I

    invoke-direct {p0, v1}, Lcom/helpshift/HSMessagesFragment;->setMessagesListViewFooter(I)V

    goto :goto_0
.end method


# virtual methods
.method public attachImage(I)V
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x1

    .line 1050
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->hsApiData:Lcom/helpshift/HSApiData;

    invoke-virtual {v0}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v3

    .line 1051
    .local v3, "profileId":Ljava/lang/String;
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/helpshift/viewstructs/HSMsg;

    .line 1052
    .local v9, "msgData":Lcom/helpshift/viewstructs/HSMsg;
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v9, Lcom/helpshift/viewstructs/HSMsg;->clickable:Ljava/lang/Boolean;

    .line 1053
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v9, Lcom/helpshift/viewstructs/HSMsg;->inProgress:Ljava/lang/Boolean;

    .line 1054
    iget-object v0, v9, Lcom/helpshift/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/helpshift/models/Message;->setInProgress(Ljava/lang/String;Z)V

    .line 1056
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->adapter:Lcom/helpshift/customadapters/MessagesAdapter;

    invoke-virtual {v0}, Lcom/helpshift/customadapters/MessagesAdapter;->notifyDataSetChanged()V

    .line 1058
    new-instance v1, Lcom/helpshift/HSMessagesFragment$18;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/HSMessagesFragment$18;-><init>(Lcom/helpshift/HSMessagesFragment;I)V

    .line 1105
    .local v1, "replySysHandler":Landroid/os/Handler;
    new-instance v2, Lcom/helpshift/HSMessagesFragment$19;

    invoke-direct {v2, p0, p1}, Lcom/helpshift/HSMessagesFragment$19;-><init>(Lcom/helpshift/HSMessagesFragment;I)V

    .line 1120
    .local v2, "replySysFailHandler":Landroid/os/Handler;
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->hsClient:Lcom/helpshift/HSApiClient;

    iget-object v4, p0, Lcom/helpshift/HSMessagesFragment;->issueId:Ljava/lang/String;

    const-string/jumbo v5, ""

    const-string/jumbo v6, "sc"

    iget-object v7, v9, Lcom/helpshift/viewstructs/HSMsg;->id:Ljava/lang/String;

    iget-object v8, v9, Lcom/helpshift/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/helpshift/HSApiClient;->addScMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    return-void
.end method

.method public csatViewDissmissed()V
    .locals 1

    .prologue
    .line 250
    sget v0, Lcom/helpshift/D$string;->hs__conversation_end_msg:I

    invoke-direct {p0, v0}, Lcom/helpshift/HSMessagesFragment;->setMessagesListViewFooter(I)V

    .line 251
    return-void
.end method

.method public downloadAdminAttachment(Lorg/json/JSONObject;II)V
    .locals 5
    .param p1, "attachment"    # Lorg/json/JSONObject;
    .param p2, "position"    # I
    .param p3, "downloadType"    # I

    .prologue
    .line 1157
    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/viewstructs/HSMsg;

    .line 1158
    .local v0, "msgData":Lcom/helpshift/viewstructs/HSMsg;
    packed-switch p3, :pswitch_data_0

    .line 1180
    :cond_0
    :goto_0
    iget-object v3, v0, Lcom/helpshift/viewstructs/HSMsg;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/helpshift/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-static {p1, p2, v3, v4, p3}, Lcom/helpshift/DownloadManager;->startDownload(Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;I)Lcom/helpshift/DownloadTask;

    .line 1185
    :cond_1
    :goto_1
    return-void

    .line 1160
    :pswitch_0
    const/4 v3, 0x1

    iput v3, v0, Lcom/helpshift/viewstructs/HSMsg;->state:I

    .line 1161
    invoke-virtual {p0, v0}, Lcom/helpshift/HSMessagesFragment;->updateView(Lcom/helpshift/viewstructs/HSMsg;)V

    goto :goto_0

    .line 1164
    :pswitch_1
    const/4 v3, 0x2

    iput v3, v0, Lcom/helpshift/viewstructs/HSMsg;->state:I

    .line 1165
    invoke-virtual {p0, v0}, Lcom/helpshift/HSMessagesFragment;->updateView(Lcom/helpshift/viewstructs/HSMsg;)V

    goto :goto_0

    .line 1168
    :pswitch_2
    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    iget-object v4, v0, Lcom/helpshift/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/helpshift/HSStorage;->isDownloadActive(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1171
    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    iget-object v4, v0, Lcom/helpshift/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/helpshift/HSStorage;->getFilePathForThumbnail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1172
    .local v2, "thumbnailPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1173
    .local v1, "thumbnail":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 1158
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public downloadAttachment(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p1, "urlStr"    # Ljava/lang/String;
    .param p2, "messageId"    # Ljava/lang/String;
    .param p3, "attachId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1127
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1128
    .local v7, "url":Ljava/net/URL;
    const/4 v2, 0x0

    .line 1129
    .local v2, "input":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 1131
    .local v3, "output":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "-thumbnail"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1132
    .local v5, "outputName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    iget-object v8, p0, Lcom/helpshift/HSMessagesFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-virtual {v8}, Lcom/helpshift/HSActivity;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-direct {v4, v8, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1133
    .local v4, "outputFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 1134
    .local v1, "fname":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1135
    iget-object v8, p0, Lcom/helpshift/HSMessagesFragment;->hsApiData:Lcom/helpshift/HSApiData;

    invoke-virtual {v8, v5}, Lcom/helpshift/HSApiData;->storeFile(Ljava/lang/String;)V

    .line 1136
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 1137
    iget-object v8, p0, Lcom/helpshift/HSMessagesFragment;->activity:Lcom/helpshift/HSActivity;

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v9}, Lcom/helpshift/HSActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 1140
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 1141
    .local v0, "data":[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "read":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_2

    .line 1142
    const/4 v8, 0x0

    invoke-virtual {v3, v0, v8, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1147
    .end local v0    # "data":[B
    .end local v1    # "fname":Ljava/lang/String;
    .end local v4    # "outputFile":Ljava/io/File;
    .end local v5    # "outputName":Ljava/lang/String;
    .end local v6    # "read":I
    :catchall_0
    move-exception v8

    if-eqz v3, :cond_0

    .line 1148
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 1149
    :cond_0
    if-eqz v2, :cond_1

    .line 1150
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v8

    .line 1147
    .restart local v1    # "fname":Ljava/lang/String;
    .restart local v4    # "outputFile":Ljava/io/File;
    .restart local v5    # "outputName":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    .line 1148
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 1149
    :cond_3
    if-eqz v2, :cond_4

    .line 1150
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_4
    return-object v1
.end method

.method public launchAttachment(Lcom/helpshift/viewstructs/HSMsg;)V
    .locals 10
    .param p1, "msg"    # Lcom/helpshift/viewstructs/HSMsg;

    .prologue
    .line 1189
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v7, p1, Lcom/helpshift/viewstructs/HSMsg;->body:Ljava/lang/String;

    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1190
    .local v0, "attachmentObj":Lorg/json/JSONObject;
    const-string/jumbo v7, "content-type"

    const-string/jumbo v8, ""

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1193
    .local v1, "contentType":Ljava/lang/String;
    iget-object v7, p1, Lcom/helpshift/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v8, "admin_attachment_generic"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1194
    iget-object v7, p0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    iget-object v8, p1, Lcom/helpshift/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/helpshift/HSStorage;->getFilePathForGenericAttachment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1199
    .local v4, "filePath":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1200
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1201
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 1202
    .local v6, "uri":Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.VIEW"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1203
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1205
    invoke-virtual {p0}, Lcom/helpshift/HSMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1206
    invoke-virtual {p0, v5}, Lcom/helpshift/HSMessagesFragment;->startActivity(Landroid/content/Intent;)V

    .line 1218
    .end local v0    # "attachmentObj":Lorg/json/JSONObject;
    .end local v1    # "contentType":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "filePath":Ljava/lang/String;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "uri":Landroid/net/Uri;
    :goto_1
    return-void

    .line 1196
    .restart local v0    # "attachmentObj":Lorg/json/JSONObject;
    .restart local v1    # "contentType":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    iget-object v8, p1, Lcom/helpshift/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/helpshift/HSStorage;->getFilePathForImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "filePath":Ljava/lang/String;
    goto :goto_0

    .line 1207
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "uri":Landroid/net/Uri;
    :cond_1
    iget-object v7, p0, Lcom/helpshift/HSMessagesFragment;->helpshiftDelegate:Lcom/helpshift/Helpshift$HelpshiftDelegate;

    if-eqz v7, :cond_2

    .line 1208
    iget-object v7, p0, Lcom/helpshift/HSMessagesFragment;->helpshiftDelegate:Lcom/helpshift/Helpshift$HelpshiftDelegate;

    invoke-interface {v7, v3}, Lcom/helpshift/Helpshift$HelpshiftDelegate;->displayAttachmentFile(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1215
    .end local v0    # "attachmentObj":Lorg/json/JSONObject;
    .end local v1    # "contentType":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "filePath":Ljava/lang/String;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 1216
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v7, "HelpShiftDebug"

    const-string/jumbo v8, "launchAttachment : "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1210
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v0    # "attachmentObj":Lorg/json/JSONObject;
    .restart local v1    # "contentType":Ljava/lang/String;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "filePath":Ljava/lang/String;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "uri":Landroid/net/Uri;
    :cond_2
    const/4 v7, 0x4

    const/4 v8, 0x0

    :try_start_1
    iget-object v9, p0, Lcom/helpshift/HSMessagesFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-static {v7, v8, v9}, Lcom/helpshift/util/HSErrors;->showFailToast(ILandroid/app/ProgressDialog;Landroid/content/Context;)V

    goto :goto_1

    .line 1213
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_3
    const/4 v7, 0x5

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/helpshift/HSMessagesFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-static {v7, v8, v9}, Lcom/helpshift/util/HSErrors;->showFailToast(ILandroid/app/ProgressDialog;Landroid/content/Context;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "imageReturnedIntent"    # Landroid/content/Intent;

    .prologue
    const/16 v6, 0x7fbc

    .line 984
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 986
    const/4 v4, -0x1

    if-ne v4, p2, :cond_0

    .line 987
    if-eq p1, v6, :cond_1

    .line 988
    invoke-virtual {p0}, Lcom/helpshift/HSMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, p3}, Lcom/helpshift/util/AttachmentUtil;->isImageUri(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 989
    invoke-virtual {p0}, Lcom/helpshift/HSMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, p3}, Lcom/helpshift/util/AttachmentUtil;->getPath(Landroid/app/Activity;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 990
    .local v2, "screenshotPath":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 991
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/helpshift/HSMessagesFragment;->activity:Lcom/helpshift/HSActivity;

    const-class v5, Lcom/helpshift/ScreenshotPreviewActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 992
    .local v3, "screenshotPreviewIntent":Landroid/content/Intent;
    const-string/jumbo v4, "SCREENSHOT"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 993
    const-string/jumbo v4, "screenshot_position"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 994
    const-string/jumbo v4, "showInFullScreen"

    iget-object v5, p0, Lcom/helpshift/HSMessagesFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-static {v5}, Lcom/helpshift/util/HSActivityUtil;->isFullScreen(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 996
    invoke-virtual {p0, v3, v6}, Lcom/helpshift/HSMessagesFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1016
    .end local v2    # "screenshotPath":Ljava/lang/String;
    .end local v3    # "screenshotPreviewIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1000
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "SCREENSHOT"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1001
    .restart local v2    # "screenshotPath":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "screenshot_position"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1002
    .local v1, "position":I
    const/4 v0, 0x0

    .line 1003
    .local v0, "msgData":Lcom/helpshift/viewstructs/HSMsg;
    if-nez v1, :cond_2

    .line 1004
    iget-object v4, p0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    iget-object v5, p0, Lcom/helpshift/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-static {v4, v5, v2}, Lcom/helpshift/util/AttachmentUtil;->addAndGetLocalRscMsg(Lcom/helpshift/HSStorage;Ljava/lang/String;Ljava/lang/String;)Lcom/helpshift/viewstructs/HSMsg;

    move-result-object v0

    .line 1005
    iget-object v4, p0, Lcom/helpshift/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1011
    :goto_1
    iget-object v4, v0, Lcom/helpshift/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/helpshift/models/Message;->setScreenshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    iget-object v4, p0, Lcom/helpshift/HSMessagesFragment;->adapter:Lcom/helpshift/customadapters/MessagesAdapter;

    invoke-virtual {v4}, Lcom/helpshift/customadapters/MessagesAdapter;->notifyDataSetChanged()V

    .line 1013
    iget-object v4, p0, Lcom/helpshift/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/helpshift/HSMessagesFragment;->attachImage(I)V

    goto :goto_0

    .line 1007
    :cond_2
    iget-object v4, p0, Lcom/helpshift/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "msgData":Lcom/helpshift/viewstructs/HSMsg;
    check-cast v0, Lcom/helpshift/viewstructs/HSMsg;

    .line 1008
    .restart local v0    # "msgData":Lcom/helpshift/viewstructs/HSMsg;
    iput-object v2, v0, Lcom/helpshift/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 619
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 620
    invoke-direct {p0, p1}, Lcom/helpshift/HSMessagesFragment;->changeNewConversationButtonMargin(Landroid/content/res/Configuration;)V

    .line 621
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1235
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v4

    const-string/jumbo v5, "Copy"

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-object v3, p2

    .line 1237
    check-cast v3, Landroid/widget/TextView;

    .line 1238
    .local v3, "copyTextView":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1240
    .local v2, "copyText":Ljava/lang/String;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xd

    if-lt v4, v5, :cond_0

    .line 1241
    iget-object v4, p0, Lcom/helpshift/HSMessagesFragment;->activity:Lcom/helpshift/HSActivity;

    const-string/jumbo v5, "clipboard"

    invoke-virtual {v4, v5}, Lcom/helpshift/HSActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 1242
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    const-string/jumbo v4, "Copy Text"

    invoke-static {v4, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 1243
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 1248
    .end local v0    # "clip":Landroid/content/ClipData;
    .end local v1    # "clipboard":Landroid/content/ClipboardManager;
    :goto_0
    return-void

    .line 1245
    :cond_0
    iget-object v4, p0, Lcom/helpshift/HSMessagesFragment;->activity:Lcom/helpshift/HSActivity;

    const-string/jumbo v5, "clipboard"

    invoke-virtual {v4, v5}, Lcom/helpshift/HSActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    .line 1246
    .local v1, "clipboard":Landroid/text/ClipboardManager;
    invoke-virtual {v1, v2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x1

    .line 1252
    sget v0, Lcom/helpshift/D$menu;->hs__messages_menu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1253
    sget v0, Lcom/helpshift/D$id;->hs__attach_screenshot:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSMessagesFragment;->attachScreenshotMenu:Landroid/view/MenuItem;

    .line 1254
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->activity:Lcom/helpshift/HSActivity;

    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->attachScreenshotMenu:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/util/Styles;->setActionButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 1256
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    invoke-virtual {v0}, Lcom/helpshift/HSStorage;->getEnableFullPrivacy()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->messageBox:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->messageBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1259
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->attachScreenshotMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1268
    :goto_0
    iget-boolean v0, p0, Lcom/helpshift/HSMessagesFragment;->showingNewConversationBox:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/helpshift/HSMessagesFragment;->showingConfirmationBox:Z

    if-eqz v0, :cond_1

    .line 1269
    :cond_0
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->attachScreenshotMenu:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1271
    :cond_1
    return-void

    .line 1261
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_3

    .line 1262
    sget v0, Lcom/helpshift/D$id;->hs__attach_screenshot:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0

    .line 1264
    :cond_3
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->attachScreenshotMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 590
    invoke-virtual {p0}, Lcom/helpshift/HSMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/helpshift/HSActivity;

    iput-object v0, p0, Lcom/helpshift/HSMessagesFragment;->activity:Lcom/helpshift/HSActivity;

    .line 592
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-virtual {v0, v2}, Lcom/helpshift/HSActivity;->setSupportProgressBarIndeterminateVisibility(Z)V

    .line 593
    invoke-virtual {p0}, Lcom/helpshift/HSMessagesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSMessagesFragment;->extras:Landroid/os/Bundle;

    .line 594
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 596
    new-instance v0, Lcom/helpshift/HSApiData;

    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-direct {v0, v1}, Lcom/helpshift/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/HSMessagesFragment;->hsApiData:Lcom/helpshift/HSApiData;

    .line 597
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->hsApiData:Lcom/helpshift/HSApiData;

    iget-object v0, v0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    iput-object v0, p0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    .line 598
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->hsApiData:Lcom/helpshift/HSApiData;

    iget-object v0, v0, Lcom/helpshift/HSApiData;->client:Lcom/helpshift/HSApiClient;

    iput-object v0, p0, Lcom/helpshift/HSMessagesFragment;->hsClient:Lcom/helpshift/HSApiClient;

    .line 600
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "newIssue"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSMessagesFragment;->newIssue:Ljava/lang/Boolean;

    .line 601
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "decomp"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSMessagesFragment;->decomp:Ljava/lang/Boolean;

    .line 602
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "chatLaunchSource"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSMessagesFragment;->chatLaunchSource:Ljava/lang/String;

    .line 603
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "showConvOnReportIssue"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSMessagesFragment;->showConvOnReportIssue:Ljava/lang/Boolean;

    .line 605
    iput-object p0, p0, Lcom/helpshift/HSMessagesFragment;->downloadTaskCallBacks:Lcom/helpshift/DownloadTaskCallBacks;

    .line 606
    invoke-static {}, Lcom/helpshift/Helpshift;->getDelegate()Lcom/helpshift/Helpshift$HelpshiftDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSMessagesFragment;->helpshiftDelegate:Lcom/helpshift/Helpshift$HelpshiftDelegate;

    .line 608
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/helpshift/HSMessagesFragment;->setHasOptionsMenu(Z)V

    .line 610
    sget v0, Lcom/helpshift/D$layout;->hs__messages_list_footer:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/helpshift/HSMessagesFragment;->messagesListFooterView:Landroid/widget/TextView;

    .line 611
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->messagesListFooterView:Landroid/widget/TextView;

    const v1, 0x3f333333    # 0.7f

    invoke-static {v0, v1}, Lcom/helpshift/util/HSColor;->setTextViewAlpha(Landroid/widget/TextView;F)V

    .line 613
    sget v0, Lcom/helpshift/D$layout;->hs__messages_fragment:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 480
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 481
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/helpshift/HelpshiftContext;->setViewState(Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method public onDownloadTaskComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "position"    # I
    .param p3, "msgId"    # Ljava/lang/String;
    .param p4, "issueId"    # Ljava/lang/String;
    .param p5, "downloadType"    # I

    .prologue
    const/4 v2, 0x3

    .line 1303
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1304
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/viewstructs/HSMsg;

    .line 1305
    .local v0, "msgData":Lcom/helpshift/viewstructs/HSMsg;
    iget-object v1, v0, Lcom/helpshift/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1306
    packed-switch p5, :pswitch_data_0

    .line 1319
    :goto_0
    invoke-virtual {p0, v0}, Lcom/helpshift/HSMessagesFragment;->updateView(Lcom/helpshift/viewstructs/HSMsg;)V

    .line 1320
    invoke-virtual {p0}, Lcom/helpshift/HSMessagesFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    if-eq p5, v1, :cond_0

    .line 1321
    invoke-virtual {p0, v0}, Lcom/helpshift/HSMessagesFragment;->launchAttachment(Lcom/helpshift/viewstructs/HSMsg;)V

    .line 1325
    .end local v0    # "msgData":Lcom/helpshift/viewstructs/HSMsg;
    :cond_0
    return-void

    .line 1308
    .restart local v0    # "msgData":Lcom/helpshift/viewstructs/HSMsg;
    :pswitch_0
    iput v2, v0, Lcom/helpshift/viewstructs/HSMsg;->state:I

    goto :goto_0

    .line 1311
    :pswitch_1
    iput v2, v0, Lcom/helpshift/viewstructs/HSMsg;->state:I

    .line 1312
    iput-object p1, v0, Lcom/helpshift/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    goto :goto_0

    .line 1315
    :pswitch_2
    const/4 v1, 0x1

    iput v1, v0, Lcom/helpshift/viewstructs/HSMsg;->state:I

    .line 1316
    iput-object p1, v0, Lcom/helpshift/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    goto :goto_0

    .line 1306
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDownloadTaskFailed(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "issueId"    # Ljava/lang/String;
    .param p4, "downloadType"    # I

    .prologue
    .line 1332
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1333
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/viewstructs/HSMsg;

    .line 1334
    .local v0, "msgData":Lcom/helpshift/viewstructs/HSMsg;
    iget-object v1, v0, Lcom/helpshift/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1335
    packed-switch p4, :pswitch_data_0

    .line 1347
    .end local v0    # "msgData":Lcom/helpshift/viewstructs/HSMsg;
    :cond_0
    :goto_0
    return-void

    .line 1337
    .restart local v0    # "msgData":Lcom/helpshift/viewstructs/HSMsg;
    :pswitch_0
    const/4 v1, 0x0

    iput v1, v0, Lcom/helpshift/viewstructs/HSMsg;->state:I

    .line 1338
    invoke-virtual {p0, v0}, Lcom/helpshift/HSMessagesFragment;->updateView(Lcom/helpshift/viewstructs/HSMsg;)V

    goto :goto_0

    .line 1341
    :pswitch_1
    const/4 v1, 0x1

    iput v1, v0, Lcom/helpshift/viewstructs/HSMsg;->state:I

    .line 1342
    invoke-virtual {p0, v0}, Lcom/helpshift/HSMessagesFragment;->updateView(Lcom/helpshift/viewstructs/HSMsg;)V

    goto :goto_0

    .line 1335
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDownloadTaskPaused(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "issueId"    # Ljava/lang/String;
    .param p4, "downloadType"    # I

    .prologue
    .line 1287
    return-void
.end method

.method public onDownloadTaskResumed(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "issueId"    # Ljava/lang/String;
    .param p4, "downloadType"    # I

    .prologue
    .line 1295
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 833
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 834
    .local v0, "id":I
    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    .line 835
    invoke-virtual {p0}, Lcom/helpshift/HSMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 841
    :goto_0
    return v1

    .line 837
    :cond_0
    sget v2, Lcom/helpshift/D$id;->hs__attach_screenshot:I

    if-ne v0, v2, :cond_1

    .line 838
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/helpshift/HSMessagesFragment;->selectImagePopup(I)V

    goto :goto_0

    .line 841
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 457
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 458
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->pollerThreadHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 459
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->pollerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 462
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    iget-object v2, p0, Lcom/helpshift/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/helpshift/HSStorage;->resetIssueCount(Ljava/lang/String;)V

    .line 463
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->helpshiftDelegate:Lcom/helpshift/Helpshift$HelpshiftDelegate;

    if-eqz v1, :cond_1

    .line 464
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->helpshiftDelegate:Lcom/helpshift/Helpshift$HelpshiftDelegate;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/helpshift/Helpshift$HelpshiftDelegate;->didReceiveNotification(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/helpshift/HSStorage;->setForeground(Ljava/lang/Boolean;)V

    .line 470
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/helpshift/HSStorage;->setForegroundIssue(Ljava/lang/String;)V

    .line 471
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->hsApiData:Lcom/helpshift/HSApiData;

    invoke-virtual {v1}, Lcom/helpshift/HSApiData;->resetServiceInterval()V

    .line 472
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->activity:Lcom/helpshift/HSActivity;

    iget-object v2, p0, Lcom/helpshift/HSMessagesFragment;->connChecker:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/helpshift/HSActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 473
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->activity:Lcom/helpshift/HSActivity;

    iget-object v2, p0, Lcom/helpshift/HSMessagesFragment;->failedMessageRequestChecker:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/helpshift/HSActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 474
    invoke-static {}, Lcom/helpshift/DownloadManager;->deregisterDownloadTaskCallBacks()V

    .line 475
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    iget-object v2, p0, Lcom/helpshift/HSMessagesFragment;->replyField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment;->hsApiData:Lcom/helpshift/HSApiData;

    invoke-virtual {v3}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/helpshift/HSStorage;->storeReply(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    return-void

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "HelpShiftDebug"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1275
    sget v0, Lcom/helpshift/D$id;->hs__attach_screenshot:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSMessagesFragment;->attachScreenshotMenu:Landroid/view/MenuItem;

    .line 1276
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->attachScreenshotMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    invoke-virtual {v0}, Lcom/helpshift/HSStorage;->getEnableFullPrivacy()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1277
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->attachScreenshotMenu:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1279
    :cond_0
    return-void
.end method

.method public onProgressChanged(DILjava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "progress"    # D
    .param p3, "position"    # I
    .param p4, "msgId"    # Ljava/lang/String;
    .param p5, "issueId"    # Ljava/lang/String;
    .param p6, "downloadType"    # I

    .prologue
    const/4 v7, 0x2

    .line 1355
    iget-object v6, p0, Lcom/helpshift/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-virtual {p5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1356
    iget-object v6, p0, Lcom/helpshift/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/viewstructs/HSMsg;

    .line 1357
    .local v2, "msgData":Lcom/helpshift/viewstructs/HSMsg;
    iget-object v6, v2, Lcom/helpshift/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-virtual {p4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1358
    const/4 v6, 0x6

    if-ne p6, v6, :cond_2

    .line 1359
    iput v7, v2, Lcom/helpshift/viewstructs/HSMsg;->state:I

    .line 1360
    iget-object v6, p0, Lcom/helpshift/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    .line 1361
    .local v4, "start":I
    iget-object v6, p0, Lcom/helpshift/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    .line 1362
    .local v0, "end":I
    move v1, v4

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_0

    .line 1363
    iget-object v6, p0, Lcom/helpshift/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1364
    iget-object v6, p0, Lcom/helpshift/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    sub-int v7, v1, v4

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1365
    .local v5, "view":Landroid/view/View;
    const v6, 0x102000d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 1366
    .local v3, "progressBar":Landroid/widget/ProgressBar;
    double-to-int v6, p1

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1367
    iget-object v6, p0, Lcom/helpshift/HSMessagesFragment;->adapter:Lcom/helpshift/customadapters/MessagesAdapter;

    iget-object v7, p0, Lcom/helpshift/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    invoke-virtual {v6, v1, v5, v7}, Lcom/helpshift/customadapters/MessagesAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 1379
    .end local v0    # "end":I
    .end local v1    # "i":I
    .end local v2    # "msgData":Lcom/helpshift/viewstructs/HSMsg;
    .end local v3    # "progressBar":Landroid/widget/ProgressBar;
    .end local v4    # "start":I
    .end local v5    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    return-void

    .line 1362
    .restart local v0    # "end":I
    .restart local v1    # "i":I
    .restart local v2    # "msgData":Lcom/helpshift/viewstructs/HSMsg;
    .restart local v4    # "start":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1371
    .end local v0    # "end":I
    .end local v1    # "i":I
    .end local v4    # "start":I
    :cond_2
    const/4 v6, 0x7

    if-ne p6, v6, :cond_0

    .line 1372
    iget v6, v2, Lcom/helpshift/viewstructs/HSMsg;->state:I

    if-eq v6, v7, :cond_0

    .line 1373
    iput v7, v2, Lcom/helpshift/viewstructs/HSMsg;->state:I

    .line 1374
    invoke-virtual {p0, v2}, Lcom/helpshift/HSMessagesFragment;->updateView(Lcom/helpshift/viewstructs/HSMsg;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 534
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 535
    iput-boolean v8, p0, Lcom/helpshift/HSMessagesFragment;->selectImage:Z

    .line 536
    invoke-virtual {p0}, Lcom/helpshift/HSMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string/jumbo v6, "notification"

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 538
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    iget-object v5, p0, Lcom/helpshift/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-virtual {v3, v5, v9}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 539
    iget-object v5, p0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    iget-object v6, p0, Lcom/helpshift/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/helpshift/HSStorage;->clearNotification(Ljava/lang/String;)V

    .line 541
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 542
    .local v0, "connFilter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 543
    iget-object v5, p0, Lcom/helpshift/HSMessagesFragment;->activity:Lcom/helpshift/HSActivity;

    iget-object v6, p0, Lcom/helpshift/HSMessagesFragment;->connChecker:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v0}, Lcom/helpshift/HSActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 545
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 546
    .local v2, "failFilter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "com.helpshift.failedMessageRequest"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 547
    iget-object v5, p0, Lcom/helpshift/HSMessagesFragment;->activity:Lcom/helpshift/HSActivity;

    iget-object v6, p0, Lcom/helpshift/HSMessagesFragment;->failedMessageRequestChecker:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Lcom/helpshift/HSActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 549
    invoke-virtual {p0}, Lcom/helpshift/HSMessagesFragment;->startPoller()V

    .line 552
    :try_start_0
    iget-object v5, p0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    iget-object v6, p0, Lcom/helpshift/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/helpshift/HSStorage;->resetIssueCount(Ljava/lang/String;)V

    .line 553
    iget-object v5, p0, Lcom/helpshift/HSMessagesFragment;->helpshiftDelegate:Lcom/helpshift/Helpshift$HelpshiftDelegate;

    if-eqz v5, :cond_0

    .line 554
    iget-object v5, p0, Lcom/helpshift/HSMessagesFragment;->helpshiftDelegate:Lcom/helpshift/Helpshift$HelpshiftDelegate;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/helpshift/Helpshift$HelpshiftDelegate;->didReceiveNotification(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/helpshift/HSStorage;->setForeground(Ljava/lang/Boolean;)V

    .line 561
    iget-object v5, p0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    iget-object v6, p0, Lcom/helpshift/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/helpshift/HSStorage;->setForegroundIssue(Ljava/lang/String;)V

    .line 562
    iget-object v5, p0, Lcom/helpshift/HSMessagesFragment;->hsApiData:Lcom/helpshift/HSApiData;

    iget-object v6, p0, Lcom/helpshift/HSMessagesFragment;->issueId:Ljava/lang/String;

    iget-object v7, p0, Lcom/helpshift/HSMessagesFragment;->chatLaunchSource:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/helpshift/HSApiData;->updateMessageSeenState(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-object v5, p0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    iget-object v6, p0, Lcom/helpshift/HSMessagesFragment;->hsApiData:Lcom/helpshift/HSApiData;

    invoke-virtual {v6}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/helpshift/HSStorage;->getReply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 567
    .local v4, "replyText":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/helpshift/HSMessagesFragment;->showingNewConversationBox:Z

    if-nez v5, :cond_1

    .line 568
    iget-object v5, p0, Lcom/helpshift/HSMessagesFragment;->replyField:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 570
    :cond_1
    iget-boolean v5, p0, Lcom/helpshift/HSMessagesFragment;->newActivity:Z

    if-eqz v5, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 572
    iput-boolean v8, p0, Lcom/helpshift/HSMessagesFragment;->persistMessageBox:Z

    .line 574
    :cond_2
    iput-boolean v8, p0, Lcom/helpshift/HSMessagesFragment;->newActivity:Z

    .line 576
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-ge v5, v6, :cond_3

    .line 577
    iget-object v5, p0, Lcom/helpshift/HSMessagesFragment;->messageBox:Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/helpshift/HSMessagesFragment;->messageBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 579
    iget-object v5, p0, Lcom/helpshift/HSMessagesFragment;->attachScreenshotMenu:Landroid/view/MenuItem;

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 584
    :cond_3
    :goto_1
    invoke-static {p0}, Lcom/helpshift/DownloadManager;->registerDownloadTaskCallbacks(Lcom/helpshift/DownloadTaskCallBacks;)V

    .line 585
    return-void

    .line 556
    .end local v4    # "replyText":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 557
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "HelpShiftDebug"

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 581
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v4    # "replyText":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/helpshift/HSMessagesFragment;->attachScreenshotMenu:Landroid/view/MenuItem;

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 847
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 848
    iget-boolean v2, p0, Lcom/helpshift/HSMessagesFragment;->selectImage:Z

    if-nez v2, :cond_0

    .line 849
    iget-object v2, p0, Lcom/helpshift/HSMessagesFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-static {v2}, Lcom/helpshift/HSAnalytics;->onActivityStarted(Landroid/app/Activity;)V

    .line 851
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 852
    .local v1, "eventData":Lorg/json/JSONObject;
    const-string/jumbo v2, "id"

    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 853
    const-string/jumbo v2, "c"

    invoke-static {v2, v1}, Lcom/helpshift/HSFunnel;->pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    .end local v1    # "eventData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 854
    :catch_0
    move-exception v0

    .line 855
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "JSONException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 862
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 863
    iget-boolean v0, p0, Lcom/helpshift/HSMessagesFragment;->selectImage:Z

    if-nez v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-static {v0}, Lcom/helpshift/HSAnalytics;->onActivityStopped(Landroid/app/Activity;)V

    .line 866
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 657
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 659
    sget v3, Lcom/helpshift/D$id;->hs__messagesList:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/helpshift/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    .line 660
    sget v3, Lcom/helpshift/D$id;->hs__messageText:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/helpshift/HSMessagesFragment;->replyField:Landroid/widget/EditText;

    .line 661
    sget v3, Lcom/helpshift/D$id;->hs__sendMessageBtn:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 662
    .local v1, "addReply":Landroid/widget/ImageButton;
    sget v3, Lcom/helpshift/D$id;->hs__confirmation:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/helpshift/HSMessagesFragment;->confirmationBox:Landroid/widget/LinearLayout;

    .line 663
    sget v3, Lcom/helpshift/D$id;->hs__new_conversation:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/helpshift/HSMessagesFragment;->newConversationBox:Landroid/widget/LinearLayout;

    .line 664
    sget v3, Lcom/helpshift/D$id;->relativeLayout1:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/helpshift/HSMessagesFragment;->messageBox:Landroid/widget/RelativeLayout;

    .line 665
    const v3, 0x1020019

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/helpshift/HSMessagesFragment;->solvedBtn:Landroid/widget/ImageButton;

    .line 666
    const v3, 0x102001a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/helpshift/HSMessagesFragment;->unsolvedBtn:Landroid/widget/ImageButton;

    .line 667
    sget v3, Lcom/helpshift/D$id;->hs__new_conversation_btn:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/helpshift/HSMessagesFragment;->newConversationBtn:Landroid/widget/Button;

    .line 668
    invoke-virtual {p0}, Lcom/helpshift/HSMessagesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/helpshift/HSMessagesFragment;->changeNewConversationButtonMargin(Landroid/content/res/Configuration;)V

    .line 669
    sget v3, Lcom/helpshift/D$id;->csat_view_stub:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/helpshift/HSMessagesFragment;->csatViewStub:Landroid/view/ViewStub;

    .line 671
    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment;->activity:Lcom/helpshift/HSActivity;

    iget-object v4, p0, Lcom/helpshift/HSMessagesFragment;->newConversationBtn:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-static {v3, v4}, Lcom/helpshift/util/Styles;->setButtonCompoundDrawableIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 673
    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment;->activity:Lcom/helpshift/HSActivity;

    iget-object v4, p0, Lcom/helpshift/HSMessagesFragment;->solvedBtn:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/helpshift/util/Styles;->setAcceptButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 674
    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment;->activity:Lcom/helpshift/HSActivity;

    iget-object v4, p0, Lcom/helpshift/HSMessagesFragment;->unsolvedBtn:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/helpshift/util/Styles;->setRejectButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 676
    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment;->solvedBtn:Landroid/widget/ImageButton;

    new-instance v4, Lcom/helpshift/HSMessagesFragment$8;

    invoke-direct {v4, p0}, Lcom/helpshift/HSMessagesFragment$8;-><init>(Lcom/helpshift/HSMessagesFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 690
    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment;->unsolvedBtn:Landroid/widget/ImageButton;

    new-instance v4, Lcom/helpshift/HSMessagesFragment$9;

    invoke-direct {v4, p0}, Lcom/helpshift/HSMessagesFragment$9;-><init>(Lcom/helpshift/HSMessagesFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 707
    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment;->newConversationBtn:Landroid/widget/Button;

    new-instance v4, Lcom/helpshift/HSMessagesFragment$10;

    invoke-direct {v4, p0}, Lcom/helpshift/HSMessagesFragment$10;-><init>(Lcom/helpshift/HSMessagesFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 720
    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 721
    new-instance v3, Lcom/helpshift/customadapters/MessagesAdapter;

    const v4, 0x1090003

    iget-object v5, p0, Lcom/helpshift/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4, v5}, Lcom/helpshift/customadapters/MessagesAdapter;-><init>(Landroid/support/v4/app/Fragment;ILjava/util/List;)V

    iput-object v3, p0, Lcom/helpshift/HSMessagesFragment;->adapter:Lcom/helpshift/customadapters/MessagesAdapter;

    .line 723
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 727
    .local v2, "dummyTextView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 728
    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/helpshift/HSMessagesFragment;->adapter:Lcom/helpshift/customadapters/MessagesAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 729
    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 731
    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "issueId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/helpshift/HSMessagesFragment;->issueId:Ljava/lang/String;

    .line 732
    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-static {v3}, Lcom/helpshift/models/Issue;->isShowAgentNameEnabled(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/helpshift/HSMessagesFragment;->showAgentName:Z

    .line 733
    invoke-direct {p0}, Lcom/helpshift/HSMessagesFragment;->refreshStatus()V

    .line 734
    invoke-direct {p0}, Lcom/helpshift/HSMessagesFragment;->refreshMessages()V

    .line 735
    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/helpshift/HSMessagesFragment;->adapter:Lcom/helpshift/customadapters/MessagesAdapter;

    invoke-virtual {v4}, Lcom/helpshift/customadapters/MessagesAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 736
    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-virtual {v3}, Lcom/helpshift/HSActivity;->getActionBarHelper()Lcom/helpshift/app/ActionBarHelper;

    move-result-object v0

    .line 737
    .local v0, "actionBarHelper":Lcom/helpshift/app/ActionBarHelper;
    invoke-virtual {v0, v7}, Lcom/helpshift/app/ActionBarHelper;->setDisplayHomeAsUpEnabled(Z)V

    .line 739
    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment;->replyField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 740
    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 741
    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 742
    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/helpshift/util/Styles;->setSendMessageButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 749
    :goto_0
    new-instance v3, Lcom/helpshift/HSMessagesFragment$11;

    invoke-direct {v3, p0}, Lcom/helpshift/HSMessagesFragment$11;-><init>(Lcom/helpshift/HSMessagesFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 776
    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment;->replyField:Landroid/widget/EditText;

    new-instance v4, Lcom/helpshift/HSMessagesFragment$12;

    invoke-direct {v4, p0, v1}, Lcom/helpshift/HSMessagesFragment$12;-><init>(Lcom/helpshift/HSMessagesFragment;Landroid/widget/ImageButton;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 785
    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment;->replyField:Landroid/widget/EditText;

    new-instance v4, Lcom/helpshift/HSMessagesFragment$13;

    invoke-direct {v4, p0, v1}, Lcom/helpshift/HSMessagesFragment$13;-><init>(Lcom/helpshift/HSMessagesFragment;Landroid/widget/ImageButton;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 806
    return-void

    .line 744
    :cond_0
    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 745
    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 746
    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/helpshift/util/Styles;->setSendMessageButtonActiveIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public removeScreenshot(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1019
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/viewstructs/HSMsg;

    .line 1021
    .local v0, "msgData":Lcom/helpshift/viewstructs/HSMsg;
    iget-object v1, v0, Lcom/helpshift/viewstructs/HSMsg;->id:Ljava/lang/String;

    const-string/jumbo v2, "localRscMessage_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1022
    iget-object v1, v0, Lcom/helpshift/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-static {v1}, Lcom/helpshift/storage/IssuesDataSource;->deleteMessage(Ljava/lang/String;)V

    .line 1023
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1029
    :goto_0
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->adapter:Lcom/helpshift/customadapters/MessagesAdapter;

    invoke-virtual {v1}, Lcom/helpshift/customadapters/MessagesAdapter;->notifyDataSetChanged()V

    .line 1030
    return-void

    .line 1025
    :cond_0
    iget-object v1, v0, Lcom/helpshift/viewstructs/HSMsg;->id:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Lcom/helpshift/models/Message;->setScreenshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/helpshift/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    goto :goto_0
.end method

.method public replyConfirmation(Ljava/lang/String;Ljava/lang/Boolean;I)V
    .locals 10
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "accepted"    # Ljava/lang/Boolean;
    .param p3, "position"    # I

    .prologue
    const/4 v3, 0x1

    .line 869
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/helpshift/viewstructs/HSMsg;

    .line 870
    .local v9, "msgData":Lcom/helpshift/viewstructs/HSMsg;
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v9, Lcom/helpshift/viewstructs/HSMsg;->clickable:Ljava/lang/Boolean;

    .line 871
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v9, Lcom/helpshift/viewstructs/HSMsg;->inProgress:Ljava/lang/Boolean;

    .line 872
    iget-object v0, v9, Lcom/helpshift/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/helpshift/models/Message;->setInProgress(Ljava/lang/String;Z)V

    .line 874
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->adapter:Lcom/helpshift/customadapters/MessagesAdapter;

    invoke-virtual {v0}, Lcom/helpshift/customadapters/MessagesAdapter;->notifyDataSetChanged()V

    .line 876
    new-instance v1, Lcom/helpshift/HSMessagesFragment$14;

    invoke-direct {v1, p0, p3}, Lcom/helpshift/HSMessagesFragment$14;-><init>(Lcom/helpshift/HSMessagesFragment;I)V

    .line 889
    .local v1, "replySysHandler":Landroid/os/Handler;
    new-instance v2, Lcom/helpshift/HSMessagesFragment$15;

    invoke-direct {v2, p0, p3}, Lcom/helpshift/HSMessagesFragment$15;-><init>(Lcom/helpshift/HSMessagesFragment;I)V

    .line 903
    .local v2, "replySysFailHandler":Landroid/os/Handler;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment;->issueId:Ljava/lang/String;

    const-string/jumbo v4, ""

    const-string/jumbo v5, "ca"

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/helpshift/HSMessagesFragment;->addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    :goto_0
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 913
    .local v8, "eventData":Lorg/json/JSONObject;
    const-string/jumbo v0, "id"

    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-virtual {v8, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 914
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 915
    const-string/jumbo v0, "y"

    invoke-static {v0, v8}, Lcom/helpshift/HSFunnel;->pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    .end local v8    # "eventData":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 907
    :cond_0
    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment;->issueId:Ljava/lang/String;

    const-string/jumbo v4, ""

    const-string/jumbo v5, "ncr"

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/helpshift/HSMessagesFragment;->addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 917
    .restart local v8    # "eventData":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string/jumbo v0, "n"

    invoke-static {v0, v8}, Lcom/helpshift/HSFunnel;->pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 919
    .end local v8    # "eventData":Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    .line 920
    .local v7, "e":Lorg/json/JSONException;
    const-string/jumbo v0, "HelpShiftDebug"

    const-string/jumbo v3, "JSONException"

    invoke-static {v0, v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public replyReview(Ljava/lang/String;I)V
    .locals 8
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x1

    .line 925
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->messagesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/helpshift/viewstructs/HSMsg;

    .line 926
    .local v7, "msgData":Lcom/helpshift/viewstructs/HSMsg;
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v7, Lcom/helpshift/viewstructs/HSMsg;->clickable:Ljava/lang/Boolean;

    .line 927
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v7, Lcom/helpshift/viewstructs/HSMsg;->inProgress:Ljava/lang/Boolean;

    .line 928
    iget-object v0, v7, Lcom/helpshift/viewstructs/HSMsg;->id:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/helpshift/models/Message;->setInProgress(Ljava/lang/String;Z)V

    .line 930
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->adapter:Lcom/helpshift/customadapters/MessagesAdapter;

    invoke-virtual {v0}, Lcom/helpshift/customadapters/MessagesAdapter;->notifyDataSetChanged()V

    .line 932
    new-instance v1, Lcom/helpshift/HSMessagesFragment$16;

    invoke-direct {v1, p0, p2}, Lcom/helpshift/HSMessagesFragment$16;-><init>(Lcom/helpshift/HSMessagesFragment;I)V

    .line 963
    .local v1, "replySysHandler":Landroid/os/Handler;
    new-instance v2, Lcom/helpshift/HSMessagesFragment$17;

    invoke-direct {v2, p0, p2}, Lcom/helpshift/HSMessagesFragment$17;-><init>(Lcom/helpshift/HSMessagesFragment;I)V

    .line 977
    .local v2, "replySysFailHandler":Landroid/os/Handler;
    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment;->issueId:Ljava/lang/String;

    const-string/jumbo v4, ""

    const-string/jumbo v5, "ar"

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/helpshift/HSMessagesFragment;->addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    return-void
.end method

.method public retryMessage(Ljava/lang/String;)V
    .locals 12
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1418
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->hsApiData:Lcom/helpshift/HSApiData;

    iget-object v0, v0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    iget-object v2, p0, Lcom/helpshift/HSMessagesFragment;->hsApiData:Lcom/helpshift/HSApiData;

    invoke-virtual {v2}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/helpshift/HSStorage;->popFailedMessage(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 1419
    .local v9, "failedMessage":Lorg/json/JSONObject;
    if-nez v9, :cond_0

    .line 1455
    .end local v9    # "failedMessage":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1423
    .restart local v9    # "failedMessage":Lorg/json/JSONObject;
    :cond_0
    new-instance v11, Lorg/json/JSONObject;

    invoke-static {v9}, Lcom/helpshift/util/HSJSONUtils;->getJSONObjectKeys(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v9, v0}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 1426
    .local v11, "tempMess":Lorg/json/JSONObject;
    const-string/jumbo v0, "state"

    const/4 v2, 0x1

    invoke-virtual {v11, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1428
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->hsApiData:Lcom/helpshift/HSApiData;

    iget-object v2, p0, Lcom/helpshift/HSMessagesFragment;->issueId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/helpshift/HSApiData;->getMessagesWithFails(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 1429
    .local v10, "messages":Lorg/json/JSONArray;
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1430
    invoke-direct {p0, v10}, Lcom/helpshift/HSMessagesFragment;->refreshMessages(Lorg/json/JSONArray;)V

    .line 1432
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->hsApiData:Lcom/helpshift/HSApiData;

    iget-object v0, v0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    iget-object v2, p0, Lcom/helpshift/HSMessagesFragment;->hsApiData:Lcom/helpshift/HSApiData;

    invoke-virtual {v2}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v11, v2}, Lcom/helpshift/HSStorage;->storeFailedMessage(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1434
    new-instance v1, Lcom/helpshift/HSMessagesFragment$20;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/HSMessagesFragment$20;-><init>(Lcom/helpshift/HSMessagesFragment;Ljava/lang/String;)V

    .line 1446
    .local v1, "addMessageHandler":Landroid/os/Handler;
    const-string/jumbo v0, "issue_id"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "body"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "type"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "refers"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "state"

    const/4 v2, 0x0

    invoke-virtual {v9, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    move-object v0, p0

    move-object v2, v1

    invoke-direct/range {v0 .. v7}, Lcom/helpshift/HSMessagesFragment;->addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1452
    .end local v1    # "addMessageHandler":Landroid/os/Handler;
    .end local v9    # "failedMessage":Lorg/json/JSONObject;
    .end local v10    # "messages":Lorg/json/JSONArray;
    .end local v11    # "tempMess":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    .line 1453
    .local v8, "e":Lorg/json/JSONException;
    const-string/jumbo v0, "HelpShiftDebug"

    const-string/jumbo v2, "retryMessage"

    invoke-static {v0, v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public selectImagePopup(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x1

    .line 1033
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/helpshift/HSStorage;->setScreenShotDraft(Ljava/lang/Boolean;)V

    .line 1034
    iput-boolean v3, p0, Lcom/helpshift/HSMessagesFragment;->selectImage:Z

    .line 1035
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1037
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-virtual {v1}, Lcom/helpshift/HSActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1038
    invoke-virtual {p0, v0, p1}, Lcom/helpshift/HSMessagesFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1047
    :cond_0
    :goto_0
    return-void

    .line 1040
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "i":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1041
    .restart local v0    # "i":Landroid/content/Intent;
    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1042
    const-string/jumbo v1, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1043
    iget-object v1, p0, Lcom/helpshift/HSMessagesFragment;->activity:Lcom/helpshift/HSActivity;

    invoke-virtual {v1}, Lcom/helpshift/HSActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1044
    invoke-virtual {p0, v0, p1}, Lcom/helpshift/HSMessagesFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public sendCSATSurvey(ILjava/lang/String;)V
    .locals 6
    .param p1, "rating"    # I
    .param p2, "feedback"    # Ljava/lang/String;

    .prologue
    .line 255
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 256
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->hsApiData:Lcom/helpshift/HSApiData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment;->issueId:Ljava/lang/String;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/helpshift/HSApiData;->sendCustomerSatisfactionSurvey(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 257
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->helpshiftDelegate:Lcom/helpshift/Helpshift$HelpshiftDelegate;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/helpshift/HSMessagesFragment;->helpshiftDelegate:Lcom/helpshift/Helpshift$HelpshiftDelegate;

    invoke-interface {v0, p1, p2}, Lcom/helpshift/Helpshift$HelpshiftDelegate;->userCompletedCustomerSatisfactionSurvey(ILjava/lang/String;)V

    .line 260
    :cond_0
    return-void
.end method

.method public startPoller()V
    .locals 4

    .prologue
    .line 486
    iget-object v2, p0, Lcom/helpshift/HSMessagesFragment;->pollerThreadHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 487
    iget-object v2, p0, Lcom/helpshift/HSMessagesFragment;->pollerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 488
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/helpshift/HSMessagesFragment;->pollerThread:Ljava/lang/Thread;

    .line 493
    :cond_0
    iget-object v2, p0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment;->hsApiData:Lcom/helpshift/HSApiData;

    invoke-virtual {v3}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/helpshift/HSStorage;->getActiveConversation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, "conversation":Ljava/lang/String;
    iget-object v2, p0, Lcom/helpshift/HSMessagesFragment;->hsStorage:Lcom/helpshift/HSStorage;

    iget-object v3, p0, Lcom/helpshift/HSMessagesFragment;->hsApiData:Lcom/helpshift/HSApiData;

    invoke-virtual {v3}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/helpshift/HSStorage;->getArchivedConversation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "archivedConversation":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 530
    :goto_0
    return-void

    .line 499
    :cond_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/helpshift/HSMessagesFragment$7;

    invoke-direct {v3, p0}, Lcom/helpshift/HSMessagesFragment$7;-><init>(Lcom/helpshift/HSMessagesFragment;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/helpshift/HSMessagesFragment;->pollerThread:Ljava/lang/Thread;

    .line 529
    iget-object v2, p0, Lcom/helpshift/HSMessagesFragment;->pollerThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public updateView(Lcom/helpshift/viewstructs/HSMsg;)V
    .locals 6
    .param p1, "msgData"    # Lcom/helpshift/viewstructs/HSMsg;

    .prologue
    .line 1221
    iget-object v4, p0, Lcom/helpshift/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 1222
    .local v2, "start":I
    iget-object v4, p0, Lcom/helpshift/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    .line 1223
    .local v0, "end":I
    move v1, v2

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_0

    .line 1224
    iget-object v4, p0, Lcom/helpshift/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1225
    iget-object v4, p0, Lcom/helpshift/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    sub-int v5, v1, v2

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1226
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/helpshift/HSMessagesFragment;->adapter:Lcom/helpshift/customadapters/MessagesAdapter;

    iget-object v5, p0, Lcom/helpshift/HSMessagesFragment;->messagesListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1, v3, v5}, Lcom/helpshift/customadapters/MessagesAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 1230
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    return-void

    .line 1223
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
