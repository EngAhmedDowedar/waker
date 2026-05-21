.class public Lcom/vungle/publisher/InitializationEventListener;
.super Lcom/vungle/publisher/by;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/InitializationEventListener$GlobalEventListener;,
        Lcom/vungle/publisher/InitializationEventListener$InitialConfigUpdatedEventListener;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/ad/AdManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/protocol/ProtocolHttpGateway;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/reporting/AdReportManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/InitializationEventListener$InitialConfigUpdatedEventListener;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/InitializationEventListener$GlobalEventListener;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/vungle/publisher/env/SdkState;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final i:Lcom/vungle/publisher/df;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/vungle/publisher/by;-><init>()V

    .line 33
    new-instance v0, Lcom/vungle/publisher/df;

    invoke-direct {v0}, Lcom/vungle/publisher/df;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/InitializationEventListener;->i:Lcom/vungle/publisher/df;

    .line 106
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/vungle/publisher/InitializationEventListener;->unregister()V

    .line 78
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener;->b:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;

    new-instance v1, Lcom/vungle/publisher/InitializationEventListener$1;

    invoke-direct {v1, p0}, Lcom/vungle/publisher/InitializationEventListener$1;-><init>(Lcom/vungle/publisher/InitializationEventListener;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/vungle/publisher/async/ScheduledPriorityExecutor;->a(Ljava/lang/Runnable;J)V

    .line 91
    return-void
.end method


# virtual methods
.method public onEvent(Lcom/vungle/publisher/bh;)V
    .locals 2

    .prologue
    .line 69
    const-string/jumbo v0, "VungleDatabase"

    const-string/jumbo v1, "on database ready"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener;->i:Lcom/vungle/publisher/df;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/df;->a(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/vungle/publisher/InitializationEventListener;->a()V

    .line 73
    :cond_0
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/bw;)V
    .locals 2

    .prologue
    .line 62
    const-string/jumbo v0, "VungleDevice"

    const-string/jumbo v1, "device ID available"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener;->i:Lcom/vungle/publisher/df;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/df;->a(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/vungle/publisher/InitializationEventListener;->a()V

    .line 66
    :cond_0
    return-void
.end method
