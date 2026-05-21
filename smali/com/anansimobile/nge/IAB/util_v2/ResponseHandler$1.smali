.class final Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler$1;
.super Ljava/lang/Object;
.source "ResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler;->purchaseResponse(Landroid/content/Context;Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$developerPayload:Ljava/lang/String;

.field final synthetic val$orderId:Ljava/lang/String;

.field final synthetic val$productId:Ljava/lang/String;

.field final synthetic val$purchaseState:Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;

.field final synthetic val$purchaseTime:J


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 112
    iput-object p1, p0, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler$1;->val$orderId:Ljava/lang/String;

    iput-object p3, p0, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler$1;->val$productId:Ljava/lang/String;

    iput-object p4, p0, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler$1;->val$purchaseState:Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;

    iput-wide p5, p0, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler$1;->val$purchaseTime:J

    iput-object p7, p0, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler$1;->val$developerPayload:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 115
    new-instance v0, Lcom/anansimobile/nge/IAB/util_v2/PurchaseDatabase;

    iget-object v1, p0, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anansimobile/nge/IAB/util_v2/PurchaseDatabase;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, "db":Lcom/anansimobile/nge/IAB/util_v2/PurchaseDatabase;
    iget-object v1, p0, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler$1;->val$orderId:Ljava/lang/String;

    iget-object v2, p0, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler$1;->val$productId:Ljava/lang/String;

    iget-object v3, p0, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler$1;->val$purchaseState:Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;

    iget-wide v4, p0, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler$1;->val$purchaseTime:J

    iget-object v6, p0, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler$1;->val$developerPayload:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/anansimobile/nge/IAB/util_v2/PurchaseDatabase;->updatePurchase(Ljava/lang/String;Ljava/lang/String;Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;JLjava/lang/String;)I

    move-result v5

    .line 118
    .local v5, "quantity":I
    invoke-virtual {v0}, Lcom/anansimobile/nge/IAB/util_v2/PurchaseDatabase;->close()V

    .line 122
    const-class v9, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler;

    monitor-enter v9

    .line 123
    :try_start_0
    invoke-static {}, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler;->access$000()Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 124
    invoke-static {}, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler;->access$000()Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;

    move-result-object v2

    iget-object v3, p0, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler$1;->val$purchaseState:Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;

    iget-object v4, p0, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler$1;->val$productId:Ljava/lang/String;

    iget-wide v6, p0, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler$1;->val$purchaseTime:J

    iget-object v8, p0, Lcom/anansimobile/nge/IAB/util_v2/ResponseHandler$1;->val$developerPayload:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/anansimobile/nge/IAB/util_v2/PurchaseObserver;->postPurchaseStateChange(Lcom/anansimobile/nge/IAB/util_v2/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V

    .line 127
    :cond_0
    monitor-exit v9

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
