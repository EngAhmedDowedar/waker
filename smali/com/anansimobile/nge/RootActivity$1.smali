.class Lcom/anansimobile/nge/RootActivity$1;
.super Ljava/lang/Object;
.source "RootActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anansimobile/nge/RootActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anansimobile/nge/RootActivity;


# direct methods
.method constructor <init>(Lcom/anansimobile/nge/RootActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/anansimobile/nge/RootActivity;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/anansimobile/nge/RootActivity$1;->this$0:Lcom/anansimobile/nge/RootActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 81
    move-object v0, p2

    check-cast v0, Lcom/anansimobile/nge/RootService$RootServiceBinder;

    .line 82
    .local v0, "binder":Lcom/anansimobile/nge/RootService$RootServiceBinder;
    invoke-virtual {v0}, Lcom/anansimobile/nge/RootService$RootServiceBinder;->getService()Lcom/anansimobile/nge/RootService;

    move-result-object v1

    sput-object v1, Lcom/anansimobile/nge/NextGenEngine;->sMainService:Lcom/anansimobile/nge/RootService;

    .line 83
    sget-object v1, Lcom/anansimobile/nge/NextGenEngine;->sMainService:Lcom/anansimobile/nge/RootService;

    invoke-virtual {v1}, Lcom/anansimobile/nge/RootService;->ClearNotification()V

    .line 84
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 75
    const-string/jumbo v0, "Service disconnected: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/anansimobile/nge/NextGenEngine;->nge_logf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/anansimobile/nge/NextGenEngine;->sMainService:Lcom/anansimobile/nge/RootService;

    .line 77
    return-void
.end method
