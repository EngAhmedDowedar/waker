.class public final Lcom/vungle/publisher/net/http/DownloadHttpGateway$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/net/http/DownloadHttpGateway;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/bk;

.field final synthetic b:Lcom/vungle/publisher/cw;

.field final synthetic c:Lcom/vungle/publisher/net/http/DownloadHttpGateway;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/net/http/DownloadHttpGateway;Lcom/vungle/publisher/bk;Lcom/vungle/publisher/cw;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/vungle/publisher/net/http/DownloadHttpGateway$1;->c:Lcom/vungle/publisher/net/http/DownloadHttpGateway;

    iput-object p2, p0, Lcom/vungle/publisher/net/http/DownloadHttpGateway$1;->a:Lcom/vungle/publisher/bk;

    iput-object p3, p0, Lcom/vungle/publisher/net/http/DownloadHttpGateway$1;->b:Lcom/vungle/publisher/cw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/net/http/DownloadHttpGateway$1;->c:Lcom/vungle/publisher/net/http/DownloadHttpGateway;

    iget-object v0, v0, Lcom/vungle/publisher/net/http/DownloadHttpGateway;->a:Lcom/vungle/publisher/net/http/DownloadHttpTransactionFactory;

    iget-object v1, p0, Lcom/vungle/publisher/net/http/DownloadHttpGateway$1;->a:Lcom/vungle/publisher/bk;

    invoke-interface {v1}, Lcom/vungle/publisher/bk;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/publisher/net/http/DownloadHttpGateway$1;->a:Lcom/vungle/publisher/bk;

    invoke-interface {v2}, Lcom/vungle/publisher/bk;->f()Lcom/vungle/publisher/bj$b;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/publisher/net/http/DownloadHttpGateway$1;->a:Lcom/vungle/publisher/bk;

    invoke-interface {v3}, Lcom/vungle/publisher/bk;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vungle/publisher/net/http/DownloadHttpGateway$1;->a:Lcom/vungle/publisher/bk;

    invoke-interface {v4}, Lcom/vungle/publisher/bk;->k()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/vungle/publisher/net/http/DownloadHttpGateway$1;->b:Lcom/vungle/publisher/cw;

    invoke-virtual/range {v0 .. v5}, Lcom/vungle/publisher/net/http/DownloadHttpTransactionFactory;->a(Ljava/lang/String;Lcom/vungle/publisher/bj$b;Ljava/lang/String;Ljava/lang/String;Lcom/vungle/publisher/cw;)Lcom/vungle/publisher/net/http/HttpTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/net/http/HttpTransaction;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    iget-object v1, p0, Lcom/vungle/publisher/net/http/DownloadHttpGateway$1;->c:Lcom/vungle/publisher/net/http/DownloadHttpGateway;

    iget-object v1, v1, Lcom/vungle/publisher/net/http/DownloadHttpGateway;->d:Lcom/vungle/publisher/db/model/LoggedException$Factory;

    const-string/jumbo v2, "VungleNetwork"

    const-string/jumbo v3, "error requesting streaming ad"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/db/model/LoggedException$Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
