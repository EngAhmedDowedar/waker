.class public Lcom/helpshift/storage/IssuesDataSource;
.super Ljava/lang/Object;
.source "IssuesDataSource.java"


# static fields
.field private static database:Landroid/database/sqlite/SQLiteDatabase;

.field private static final helper:Lcom/helpshift/storage/IssuesDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/helpshift/storage/IssuesDBHelper;

    invoke-static {}, Lcom/helpshift/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/helpshift/storage/IssuesDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/helpshift/storage/IssuesDataSource;->helper:Lcom/helpshift/storage/IssuesDBHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static close()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/helpshift/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 37
    return-void
.end method

.method public static createDB()V
    .locals 2

    .prologue
    .line 40
    sget-object v1, Lcom/helpshift/storage/IssuesDataSource;->helper:Lcom/helpshift/storage/IssuesDBHelper;

    monitor-enter v1

    .line 41
    :try_start_0
    invoke-static {}, Lcom/helpshift/storage/IssuesDataSource;->read()V

    .line 42
    invoke-static {}, Lcom/helpshift/storage/IssuesDataSource;->close()V

    .line 43
    monitor-exit v1

    .line 44
    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static cursorToIssue(Landroid/database/Cursor;)Lcom/helpshift/models/Issue;
    .locals 12
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v8, 0x1

    .line 158
    const-string/jumbo v11, "profile_id"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "profileId":Ljava/lang/String;
    const-string/jumbo v11, "issue_id"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "issueId":Ljava/lang/String;
    const-string/jumbo v11, "body"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "body":Ljava/lang/String;
    const-string/jumbo v11, "title"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, "title":Ljava/lang/String;
    const-string/jumbo v11, "created_at"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 163
    .local v5, "createdAt":Ljava/lang/String;
    const-string/jumbo v11, "updated_at"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 164
    .local v6, "updatedAt":Ljava/lang/String;
    const-string/jumbo v11, "status"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 165
    .local v7, "status":I
    const-string/jumbo v11, "new_message_count"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 166
    .local v9, "newMessageCount":I
    const-string/jumbo v11, "show_agent_name"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 168
    .local v10, "showAgentName":I
    new-instance v0, Lcom/helpshift/models/IssueBuilder;

    if-ne v10, v8, :cond_0

    :goto_0
    invoke-direct/range {v0 .. v8}, Lcom/helpshift/models/IssueBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 176
    .local v0, "issueBuilder":Lcom/helpshift/models/IssueBuilder;
    invoke-virtual {v0, v9}, Lcom/helpshift/models/IssueBuilder;->setNewMessagesCount(I)Lcom/helpshift/models/IssueBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/helpshift/models/IssueBuilder;->build()Lcom/helpshift/models/Issue;

    move-result-object v8

    return-object v8

    .line 168
    .end local v0    # "issueBuilder":Lcom/helpshift/models/IssueBuilder;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private static cursorToMessage(Landroid/database/Cursor;)Lcom/helpshift/models/Message;
    .locals 15
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 324
    const-string/jumbo v13, "issue_id"

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "issueId":Ljava/lang/String;
    const-string/jumbo v13, "message_id"

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, "messageId":Ljava/lang/String;
    const-string/jumbo v13, "body"

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, "body":Ljava/lang/String;
    const-string/jumbo v13, "origin"

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 328
    .local v4, "origin":Ljava/lang/String;
    const-string/jumbo v13, "type"

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 329
    .local v5, "type":Ljava/lang/String;
    const-string/jumbo v13, "created_at"

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 330
    .local v6, "createdAt":Ljava/lang/String;
    const-string/jumbo v13, "author"

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 331
    .local v7, "author":Ljava/lang/String;
    const-string/jumbo v13, "meta"

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 332
    .local v8, "meta":Ljava/lang/String;
    const-string/jumbo v13, "screenshot"

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 333
    .local v12, "screenshot":Ljava/lang/String;
    const-string/jumbo v13, "message_seen"

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 334
    .local v11, "messageSeen":I
    const-string/jumbo v13, "invisible"

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 335
    .local v10, "invisible":I
    const-string/jumbo v13, "in_progress"

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 337
    .local v9, "inProgress":I
    new-instance v0, Lcom/helpshift/models/MessageBuilder;

    invoke-direct/range {v0 .. v8}, Lcom/helpshift/models/MessageBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .local v0, "messageBuilder":Lcom/helpshift/models/MessageBuilder;
    invoke-virtual {v0, v12}, Lcom/helpshift/models/MessageBuilder;->setScreenshot(Ljava/lang/String;)Lcom/helpshift/models/MessageBuilder;

    move-result-object v14

    const/4 v13, 0x1

    if-ne v11, v13, :cond_0

    const/4 v13, 0x1

    :goto_0
    invoke-virtual {v14, v13}, Lcom/helpshift/models/MessageBuilder;->setMessageSeen(Z)Lcom/helpshift/models/MessageBuilder;

    move-result-object v14

    const/4 v13, 0x1

    if-ne v10, v13, :cond_1

    const/4 v13, 0x1

    :goto_1
    invoke-virtual {v14, v13}, Lcom/helpshift/models/MessageBuilder;->setInvisible(Z)Lcom/helpshift/models/MessageBuilder;

    move-result-object v14

    const/4 v13, 0x1

    if-ne v9, v13, :cond_2

    const/4 v13, 0x1

    :goto_2
    invoke-virtual {v14, v13}, Lcom/helpshift/models/MessageBuilder;->setInProgress(Z)Lcom/helpshift/models/MessageBuilder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/helpshift/models/MessageBuilder;->build()Lcom/helpshift/models/Message;

    move-result-object v13

    return-object v13

    :cond_0
    const/4 v13, 0x0

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    goto :goto_2
.end method

.method public static deleteMessage(Ljava/lang/String;)V
    .locals 6
    .param p0, "messageId"    # Ljava/lang/String;

    .prologue
    .line 316
    sget-object v1, Lcom/helpshift/storage/IssuesDataSource;->helper:Lcom/helpshift/storage/IssuesDBHelper;

    monitor-enter v1

    .line 317
    :try_start_0
    invoke-static {}, Lcom/helpshift/storage/IssuesDataSource;->write()V

    .line 318
    sget-object v0, Lcom/helpshift/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "messages"

    const-string/jumbo v3, "message_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 319
    invoke-static {}, Lcom/helpshift/storage/IssuesDataSource;->close()V

    .line 320
    monitor-exit v1

    .line 321
    return-void

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getCurrentNewMessagesCount(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .param p0, "whereClause"    # Ljava/lang/String;
    .param p1, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 87
    const/4 v8, 0x0

    .line 88
    .local v8, "currentNewMessagesCount":I
    sget-object v0, Lcom/helpshift/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "issues"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "new_message_count"

    aput-object v4, v2, v3

    move-object v3, p0

    move-object v4, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 91
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string/jumbo v0, "new_message_count"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 94
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 95
    return v8
.end method

.method public static getIssue(Ljava/lang/String;)Lcom/helpshift/models/Issue;
    .locals 11
    .param p0, "issueId"    # Ljava/lang/String;

    .prologue
    .line 113
    const/4 v9, 0x0

    .line 114
    .local v9, "issue":Lcom/helpshift/models/Issue;
    sget-object v10, Lcom/helpshift/storage/IssuesDataSource;->helper:Lcom/helpshift/storage/IssuesDBHelper;

    monitor-enter v10

    .line 115
    :try_start_0
    invoke-static {}, Lcom/helpshift/storage/IssuesDataSource;->read()V

    .line 116
    sget-object v0, Lcom/helpshift/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "issues"

    const/4 v2, 0x0

    const-string/jumbo v3, "issue_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 119
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-static {v8}, Lcom/helpshift/storage/IssuesDataSource;->cursorToIssue(Landroid/database/Cursor;)Lcom/helpshift/models/Issue;

    move-result-object v9

    .line 122
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 123
    invoke-static {}, Lcom/helpshift/storage/IssuesDataSource;->close()V

    .line 124
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    if-eqz v9, :cond_1

    .line 127
    invoke-virtual {v9}, Lcom/helpshift/models/Issue;->getMessageList()Ljava/util/List;

    .line 130
    :cond_1
    return-object v9

    .line 124
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getIssues(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p0, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/models/Issue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v9, "issueList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/models/Issue;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    :goto_0
    return-object v9

    .line 140
    :cond_0
    sget-object v10, Lcom/helpshift/storage/IssuesDataSource;->helper:Lcom/helpshift/storage/IssuesDBHelper;

    monitor-enter v10

    .line 141
    :try_start_0
    invoke-static {}, Lcom/helpshift/storage/IssuesDataSource;->read()V

    .line 142
    sget-object v0, Lcom/helpshift/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "issues"

    const/4 v2, 0x0

    const-string/jumbo v3, "profile_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 145
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    invoke-static {v8}, Lcom/helpshift/storage/IssuesDataSource;->cursorToIssue(Landroid/database/Cursor;)Lcom/helpshift/models/Issue;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 153
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 151
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 152
    invoke-static {}, Lcom/helpshift/storage/IssuesDataSource;->close()V

    .line 153
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static getMessage(Ljava/lang/String;)Lcom/helpshift/models/Message;
    .locals 11
    .param p0, "messageId"    # Ljava/lang/String;

    .prologue
    .line 300
    const/4 v9, 0x0

    .line 301
    .local v9, "message":Lcom/helpshift/models/Message;
    sget-object v10, Lcom/helpshift/storage/IssuesDataSource;->helper:Lcom/helpshift/storage/IssuesDBHelper;

    monitor-enter v10

    .line 302
    :try_start_0
    invoke-static {}, Lcom/helpshift/storage/IssuesDataSource;->read()V

    .line 303
    sget-object v0, Lcom/helpshift/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "messages"

    const/4 v2, 0x0

    const-string/jumbo v3, "message_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 306
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-static {v8}, Lcom/helpshift/storage/IssuesDataSource;->cursorToMessage(Landroid/database/Cursor;)Lcom/helpshift/models/Message;

    move-result-object v9

    .line 309
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 310
    invoke-static {}, Lcom/helpshift/storage/IssuesDataSource;->close()V

    .line 311
    monitor-exit v10

    .line 312
    return-object v9

    .line 311
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getMessages(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "issueId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/models/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "issue_id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/helpshift/storage/IssuesDataSource;->getMessages(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private static getMessages(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p0, "whereClause"    # Ljava/lang/String;
    .param p1, "whereArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/models/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v9, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/models/Message;>;"
    sget-object v10, Lcom/helpshift/storage/IssuesDataSource;->helper:Lcom/helpshift/storage/IssuesDBHelper;

    monitor-enter v10

    .line 283
    :try_start_0
    invoke-static {}, Lcom/helpshift/storage/IssuesDataSource;->read()V

    .line 284
    sget-object v0, Lcom/helpshift/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "messages"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 287
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    invoke-static {v8}, Lcom/helpshift/storage/IssuesDataSource;->cursorToMessage(Landroid/database/Cursor;)Lcom/helpshift/models/Message;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 295
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 293
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 294
    invoke-static {}, Lcom/helpshift/storage/IssuesDataSource;->close()V

    .line 295
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    return-object v9
.end method

.method public static getUnseenMessages(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "issueId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/models/Message;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 266
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 277
    :goto_0
    return-object v2

    .line 270
    :cond_0
    const-string/jumbo v1, "issue_id=? AND message_seen=? AND origin=?"

    .line 275
    .local v1, "whereClause":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    aput-object p0, v0, v3

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "admin"

    aput-object v3, v0, v2

    .line 277
    .local v0, "whereArgs":[Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/helpshift/storage/IssuesDataSource;->getMessages(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method private static insertMessageUnsafe(Lcom/helpshift/models/Message;)I
    .locals 8
    .param p0, "message"    # Lcom/helpshift/models/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 226
    const-string/jumbo v1, "message_id=?"

    .line 227
    .local v1, "whereClause":Ljava/lang/String;
    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/helpshift/models/Message;->getMessageId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 228
    .local v0, "whereArgs":[Ljava/lang/String;
    sget-object v4, Lcom/helpshift/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "messages"

    invoke-static {v4, v5, v1, v0}, Lcom/helpshift/util/DatabaseUtils;->exists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 230
    sget-object v2, Lcom/helpshift/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "messages"

    invoke-static {p0}, Lcom/helpshift/storage/IssuesDataSource;->messageToContentValues(Lcom/helpshift/models/Message;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    move v2, v3

    .line 237
    :goto_0
    return v2

    .line 232
    :cond_1
    sget-object v4, Lcom/helpshift/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "messages"

    const/4 v6, 0x0

    invoke-static {p0}, Lcom/helpshift/storage/IssuesDataSource;->messageToContentValues(Lcom/helpshift/models/Message;)Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 233
    invoke-virtual {p0}, Lcom/helpshift/models/Message;->getOrigin()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "admin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0
.end method

.method private static insertMessagesUnsafe(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/models/Message;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/models/Message;>;"
    const/4 v2, 0x0

    .line 212
    .local v2, "newMessagesCount":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/models/Message;

    .line 213
    .local v1, "message":Lcom/helpshift/models/Message;
    invoke-static {v1}, Lcom/helpshift/storage/IssuesDataSource;->insertMessageUnsafe(Lcom/helpshift/models/Message;)I

    move-result v3

    add-int/2addr v2, v3

    .line 214
    goto :goto_0

    .line 215
    .end local v1    # "message":Lcom/helpshift/models/Message;
    :cond_0
    return v2
.end method

.method private static issueToContentValue(Lcom/helpshift/models/Issue;I)Landroid/content/ContentValues;
    .locals 3
    .param p0, "issue"    # Lcom/helpshift/models/Issue;
    .param p1, "newMessagesCount"    # I

    .prologue
    .line 99
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 100
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "profile_id"

    invoke-virtual {p0}, Lcom/helpshift/models/Issue;->getProfileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string/jumbo v1, "issue_id"

    invoke-virtual {p0}, Lcom/helpshift/models/Issue;->getIssueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string/jumbo v1, "body"

    invoke-virtual {p0}, Lcom/helpshift/models/Issue;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string/jumbo v1, "title"

    invoke-virtual {p0}, Lcom/helpshift/models/Issue;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string/jumbo v1, "created_at"

    invoke-virtual {p0}, Lcom/helpshift/models/Issue;->getCreatedAt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string/jumbo v1, "updated_at"

    invoke-virtual {p0}, Lcom/helpshift/models/Issue;->getUpdatedAt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string/jumbo v1, "status"

    invoke-virtual {p0}, Lcom/helpshift/models/Issue;->getStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    const-string/jumbo v1, "new_message_count"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string/jumbo v2, "show_agent_name"

    invoke-virtual {p0}, Lcom/helpshift/models/Issue;->isShowAgentName()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    return-object v0

    .line 108
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static messageToContentValues(Lcom/helpshift/models/Message;)Landroid/content/ContentValues;
    .locals 5
    .param p0, "message"    # Lcom/helpshift/models/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 241
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 242
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "issue_id"

    invoke-virtual {p0}, Lcom/helpshift/models/Message;->getIssueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string/jumbo v1, "message_id"

    invoke-virtual {p0}, Lcom/helpshift/models/Message;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string/jumbo v1, "body"

    invoke-virtual {p0}, Lcom/helpshift/models/Message;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string/jumbo v1, "origin"

    invoke-virtual {p0}, Lcom/helpshift/models/Message;->getOrigin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string/jumbo v1, "type"

    invoke-virtual {p0}, Lcom/helpshift/models/Message;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string/jumbo v1, "created_at"

    invoke-virtual {p0}, Lcom/helpshift/models/Message;->getCreatedAt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string/jumbo v1, "author"

    invoke-virtual {p0}, Lcom/helpshift/models/Message;->getAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string/jumbo v1, "meta"

    invoke-virtual {p0}, Lcom/helpshift/models/Message;->getMeta()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string/jumbo v1, "screenshot"

    invoke-virtual {p0}, Lcom/helpshift/models/Message;->getScreenshot()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string/jumbo v4, "message_seen"

    invoke-virtual {p0}, Lcom/helpshift/models/Message;->isMessageSeen()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 252
    const-string/jumbo v4, "invisible"

    invoke-virtual {p0}, Lcom/helpshift/models/Message;->isInvisible()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 253
    const-string/jumbo v1, "in_progress"

    invoke-virtual {p0}, Lcom/helpshift/models/Message;->isInProgress()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 254
    return-object v0

    :cond_0
    move v1, v3

    .line 251
    goto :goto_0

    :cond_1
    move v1, v3

    .line 252
    goto :goto_1

    :cond_2
    move v2, v3

    .line 253
    goto :goto_2
.end method

.method private static read()V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/helpshift/storage/IssuesDataSource;->helper:Lcom/helpshift/storage/IssuesDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/storage/IssuesDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/helpshift/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 33
    return-void
.end method

.method public static storeIssue(Lcom/helpshift/models/Issue;)I
    .locals 2
    .param p0, "issue"    # Lcom/helpshift/models/Issue;

    .prologue
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v0, "issueList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/models/Issue;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-static {v0}, Lcom/helpshift/storage/IssuesDataSource;->storeIssues(Ljava/util/List;)I

    move-result v1

    return v1
.end method

.method public static storeIssues(Ljava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/models/Issue;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "issueList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/models/Issue;>;"
    const/4 v2, 0x0

    .line 55
    .local v2, "newIssuesCount":I
    invoke-static {p0}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v3, v2

    .line 83
    .end local v2    # "newIssuesCount":I
    .local v3, "newIssuesCount":I
    :goto_0
    return v3

    .line 59
    .end local v3    # "newIssuesCount":I
    .restart local v2    # "newIssuesCount":I
    :cond_0
    sget-object v8, Lcom/helpshift/storage/IssuesDataSource;->helper:Lcom/helpshift/storage/IssuesDBHelper;

    monitor-enter v8

    .line 60
    :try_start_0
    invoke-static {}, Lcom/helpshift/storage/IssuesDataSource;->write()V

    .line 61
    sget-object v7, Lcom/helpshift/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 62
    const-string/jumbo v6, "issue_id=?"

    .line 63
    .local v6, "whereClause":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/models/Issue;

    .line 64
    .local v1, "issue":Lcom/helpshift/models/Issue;
    invoke-virtual {v1}, Lcom/helpshift/models/Issue;->getMessageList()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/helpshift/storage/IssuesDataSource;->insertMessagesUnsafe(Ljava/util/List;)I

    move-result v4

    .line 65
    .local v4, "newMessagesCount":I
    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v1}, Lcom/helpshift/models/Issue;->getIssueId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v7

    .line 66
    .local v5, "whereArgs":[Ljava/lang/String;
    sget-object v7, Lcom/helpshift/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v9, "issues"

    invoke-static {v7, v9, v6, v5}, Lcom/helpshift/util/DatabaseUtils;->exists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 68
    invoke-virtual {v1}, Lcom/helpshift/models/Issue;->getNewMessagesCount()I

    move-result v7

    const/4 v9, -0x1

    if-eq v7, v9, :cond_1

    .line 69
    invoke-static {v6, v5}, Lcom/helpshift/storage/IssuesDataSource;->getCurrentNewMessagesCount(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    add-int/2addr v4, v7

    .line 71
    :cond_1
    sget-object v7, Lcom/helpshift/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v9, "issues"

    invoke-static {v1, v4}, Lcom/helpshift/storage/IssuesDataSource;->issueToContentValue(Lcom/helpshift/models/Issue;I)Landroid/content/ContentValues;

    move-result-object v10

    invoke-virtual {v7, v9, v10, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 81
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "issue":Lcom/helpshift/models/Issue;
    .end local v4    # "newMessagesCount":I
    .end local v5    # "whereArgs":[Ljava/lang/String;
    .end local v6    # "whereClause":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 74
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "issue":Lcom/helpshift/models/Issue;
    .restart local v4    # "newMessagesCount":I
    .restart local v5    # "whereArgs":[Ljava/lang/String;
    .restart local v6    # "whereClause":Ljava/lang/String;
    :cond_2
    :try_start_1
    sget-object v7, Lcom/helpshift/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v9, "issues"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v1, v11}, Lcom/helpshift/storage/IssuesDataSource;->issueToContentValue(Lcom/helpshift/models/Issue;I)Landroid/content/ContentValues;

    move-result-object v11

    invoke-virtual {v7, v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 78
    .end local v1    # "issue":Lcom/helpshift/models/Issue;
    .end local v4    # "newMessagesCount":I
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_3
    sget-object v7, Lcom/helpshift/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 79
    sget-object v7, Lcom/helpshift/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 80
    invoke-static {}, Lcom/helpshift/storage/IssuesDataSource;->close()V

    .line 81
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v2

    .line 83
    .end local v2    # "newIssuesCount":I
    .restart local v3    # "newIssuesCount":I
    goto :goto_0
.end method

.method public static storeMessage(Lcom/helpshift/models/Message;)I
    .locals 3
    .param p0, "message"    # Lcom/helpshift/models/Message;

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "newMessageCount":I
    sget-object v2, Lcom/helpshift/storage/IssuesDataSource;->helper:Lcom/helpshift/storage/IssuesDBHelper;

    monitor-enter v2

    .line 203
    :try_start_0
    invoke-static {}, Lcom/helpshift/storage/IssuesDataSource;->write()V

    .line 204
    invoke-static {p0}, Lcom/helpshift/storage/IssuesDataSource;->insertMessageUnsafe(Lcom/helpshift/models/Message;)I

    move-result v1

    add-int/2addr v0, v1

    .line 205
    invoke-static {}, Lcom/helpshift/storage/IssuesDataSource;->close()V

    .line 206
    monitor-exit v2

    .line 207
    return v0

    .line 206
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static storeMessages(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/models/Message;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/models/Message;>;"
    const/4 v0, 0x0

    .line 184
    .local v0, "newMessagesCount":I
    invoke-static {p0}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    .line 197
    .end local v0    # "newMessagesCount":I
    .local v1, "newMessagesCount":I
    :goto_0
    return v1

    .line 188
    .end local v1    # "newMessagesCount":I
    .restart local v0    # "newMessagesCount":I
    :cond_0
    sget-object v3, Lcom/helpshift/storage/IssuesDataSource;->helper:Lcom/helpshift/storage/IssuesDBHelper;

    monitor-enter v3

    .line 189
    :try_start_0
    invoke-static {}, Lcom/helpshift/storage/IssuesDataSource;->write()V

    .line 190
    sget-object v2, Lcom/helpshift/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 191
    invoke-static {p0}, Lcom/helpshift/storage/IssuesDataSource;->insertMessagesUnsafe(Ljava/util/List;)I

    move-result v0

    .line 192
    sget-object v2, Lcom/helpshift/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 193
    sget-object v2, Lcom/helpshift/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 194
    invoke-static {}, Lcom/helpshift/storage/IssuesDataSource;->close()V

    .line 195
    monitor-exit v3

    move v1, v0

    .line 197
    .end local v0    # "newMessagesCount":I
    .restart local v1    # "newMessagesCount":I
    goto :goto_0

    .line 195
    .end local v1    # "newMessagesCount":I
    .restart local v0    # "newMessagesCount":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static write()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/helpshift/storage/IssuesDataSource;->helper:Lcom/helpshift/storage/IssuesDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/storage/IssuesDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/helpshift/storage/IssuesDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 29
    return-void
.end method
