.class Lcom/anansimobile/nge/RootService$2;
.super Ljava/util/TimerTask;
.source "RootService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anansimobile/nge/RootService;->ClearNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anansimobile/nge/RootService;

.field final synthetic val$n:J


# direct methods
.method constructor <init>(Lcom/anansimobile/nge/RootService;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/anansimobile/nge/RootService;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/anansimobile/nge/RootService$2;->this$0:Lcom/anansimobile/nge/RootService;

    iput-wide p2, p0, Lcom/anansimobile/nge/RootService$2;->val$n:J

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 159
    const-string/jumbo v0, "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/anansimobile/nge/RootService;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    const-string/jumbo v0, "~~~~~~~~~~~~~~~delay: %d~~~~~~~~~~~~~~~~~~~~~~~~"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/anansimobile/nge/RootService$2;->val$n:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/anansimobile/nge/RootService;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    return-void
.end method
