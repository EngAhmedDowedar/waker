.class public final Lcom/helpshift/HSStorage;
.super Ljava/lang/Object;
.source "HSStorage.java"


# static fields
.field static final TAG:Ljava/lang/String; = "HelpShiftDebug"

.field private static cacheIndex:Ljava/util/HashMap;


# instance fields
.field private context:Landroid/content/Context;

.field private final dbFile:Ljava/lang/String;

.field private storage:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string/jumbo v0, "fullIndex.db"

    iput-object v0, p0, Lcom/helpshift/HSStorage;->dbFile:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/helpshift/HSStorage;->context:Landroid/content/Context;

    .line 48
    const-string/jumbo v0, "HSJsonData"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSStorage;->storage:Landroid/content/SharedPreferences;

    .line 49
    return-void
.end method

.method private concatJSONArray(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 3
    .param p1, "arr1"    # Lorg/json/JSONArray;
    .param p2, "arr2"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 53
    .local v1, "result":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 54
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 57
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59
    :cond_1
    return-object v1
.end method

.method private getFailedMessages(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 5
    .param p1, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 701
    const/4 v2, 0x0

    .line 703
    .local v2, "failedMessages":Lorg/json/JSONArray;
    :try_start_0
    const-string/jumbo v3, "failedMessages"

    invoke-direct {p0, v3}, Lcom/helpshift/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 704
    .local v0, "allFailedMessages":Lorg/json/JSONObject;
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 709
    .end local v0    # "allFailedMessages":Lorg/json/JSONObject;
    :goto_0
    if-nez v2, :cond_0

    .line 710
    new-instance v2, Lorg/json/JSONArray;

    .end local v2    # "failedMessages":Lorg/json/JSONArray;
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 713
    .restart local v2    # "failedMessages":Lorg/json/JSONArray;
    :cond_0
    return-object v2

    .line 705
    :catch_0
    move-exception v1

    .line 706
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "getFailedMessages"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setFailedMessages(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 4
    .param p1, "failedMessages"    # Lorg/json/JSONArray;
    .param p2, "profileId"    # Ljava/lang/String;

    .prologue
    .line 692
    :try_start_0
    const-string/jumbo v2, "failedMessages"

    invoke-direct {p0, v2}, Lcom/helpshift/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 693
    .local v0, "allFailedMessages":Lorg/json/JSONObject;
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 694
    const-string/jumbo v2, "failedMessages"

    invoke-direct {p0, v2, v0}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    .end local v0    # "allFailedMessages":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 695
    :catch_0
    move-exception v1

    .line 696
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "setFailedMessages"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setNotifications(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "notifications"    # Lorg/json/JSONObject;

    .prologue
    .line 1212
    :try_start_0
    const-string/jumbo v2, "notifications"

    invoke-direct {p0, v2}, Lcom/helpshift/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1213
    .local v0, "allNotifications":Lorg/json/JSONObject;
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1214
    const-string/jumbo v2, "notifications"

    invoke-direct {p0, v2, v0}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1218
    .end local v0    # "allNotifications":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1215
    :catch_0
    move-exception v1

    .line 1216
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "setNotifications"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private storageGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/helpshift/HSStorage;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private storageGetArr(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/helpshift/HSStorage;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "[]"

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private storageGetBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/helpshift/HSStorage;->storage:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private storageGetFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/helpshift/HSStorage;->storage:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method private storageGetInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/helpshift/HSStorage;->storage:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/helpshift/HSStorage;->storage:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "{}"

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private storageSet(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Boolean;

    .prologue
    .line 117
    iget-object v1, p0, Lcom/helpshift/HSStorage;->storage:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 118
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 119
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 120
    return-void
.end method

.method private storageSet(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Float;

    .prologue
    .line 111
    iget-object v1, p0, Lcom/helpshift/HSStorage;->storage:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 112
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 114
    return-void
.end method

.method private storageSet(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Integer;

    .prologue
    .line 105
    iget-object v1, p0, Lcom/helpshift/HSStorage;->storage:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 106
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 107
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    return-void
.end method

.method private storageSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v1, p0, Lcom/helpshift/HSStorage;->storage:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 100
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 102
    return-void
.end method

.method private storageSet(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/json/JSONArray;

    .prologue
    .line 87
    iget-object v1, p0, Lcom/helpshift/HSStorage;->storage:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 88
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 90
    return-void
.end method

.method private storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 93
    iget-object v1, p0, Lcom/helpshift/HSStorage;->storage:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 94
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    return-void
.end method

.method private updateOpenConversations(Ljava/lang/String;)V
    .locals 7
    .param p1, "profileId"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-static {p1}, Lcom/helpshift/storage/IssuesDataSource;->getIssues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 174
    .local v3, "issueList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/models/Issue;>;"
    invoke-virtual {p0, p1}, Lcom/helpshift/HSStorage;->getOpenConversations(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 175
    .local v4, "openConversations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/models/Issue;

    .line 176
    .local v1, "issue":Lcom/helpshift/models/Issue;
    invoke-virtual {v1}, Lcom/helpshift/models/Issue;->getIssueId()Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "issueId":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/helpshift/models/Issue;->getStatus()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 178
    .local v5, "status":Ljava/lang/Integer;
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 181
    :cond_0
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_1
    invoke-virtual {p0, v4, p1}, Lcom/helpshift/HSStorage;->setOpenConversations(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    .end local v1    # "issue":Lcom/helpshift/models/Issue;
    .end local v2    # "issueId":Ljava/lang/String;
    .end local v5    # "status":Ljava/lang/Integer;
    :cond_2
    return-void
.end method


# virtual methods
.method protected addMessages(Lorg/json/JSONObject;Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "issue"    # Lorg/json/JSONObject;
    .param p2, "messages"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 162
    const-string/jumbo v0, "messages"

    const-string/jumbo v1, "messages"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/helpshift/HSStorage;->mergeMessages(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    return-object p1
.end method

.method protected addToActiveDownloads(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "issueId"    # Ljava/lang/String;

    .prologue
    .line 1164
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/HSStorage;->getActiveDownloads()Lorg/json/JSONObject;

    move-result-object v0

    .line 1165
    .local v0, "activeDownloads":Lorg/json/JSONObject;
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1166
    invoke-virtual {p0, v0}, Lcom/helpshift/HSStorage;->setActiveDownloads(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1170
    .end local v0    # "activeDownloads":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1167
    :catch_0
    move-exception v1

    .line 1168
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "addToActiveDownloads : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected addToCachedAttachmentFiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 1012
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/HSStorage;->getCachedAttachmentFiles()Lorg/json/JSONObject;

    move-result-object v0

    .line 1013
    .local v0, "cachedFiles":Lorg/json/JSONObject;
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1014
    invoke-virtual {p0, v0}, Lcom/helpshift/HSStorage;->setCachedAttachmentFiles(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1018
    .end local v0    # "cachedFiles":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1015
    :catch_0
    move-exception v1

    .line 1016
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "addToCachedAttachmentFiles : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected addToDownloadedGenericFiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1028
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/HSStorage;->getDownloadedAttachmentFiles()Lorg/json/JSONObject;

    move-result-object v0

    .line 1029
    .local v0, "downloadedFiles":Lorg/json/JSONObject;
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1030
    invoke-virtual {p0, v0}, Lcom/helpshift/HSStorage;->setDownloadedAttachmentFiles(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    .end local v0    # "downloadedFiles":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1031
    :catch_0
    move-exception v1

    .line 1032
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "addToDownloadedGenericFiles : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected addToDownloadedImageFiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1123
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/HSStorage;->getDownloadedImageFiles()Lorg/json/JSONObject;

    move-result-object v0

    .line 1124
    .local v0, "downloadedImageFiles":Lorg/json/JSONObject;
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1125
    invoke-virtual {p0, v0}, Lcom/helpshift/HSStorage;->setDownloadedImageFiles(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1129
    .end local v0    # "downloadedImageFiles":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1126
    :catch_0
    move-exception v1

    .line 1127
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "addToDownloadedImageFiles : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected addToDownloadedThumbnailFiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1082
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/HSStorage;->getDownloadedThumbnailFiles()Lorg/json/JSONObject;

    move-result-object v0

    .line 1083
    .local v0, "downloadedThumbnailFiles":Lorg/json/JSONObject;
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1084
    invoke-virtual {p0, v0}, Lcom/helpshift/HSStorage;->setDownloadedThumbnailFiles(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1088
    .end local v0    # "downloadedThumbnailFiles":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1085
    :catch_0
    move-exception v1

    .line 1086
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "addToDownloadedThumbnailFiles : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected clearAndUpdateActiveConversation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "issueId"    # Ljava/lang/String;
    .param p2, "profileId"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-virtual {p0, p2}, Lcom/helpshift/HSStorage;->getOpenConversations(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 216
    .local v0, "openConvs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 218
    invoke-virtual {p0, v0, p2}, Lcom/helpshift/HSStorage;->setOpenConversations(Ljava/util/List;Ljava/lang/String;)V

    .line 220
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/helpshift/HSStorage;->setArchivedConversation(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0, p2}, Lcom/helpshift/HSStorage;->updateActiveConversation(Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method protected clearBreadCrumbs()V
    .locals 2

    .prologue
    .line 514
    const-string/jumbo v0, "breadCrumbs"

    const-string/jumbo v1, "[]"

    invoke-direct {p0, v0, v1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    return-void
.end method

.method protected clearDatabase()V
    .locals 2

    .prologue
    .line 281
    iget-object v1, p0, Lcom/helpshift/HSStorage;->storage:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 282
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 283
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 284
    return-void
.end method

.method protected clearNotification(Ljava/lang/String;)V
    .locals 5
    .param p1, "issueId"    # Ljava/lang/String;

    .prologue
    .line 1235
    invoke-static {p1}, Lcom/helpshift/models/Issue;->getProfileId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1236
    .local v2, "profileId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1238
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/helpshift/HSStorage;->getNotifications(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1239
    .local v1, "notifications":Lorg/json/JSONObject;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1240
    invoke-direct {p0, v2, v1}, Lcom/helpshift/HSStorage;->setNotifications(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1245
    .end local v1    # "notifications":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 1241
    :catch_0
    move-exception v0

    .line 1242
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "clearNotification"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected deleteIndex()V
    .locals 2

    .prologue
    .line 685
    const/4 v0, 0x0

    sput-object v0, Lcom/helpshift/HSStorage;->cacheIndex:Ljava/util/HashMap;

    .line 686
    iget-object v0, p0, Lcom/helpshift/HSStorage;->context:Landroid/content/Context;

    const-string/jumbo v1, "fullIndex.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 687
    invoke-virtual {p0}, Lcom/helpshift/HSStorage;->unsetDBFlag()V

    .line 688
    return-void
.end method

.method protected enableReview()V
    .locals 2

    .prologue
    .line 598
    const-string/jumbo v0, "reviewed"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 599
    return-void
.end method

.method protected getActiveConversation(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "profileId"    # Ljava/lang/String;

    .prologue
    .line 338
    const/4 v0, 0x0

    .line 340
    .local v0, "activeConversation":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "activeConversation"

    invoke-direct {p0, v3}, Lcom/helpshift/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 341
    .local v1, "allActiveConversations":Lorg/json/JSONObject;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 345
    .end local v1    # "allActiveConversations":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 342
    :catch_0
    move-exception v2

    .line 343
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "getActiveConversation"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected getActiveDownloads()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 1151
    :try_start_0
    const-string/jumbo v1, "activeDownloads"

    invoke-direct {p0, v1}, Lcom/helpshift/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1155
    :goto_0
    return-object v1

    .line 1152
    :catch_0
    move-exception v0

    .line 1153
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "getActiveDownloads : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1155
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method protected getActiveNotifCnt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p1, "profileId"    # Ljava/lang/String;

    .prologue
    .line 262
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 263
    .local v0, "activeNotifCnt":Ljava/lang/Integer;
    invoke-virtual {p0, p1}, Lcom/helpshift/HSStorage;->getActiveConversation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "issueId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 266
    invoke-static {v2}, Lcom/helpshift/storage/IssuesDataSource;->getIssue(Ljava/lang/String;)Lcom/helpshift/models/Issue;

    move-result-object v1

    .line 267
    .local v1, "issue":Lcom/helpshift/models/Issue;
    invoke-virtual {v1}, Lcom/helpshift/models/Issue;->getNewMessagesCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 270
    .end local v1    # "issue":Lcom/helpshift/models/Issue;
    :cond_0
    return-object v0
.end method

.method protected getApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    const-string/jumbo v0, "apiKey"

    invoke-direct {p0, v0}, Lcom/helpshift/HSStorage;->storageGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppConfig()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 574
    const-string/jumbo v0, "appConfig"

    invoke-direct {p0, v0}, Lcom/helpshift/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    const-string/jumbo v0, "appId"

    invoke-direct {p0, v0}, Lcom/helpshift/HSStorage;->storageGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getApplicationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    const-string/jumbo v0, "applicationVersion"

    invoke-direct {p0, v0}, Lcom/helpshift/HSStorage;->storageGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getArchivedConversation(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "profileId"    # Ljava/lang/String;

    .prologue
    .line 366
    const/4 v1, 0x0

    .line 368
    .local v1, "archivedConversation":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "archivedConversations"

    invoke-direct {p0, v3}, Lcom/helpshift/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 369
    .local v0, "allArchivedConversations":Lorg/json/JSONObject;
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 373
    .end local v0    # "allArchivedConversations":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 370
    :catch_0
    move-exception v2

    .line 371
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "getArchivedConversation"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getBreadCrumbs()Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 474
    const-string/jumbo v0, "breadCrumbs"

    invoke-direct {p0, v0}, Lcom/helpshift/HSStorage;->storageGetArr(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method protected getBreadCrumbsLimit()Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 524
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/HSStorage;->getConfig()Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "bcl"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    .local v1, "limit":Ljava/lang/Integer;
    :goto_0
    return-object v1

    .line 525
    .end local v1    # "limit":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 526
    .local v0, "e":Lorg/json/JSONException;
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .restart local v1    # "limit":Ljava/lang/Integer;
    goto :goto_0
.end method

.method protected getCSatDraft()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 966
    :try_start_0
    const-string/jumbo v1, "csatDraft"

    invoke-direct {p0, v1}, Lcom/helpshift/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 970
    :goto_0
    return-object v1

    .line 967
    :catch_0
    move-exception v0

    .line 968
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "JSONException : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 970
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method protected getCachedAttachmentFiles()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 999
    :try_start_0
    const-string/jumbo v1, "cachedAttachmentFiles"

    invoke-direct {p0, v1}, Lcom/helpshift/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1003
    :goto_0
    return-object v1

    .line 1000
    :catch_0
    move-exception v0

    .line 1001
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "getCachedAttachmentFiles : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1003
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method protected getConfig()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 566
    const-string/jumbo v0, "config"

    invoke-direct {p0, v0}, Lcom/helpshift/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected getConversationDetail(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 841
    const-string/jumbo v2, ""

    .line 843
    .local v2, "conversationText":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v6, "allConversationDetails"

    invoke-direct {p0, v6}, Lcom/helpshift/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 844
    .local v0, "allConversationDetails":Lorg/json/JSONObject;
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 845
    .local v1, "conversationDetail":Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    .line 846
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-string/jumbo v8, "conversationTextSetTime"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long v4, v6, v8

    .line 848
    .local v4, "timeDiff":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    const-wide/16 v8, 0x1c20

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 850
    :cond_0
    const-string/jumbo v6, ""

    invoke-virtual {p0, p1, v6}, Lcom/helpshift/HSStorage;->storeConversationDetail(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    .end local v0    # "allConversationDetails":Lorg/json/JSONObject;
    .end local v1    # "conversationDetail":Lorg/json/JSONObject;
    .end local v4    # "timeDiff":J
    :cond_1
    :goto_0
    return-object v2

    .line 852
    .restart local v0    # "allConversationDetails":Lorg/json/JSONObject;
    .restart local v1    # "conversationDetail":Lorg/json/JSONObject;
    .restart local v4    # "timeDiff":J
    :cond_2
    const-string/jumbo v6, "conversationText"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 855
    .end local v0    # "allConversationDetails":Lorg/json/JSONObject;
    .end local v1    # "conversationDetail":Lorg/json/JSONObject;
    .end local v4    # "timeDiff":J
    :catch_0
    move-exception v3

    .line 856
    .local v3, "e":Lorg/json/JSONException;
    const-string/jumbo v6, "HelpShiftDebug"

    const-string/jumbo v7, "getConversationDetail"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getConversationPrefillText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 986
    const-string/jumbo v0, "conversationPrefillText"

    invoke-direct {p0, v0}, Lcom/helpshift/HSStorage;->storageGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConversationScreenshot(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "loginIdentifier"    # Ljava/lang/String;

    .prologue
    .line 888
    const-string/jumbo v2, ""

    .line 890
    .local v2, "screenshot":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "conversationScreenshots"

    invoke-direct {p0, v3}, Lcom/helpshift/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 891
    .local v0, "allScreenshots":Lorg/json/JSONObject;
    const-string/jumbo v3, ""

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 895
    .end local v0    # "allScreenshots":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 892
    :catch_0
    move-exception v1

    .line 893
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "getConversationScreenshot"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getCustomMetaData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 932
    :try_start_0
    const-string/jumbo v1, "customMetaData"

    invoke-direct {p0, v1}, Lcom/helpshift/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 935
    :goto_0
    return-object v1

    .line 933
    :catch_0
    move-exception v0

    .line 934
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "Exception getting meta from storage "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 935
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getDBFlag()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 673
    const-string/jumbo v0, "dbFlag"

    invoke-direct {p0, v0}, Lcom/helpshift/HSStorage;->storageGetBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected getDeviceIdentifier()Ljava/lang/String;
    .locals 3

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/helpshift/HSStorage;->getLoginIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "loginIdentifier":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    const-string/jumbo v2, "deviceId"

    invoke-direct {p0, v2}, Lcom/helpshift/HSStorage;->storageGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "deviceIdentifier":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 312
    .end local v0    # "deviceIdentifier":Ljava/lang/String;
    :cond_0
    move-object v0, v1

    .restart local v0    # "deviceIdentifier":Ljava/lang/String;
    goto :goto_0
.end method

.method public getDeviceToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    const-string/jumbo v0, "deviceToken"

    invoke-direct {p0, v0}, Lcom/helpshift/HSStorage;->storageGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    const-string/jumbo v0, "domain"

    invoke-direct {p0, v0}, Lcom/helpshift/HSStorage;->storageGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDownloadedAttachmentFiles()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 1056
    :try_start_0
    const-string/jumbo v1, "downloadedAttachmentFiles"

    invoke-direct {p0, v1}, Lcom/helpshift/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1060
    :goto_0
    return-object v1

    .line 1057
    :catch_0
    move-exception v0

    .line 1058
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "JSONException : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1060
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method protected getDownloadedImageFiles()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 1110
    :try_start_0
    const-string/jumbo v1, "downloadedImageFiles"

    invoke-direct {p0, v1}, Lcom/helpshift/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1114
    :goto_0
    return-object v1

    .line 1111
    :catch_0
    move-exception v0

    .line 1112
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "getDownloadedImageFiles : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1114
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method protected getDownloadedThumbnailFiles()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 1069
    :try_start_0
    const-string/jumbo v1, "downloadedThumbnailFiles"

    invoke-direct {p0, v1}, Lcom/helpshift/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1073
    :goto_0
    return-object v1

    .line 1070
    :catch_0
    move-exception v0

    .line 1071
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "getDownloadedThumbnailFiles "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1073
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    const-string/jumbo v0, "email"

    invoke-direct {p0, v0}, Lcom/helpshift/HSStorage;->storageGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnableFullPrivacy()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 923
    const-string/jumbo v0, "fullPrivacy"

    invoke-direct {p0, v0}, Lcom/helpshift/HSStorage;->storageGetBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected getEtag(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 628
    const-string/jumbo v1, ""

    .line 630
    .local v1, "etag":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/HSStorage;->getEtags()Lorg/json/JSONObject;

    move-result-object v2

    .line 631
    .local v2, "etags":Lorg/json/JSONObject;
    const-string/jumbo v3, ""

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 635
    .end local v2    # "etags":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 632
    :catch_0
    move-exception v0

    .line 633
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "set etag"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected getEtags()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 614
    const-string/jumbo v0, "etags"

    invoke-direct {p0, v0}, Lcom/helpshift/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected getFailedApiCalls()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 796
    const-string/jumbo v0, "failedApiCalls"

    invoke-direct {p0, v0}, Lcom/helpshift/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected getFailedMessages(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 5
    .param p1, "issueId"    # Ljava/lang/String;
    .param p2, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 756
    invoke-direct {p0, p2}, Lcom/helpshift/HSStorage;->getFailedMessages(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 757
    .local v1, "failedMessages":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 758
    .local v2, "failedMessagesIssue":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 759
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 760
    .local v0, "failedMessage":Lorg/json/JSONObject;
    const-string/jumbo v4, "issue_id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 761
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 758
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 764
    .end local v0    # "failedMessage":Lorg/json/JSONObject;
    :cond_1
    return-object v2
.end method

.method protected getFilePathForGenericAttachment(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 1043
    invoke-virtual {p0}, Lcom/helpshift/HSStorage;->getDownloadedAttachmentFiles()Lorg/json/JSONObject;

    move-result-object v0

    .line 1044
    .local v0, "downloadedFiles":Lorg/json/JSONObject;
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1046
    :try_start_0
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1051
    :goto_0
    return-object v2

    .line 1047
    :catch_0
    move-exception v1

    .line 1048
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "getFilePathForGenericAttachment : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1051
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method protected getFilePathForImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 1139
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/HSStorage;->getDownloadedImageFiles()Lorg/json/JSONObject;

    move-result-object v0

    .line 1140
    .local v0, "downloadedImageFiles":Lorg/json/JSONObject;
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1141
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1146
    .end local v0    # "downloadedImageFiles":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 1143
    :catch_0
    move-exception v1

    .line 1144
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "getFilePathForImage : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1146
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method protected getFilePathForThumbnail(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 1098
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/HSStorage;->getDownloadedThumbnailFiles()Lorg/json/JSONObject;

    move-result-object v0

    .line 1099
    .local v0, "downloadedThumbnailFiles":Lorg/json/JSONObject;
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1100
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1105
    .end local v0    # "downloadedThumbnailFiles":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 1102
    :catch_0
    move-exception v1

    .line 1103
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "getFilePathForThumbnail : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1105
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public getForegroundIssue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    const-string/jumbo v0, "foregroundIssue"

    invoke-direct {p0, v0}, Lcom/helpshift/HSStorage;->storageGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHideNameAndEmail()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 978
    const-string/jumbo v0, "hideNameAndEmail"

    invoke-direct {p0, v0}, Lcom/helpshift/HSStorage;->storageGetBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    const-string/jumbo v0, "identity"

    invoke-direct {p0, v0}, Lcom/helpshift/HSStorage;->storageGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsConversationShowing()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 911
    const-string/jumbo v0, "isConversationShowing"

    invoke-direct {p0, v0}, Lcom/helpshift/HSStorage;->storageGetBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected getIssueCSatStates()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 953
    :try_start_0
    const-string/jumbo v1, "issueCSatStates"

    invoke-direct {p0, v1}, Lcom/helpshift/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 957
    :goto_0
    return-object v1

    .line 954
    :catch_0
    move-exception v0

    .line 955
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "JSONException : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 957
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method protected getIssuePushCount(Ljava/lang/String;)I
    .locals 3
    .param p1, "issueId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 377
    const/4 v1, 0x1

    .line 378
    .local v1, "updatedCount":I
    const-string/jumbo v2, "pushData"

    invoke-direct {p0, v2}, Lcom/helpshift/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 380
    .local v0, "pushData":Lorg/json/JSONObject;
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 383
    :cond_0
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 384
    const-string/jumbo v2, "pushData"

    invoke-direct {p0, v2, v0}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 386
    return v1
.end method

.method protected getIssuesTs(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6
    .param p1, "profileId"    # Ljava/lang/String;

    .prologue
    .line 225
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 226
    .local v3, "result":Ljava/util/HashMap;
    const-string/jumbo v2, ""

    .line 229
    .local v2, "issuesTs":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "issuesTs"

    invoke-direct {p0, v4}, Lcom/helpshift/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 230
    .local v0, "allIssuesTs":Lorg/json/JSONObject;
    const-string/jumbo v4, ""

    invoke-virtual {v0, p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 235
    .end local v0    # "allIssuesTs":Lorg/json/JSONObject;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 236
    const-string/jumbo v4, "ts"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string/jumbo v4, "success"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_0
    return-object v3

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "HelpShiftDebug"

    const-string/jumbo v5, "getIssuesTs"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected getLaunchReviewCounter()I
    .locals 1

    .prologue
    .line 590
    const-string/jumbo v0, "launchReviewCounter"

    invoke-direct {p0, v0}, Lcom/helpshift/HSStorage;->storageGetInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected getLibraryVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    const-string/jumbo v0, "libraryVersion"

    invoke-direct {p0, v0}, Lcom/helpshift/HSStorage;->storageGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLoginIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1188
    const-string/jumbo v0, "loginIdentifier"

    invoke-direct {p0, v0}, Lcom/helpshift/HSStorage;->storageGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNotifications(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "profileId"    # Ljava/lang/String;

    .prologue
    .line 1221
    const/4 v2, 0x0

    .line 1223
    .local v2, "notifications":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "notifications"

    invoke-direct {p0, v3}, Lcom/helpshift/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1224
    .local v0, "allNotifications":Lorg/json/JSONObject;
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1228
    .end local v0    # "allNotifications":Lorg/json/JSONObject;
    :goto_0
    if-nez v2, :cond_0

    .line 1229
    new-instance v2, Lorg/json/JSONObject;

    .end local v2    # "notifications":Lorg/json/JSONObject;
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1231
    .restart local v2    # "notifications":Lorg/json/JSONObject;
    :cond_0
    return-object v2

    .line 1225
    :catch_0
    move-exception v1

    .line 1226
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "getNotifications"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected getOpenConversations(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    const-string/jumbo v6, "openConversations"

    invoke-direct {p0, v6}, Lcom/helpshift/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 352
    .local v0, "allOpenConversations":Lorg/json/JSONObject;
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 353
    .local v5, "openConversations":Lorg/json/JSONArray;
    if-eqz v5, :cond_0

    .line 354
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 355
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 356
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 359
    .end local v0    # "allOpenConversations":Lorg/json/JSONObject;
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v5    # "openConversations":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 360
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v6, "HelpShiftDebug"

    const-string/jumbo v7, "getOpenConversations"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    return-object v4
.end method

.method protected getReply(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "profileId"    # Ljava/lang/String;

    .prologue
    .line 817
    const-string/jumbo v2, ""

    .line 819
    .local v2, "replyText":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "allReplyTexts"

    invoke-direct {p0, v3}, Lcom/helpshift/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 820
    .local v0, "allReplyTexts":Lorg/json/JSONObject;
    const-string/jumbo v3, ""

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 824
    .end local v0    # "allReplyTexts":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 821
    :catch_0
    move-exception v1

    .line 822
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "storeReply"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getRequireEmail()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 919
    const-string/jumbo v0, "requireEmail"

    invoke-direct {p0, v0}, Lcom/helpshift/HSStorage;->storageGetBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected getReviewCounter()I
    .locals 1

    .prologue
    .line 582
    const-string/jumbo v0, "reviewCounter"

    invoke-direct {p0, v0}, Lcom/helpshift/HSStorage;->storageGetInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected getReviewed()I
    .locals 1

    .prologue
    .line 602
    const-string/jumbo v0, "reviewed"

    invoke-direct {p0, v0}, Lcom/helpshift/HSStorage;->storageGetInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getScreenShotDraft()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 903
    const-string/jumbo v0, "screenShotDraft"

    invoke-direct {p0, v0}, Lcom/helpshift/HSStorage;->storageGetBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getSdkLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1252
    const-string/jumbo v0, "sdkLanguage"

    invoke-direct {p0, v0}, Lcom/helpshift/HSStorage;->storageGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSdkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    const-string/jumbo v0, "sdkType"

    invoke-direct {p0, v0}, Lcom/helpshift/HSStorage;->storageGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getServerTimeDelta()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 866
    const-string/jumbo v0, "serverTimeDelta"

    invoke-direct {p0, v0}, Lcom/helpshift/HSStorage;->storageGetFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getShowSearchOnNewConversation()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 994
    const-string/jumbo v0, "showSearchOnNewConversation"

    invoke-direct {p0, v0}, Lcom/helpshift/HSStorage;->storageGetBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected getStoredFiles()Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 610
    const-string/jumbo v0, "cachedImages"

    invoke-direct {p0, v0}, Lcom/helpshift/HSStorage;->storageGetArr(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method protected getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 874
    const-string/jumbo v0, "uuid"

    invoke-direct {p0, v0}, Lcom/helpshift/HSStorage;->storageGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    const-string/jumbo v0, "username"

    invoke-direct {p0, v0}, Lcom/helpshift/HSStorage;->storageGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isDownloadActive(Ljava/lang/String;)Z
    .locals 2
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 1179
    invoke-virtual {p0}, Lcom/helpshift/HSStorage;->getActiveDownloads()Lorg/json/JSONObject;

    move-result-object v0

    .line 1180
    .local v0, "activeDownloads":Lorg/json/JSONObject;
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isHelpshiftBrandingDisabled()Z
    .locals 1

    .prologue
    .line 1276
    const-string/jumbo v0, "disableHelpshiftBranding"

    invoke-direct {p0, v0}, Lcom/helpshift/HSStorage;->storageGetBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected loadIndex()V
    .locals 7

    .prologue
    .line 654
    sget-object v5, Lcom/helpshift/HSStorage;->cacheIndex:Ljava/util/HashMap;

    if-nez v5, :cond_0

    .line 655
    const/4 v3, 0x0

    .line 657
    .local v3, "fullIndex":Ljava/util/HashMap;
    :try_start_0
    iget-object v5, p0, Lcom/helpshift/HSStorage;->context:Landroid/content/Context;

    const-string/jumbo v6, "fullIndex.db"

    invoke-virtual {v5, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 658
    .local v2, "fStream":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 659
    .local v4, "oStream":Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/HashMap;

    move-object v3, v0

    .line 660
    sput-object v3, Lcom/helpshift/HSStorage;->cacheIndex:Ljava/util/HashMap;

    .line 661
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    .end local v2    # "fStream":Ljava/io/FileInputStream;
    .end local v3    # "fullIndex":Ljava/util/HashMap;
    .end local v4    # "oStream":Ljava/io/ObjectInputStream;
    :cond_0
    :goto_0
    return-void

    .line 662
    .restart local v3    # "fullIndex":Ljava/util/HashMap;
    :catch_0
    move-exception v1

    .line 663
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "HelpShiftDebug"

    const-string/jumbo v6, "read index"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected mergeMessages(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 9
    .param p1, "messages1"    # Lorg/json/JSONArray;
    .param p2, "messages2"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 124
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 125
    .local v5, "messagesMap":Ljava/util/HashMap;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 126
    .local v4, "messagesList":Lorg/json/JSONArray;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v6, "messagesMapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap;>;"
    invoke-direct {p0, p1, p2}, Lcom/helpshift/HSStorage;->concatJSONArray(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v3

    .line 129
    .local v3, "messages":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 130
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 131
    .local v1, "message":Lorg/json/JSONObject;
    const-string/jumbo v7, "id"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 132
    const-string/jumbo v7, "id"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 134
    .local v2, "messageMap":Ljava/util/HashMap;
    const-string/jumbo v7, "id"

    const-string/jumbo v8, "id"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string/jumbo v7, "created_at"

    const-string/jumbo v8, "created_at"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .end local v2    # "messageMap":Ljava/util/HashMap;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    .end local v1    # "message":Lorg/json/JSONObject;
    :cond_1
    new-instance v7, Lcom/helpshift/HSStorage$1;

    invoke-direct {v7, p0}, Lcom/helpshift/HSStorage$1;-><init>(Lcom/helpshift/HSStorage;)V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 153
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 154
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string/jumbo v8, "id"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 157
    :cond_2
    return-object v4
.end method

.method protected popFailedMessage(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 717
    invoke-direct {p0, p1}, Lcom/helpshift/HSStorage;->getFailedMessages(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 718
    .local v2, "failedMessages":Lorg/json/JSONArray;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 719
    .local v3, "failedMessagesStore":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .line 720
    .local v1, "failedMessageRes":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 721
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 722
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 723
    .local v0, "failedMessage":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    const-string/jumbo v5, "state"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x2

    if-le v5, v6, :cond_0

    .line 725
    move-object v1, v0

    .line 721
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 727
    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 730
    .end local v0    # "failedMessage":Lorg/json/JSONObject;
    :cond_1
    invoke-direct {p0, v3, p1}, Lcom/helpshift/HSStorage;->setFailedMessages(Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 732
    .end local v4    # "i":I
    :cond_2
    return-object v1
.end method

.method protected popFailedMessage(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 737
    invoke-direct {p0, p2}, Lcom/helpshift/HSStorage;->getFailedMessages(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 738
    .local v2, "failedMessages":Lorg/json/JSONArray;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 739
    .local v3, "failedMessagesStore":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .line 740
    .local v1, "failedMessageRes":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 741
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 742
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 743
    .local v0, "failedMessage":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    const-string/jumbo v5, "id"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 745
    move-object v1, v0

    .line 741
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 747
    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 750
    .end local v0    # "failedMessage":Lorg/json/JSONObject;
    :cond_1
    invoke-direct {p0, v3, p2}, Lcom/helpshift/HSStorage;->setFailedMessages(Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 752
    .end local v4    # "i":I
    :cond_2
    return-object v1
.end method

.method protected pushBreadCrumb(Ljava/lang/String;)V
    .locals 11
    .param p1, "breadCrumb"    # Ljava/lang/String;

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/helpshift/HSStorage;->getBreadCrumbsLimit()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 487
    .local v6, "limit":I
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/HSStorage;->getBreadCrumbs()Lorg/json/JSONArray;

    move-result-object v1

    .line 488
    .local v1, "crumbsList":Lorg/json/JSONArray;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 489
    .local v0, "crumbObj":Lorg/json/JSONObject;
    const-string/jumbo v8, "action"

    invoke-virtual {v0, v8, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 490
    const-string/jumbo v8, "datetime"

    sget-object v9, Lcom/helpshift/util/HSFormat;->breadCrumbTsFormat:Ljava/text/SimpleDateFormat;

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 492
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 493
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 494
    .local v5, "length":I
    if-le v5, v6, :cond_1

    .line 495
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 496
    .local v7, "newArray":Lorg/json/JSONArray;
    sub-int v2, v5, v6

    .line 498
    .local v2, "diff":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_0

    .line 499
    add-int v8, v4, v2

    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 498
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 501
    :cond_0
    move-object v1, v7

    .line 503
    .end local v2    # "diff":I
    .end local v4    # "i":I
    .end local v7    # "newArray":Lorg/json/JSONArray;
    :cond_1
    const-string/jumbo v8, "breadCrumbs"

    invoke-direct {p0, v8, v1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    .end local v0    # "crumbObj":Lorg/json/JSONObject;
    .end local v1    # "crumbsList":Lorg/json/JSONArray;
    .end local v5    # "length":I
    :goto_1
    return-void

    .line 504
    :catch_0
    move-exception v3

    .line 505
    .local v3, "e":Lorg/json/JSONException;
    const-string/jumbo v8, "HelpShiftDebug"

    const-string/jumbo v9, "Error while leaving breadcrumb"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected readIndex()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 669
    sget-object v0, Lcom/helpshift/HSStorage;->cacheIndex:Ljava/util/HashMap;

    return-object v0
.end method

.method protected removeFromActiveDownloads(Ljava/lang/String;)V
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 1173
    invoke-virtual {p0}, Lcom/helpshift/HSStorage;->getActiveDownloads()Lorg/json/JSONObject;

    move-result-object v0

    .line 1174
    .local v0, "activeDownloads":Lorg/json/JSONObject;
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1175
    invoke-virtual {p0, v0}, Lcom/helpshift/HSStorage;->setActiveDownloads(Lorg/json/JSONObject;)V

    .line 1176
    return-void
.end method

.method protected removeFromCachedAttachmentFiles(Ljava/lang/String;)V
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 1021
    invoke-virtual {p0}, Lcom/helpshift/HSStorage;->getCachedAttachmentFiles()Lorg/json/JSONObject;

    move-result-object v0

    .line 1022
    .local v0, "cachedFiles":Lorg/json/JSONObject;
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1023
    invoke-virtual {p0, v0}, Lcom/helpshift/HSStorage;->setCachedAttachmentFiles(Lorg/json/JSONObject;)V

    .line 1024
    return-void
.end method

.method protected removeFromDownloadedGenericFiles(Ljava/lang/String;)V
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 1037
    invoke-virtual {p0}, Lcom/helpshift/HSStorage;->getDownloadedAttachmentFiles()Lorg/json/JSONObject;

    move-result-object v0

    .line 1038
    .local v0, "downloadedGenericFiles":Lorg/json/JSONObject;
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1039
    invoke-virtual {p0, v0}, Lcom/helpshift/HSStorage;->setDownloadedAttachmentFiles(Lorg/json/JSONObject;)V

    .line 1040
    return-void
.end method

.method protected removeFromDownloadedImageFiles(Ljava/lang/String;)V
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 1132
    invoke-virtual {p0}, Lcom/helpshift/HSStorage;->getDownloadedImageFiles()Lorg/json/JSONObject;

    move-result-object v0

    .line 1133
    .local v0, "downloadedImageFiles":Lorg/json/JSONObject;
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1134
    invoke-virtual {p0, v0}, Lcom/helpshift/HSStorage;->setDownloadedImageFiles(Lorg/json/JSONObject;)V

    .line 1135
    return-void
.end method

.method protected removeFromDownloadedThumbnailFiles(Ljava/lang/String;)V
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 1091
    invoke-virtual {p0}, Lcom/helpshift/HSStorage;->getDownloadedThumbnailFiles()Lorg/json/JSONObject;

    move-result-object v0

    .line 1092
    .local v0, "downloadedThumbnailFiles":Lorg/json/JSONObject;
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1093
    invoke-virtual {p0, v0}, Lcom/helpshift/HSStorage;->setDownloadedThumbnailFiles(Lorg/json/JSONObject;)V

    .line 1094
    return-void
.end method

.method protected resetIssueCount(Ljava/lang/String;)V
    .locals 2
    .param p1, "issueId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-static {p1}, Lcom/helpshift/models/Issue;->resetIssueCount(Ljava/lang/String;)V

    .line 275
    const-string/jumbo v1, "pushData"

    invoke-direct {p0, v1}, Lcom/helpshift/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 276
    .local v0, "pushData":Lorg/json/JSONObject;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 277
    const-string/jumbo v1, "pushData"

    invoke-direct {p0, v1, v0}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 278
    return-void
.end method

.method public saveNotification(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "issueId"    # Ljava/lang/String;
    .param p2, "issueTs"    # I
    .param p3, "newMessageCount"    # I
    .param p4, "chatLaunchSource"    # Ljava/lang/String;
    .param p5, "contentTitle"    # Ljava/lang/String;

    .prologue
    .line 1193
    invoke-static {p1}, Lcom/helpshift/models/Issue;->getProfileId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1194
    .local v3, "profileId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1195
    invoke-virtual {p0, v3}, Lcom/helpshift/HSStorage;->getNotifications(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1197
    .local v2, "notifications":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1198
    .local v1, "newNotification":Lorg/json/JSONObject;
    const-string/jumbo v4, "issueTs"

    invoke-virtual {v1, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1199
    const-string/jumbo v4, "newMessageCount"

    invoke-virtual {v1, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1200
    const-string/jumbo v4, "chatLaunchSource"

    invoke-virtual {v1, v4, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1201
    const-string/jumbo v4, "contentTitle"

    invoke-virtual {v1, v4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1202
    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1203
    invoke-direct {p0, v3, v2}, Lcom/helpshift/HSStorage;->setNotifications(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1208
    .end local v1    # "newNotification":Lorg/json/JSONObject;
    .end local v2    # "notifications":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 1204
    .restart local v2    # "notifications":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1205
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "HelpShiftDebug"

    const-string/jumbo v5, "saveNotification"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected setActiveConversation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "conversationId"    # Ljava/lang/String;
    .param p2, "profileId"    # Ljava/lang/String;

    .prologue
    .line 439
    :try_start_0
    const-string/jumbo v2, "activeConversation"

    invoke-direct {p0, v2}, Lcom/helpshift/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 440
    .local v0, "allActiveConversations":Lorg/json/JSONObject;
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 441
    const-string/jumbo v2, "activeConversation"

    invoke-direct {p0, v2, v0}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    .end local v0    # "allActiveConversations":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 442
    :catch_0
    move-exception v1

    .line 443
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "setActiveConversation"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected setActiveDownloads(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "activeDownloads"    # Lorg/json/JSONObject;

    .prologue
    .line 1159
    const-string/jumbo v0, "activeDownloads"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1160
    return-void
.end method

.method protected setApiKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 390
    const-string/jumbo v0, "apiKey"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method protected setAppConfig(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "appConfig"    # Lorg/json/JSONObject;

    .prologue
    .line 570
    const-string/jumbo v0, "appConfig"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 571
    return-void
.end method

.method protected setAppId(Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 398
    const-string/jumbo v0, "appId"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method protected setApplicationVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "applicationVersion"    # Ljava/lang/String;

    .prologue
    .line 430
    const-string/jumbo v0, "applicationVersion"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method protected setArchivedConversation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "archivedConversationId"    # Ljava/lang/String;
    .param p2, "profileId"    # Ljava/lang/String;

    .prologue
    .line 460
    :try_start_0
    const-string/jumbo v2, "archivedConversations"

    invoke-direct {p0, v2}, Lcom/helpshift/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 461
    .local v0, "allArchivedConversations":Lorg/json/JSONObject;
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 462
    const-string/jumbo v2, "archivedConversations"

    invoke-direct {p0, v2, v0}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    .end local v0    # "allArchivedConversations":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 463
    :catch_0
    move-exception v1

    .line 464
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "setArchivedConversation"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected setCSatDraft(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "draft"    # Lorg/json/JSONObject;

    .prologue
    .line 961
    const-string/jumbo v0, "csatDraft"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 962
    return-void
.end method

.method protected setCachedAttachmentFiles(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "cachedFiles"    # Lorg/json/JSONObject;

    .prologue
    .line 1007
    const-string/jumbo v0, "cachedAttachmentFiles"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1008
    return-void
.end method

.method protected setConfig(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 562
    const-string/jumbo v0, "config"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 563
    return-void
.end method

.method public setConversationPrefillText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 982
    const-string/jumbo v0, "conversationPrefillText"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    return-void
.end method

.method public setConversationScreenshot(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "screenshotPath"    # Ljava/lang/String;
    .param p2, "loginIdentifier"    # Ljava/lang/String;

    .prologue
    .line 879
    :try_start_0
    const-string/jumbo v2, "conversationScreenshots"

    invoke-direct {p0, v2}, Lcom/helpshift/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 880
    .local v0, "allScreenshots":Lorg/json/JSONObject;
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 881
    const-string/jumbo v2, "conversationScreenshots"

    invoke-direct {p0, v2, v0}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    .end local v0    # "allScreenshots":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 882
    :catch_0
    move-exception v1

    .line 883
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "setConversationScreenshot"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCustomMetaData(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "metaData"    # Lorg/json/JSONObject;

    .prologue
    .line 941
    if-nez p1, :cond_0

    .line 942
    new-instance p1, Lorg/json/JSONObject;

    .end local p1    # "metaData":Lorg/json/JSONObject;
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 944
    .restart local p1    # "metaData":Lorg/json/JSONObject;
    :cond_0
    const-string/jumbo v0, "customMetaData"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 945
    return-void
.end method

.method protected setDBFlag()V
    .locals 2

    .prologue
    .line 677
    const-string/jumbo v0, "dbFlag"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 678
    return-void
.end method

.method protected setDeviceIdentifier(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 410
    const-string/jumbo v0, "deviceId"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method protected setDeviceToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceToken"    # Ljava/lang/String;

    .prologue
    .line 414
    const-string/jumbo v0, "deviceToken"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method protected setDomain(Ljava/lang/String;)V
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 394
    const-string/jumbo v0, "domain"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method protected setDownloadedAttachmentFiles(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "downloadedAttachmentFiles"    # Lorg/json/JSONObject;

    .prologue
    .line 1064
    const-string/jumbo v0, "downloadedAttachmentFiles"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1065
    return-void
.end method

.method protected setDownloadedImageFiles(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "downloadedImageFiles"    # Lorg/json/JSONObject;

    .prologue
    .line 1118
    const-string/jumbo v0, "downloadedImageFiles"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1119
    return-void
.end method

.method protected setDownloadedThumbnailFiles(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "downloadedThumbnailFiles"    # Lorg/json/JSONObject;

    .prologue
    .line 1077
    const-string/jumbo v0, "downloadedThumbnailFiles"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1078
    return-void
.end method

.method protected setEmail(Ljava/lang/String;)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 402
    const-string/jumbo v0, "email"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method public setEnableFullPrivacy(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/Boolean;

    .prologue
    .line 927
    const-string/jumbo v0, "fullPrivacy"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 928
    return-void
.end method

.method public setEtag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "etag"    # Ljava/lang/String;

    .prologue
    .line 619
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/HSStorage;->getEtags()Lorg/json/JSONObject;

    move-result-object v1

    .line 620
    .local v1, "etags":Lorg/json/JSONObject;
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 621
    const-string/jumbo v2, "etags"

    invoke-direct {p0, v2, v1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    .end local v1    # "etags":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 622
    :catch_0
    move-exception v0

    .line 623
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "set etag"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected setForeground(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "state"    # Ljava/lang/Boolean;

    .prologue
    .line 418
    const-string/jumbo v0, "foreground"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 419
    return-void
.end method

.method protected setForegroundIssue(Ljava/lang/String;)V
    .locals 1
    .param p1, "issueId"    # Ljava/lang/String;

    .prologue
    .line 422
    const-string/jumbo v0, "foregroundIssue"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method protected setHideNameAndEmail(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/Boolean;

    .prologue
    .line 974
    const-string/jumbo v0, "hideNameAndEmail"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 975
    return-void
.end method

.method protected setIdentity(Ljava/lang/String;)V
    .locals 1
    .param p1, "identity"    # Ljava/lang/String;

    .prologue
    .line 254
    const-string/jumbo v0, "identity"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public setIsConversationShowing(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/Boolean;

    .prologue
    .line 907
    const-string/jumbo v0, "isConversationShowing"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 908
    return-void
.end method

.method protected setIssueCSatStates(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "states"    # Lorg/json/JSONObject;

    .prologue
    .line 948
    const-string/jumbo v0, "issueCSatStates"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 949
    return-void
.end method

.method protected setIssuesTs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "dateStr"    # Ljava/lang/String;
    .param p2, "profileId"    # Ljava/lang/String;

    .prologue
    .line 245
    :try_start_0
    const-string/jumbo v2, "issuesTs"

    invoke-direct {p0, v2}, Lcom/helpshift/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 246
    .local v0, "allIssuesTs":Lorg/json/JSONObject;
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string/jumbo v2, "issuesTs"

    invoke-direct {p0, v2, v0}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .end local v0    # "allIssuesTs":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v1

    .line 249
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "setIssuesTs"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected setLaunchReviewCounter(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 586
    const-string/jumbo v0, "launchReviewCounter"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 587
    return-void
.end method

.method protected setLibraryVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "libraryVersion"    # Ljava/lang/String;

    .prologue
    .line 426
    const-string/jumbo v0, "libraryVersion"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method protected setLoginIdentifier(Ljava/lang/String;)V
    .locals 1
    .param p1, "loginIdentifier"    # Ljava/lang/String;

    .prologue
    .line 1184
    const-string/jumbo v0, "loginIdentifier"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    return-void
.end method

.method protected setOpenConversations(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .param p1, "openConversationsList"    # Ljava/util/List;
    .param p2, "profileId"    # Ljava/lang/String;

    .prologue
    .line 448
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 450
    .local v2, "openConversations":Lorg/json/JSONArray;
    :try_start_0
    const-string/jumbo v3, "openConversations"

    invoke-direct {p0, v3}, Lcom/helpshift/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 451
    .local v0, "allOpenConversations":Lorg/json/JSONObject;
    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 452
    const-string/jumbo v3, "openConversations"

    invoke-direct {p0, v3, v0}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    .end local v0    # "allOpenConversations":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 453
    :catch_0
    move-exception v1

    .line 454
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "setOpenConversations"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRequireEmail(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/Boolean;

    .prologue
    .line 915
    const-string/jumbo v0, "requireEmail"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 916
    return-void
.end method

.method protected setReviewCounter(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 578
    const-string/jumbo v0, "reviewCounter"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 579
    return-void
.end method

.method protected setReviewed()V
    .locals 2

    .prologue
    .line 594
    const-string/jumbo v0, "reviewed"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 595
    return-void
.end method

.method public setScreenShotDraft(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/Boolean;

    .prologue
    .line 899
    const-string/jumbo v0, "screenShotDraft"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 900
    return-void
.end method

.method protected setSdkLanguage(Ljava/lang/String;)V
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 1248
    const-string/jumbo v0, "sdkLanguage"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    return-void
.end method

.method protected setSdkType(Ljava/lang/String;)V
    .locals 1
    .param p1, "sdkType"    # Ljava/lang/String;

    .prologue
    .line 434
    const-string/jumbo v0, "sdkType"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method protected setServerTimeDelta(Ljava/lang/Float;)V
    .locals 1
    .param p1, "delta"    # Ljava/lang/Float;

    .prologue
    .line 862
    const-string/jumbo v0, "serverTimeDelta"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/Float;)V

    .line 863
    return-void
.end method

.method protected setShowSearchOnNewConversation(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/Boolean;

    .prologue
    .line 990
    const-string/jumbo v0, "showSearchOnNewConversation"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 991
    return-void
.end method

.method protected setStoredFiles(Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "filenames"    # Lorg/json/JSONArray;

    .prologue
    .line 606
    const-string/jumbo v0, "cachedImages"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 607
    return-void
.end method

.method protected setUUID(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 870
    const-string/jumbo v0, "uuid"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    return-void
.end method

.method protected setUsername(Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 406
    const-string/jumbo v0, "username"

    invoke-direct {p0, v0, p1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method protected storeConversationDetail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "conversationText"    # Ljava/lang/String;
    .param p2, "identifier"    # Ljava/lang/String;

    .prologue
    .line 829
    :try_start_0
    const-string/jumbo v3, "allConversationDetails"

    invoke-direct {p0, v3}, Lcom/helpshift/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 830
    .local v0, "allConversationDetails":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 831
    .local v1, "conversationDetail":Lorg/json/JSONObject;
    const-string/jumbo v3, "conversationText"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 832
    const-string/jumbo v3, "conversationTextSetTime"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 833
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 834
    const-string/jumbo v3, "allConversationDetails"

    invoke-direct {p0, v3, v0}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    .end local v0    # "allConversationDetails":Lorg/json/JSONObject;
    .end local v1    # "conversationDetail":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 835
    :catch_0
    move-exception v2

    .line 836
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "storeConversationDetail"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected storeFailedApiCall(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "failedApiCall"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 801
    invoke-virtual {p0}, Lcom/helpshift/HSStorage;->getFailedApiCalls()Lorg/json/JSONObject;

    move-result-object v0

    .line 802
    .local v0, "failedApiCalls":Lorg/json/JSONObject;
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 803
    const-string/jumbo v1, "failedApiCalls"

    invoke-direct {p0, v1, v0}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 804
    return-void
.end method

.method protected storeFailedMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "issueId"    # Ljava/lang/String;
    .param p2, "messageText"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "refers"    # Ljava/lang/String;
    .param p5, "failedState"    # I
    .param p6, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 774
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 775
    .local v1, "now":Ljava/util/Date;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 776
    .local v0, "failedMessage":Lorg/json/JSONObject;
    const-string/jumbo v2, "issue_id"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 777
    const-string/jumbo v2, "body"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 778
    const-string/jumbo v2, "created_at"

    sget-object v3, Lcom/helpshift/util/HSFormat;->issueTsFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 779
    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 780
    const-string/jumbo v2, "state"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 781
    const-string/jumbo v2, "origin"

    const-string/jumbo v3, "mobile"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 782
    const-string/jumbo v2, "refers"

    invoke-virtual {v0, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 783
    const-string/jumbo v2, "id"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 784
    const-string/jumbo v2, "state"

    invoke-virtual {v0, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 785
    invoke-virtual {p0, v0, p6}, Lcom/helpshift/HSStorage;->storeFailedMessage(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 786
    return-void
.end method

.method protected storeFailedMessage(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1
    .param p1, "failedMessage"    # Lorg/json/JSONObject;
    .param p2, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 790
    invoke-direct {p0, p2}, Lcom/helpshift/HSStorage;->getFailedMessages(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 791
    .local v0, "failedMessages":Lorg/json/JSONArray;
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 792
    invoke-direct {p0, v0, p2}, Lcom/helpshift/HSStorage;->setFailedMessages(Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 793
    return-void
.end method

.method protected storeIndex(Ljava/util/HashMap;)V
    .locals 6
    .param p1, "fullIndex"    # Ljava/util/HashMap;

    .prologue
    .line 639
    sput-object p1, Lcom/helpshift/HSStorage;->cacheIndex:Ljava/util/HashMap;

    .line 641
    :try_start_0
    iget-object v3, p0, Lcom/helpshift/HSStorage;->context:Landroid/content/Context;

    const-string/jumbo v4, "fullIndex.db"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 642
    .local v1, "fStream":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 644
    .local v2, "oStream":Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 645
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 646
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 647
    invoke-virtual {p0}, Lcom/helpshift/HSStorage;->setDBFlag()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    .end local v1    # "fStream":Ljava/io/FileOutputStream;
    .end local v2    # "oStream":Ljava/io/ObjectOutputStream;
    :goto_0
    return-void

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "store index"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected storeIssues(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 1
    .param p1, "issues"    # Lorg/json/JSONArray;
    .param p2, "profileId"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-static {p2, p1}, Lcom/helpshift/util/IssuesUtil;->jsonArrayToIssueList(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/storage/IssuesDataSource;->storeIssues(Ljava/util/List;)I

    .line 168
    invoke-direct {p0, p2}, Lcom/helpshift/HSStorage;->updateOpenConversations(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0, p2}, Lcom/helpshift/HSStorage;->updateActiveConversation(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method protected storeReply(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "replyText"    # Ljava/lang/String;
    .param p2, "profileId"    # Ljava/lang/String;

    .prologue
    .line 808
    :try_start_0
    const-string/jumbo v2, "allReplyTexts"

    invoke-direct {p0, v2}, Lcom/helpshift/HSStorage;->storageGetObj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 809
    .local v0, "allReplyTexts":Lorg/json/JSONObject;
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 810
    const-string/jumbo v2, "allReplyTexts"

    invoke-direct {p0, v2, v0}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    .end local v0    # "allReplyTexts":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 811
    :catch_0
    move-exception v1

    .line 812
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "storeReply"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected unsetDBFlag()V
    .locals 2

    .prologue
    .line 681
    const-string/jumbo v0, "dbFlag"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 682
    return-void
.end method

.method protected updateActiveConversation(Ljava/lang/String;)V
    .locals 9
    .param p1, "profileId"    # Ljava/lang/String;

    .prologue
    .line 188
    sget-object v7, Lcom/helpshift/res/values/HSConfig;->configData:Ljava/util/Map;

    const-string/jumbo v8, "dia"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 189
    .local v0, "dia":Ljava/lang/Boolean;
    const-string/jumbo v7, ""

    invoke-virtual {p0, v7, p1}, Lcom/helpshift/HSStorage;->setActiveConversation(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_2

    .line 191
    invoke-static {p1}, Lcom/helpshift/storage/IssuesDataSource;->getIssues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 192
    .local v4, "issueList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/models/Issue;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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

    .line 193
    .local v2, "issue":Lcom/helpshift/models/Issue;
    invoke-virtual {v2}, Lcom/helpshift/models/Issue;->getIssueId()Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v3, "issueId":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/helpshift/models/Issue;->getStatus()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 195
    .local v6, "status":Ljava/lang/Integer;
    invoke-virtual {p0, p1}, Lcom/helpshift/HSStorage;->getOpenConversations(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 197
    .local v5, "openConversations":Ljava/util/List;
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 201
    :cond_1
    invoke-virtual {p0, v3, p1}, Lcom/helpshift/HSStorage;->setActiveConversation(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "issue":Lcom/helpshift/models/Issue;
    .end local v3    # "issueId":Ljava/lang/String;
    .end local v4    # "issueList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/models/Issue;>;"
    .end local v5    # "openConversations":Ljava/util/List;
    .end local v6    # "status":Ljava/lang/Integer;
    :cond_2
    return-void

    .line 205
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "issue":Lcom/helpshift/models/Issue;
    .restart local v3    # "issueId":Ljava/lang/String;
    .restart local v4    # "issueList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/models/Issue;>;"
    .restart local v5    # "openConversations":Ljava/util/List;
    .restart local v6    # "status":Ljava/lang/Integer;
    :cond_3
    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0, p1}, Lcom/helpshift/HSStorage;->getArchivedConversation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 207
    const-string/jumbo v7, ""

    invoke-virtual {p0, v7, p1}, Lcom/helpshift/HSStorage;->setArchivedConversation(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected updateBreadCrumbsLimit(Ljava/lang/Integer;)V
    .locals 8
    .param p1, "newLimit"    # Ljava/lang/Integer;

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/helpshift/HSStorage;->getBreadCrumbsLimit()Ljava/lang/Integer;

    move-result-object v1

    .line 543
    .local v1, "currentLimit":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v6, v7, :cond_1

    .line 545
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/HSStorage;->getBreadCrumbs()Lorg/json/JSONArray;

    move-result-object v0

    .line 546
    .local v0, "crumbsList":Lorg/json/JSONArray;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 547
    .local v5, "newArray":Lorg/json/JSONArray;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 549
    .local v2, "diff":Ljava/lang/Integer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 550
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 549
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 553
    :cond_0
    const-string/jumbo v6, "breadCrumbs"

    invoke-direct {p0, v6, v5}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    .end local v0    # "crumbsList":Lorg/json/JSONArray;
    .end local v2    # "diff":Ljava/lang/Integer;
    .end local v4    # "i":I
    .end local v5    # "newArray":Lorg/json/JSONArray;
    :cond_1
    :goto_1
    return-void

    .line 554
    :catch_0
    move-exception v3

    .line 555
    .local v3, "e":Lorg/json/JSONException;
    const-string/jumbo v6, "HelpShiftDebug"

    const-string/jumbo v7, "Error while updating breadcrumbs limit"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public updateDisableHelpshiftBranding()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1256
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1258
    .local v0, "brandingDisabledFromInstall":Ljava/lang/Boolean;
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/HSStorage;->getAppConfig()Lorg/json/JSONObject;

    move-result-object v2

    .line 1259
    .local v2, "config":Lorg/json/JSONObject;
    const-string/jumbo v4, "disableHelpshiftBranding"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1260
    const-string/jumbo v4, "disableHelpshiftBranding"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1266
    .end local v2    # "config":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1267
    .local v1, "brandingDisabledFromThemeData":Ljava/lang/Boolean;
    sget-object v4, Lcom/helpshift/res/values/HSConfig;->themeData:Ljava/util/Map;

    const-string/jumbo v7, "hl"

    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1268
    sget-object v4, Lcom/helpshift/res/values/HSConfig;->themeData:Ljava/util/Map;

    const-string/jumbo v7, "hl"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v7, "true"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v5

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1271
    :cond_1
    const-string/jumbo v4, "disableHelpshiftBranding"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    move v6, v5

    :cond_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/helpshift/HSStorage;->storageSet(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1273
    return-void

    .line 1262
    .end local v1    # "brandingDisabledFromThemeData":Ljava/lang/Boolean;
    :catch_0
    move-exception v3

    .line 1263
    .local v3, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "HelpShiftDebug"

    const-string/jumbo v7, "isHelpshiftBrandingDisabled"

    invoke-static {v4, v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v3    # "e":Lorg/json/JSONException;
    .restart local v1    # "brandingDisabledFromThemeData":Ljava/lang/Boolean;
    :cond_4
    move v4, v6

    .line 1268
    goto :goto_1
.end method
