.class final Lcom/tendcloud/tenddata/game/bd;
.super Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/az;->a()Lcom/tendcloud/tenddata/game/az;

    move-result-object v1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/az;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/tendcloud/tenddata/game/bp;->b:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tendcloud/tenddata/game/bb;

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/az;->b(Lcom/tendcloud/tenddata/game/bb;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tendcloud/tenddata/game/bb;

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/az;->a(Lcom/tendcloud/tenddata/game/bb;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/az;->c()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/az;->d()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
