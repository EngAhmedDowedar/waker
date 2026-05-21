.class public final Lcom/helpshift/HSApiData;
.super Ljava/lang/Object;
.source "HSApiData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;
    }
.end annotation


# static fields
.field public static final ACTION_EVENTS:I = 0x2

.field public static final CSAT_REQUEST:I = 0x4

.field public static final HIGHEST_RATING:I = 0x5

.field public static final MARK_QUESTION:I = 0x0

.field public static final MESSAGE_SEEN:I = 0x3

.field public static final PUSH_TOKEN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "HelpShiftDebug"

.field protected static faqsSyncing:Z

.field public static observers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/HSFaqSyncStatusEvents;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final FILE_STORE_LIMIT:I

.field private c:Landroid/content/Context;

.field public client:Lcom/helpshift/HSApiClient;

.field failedApiKeys:Ljava/util/Iterator;

.field private faqDAO:Lcom/helpshift/storage/FaqDAO;

.field private flatFaqList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/Faq;",
            ">;"
        }
    .end annotation
.end field

.field private profilesManager:Lcom/helpshift/ProfilesManager;

.field private sectionDAO:Lcom/helpshift/storage/SectionDAO;

.field public storage:Lcom/helpshift/HSStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/helpshift/HSApiData;->observers:Ljava/util/ArrayList;

    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/helpshift/HSApiData;->faqsSyncing:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v1, p0, Lcom/helpshift/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    .line 61
    const/16 v0, 0xa

    iput v0, p0, Lcom/helpshift/HSApiData;->FILE_STORE_LIMIT:I

    .line 64
    iput-object v1, p0, Lcom/helpshift/HSApiData;->failedApiKeys:Ljava/util/Iterator;

    .line 78
    iput-object p1, p0, Lcom/helpshift/HSApiData;->c:Landroid/content/Context;

    .line 79
    new-instance v0, Lcom/helpshift/HSStorage;

    invoke-direct {v0, p1}, Lcom/helpshift/HSStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    .line 80
    new-instance v0, Lcom/helpshift/HSApiClient;

    iget-object v1, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v1}, Lcom/helpshift/HSStorage;->getDomain()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v2}, Lcom/helpshift/HSStorage;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v3}, Lcom/helpshift/HSStorage;->getApiKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/helpshift/HSApiClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/helpshift/HSStorage;)V

    iput-object v0, p0, Lcom/helpshift/HSApiData;->client:Lcom/helpshift/HSApiClient;

    .line 84
    new-instance v0, Lcom/helpshift/storage/SectionsDataSource;

    invoke-direct {v0}, Lcom/helpshift/storage/SectionsDataSource;-><init>()V

    iput-object v0, p0, Lcom/helpshift/HSApiData;->sectionDAO:Lcom/helpshift/storage/SectionDAO;

    .line 85
    new-instance v0, Lcom/helpshift/storage/FaqsDataSource;

    invoke-direct {v0}, Lcom/helpshift/storage/FaqsDataSource;-><init>()V

    iput-object v0, p0, Lcom/helpshift/HSApiData;->faqDAO:Lcom/helpshift/storage/FaqDAO;

    .line 86
    invoke-static {}, Lcom/helpshift/ProfilesManager;->getInstance()Lcom/helpshift/ProfilesManager;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSApiData;->profilesManager:Lcom/helpshift/ProfilesManager;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/HSApiData;)Lcom/helpshift/storage/SectionDAO;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSApiData;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/helpshift/HSApiData;->sectionDAO:Lcom/helpshift/storage/SectionDAO;

    return-object v0
.end method

.method static synthetic access$100(Lcom/helpshift/HSApiData;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSApiData;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/helpshift/HSApiData;->updateIndex()V

    return-void
.end method

.method static synthetic access$200(Lcom/helpshift/HSApiData;Landroid/os/Handler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSApiData;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/helpshift/HSApiData;->sendFailMessage(Landroid/os/Handler;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/helpshift/HSApiData;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/HSApiData;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/helpshift/HSApiData;->rfrCheck(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$400(Lcom/helpshift/HSApiData;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSApiData;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/helpshift/HSApiData;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/helpshift/HSApiData;)Lcom/helpshift/storage/FaqDAO;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSApiData;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/helpshift/HSApiData;->faqDAO:Lcom/helpshift/storage/FaqDAO;

    return-object v0
.end method

.method static synthetic access$600(Lcom/helpshift/HSApiData;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSApiData;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/helpshift/HSApiData;->getPublishIdFromSectionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/helpshift/HSApiData;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/HSApiData;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/helpshift/HSApiData;->isStatusCodeRetriable(Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected static addFaqSyncStatusObserver(Lcom/helpshift/HSFaqSyncStatusEvents;)V
    .locals 1
    .param p0, "observer"    # Lcom/helpshift/HSFaqSyncStatusEvents;

    .prologue
    .line 1579
    sget-object v0, Lcom/helpshift/HSApiData;->observers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1580
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/helpshift/HSApiData;->observers:Ljava/util/ArrayList;

    .line 1583
    :cond_0
    sget-object v0, Lcom/helpshift/HSApiData;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1584
    return-void
.end method

.method private filterForPrivateData(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "input"    # Lorg/json/JSONObject;

    .prologue
    .line 592
    :try_start_0
    const-string/jumbo v3, "device_info"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 593
    .local v1, "deviceInfo":Lorg/json/JSONObject;
    const-string/jumbo v3, "country-code"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 595
    const-string/jumbo v3, "custom_meta"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 596
    .local v0, "customMeta":Lorg/json/JSONObject;
    const-string/jumbo v3, "private-data"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    .end local v0    # "customMeta":Lorg/json/JSONObject;
    .end local v1    # "deviceInfo":Lorg/json/JSONObject;
    :goto_0
    return-object p1

    .line 597
    :catch_0
    move-exception v2

    .line 598
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "Exception is filtering metaData "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private generateMC()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 503
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 504
    .local v4, "mc":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/helpshift/storage/IssuesDataSource;->getIssues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 505
    .local v3, "issueList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/models/Issue;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/models/Issue;

    .line 506
    .local v2, "issue":Lcom/helpshift/models/Issue;
    invoke-virtual {v2}, Lcom/helpshift/models/Issue;->getMessageList()Ljava/util/List;

    move-result-object v6

    .line 507
    .local v6, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/models/Message;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .local v0, "i":I
    :goto_1
    if-lez v0, :cond_0

    .line 508
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/helpshift/models/Message;

    .line 509
    .local v5, "message":Lcom/helpshift/models/Message;
    invoke-virtual {v5}, Lcom/helpshift/models/Message;->getMessageId()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "localRscMessage_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 510
    invoke-virtual {v2}, Lcom/helpshift/models/Issue;->getIssueId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/helpshift/models/Message;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 507
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 515
    .end local v0    # "i":I
    .end local v2    # "issue":Lcom/helpshift/models/Issue;
    .end local v5    # "message":Lcom/helpshift/models/Message;
    .end local v6    # "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/models/Message;>;"
    :cond_2
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private getAndStoreConfig(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Lcom/helpshift/HSApiData$3;

    invoke-direct {v0, p0, p1}, Lcom/helpshift/HSApiData$3;-><init>(Lcom/helpshift/HSApiData;Landroid/os/Handler;)V

    .line 204
    .local v0, "localSuccess":Landroid/os/Handler;
    iget-object v1, p0, Lcom/helpshift/HSApiData;->client:Lcom/helpshift/HSApiClient;

    invoke-virtual {v1, v0, p2}, Lcom/helpshift/HSApiClient;->getConfig(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 205
    return-void
.end method

.method private getAndStoreIssues(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 8
    .param p1, "callback"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "identity"    # Ljava/lang/String;
    .param p4, "lastTs"    # Ljava/lang/String;
    .param p5, "mc"    # Ljava/lang/String;
    .param p6, "onlyNew"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 298
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/helpshift/HSApiData;->getAndStoreIssues(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method private getAndStoreIssues(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 7
    .param p1, "callback"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "identity"    # Ljava/lang/String;
    .param p4, "lastTs"    # Ljava/lang/String;
    .param p5, "mc"    # Ljava/lang/String;
    .param p6, "onlyNew"    # Ljava/lang/Boolean;
    .param p7, "chatLaunchSource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 305
    new-instance v1, Lcom/helpshift/HSApiData$4;

    invoke-direct {v1, p0, p1, p6, p2}, Lcom/helpshift/HSApiData$4;-><init>(Lcom/helpshift/HSApiData;Landroid/os/Handler;Ljava/lang/Boolean;Landroid/os/Handler;)V

    .line 401
    .local v1, "localSuccess":Landroid/os/Handler;
    iget-object v0, p0, Lcom/helpshift/HSApiData;->client:Lcom/helpshift/HSApiClient;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/helpshift/HSApiClient;->fetchMyIssues(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method private getAndStoreSections(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v1, Lcom/helpshift/HSApiData$1;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/HSApiData$1;-><init>(Lcom/helpshift/HSApiData;Landroid/os/Handler;)V

    .line 158
    .local v1, "localSuccess":Landroid/os/Handler;
    new-instance v0, Lcom/helpshift/HSApiData$2;

    invoke-direct {v0, p0, p2}, Lcom/helpshift/HSApiData$2;-><init>(Lcom/helpshift/HSApiData;Landroid/os/Handler;)V

    .line 168
    .local v0, "localFailure":Landroid/os/Handler;
    const/4 v2, 0x1

    sput-boolean v2, Lcom/helpshift/HSApiData;->faqsSyncing:Z

    .line 169
    iget-object v2, p0, Lcom/helpshift/HSApiData;->client:Lcom/helpshift/HSApiClient;

    invoke-virtual {v2, v1, v0}, Lcom/helpshift/HSApiClient;->fetchFaqs(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 170
    return-void
.end method

.method private getPublishIdFromSectionId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "sectionId"    # Ljava/lang/String;

    .prologue
    .line 1289
    invoke-virtual {p0}, Lcom/helpshift/HSApiData;->getSections()Ljava/util/ArrayList;

    move-result-object v3

    .line 1290
    .local v3, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/Section;>;"
    const-string/jumbo v2, ""

    .line 1291
    .local v2, "sectionPublishId":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1292
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/Section;

    .line 1293
    .local v1, "sectionItem":Lcom/helpshift/Section;
    invoke-virtual {v1}, Lcom/helpshift/Section;->getSectionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1294
    invoke-virtual {v1}, Lcom/helpshift/Section;->getPublishId()Ljava/lang/String;

    move-result-object v2

    .line 1291
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1297
    .end local v1    # "sectionItem":Lcom/helpshift/Section;
    :cond_1
    return-object v2
.end method

.method private getQuestionAsync(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 2
    .param p1, "publishId"    # Ljava/lang/String;
    .param p2, "success"    # Landroid/os/Handler;
    .param p3, "failure"    # Landroid/os/Handler;

    .prologue
    .line 1301
    new-instance v0, Lcom/helpshift/HSApiData$17;

    invoke-direct {v0, p0, p2}, Lcom/helpshift/HSApiData$17;-><init>(Lcom/helpshift/HSApiData;Landroid/os/Handler;)V

    .line 1327
    .local v0, "localSuccess":Landroid/os/Handler;
    iget-object v1, p0, Lcom/helpshift/HSApiData;->client:Lcom/helpshift/HSApiClient;

    invoke-virtual {v1, p1, v0, p3}, Lcom/helpshift/HSApiClient;->getQuestion(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 1328
    return-void
.end method

.method private getRfrFailedMessageMeta(ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "reason"    # I
    .param p2, "openIssueId"    # Ljava/lang/String;

    .prologue
    .line 440
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 443
    .local v1, "messageMeta":Lorg/json/JSONObject;
    packed-switch p1, :pswitch_data_0

    .line 459
    :goto_0
    return-object v1

    .line 445
    :pswitch_0
    :try_start_0
    const-string/jumbo v2, "reason"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "getRfrFailedMessageMeta"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 448
    .end local v0    # "e":Lorg/json/JSONException;
    :pswitch_1
    :try_start_1
    const-string/jumbo v2, "reason"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 449
    const-string/jumbo v2, "open-issue-id"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 452
    :pswitch_2
    const-string/jumbo v2, "reason"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 443
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isStatusCodeRetriable(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "status"    # Ljava/lang/Integer;

    .prologue
    .line 1428
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x258

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1f7

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1f8

    if-eq v0, v1, :cond_0

    .line 1429
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1432
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected static removeFaqSyncStatusObserver(Lcom/helpshift/HSFaqSyncStatusEvents;)V
    .locals 1
    .param p0, "observer"    # Lcom/helpshift/HSFaqSyncStatusEvents;

    .prologue
    .line 1588
    sget-object v0, Lcom/helpshift/HSApiData;->observers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1589
    sget-object v0, Lcom/helpshift/HSApiData;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1591
    :cond_0
    return-void
.end method

.method private reportActionEvents(Landroid/os/Handler;Landroid/os/Handler;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Landroid/os/Handler;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 934
    .local p3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/helpshift/HSApiData;->client:Lcom/helpshift/HSApiClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/helpshift/HSApiClient;->reportActionEvents(Landroid/os/Handler;Landroid/os/Handler;Ljava/util/HashMap;)V

    .line 935
    return-void
.end method

.method private reportActionEvents(Lorg/json/JSONArray;)V
    .locals 24
    .param p1, "actions"    # Lorg/json/JSONArray;

    .prologue
    .line 885
    invoke-virtual/range {p0 .. p0}, Lcom/helpshift/HSApiData;->getLoggedInHSId()Ljava/lang/String;

    move-result-object v9

    .line 886
    .local v9, "identifier":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v15

    .line 887
    .local v15, "profileId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSApiData;->client:Lcom/helpshift/HSApiClient;

    move-object/from16 v20, v0

    const-string/jumbo v11, "3.10.0"

    .line 888
    .local v11, "libraryVersion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/helpshift/HSStorage;->getSdkType()Ljava/lang/String;

    move-result-object v17

    .line 889
    .local v17, "sdkType":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/helpshift/HSApiData;->getDeviceIdentifier()Ljava/lang/String;

    move-result-object v7

    .line 890
    .local v7, "deviceId":Ljava/lang/String;
    const/16 v19, 0x0

    .line 891
    .local v19, "uid":Ljava/lang/String;
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 892
    .local v8, "deviceModel":Ljava/lang/String;
    sget-object v13, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 893
    .local v13, "os":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSApiData;->c:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/helpshift/util/Meta;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 894
    .local v5, "appVersion":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "os.version"

    invoke-static/range {v21 .. v21}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 895
    .local v16, "rom":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/HSApiData;->c:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "phone"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/TelephonyManager;

    .line 896
    .local v18, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v6

    .line 897
    .local v6, "cc":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    .line 900
    .local v12, "ln":Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 901
    move-object/from16 v19, v7

    .line 904
    :cond_0
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 905
    .local v14, "params":Ljava/util/HashMap;
    const-string/jumbo v20, "id"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    if-eqz v19, :cond_1

    .line 907
    const-string/jumbo v20, "uid"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    :cond_1
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 910
    const-string/jumbo v20, "profile-id"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    :cond_2
    const-string/jumbo v20, "v"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    const-string/jumbo v20, "e"

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    const-string/jumbo v20, "s"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    const-string/jumbo v20, "dm"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    const-string/jumbo v20, "os"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    const-string/jumbo v20, "av"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    const-string/jumbo v20, "rs"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 920
    const-string/jumbo v20, "cc"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    :cond_3
    const-string/jumbo v20, "ln"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "action_event_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 925
    .local v10, "key":Ljava/lang/String;
    new-instance v20, Landroid/os/Handler;

    invoke-direct/range {v20 .. v20}, Landroid/os/Handler;-><init>()V

    const/16 v21, 0x2

    new-instance v22, Lorg/json/JSONObject;

    move-object/from16 v0, v22

    invoke-direct {v0, v14}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v10, v2, v3}, Lcom/helpshift/HSApiData;->getApiFailHandler(Landroid/os/Handler;Ljava/lang/String;ILorg/json/JSONObject;)Landroid/os/Handler;

    move-result-object v4

    .line 930
    .local v4, "apiFailHandler":Landroid/os/Handler;
    new-instance v20, Landroid/os/Handler;

    invoke-direct/range {v20 .. v20}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4, v14}, Lcom/helpshift/HSApiData;->reportActionEvents(Landroid/os/Handler;Landroid/os/Handler;Ljava/util/HashMap;)V

    .line 931
    return-void
.end method

.method private rfrAccepted(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "issueId"    # Ljava/lang/String;
    .param p2, "message"    # Lorg/json/JSONObject;

    .prologue
    .line 463
    const/4 v6, 0x0

    .line 465
    .local v6, "messageId":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v0, "id"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 470
    :goto_0
    new-instance v1, Lcom/helpshift/HSApiData$5;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/HSApiData$5;-><init>(Lcom/helpshift/HSApiData;Ljava/lang/String;)V

    .line 488
    .local v1, "localSuccess":Landroid/os/Handler;
    invoke-static {p1}, Lcom/helpshift/models/Issue;->openIssue(Ljava/lang/String;)V

    .line 489
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const-string/jumbo v4, "Accepted the follow-up"

    const-string/jumbo v5, "ra"

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/helpshift/HSApiData;->addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    return-void

    .line 466
    .end local v1    # "localSuccess":Landroid/os/Handler;
    :catch_0
    move-exception v7

    .line 467
    .local v7, "e":Lorg/json/JSONException;
    const-string/jumbo v0, "HelpShiftDebug"

    const-string/jumbo v2, "rfrAccepted"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private rfrCheck(Lorg/json/JSONArray;)V
    .locals 7
    .param p1, "issues"    # Lorg/json/JSONArray;

    .prologue
    .line 406
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 407
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 408
    .local v2, "issue":Lorg/json/JSONObject;
    const-string/jumbo v5, "messages"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 409
    .local v4, "messages":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 410
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 411
    .local v3, "lastMessage":Lorg/json/JSONObject;
    const-string/jumbo v5, "origin"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "admin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "type"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "rfr"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 413
    const-string/jumbo v5, "id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/helpshift/HSApiData;->rfrRequested(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .end local v3    # "lastMessage":Lorg/json/JSONObject;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 417
    .end local v2    # "issue":Lorg/json/JSONObject;
    .end local v4    # "messages":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "HelpShiftDebug"

    const-string/jumbo v6, "rfrCheck"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    return-void
.end method

.method private rfrRejected(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "issueId"    # Ljava/lang/String;
    .param p2, "message"    # Lorg/json/JSONObject;
    .param p3, "messageMeta"    # Lorg/json/JSONObject;

    .prologue
    .line 493
    const/4 v6, 0x0

    .line 495
    .local v6, "messageId":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v0, "id"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 499
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const-string/jumbo v4, "Rejected the follow-up"

    const-string/jumbo v5, "rj"

    move-object v0, p0

    move-object v3, p1

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/helpshift/HSApiData;->addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 500
    return-void

    .line 496
    :catch_0
    move-exception v8

    .line 497
    .local v8, "e":Lorg/json/JSONException;
    const-string/jumbo v0, "HelpShiftDebug"

    const-string/jumbo v1, "rfrRejected"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private rfrRequested(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "issueId"    # Ljava/lang/String;
    .param p2, "message"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x0

    .line 423
    invoke-static {}, Lcom/helpshift/HelpshiftContext;->getViewState()Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, "viewState":Ljava/lang/String;
    iget-object v2, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {p0}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/helpshift/HSStorage;->getActiveConversation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, "activeConversationId":Ljava/lang/String;
    const-string/jumbo v2, "issue-filing"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    const/4 v2, 0x1

    invoke-direct {p0, v2, v4}, Lcom/helpshift/HSApiData;->getRfrFailedMessageMeta(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lcom/helpshift/HSApiData;->rfrRejected(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 437
    :goto_0
    return-void

    .line 428
    :cond_0
    const-string/jumbo v2, "message-filing"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 429
    const/4 v2, 0x3

    invoke-direct {p0, v2, v4}, Lcom/helpshift/HSApiData;->getRfrFailedMessageMeta(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lcom/helpshift/HSApiData;->rfrRejected(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 430
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 432
    const/4 v2, 0x2

    invoke-direct {p0, v2, v0}, Lcom/helpshift/HSApiData;->getRfrFailedMessageMeta(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lcom/helpshift/HSApiData;->rfrRejected(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 435
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/helpshift/HSApiData;->rfrAccepted(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private sendFailMessage(Landroid/os/Handler;I)V
    .locals 4
    .param p1, "failure"    # Landroid/os/Handler;
    .param p2, "status"    # I

    .prologue
    .line 519
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 520
    .local v1, "result":Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 521
    .local v0, "messageResponse":Ljava/util/HashMap;
    const-string/jumbo v2, "status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 523
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 524
    return-void
.end method

.method protected static signalFaqsUpdated()V
    .locals 3

    .prologue
    .line 1595
    const/4 v2, 0x0

    sput-boolean v2, Lcom/helpshift/HSApiData;->faqsSyncing:Z

    .line 1596
    sget-object v2, Lcom/helpshift/HSApiData;->observers:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1597
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/helpshift/HSApiData;->observers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1598
    sget-object v2, Lcom/helpshift/HSApiData;->observers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/HSFaqSyncStatusEvents;

    .line 1599
    .local v1, "observer":Lcom/helpshift/HSFaqSyncStatusEvents;
    if-eqz v1, :cond_0

    .line 1600
    invoke-interface {v1}, Lcom/helpshift/HSFaqSyncStatusEvents;->faqsUpdated()V

    .line 1597
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1604
    .end local v1    # "observer":Lcom/helpshift/HSFaqSyncStatusEvents;
    :cond_1
    return-void
.end method

.method protected static signalSearchIndexesUpdated()V
    .locals 3

    .prologue
    .line 1608
    sget-object v2, Lcom/helpshift/HSApiData;->observers:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1609
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/helpshift/HSApiData;->observers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1610
    sget-object v2, Lcom/helpshift/HSApiData;->observers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/HSFaqSyncStatusEvents;

    .line 1611
    .local v1, "observer":Lcom/helpshift/HSFaqSyncStatusEvents;
    if-eqz v1, :cond_0

    .line 1612
    invoke-interface {v1}, Lcom/helpshift/HSFaqSyncStatusEvents;->searchIndexesUpdated()V

    .line 1609
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1616
    .end local v1    # "observer":Lcom/helpshift/HSFaqSyncStatusEvents;
    :cond_1
    return-void
.end method

.method private updateFlatList()V
    .locals 7

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/helpshift/HSApiData;->getSections()Ljava/util/ArrayList;

    move-result-object v5

    .line 114
    .local v5, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/Section;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/helpshift/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    .line 116
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 117
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/helpshift/Section;

    .line 118
    .local v4, "sectionItem":Lcom/helpshift/Section;
    invoke-virtual {v4}, Lcom/helpshift/Section;->getPublishId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/helpshift/HSApiData;->getFaqsDataForSection(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 119
    .local v1, "faqs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/Faq;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 120
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/Faq;

    .line 121
    .local v0, "faq":Lcom/helpshift/Faq;
    iget-object v6, p0, Lcom/helpshift/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 116
    .end local v0    # "faq":Lcom/helpshift/Faq;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    .end local v1    # "faqs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/Faq;>;"
    .end local v3    # "j":I
    .end local v4    # "sectionItem":Lcom/helpshift/Section;
    :cond_1
    return-void
.end method

.method private updateIndex()V
    .locals 3

    .prologue
    .line 1221
    iget-object v1, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v1}, Lcom/helpshift/HSStorage;->deleteIndex()V

    .line 1222
    invoke-direct {p0}, Lcom/helpshift/HSApiData;->updateFlatList()V

    .line 1224
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/helpshift/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lcom/helpshift/HSSearch;->indexDocuments(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v0

    .line 1225
    .local v0, "index":Ljava/util/HashMap;
    if-eqz v0, :cond_0

    .line 1226
    iget-object v1, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v1, v0}, Lcom/helpshift/HSStorage;->storeIndex(Ljava/util/HashMap;)V

    .line 1228
    :cond_0
    return-void
.end method

.method private updateMessageSeenState(Landroid/os/Handler;Landroid/os/Handler;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "messageIds"    # Lorg/json/JSONArray;
    .param p4, "source"    # Ljava/lang/String;
    .param p5, "readAt"    # Ljava/lang/String;

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/helpshift/HSApiData;->client:Lcom/helpshift/HSApiClient;

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/helpshift/HSApiClient;->updateMessageSeenState(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 1572
    return-void
.end method

.method private updateUAToken(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "profileId"    # Ljava/lang/String;
    .param p4, "deviceToken"    # Ljava/lang/String;

    .prologue
    .line 1191
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1192
    new-instance v1, Lcom/helpshift/HSApiData$13;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/HSApiData$13;-><init>(Lcom/helpshift/HSApiData;Landroid/os/Handler;)V

    .line 1202
    .local v1, "localSuccess":Landroid/os/Handler;
    new-instance v0, Lcom/helpshift/HSApiData$14;

    invoke-direct {v0, p0, p2}, Lcom/helpshift/HSApiData$14;-><init>(Lcom/helpshift/HSApiData;Landroid/os/Handler;)V

    .line 1211
    .local v0, "localFailure":Landroid/os/Handler;
    iget-object v2, p0, Lcom/helpshift/HSApiData;->client:Lcom/helpshift/HSApiClient;

    invoke-virtual {v2, v1, v0, p4, p3}, Lcom/helpshift/HSApiClient;->updateUAToken(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    .end local v0    # "localFailure":Landroid/os/Handler;
    .end local v1    # "localSuccess":Landroid/os/Handler;
    :cond_0
    return-void
.end method


# virtual methods
.method protected addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "issueId"    # Ljava/lang/String;
    .param p4, "messageText"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "refers"    # Ljava/lang/String;

    .prologue
    .line 677
    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/helpshift/HSApiData;->addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 678
    return-void
.end method

.method protected addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "issueId"    # Ljava/lang/String;
    .param p4, "messageText"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "refers"    # Ljava/lang/String;
    .param p7, "failedState"    # I

    .prologue
    .line 687
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/helpshift/HSApiData;->addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 688
    return-void
.end method

.method protected addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 13
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "issueId"    # Ljava/lang/String;
    .param p4, "messageText"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "refers"    # Ljava/lang/String;
    .param p7, "failedState"    # I
    .param p8, "messageMeta"    # Ljava/lang/String;

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v7

    .line 699
    .local v7, "profileId":Ljava/lang/String;
    new-instance v0, Lcom/helpshift/HSApiData$7;

    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/helpshift/HSApiData$7;-><init>(Lcom/helpshift/HSApiData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)V

    .line 715
    .local v0, "localFailure":Landroid/os/Handler;
    iget-object v4, p0, Lcom/helpshift/HSApiData;->client:Lcom/helpshift/HSApiClient;

    move-object v5, p1

    move-object v6, v0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p8

    invoke-virtual/range {v4 .. v12}, Lcom/helpshift/HSApiClient;->addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    return-void
.end method

.method protected addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "issueId"    # Ljava/lang/String;
    .param p4, "messageText"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "refers"    # Ljava/lang/String;
    .param p7, "messageMeta"    # Lorg/json/JSONObject;

    .prologue
    .line 668
    const/4 v7, -0x1

    invoke-virtual/range {p7 .. p7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/helpshift/HSApiData;->addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 669
    return-void
.end method

.method protected clearNotifications(Ljava/lang/String;)V
    .locals 6
    .param p1, "profileId"    # Ljava/lang/String;

    .prologue
    .line 1770
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1771
    iget-object v4, p0, Lcom/helpshift/HSApiData;->c:Landroid/content/Context;

    const-string/jumbo v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1774
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    iget-object v4, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v4, p1}, Lcom/helpshift/HSStorage;->getNotifications(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1775
    .local v3, "notifications":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 1776
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1777
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1778
    .local v0, "issueId":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_0

    .line 1781
    .end local v0    # "issueId":Ljava/lang/String;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "notificationManager":Landroid/app/NotificationManager;
    .end local v3    # "notifications":Lorg/json/JSONObject;
    :cond_0
    return-void
.end method

.method protected createIssue(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 13
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "messageText"    # Ljava/lang/String;
    .param p4, "userInfo"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/exceptions/IdentityException;
        }
    .end annotation

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v6

    .line 634
    .local v6, "profileId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 635
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {p0, v2, v0}, Lcom/helpshift/HSApiData;->getFilteredMetaData(Ljava/lang/Boolean;Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v3

    .line 637
    .local v3, "metaInfo":Lorg/json/JSONObject;
    new-instance v1, Lcom/helpshift/HSApiData$6;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/helpshift/HSApiData$6;-><init>(Lcom/helpshift/HSApiData;Lorg/json/JSONObject;Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    .local v1, "localFailure":Landroid/os/Handler;
    iget-object v7, p0, Lcom/helpshift/HSApiData;->client:Lcom/helpshift/HSApiClient;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v8, p1

    move-object v9, v1

    move-object v10, v6

    move-object/from16 v11, p3

    invoke-virtual/range {v7 .. v12}, Lcom/helpshift/HSApiClient;->createIssue(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    return-void

    .line 657
    .end local v1    # "localFailure":Landroid/os/Handler;
    .end local v3    # "metaInfo":Lorg/json/JSONObject;
    :cond_0
    new-instance v2, Lcom/helpshift/exceptions/IdentityException;

    const-string/jumbo v4, "Identity not found"

    invoke-direct {v2, v4}, Lcom/helpshift/exceptions/IdentityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected deleteFiles(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1102
    .local p1, "filenames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1103
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/helpshift/HSApiData;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1104
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1106
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method protected disableReview()V
    .locals 1

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v0}, Lcom/helpshift/HSStorage;->setReviewed()V

    .line 1028
    return-void
.end method

.method protected enableReview()V
    .locals 1

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v0}, Lcom/helpshift/HSStorage;->enableReview()V

    .line 1024
    return-void
.end method

.method protected getAllFaqs()Ljava/util/ArrayList;
    .locals 3

    .prologue
    .line 814
    iget-object v2, p0, Lcom/helpshift/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 815
    invoke-direct {p0}, Lcom/helpshift/HSApiData;->updateFlatList()V

    .line 821
    :cond_0
    iget-object v2, p0, Lcom/helpshift/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    return-object v2

    .line 817
    :cond_1
    iget-object v2, p0, Lcom/helpshift/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/Faq;

    .line 818
    .local v0, "faq":Lcom/helpshift/Faq;
    invoke-virtual {v0}, Lcom/helpshift/Faq;->clearSearchTerms()V

    goto :goto_0
.end method

.method protected getAllIssues(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 7
    .param p1, "callback"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v3

    .line 553
    .local v3, "profileId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/helpshift/HSApiData;->getAndStoreIssues(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 558
    :goto_0
    return-void

    .line 556
    :cond_0
    const/16 v0, 0x193

    invoke-direct {p0, p2, v0}, Lcom/helpshift/HSApiData;->sendFailMessage(Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method protected getAndStoreMessages(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 10
    .param p1, "issueId"    # Ljava/lang/String;
    .param p2, "success"    # Landroid/os/Handler;
    .param p3, "failure"    # Landroid/os/Handler;
    .param p4, "chatLaunchSource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1032
    invoke-virtual {p0}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v3

    .line 1033
    .local v3, "profileId":Ljava/lang/String;
    invoke-static {p1}, Lcom/helpshift/storage/IssuesDataSource;->getIssue(Ljava/lang/String;)Lcom/helpshift/models/Issue;

    move-result-object v7

    .line 1034
    .local v7, "issue":Lcom/helpshift/models/Issue;
    invoke-virtual {v7}, Lcom/helpshift/models/Issue;->getMessageList()Ljava/util/List;

    move-result-object v9

    .line 1036
    .local v9, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/models/Message;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1037
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/helpshift/models/Message;

    .line 1042
    .local v8, "lastMessage":Lcom/helpshift/models/Message;
    :goto_0
    new-instance v1, Lcom/helpshift/HSApiData$11;

    invoke-direct {v1, p0, p2}, Lcom/helpshift/HSApiData$11;-><init>(Lcom/helpshift/HSApiData;Landroid/os/Handler;)V

    .line 1055
    .local v1, "localSuccess":Landroid/os/Handler;
    iget-object v0, p0, Lcom/helpshift/HSApiData;->client:Lcom/helpshift/HSApiClient;

    invoke-virtual {v8}, Lcom/helpshift/models/Message;->getCreatedAt()Ljava/lang/String;

    move-result-object v5

    move-object v2, p3

    move-object v4, p1

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/helpshift/HSApiClient;->fetchMessages(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    return-void

    .line 1039
    .end local v1    # "localSuccess":Landroid/os/Handler;
    .end local v8    # "lastMessage":Lcom/helpshift/models/Message;
    :cond_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/helpshift/models/Message;

    .restart local v8    # "lastMessage":Lcom/helpshift/models/Message;
    goto :goto_0
.end method

.method protected getApiFailHandler(Landroid/os/Handler;Ljava/lang/String;ILorg/json/JSONObject;)Landroid/os/Handler;
    .locals 6
    .param p1, "failure"    # Landroid/os/Handler;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "params"    # Lorg/json/JSONObject;

    .prologue
    .line 1440
    new-instance v0, Lcom/helpshift/HSApiData$19;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/HSApiData$19;-><init>(Lcom/helpshift/HSApiData;Landroid/os/Handler;ILorg/json/JSONObject;Ljava/lang/String;)V

    .line 1465
    .local v0, "apiFailHandler":Landroid/os/Handler;
    return-object v0
.end method

.method protected getApiSuccessHandler(Landroid/os/Handler;Ljava/lang/String;ILorg/json/JSONObject;)Landroid/os/Handler;
    .locals 1
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "params"    # Lorg/json/JSONObject;

    .prologue
    .line 1472
    new-instance v0, Lcom/helpshift/HSApiData$20;

    invoke-direct {v0, p0, p1, p2}, Lcom/helpshift/HSApiData$20;-><init>(Lcom/helpshift/HSApiData;Landroid/os/Handler;Ljava/lang/String;)V

    .line 1487
    .local v0, "apiSuccessHandler":Landroid/os/Handler;
    return-object v0
.end method

.method protected getCSatDraft()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 1766
    iget-object v0, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v0}, Lcom/helpshift/HSStorage;->getCSatDraft()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected getCSatState(Ljava/lang/String;)Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;
    .locals 5
    .param p1, "issueId"    # Ljava/lang/String;

    .prologue
    .line 1702
    invoke-virtual {p0}, Lcom/helpshift/HSApiData;->isCSatEnabled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1703
    iget-object v3, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v3}, Lcom/helpshift/HSStorage;->getIssueCSatStates()Lorg/json/JSONObject;

    move-result-object v1

    .line 1704
    .local v1, "issueCSatStates":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 1706
    :try_start_0
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1707
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1708
    .local v2, "state":I
    invoke-static {}, Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;->values()[Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;

    move-result-object v3

    aget-object v3, v3, v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1715
    .end local v1    # "issueCSatStates":Lorg/json/JSONObject;
    .end local v2    # "state":I
    :goto_0
    return-object v3

    .line 1710
    .restart local v1    # "issueCSatStates":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1711
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "JSONException : "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1715
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "issueCSatStates":Lorg/json/JSONObject;
    :cond_0
    sget-object v3, Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_NOT_APPLICABLE:Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;

    goto :goto_0
.end method

.method protected getConfig(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 286
    iget-object v2, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v2}, Lcom/helpshift/HSStorage;->getConfig()Lorg/json/JSONObject;

    move-result-object v1

    .line 287
    .local v1, "storedConfig":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 289
    .local v0, "msgToPost":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 290
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 292
    .end local v0    # "msgToPost":Landroid/os/Message;
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/helpshift/HSApiData;->getAndStoreConfig(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 293
    return-void
.end method

.method protected getDeviceIdentifier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1060
    iget-object v1, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v1}, Lcom/helpshift/HSStorage;->getDeviceIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 1061
    .local v0, "deviceId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1064
    .end local v0    # "deviceId":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "deviceId":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/helpshift/HSApiData;->getHSId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1904
    iget-object v2, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v2}, Lcom/helpshift/HSStorage;->getLoginIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 1905
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1906
    iget-object v2, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v2}, Lcom/helpshift/HSStorage;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 1910
    .local v0, "email":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1908
    .end local v0    # "email":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/helpshift/HSApiData;->profilesManager:Lcom/helpshift/ProfilesManager;

    invoke-virtual {v2, v1}, Lcom/helpshift/ProfilesManager;->getEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "email":Ljava/lang/String;
    goto :goto_0
.end method

.method protected getFaqsDataForSection(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "publishId"    # Ljava/lang/String;

    .prologue
    .line 275
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v1, "faqs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/Faq;>;"
    :try_start_0
    iget-object v3, p0, Lcom/helpshift/HSApiData;->faqDAO:Lcom/helpshift/storage/FaqDAO;

    invoke-interface {v3, p1}, Lcom/helpshift/storage/FaqDAO;->getFaqsDataForSection(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    return-object v1

    .line 278
    :catch_0
    move-exception v2

    .line 279
    .local v2, "s":Landroid/database/SQLException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "Database exception in getting faqs for section"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected getFaqsForSection(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "publishId"    # Ljava/lang/String;

    .prologue
    .line 265
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v1, "faqs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/Faq;>;"
    :try_start_0
    iget-object v3, p0, Lcom/helpshift/HSApiData;->faqDAO:Lcom/helpshift/storage/FaqDAO;

    invoke-interface {v3, p1}, Lcom/helpshift/storage/FaqDAO;->getFaqsForSection(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    return-object v1

    .line 268
    :catch_0
    move-exception v2

    .line 269
    .local v2, "s":Landroid/database/SQLException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "Database exception in getting faqs for section"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected getFilteredMetaData(Ljava/lang/Boolean;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "isAddInfo"    # Ljava/lang/Boolean;
    .param p2, "userInfo"    # Ljava/util/HashMap;

    .prologue
    .line 612
    invoke-virtual {p0, p1}, Lcom/helpshift/HSApiData;->getMetaInfo(Ljava/lang/Boolean;)Lorg/json/JSONObject;

    move-result-object v1

    .line 614
    .local v1, "metaInfo":Lorg/json/JSONObject;
    if-eqz p2, :cond_0

    .line 616
    :try_start_0
    const-string/jumbo v2, "user_info"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v2}, Lcom/helpshift/HSStorage;->getEnableFullPrivacy()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 623
    invoke-direct {p0, v1}, Lcom/helpshift/HSApiData;->filterForPrivateData(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 626
    :cond_1
    return-object v1

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "userInfo JSONException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected getHSId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1088
    iget-object v3, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v3}, Lcom/helpshift/HSStorage;->getIdentity()Ljava/lang/String;

    move-result-object v1

    .line 1089
    .local v1, "profile_id":Ljava/lang/String;
    iget-object v3, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v3}, Lcom/helpshift/HSStorage;->getUUID()Ljava/lang/String;

    move-result-object v2

    .line 1090
    .local v2, "uuid":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1092
    .local v0, "id":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1094
    iget-object v3, p0, Lcom/helpshift/HSApiData;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1098
    :goto_0
    return-object v0

    .line 1096
    :cond_0
    invoke-virtual {p0}, Lcom/helpshift/HSApiData;->getUUID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getIssues(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 10
    .param p1, "callback"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v3

    .line 563
    .local v3, "profileId":Ljava/lang/String;
    iget-object v0, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v0, v3}, Lcom/helpshift/HSStorage;->getIssuesTs(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v9

    .line 564
    .local v9, "ts":Ljava/util/HashMap;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 565
    const-string/jumbo v0, "success"

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {p0}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/storage/IssuesDataSource;->getIssues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 567
    .local v7, "issueList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/models/Issue;>;"
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    .line 568
    .local v8, "issuesMess":Landroid/os/Message;
    iput-object v7, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 569
    invoke-virtual {p1, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 576
    .end local v7    # "issueList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/models/Issue;>;"
    .end local v8    # "issuesMess":Landroid/os/Message;
    :goto_0
    return-void

    .line 571
    :cond_0
    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/helpshift/HSApiData;->getAndStoreIssues(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 574
    :cond_1
    const/16 v0, 0x193

    invoke-direct {p0, p2, v0}, Lcom/helpshift/HSApiData;->sendFailMessage(Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method public getLatestIssues(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 527
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/helpshift/HSApiData;->getLatestIssues(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method protected getLatestIssues(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 15
    .param p1, "callback"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "chatLaunchSource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 532
    iget-object v1, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {p0}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/helpshift/HSStorage;->getIssuesTs(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v14

    .line 533
    .local v14, "ts":Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v4

    .line 534
    .local v4, "profileId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 535
    const-string/jumbo v1, "success"

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 536
    const-string/jumbo v1, "ts"

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 537
    .local v5, "dateStr":Ljava/lang/String;
    invoke-direct {p0}, Lcom/helpshift/HSApiData;->generateMC()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/helpshift/HSApiData;->getAndStoreIssues(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 545
    .end local v5    # "dateStr":Ljava/lang/String;
    :goto_0
    return-void

    .line 540
    :cond_0
    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object v9, v4

    move-object/from16 v13, p3

    invoke-direct/range {v6 .. v13}, Lcom/helpshift/HSApiData;->getAndStoreIssues(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    goto :goto_0

    .line 543
    :cond_1
    const/16 v1, 0x193

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v1}, Lcom/helpshift/HSApiData;->sendFailMessage(Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method protected getLoggedInHSId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1078
    iget-object v1, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v1}, Lcom/helpshift/HSStorage;->getLoginIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 1079
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1080
    invoke-virtual {p0}, Lcom/helpshift/HSApiData;->getHSId()Ljava/lang/String;

    move-result-object v0

    .line 1084
    :goto_0
    return-object v0

    .line 1082
    :cond_0
    iget-object v1, p0, Lcom/helpshift/HSApiData;->profilesManager:Lcom/helpshift/ProfilesManager;

    invoke-virtual {v1, v0}, Lcom/helpshift/ProfilesManager;->getProfile(Ljava/lang/String;)Lcom/helpshift/model/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/model/Profile;->getSaltedIdentifier()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getLoginId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1844
    iget-object v1, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v1}, Lcom/helpshift/HSStorage;->getLoginIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 1845
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1846
    invoke-virtual {p0}, Lcom/helpshift/HSApiData;->getUUID()Ljava/lang/String;

    move-result-object v0

    .line 1850
    :goto_0
    return-object v0

    .line 1848
    :cond_0
    iget-object v1, p0, Lcom/helpshift/HSApiData;->profilesManager:Lcom/helpshift/ProfilesManager;

    invoke-virtual {v1, v0}, Lcom/helpshift/ProfilesManager;->getProfile(Ljava/lang/String;)Lcom/helpshift/model/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/model/Profile;->getSaltedIdentifier()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getMessagesWithFails(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 5
    .param p1, "issueId"    # Ljava/lang/String;

    .prologue
    .line 1389
    :try_start_0
    invoke-static {p1}, Lcom/helpshift/storage/IssuesDataSource;->getIssue(Ljava/lang/String;)Lcom/helpshift/models/Issue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/helpshift/models/Issue;->getMessageList()Ljava/util/List;

    move-result-object v1

    .line 1390
    .local v1, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/models/Message;>;"
    iget-object v2, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    iget-object v3, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {p0}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/helpshift/HSStorage;->getFailedMessages(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v1}, Lcom/helpshift/util/IssuesUtil;->messageListToJSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/helpshift/HSStorage;->mergeMessages(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1394
    .end local v1    # "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/models/Message;>;"
    :goto_0
    return-object v2

    .line 1392
    :catch_0
    move-exception v0

    .line 1393
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "JSONException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1394
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0
.end method

.method protected getMetaInfo(Ljava/lang/Boolean;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "isAddInfo"    # Ljava/lang/Boolean;

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/helpshift/HSApiData;->isCustomIdentifier()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/helpshift/HSApiData;->c:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/helpshift/HSApiData;->getDeviceIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/helpshift/util/Meta;->getMetaInfo(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 584
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/helpshift/HSApiData;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/helpshift/util/Meta;->getMetaInfo(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method protected getNotificationCount(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 4
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;

    .prologue
    .line 826
    :try_start_0
    new-instance v1, Lcom/helpshift/HSApiData$10;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/HSApiData$10;-><init>(Lcom/helpshift/HSApiData;Landroid/os/Handler;)V

    .line 838
    .local v1, "localSuccess":Landroid/os/Handler;
    invoke-virtual {p0, v1, p2}, Lcom/helpshift/HSApiData;->getLatestIssues(Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    .end local v1    # "localSuccess":Landroid/os/Handler;
    :goto_0
    return-void

    .line 839
    :catch_0
    move-exception v0

    .line 840
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected getNotificationData(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 3
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;

    .prologue
    .line 847
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/helpshift/HSApiData;->getLatestIssues(Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    :goto_0
    return-void

    .line 848
    :catch_0
    move-exception v0

    .line 849
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "HelpShiftDebug"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected getPopulatedSections()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/Section;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    const/4 v2, 0x0

    .line 249
    .local v2, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/Section;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v3, "sectionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/Section;>;"
    :try_start_0
    iget-object v4, p0, Lcom/helpshift/HSApiData;->sectionDAO:Lcom/helpshift/storage/SectionDAO;

    invoke-interface {v4}, Lcom/helpshift/storage/SectionDAO;->getAllSections()Ljava/util/List;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    invoke-virtual {p0, v2}, Lcom/helpshift/HSApiData;->getPopulatedSections(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 256
    return-object v3

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, "s":Landroid/database/SQLException;
    const-string/jumbo v4, "HelpShiftDebug"

    const-string/jumbo v5, "Database exception in getting sections data "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected getPopulatedSections(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/Section;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/Section;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/Section;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v1, "sectionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/Section;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 240
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/Section;

    invoke-virtual {p0, v2}, Lcom/helpshift/HSApiData;->isSectionEmpty(Lcom/helpshift/Section;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 241
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_1
    return-object v1
.end method

.method public getProfileId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1864
    iget-object v2, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v2}, Lcom/helpshift/HSStorage;->getLoginIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 1865
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1866
    iget-object v2, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v2}, Lcom/helpshift/HSStorage;->getIdentity()Ljava/lang/String;

    move-result-object v1

    .line 1870
    .local v1, "profileId":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1868
    .end local v1    # "profileId":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/helpshift/HSApiData;->profilesManager:Lcom/helpshift/ProfilesManager;

    invoke-virtual {v2, v0}, Lcom/helpshift/ProfilesManager;->getProfileId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "profileId":Ljava/lang/String;
    goto :goto_0
.end method

.method protected getQuestion(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 5
    .param p1, "publishId"    # Ljava/lang/String;
    .param p2, "success"    # Landroid/os/Handler;
    .param p3, "failure"    # Landroid/os/Handler;

    .prologue
    .line 1331
    const/4 v1, 0x0

    .line 1333
    .local v1, "question":Lcom/helpshift/Faq;
    :try_start_0
    iget-object v3, p0, Lcom/helpshift/HSApiData;->faqDAO:Lcom/helpshift/storage/FaqDAO;

    invoke-interface {v3, p1}, Lcom/helpshift/storage/FaqDAO;->getFaq(Ljava/lang/String;)Lcom/helpshift/Faq;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1337
    :goto_0
    if-nez v1, :cond_0

    .line 1338
    invoke-direct {p0, p1, p2, p3}, Lcom/helpshift/HSApiData;->getQuestionAsync(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 1345
    :goto_1
    return-void

    .line 1334
    :catch_0
    move-exception v2

    .line 1335
    .local v2, "s":Landroid/database/SQLException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "Database exception in getting faq "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1340
    .end local v2    # "s":Landroid/database/SQLException;
    :cond_0
    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1341
    .local v0, "msgToPost":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1342
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1343
    invoke-direct {p0, p1, p2, p3}, Lcom/helpshift/HSApiData;->getQuestionAsync(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    goto :goto_1
.end method

.method protected getSection(Ljava/lang/String;)Lcom/helpshift/Section;
    .locals 1
    .param p1, "publishId"    # Ljava/lang/String;

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/helpshift/HSApiData;->sectionDAO:Lcom/helpshift/storage/SectionDAO;

    invoke-interface {v0, p1}, Lcom/helpshift/storage/SectionDAO;->getSection(Ljava/lang/String;)Lcom/helpshift/Section;

    move-result-object v0

    return-object v0
.end method

.method protected getSection(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 6
    .param p1, "publishId"    # Ljava/lang/String;
    .param p2, "success"    # Landroid/os/Handler;
    .param p3, "failure"    # Landroid/os/Handler;

    .prologue
    .line 1242
    :try_start_0
    iget-object v4, p0, Lcom/helpshift/HSApiData;->sectionDAO:Lcom/helpshift/storage/SectionDAO;

    invoke-interface {v4, p1}, Lcom/helpshift/storage/SectionDAO;->getSection(Ljava/lang/String;)Lcom/helpshift/Section;

    move-result-object v3

    .line 1243
    .local v3, "section":Lcom/helpshift/Section;
    if-eqz v3, :cond_0

    .line 1244
    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1245
    .local v1, "msgToPost":Landroid/os/Message;
    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1246
    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1248
    .end local v1    # "msgToPost":Landroid/os/Message;
    :cond_0
    new-instance v0, Lcom/helpshift/HSApiData$16;

    invoke-direct {v0, p0, p1, p2}, Lcom/helpshift/HSApiData$16;-><init>(Lcom/helpshift/HSApiData;Ljava/lang/String;Landroid/os/Handler;)V

    .line 1260
    .local v0, "localSuccess":Landroid/os/Handler;
    invoke-direct {p0, v0, p3}, Lcom/helpshift/HSApiData;->getAndStoreSections(Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1264
    .end local v0    # "localSuccess":Landroid/os/Handler;
    .end local v3    # "section":Lcom/helpshift/Section;
    :goto_0
    return-void

    .line 1261
    :catch_0
    move-exception v2

    .line 1262
    .local v2, "s":Landroid/database/SQLException;
    const-string/jumbo v4, "HelpShiftDebug"

    const-string/jumbo v5, "Database exception in getting section data "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected getSectionSync(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 5
    .param p1, "publishId"    # Ljava/lang/String;
    .param p2, "success"    # Landroid/os/Handler;
    .param p3, "failure"    # Landroid/os/Handler;

    .prologue
    .line 1274
    :try_start_0
    iget-object v3, p0, Lcom/helpshift/HSApiData;->sectionDAO:Lcom/helpshift/storage/SectionDAO;

    invoke-interface {v3, p1}, Lcom/helpshift/storage/SectionDAO;->getSection(Ljava/lang/String;)Lcom/helpshift/Section;

    move-result-object v2

    .line 1275
    .local v2, "section":Lcom/helpshift/Section;
    if-eqz v2, :cond_0

    .line 1276
    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1277
    .local v0, "msgToPost":Landroid/os/Message;
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1278
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1286
    .end local v0    # "msgToPost":Landroid/os/Message;
    .end local v2    # "section":Lcom/helpshift/Section;
    :goto_0
    return-void

    .line 1280
    .restart local v2    # "section":Lcom/helpshift/Section;
    :cond_0
    invoke-virtual {p3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1281
    .restart local v0    # "msgToPost":Landroid/os/Message;
    invoke-virtual {p3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1283
    .end local v0    # "msgToPost":Landroid/os/Message;
    .end local v2    # "section":Lcom/helpshift/Section;
    :catch_0
    move-exception v1

    .line 1284
    .local v1, "s":Landroid/database/SQLException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "Database exception in getting section data "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected getSections()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/Section;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    const/4 v2, 0x0

    .line 230
    .local v2, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/Section;>;"
    :try_start_0
    iget-object v3, p0, Lcom/helpshift/HSApiData;->sectionDAO:Lcom/helpshift/storage/SectionDAO;

    invoke-interface {v3}, Lcom/helpshift/storage/SectionDAO;->getAllSections()Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    return-object v2

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .local v1, "s":Landroid/database/SQLException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "Database exception in getting sections data "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected getSections(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 6
    .param p1, "callback"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;

    .prologue
    .line 209
    const/4 v3, 0x0

    .line 212
    .local v3, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/Section;>;"
    :try_start_0
    iget-object v4, p0, Lcom/helpshift/HSApiData;->sectionDAO:Lcom/helpshift/storage/SectionDAO;

    invoke-interface {v4}, Lcom/helpshift/storage/SectionDAO;->getAllSections()Ljava/util/List;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/ArrayList;

    move-object v3, v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 218
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 219
    .local v1, "result":Landroid/os/Message;
    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 220
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 221
    invoke-direct {p0, p1, p2}, Lcom/helpshift/HSApiData;->getAndStoreSections(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 225
    .end local v1    # "result":Landroid/os/Message;
    :goto_1
    return-void

    .line 213
    :catch_0
    move-exception v2

    .line 214
    .local v2, "s":Landroid/database/SQLException;
    const-string/jumbo v4, "HelpShiftDebug"

    const-string/jumbo v5, "Database exception in getting sections data "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 223
    .end local v2    # "s":Landroid/database/SQLException;
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/helpshift/HSApiData;->getAndStoreSections(Landroid/os/Handler;Landroid/os/Handler;)V

    goto :goto_1
.end method

.method protected getUUID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1069
    iget-object v1, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v1}, Lcom/helpshift/HSStorage;->getUUID()Ljava/lang/String;

    move-result-object v0

    .line 1070
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1071
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1072
    iget-object v1, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v1, v0}, Lcom/helpshift/HSStorage;->setUUID(Ljava/lang/String;)V

    .line 1074
    :cond_0
    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1884
    iget-object v2, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v2}, Lcom/helpshift/HSStorage;->getLoginIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 1885
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1886
    iget-object v2, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v2}, Lcom/helpshift/HSStorage;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 1890
    .local v1, "username":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1888
    .end local v1    # "username":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/helpshift/HSApiData;->profilesManager:Lcom/helpshift/ProfilesManager;

    invoke-virtual {v2, v0}, Lcom/helpshift/ProfilesManager;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "username":Ljava/lang/String;
    goto :goto_0
.end method

.method protected install(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v0, p1}, Lcom/helpshift/HSStorage;->setApiKey(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v0, p2}, Lcom/helpshift/HSStorage;->setDomain(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v0, p3}, Lcom/helpshift/HSStorage;->setAppId(Ljava/lang/String;)V

    .line 106
    new-instance v0, Lcom/helpshift/HSApiClient;

    iget-object v1, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-direct {v0, p2, p3, p1, v1}, Lcom/helpshift/HSApiClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/helpshift/HSStorage;)V

    iput-object v0, p0, Lcom/helpshift/HSApiData;->client:Lcom/helpshift/HSApiClient;

    .line 110
    return-void
.end method

.method protected isCSatEnabled()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 1620
    sget-object v0, Lcom/helpshift/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v1, "csat"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method protected isCustomIdentifier()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v0}, Lcom/helpshift/HSStorage;->getDeviceIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSectionEmpty(Lcom/helpshift/Section;)Z
    .locals 2
    .param p1, "section"    # Lcom/helpshift/Section;

    .prologue
    .line 260
    invoke-virtual {p1}, Lcom/helpshift/Section;->getPublishId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/helpshift/HSApiData;->getFaqsForSection(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 261
    .local v0, "faqs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/Faq;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    return v1
.end method

.method protected loadConfig()V
    .locals 6

    .prologue
    .line 965
    :try_start_0
    sget-object v3, Lcom/helpshift/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v4, "pr"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 966
    .local v1, "pr":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v3}, Lcom/helpshift/HSStorage;->getConfig()Lorg/json/JSONObject;

    move-result-object v2

    .line 967
    .local v2, "storedConfig":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 968
    invoke-static {v2}, Lcom/helpshift/res/values/HSConfig;->updateConfig(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    .end local v1    # "pr":Lorg/json/JSONObject;
    .end local v2    # "storedConfig":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 970
    :catch_0
    move-exception v0

    .line 971
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "JSON Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected loadIndex()V
    .locals 2

    .prologue
    .line 1231
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/helpshift/HSApiData$15;

    invoke-direct {v1, p0}, Lcom/helpshift/HSApiData$15;-><init>(Lcom/helpshift/HSApiData;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1236
    .local v0, "loadIndexThread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 1237
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1238
    return-void
.end method

.method protected localFaqSearch(Ljava/lang/String;Lcom/helpshift/HSSearch$HS_SEARCH_OPTIONS;)Ljava/util/ArrayList;
    .locals 17
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/helpshift/HSSearch$HS_SEARCH_OPTIONS;

    .prologue
    .line 762
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/helpshift/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    if-nez v15, :cond_2

    .line 763
    invoke-direct/range {p0 .. p0}, Lcom/helpshift/HSApiData;->updateFlatList()V

    .line 770
    :cond_0
    new-instance v11, Ljava/util/LinkedHashSet;

    invoke-direct {v11}, Ljava/util/LinkedHashSet;-><init>()V

    .line 772
    .local v11, "result":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/helpshift/Faq;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 774
    .local v10, "lcQuery":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v15}, Lcom/helpshift/HSStorage;->getDBFlag()Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 775
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v15}, Lcom/helpshift/HSStorage;->readIndex()Ljava/util/HashMap;

    move-result-object v5

    .line 776
    .local v5, "fullIndex":Ljava/util/HashMap;
    const/4 v12, 0x0

    .line 777
    .local v12, "tfidf":Ljava/util/HashMap;
    const/4 v6, 0x0

    .line 779
    .local v6, "fuzzyIndex":Ljava/util/HashMap;
    if-eqz v5, :cond_1

    .line 780
    const-string/jumbo v15, "i"

    invoke-virtual {v5, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "tfidf":Ljava/util/HashMap;
    check-cast v12, Ljava/util/HashMap;

    .line 781
    .restart local v12    # "tfidf":Ljava/util/HashMap;
    const-string/jumbo v15, "f"

    invoke-virtual {v5, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "fuzzyIndex":Ljava/util/HashMap;
    check-cast v6, Ljava/util/HashMap;

    .line 784
    .restart local v6    # "fuzzyIndex":Ljava/util/HashMap;
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v12, v1}, Lcom/helpshift/HSSearch;->queryDocs(Ljava/lang/String;Ljava/util/HashMap;Lcom/helpshift/HSSearch$HS_SEARCH_OPTIONS;)Ljava/util/ArrayList;

    move-result-object v13

    .line 785
    .local v13, "tfidfResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/helpshift/HSSearch;->getFuzzyMatches(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v7

    .line 787
    .local v7, "fuzzyMatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 788
    .local v3, "docIdTermsMap":Ljava/util/HashMap;
    const-string/jumbo v15, "f"

    invoke-virtual {v3, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 789
    .local v2, "docId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/helpshift/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/helpshift/Faq;

    .line 790
    .local v4, "faq":Lcom/helpshift/Faq;
    const-string/jumbo v15, "t"

    invoke-virtual {v3, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Lcom/helpshift/Faq;->addSearchTerms(Ljava/util/ArrayList;)V

    .line 791
    invoke-virtual {v11, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 765
    .end local v2    # "docId":Ljava/lang/String;
    .end local v3    # "docIdTermsMap":Ljava/util/HashMap;
    .end local v4    # "faq":Lcom/helpshift/Faq;
    .end local v5    # "fullIndex":Ljava/util/HashMap;
    .end local v6    # "fuzzyIndex":Ljava/util/HashMap;
    .end local v7    # "fuzzyMatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "lcQuery":Ljava/lang/String;
    .end local v11    # "result":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/helpshift/Faq;>;"
    .end local v12    # "tfidf":Ljava/util/HashMap;
    .end local v13    # "tfidfResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/helpshift/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/helpshift/Faq;

    .line 766
    .restart local v4    # "faq":Lcom/helpshift/Faq;
    invoke-virtual {v4}, Lcom/helpshift/Faq;->clearSearchTerms()V

    goto :goto_1

    .line 794
    .end local v4    # "faq":Lcom/helpshift/Faq;
    .restart local v5    # "fullIndex":Ljava/util/HashMap;
    .restart local v6    # "fuzzyIndex":Ljava/util/HashMap;
    .restart local v7    # "fuzzyMatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    .restart local v10    # "lcQuery":Ljava/lang/String;
    .restart local v11    # "result":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/helpshift/Faq;>;"
    .restart local v12    # "tfidf":Ljava/util/HashMap;
    .restart local v13    # "tfidfResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 795
    .restart local v3    # "docIdTermsMap":Ljava/util/HashMap;
    const-string/jumbo v15, "f"

    invoke-virtual {v3, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 796
    .restart local v2    # "docId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/helpshift/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/helpshift/Faq;

    .line 797
    .restart local v4    # "faq":Lcom/helpshift/Faq;
    const-string/jumbo v15, "t"

    invoke-virtual {v3, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Lcom/helpshift/Faq;->addSearchTerms(Ljava/util/ArrayList;)V

    .line 798
    invoke-virtual {v11, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 801
    .end local v2    # "docId":Ljava/lang/String;
    .end local v3    # "docIdTermsMap":Ljava/util/HashMap;
    .end local v4    # "faq":Lcom/helpshift/Faq;
    .end local v5    # "fullIndex":Ljava/util/HashMap;
    .end local v6    # "fuzzyIndex":Ljava/util/HashMap;
    .end local v7    # "fuzzyMatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "tfidf":Ljava/util/HashMap;
    .end local v13    # "tfidfResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    :cond_4
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/helpshift/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v8, v15, :cond_6

    .line 802
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/helpshift/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/helpshift/Faq;

    .line 803
    .restart local v4    # "faq":Lcom/helpshift/Faq;
    invoke-virtual {v4}, Lcom/helpshift/Faq;->getTitle()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 804
    .local v14, "title":Ljava/lang/String;
    invoke-virtual {v14, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_5

    .line 805
    invoke-virtual {v11, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 801
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 810
    .end local v4    # "faq":Lcom/helpshift/Faq;
    .end local v8    # "i":I
    .end local v14    # "title":Ljava/lang/String;
    :cond_6
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v15
.end method

.method protected login(Ljava/lang/String;)Z
    .locals 5
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1805
    invoke-static {}, Lcom/helpshift/HSAnalytics;->appIsInForeground()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1806
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "Login should be called before starting a Helpshift session"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    :goto_0
    return v2

    .line 1810
    :cond_0
    sget-object v3, Lcom/helpshift/res/values/HSConsts;->invalidLogins:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1811
    invoke-virtual {p0}, Lcom/helpshift/HSApiData;->logout()V

    goto :goto_0

    .line 1815
    :cond_1
    invoke-virtual {p0}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/helpshift/HSApiData;->clearNotifications(Ljava/lang/String;)V

    .line 1817
    iget-object v2, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v2}, Lcom/helpshift/HSStorage;->getLoginIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 1818
    .local v0, "previousLogin":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1819
    iget-object v2, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v2, p1}, Lcom/helpshift/HSStorage;->setLoginIdentifier(Ljava/lang/String;)V

    .line 1820
    new-instance v1, Lcom/helpshift/HSApiData$24;

    invoke-direct {v1, p0}, Lcom/helpshift/HSApiData$24;-><init>(Lcom/helpshift/HSApiData;)V

    .line 1827
    .local v1, "success":Landroid/os/Handler;
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/helpshift/HSApiData;->getNotificationData(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 1830
    .end local v1    # "success":Landroid/os/Handler;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected logout()V
    .locals 2

    .prologue
    .line 1834
    invoke-static {}, Lcom/helpshift/HSAnalytics;->appIsInForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1835
    const-string/jumbo v0, "HelpShiftDebug"

    const-string/jumbo v1, "Logout should be called before starting a Helpshift session"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    :goto_0
    return-void

    .line 1838
    :cond_0
    invoke-virtual {p0}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helpshift/HSApiData;->clearNotifications(Ljava/lang/String;)V

    .line 1839
    iget-object v0, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/helpshift/HSStorage;->setLoginIdentifier(Ljava/lang/String;)V

    .line 1840
    invoke-virtual {p0}, Lcom/helpshift/HSApiData;->showNotifications()V

    goto :goto_0
.end method

.method protected markQuestion(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 7
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "faqId"    # Ljava/lang/String;
    .param p4, "helpful"    # Ljava/lang/Boolean;

    .prologue
    .line 722
    new-instance v0, Lcom/helpshift/HSApiData$8;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/HSApiData$8;-><init>(Lcom/helpshift/HSApiData;Ljava/lang/String;Ljava/lang/Boolean;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 743
    .local v0, "localSuccess":Landroid/os/Handler;
    new-instance v6, Lcom/helpshift/HSApiData$9;

    invoke-direct {v6, p0, p3, p4, p2}, Lcom/helpshift/HSApiData$9;-><init>(Lcom/helpshift/HSApiData;Ljava/lang/String;Ljava/lang/Boolean;Landroid/os/Handler;)V

    .line 753
    .local v6, "localFailure":Landroid/os/Handler;
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 754
    iget-object v1, p0, Lcom/helpshift/HSApiData;->client:Lcom/helpshift/HSApiClient;

    invoke-virtual {v1, v0, v6, p3}, Lcom/helpshift/HSApiClient;->markHelpful(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;)V

    .line 759
    :goto_0
    return-void

    .line 756
    :cond_0
    iget-object v1, p0, Lcom/helpshift/HSApiData;->client:Lcom/helpshift/HSApiClient;

    invoke-virtual {v1, v0, v6, p3}, Lcom/helpshift/HSApiClient;->markUnhelpful(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected registerProfile(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "success"    # Landroid/os/Handler;
    .param p2, "failure"    # Landroid/os/Handler;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;
    .param p5, "identifier"    # Ljava/lang/String;

    .prologue
    .line 1144
    const/4 v7, 0x0

    .line 1147
    .local v7, "crittercismId":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v1, "com.crittercism.app.Crittercism"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 1148
    .local v8, "Crittercism":Ljava/lang/Class;
    const-string/jumbo v3, "getUserUUID"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v8, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 1149
    .local v11, "getUserUUID":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v11, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1156
    .end local v8    # "Crittercism":Ljava/lang/Class;
    .end local v11    # "getUserUUID":Ljava/lang/reflect/Method;
    :goto_0
    new-instance v2, Lcom/helpshift/HSApiData$12;

    invoke-direct {v2, p0, p1}, Lcom/helpshift/HSApiData$12;-><init>(Lcom/helpshift/HSApiData;Landroid/os/Handler;)V

    .line 1165
    .local v2, "localSuccess":Landroid/os/Handler;
    iget-object v1, p0, Lcom/helpshift/HSApiData;->client:Lcom/helpshift/HSApiClient;

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/helpshift/HSApiClient;->registerProfile(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    return-void

    .line 1150
    .end local v2    # "localSuccess":Landroid/os/Handler;
    :catch_0
    move-exception v9

    .line 1151
    .local v9, "cnfe":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v3, "If you are not using Crittercism. Please ignore this"

    invoke-static {v1, v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1152
    .end local v9    # "cnfe":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v10

    .line 1153
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v3, "If you are not using Crittercism. Please ignore this"

    invoke-static {v1, v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected reportActionEvents()V
    .locals 1

    .prologue
    .line 880
    invoke-static {}, Lcom/helpshift/HSFunnel;->getActions()Lorg/json/JSONArray;

    move-result-object v0

    .line 881
    .local v0, "actions":Lorg/json/JSONArray;
    invoke-direct {p0, v0}, Lcom/helpshift/HSApiData;->reportActionEvents(Lorg/json/JSONArray;)V

    .line 882
    return-void
.end method

.method protected reportAppStartEvent()V
    .locals 10

    .prologue
    .line 861
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 862
    .local v0, "actions":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 864
    .local v2, "eventObj":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "ts"

    sget-object v4, Lcom/helpshift/util/HSFormat;->tsSecFormatter:Ljava/text/DecimalFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 865
    const-string/jumbo v3, "t"

    const-string/jumbo v4, "a"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 866
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    :goto_0
    invoke-direct {p0, v0}, Lcom/helpshift/HSApiData;->reportActionEvents(Lorg/json/JSONArray;)V

    .line 871
    return-void

    .line 867
    :catch_0
    move-exception v1

    .line 868
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "JSONException"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected resetReviewCounter()V
    .locals 8

    .prologue
    .line 1003
    iget-object v4, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v4}, Lcom/helpshift/HSStorage;->getReviewCounter()I

    move-result v3

    .line 1006
    .local v3, "reviewCounter":I
    :try_start_0
    iget-object v4, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v4}, Lcom/helpshift/HSStorage;->getConfig()Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "pr"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1007
    .local v2, "pr":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 1008
    const-string/jumbo v4, "t"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1009
    .local v0, "counterType":Ljava/lang/String;
    const-string/jumbo v4, "s"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1010
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v3, v4

    .line 1014
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v4, v3}, Lcom/helpshift/HSStorage;->setReviewCounter(I)V

    .line 1015
    iget-object v4, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/helpshift/HSStorage;->setLaunchReviewCounter(I)V

    .line 1020
    .end local v0    # "counterType":Ljava/lang/String;
    .end local v2    # "pr":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    return-void

    .line 1011
    .restart local v0    # "counterType":Ljava/lang/String;
    .restart local v2    # "pr":Lorg/json/JSONObject;
    :cond_2
    const-string/jumbo v4, "l"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 1012
    const/4 v3, 0x0

    goto :goto_0

    .line 1017
    .end local v0    # "counterType":Ljava/lang/String;
    .end local v2    # "pr":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 1018
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "HelpShiftDebug"

    const-string/jumbo v5, "Reseting review counter"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected resetServiceInterval()V
    .locals 0

    .prologue
    .line 1348
    invoke-static {}, Lcom/helpshift/HSService;->resetInterval()V

    .line 1349
    return-void
.end method

.method protected sendCustomerSatisfactionSurvey(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 14
    .param p1, "rating"    # Ljava/lang/Integer;
    .param p2, "feedback"    # Ljava/lang/String;
    .param p3, "issueId"    # Ljava/lang/String;
    .param p4, "success"    # Landroid/os/Handler;
    .param p5, "failure"    # Landroid/os/Handler;

    .prologue
    .line 1629
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    if-gt v2, v3, :cond_2

    .line 1630
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 1631
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/helpshift/HSApiData;->getCSatState(Ljava/lang/String;)Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;

    move-result-object v11

    .line 1632
    .local v11, "hasCSatSurveyBeenSent":Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;
    sget-object v2, Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_REQUESTED:Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;

    if-eq v11, v2, :cond_0

    sget-object v2, Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_RETRYING:Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;

    if-ne v11, v2, :cond_1

    .line 1634
    :cond_0
    new-instance v6, Lcom/helpshift/HSApiData$22;

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-direct {v6, p0, v0, v1}, Lcom/helpshift/HSApiData$22;-><init>(Lcom/helpshift/HSApiData;Landroid/os/Handler;Ljava/lang/String;)V

    .line 1647
    .local v6, "localSuccess":Landroid/os/Handler;
    sget-object v2, Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_DONE:Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;

    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v2}, Lcom/helpshift/HSApiData;->setCSatState(Ljava/lang/String;Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;)Ljava/lang/Boolean;

    .line 1649
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 1651
    .local v12, "requestObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "r"

    invoke-virtual {v12, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1652
    const-string/jumbo v2, "f"

    move-object/from16 v0, p2

    invoke-virtual {v12, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1653
    const-string/jumbo v2, "id"

    move-object/from16 v0, p3

    invoke-virtual {v12, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1658
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "csat_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    move-object/from16 v0, p5

    invoke-virtual {p0, v0, v2, v3, v12}, Lcom/helpshift/HSApiData;->getApiFailHandler(Landroid/os/Handler;Ljava/lang/String;ILorg/json/JSONObject;)Landroid/os/Handler;

    move-result-object v8

    .line 1660
    .local v8, "apiFailHandler":Landroid/os/Handler;
    new-instance v7, Lcom/helpshift/HSApiData$23;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v7, p0, v0, v1, v8}, Lcom/helpshift/HSApiData$23;-><init>(Lcom/helpshift/HSApiData;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 1677
    .local v7, "localFailure":Landroid/os/Handler;
    iget-object v2, p0, Lcom/helpshift/HSApiData;->client:Lcom/helpshift/HSApiClient;

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/helpshift/HSApiClient;->sendCustomerSatisfactionRating(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 1698
    .end local v6    # "localSuccess":Landroid/os/Handler;
    .end local v7    # "localFailure":Landroid/os/Handler;
    .end local v8    # "apiFailHandler":Landroid/os/Handler;
    .end local v11    # "hasCSatSurveyBeenSent":Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;
    .end local v12    # "requestObject":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 1654
    .restart local v6    # "localSuccess":Landroid/os/Handler;
    .restart local v11    # "hasCSatSurveyBeenSent":Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;
    .restart local v12    # "requestObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v9

    .line 1655
    .local v9, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "JSONException : "

    invoke-static {v2, v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1680
    .end local v6    # "localSuccess":Landroid/os/Handler;
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v12    # "requestObject":Lorg/json/JSONObject;
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v13

    .line 1681
    .local v13, "result":Landroid/os/Message;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1682
    .local v10, "failureMessage":Ljava/util/HashMap;
    const-string/jumbo v2, "status"

    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1683
    const-string/jumbo v2, "reason"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CSat survey already done for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    iput-object v10, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1686
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1689
    .end local v10    # "failureMessage":Ljava/util/HashMap;
    .end local v11    # "hasCSatSurveyBeenSent":Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;
    .end local v13    # "result":Landroid/os/Message;
    :cond_2
    invoke-virtual/range {p5 .. p5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v13

    .line 1691
    .restart local v13    # "result":Landroid/os/Message;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1692
    .restart local v10    # "failureMessage":Ljava/util/HashMap;
    const-string/jumbo v2, "status"

    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1693
    const-string/jumbo v2, "reason"

    const-string/jumbo v3, "Rating not in range"

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1695
    iput-object v10, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1696
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method protected declared-synchronized sendFailedApiCalls()V
    .locals 21

    .prologue
    .line 1491
    monitor-enter p0

    :try_start_0
    new-instance v18, Lcom/helpshift/HSApiData$21;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/helpshift/HSApiData$21;-><init>(Lcom/helpshift/HSApiData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1499
    .local v18, "localHandler":Landroid/os/Handler;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v5}, Lcom/helpshift/HSStorage;->getFailedApiCalls()Lorg/json/JSONObject;

    move-result-object v16

    .line 1501
    .local v16, "failedApiCalls":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/helpshift/HSApiData;->failedApiKeys:Ljava/util/Iterator;

    if-nez v5, :cond_0

    .line 1502
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/helpshift/HSApiData;->failedApiKeys:Ljava/util/Iterator;

    .line 1505
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/helpshift/HSApiData;->failedApiKeys:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1506
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/helpshift/HSApiData;->failedApiKeys:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1507
    .local v17, "key":Ljava/lang/String;
    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/json/JSONObject;

    .line 1508
    .local v15, "failedApiCall":Lorg/json/JSONObject;
    const-string/jumbo v5, "p"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    .line 1509
    .local v19, "params":Lorg/json/JSONObject;
    const-string/jumbo v5, "t"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 1511
    .local v20, "type":I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move/from16 v3, v20

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/helpshift/HSApiData;->getApiSuccessHandler(Landroid/os/Handler;Ljava/lang/String;ILorg/json/JSONObject;)Landroid/os/Handler;

    move-result-object v6

    .line 1512
    .local v6, "apiSuccessHandler":Landroid/os/Handler;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move/from16 v3, v20

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/helpshift/HSApiData;->getApiFailHandler(Landroid/os/Handler;Ljava/lang/String;ILorg/json/JSONObject;)Landroid/os/Handler;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 1514
    .local v7, "apiFailHandler":Landroid/os/Handler;
    packed-switch v20, :pswitch_data_0

    .line 1544
    .end local v6    # "apiSuccessHandler":Landroid/os/Handler;
    .end local v7    # "apiFailHandler":Landroid/os/Handler;
    .end local v15    # "failedApiCall":Lorg/json/JSONObject;
    .end local v16    # "failedApiCalls":Lorg/json/JSONObject;
    .end local v17    # "key":Ljava/lang/String;
    .end local v19    # "params":Lorg/json/JSONObject;
    .end local v20    # "type":I
    :goto_0
    monitor-exit p0

    return-void

    .line 1516
    .restart local v6    # "apiSuccessHandler":Landroid/os/Handler;
    .restart local v7    # "apiFailHandler":Landroid/os/Handler;
    .restart local v15    # "failedApiCall":Lorg/json/JSONObject;
    .restart local v16    # "failedApiCalls":Lorg/json/JSONObject;
    .restart local v17    # "key":Ljava/lang/String;
    .restart local v19    # "params":Lorg/json/JSONObject;
    .restart local v20    # "type":I
    :pswitch_0
    :try_start_2
    const-string/jumbo v5, "f"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "h"

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v5, v8}, Lcom/helpshift/HSApiData;->markQuestion(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1541
    .end local v6    # "apiSuccessHandler":Landroid/os/Handler;
    .end local v7    # "apiFailHandler":Landroid/os/Handler;
    .end local v15    # "failedApiCall":Lorg/json/JSONObject;
    .end local v16    # "failedApiCalls":Lorg/json/JSONObject;
    .end local v17    # "key":Ljava/lang/String;
    .end local v19    # "params":Lorg/json/JSONObject;
    .end local v20    # "type":I
    :catch_0
    move-exception v14

    .line 1542
    .local v14, "e":Lorg/json/JSONException;
    :try_start_3
    const-string/jumbo v5, "HelpShiftDebug"

    const-string/jumbo v8, "JSONException"

    invoke-static {v5, v8, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1491
    .end local v14    # "e":Lorg/json/JSONException;
    .end local v18    # "localHandler":Landroid/os/Handler;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1520
    .restart local v6    # "apiSuccessHandler":Landroid/os/Handler;
    .restart local v7    # "apiFailHandler":Landroid/os/Handler;
    .restart local v15    # "failedApiCall":Lorg/json/JSONObject;
    .restart local v16    # "failedApiCalls":Lorg/json/JSONObject;
    .restart local v17    # "key":Ljava/lang/String;
    .restart local v18    # "localHandler":Landroid/os/Handler;
    .restart local v19    # "params":Lorg/json/JSONObject;
    .restart local v20    # "type":I
    :pswitch_1
    :try_start_4
    const-string/jumbo v5, "profile-id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "device-token"

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v5, v8}, Lcom/helpshift/HSApiData;->updateUAToken(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    :pswitch_2
    invoke-static/range {v19 .. v19}, Lcom/helpshift/util/HSJSONUtils;->toStringHashMap(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v5}, Lcom/helpshift/HSApiData;->reportActionEvents(Landroid/os/Handler;Landroid/os/Handler;Ljava/util/HashMap;)V

    goto :goto_0

    .line 1526
    :pswitch_3
    const-string/jumbo v5, "mids"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const-string/jumbo v5, "src"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v5, "at"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/helpshift/HSApiData;->updateMessageSeenState(Landroid/os/Handler;Landroid/os/Handler;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1531
    :pswitch_4
    const-string/jumbo v5, "r"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string/jumbo v5, "f"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v5, "id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v8, p0

    move-object v12, v6

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/helpshift/HSApiData;->sendCustomerSatisfactionSurvey(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 1539
    .end local v6    # "apiSuccessHandler":Landroid/os/Handler;
    .end local v7    # "apiFailHandler":Landroid/os/Handler;
    .end local v15    # "failedApiCall":Lorg/json/JSONObject;
    .end local v17    # "key":Ljava/lang/String;
    .end local v19    # "params":Lorg/json/JSONObject;
    .end local v20    # "type":I
    :cond_1
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/helpshift/HSApiData;->failedApiKeys:Ljava/util/Iterator;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1514
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected sendFailedMessages()V
    .locals 10

    .prologue
    .line 1401
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {p0}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/helpshift/HSStorage;->popFailedMessage(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 1403
    .local v9, "failedMessage":Lorg/json/JSONObject;
    if-nez v9, :cond_0

    .line 1425
    .end local v9    # "failedMessage":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1407
    .restart local v9    # "failedMessage":Lorg/json/JSONObject;
    :cond_0
    new-instance v1, Lcom/helpshift/HSApiData$18;

    invoke-direct {v1, p0}, Lcom/helpshift/HSApiData$18;-><init>(Lcom/helpshift/HSApiData;)V

    .line 1416
    .local v1, "localSuccess":Landroid/os/Handler;
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

    invoke-virtual/range {v0 .. v7}, Lcom/helpshift/HSApiData;->addMessage(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1422
    .end local v1    # "localSuccess":Landroid/os/Handler;
    .end local v9    # "failedMessage":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    .line 1423
    .local v8, "e":Lorg/json/JSONException;
    const-string/jumbo v0, "HelpShiftDebug"

    const-string/jumbo v2, "SendfailedMessages failed"

    invoke-static {v0, v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected setCSatState(Ljava/lang/String;Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "issueId"    # Ljava/lang/String;
    .param p2, "state"    # Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;

    .prologue
    .line 1720
    iget-object v3, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v3}, Lcom/helpshift/HSStorage;->getIssueCSatStates()Lorg/json/JSONObject;

    move-result-object v1

    .line 1721
    .local v1, "issueCSatStates":Lorg/json/JSONObject;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1723
    .local v2, "status":Ljava/lang/Boolean;
    if-nez v1, :cond_0

    .line 1724
    new-instance v1, Lorg/json/JSONObject;

    .end local v1    # "issueCSatStates":Lorg/json/JSONObject;
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1730
    .restart local v1    # "issueCSatStates":Lorg/json/JSONObject;
    :cond_0
    :try_start_0
    sget-object v3, Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_RETRYING:Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;

    if-eq p2, v3, :cond_1

    sget-object v3, Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_DONE:Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;

    if-eq p2, v3, :cond_1

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_DONE:Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;

    invoke-virtual {v4}, Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;->ordinal()I

    move-result v4

    if-eq v3, v4, :cond_2

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_RETRYING:Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;

    invoke-virtual {v4}, Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;->ordinal()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 1735
    :cond_1
    invoke-virtual {p2}, Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;->ordinal()I

    move-result v3

    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1736
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1737
    iget-object v3, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v3, v1}, Lcom/helpshift/HSStorage;->setIssueCSatStates(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1742
    :cond_2
    :goto_0
    return-object v2

    .line 1739
    :catch_0
    move-exception v0

    .line 1740
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "JSONException : "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 2
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 1894
    iget-object v1, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v1}, Lcom/helpshift/HSStorage;->getLoginIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 1895
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1896
    iget-object v1, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v1, p1}, Lcom/helpshift/HSStorage;->setEmail(Ljava/lang/String;)V

    .line 1900
    :goto_0
    return-void

    .line 1898
    :cond_0
    iget-object v1, p0, Lcom/helpshift/HSApiData;->profilesManager:Lcom/helpshift/ProfilesManager;

    invoke-virtual {v1, v0, p1}, Lcom/helpshift/ProfilesManager;->setEmail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setProfileId(Ljava/lang/String;)V
    .locals 2
    .param p1, "profileId"    # Ljava/lang/String;

    .prologue
    .line 1854
    iget-object v1, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v1}, Lcom/helpshift/HSStorage;->getLoginIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 1855
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1856
    iget-object v1, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v1, p1}, Lcom/helpshift/HSStorage;->setIdentity(Ljava/lang/String;)V

    .line 1860
    :goto_0
    return-void

    .line 1858
    :cond_0
    iget-object v1, p0, Lcom/helpshift/HSApiData;->profilesManager:Lcom/helpshift/ProfilesManager;

    invoke-virtual {v1, v0, p1}, Lcom/helpshift/ProfilesManager;->setProfileId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 1874
    iget-object v1, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v1}, Lcom/helpshift/HSStorage;->getLoginIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 1875
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1876
    iget-object v1, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v1, p1}, Lcom/helpshift/HSStorage;->setUsername(Ljava/lang/String;)V

    .line 1880
    :goto_0
    return-void

    .line 1878
    :cond_0
    iget-object v1, p0, Lcom/helpshift/HSApiData;->profilesManager:Lcom/helpshift/ProfilesManager;

    invoke-virtual {v1, v0, p1}, Lcom/helpshift/ProfilesManager;->setName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected showNotifications()V
    .locals 12

    .prologue
    .line 1784
    invoke-virtual {p0}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v10

    .line 1785
    .local v10, "profileId":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1786
    iget-object v0, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v0, v10}, Lcom/helpshift/HSStorage;->getNotifications(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 1787
    .local v9, "notifications":Lorg/json/JSONObject;
    invoke-virtual {v9}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 1788
    .local v7, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1789
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1791
    .local v1, "issueId":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 1792
    .local v8, "notification":Lorg/json/JSONObject;
    const-string/jumbo v0, "issueTs"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1793
    .local v2, "issueTs":I
    const-string/jumbo v0, "newMessageCount"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1794
    .local v3, "newMessageCount":I
    const-string/jumbo v0, "chatLaunchSource"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1795
    .local v4, "chatLaunchSource":Ljava/lang/String;
    const-string/jumbo v0, "contentTitle"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1796
    .local v5, "contentTitle":Ljava/lang/String;
    iget-object v0, p0, Lcom/helpshift/HSApiData;->c:Landroid/content/Context;

    invoke-static/range {v0 .. v5}, Lcom/helpshift/util/HSNotification;->showNotif(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1797
    .end local v2    # "issueTs":I
    .end local v3    # "newMessageCount":I
    .end local v4    # "chatLaunchSource":Ljava/lang/String;
    .end local v5    # "contentTitle":Ljava/lang/String;
    .end local v8    # "notification":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 1798
    .local v6, "e":Lorg/json/JSONException;
    const-string/jumbo v0, "HelpShiftDebug"

    const-string/jumbo v11, "showNotifications"

    invoke-static {v0, v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1802
    .end local v1    # "issueId":Ljava/lang/String;
    .end local v6    # "e":Lorg/json/JSONException;
    .end local v7    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v9    # "notifications":Lorg/json/JSONObject;
    :cond_0
    return-void
.end method

.method protected showReviewP()Ljava/lang/Boolean;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 941
    iget-object v5, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v5}, Lcom/helpshift/HSStorage;->getReviewed()I

    move-result v5

    if-nez v5, :cond_1

    .line 942
    sget-object v5, Lcom/helpshift/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v6, "pr"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 943
    .local v2, "pr":Lorg/json/JSONObject;
    sget-object v5, Lcom/helpshift/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v6, "rurl"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 944
    .local v4, "rurl":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string/jumbo v5, "s"

    invoke-virtual {v2, v5, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 945
    iget-object v5, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v5}, Lcom/helpshift/HSStorage;->getReviewCounter()I

    move-result v3

    .line 946
    .local v3, "reviewCount":I
    const-string/jumbo v5, "t"

    const-string/jumbo v6, ""

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 947
    .local v1, "counterType":Ljava/lang/String;
    const-string/jumbo v5, "i"

    invoke-virtual {v2, v5, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 948
    .local v0, "counterInterval":I
    if-lez v0, :cond_1

    .line 949
    const-string/jumbo v5, "l"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-lt v3, v0, :cond_0

    .line 951
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 960
    .end local v0    # "counterInterval":I
    .end local v1    # "counterType":Ljava/lang/String;
    .end local v2    # "pr":Lorg/json/JSONObject;
    .end local v3    # "reviewCount":I
    .end local v4    # "rurl":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 952
    .restart local v0    # "counterInterval":I
    .restart local v1    # "counterType":Ljava/lang/String;
    .restart local v2    # "pr":Lorg/json/JSONObject;
    .restart local v3    # "reviewCount":I
    .restart local v4    # "rurl":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "s"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    int-to-long v8, v3

    sub-long/2addr v6, v8

    int-to-long v8, v0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_1

    .line 955
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    .line 960
    .end local v0    # "counterInterval":I
    .end local v1    # "counterType":Ljava/lang/String;
    .end local v2    # "pr":Lorg/json/JSONObject;
    .end local v3    # "reviewCount":I
    .end local v4    # "rurl":Ljava/lang/String;
    :cond_1
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0
.end method

.method protected startInAppService()V
    .locals 10

    .prologue
    .line 1357
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 1358
    .local v5, "enableInAppNotification":Ljava/lang/Boolean;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1359
    .local v1, "config":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v8}, Lcom/helpshift/HSStorage;->getDeviceToken()Ljava/lang/String;

    move-result-object v3

    .line 1362
    .local v3, "deviceToken":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v8}, Lcom/helpshift/HSStorage;->getAppConfig()Lorg/json/JSONObject;

    move-result-object v1

    .line 1363
    const-string/jumbo v8, "enableInAppNotification"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1364
    const-string/jumbo v8, "enableInAppNotification"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/Boolean;

    move-object v5, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1370
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "unreg"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1372
    :cond_1
    invoke-virtual {p0}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v6

    .line 1373
    .local v6, "profileId":Ljava/lang/String;
    iget-object v8, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {p0}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/helpshift/HSStorage;->getActiveConversation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1374
    .local v2, "conversation":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1375
    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/helpshift/HSApiData;->c:Landroid/content/Context;

    const-class v9, Lcom/helpshift/HSService;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1376
    .local v7, "service":Landroid/content/Intent;
    iget-object v8, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v8}, Lcom/helpshift/HSStorage;->getLibraryVersion()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "3.10.0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1378
    invoke-virtual {p0}, Lcom/helpshift/HSApiData;->stopInAppService()V

    .line 1380
    :cond_2
    iget-object v8, p0, Lcom/helpshift/HSApiData;->c:Landroid/content/Context;

    invoke-virtual {v8, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1385
    .end local v2    # "conversation":Ljava/lang/String;
    .end local v6    # "profileId":Ljava/lang/String;
    .end local v7    # "service":Landroid/content/Intent;
    :cond_3
    :goto_1
    return-void

    .line 1366
    :catch_0
    move-exception v4

    .line 1367
    .local v4, "e":Lorg/json/JSONException;
    const-string/jumbo v8, "HelpShiftDebug"

    const-string/jumbo v9, "startInAppService JSONException"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1383
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_4
    invoke-virtual {p0}, Lcom/helpshift/HSApiData;->stopInAppService()V

    goto :goto_1
.end method

.method protected stopInAppService()V
    .locals 3

    .prologue
    .line 1352
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/helpshift/HSApiData;->c:Landroid/content/Context;

    const-class v2, Lcom/helpshift/HSService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1353
    .local v0, "service":Landroid/content/Intent;
    iget-object v1, p0, Lcom/helpshift/HSApiData;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1354
    return-void
.end method

.method protected storeCSatDraft(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "issueId"    # Ljava/lang/String;
    .param p2, "rating"    # Ljava/lang/Integer;
    .param p3, "feedback"    # Ljava/lang/String;

    .prologue
    .line 1747
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1748
    .local v2, "state":Ljava/lang/Boolean;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1749
    .local v0, "csatDraft":Lorg/json/JSONObject;
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 1751
    :try_start_0
    const-string/jumbo v3, "id"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1752
    const-string/jumbo v3, "rating"

    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1753
    const-string/jumbo v3, "feedback"

    invoke-virtual {v0, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1754
    iget-object v3, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v3, v0}, Lcom/helpshift/HSStorage;->setCSatDraft(Lorg/json/JSONObject;)V

    .line 1755
    sget-object v3, Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_INPROGRESS:Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;

    invoke-virtual {p0, p1, v3}, Lcom/helpshift/HSApiData;->setCSatState(Ljava/lang/String;Lcom/helpshift/HSApiData$HS_ISSUE_CSAT_STATE;)Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1761
    :goto_0
    return-object v2

    .line 1757
    :catch_0
    move-exception v1

    .line 1758
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "JSONException : "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public storeFile(Ljava/lang/String;)V
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0xa

    .line 1110
    :try_start_0
    iget-object v6, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v6}, Lcom/helpshift/HSStorage;->getStoredFiles()Lorg/json/JSONArray;

    move-result-object v2

    .line 1111
    .local v2, "fileJsonList":Lorg/json/JSONArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1113
    .local v1, "fileArrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 1114
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1113
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1117
    :cond_0
    const/4 v6, 0x0

    invoke-interface {v1, v6, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1120
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v7, :cond_2

    .line 1121
    const/4 v6, 0x0

    const/16 v7, 0xa

    invoke-interface {v1, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 1123
    .local v3, "finalFileArrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 1124
    .local v4, "finalFileJsonList":Lorg/json/JSONArray;
    const/4 v5, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 1125
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1124
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1127
    :cond_1
    const/16 v6, 0xa

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v1, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/helpshift/HSApiData;->deleteFiles(Ljava/util/List;)V

    .line 1128
    iget-object v6, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v6, v4}, Lcom/helpshift/HSStorage;->setStoredFiles(Lorg/json/JSONArray;)V

    .line 1140
    .end local v1    # "fileArrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "fileJsonList":Lorg/json/JSONArray;
    .end local v3    # "finalFileArrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "finalFileJsonList":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :goto_2
    return-void

    .line 1130
    .restart local v1    # "fileArrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "fileJsonList":Lorg/json/JSONArray;
    .restart local v5    # "i":I
    :cond_2
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 1131
    .restart local v4    # "finalFileJsonList":Lorg/json/JSONArray;
    const/4 v5, 0x0

    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 1132
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1131
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1134
    :cond_3
    iget-object v6, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v6, v4}, Lcom/helpshift/HSStorage;->setStoredFiles(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1137
    .end local v1    # "fileArrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "fileJsonList":Lorg/json/JSONArray;
    .end local v4    # "finalFileJsonList":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :catch_0
    move-exception v0

    .line 1138
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v6, "HelpShiftDebug"

    const-string/jumbo v7, "storeFile"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method protected updateMessageSeenState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "issueId"    # Ljava/lang/String;
    .param p2, "chatLaunchSource"    # Ljava/lang/String;

    .prologue
    .line 1547
    invoke-static/range {p1 .. p1}, Lcom/helpshift/models/Message;->updateMessagesSeenState(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 1548
    .local v10, "messageIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v10}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 1549
    .local v5, "messageIds":Lorg/json/JSONArray;
    sget-object v2, Lcom/helpshift/util/HSFormat;->tsSecFormatter:Ljava/text/DecimalFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-double v12, v12

    const-wide v14, 0x408f400000000000L    # 1000.0

    div-double/2addr v12, v14

    invoke-virtual {v2, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    .line 1551
    .local v7, "readAt":Ljava/lang/String;
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 1554
    .local v11, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "mids"

    invoke-virtual {v11, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1555
    const-string/jumbo v2, "src"

    move-object/from16 v0, p2

    invoke-virtual {v11, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1556
    const-string/jumbo v2, "at"

    invoke-virtual {v11, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1560
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "msg_seen_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1562
    .local v9, "key":Ljava/lang/String;
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9, v3, v11}, Lcom/helpshift/HSApiData;->getApiFailHandler(Landroid/os/Handler;Ljava/lang/String;ILorg/json/JSONObject;)Landroid/os/Handler;

    move-result-object v4

    .line 1565
    .local v4, "apiFailHandler":Landroid/os/Handler;
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/helpshift/HSApiData;->updateMessageSeenState(Landroid/os/Handler;Landroid/os/Handler;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    return-void

    .line 1557
    .end local v4    # "apiFailHandler":Landroid/os/Handler;
    .end local v9    # "key":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1558
    .local v8, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "JSONException"

    invoke-static {v2, v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected updateReviewCounter()V
    .locals 8

    .prologue
    .line 978
    iget-object v4, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v4}, Lcom/helpshift/HSStorage;->getReviewCounter()I

    move-result v3

    .line 979
    .local v3, "reviewCounter":I
    iget-object v4, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v4}, Lcom/helpshift/HSStorage;->getLaunchReviewCounter()I

    move-result v1

    .line 981
    .local v1, "launchReviewCounter":I
    if-nez v3, :cond_0

    .line 982
    move v1, v3

    .line 983
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v3, v4

    .line 986
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 987
    iget-object v4, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v4, v1}, Lcom/helpshift/HSStorage;->setLaunchReviewCounter(I)V

    .line 989
    invoke-virtual {p0}, Lcom/helpshift/HSApiData;->loadConfig()V

    .line 990
    sget-object v4, Lcom/helpshift/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v5, "pr"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 991
    .local v2, "pr":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 992
    const-string/jumbo v4, "t"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 993
    .local v0, "counterType":Ljava/lang/String;
    const-string/jumbo v4, "l"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 994
    iget-object v4, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v4}, Lcom/helpshift/HSStorage;->getLaunchReviewCounter()I

    move-result v3

    .line 997
    .end local v0    # "counterType":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v4, v3}, Lcom/helpshift/HSStorage;->setReviewCounter(I)V

    .line 998
    return-void
.end method

.method protected updateUAToken()V
    .locals 8

    .prologue
    .line 1171
    invoke-virtual {p0}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v4

    .line 1172
    .local v4, "profileId":Ljava/lang/String;
    iget-object v5, p0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v5}, Lcom/helpshift/HSStorage;->getDeviceToken()Ljava/lang/String;

    move-result-object v1

    .line 1174
    .local v1, "deviceToken":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1176
    .local v3, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v5, "profile-id"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1177
    const-string/jumbo v5, "device-token"

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1182
    :goto_0
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "push_token_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p0, v5, v6, v7, v3}, Lcom/helpshift/HSApiData;->getApiFailHandler(Landroid/os/Handler;Ljava/lang/String;ILorg/json/JSONObject;)Landroid/os/Handler;

    move-result-object v0

    .line 1185
    .local v0, "apiFailHandler":Landroid/os/Handler;
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v5, v0, v4, v1}, Lcom/helpshift/HSApiData;->updateUAToken(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    return-void

    .line 1178
    .end local v0    # "apiFailHandler":Landroid/os/Handler;
    :catch_0
    move-exception v2

    .line 1179
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "HelpShiftDebug"

    const-string/jumbo v6, "JSONException"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
