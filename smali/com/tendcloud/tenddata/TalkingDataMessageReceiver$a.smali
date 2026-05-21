.class final enum Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/TalkingDataMessageReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;

.field public static final enum b:Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;

.field public static final enum c:Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;

.field public static final enum d:Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;

.field private static final synthetic e:[Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;

    const-string/jumbo v1, "baidu"

    invoke-direct {v0, v1, v2}, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;->a:Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;

    new-instance v0, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;

    const-string/jumbo v1, "getui"

    invoke-direct {v0, v1, v3}, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;->b:Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;

    new-instance v0, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;

    const-string/jumbo v1, "jpush"

    invoke-direct {v0, v1, v4}, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;->c:Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;

    new-instance v0, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;

    const-string/jumbo v1, "nick"

    invoke-direct {v0, v1, v5}, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;->d:Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;

    sget-object v1, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;->a:Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;->b:Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;->c:Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;->d:Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;->e:[Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;
    .locals 1

    const-class v0, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;

    return-object v0
.end method

.method public static values()[Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;->e:[Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;

    invoke-virtual {v0}, [Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tendcloud/tenddata/TalkingDataMessageReceiver$a;

    return-object v0
.end method
