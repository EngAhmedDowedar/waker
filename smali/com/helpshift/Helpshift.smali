.class public final Lcom/helpshift/Helpshift;
.super Ljava/lang/Object;
.source "Helpshift.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/Helpshift$HelpshiftDelegate;,
        Lcom/helpshift/Helpshift$ENABLE_CONTACT_US;,
        Lcom/helpshift/Helpshift$HS_RATE_ALERT;
    }
.end annotation


# static fields
.field public static final HSCustomMetadataKey:Ljava/lang/String; = "hs-custom-metadata"

.field public static final HSIssueTagsKey:Ljava/lang/String; = "hs-tags"

.field public static final HSTagsKey:Ljava/lang/String; = "hs-tags"

.field public static final HSUserAcceptedTheSolution:Ljava/lang/String; = "User accepted the solution"

.field public static final HSUserRejectedTheSolution:Ljava/lang/String; = "User rejected the solution"

.field public static final HSUserReviewedTheApp:Ljava/lang/String; = "User reviewed the app"

.field public static final HSUserSentScreenShot:Ljava/lang/String; = "User sent a screenshot"

.field public static final JSON_PREFS:Ljava/lang/String; = "HSJsonData"

.field public static final TAG:Ljava/lang/String; = "HelpShiftDebug"

.field private static c:Landroid/content/Context; = null

.field private static data:Lcom/helpshift/HSApiData; = null

.field private static delegate:Lcom/helpshift/Helpshift$HelpshiftDelegate; = null

.field public static final libraryVersion:Ljava/lang/String; = "3.10.0"

.field private static storage:Lcom/helpshift/HSStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 198
    sput-object v0, Lcom/helpshift/Helpshift;->data:Lcom/helpshift/HSApiData;

    .line 199
    sput-object v0, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    .line 200
    sput-object v0, Lcom/helpshift/Helpshift;->c:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    return-void
.end method

.method static synthetic access$000()Lcom/helpshift/HSApiData;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/helpshift/Helpshift;->data:Lcom/helpshift/HSApiData;

    return-object v0
.end method

.method static synthetic access$100()Lcom/helpshift/HSStorage;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    return-object v0
.end method

.method private static cleanConfig(Ljava/util/HashMap;)Landroid/os/Bundle;
    .locals 9
    .param p0, "configMap"    # Ljava/util/HashMap;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1105
    invoke-static {p0}, Lcom/helpshift/ContactUsFilter;->setConfig(Ljava/util/HashMap;)V

    .line 1106
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1107
    .local v0, "cleanConfig":Landroid/os/Bundle;
    if-eqz p0, :cond_7

    .line 1108
    invoke-static {p0}, Lcom/helpshift/Helpshift;->createMetadataCallback(Ljava/util/HashMap;)V

    .line 1109
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1110
    .local v1, "config":Lorg/json/JSONObject;
    const-string/jumbo v7, "gotoCoversationAfterContactUs"

    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "gotoConversationAfterContactUs"

    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_0
    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1113
    .local v4, "showConvOnReportIssue":Ljava/lang/Boolean;
    :try_start_0
    const-string/jumbo v5, "requireEmail"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1114
    sget-object v5, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    const-string/jumbo v7, "requireEmail"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/helpshift/HSStorage;->setRequireEmail(Ljava/lang/Boolean;)V

    .line 1116
    :cond_1
    const-string/jumbo v5, "hideNameAndEmail"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1117
    sget-object v5, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    const-string/jumbo v7, "hideNameAndEmail"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/helpshift/HSStorage;->setHideNameAndEmail(Ljava/lang/Boolean;)V

    .line 1119
    :cond_2
    const-string/jumbo v5, "showSearchOnNewConversation"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1120
    sget-object v5, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    const-string/jumbo v7, "showSearchOnNewConversation"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/helpshift/HSStorage;->setShowSearchOnNewConversation(Ljava/lang/Boolean;)V

    .line 1122
    :cond_3
    const-string/jumbo v5, "enableFullPrivacy"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1123
    sget-object v5, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    const-string/jumbo v7, "enableFullPrivacy"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/helpshift/HSStorage;->setEnableFullPrivacy(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1132
    :cond_4
    :goto_1
    sget-object v5, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/helpshift/HSStorage;->setConversationPrefillText(Ljava/lang/String;)V

    .line 1134
    :try_start_1
    const-string/jumbo v5, "conversationPrefillText"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, "conversationPrefillText"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "null"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1141
    const-string/jumbo v5, "hs-custom-metadata"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1142
    const-string/jumbo v5, "dropMeta"

    const/4 v7, 0x1

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1145
    :cond_5
    const-string/jumbo v5, "conversationPrefillText"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1146
    .local v3, "prefillText":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1147
    sget-object v5, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v5, v3}, Lcom/helpshift/HSStorage;->setConversationPrefillText(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1154
    .end local v3    # "prefillText":Ljava/lang/String;
    :cond_6
    :goto_2
    const-string/jumbo v5, "showConvOnReportIssue"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1157
    const-string/jumbo v5, "showSearchOnNewConversation"

    const-string/jumbo v7, "showSearchOnNewConversation"

    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1162
    .end local v1    # "config":Lorg/json/JSONObject;
    .end local v4    # "showConvOnReportIssue":Ljava/lang/Boolean;
    :cond_7
    return-object v0

    .restart local v1    # "config":Lorg/json/JSONObject;
    :cond_8
    move v5, v6

    .line 1110
    goto/16 :goto_0

    .line 1125
    .restart local v4    # "showConvOnReportIssue":Ljava/lang/Boolean;
    :catch_0
    move-exception v2

    .line 1126
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "HelpShiftDebug"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception parsing config : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1150
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v2

    .line 1151
    .restart local v2    # "e":Lorg/json/JSONException;
    const-string/jumbo v5, "HelpShiftDebug"

    const-string/jumbo v7, "JSON exception while parsing config : "

    invoke-static {v5, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private static cleanStorage()V
    .locals 11

    .prologue
    .line 230
    sget-object v9, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v9}, Lcom/helpshift/HSStorage;->getIdentity()Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "identity":Ljava/lang/String;
    sget-object v9, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v9}, Lcom/helpshift/HSStorage;->getUUID()Ljava/lang/String;

    move-result-object v8

    .line 233
    .local v8, "uuid":Ljava/lang/String;
    sget-object v9, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v9}, Lcom/helpshift/HSStorage;->getRequireEmail()Ljava/lang/Boolean;

    move-result-object v5

    .line 234
    .local v5, "requireEmail":Ljava/lang/Boolean;
    sget-object v9, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v9}, Lcom/helpshift/HSStorage;->getEnableFullPrivacy()Ljava/lang/Boolean;

    move-result-object v0

    .line 235
    .local v0, "fullPrivacy":Ljava/lang/Boolean;
    sget-object v9, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v9}, Lcom/helpshift/HSStorage;->getHideNameAndEmail()Ljava/lang/Boolean;

    move-result-object v1

    .line 236
    .local v1, "hideNameEmail":Ljava/lang/Boolean;
    sget-object v9, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v9}, Lcom/helpshift/HSStorage;->getShowSearchOnNewConversation()Ljava/lang/Boolean;

    move-result-object v6

    .line 237
    .local v6, "showSearchOnNewConversation":Ljava/lang/Boolean;
    sget-object v9, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v9}, Lcom/helpshift/HSStorage;->getCustomMetaData()Lorg/json/JSONObject;

    move-result-object v3

    .line 239
    .local v3, "metaData":Lorg/json/JSONObject;
    sget-object v9, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v9}, Lcom/helpshift/HSStorage;->getServerTimeDelta()Ljava/lang/Float;

    move-result-object v7

    .line 240
    .local v7, "timeDelta":Ljava/lang/Float;
    sget-object v9, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v9}, Lcom/helpshift/HSStorage;->getLibraryVersion()Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, "oldVersion":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    const-string/jumbo v9, "3.10.0"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 244
    sget-object v9, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v9}, Lcom/helpshift/HSStorage;->clearDatabase()V

    .line 246
    sget-object v9, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v9, v2}, Lcom/helpshift/HSStorage;->setIdentity(Ljava/lang/String;)V

    .line 247
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 248
    sget-object v9, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v9, v8}, Lcom/helpshift/HSStorage;->setUUID(Ljava/lang/String;)V

    .line 251
    :cond_0
    sget-object v9, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v9, v5}, Lcom/helpshift/HSStorage;->setRequireEmail(Ljava/lang/Boolean;)V

    .line 252
    sget-object v9, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v9, v0}, Lcom/helpshift/HSStorage;->setEnableFullPrivacy(Ljava/lang/Boolean;)V

    .line 253
    sget-object v9, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v9, v1}, Lcom/helpshift/HSStorage;->setHideNameAndEmail(Ljava/lang/Boolean;)V

    .line 254
    sget-object v9, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v9, v6}, Lcom/helpshift/HSStorage;->setShowSearchOnNewConversation(Ljava/lang/Boolean;)V

    .line 255
    sget-object v9, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v9, v3}, Lcom/helpshift/HSStorage;->setCustomMetaData(Lorg/json/JSONObject;)V

    .line 257
    sget-object v9, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v9, v7}, Lcom/helpshift/HSStorage;->setServerTimeDelta(Ljava/lang/Float;)V

    .line 259
    :cond_1
    sget-object v9, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    const-string/jumbo v10, "3.10.0"

    invoke-virtual {v9, v10}, Lcom/helpshift/HSStorage;->setLibraryVersion(Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public static clearBreadCrumbs()V
    .locals 1

    .prologue
    .line 651
    sget-object v0, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v0}, Lcom/helpshift/HSStorage;->clearBreadCrumbs()V

    .line 652
    return-void
.end method

.method private static createMetadataCallback(Ljava/util/HashMap;)V
    .locals 2
    .param p0, "config"    # Ljava/util/HashMap;

    .prologue
    .line 979
    const/4 v0, 0x0

    .line 980
    .local v0, "f":Lcom/helpshift/HSCallable;
    const-string/jumbo v1, "hs-custom-metadata"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 981
    new-instance v0, Lcom/helpshift/Helpshift$3;

    .end local v0    # "f":Lcom/helpshift/HSCallable;
    invoke-direct {v0, p0}, Lcom/helpshift/Helpshift$3;-><init>(Ljava/util/HashMap;)V

    .line 991
    .restart local v0    # "f":Lcom/helpshift/HSCallable;
    invoke-static {v0}, Lcom/helpshift/Helpshift;->setMetadataCallback(Lcom/helpshift/HSCallable;)V

    .line 993
    :cond_0
    return-void
.end method

.method public static getDelegate()Lcom/helpshift/Helpshift$HelpshiftDelegate;
    .locals 1

    .prologue
    .line 1301
    sget-object v0, Lcom/helpshift/Helpshift;->delegate:Lcom/helpshift/Helpshift$HelpshiftDelegate;

    return-object v0
.end method

.method public static getNotificationCount()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 446
    sget-object v0, Lcom/helpshift/Helpshift;->data:Lcom/helpshift/HSApiData;

    if-eqz v0, :cond_0

    .line 447
    sget-object v0, Lcom/helpshift/Helpshift;->data:Lcom/helpshift/HSApiData;

    iget-object v0, v0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    sget-object v1, Lcom/helpshift/Helpshift;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v1}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/HSStorage;->getActiveNotifCnt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 449
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNotificationCount(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 9
    .param p0, "success"    # Landroid/os/Handler;
    .param p1, "failure"    # Landroid/os/Handler;

    .prologue
    .line 478
    if-eqz p0, :cond_2

    .line 479
    sget-object v7, Lcom/helpshift/Helpshift;->data:Lcom/helpshift/HSApiData;

    if-eqz v7, :cond_0

    sget-object v7, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    if-nez v7, :cond_1

    .line 480
    :cond_0
    invoke-static {}, Lcom/helpshift/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 481
    invoke-static {}, Lcom/helpshift/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/helpshift/Helpshift;->init(Landroid/content/Context;)V

    .line 486
    :cond_1
    sget-object v7, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    sget-object v8, Lcom/helpshift/Helpshift;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v8}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/helpshift/HSStorage;->getActiveNotifCnt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 487
    .local v0, "activeCnt":Ljava/lang/Integer;
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 488
    .local v5, "msgToPost":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 489
    .local v1, "countData":Landroid/os/Bundle;
    const-string/jumbo v7, "value"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 490
    const-string/jumbo v7, "cache"

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 491
    iput-object v1, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 492
    invoke-virtual {p0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 494
    new-instance v4, Lcom/helpshift/Helpshift$2;

    invoke-direct {v4, p1}, Lcom/helpshift/Helpshift$2;-><init>(Landroid/os/Handler;)V

    .line 505
    .local v4, "localFailure":Landroid/os/Handler;
    sget-object v7, Lcom/helpshift/Helpshift;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v7}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v6

    .line 507
    .local v6, "profileId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 508
    sget-object v7, Lcom/helpshift/Helpshift;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v7, p0, v4}, Lcom/helpshift/HSApiData;->getNotificationCount(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 517
    .end local v0    # "activeCnt":Ljava/lang/Integer;
    .end local v1    # "countData":Landroid/os/Bundle;
    .end local v4    # "localFailure":Landroid/os/Handler;
    .end local v5    # "msgToPost":Landroid/os/Message;
    .end local v6    # "profileId":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 510
    .restart local v0    # "activeCnt":Ljava/lang/Integer;
    .restart local v1    # "countData":Landroid/os/Bundle;
    .restart local v4    # "localFailure":Landroid/os/Handler;
    .restart local v5    # "msgToPost":Landroid/os/Message;
    .restart local v6    # "profileId":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 511
    .local v3, "failureMsg":Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 512
    .local v2, "failureCount":Landroid/os/Bundle;
    const-string/jumbo v7, "value"

    const/4 v8, -0x1

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 513
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 514
    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static handlePush(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 1211
    invoke-static {p0}, Lcom/helpshift/Helpshift;->init(Landroid/content/Context;)V

    .line 1212
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "issue_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1214
    .local v2, "issueId":Ljava/lang/String;
    sget-object v4, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v4}, Lcom/helpshift/HSStorage;->getForegroundIssue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1216
    :try_start_0
    sget-object v4, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v4, v2}, Lcom/helpshift/HSStorage;->getIssuePushCount(Ljava/lang/String;)I

    move-result v3

    .line 1217
    .local v3, "messCnt":I
    invoke-static {v2}, Lcom/helpshift/storage/IssuesDataSource;->getIssue(Ljava/lang/String;)Lcom/helpshift/models/Issue;

    move-result-object v1

    .line 1218
    .local v1, "issue":Lcom/helpshift/models/Issue;
    if-eqz v1, :cond_0

    .line 1219
    sget-object v4, Lcom/helpshift/Helpshift;->c:Landroid/content/Context;

    const-string/jumbo v5, "push"

    invoke-static {v4, v1, v3, v5, p1}, Lcom/helpshift/util/HSNotification;->showNotif(Landroid/content/Context;Lcom/helpshift/models/Issue;ILjava/lang/String;Landroid/content/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1225
    .end local v1    # "issue":Lcom/helpshift/models/Issue;
    .end local v3    # "messCnt":I
    :cond_0
    :goto_0
    return-void

    .line 1221
    :catch_0
    move-exception v0

    .line 1222
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "HelpShiftDebug"

    const-string/jumbo v5, "handlePush JSONException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static init(Landroid/app/Application;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/Helpshift;->initialize(Landroid/content/Context;)V

    .line 208
    return-void
.end method

.method private static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/Helpshift;->initialize(Landroid/content/Context;)V

    .line 212
    return-void
.end method

.method private static initialize(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 215
    invoke-static {p0}, Lcom/helpshift/HelpshiftContext;->setApplicationContext(Landroid/content/Context;)V

    .line 216
    sget-object v0, Lcom/helpshift/Helpshift;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Lcom/helpshift/HSApiData;

    invoke-direct {v0, p0}, Lcom/helpshift/HSApiData;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/helpshift/Helpshift;->data:Lcom/helpshift/HSApiData;

    .line 218
    sget-object v0, Lcom/helpshift/Helpshift;->data:Lcom/helpshift/HSApiData;

    iget-object v0, v0, Lcom/helpshift/HSApiData;->storage:Lcom/helpshift/HSStorage;

    sput-object v0, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    .line 219
    invoke-static {p0}, Lcom/helpshift/ContactUsFilter;->init(Landroid/content/Context;)V

    .line 220
    invoke-static {p0}, Lcom/helpshift/Initializer;->init(Landroid/content/Context;)V

    .line 221
    sput-object p0, Lcom/helpshift/Helpshift;->c:Landroid/content/Context;

    .line 223
    :cond_0
    return-void
.end method

.method public static install(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;

    .prologue
    .line 281
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/helpshift/Helpshift;->install(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 282
    return-void
.end method

.method public static install(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 18
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "config"    # Ljava/util/HashMap;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 332
    invoke-static/range {p0 .. p0}, Lcom/helpshift/Helpshift;->init(Landroid/app/Application;)V

    .line 333
    invoke-static {}, Lcom/helpshift/Helpshift;->cleanStorage()V

    .line 334
    const-string/jumbo v14, "__hs__db_profiles"

    invoke-static {v14}, Lcom/helpshift/util/DBUtil;->restoreDatabaseBackup(Ljava/lang/String;)V

    .line 335
    if-nez p4, :cond_0

    .line 336
    new-instance p4, Ljava/util/HashMap;

    .end local p4    # "config":Ljava/util/HashMap;
    invoke-direct/range {p4 .. p4}, Ljava/util/HashMap;-><init>()V

    .line 339
    .restart local p4    # "config":Ljava/util/HashMap;
    :cond_0
    sget-object v14, Lcom/helpshift/Helpshift;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v14}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v12

    .line 341
    .local v12, "profileId":Ljava/lang/String;
    const-string/jumbo v14, "sdkType"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    if-eqz v14, :cond_6

    .line 342
    sget-object v15, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    const-string/jumbo v14, "sdkType"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v15, v14}, Lcom/helpshift/HSStorage;->setSdkType(Ljava/lang/String;)V

    .line 347
    :goto_0
    const-string/jumbo v14, "notificationIcon"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 348
    .local v10, "notifIcon":Ljava/lang/Object;
    if-eqz v10, :cond_1

    instance-of v14, v10, Ljava/lang/String;

    if-eqz v14, :cond_1

    move-object v9, v10

    .line 350
    check-cast v9, Ljava/lang/String;

    .line 351
    .local v9, "mDrawableName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const-string/jumbo v15, "drawable"

    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v9, v15, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 354
    .local v13, "resId":I
    const-string/jumbo v14, "notificationIcon"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p4

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    .end local v9    # "mDrawableName":Ljava/lang/String;
    .end local v13    # "resId":I
    :cond_1
    const-string/jumbo v14, "notificationSound"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 358
    .local v11, "notifSound":Ljava/lang/Object;
    if-eqz v11, :cond_2

    instance-of v14, v11, Ljava/lang/String;

    if-eqz v14, :cond_2

    move-object v9, v11

    .line 360
    check-cast v9, Ljava/lang/String;

    .line 361
    .restart local v9    # "mDrawableName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const-string/jumbo v15, "raw"

    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v9, v15, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 364
    .restart local v13    # "resId":I
    const-string/jumbo v14, "notificationSound"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p4

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .end local v9    # "mDrawableName":Ljava/lang/String;
    .end local v13    # "resId":I
    :cond_2
    const-string/jumbo v14, "enableDialogUIForTablets"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 368
    .local v5, "enableDialogUIForTablets":Ljava/lang/Object;
    if-eqz v5, :cond_3

    instance-of v14, v5, Ljava/lang/Boolean;

    if-eqz v14, :cond_3

    move-object v6, v5

    .line 370
    check-cast v6, Ljava/lang/Boolean;

    .line 371
    .local v6, "enableDialogUi":Ljava/lang/Boolean;
    const-string/jumbo v14, "enableDialogUIForTablets"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .end local v6    # "enableDialogUi":Ljava/lang/Boolean;
    :cond_3
    sget-object v14, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v14}, Lcom/helpshift/HSStorage;->updateDisableHelpshiftBranding()V

    .line 377
    :try_start_0
    sget-object v14, Lcom/helpshift/Helpshift;->c:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    sget-object v15, Lcom/helpshift/Helpshift;->c:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    iget-object v3, v14, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 380
    .local v3, "applicationVersion":Ljava/lang/String;
    sget-object v14, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v14}, Lcom/helpshift/HSStorage;->getApplicationVersion()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 381
    sget-object v14, Lcom/helpshift/Helpshift;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v14}, Lcom/helpshift/HSApiData;->resetReviewCounter()V

    .line 382
    sget-object v14, Lcom/helpshift/Helpshift;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v14}, Lcom/helpshift/HSApiData;->enableReview()V

    .line 383
    sget-object v14, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v14, v3}, Lcom/helpshift/HSStorage;->setApplicationVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    .end local v3    # "applicationVersion":Ljava/lang/String;
    :cond_4
    :goto_1
    sget-object v14, Lcom/helpshift/Helpshift;->c:Landroid/content/Context;

    invoke-static {v14}, Lcom/helpshift/res/drawable/HSImages;->initImages(Landroid/content/Context;)V

    .line 390
    sget-object v14, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    new-instance v15, Lorg/json/JSONObject;

    move-object/from16 v0, p4

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v14, v15}, Lcom/helpshift/HSStorage;->setAppConfig(Lorg/json/JSONObject;)V

    .line 391
    sget-object v14, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v14, v15}, Lcom/helpshift/HSStorage;->setActiveDownloads(Lorg/json/JSONObject;)V

    .line 393
    sget-object v14, Lcom/helpshift/Helpshift;->data:Lcom/helpshift/HSApiData;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Lcom/helpshift/HSApiData;->install(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 397
    :try_start_1
    sget-object v14, Lcom/helpshift/Helpshift;->data:Lcom/helpshift/HSApiData;

    new-instance v15, Landroid/os/Handler;

    invoke-direct {v15}, Landroid/os/Handler;-><init>()V

    new-instance v16, Landroid/os/Handler;

    invoke-direct/range {v16 .. v16}, Landroid/os/Handler;-><init>()V

    invoke-virtual/range {v14 .. v16}, Lcom/helpshift/HSApiData;->getLatestIssues(Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 403
    :cond_5
    :goto_2
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0xe

    if-lt v14, v15, :cond_7

    .line 404
    invoke-static {}, Lcom/helpshift/HSLifecycleCallbacks;->getInstance()Lcom/helpshift/HSLifecycleCallbacks;

    move-result-object v7

    .line 406
    .local v7, "hsLifecycleCallbacks":Lcom/helpshift/HSLifecycleCallbacks;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 407
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 434
    .end local v7    # "hsLifecycleCallbacks":Lcom/helpshift/HSLifecycleCallbacks;
    :goto_3
    return-void

    .line 344
    .end local v5    # "enableDialogUIForTablets":Ljava/lang/Object;
    .end local v10    # "notifIcon":Ljava/lang/Object;
    .end local v11    # "notifSound":Ljava/lang/Object;
    :cond_6
    sget-object v14, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    const-string/jumbo v15, "android"

    invoke-virtual {v14, v15}, Lcom/helpshift/HSStorage;->setSdkType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 385
    .restart local v5    # "enableDialogUIForTablets":Ljava/lang/Object;
    .restart local v10    # "notifIcon":Ljava/lang/Object;
    .restart local v11    # "notifSound":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 386
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v14, "HelpShiftDebug"

    const-string/jumbo v15, "Application Name Not Found"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 398
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v4

    .line 399
    .local v4, "e":Lorg/json/JSONException;
    const-string/jumbo v14, "HelpShiftDebug"

    const-string/jumbo v15, "Install - Get Latest Issues"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 409
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_7
    sget-object v14, Lcom/helpshift/Helpshift;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v14}, Lcom/helpshift/HSApiData;->updateReviewCounter()V

    .line 410
    sget-object v14, Lcom/helpshift/Helpshift;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v14}, Lcom/helpshift/HSApiData;->showReviewP()Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 411
    new-instance v8, Landroid/content/Intent;

    sget-object v14, Lcom/helpshift/Helpshift;->c:Landroid/content/Context;

    const-class v15, Lcom/helpshift/HSReview;

    invoke-direct {v8, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 412
    .local v8, "i":Landroid/content/Intent;
    const/high16 v14, 0x10000000

    invoke-virtual {v8, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 413
    sget-object v14, Lcom/helpshift/Helpshift;->c:Landroid/content/Context;

    invoke-virtual {v14, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 417
    .end local v8    # "i":Landroid/content/Intent;
    :cond_8
    :try_start_2
    sget-object v14, Lcom/helpshift/Helpshift;->data:Lcom/helpshift/HSApiData;

    new-instance v15, Lcom/helpshift/Helpshift$1;

    invoke-direct {v15}, Lcom/helpshift/Helpshift$1;-><init>()V

    new-instance v16, Landroid/os/Handler;

    invoke-direct/range {v16 .. v16}, Landroid/os/Handler;-><init>()V

    invoke-virtual/range {v14 .. v16}, Lcom/helpshift/HSApiData;->getConfig(Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 427
    :goto_4
    sget-object v14, Lcom/helpshift/Helpshift;->c:Landroid/content/Context;

    invoke-static {v14}, Lcom/helpshift/HelpshiftConnectionUtil;->isOnline(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 428
    sget-object v14, Lcom/helpshift/Helpshift;->c:Landroid/content/Context;

    new-instance v15, Landroid/content/Intent;

    sget-object v16, Lcom/helpshift/Helpshift;->c:Landroid/content/Context;

    const-class v17, Lcom/helpshift/HSRetryService;

    invoke-direct/range {v15 .. v17}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v14, v15}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 431
    :cond_9
    sget-object v14, Lcom/helpshift/Helpshift;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v14}, Lcom/helpshift/HSApiData;->startInAppService()V

    .line 432
    sget-object v14, Lcom/helpshift/Helpshift;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v14}, Lcom/helpshift/HSApiData;->reportAppStartEvent()V

    goto :goto_3

    .line 423
    :catch_2
    move-exception v4

    .line 424
    .restart local v4    # "e":Lorg/json/JSONException;
    const-string/jumbo v14, "HelpShiftDebug"

    invoke-virtual {v4}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public static leaveBreadCrumb(Ljava/lang/String;)V
    .locals 1
    .param p0, "breadCrumb"    # Ljava/lang/String;

    .prologue
    .line 632
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 634
    sget-object v0, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v0, p0}, Lcom/helpshift/HSStorage;->pushBreadCrumb(Ljava/lang/String;)V

    .line 636
    :cond_0
    return-void
.end method

.method public static login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "identifier"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;

    .prologue
    .line 1315
    sget-object v1, Lcom/helpshift/Helpshift;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v1, p0}, Lcom/helpshift/HSApiData;->login(Ljava/lang/String;)Z

    move-result v0

    .line 1316
    .local v0, "loginSucceeded":Z
    if-eqz v0, :cond_0

    .line 1317
    invoke-static {p1, p2}, Lcom/helpshift/Helpshift;->setNameAndEmail(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    :cond_0
    return-void
.end method

.method public static logout()V
    .locals 1

    .prologue
    .line 1327
    sget-object v0, Lcom/helpshift/Helpshift;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v0}, Lcom/helpshift/HSApiData;->logout()V

    .line 1328
    return-void
.end method

.method public static registerDeviceToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceToken"    # Ljava/lang/String;

    .prologue
    .line 607
    invoke-static {p0}, Lcom/helpshift/Helpshift;->init(Landroid/content/Context;)V

    .line 608
    if-eqz p1, :cond_1

    .line 609
    sget-object v1, Lcom/helpshift/Helpshift;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v1}, Lcom/helpshift/HSApiData;->getProfileId()Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, "profileId":Ljava/lang/String;
    sget-object v1, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v1, p1}, Lcom/helpshift/HSStorage;->setDeviceToken(Ljava/lang/String;)V

    .line 612
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 613
    sget-object v1, Lcom/helpshift/Helpshift;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v1}, Lcom/helpshift/HSApiData;->updateUAToken()V

    .line 618
    .end local v0    # "profileId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "Device Token is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static removeFAQFlowUnsupportedConfigs(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 8
    .param p0, "config"    # Ljava/util/HashMap;

    .prologue
    const/4 v7, 0x0

    .line 1089
    if-nez p0, :cond_0

    .line 1090
    new-instance p0, Ljava/util/HashMap;

    .end local p0    # "config":Ljava/util/HashMap;
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 1093
    .restart local p0    # "config":Ljava/util/HashMap;
    :cond_0
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v5, "conversationPrefillText"

    aput-object v5, v4, v7

    .line 1094
    .local v4, "unsupportedConfigs":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 1095
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    const-string/jumbo v5, "showSearchOnNewConversation"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1098
    sget-object v5, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/helpshift/HSStorage;->setShowSearchOnNewConversation(Ljava/lang/Boolean;)V

    .line 1094
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1101
    .end local v3    # "s":Ljava/lang/String;
    :cond_2
    return-object p0
.end method

.method public static setDelegate(Lcom/helpshift/Helpshift$HelpshiftDelegate;)V
    .locals 0
    .param p0, "delegate"    # Lcom/helpshift/Helpshift$HelpshiftDelegate;

    .prologue
    .line 1293
    sput-object p0, Lcom/helpshift/Helpshift;->delegate:Lcom/helpshift/Helpshift$HelpshiftDelegate;

    .line 1294
    return-void
.end method

.method public static setMetadataCallback(Lcom/helpshift/HSCallable;)V
    .locals 3
    .param p0, "f"    # Lcom/helpshift/HSCallable;

    .prologue
    .line 970
    invoke-static {p0}, Lcom/helpshift/util/Meta;->setMetadataCallback(Lcom/helpshift/HSCallable;)V

    .line 972
    :try_start_0
    sget-object v1, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    invoke-static {}, Lcom/helpshift/util/Meta;->getCustomMeta()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/helpshift/HSStorage;->setCustomMetaData(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 976
    :goto_0
    return-void

    .line 973
    :catch_0
    move-exception v0

    .line 974
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "Exception getting custom meta "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setNameAndEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 533
    if-nez p0, :cond_3

    .line 534
    const-string/jumbo p0, ""

    .line 539
    :goto_0
    if-nez p1, :cond_4

    .line 540
    const-string/jumbo p1, ""

    .line 545
    :goto_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    sget-object v0, Lcom/helpshift/Helpshift;->data:Lcom/helpshift/HSApiData;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/helpshift/HSApiData;->setUsername(Ljava/lang/String;)V

    .line 547
    sget-object v0, Lcom/helpshift/Helpshift;->data:Lcom/helpshift/HSApiData;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/helpshift/HSApiData;->setEmail(Ljava/lang/String;)V

    .line 550
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/helpshift/util/HSPattern;->checkSpecialCharacters(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 551
    sget-object v0, Lcom/helpshift/Helpshift;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v0, p0}, Lcom/helpshift/HSApiData;->setUsername(Ljava/lang/String;)V

    .line 554
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/helpshift/util/HSPattern;->checkEmail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 555
    sget-object v0, Lcom/helpshift/Helpshift;->data:Lcom/helpshift/HSApiData;

    invoke-virtual {v0, p1}, Lcom/helpshift/HSApiData;->setEmail(Ljava/lang/String;)V

    .line 558
    :cond_2
    return-void

    .line 536
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 542
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method public static setSDKLanguage(Ljava/lang/String;)V
    .locals 1
    .param p0, "locale"    # Ljava/lang/String;

    .prologue
    .line 1354
    sget-object v0, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {v0, p0}, Lcom/helpshift/HSStorage;->setSdkLanguage(Ljava/lang/String;)V

    .line 1355
    return-void
.end method

.method public static setUserIdentifier(Ljava/lang/String;)V
    .locals 2
    .param p0, "userIdentifier"    # Ljava/lang/String;

    .prologue
    .line 571
    if-eqz p0, :cond_0

    .line 572
    sget-object v0, Lcom/helpshift/Helpshift;->storage:Lcom/helpshift/HSStorage;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/HSStorage;->setDeviceIdentifier(Ljava/lang/String;)V

    .line 574
    :cond_0
    return-void
.end method

.method public static showAlertToRateApp(Ljava/lang/String;Lcom/helpshift/HSAlertToRateAppListener;)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "alertToRateAppListener"    # Lcom/helpshift/HSAlertToRateAppListener;

    .prologue
    .line 1264
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1265
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1266
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1269
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/helpshift/Helpshift;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1271
    :cond_1
    if-eqz p1, :cond_2

    .line 1272
    sget-object v2, Lcom/helpshift/Helpshift$HS_RATE_ALERT;->FAIL:Lcom/helpshift/Helpshift$HS_RATE_ALERT;

    invoke-interface {p1, v2}, Lcom/helpshift/HSAlertToRateAppListener;->onAction(Lcom/helpshift/Helpshift$HS_RATE_ALERT;)V

    .line 1284
    :cond_2
    :goto_0
    return-void

    .line 1277
    :cond_3
    invoke-static {p1}, Lcom/helpshift/HSReviewFragment;->setAlertToRateAppListener(Lcom/helpshift/HSAlertToRateAppListener;)V

    .line 1279
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/helpshift/Helpshift;->c:Landroid/content/Context;

    const-class v3, Lcom/helpshift/HSReview;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1280
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v2, "disableReview"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1281
    const-string/jumbo v2, "rurl"

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1282
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1283
    sget-object v2, Lcom/helpshift/Helpshift;->c:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static showConversation(Landroid/app/Activity;)V
    .locals 1
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 670
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0}, Lcom/helpshift/Helpshift;->showConversation(Landroid/app/Activity;Ljava/util/HashMap;)V

    .line 671
    return-void
.end method

.method public static showConversation(Landroid/app/Activity;Ljava/util/HashMap;)V
    .locals 4
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "config"    # Ljava/util/HashMap;

    .prologue
    const/4 v3, 0x1

    .line 739
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/helpshift/HSConversation;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 740
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "decomp"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 741
    invoke-static {p1}, Lcom/helpshift/Helpshift;->cleanConfig(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 742
    const-string/jumbo v1, "showInFullScreen"

    invoke-static {p0}, Lcom/helpshift/util/HSActivityUtil;->isFullScreen(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 743
    const-string/jumbo v1, "chatLaunchSource"

    const-string/jumbo v2, "support"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 744
    const-string/jumbo v1, "isRoot"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 745
    const-string/jumbo v1, "search_performed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 746
    invoke-static {}, Lcom/helpshift/util/HSActivityUtil;->sessionBeginning()V

    .line 747
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 748
    return-void
.end method

.method public static showFAQSection(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "sectionPublishId"    # Ljava/lang/String;

    .prologue
    .line 771
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/helpshift/Helpshift;->showFAQSection(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 772
    return-void
.end method

.method public static showFAQSection(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "sectionPublishId"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/util/HashMap;

    .prologue
    const/4 v3, 0x1

    .line 843
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/helpshift/HSSection;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 844
    .local v0, "i":Landroid/content/Intent;
    invoke-static {p2}, Lcom/helpshift/Helpshift;->removeFAQFlowUnsupportedConfigs(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v1}, Lcom/helpshift/Helpshift;->cleanConfig(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 845
    const-string/jumbo v1, "sectionPublishId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 846
    const-string/jumbo v1, "showInFullScreen"

    invoke-static {p0}, Lcom/helpshift/util/HSActivityUtil;->isFullScreen(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 847
    const-string/jumbo v1, "decomp"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 848
    const-string/jumbo v1, "isRoot"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 849
    invoke-static {}, Lcom/helpshift/util/HSActivityUtil;->sessionBeginning()V

    .line 850
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 851
    return-void
.end method

.method public static showFAQs(Landroid/app/Activity;)V
    .locals 1
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 1012
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0}, Lcom/helpshift/Helpshift;->showFAQs(Landroid/app/Activity;Ljava/util/HashMap;)V

    .line 1013
    return-void
.end method

.method public static showFAQs(Landroid/app/Activity;Ljava/util/HashMap;)V
    .locals 3
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "config"    # Ljava/util/HashMap;

    .prologue
    .line 1079
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/helpshift/HSFaqs;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1080
    .local v0, "i":Landroid/content/Intent;
    invoke-static {p1}, Lcom/helpshift/Helpshift;->removeFAQFlowUnsupportedConfigs(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v1}, Lcom/helpshift/Helpshift;->cleanConfig(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1081
    const-string/jumbo v1, "showInFullScreen"

    invoke-static {p0}, Lcom/helpshift/util/HSActivityUtil;->isFullScreen(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1082
    const-string/jumbo v1, "decomp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1083
    const-string/jumbo v1, "isRoot"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1084
    invoke-static {}, Lcom/helpshift/util/HSActivityUtil;->sessionBeginning()V

    .line 1085
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1086
    return-void
.end method

.method public static showSingleFAQ(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "questionPublishId"    # Ljava/lang/String;

    .prologue
    .line 873
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/helpshift/Helpshift;->showSingleFAQ(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 874
    return-void
.end method

.method public static showSingleFAQ(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "questionPublishId"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/util/HashMap;

    .prologue
    const/4 v3, 0x1

    .line 936
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/helpshift/HSQuestion;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 937
    .local v0, "i":Landroid/content/Intent;
    invoke-static {p2}, Lcom/helpshift/Helpshift;->removeFAQFlowUnsupportedConfigs(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v1}, Lcom/helpshift/Helpshift;->cleanConfig(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 938
    const-string/jumbo v1, "questionPublishId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 939
    const-string/jumbo v1, "showInFullScreen"

    invoke-static {p0}, Lcom/helpshift/util/HSActivityUtil;->isFullScreen(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 940
    const-string/jumbo v1, "decomp"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 941
    const-string/jumbo v1, "isRoot"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 942
    invoke-static {}, Lcom/helpshift/util/HSActivityUtil;->sessionBeginning()V

    .line 943
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 944
    return-void
.end method
