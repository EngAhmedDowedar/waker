.class public Lcom/vungle/publisher/ad/prepare/PrepareViewableRunnable$Factory;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ad/prepare/PrepareViewableRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ad/prepare/PrepareViewableRunnable;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/bk;Lcom/vungle/publisher/cw;)Lcom/vungle/publisher/ad/prepare/PrepareViewableRunnable;
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/vungle/publisher/ad/prepare/PrepareViewableRunnable$Factory;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ad/prepare/PrepareViewableRunnable;

    .line 108
    iput-object p1, v0, Lcom/vungle/publisher/ad/prepare/PrepareViewableRunnable;->a:Lcom/vungle/publisher/bk;

    .line 109
    invoke-interface {p1}, Lcom/vungle/publisher/bk;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/ad/prepare/PrepareViewableRunnable;->b:Ljava/lang/String;

    .line 110
    iput-object p2, v0, Lcom/vungle/publisher/ad/prepare/PrepareViewableRunnable;->c:Lcom/vungle/publisher/cw;

    .line 111
    return-object v0
.end method
