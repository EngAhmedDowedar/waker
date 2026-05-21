.class final Lcom/vungle/publisher/display/view/VideoFragment$b;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/display/view/VideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/display/view/VideoFragment;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/display/view/VideoFragment;)V
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/vungle/publisher/display/view/VideoFragment$b;->a:Lcom/vungle/publisher/display/view/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x32

    .line 780
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$b;->a:Lcom/vungle/publisher/display/view/VideoFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/display/view/VideoFragment;->c(Z)I

    move-result v0

    .line 781
    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment$b;->a:Lcom/vungle/publisher/display/view/VideoFragment;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/display/view/VideoFragment;->c(I)V

    .line 782
    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment$b;->a:Lcom/vungle/publisher/display/view/VideoFragment;

    invoke-static {v1}, Lcom/vungle/publisher/display/view/VideoFragment;->f(Lcom/vungle/publisher/display/view/VideoFragment;)Lcom/vungle/publisher/display/view/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/display/view/ProgressBar;->setCurrentTimeMillis(I)V

    .line 783
    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment$b;->a:Lcom/vungle/publisher/display/view/VideoFragment;

    iget-object v1, v1, Lcom/vungle/publisher/display/view/VideoFragment;->k:Lcom/vungle/publisher/event/EventBus;

    new-instance v2, Lcom/vungle/publisher/ad;

    invoke-direct {v2, v0}, Lcom/vungle/publisher/ad;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 789
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$b;->a:Lcom/vungle/publisher/display/view/VideoFragment;

    invoke-static {v0}, Lcom/vungle/publisher/display/view/VideoFragment;->g(Lcom/vungle/publisher/display/view/VideoFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 790
    :goto_0
    return-void

    .line 785
    :catch_0
    move-exception v0

    .line 786
    :try_start_1
    const-string/jumbo v1, "VungleAd"

    invoke-static {v1, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 789
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$b;->a:Lcom/vungle/publisher/display/view/VideoFragment;

    invoke-static {v0}, Lcom/vungle/publisher/display/view/VideoFragment;->g(Lcom/vungle/publisher/display/view/VideoFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/vungle/publisher/display/view/VideoFragment$b;->a:Lcom/vungle/publisher/display/view/VideoFragment;

    invoke-static {v1}, Lcom/vungle/publisher/display/view/VideoFragment;->g(Lcom/vungle/publisher/display/view/VideoFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    throw v0
.end method
