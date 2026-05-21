.class public final Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "vungle"

# interfaces
.implements Ldagger/MembersInjector;
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/vungle/publisher/FullScreenAdActivity;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/vungle/publisher/FullScreenAdActivity;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/vungle/publisher/FullScreenAdActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/FullScreenAdActivity$AdEventListener$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/ad/AdManager;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/reporting/AdReportEventListener$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/bt;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/display/view/VideoFragment$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/display/view/PostRollFragment$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/env/SdkState;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/util/IntentFactory;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/db/model/LoggedException$Factory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 37
    const-string/jumbo v0, "com.vungle.publisher.FullScreenAdActivity"

    const-string/jumbo v1, "members/com.vungle.publisher.FullScreenAdActivity"

    const/4 v2, 0x0

    const-class v3, Lcom/vungle/publisher/FullScreenAdActivity;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 38
    return-void
.end method


# virtual methods
.method public final attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 47
    const-string/jumbo v0, "com.vungle.publisher.FullScreenAdActivity$AdEventListener$Factory"

    const-class v1, Lcom/vungle/publisher/FullScreenAdActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->a:Ldagger/internal/Binding;

    .line 48
    const-string/jumbo v0, "com.vungle.publisher.ad.AdManager"

    const-class v1, Lcom/vungle/publisher/FullScreenAdActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->b:Ldagger/internal/Binding;

    .line 49
    const-string/jumbo v0, "com.vungle.publisher.reporting.AdReportEventListener$Factory"

    const-class v1, Lcom/vungle/publisher/FullScreenAdActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->c:Ldagger/internal/Binding;

    .line 50
    const-string/jumbo v0, "com.vungle.publisher.bt"

    const-class v1, Lcom/vungle/publisher/FullScreenAdActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->d:Ldagger/internal/Binding;

    .line 51
    const-string/jumbo v0, "com.vungle.publisher.event.EventBus"

    const-class v1, Lcom/vungle/publisher/FullScreenAdActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->e:Ldagger/internal/Binding;

    .line 52
    const-string/jumbo v0, "com.vungle.publisher.display.view.VideoFragment$Factory"

    const-class v1, Lcom/vungle/publisher/FullScreenAdActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->f:Ldagger/internal/Binding;

    .line 53
    const-string/jumbo v0, "com.vungle.publisher.display.view.PostRollFragment$Factory"

    const-class v1, Lcom/vungle/publisher/FullScreenAdActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->g:Ldagger/internal/Binding;

    .line 54
    const-string/jumbo v0, "com.vungle.publisher.env.SdkState"

    const-class v1, Lcom/vungle/publisher/FullScreenAdActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->h:Ldagger/internal/Binding;

    .line 55
    const-string/jumbo v0, "com.vungle.publisher.util.IntentFactory"

    const-class v1, Lcom/vungle/publisher/FullScreenAdActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->i:Ldagger/internal/Binding;

    .line 56
    const-string/jumbo v0, "com.vungle.publisher.db.model.LoggedException$Factory"

    const-class v1, Lcom/vungle/publisher/FullScreenAdActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->j:Ldagger/internal/Binding;

    .line 57
    return-void
.end method

.method public final get()Lcom/vungle/publisher/FullScreenAdActivity;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/vungle/publisher/FullScreenAdActivity;

    invoke-direct {v0}, Lcom/vungle/publisher/FullScreenAdActivity;-><init>()V

    .line 84
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->injectMembers(Lcom/vungle/publisher/FullScreenAdActivity;)V

    .line 85
    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->get()Lcom/vungle/publisher/FullScreenAdActivity;

    move-result-object v0

    return-object v0
.end method

.method public final getDependencies(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->e:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->f:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->g:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->h:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->i:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->j:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public final injectMembers(Lcom/vungle/publisher/FullScreenAdActivity;)V
    .locals 1
    .param p1, "object"    # Lcom/vungle/publisher/FullScreenAdActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/FullScreenAdActivity$AdEventListener$Factory;

    iput-object v0, p1, Lcom/vungle/publisher/FullScreenAdActivity;->c:Lcom/vungle/publisher/FullScreenAdActivity$AdEventListener$Factory;

    .line 95
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ad/AdManager;

    iput-object v0, p1, Lcom/vungle/publisher/FullScreenAdActivity;->d:Lcom/vungle/publisher/ad/AdManager;

    .line 96
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/reporting/AdReportEventListener$Factory;

    iput-object v0, p1, Lcom/vungle/publisher/FullScreenAdActivity;->e:Lcom/vungle/publisher/reporting/AdReportEventListener$Factory;

    .line 97
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/bt;

    iput-object v0, p1, Lcom/vungle/publisher/FullScreenAdActivity;->f:Lcom/vungle/publisher/bt;

    .line 98
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->e:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/event/EventBus;

    iput-object v0, p1, Lcom/vungle/publisher/FullScreenAdActivity;->g:Lcom/vungle/publisher/event/EventBus;

    .line 99
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->f:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/display/view/VideoFragment$Factory;

    iput-object v0, p1, Lcom/vungle/publisher/FullScreenAdActivity;->h:Lcom/vungle/publisher/display/view/VideoFragment$Factory;

    .line 100
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->g:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/display/view/PostRollFragment$Factory;

    iput-object v0, p1, Lcom/vungle/publisher/FullScreenAdActivity;->i:Lcom/vungle/publisher/display/view/PostRollFragment$Factory;

    .line 101
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->h:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/env/SdkState;

    iput-object v0, p1, Lcom/vungle/publisher/FullScreenAdActivity;->j:Lcom/vungle/publisher/env/SdkState;

    .line 102
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->i:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/util/IntentFactory;

    iput-object v0, p1, Lcom/vungle/publisher/FullScreenAdActivity;->k:Lcom/vungle/publisher/util/IntentFactory;

    .line 103
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->j:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/LoggedException$Factory;

    iput-object v0, p1, Lcom/vungle/publisher/FullScreenAdActivity;->l:Lcom/vungle/publisher/db/model/LoggedException$Factory;

    .line 104
    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/vungle/publisher/FullScreenAdActivity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/FullScreenAdActivity$$InjectAdapter;->injectMembers(Lcom/vungle/publisher/FullScreenAdActivity;)V

    return-void
.end method
