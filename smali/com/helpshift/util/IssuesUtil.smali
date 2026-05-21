.class public Lcom/helpshift/util/IssuesUtil;
.super Ljava/lang/Object;
.source "IssuesUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HelpShiftDebug"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static jsonArrayToIssueList(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/List;
    .locals 6
    .param p0, "profileId"    # Ljava/lang/String;
    .param p1, "issues"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/models/Issue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v3, "issueList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/models/Issue;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 26
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 27
    .local v2, "issue":Lorg/json/JSONObject;
    invoke-static {p0, v2}, Lcom/helpshift/util/IssuesUtil;->jsonObjectToIssue(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/helpshift/models/Issue;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    .end local v2    # "issue":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "HelpShiftDebug"

    const-string/jumbo v5, "storeMessages"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    return-object v3
.end method

.method public static jsonArrayToMessageList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 6
    .param p0, "messages"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/models/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v3, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/models/Message;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 54
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 55
    .local v2, "message":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/helpshift/util/IssuesUtil;->jsonObjectToMessage(Lorg/json/JSONObject;)Lcom/helpshift/models/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v2    # "message":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "HelpShiftDebug"

    const-string/jumbo v5, "storeMessages"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    return-object v3
.end method

.method private static jsonObjectToIssue(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/helpshift/models/Issue;
    .locals 9
    .param p0, "profileId"    # Ljava/lang/String;
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/helpshift/models/IssueBuilder;

    const-string/jumbo v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "body"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "created_at"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v1, "updated_at"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v1, "status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v1, "show-agent-name"

    const/4 v8, 0x1

    invoke-virtual {p1, v1, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/helpshift/models/IssueBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 45
    .local v0, "issueBuilder":Lcom/helpshift/models/IssueBuilder;
    const-string/jumbo v1, "messages"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/helpshift/util/IssuesUtil;->jsonArrayToMessageList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/models/IssueBuilder;->setMessageList(Ljava/util/List;)Lcom/helpshift/models/IssueBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/models/IssueBuilder;->build()Lcom/helpshift/models/Issue;

    move-result-object v1

    return-object v1
.end method

.method private static jsonObjectToMessage(Lorg/json/JSONObject;)Lcom/helpshift/models/Message;
    .locals 9
    .param p0, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lcom/helpshift/models/MessageBuilder;

    const-string/jumbo v1, "issue_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "body"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "origin"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "type"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "created_at"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "author"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "meta"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/helpshift/models/MessageBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .local v0, "messageBuilder":Lcom/helpshift/models/MessageBuilder;
    const-string/jumbo v1, "screenshot"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/models/MessageBuilder;->setScreenshot(Ljava/lang/String;)Lcom/helpshift/models/MessageBuilder;

    move-result-object v1

    const-string/jumbo v2, "seen"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/helpshift/models/MessageBuilder;->setMessageSeen(Z)Lcom/helpshift/models/MessageBuilder;

    move-result-object v1

    const-string/jumbo v2, "invisible"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/helpshift/models/MessageBuilder;->setInvisible(Z)Lcom/helpshift/models/MessageBuilder;

    move-result-object v1

    const-string/jumbo v2, "inProgress"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/helpshift/models/MessageBuilder;->setInProgress(Z)Lcom/helpshift/models/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/models/MessageBuilder;->build()Lcom/helpshift/models/Message;

    move-result-object v1

    return-object v1
.end method

.method public static messageListToJSONArray(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/models/Message;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/models/Message;>;"
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 83
    .local v4, "messages":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/models/Message;

    .line 84
    .local v2, "message":Lcom/helpshift/models/Message;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 86
    .local v3, "messageObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v5, "issue_id"

    invoke-virtual {v2}, Lcom/helpshift/models/Message;->getIssueId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string/jumbo v5, "id"

    invoke-virtual {v2}, Lcom/helpshift/models/Message;->getMessageId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string/jumbo v5, "body"

    invoke-virtual {v2}, Lcom/helpshift/models/Message;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string/jumbo v5, "origin"

    invoke-virtual {v2}, Lcom/helpshift/models/Message;->getOrigin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string/jumbo v5, "type"

    invoke-virtual {v2}, Lcom/helpshift/models/Message;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string/jumbo v5, "created_at"

    invoke-virtual {v2}, Lcom/helpshift/models/Message;->getCreatedAt()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string/jumbo v5, "author"

    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lcom/helpshift/models/Message;->getAuthor()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string/jumbo v5, "meta"

    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lcom/helpshift/models/Message;->getMeta()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    const-string/jumbo v5, "screenshot"

    invoke-virtual {v2}, Lcom/helpshift/models/Message;->getScreenshot()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string/jumbo v5, "seen"

    invoke-virtual {v2}, Lcom/helpshift/models/Message;->isMessageSeen()Z

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 96
    const-string/jumbo v5, "invisible"

    invoke-virtual {v2}, Lcom/helpshift/models/Message;->isInvisible()Z

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 97
    const-string/jumbo v5, "inProgress"

    invoke-virtual {v2}, Lcom/helpshift/models/Message;->isInProgress()Z

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_1
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "HelpShiftDebug"

    const-string/jumbo v6, "messageListToJSONArray"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 103
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "message":Lcom/helpshift/models/Message;
    .end local v3    # "messageObject":Lorg/json/JSONObject;
    :cond_0
    return-object v4
.end method
