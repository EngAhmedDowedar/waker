.class Lcom/vungle/publisher/ad/AdManager$PrepareStreamingAdEventListener;
.super Lcom/vungle/publisher/by;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ad/AdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrepareStreamingAdEventListener"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field volatile b:Z

.field volatile c:Lcom/vungle/publisher/db/model/StreamingAd;

.field final d:J

.field e:Lcom/vungle/publisher/db/model/StreamingAd$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/vungle/publisher/by;-><init>()V

    .line 376
    const-string/jumbo v0, "VunglePrepare"

    iput-object v0, p0, Lcom/vungle/publisher/ad/AdManager$PrepareStreamingAdEventListener;->a:Ljava/lang/String;

    .line 379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vungle/publisher/ad/AdManager$PrepareStreamingAdEventListener;->d:J

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/ad/AdManager$PrepareStreamingAdEventListener;->b:Z

    .line 386
    monitor-enter p0

    .line 387
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 388
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onEvent(Lcom/vungle/publisher/aa;)V
    .locals 6
    .param p1, "prepareStreamingAdSuccessEvent"    # Lcom/vungle/publisher/aa;

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/vungle/publisher/ad/AdManager$PrepareStreamingAdEventListener;->unregister()V

    .line 399
    iget-wide v0, p1, Lcom/vungle/publisher/bx;->e:J

    iget-wide v2, p0, Lcom/vungle/publisher/ad/AdManager$PrepareStreamingAdEventListener;->d:J

    sub-long/2addr v0, v2

    .line 400
    iget-object v2, p1, Lcom/vungle/publisher/aa;->a:Lcom/vungle/publisher/protocol/message/RequestStreamingAdResponse;

    .line 401
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v4, v2, Lcom/vungle/publisher/protocol/message/RequestStreamingAdResponse;->r:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 402
    const-string/jumbo v3, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "received streaming ad "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/vungle/publisher/protocol/message/RequestStreamingAdResponse;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-virtual {v2}, Lcom/vungle/publisher/protocol/message/RequestStreamingAdResponse;->f()Ljava/lang/String;

    move-result-object v3

    .line 404
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$PrepareStreamingAdEventListener;->e:Lcom/vungle/publisher/db/model/StreamingAd$Factory;

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/db/model/StreamingAd$Factory;->a(Ljava/lang/Object;)Lcom/vungle/publisher/bi;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/StreamingAd;

    .line 405
    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/vungle/publisher/ad/AdManager$PrepareStreamingAdEventListener;->e:Lcom/vungle/publisher/db/model/StreamingAd$Factory;

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/db/model/StreamingAd$Factory;->a(Lcom/vungle/publisher/protocol/message/RequestStreamingAdResponse;)Lcom/vungle/publisher/db/model/StreamingAd;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/ad/AdManager$PrepareStreamingAdEventListener;->c:Lcom/vungle/publisher/db/model/StreamingAd;

    .line 407
    const-string/jumbo v1, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "inserting new "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/StreamingAd;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :try_start_0
    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/StreamingAd;->l()Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :goto_0
    invoke-virtual {p0}, Lcom/vungle/publisher/ad/AdManager$PrepareStreamingAdEventListener;->a()V

    .line 446
    return-void

    .line 412
    :catch_0
    move-exception v0

    const-string/jumbo v0, "VunglePrepare"

    const-string/jumbo v1, "did not insert streaming ad - possible duplicate"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 418
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/vungle/publisher/ad/AdManager$PrepareStreamingAdEventListener;->e:Lcom/vungle/publisher/db/model/StreamingAd$Factory;

    invoke-virtual {v1, v0, v2}, Lcom/vungle/publisher/db/model/StreamingAd$Factory;->a(Lcom/vungle/publisher/db/model/Ad;Lcom/vungle/publisher/protocol/message/RequestAdResponse;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 424
    :goto_1
    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/StreamingAd;->i()Lcom/vungle/publisher/db/model/Ad$a;

    move-result-object v1

    .line 425
    sget-object v2, Lcom/vungle/publisher/ad/AdManager$3;->a:[I

    invoke-virtual {v1}, Lcom/vungle/publisher/db/model/Ad$a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 438
    :pswitch_0
    const-string/jumbo v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "existing "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/StreamingAd;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " with status "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " - ignoring"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 420
    :catch_1
    move-exception v1

    .line 422
    const-string/jumbo v2, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "error updating ad "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 427
    :pswitch_1
    const-string/jumbo v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "unexpected ad status "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/StreamingAd;->y()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :pswitch_2
    const-string/jumbo v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "existing "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/StreamingAd;->y()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    sget-object v2, Lcom/vungle/publisher/db/model/Ad$a;->e:Lcom/vungle/publisher/db/model/Ad$a;

    if-eq v1, v2, :cond_1

    .line 433
    sget-object v1, Lcom/vungle/publisher/db/model/Ad$a;->e:Lcom/vungle/publisher/db/model/Ad$a;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/db/model/StreamingAd;->b(Lcom/vungle/publisher/db/model/Ad$a;)V

    .line 435
    :cond_1
    iput-object v0, p0, Lcom/vungle/publisher/ad/AdManager$PrepareStreamingAdEventListener;->c:Lcom/vungle/publisher/db/model/StreamingAd;

    goto/16 :goto_0

    .line 443
    :cond_2
    const-string/jumbo v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "no streaming ad to play after "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 425
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onEvent(Lcom/vungle/publisher/r;)V
    .locals 6
    .param p1, "prepareStreamingAdFailureEvent"    # Lcom/vungle/publisher/r;

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/vungle/publisher/ad/AdManager$PrepareStreamingAdEventListener;->unregister()V

    .line 393
    const-string/jumbo v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "request streaming ad failure after "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/vungle/publisher/bx;->e:J

    iget-wide v4, p0, Lcom/vungle/publisher/ad/AdManager$PrepareStreamingAdEventListener;->d:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Lcom/vungle/publisher/ad/AdManager$PrepareStreamingAdEventListener;->a()V

    .line 395
    return-void
.end method
