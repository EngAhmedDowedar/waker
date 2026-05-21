.class final Lcom/anansimobile/nge/IAB/NGStoreKit$4;
.super Ljava/lang/Object;
.source "NGStoreKit.java"

# interfaces
.implements Lcom/anansimobile/nge/IAB/util/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anansimobile/nge/IAB/NGStoreKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/anansimobile/nge/IAB/util/IabResult;Lcom/anansimobile/nge/IAB/util/Inventory;)V
    .locals 9
    .param p1, "result"    # Lcom/anansimobile/nge/IAB/util/IabResult;
    .param p2, "inv"    # Lcom/anansimobile/nge/IAB/util/Inventory;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 396
    invoke-virtual {p1}, Lcom/anansimobile/nge/IAB/util/IabResult;->isFailure()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    const-string/jumbo v2, "[IAB] product list failed, err code: %s!~"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/anansimobile/nge/IAB/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[IAB] product list failed, err code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/anansimobile/nge/IAB/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$200(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :goto_0
    return-void

    .line 402
    :cond_0
    invoke-static {p2}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$102(Lcom/anansimobile/nge/IAB/util/Inventory;)Lcom/anansimobile/nge/IAB/util/Inventory;

    .line 404
    invoke-static {}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$1100()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 405
    .local v0, "pid":Ljava/lang/String;
    invoke-virtual {p2, v0}, Lcom/anansimobile/nge/IAB/util/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/anansimobile/nge/IAB/util/SkuDetails;

    move-result-object v1

    .line 406
    .local v1, "sd":Lcom/anansimobile/nge/IAB/util/SkuDetails;
    if-nez v1, :cond_1

    .line 407
    const-string/jumbo v3, "[IAB] get product info failed, pid: %s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    const-string/jumbo v3, ""

    invoke-static {v3, v0}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$1200(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 412
    :cond_1
    const-string/jumbo v3, "[IAB] product info: id(%s), title(%s), desc(%s), price(%s)"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v7

    .line 414
    invoke-virtual {v1}, Lcom/anansimobile/nge/IAB/util/SkuDetails;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    .line 415
    invoke-virtual {v1}, Lcom/anansimobile/nge/IAB/util/SkuDetails;->getDescription()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 416
    invoke-virtual {v1}, Lcom/anansimobile/nge/IAB/util/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 412
    invoke-static {v3, v4}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    invoke-virtual {v1}, Lcom/anansimobile/nge/IAB/util/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$1200(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 422
    .end local v0    # "pid":Ljava/lang/String;
    .end local v1    # "sd":Lcom/anansimobile/nge/IAB/util/SkuDetails;
    :cond_2
    invoke-static {}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$1300()V

    goto :goto_0
.end method
