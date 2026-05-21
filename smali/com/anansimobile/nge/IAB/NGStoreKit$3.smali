.class final Lcom/anansimobile/nge/IAB/NGStoreKit$3;
.super Ljava/lang/Object;
.source "NGStoreKit.java"

# interfaces
.implements Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabPurchaseFinishedListener;


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
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/anansimobile/nge/IAB/util/IabResult;Lcom/anansimobile/nge/IAB/util/Purchase;)V
    .locals 2
    .param p1, "result"    # Lcom/anansimobile/nge/IAB/util/IabResult;
    .param p2, "info"    # Lcom/anansimobile/nge/IAB/util/Purchase;

    .prologue
    .line 357
    invoke-virtual {p1}, Lcom/anansimobile/nge/IAB/util/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[IAB] Error purchasing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[IAB] Error purchasing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "OnPaymentFailed"

    invoke-static {v0, v1}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$200(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-static {}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$600()V

    .line 389
    :goto_0
    return-void

    .line 380
    :cond_0
    invoke-virtual {p2}, Lcom/anansimobile/nge/IAB/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$300(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    const-string/jumbo v0, "[IAB] purchase success ,shoudConsumeProduct"

    const-string/jumbo v1, "consumeProduct"

    invoke-static {v0, v1}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$200(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-static {p2}, Lcom/anansimobile/nge/IAB/NGStoreKit;->consumeProduct(Lcom/anansimobile/nge/IAB/util/Purchase;)V

    goto :goto_0

    .line 385
    :cond_1
    const-string/jumbo v0, "[IAB] purchase success ,shoundnot consume"

    const-string/jumbo v1, "NotifyPurchaseFinished"

    invoke-static {v0, v1}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$200(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-static {p2}, Lcom/anansimobile/nge/IAB/NGStoreKit;->access$400(Lcom/anansimobile/nge/IAB/util/Purchase;)V

    goto :goto_0
.end method
