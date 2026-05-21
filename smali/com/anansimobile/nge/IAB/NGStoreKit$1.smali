.class final Lcom/anansimobile/nge/IAB/NGStoreKit$1;
.super Ljava/lang/Object;
.source "NGStoreKit.java"

# interfaces
.implements Lcom/anansimobile/nge/IAB/util/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anansimobile/nge/IAB/NGStoreKit;->initIabHelper(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/anansimobile/nge/IAB/util/IabResult;)V
    .locals 2
    .param p1, "result"    # Lcom/anansimobile/nge/IAB/util/IabResult;

    .prologue
    .line 63
    invoke-virtual {p1}, Lcom/anansimobile/nge/IAB/util/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[IAB] Problem setting up In-app Billing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anansimobile/nge/NextGenEngine;->nge_log(Ljava/lang/String;)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    const-string/jumbo v0, "[IAB] In-app Billing setup done!~"

    invoke-static {v0}, Lcom/anansimobile/nge/NextGenEngine;->nge_log(Ljava/lang/String;)V

    goto :goto_0
.end method
