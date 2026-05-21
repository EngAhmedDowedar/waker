.class public Lcom/vungle/publisher/protocol/ProtocolHttpGateway;
.super Lcom/vungle/publisher/cs;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/protocol/ProtocolHttpGateway$PrepareLocalAdEventListener;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/event/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/protocol/ProtocolHttpGateway$PrepareLocalAdEventListener;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/vungle/publisher/protocol/RequestConfigHttpTransactionFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcom/vungle/publisher/protocol/RequestLocalAdHttpTransactionFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Lcom/vungle/publisher/protocol/RequestStreamingAdHttpTransactionFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field j:Lcom/vungle/publisher/SafeBundleAdConfigFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field k:Lcom/vungle/publisher/protocol/SessionEndHttpTransactionFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field l:Lcom/vungle/publisher/protocol/SessionStartHttpTransactionFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field m:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy",
            "<",
            "Lcom/vungle/publisher/protocol/TrackInstallHttpTransactionFactory;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field n:Lcom/vungle/publisher/protocol/UnfilledAdHttpTransactionFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field o:Lcom/vungle/publisher/reporting/AdServiceReportingHandler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final p:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/vungle/publisher/cs;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/vungle/publisher/protocol/ProtocolHttpGateway;)Lcom/vungle/publisher/db/model/LoggedException$Factory;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->d:Lcom/vungle/publisher/db/model/LoggedException$Factory;

    return-object v0
.end method

.method static synthetic b(Lcom/vungle/publisher/protocol/ProtocolHttpGateway;)Lcom/vungle/publisher/db/model/LoggedException$Factory;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->d:Lcom/vungle/publisher/db/model/LoggedException$Factory;

    return-object v0
.end method

.method static synthetic c(Lcom/vungle/publisher/protocol/ProtocolHttpGateway;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic d(Lcom/vungle/publisher/protocol/ProtocolHttpGateway;)Lcom/vungle/publisher/db/model/LoggedException$Factory;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->d:Lcom/vungle/publisher/db/model/LoggedException$Factory;

    return-object v0
.end method

.method static synthetic e(Lcom/vungle/publisher/protocol/ProtocolHttpGateway;)Lcom/vungle/publisher/db/model/LoggedException$Factory;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->d:Lcom/vungle/publisher/db/model/LoggedException$Factory;

    return-object v0
.end method

.method static synthetic f(Lcom/vungle/publisher/protocol/ProtocolHttpGateway;)Lcom/vungle/publisher/db/model/LoggedException$Factory;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->d:Lcom/vungle/publisher/db/model/LoggedException$Factory;

    return-object v0
.end method

.method static synthetic g(Lcom/vungle/publisher/protocol/ProtocolHttpGateway;)Lcom/vungle/publisher/db/model/LoggedException$Factory;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->d:Lcom/vungle/publisher/db/model/LoggedException$Factory;

    return-object v0
.end method

.method static synthetic h(Lcom/vungle/publisher/protocol/ProtocolHttpGateway;)Lcom/vungle/publisher/db/model/LoggedException$Factory;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->d:Lcom/vungle/publisher/db/model/LoggedException$Factory;

    return-object v0
.end method

.method static synthetic i(Lcom/vungle/publisher/protocol/ProtocolHttpGateway;)Lcom/vungle/publisher/db/model/LoggedException$Factory;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->d:Lcom/vungle/publisher/db/model/LoggedException$Factory;

    return-object v0
.end method

.method static synthetic j(Lcom/vungle/publisher/protocol/ProtocolHttpGateway;)Lcom/vungle/publisher/db/model/LoggedException$Factory;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->d:Lcom/vungle/publisher/db/model/LoggedException$Factory;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->e:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;

    new-instance v1, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$2;

    invoke-direct {v1, p0}, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$2;-><init>(Lcom/vungle/publisher/protocol/ProtocolHttpGateway;)V

    sget-object v2, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;->j:Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/async/ScheduledPriorityExecutor;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;)V

    .line 117
    return-void
.end method

.method public final a(Lcom/vungle/publisher/cw;)V
    .locals 6

    .prologue
    .line 128
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->e:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;

    new-instance v1, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$3;

    invoke-direct {v1, p0, p1}, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$3;-><init>(Lcom/vungle/publisher/protocol/ProtocolHttpGateway;Lcom/vungle/publisher/cw;)V

    sget-object v2, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;->f:Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;

    const/16 v3, 0x7d0

    invoke-virtual {p1, v3}, Lcom/vungle/publisher/cw;->a(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/vungle/publisher/async/ScheduledPriorityExecutor;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;J)V

    .line 151
    return-void
.end method

.method final b()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->a:Lcom/vungle/publisher/event/EventBus;

    new-instance v1, Lcom/vungle/publisher/r;

    invoke-direct {v1}, Lcom/vungle/publisher/r;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V

    .line 188
    return-void
.end method

.method final b(Lcom/vungle/publisher/cw;)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 158
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->b:Lcom/vungle/publisher/protocol/ProtocolHttpGateway$PrepareLocalAdEventListener;

    invoke-virtual {v0}, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$PrepareLocalAdEventListener;->unregister()V

    .line 159
    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->a(Lcom/vungle/publisher/cw;)V

    .line 162
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->e:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;

    new-instance v1, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$8;

    invoke-direct {v1, p0}, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$8;-><init>(Lcom/vungle/publisher/protocol/ProtocolHttpGateway;)V

    sget-object v2, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;->n:Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/async/ScheduledPriorityExecutor;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;)V

    .line 279
    return-void
.end method

.method public final c(Lcom/vungle/publisher/cw;)V
    .locals 6

    .prologue
    .line 244
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->e:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;

    new-instance v1, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$7;

    invoke-direct {v1, p0, p1}, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$7;-><init>(Lcom/vungle/publisher/protocol/ProtocolHttpGateway;Lcom/vungle/publisher/cw;)V

    sget-object v2, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;->e:Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;

    const/16 v3, 0x1388

    invoke-virtual {p1, v3}, Lcom/vungle/publisher/cw;->a(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/vungle/publisher/async/ScheduledPriorityExecutor;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;J)V

    .line 259
    return-void
.end method
