.class Lcom/anansimobile/nge/RootService$1;
.super Ljava/util/TimerTask;
.source "RootService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anansimobile/nge/RootService;->CheckNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anansimobile/nge/RootService;


# direct methods
.method constructor <init>(Lcom/anansimobile/nge/RootService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/anansimobile/nge/RootService;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/anansimobile/nge/RootService$1;->this$0:Lcom/anansimobile/nge/RootService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method
