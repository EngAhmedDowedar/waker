.class public final Lcom/vungle/publisher/cu$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/cu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/vungle/publisher/cu;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/cu;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/vungle/publisher/cu$1;->b:Lcom/vungle/publisher/cu;

    iput-object p2, p0, Lcom/vungle/publisher/cu$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/cu$1;->b:Lcom/vungle/publisher/cu;

    iget-object v0, v0, Lcom/vungle/publisher/cu;->a:Lcom/vungle/publisher/net/http/ReportExceptionsHttpTransactionFactory;

    iget-object v1, p0, Lcom/vungle/publisher/cu$1;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/net/http/ReportExceptionsHttpTransactionFactory;->a(Ljava/util/List;)Lcom/vungle/publisher/net/http/HttpTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/net/http/HttpTransaction;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    const-string/jumbo v1, "VungleData"

    const-string/jumbo v2, "error sending logged exceptions"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
