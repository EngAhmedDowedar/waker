.class final Lcom/anansimobile/nge/NGReachability$1;
.super Ljava/util/TimerTask;
.source "NGReachability.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anansimobile/nge/NGReachability;->startCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Lcom/anansimobile/nge/NGReachability;->access$000()I

    move-result v0

    .line 29
    .local v0, "st":I
    invoke-static {}, Lcom/anansimobile/nge/NGReachability;->access$100()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 30
    invoke-static {v0}, Lcom/anansimobile/nge/NGReachability;->access$102(I)I

    .line 31
    invoke-static {}, Lcom/anansimobile/nge/NGReachability;->access$100()I

    move-result v1

    invoke-static {v1}, Lcom/anansimobile/nge/NGReachability;->access$200(I)V

    .line 33
    :cond_0
    return-void
.end method
