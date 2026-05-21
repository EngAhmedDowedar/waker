.class Lcom/vungle/publisher/ad/AdManager$PlayAdEventListener;
.super Lcom/vungle/publisher/by;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ad/AdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlayAdEventListener"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field b:Lcom/vungle/publisher/ad/AdManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/db/model/LoggedException$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/vungle/publisher/by;-><init>()V

    .line 336
    const-string/jumbo v0, "VunglePrepare"

    iput-object v0, p0, Lcom/vungle/publisher/ad/AdManager$PlayAdEventListener;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/vungle/publisher/ag;)V
    .locals 4
    .param p1, "startPlayAdEvent"    # Lcom/vungle/publisher/ag;

    .prologue
    .line 346
    :try_start_0
    invoke-virtual {p1}, Lcom/vungle/publisher/ag;->a()Lcom/vungle/publisher/db/model/Ad;

    move-result-object v0

    .line 347
    sget-object v1, Lcom/vungle/publisher/db/model/Ad$a;->f:Lcom/vungle/publisher/db/model/Ad$a;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/db/model/Ad;->b(Lcom/vungle/publisher/db/model/Ad$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v0

    .line 350
    iget-object v1, p0, Lcom/vungle/publisher/ad/AdManager$PlayAdEventListener;->c:Lcom/vungle/publisher/db/model/LoggedException$Factory;

    const-string/jumbo v2, "VunglePrepare"

    const-string/jumbo v3, "error processing start play ad event"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/db/model/LoggedException$Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onEvent(Lcom/vungle/publisher/av;)V
    .locals 2

    .prologue
    .line 360
    const-string/jumbo v0, "VunglePrepare"

    const-string/jumbo v1, "play ad failure - unregistering play ad listener"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Lcom/vungle/publisher/ad/AdManager$PlayAdEventListener;->unregister()V

    .line 362
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/q;)V
    .locals 2

    .prologue
    .line 355
    const-string/jumbo v0, "VunglePrepare"

    const-string/jumbo v1, "sent ad report - unregistering play ad listener"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lcom/vungle/publisher/ad/AdManager$PlayAdEventListener;->unregister()V

    .line 357
    return-void
.end method
