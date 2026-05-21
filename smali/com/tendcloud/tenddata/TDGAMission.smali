.class public final Lcom/tendcloud/tenddata/TDGAMission;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, ""

    sput-object v0, Lcom/tendcloud/tenddata/TDGAMission;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onBegin(Ljava/lang/String;)V
    .locals 9

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "TDGAMission.onBegin()#SDK not initialized. "

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->c([Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TDGAMission.onBegin()# missionId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V

    invoke-static {}, Lcom/tendcloud/tenddata/game/bv;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tendcloud/tenddata/game/ch;

    sget-object v2, Lcom/tendcloud/tenddata/game/br;->a:Ljava/lang/String;

    sget-object v3, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    const-string/jumbo v5, ""

    const-wide/16 v6, 0x0

    sget-object v8, Lcom/tendcloud/tenddata/game/ch$a;->a:Lcom/tendcloud/tenddata/game/ch$a;

    move-object v4, p0

    invoke-direct/range {v1 .. v8}, Lcom/tendcloud/tenddata/game/ch;-><init>(Ljava/lang/String;Lcom/tendcloud/tenddata/TDGAAccount;Ljava/lang/String;Ljava/lang/String;JLcom/tendcloud/tenddata/game/ch$a;)V

    const/16 v2, 0x9

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bq;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-virtual {v0, p0}, Lcom/tendcloud/tenddata/TDGAAccount;->a(Ljava/lang/String;)V

    :cond_1
    sput-object p0, Lcom/tendcloud/tenddata/TDGAMission;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public static onCompleted(Ljava/lang/String;)V
    .locals 9

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "TDGAMission.onCompleted()#SDK not initialized. "

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->c([Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TDGAMission.onCompleted()# missionId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V

    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    if-nez v0, :cond_1

    const-wide/16 v6, 0x0

    :goto_1
    invoke-static {}, Lcom/tendcloud/tenddata/game/bv;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tendcloud/tenddata/game/ch;

    sget-object v2, Lcom/tendcloud/tenddata/game/br;->a:Ljava/lang/String;

    sget-object v3, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    const-string/jumbo v5, ""

    sget-object v8, Lcom/tendcloud/tenddata/game/ch$a;->b:Lcom/tendcloud/tenddata/game/ch$a;

    move-object v4, p0

    invoke-direct/range {v1 .. v8}, Lcom/tendcloud/tenddata/game/ch;-><init>(Ljava/lang/String;Lcom/tendcloud/tenddata/TDGAAccount;Ljava/lang/String;Ljava/lang/String;JLcom/tendcloud/tenddata/game/ch$a;)V

    const/16 v2, 0x9

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string/jumbo v0, ""

    sput-object v0, Lcom/tendcloud/tenddata/TDGAMission;->a:Ljava/lang/String;

    sget-object v0, Lcom/tendcloud/tenddata/TDGAMission;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-virtual {v0, p0}, Lcom/tendcloud/tenddata/TDGAAccount;->b(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_1
.end method

.method public static onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "TDGAMission.onFailed#SDK not initialized. "

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->c([Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TDGAMission.onFailed()# missionId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " cause:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b([Ljava/lang/String;)V

    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    if-nez v0, :cond_1

    const-wide/16 v6, 0x0

    :goto_1
    invoke-static {}, Lcom/tendcloud/tenddata/game/bv;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tendcloud/tenddata/game/ch;

    sget-object v2, Lcom/tendcloud/tenddata/game/br;->a:Ljava/lang/String;

    sget-object v3, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    sget-object v8, Lcom/tendcloud/tenddata/game/ch$a;->c:Lcom/tendcloud/tenddata/game/ch$a;

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v8}, Lcom/tendcloud/tenddata/game/ch;-><init>(Ljava/lang/String;Lcom/tendcloud/tenddata/TDGAAccount;Ljava/lang/String;Ljava/lang/String;JLcom/tendcloud/tenddata/game/ch$a;)V

    const/16 v2, 0x9

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string/jumbo v0, ""

    sput-object v0, Lcom/tendcloud/tenddata/TDGAMission;->a:Ljava/lang/String;

    sget-object v0, Lcom/tendcloud/tenddata/TDGAMission;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-virtual {v0, p0}, Lcom/tendcloud/tenddata/TDGAAccount;->b(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_1
.end method
