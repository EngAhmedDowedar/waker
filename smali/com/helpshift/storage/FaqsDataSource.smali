.class public Lcom/helpshift/storage/FaqsDataSource;
.super Ljava/lang/Object;
.source "FaqsDataSource.java"

# interfaces
.implements Lcom/helpshift/storage/FaqDAO;


# static fields
.field private static final TAG:Ljava/lang/String; = "HelpShiftDebug"


# instance fields
.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private final dbHelper:Lcom/helpshift/storage/FaqsDBHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/helpshift/storage/FaqsDBHelper;->getInstance()Lcom/helpshift/storage/FaqsDBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/storage/FaqsDataSource;->dbHelper:Lcom/helpshift/storage/FaqsDBHelper;

    .line 31
    return-void
.end method

.method public static addFaqsUnsafe(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 6
    .param p0, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "sectionPublishId"    # Ljava/lang/String;
    .param p2, "faqs"    # Lorg/json/JSONArray;

    .prologue
    .line 183
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 184
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 185
    .local v1, "faq":Lorg/json/JSONObject;
    const-string/jumbo v3, "faqs"

    const/4 v4, 0x0

    invoke-static {p1, v1}, Lcom/helpshift/storage/FaqsDataSource;->faqToContentValues(Ljava/lang/String;Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local v1    # "faq":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "HelpShiftDebug"

    const-string/jumbo v4, "JSONException"

    invoke-static {v3, v4, v0}, Lcom/helpshift/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    return-void
.end method

.method private createFaq(Lcom/helpshift/Faq;)V
    .locals 5
    .param p1, "faq"    # Lcom/helpshift/Faq;

    .prologue
    .line 46
    invoke-static {p1}, Lcom/helpshift/storage/FaqsDataSource;->faqToContentValues(Lcom/helpshift/Faq;)Landroid/content/ContentValues;

    move-result-object v0

    .line 48
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/helpshift/storage/FaqsDataSource;->dbHelper:Lcom/helpshift/storage/FaqsDBHelper;

    monitor-enter v2

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/storage/FaqsDataSource;->write()V

    .line 50
    iget-object v1, p0, Lcom/helpshift/storage/FaqsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "faqs"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 51
    invoke-virtual {p0}, Lcom/helpshift/storage/FaqsDataSource;->close()V

    .line 52
    monitor-exit v2

    .line 53
    return-void

    .line 52
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static cursorToFaq(Landroid/database/Cursor;)Lcom/helpshift/Faq;
    .locals 12
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v10, 0x0

    const/4 v0, 0x1

    .line 193
    new-instance v1, Lcom/helpshift/Faq;

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x6

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v11, 0x7

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-ne v11, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/16 v0, 0x8

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/util/HSJSONUtils;->jsonToStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-direct/range {v1 .. v11}, Lcom/helpshift/Faq;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;Ljava/util/List;)V

    return-object v1

    :cond_0
    move v0, v10

    goto :goto_0
.end method

.method private static cursorToFaqForUI(Landroid/database/Cursor;)Lcom/helpshift/Faq;
    .locals 12
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v9, 0x0

    .line 205
    new-instance v1, Lcom/helpshift/Faq;

    const-wide/16 v2, 0x0

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-direct/range {v1 .. v11}, Lcom/helpshift/Faq;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;Ljava/util/List;)V

    return-object v1
.end method

.method private static faqToContentValues(Lcom/helpshift/Faq;)Landroid/content/ContentValues;
    .locals 4
    .param p0, "faq"    # Lcom/helpshift/Faq;

    .prologue
    .line 217
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 218
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "question_id"

    invoke-virtual {p0}, Lcom/helpshift/Faq;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string/jumbo v1, "publish_id"

    invoke-virtual {p0}, Lcom/helpshift/Faq;->getPublishId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string/jumbo v1, "section_id"

    invoke-virtual {p0}, Lcom/helpshift/Faq;->getSectionPublishId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string/jumbo v1, "title"

    invoke-virtual {p0}, Lcom/helpshift/Faq;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string/jumbo v1, "body"

    invoke-virtual {p0}, Lcom/helpshift/Faq;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string/jumbo v1, "helpful"

    invoke-virtual {p0}, Lcom/helpshift/Faq;->getIsHelpful()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 224
    const-string/jumbo v1, "rtl"

    invoke-virtual {p0}, Lcom/helpshift/Faq;->getIsRtl()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 225
    const-string/jumbo v1, "tags"

    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/helpshift/Faq;->getTags()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-object v0
.end method

.method private static faqToContentValues(Ljava/lang/String;Lorg/json/JSONObject;)Landroid/content/ContentValues;
    .locals 4
    .param p0, "sectionPublishId"    # Ljava/lang/String;
    .param p1, "faq"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 232
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 233
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "question_id"

    const-string/jumbo v2, "id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string/jumbo v1, "publish_id"

    const-string/jumbo v2, "publish_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string/jumbo v1, "section_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string/jumbo v1, "title"

    const-string/jumbo v2, "title"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string/jumbo v1, "body"

    const-string/jumbo v2, "body"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string/jumbo v1, "helpful"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 239
    const-string/jumbo v1, "rtl"

    const-string/jumbo v2, "is_rtl"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 240
    const-string/jumbo v2, "tags"

    const-string/jumbo v1, "stags"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "stags"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-object v0

    .line 240
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private updateFaq(Lcom/helpshift/Faq;)V
    .locals 8
    .param p1, "faq"    # Lcom/helpshift/Faq;

    .prologue
    .line 56
    invoke-static {p1}, Lcom/helpshift/storage/FaqsDataSource;->faqToContentValues(Lcom/helpshift/Faq;)Landroid/content/ContentValues;

    move-result-object v0

    .line 58
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/helpshift/storage/FaqsDataSource;->dbHelper:Lcom/helpshift/storage/FaqsDBHelper;

    monitor-enter v2

    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/storage/FaqsDataSource;->write()V

    .line 60
    iget-object v1, p0, Lcom/helpshift/storage/FaqsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "faqs"

    const-string/jumbo v4, "question_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/helpshift/Faq;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0}, Lcom/helpshift/storage/FaqsDataSource;->close()V

    .line 64
    monitor-exit v2

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addFaq(Lcom/helpshift/Faq;)V
    .locals 1
    .param p1, "faq"    # Lcom/helpshift/Faq;

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/helpshift/Faq;->getPublishId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helpshift/storage/FaqsDataSource;->getFaq(Ljava/lang/String;)Lcom/helpshift/Faq;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70
    invoke-direct {p0, p1}, Lcom/helpshift/storage/FaqsDataSource;->createFaq(Lcom/helpshift/Faq;)V

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-direct {p0, p1}, Lcom/helpshift/storage/FaqsDataSource;->updateFaq(Lcom/helpshift/Faq;)V

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/helpshift/storage/FaqsDataSource;->dbHelper:Lcom/helpshift/storage/FaqsDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/storage/FaqsDBHelper;->close()V

    .line 43
    return-void
.end method

.method public getFaq(Ljava/lang/String;)Lcom/helpshift/Faq;
    .locals 11
    .param p1, "publishId"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v9, Lcom/helpshift/Faq;

    invoke-direct {v9}, Lcom/helpshift/Faq;-><init>()V

    .line 97
    :goto_0
    return-object v9

    .line 82
    :cond_0
    const/4 v9, 0x0

    .line 84
    .local v9, "faq":Lcom/helpshift/Faq;
    iget-object v10, p0, Lcom/helpshift/storage/FaqsDataSource;->dbHelper:Lcom/helpshift/storage/FaqsDBHelper;

    monitor-enter v10

    .line 85
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/storage/FaqsDataSource;->read()V

    .line 86
    iget-object v0, p0, Lcom/helpshift/storage/FaqsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "faqs"

    const/4 v2, 0x0

    const-string/jumbo v3, "publish_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 90
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-static {v8}, Lcom/helpshift/storage/FaqsDataSource;->cursorToFaq(Landroid/database/Cursor;)Lcom/helpshift/Faq;

    move-result-object v9

    .line 93
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 94
    invoke-virtual {p0}, Lcom/helpshift/storage/FaqsDataSource;->close()V

    .line 95
    monitor-exit v10

    goto :goto_0

    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFaqsDataForSection(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "sectionPublishId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/Faq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 125
    :goto_0
    return-object v10

    .line 106
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v10, "faqs":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/Faq;>;"
    iget-object v11, p0, Lcom/helpshift/storage/FaqsDataSource;->dbHelper:Lcom/helpshift/storage/FaqsDBHelper;

    monitor-enter v11

    .line 109
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/storage/FaqsDataSource;->read()V

    .line 110
    iget-object v0, p0, Lcom/helpshift/storage/FaqsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "faqs"

    const/4 v2, 0x0

    const-string/jumbo v3, "section_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 114
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    invoke-static {v8}, Lcom/helpshift/storage/FaqsDataSource;->cursorToFaq(Landroid/database/Cursor;)Lcom/helpshift/Faq;

    move-result-object v9

    .line 117
    .local v9, "faq":Lcom/helpshift/Faq;
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 123
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "faq":Lcom/helpshift/Faq;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 121
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 122
    invoke-virtual {p0}, Lcom/helpshift/storage/FaqsDataSource;->close()V

    .line 123
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getFaqsForSection(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "sectionPublishId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/Faq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 154
    :goto_0
    return-object v10

    .line 134
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v10, "faqs":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/Faq;>;"
    iget-object v11, p0, Lcom/helpshift/storage/FaqsDataSource;->dbHelper:Lcom/helpshift/storage/FaqsDBHelper;

    monitor-enter v11

    .line 137
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/storage/FaqsDataSource;->read()V

    .line 138
    iget-object v0, p0, Lcom/helpshift/storage/FaqsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "faqs"

    sget-object v2, Lcom/helpshift/constants/FaqsColumns;->UI_COLUMNS:[Ljava/lang/String;

    const-string/jumbo v3, "section_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 143
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    invoke-static {v8}, Lcom/helpshift/storage/FaqsDataSource;->cursorToFaqForUI(Landroid/database/Cursor;)Lcom/helpshift/Faq;

    move-result-object v9

    .line 146
    .local v9, "faq":Lcom/helpshift/Faq;
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 152
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "faq":Lcom/helpshift/Faq;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 150
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 151
    invoke-virtual {p0}, Lcom/helpshift/storage/FaqsDataSource;->close()V

    .line 152
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public read()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/helpshift/storage/FaqsDataSource;->dbHelper:Lcom/helpshift/storage/FaqsDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/storage/FaqsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/storage/FaqsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 39
    return-void
.end method

.method public setIsHelpful(Ljava/lang/String;Ljava/lang/Boolean;)I
    .locals 9
    .param p1, "questionId"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x1

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "returnVal":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v0

    .line 176
    .end local v0    # "returnVal":I
    .local v1, "returnVal":I
    :goto_0
    return v1

    .line 164
    .end local v1    # "returnVal":I
    .restart local v0    # "returnVal":I
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 165
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "helpful"

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    iget-object v4, p0, Lcom/helpshift/storage/FaqsDataSource;->dbHelper:Lcom/helpshift/storage/FaqsDBHelper;

    monitor-enter v4

    .line 168
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/storage/FaqsDataSource;->write()V

    .line 169
    iget-object v3, p0, Lcom/helpshift/storage/FaqsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "faqs"

    const-string/jumbo v6, "question_id = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v3, v5, v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 173
    invoke-virtual {p0}, Lcom/helpshift/storage/FaqsDataSource;->close()V

    .line 174
    monitor-exit v4

    move v1, v0

    .line 176
    .end local v0    # "returnVal":I
    .restart local v1    # "returnVal":I
    goto :goto_0

    .line 165
    .end local v1    # "returnVal":I
    .restart local v0    # "returnVal":I
    :cond_1
    const/4 v3, -0x1

    goto :goto_1

    .line 174
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public write()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/helpshift/storage/FaqsDataSource;->dbHelper:Lcom/helpshift/storage/FaqsDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/storage/FaqsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/storage/FaqsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 35
    return-void
.end method
