.class public Lcom/helpshift/storage/SectionsDataSource;
.super Ljava/lang/Object;
.source "SectionsDataSource.java"

# interfaces
.implements Lcom/helpshift/storage/SectionDAO;


# static fields
.field private static final TAG:Ljava/lang/String; = "HelpShiftDebug"


# instance fields
.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private final dbHelper:Lcom/helpshift/storage/FaqsDBHelper;

.field private faqDAO:Lcom/helpshift/storage/FaqDAO;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/helpshift/storage/FaqsDBHelper;->getInstance()Lcom/helpshift/storage/FaqsDBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/storage/SectionsDataSource;->dbHelper:Lcom/helpshift/storage/FaqsDBHelper;

    .line 30
    new-instance v0, Lcom/helpshift/storage/FaqsDataSource;

    invoke-direct {v0}, Lcom/helpshift/storage/FaqsDataSource;-><init>()V

    iput-object v0, p0, Lcom/helpshift/storage/SectionsDataSource;->faqDAO:Lcom/helpshift/storage/FaqDAO;

    .line 31
    return-void
.end method

.method private static cursorToSection(Landroid/database/Cursor;)Lcom/helpshift/Section;
    .locals 7
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 134
    new-instance v1, Lcom/helpshift/Section;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/helpshift/Section;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static sectionToContentValues(Lorg/json/JSONObject;)Landroid/content/ContentValues;
    .locals 3
    .param p0, "section"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 143
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "title"

    const-string/jumbo v2, "title"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string/jumbo v1, "publish_id"

    const-string/jumbo v2, "publish_id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string/jumbo v1, "section_id"

    const-string/jumbo v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-object v0
.end method


# virtual methods
.method public clearSectionsData()V
    .locals 3

    .prologue
    .line 125
    iget-object v1, p0, Lcom/helpshift/storage/SectionsDataSource;->dbHelper:Lcom/helpshift/storage/FaqsDBHelper;

    monitor-enter v1

    .line 126
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/storage/SectionsDataSource;->write()V

    .line 127
    iget-object v0, p0, Lcom/helpshift/storage/SectionsDataSource;->dbHelper:Lcom/helpshift/storage/FaqsDBHelper;

    iget-object v2, p0, Lcom/helpshift/storage/SectionsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v2}, Lcom/helpshift/storage/FaqsDBHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 128
    iget-object v0, p0, Lcom/helpshift/storage/SectionsDataSource;->dbHelper:Lcom/helpshift/storage/FaqsDBHelper;

    iget-object v2, p0, Lcom/helpshift/storage/SectionsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v2}, Lcom/helpshift/storage/FaqsDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 129
    invoke-virtual {p0}, Lcom/helpshift/storage/SectionsDataSource;->close()V

    .line 130
    monitor-exit v1

    .line 131
    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/helpshift/storage/SectionsDataSource;->dbHelper:Lcom/helpshift/storage/FaqsDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/storage/FaqsDBHelper;->close()V

    .line 43
    return-void
.end method

.method public getAllSections()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/Section;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v10, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/Section;>;"
    iget-object v11, p0, Lcom/helpshift/storage/SectionsDataSource;->dbHelper:Lcom/helpshift/storage/FaqsDBHelper;

    monitor-enter v11

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/storage/SectionsDataSource;->read()V

    .line 103
    iget-object v0, p0, Lcom/helpshift/storage/SectionsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "sections"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 110
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 111
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-static {v8}, Lcom/helpshift/storage/SectionsDataSource;->cursorToSection(Landroid/database/Cursor;)Lcom/helpshift/Section;

    move-result-object v9

    .line 113
    .local v9, "section":Lcom/helpshift/Section;
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 118
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "section":Lcom/helpshift/Section;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 116
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 117
    invoke-virtual {p0}, Lcom/helpshift/storage/SectionsDataSource;->close()V

    .line 118
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    return-object v10
.end method

.method public getSection(Ljava/lang/String;)Lcom/helpshift/Section;
    .locals 11
    .param p1, "publishId"    # Ljava/lang/String;

    .prologue
    .line 73
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    new-instance v9, Lcom/helpshift/Section;

    invoke-direct {v9}, Lcom/helpshift/Section;-><init>()V

    .line 95
    :goto_0
    return-object v9

    .line 77
    :cond_1
    const/4 v9, 0x0

    .line 78
    .local v9, "section":Lcom/helpshift/Section;
    iget-object v10, p0, Lcom/helpshift/storage/SectionsDataSource;->dbHelper:Lcom/helpshift/storage/FaqsDBHelper;

    monitor-enter v10

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/storage/SectionsDataSource;->read()V

    .line 80
    iget-object v0, p0, Lcom/helpshift/storage/SectionsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "sections"

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

    .line 87
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 88
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 89
    invoke-static {v8}, Lcom/helpshift/storage/SectionsDataSource;->cursorToSection(Landroid/database/Cursor;)Lcom/helpshift/Section;

    move-result-object v9

    .line 91
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 92
    invoke-virtual {p0}, Lcom/helpshift/storage/SectionsDataSource;->close()V

    .line 93
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

.method public read()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/helpshift/storage/SectionsDataSource;->dbHelper:Lcom/helpshift/storage/FaqsDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/storage/FaqsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/storage/SectionsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 39
    return-void
.end method

.method public storeSections(Lorg/json/JSONArray;)V
    .locals 10
    .param p1, "sections"    # Lorg/json/JSONArray;

    .prologue
    .line 47
    iget-object v6, p0, Lcom/helpshift/storage/SectionsDataSource;->dbHelper:Lcom/helpshift/storage/FaqsDBHelper;

    monitor-enter v6

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcom/helpshift/storage/SectionsDataSource;->write()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :try_start_1
    iget-object v5, p0, Lcom/helpshift/storage/SectionsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 51
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 52
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 53
    .local v3, "section":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/helpshift/storage/SectionsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v7, "sections"

    const/4 v8, 0x0

    invoke-static {v3}, Lcom/helpshift/storage/SectionsDataSource;->sectionToContentValues(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 55
    const-string/jumbo v5, "faqs"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 56
    .local v1, "faqs":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 57
    const-string/jumbo v5, "publish_id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, "sectionPublishId":Ljava/lang/String;
    iget-object v5, p0, Lcom/helpshift/storage/SectionsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v5, v4, v1}, Lcom/helpshift/storage/FaqsDataSource;->addFaqsUnsafe(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 51
    .end local v4    # "sectionPublishId":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    .end local v1    # "faqs":Lorg/json/JSONArray;
    .end local v3    # "section":Lorg/json/JSONObject;
    :cond_1
    iget-object v5, p0, Lcom/helpshift/storage/SectionsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    :try_start_2
    iget-object v5, p0, Lcom/helpshift/storage/SectionsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 67
    .end local v2    # "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/helpshift/storage/SectionsDataSource;->close()V

    .line 68
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Lorg/json/JSONException;
    :try_start_3
    const-string/jumbo v5, "HelpShiftDebug"

    const-string/jumbo v7, "JSONException"

    invoke-static {v5, v7, v0}, Lcom/helpshift/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 65
    :try_start_4
    iget-object v5, p0, Lcom/helpshift/storage/SectionsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 68
    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 65
    :catchall_1
    move-exception v5

    :try_start_5
    iget-object v7, p0, Lcom/helpshift/storage/SectionsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public write()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/helpshift/storage/SectionsDataSource;->dbHelper:Lcom/helpshift/storage/FaqsDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/storage/FaqsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/storage/SectionsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 35
    return-void
.end method
