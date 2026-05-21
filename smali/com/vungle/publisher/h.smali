.class public final Lcom/vungle/publisher/h;
.super Lcom/vungle/publisher/j;
.source "vungle"


# instance fields
.field public final a:Lcom/vungle/publisher/db/model/EventTracking$a;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/db/model/Ad;Lcom/vungle/publisher/db/model/EventTracking$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/db/model/Ad",
            "<***>;",
            "Lcom/vungle/publisher/db/model/EventTracking$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/vungle/publisher/j;-><init>(Lcom/vungle/publisher/db/model/Ad;)V

    .line 11
    iput-object p2, p0, Lcom/vungle/publisher/h;->a:Lcom/vungle/publisher/db/model/EventTracking$a;

    .line 12
    return-void
.end method
