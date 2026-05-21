.class public Lcom/vungle/publisher/ba;
.super Lcom/vungle/publisher/j;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/bc;


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/db/model/Ad;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/db/model/Ad",
            "<***>;Z)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/vungle/publisher/j;-><init>(Lcom/vungle/publisher/db/model/Ad;)V

    .line 14
    iput-boolean p2, p0, Lcom/vungle/publisher/ba;->a:Z

    .line 15
    return-void
.end method
