.class Lcom/tendcloud/tenddata/game/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tendcloud/tenddata/game/q;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/q;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/r;->b:Lcom/tendcloud/tenddata/game/q;

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/r;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/r;->b:Lcom/tendcloud/tenddata/game/q;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/r;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/q;->a(Lcom/tendcloud/tenddata/game/q;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/s;

    move-result-object v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/r;->b:Lcom/tendcloud/tenddata/game/q;

    iget-boolean v1, v1, Lcom/tendcloud/tenddata/game/q;->g:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/r;->b:Lcom/tendcloud/tenddata/game/q;

    iput-object v0, v1, Lcom/tendcloud/tenddata/game/q;->a:Lcom/tendcloud/tenddata/game/s;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/r;->b:Lcom/tendcloud/tenddata/game/q;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/r;->b:Lcom/tendcloud/tenddata/game/q;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    const-wide/16 v0, 0xbb8

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/r;->b:Lcom/tendcloud/tenddata/game/q;

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/q;->a:Lcom/tendcloud/tenddata/game/s;

    invoke-interface {v0}, Lcom/tendcloud/tenddata/game/s;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/r;->b:Lcom/tendcloud/tenddata/game/q;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/r;->b:Lcom/tendcloud/tenddata/game/q;

    iget-object v1, v1, Lcom/tendcloud/tenddata/game/q;->a:Lcom/tendcloud/tenddata/game/s;

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/q;->a(Lcom/tendcloud/tenddata/game/q;Lcom/tendcloud/tenddata/game/s;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
