.class public Lcom/google/ads/conversiontracking/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/conversiontracking/f$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/ads/conversiontracking/f$a;

.field private final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 44
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS %s ( %s INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, %s TEXT NOT NULL, %s TEXT, %s INTEGER, %s INTEGER, %s TEXT, %s INTEGER, %s INTEGER,%s INTEGER);"

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "conversiontracking"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "conversion_ping_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "string_url"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "preference_key"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "is_repeatable"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "parameter_is_null"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "preference_name"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "record_time"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "retry_count"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "last_retry_time"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/ads/conversiontracking/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/conversiontracking/f;->c:Ljava/lang/Object;

    .line 71
    new-instance v0, Lcom/google/ads/conversiontracking/f$a;

    const-string/jumbo v1, "google_conversion_tracking.db"

    invoke-direct {v0, p0, p1, v1}, Lcom/google/ads/conversiontracking/f$a;-><init>(Lcom/google/ads/conversiontracking/f;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/ads/conversiontracking/f;->b:Lcom/google/ads/conversiontracking/f$a;

    .line 72
    return-void
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/ads/conversiontracking/f;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 100
    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/conversiontracking/f;->b:Lcom/google/ads/conversiontracking/f$a;

    invoke-virtual {v0}, Lcom/google/ads/conversiontracking/f$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    const-string/jumbo v0, "GoogleConversionReporter"

    const-string/jumbo v1, "Error opening writable conversion tracking database"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/database/Cursor;)Lcom/google/ads/conversiontracking/d;
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 302
    if-nez p1, :cond_0

    .line 303
    const/4 v0, 0x0

    .line 327
    :goto_0
    return-object v0

    .line 310
    :cond_0
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 311
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 312
    if-lez v10, :cond_1

    .line 313
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "retry"

    .line 315
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 320
    :cond_1
    new-instance v0, Lcom/google/ads/conversiontracking/d;

    .line 321
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v4, 0x2

    .line 323
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    .line 324
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-lez v5, :cond_2

    move v5, v6

    :goto_1
    const/4 v8, 0x4

    .line 325
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-lez v8, :cond_3

    :goto_2
    const/4 v7, 0x5

    .line 326
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    .line 327
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-direct/range {v0 .. v10}, Lcom/google/ads/conversiontracking/d;-><init>(JLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;JI)V

    goto :goto_0

    :cond_2
    move v5, v7

    .line 324
    goto :goto_1

    :cond_3
    move v6, v7

    .line 325
    goto :goto_2
.end method

.method public a(J)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/conversiontracking/d;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 115
    iget-object v11, p0, Lcom/google/ads/conversiontracking/f;->c:Ljava/lang/Object;

    monitor-enter v11

    .line 116
    :try_start_0
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 117
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 118
    monitor-exit v11

    move-object v0, v9

    .line 147
    :goto_0
    return-object v0

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/conversiontracking/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 121
    if-nez v0, :cond_1

    .line 122
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v9

    goto :goto_0

    .line 126
    :cond_1
    :try_start_1
    const-string/jumbo v7, "last_retry_time ASC"

    .line 127
    const-string/jumbo v1, "conversiontracking"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 134
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 127
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v1

    .line 135
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/ads/conversiontracking/f;->a(Landroid/database/Cursor;)Lcom/google/ads/conversiontracking/d;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    .line 143
    :cond_3
    if-eqz v1, :cond_4

    .line 144
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_4
    :goto_1
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v9

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    move-object v1, v10

    .line 141
    :goto_2
    :try_start_4
    const-string/jumbo v2, "GoogleConversionReporter"

    const-string/jumbo v3, "Error extracing ping Info: "

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 143
    if-eqz v1, :cond_4

    .line 144
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 141
    :cond_5
    :try_start_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 143
    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v1, :cond_6

    .line 144
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 143
    :catchall_2
    move-exception v0

    move-object v1, v10

    goto :goto_4

    .line 140
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public a(Lcom/google/ads/conversiontracking/d;)V
    .locals 8

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 94
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/google/ads/conversiontracking/f;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/conversiontracking/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 84
    if-nez v0, :cond_1

    .line 85
    monitor-exit v1

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 87
    :cond_1
    :try_start_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "%s = %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "conversion_ping_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, p1, Lcom/google/ads/conversiontracking/d;->h:J

    .line 91
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 87
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 92
    const-string/jumbo v3, "conversiontracking"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 93
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public b()V
    .locals 10

    .prologue
    .line 189
    iget-object v1, p0, Lcom/google/ads/conversiontracking/f;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/conversiontracking/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 191
    if-nez v0, :cond_0

    .line 192
    monitor-exit v1

    .line 204
    :goto_0
    return-void

    .line 194
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "(%s > %d) or (%s < %d and %s > 0)"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "retry_count"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x2328

    .line 198
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "record_time"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 200
    invoke-static {}, Lcom/google/ads/conversiontracking/g;->a()J

    move-result-wide v6

    const-wide/32 v8, 0x2932e00

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "retry_count"

    aput-object v6, v4, v5

    .line 194
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 202
    const-string/jumbo v3, "conversiontracking"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 203
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/google/ads/conversiontracking/d;)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 157
    if-nez p1, :cond_0

    .line 180
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v3, p0, Lcom/google/ads/conversiontracking/f;->c:Ljava/lang/Object;

    monitor-enter v3

    .line 161
    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/conversiontracking/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 162
    if-nez v4, :cond_1

    .line 163
    monitor-exit v3

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 165
    :cond_1
    :try_start_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 166
    const-string/jumbo v2, "string_url"

    iget-object v6, p1, Lcom/google/ads/conversiontracking/d;->g:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string/jumbo v2, "preference_key"

    iget-object v6, p1, Lcom/google/ads/conversiontracking/d;->f:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string/jumbo v6, "is_repeatable"

    iget-boolean v2, p1, Lcom/google/ads/conversiontracking/d;->b:Z

    if-eqz v2, :cond_3

    move v2, v0

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    const-string/jumbo v2, "parameter_is_null"

    iget-boolean v6, p1, Lcom/google/ads/conversiontracking/d;->a:Z

    if-eqz v6, :cond_4

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    const-string/jumbo v0, "preference_name"

    iget-object v1, p1, Lcom/google/ads/conversiontracking/d;->e:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string/jumbo v0, "record_time"

    iget-wide v6, p1, Lcom/google/ads/conversiontracking/d;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 172
    const-string/jumbo v0, "retry_count"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    const-string/jumbo v0, "last_retry_time"

    iget-wide v6, p1, Lcom/google/ads/conversiontracking/d;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 174
    const-string/jumbo v0, "conversiontracking"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/google/ads/conversiontracking/d;->h:J

    .line 175
    invoke-virtual {p0}, Lcom/google/ads/conversiontracking/f;->b()V

    .line 176
    invoke-virtual {p0}, Lcom/google/ads/conversiontracking/f;->c()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v4, 0x4e20

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 177
    invoke-virtual {p0}, Lcom/google/ads/conversiontracking/f;->d()V

    .line 179
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_3
    move v2, v1

    .line 168
    goto :goto_1

    :cond_4
    move v0, v1

    .line 169
    goto :goto_2
.end method

.method public c()I
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 246
    iget-object v3, p0, Lcom/google/ads/conversiontracking/f;->c:Ljava/lang/Object;

    monitor-enter v3

    .line 247
    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/conversiontracking/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 248
    if-nez v1, :cond_0

    .line 249
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    :goto_0
    return v0

    .line 253
    :cond_0
    :try_start_1
    const-string/jumbo v4, "select count(*) from conversiontracking"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 254
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 255
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 260
    if-eqz v2, :cond_1

    .line 261
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    monitor-exit v3

    goto :goto_0

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 260
    :cond_2
    if-eqz v2, :cond_3

    .line 261
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 264
    :cond_3
    :goto_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v1

    .line 258
    :try_start_4
    const-string/jumbo v4, "GoogleConversionReporter"

    const-string/jumbo v5, "Error getting record count"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 260
    if-eqz v2, :cond_3

    .line 261
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 258
    :cond_4
    :try_start_6
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 260
    :catchall_1
    move-exception v0

    if-eqz v2, :cond_5

    .line 261
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public c(Lcom/google/ads/conversiontracking/d;)V
    .locals 10

    .prologue
    .line 225
    if-nez p1, :cond_0

    .line 240
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/google/ads/conversiontracking/f;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 229
    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/conversiontracking/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 230
    if-nez v0, :cond_1

    .line 231
    monitor-exit v1

    goto :goto_0

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 233
    :cond_1
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 234
    const-string/jumbo v3, "last_retry_time"

    invoke-static {}, Lcom/google/ads/conversiontracking/g;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 235
    const-string/jumbo v3, "retry_count"

    iget v4, p1, Lcom/google/ads/conversiontracking/d;->c:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "%s = %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "conversion_ping_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-wide v8, p1, Lcom/google/ads/conversiontracking/d;->h:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 237
    const-string/jumbo v4, "conversiontracking"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 238
    invoke-virtual {p0}, Lcom/google/ads/conversiontracking/f;->b()V

    .line 239
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public d()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 272
    iget-object v10, p0, Lcom/google/ads/conversiontracking/f;->c:Ljava/lang/Object;

    monitor-enter v10

    .line 273
    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/conversiontracking/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 274
    if-nez v0, :cond_0

    .line 275
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :goto_0
    return-void

    .line 279
    :cond_0
    :try_start_1
    const-string/jumbo v7, "record_time ASC"

    .line 280
    const-string/jumbo v1, "conversiontracking"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v1

    .line 288
    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    invoke-virtual {p0, v1}, Lcom/google/ads/conversiontracking/f;->a(Landroid/database/Cursor;)Lcom/google/ads/conversiontracking/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/conversiontracking/f;->a(Lcom/google/ads/conversiontracking/d;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 294
    :cond_1
    if-eqz v1, :cond_2

    .line 295
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 298
    :cond_2
    :goto_1
    monitor-exit v10

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 291
    :catch_0
    move-exception v0

    move-object v1, v9

    .line 292
    :goto_2
    :try_start_4
    const-string/jumbo v2, "GoogleConversionReporter"

    const-string/jumbo v3, "Error remove oldest record"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 294
    if-eqz v1, :cond_2

    .line 295
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 292
    :cond_3
    :try_start_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 294
    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v1, :cond_4

    .line 295
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 294
    :catchall_2
    move-exception v0

    move-object v1, v9

    goto :goto_4

    .line 291
    :catch_1
    move-exception v0

    goto :goto_2
.end method
