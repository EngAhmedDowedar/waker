.class public Lcom/anansimobile/nge/IAB/util_v2/PurchaseDatabase;
.super Ljava/lang/Object;
.source "PurchaseDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anansimobile/nge/IAB/util_v2/PurchaseDatabase$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "purchase.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final HISTORY_COLUMNS:[Ljava/lang/String;

.field static final HISTORY_DEVELOPER_PAYLOAD_COL:Ljava/lang/String; = "developerPayload"

.field static final HISTORY_ORDER_ID_COL:Ljava/lang/String; = "_id"

.field static final HISTORY_PRODUCT_ID_COL:Ljava/lang/String; = "productId"

.field static final HISTORY_PURCHASE_TIME_COL:Ljava/lang/String; = "purchaseTime"

.field static final HISTORY_STATE_COL:Ljava/lang/String; = "state"

.field private static final PURCHASED_COLUMNS:[Ljava/lang/String;

.field private static final PURCHASED_ITEMS_TABLE_NAME:Ljava/lang/String; = "purchased"

.field static final PURCHASED_PRODUCT_ID_COL:Ljava/lang/String; = "_id"

.field static final PURCHASED_QUANTITY_COL:Ljava/lang/String; = "quantity"

.field private static final PURCHASE_HISTORY_TABLE_NAME:Ljava/lang/String; = "history"

.field private static final TAG:Ljava/lang/String; = "PurchaseDatabase"


# instance fields
.field private mDatabaseHelper:Lcom/anansimobile/nge/IAB/util_v2/PurchaseDatabase$DatabaseHelper;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "productId"

    aput-object v1, v0, v4

    const-string/jumbo v1, "state"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string/jumbo v2, "purchaseTime"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "developerPayload"

    aput-object v2, v0, v1

    sput-object v0, Lcom/anansimobile/nge/IAB/util_v2/PurchaseDatabase;->HISTORY_COLUMNS:[Ljava/lang/String;

    .line 61
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "quantity"

    aput-object v1, v0, v4

    sput-object v0, Lcom/anansimobile/nge/IAB/util_v2/PurchaseDatabase;->PURCHASED_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/anansimobile/nge/IAB/util_v2/PurchaseDatabase$DatabaseHelper;

    invoke-direct {v0, p0, p1}, Lcom/anansimobile/nge/IAB/util_v2/PurchaseDatabase$DatabaseHelper;-><init>(Lcom/anansimobile/nge/IAB/util_v2/PurchaseDatabase;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anansimobile/nge/IAB/util_v2/PurchaseDatabase;->mDatabaseHelper:Lcom/anansimobile/nge/IAB/util_v2/PurchaseDatabase$DatabaseHelper;

    .line 70
    iget-object v0, p0, Lcom/anansimobile/nge/IAB/util_v2/PurchaseDatabase;->mDatabaseHelper:Lcom/anansimobile/nge/IAB/util_v2/PurchaseDatabase$DatabaseHelper;

    invoke-virtual {v0}, Lcom/anansimobile/nge/IAB/util_v2/PurchaseDatabase$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/anansimobile/nge/IAB/util_v2/PurchaseDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 71
    return-void
.end method

.method private insertOrder(Ljava/lang/String;Ljava/lang/String;Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;JLjava/lang/String;)V
    .locals 4
    .param p1, "orderId"    # Ljava/lang/String;
    .param p2, "productId"    # Ljava/lang/String;
    .param p3, "state"    # Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;
    .param p4, "purchaseTime"    # J
    .param p6, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 91
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string/jumbo v1, "productId"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string/jumbo v1, "state"

    invoke-virtual {p3}, Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    const-string/jumbo v1, "purchaseTime"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 95
    const-string/jumbo v1, "developerPayload"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/anansimobile/nge/IAB/util_v2/PurchaseDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "history"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 97
    return-void
.end method

.method private updatePurchasedItem(Ljava/lang/String;I)V
    .locals 6
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "quantity"    # I

    .prologue
    .line 106
    if-nez p2, :cond_0

    .line 107
    iget-object v1, p0, Lcom/anansimobile/nge/IAB/util_v2/PurchaseDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "purchased"

    const-string/jumbo v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 115
    :goto_0
    return-void

    .line 111
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 112
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string/jumbo v1, "quantity"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    iget-object v1, p0, Lcom/anansimobile/nge/IAB/util_v2/PurchaseDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "purchased"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/anansimobile/nge/IAB/util_v2/PurchaseDatabase;->mDatabaseHelper:Lcom/anansimobile/nge/IAB/util_v2/PurchaseDatabase$DatabaseHelper;

    invoke-virtual {v0}, Lcom/anansimobile/nge/IAB/util_v2/PurchaseDatabase$DatabaseHelper;->close()V

    .line 75
    return-void
.end method

.method public queryAllPurchasedItems()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 165
    iget-object v0, p0, Lcom/anansimobile/nge/IAB/util_v2/PurchaseDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "purchased"

    sget-object v2, Lcom/anansimobile/nge/IAB/util_v2/PurchaseDatabase;->PURCHASED_COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized updatePurchase(Ljava/lang/String;Ljava/lang/String;Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;JLjava/lang/String;)I
    .locals 18
    .param p1, "orderId"    # Ljava/lang/String;
    .param p2, "productId"    # Ljava/lang/String;
    .param p3, "purchaseState"    # Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;
    .param p4, "purchaseTime"    # J
    .param p6, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/anansimobile/nge/IAB/util_v2/PurchaseDatabase;->insertOrder(Ljava/lang/String;Ljava/lang/String;Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;JLjava/lang/String;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anansimobile/nge/IAB/util_v2/PurchaseDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "history"

    sget-object v4, Lcom/anansimobile/nge/IAB/util_v2/PurchaseDatabase;->HISTORY_COLUMNS:[Ljava/lang/String;

    const-string/jumbo v5, "productId=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 134
    .local v11, "cursor":Landroid/database/Cursor;
    if-nez v11, :cond_1

    .line 135
    const/4 v12, 0x0

    .line 157
    :cond_0
    :goto_0
    monitor-exit p0

    return v12

    .line 137
    :cond_1
    const/4 v12, 0x0

    .line 140
    .local v12, "quantity":I
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 141
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 142
    .local v14, "stateIndex":I
    invoke-static {v14}, Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;->valueOf(I)Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;

    move-result-object v13

    .line 145
    .local v13, "state":Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;
    sget-object v2, Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;->PURCHASED:Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;

    if-eq v13, v2, :cond_3

    sget-object v2, Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;->REFUNDED:Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;

    if-ne v13, v2, :cond_2

    .line 146
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 151
    .end local v13    # "state":Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;
    .end local v14    # "stateIndex":I
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v12}, Lcom/anansimobile/nge/IAB/util_v2/PurchaseDatabase;->updatePurchasedItem(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 153
    if-eqz v11, :cond_0

    .line 154
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 131
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v12    # "quantity":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 153
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "quantity":I
    :catchall_1
    move-exception v2

    if-eqz v11, :cond_5

    .line 154
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
