.class Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;
.super Ljava/lang/Object;
.source "NGTextInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anansimobile/nge/NGTextInputConn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponderInfo"
.end annotation


# instance fields
.field private mPtr:J

.field final synthetic this$0:Lcom/anansimobile/nge/NGTextInputConn;


# direct methods
.method public constructor <init>(Lcom/anansimobile/nge/NGTextInputConn;J)V
    .locals 2
    .param p2, "mPtr"    # J

    .prologue
    .line 330
    iput-object p1, p0, Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;->this$0:Lcom/anansimobile/nge/NGTextInputConn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;->mPtr:J

    .line 331
    invoke-virtual {p0, p2, p3}, Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;->setPtr(J)V

    .line 332
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 344
    if-ne p0, p1, :cond_1

    .line 352
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 348
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    if-nez v2, :cond_2

    move v0, v1

    .line 349
    goto :goto_0

    .line 352
    :cond_2
    iget-wide v2, p0, Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;->mPtr:J

    check-cast p1, Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;

    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v4, p1, Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;->mPtr:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getPtr()J
    .locals 2

    .prologue
    .line 339
    iget-wide v0, p0, Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;->mPtr:J

    return-wide v0
.end method

.method public setPtr(J)V
    .locals 1
    .param p1, "mPtr"    # J

    .prologue
    .line 335
    iput-wide p1, p0, Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;->mPtr:J

    .line 336
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 362
    const-string/jumbo v0, "ResponderInfo, ptr: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/anansimobile/nge/NGTextInputConn$ResponderInfo;->mPtr:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
