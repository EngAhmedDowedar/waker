.class final Lcom/vungle/publisher/dg;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/vungle/publisher/dn;

.field private final b:Lcom/vungle/publisher/di;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/di;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/vungle/publisher/dg;->b:Lcom/vungle/publisher/di;

    .line 32
    new-instance v0, Lcom/vungle/publisher/dn;

    invoke-direct {v0}, Lcom/vungle/publisher/dn;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/dg;->a:Lcom/vungle/publisher/dn;

    .line 33
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vungle/publisher/dg;->a:Lcom/vungle/publisher/dn;

    invoke-virtual {v0}, Lcom/vungle/publisher/dn;->a()Lcom/vungle/publisher/dm;

    move-result-object v0

    .line 44
    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No pending post available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/vungle/publisher/dg;->b:Lcom/vungle/publisher/di;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/di;->a(Lcom/vungle/publisher/dm;)V

    .line 48
    return-void
.end method
