.class Lcom/vungle/publisher/InitializationEventListener$InitialConfigUpdatedEventListener;
.super Lcom/vungle/publisher/by;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/InitializationEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InitialConfigUpdatedEventListener"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/exception/ExceptionManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/vungle/publisher/by;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/vungle/publisher/cq;)V
    .locals 6

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/vungle/publisher/InitializationEventListener$InitialConfigUpdatedEventListener;->unregister()V

    .line 101
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener$InitialConfigUpdatedEventListener;->a:Lcom/vungle/publisher/exception/ExceptionManager;

    :try_start_0
    iget-object v1, v0, Lcom/vungle/publisher/exception/ExceptionManager;->b:Lcom/vungle/publisher/env/SdkConfig;

    invoke-virtual {v1}, Lcom/vungle/publisher/env/SdkConfig;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "VungleData"

    const-string/jumbo v2, "sdk configured to send logged exceptions"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/vungle/publisher/exception/ExceptionManager;->c:Lcom/vungle/publisher/db/model/LoggedException$Factory;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/db/model/LoggedException$Factory;->d(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const-string/jumbo v3, "VungleData"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "sending "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " logged exceptions"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/vungle/publisher/exception/ExceptionManager;->a:Lcom/vungle/publisher/cu;

    iget-object v2, v0, Lcom/vungle/publisher/cu;->e:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;

    new-instance v3, Lcom/vungle/publisher/cu$1;

    invoke-direct {v3, v0, v1}, Lcom/vungle/publisher/cu$1;-><init>(Lcom/vungle/publisher/cu;Ljava/util/List;)V

    sget-object v0, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;->t:Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;

    invoke-virtual {v2, v3, v0}, Lcom/vungle/publisher/async/ScheduledPriorityExecutor;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const-string/jumbo v0, "VungleData"

    const-string/jumbo v1, "sdk not configured to send logged exceptions"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "VungleData"

    const-string/jumbo v2, "error sending exceptions. irony?"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
