.class public Lcom/anansimobile/nge/NGHttpSession;
.super Ljava/lang/Object;
.source "NGHttpSession.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doPut(Ljava/lang/String;[BJ)V
    .locals 0
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "l"    # J

    .prologue
    .line 6
    invoke-static {p0}, Lcom/anansimobile/nge/NextGenEngine;->nge_log(Ljava/lang/String;)V

    .line 7
    return-void
.end method
