.class final Lcom/anansimobile/nge/IAB/NGStoreKit$2;
.super Ljava/lang/Object;
.source "NGStoreKit.java"

# interfaces
.implements Lcom/anansimobile/nge/IAB/util/IabHelper$OnConsumeFinishedListener;


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
    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/anansimobile/nge/IAB/util/Purchase;Lcom/anansimobile/nge/IAB/util/IabResult;)V
    .locals 2
    .param p1, "info"    # Lcom/anansimobile/nge/IAB/util/Purchase;
    .param p2, "result"    # Lcom/anansimobile/nge/IAB/util/IabResult;

    .prologue
    .line 338
    invoke-virtual {p2}, Lcom/anansimobile/nge/IAB/util/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[IAB] Error consuming: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    const-string/jumbo v0, "[IAB] Error consuming: "

    const-string/jumbo v1, "OnPaymentFailed"

    invoke-static {v0, v1}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$200(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-static {}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$600()V

    .line 349
    :goto_0
    return-void

    .line 343
    :cond_0
    invoke-static {}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$100()Lcom/anansimobile/nge/IAB/util/Inventory;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 345
    invoke-static {}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$100()Lcom/anansimobile/nge/IAB/util/Inventory;

    move-result-object v0

    invoke-static {}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$1000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anansimobile/nge/IAB/util/Inventory;->erasePurchase(Ljava/lang/String;)V

    .line 347
    :cond_1
    invoke-static {p1}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$400(Lcom/anansimobile/nge/IAB/util/Purchase;)V

    goto :goto_0
.end method
