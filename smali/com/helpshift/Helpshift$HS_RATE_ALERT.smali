.class public final enum Lcom/helpshift/Helpshift$HS_RATE_ALERT;
.super Ljava/lang/Enum;
.source "Helpshift.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/Helpshift;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HS_RATE_ALERT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/helpshift/Helpshift$HS_RATE_ALERT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpshift/Helpshift$HS_RATE_ALERT;

.field public static final enum CLOSE:Lcom/helpshift/Helpshift$HS_RATE_ALERT;

.field public static final enum FAIL:Lcom/helpshift/Helpshift$HS_RATE_ALERT;

.field public static final enum FEEDBACK:Lcom/helpshift/Helpshift$HS_RATE_ALERT;

.field public static final enum SUCCESS:Lcom/helpshift/Helpshift$HS_RATE_ALERT;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/helpshift/Helpshift$HS_RATE_ALERT;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/helpshift/Helpshift$HS_RATE_ALERT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/Helpshift$HS_RATE_ALERT;->SUCCESS:Lcom/helpshift/Helpshift$HS_RATE_ALERT;

    .line 54
    new-instance v0, Lcom/helpshift/Helpshift$HS_RATE_ALERT;

    const-string/jumbo v1, "FEEDBACK"

    invoke-direct {v0, v1, v3}, Lcom/helpshift/Helpshift$HS_RATE_ALERT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/Helpshift$HS_RATE_ALERT;->FEEDBACK:Lcom/helpshift/Helpshift$HS_RATE_ALERT;

    .line 59
    new-instance v0, Lcom/helpshift/Helpshift$HS_RATE_ALERT;

    const-string/jumbo v1, "CLOSE"

    invoke-direct {v0, v1, v4}, Lcom/helpshift/Helpshift$HS_RATE_ALERT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/Helpshift$HS_RATE_ALERT;->CLOSE:Lcom/helpshift/Helpshift$HS_RATE_ALERT;

    .line 64
    new-instance v0, Lcom/helpshift/Helpshift$HS_RATE_ALERT;

    const-string/jumbo v1, "FAIL"

    invoke-direct {v0, v1, v5}, Lcom/helpshift/Helpshift$HS_RATE_ALERT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/Helpshift$HS_RATE_ALERT;->FAIL:Lcom/helpshift/Helpshift$HS_RATE_ALERT;

    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/helpshift/Helpshift$HS_RATE_ALERT;

    sget-object v1, Lcom/helpshift/Helpshift$HS_RATE_ALERT;->SUCCESS:Lcom/helpshift/Helpshift$HS_RATE_ALERT;

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/Helpshift$HS_RATE_ALERT;->FEEDBACK:Lcom/helpshift/Helpshift$HS_RATE_ALERT;

    aput-object v1, v0, v3

    sget-object v1, Lcom/helpshift/Helpshift$HS_RATE_ALERT;->CLOSE:Lcom/helpshift/Helpshift$HS_RATE_ALERT;

    aput-object v1, v0, v4

    sget-object v1, Lcom/helpshift/Helpshift$HS_RATE_ALERT;->FAIL:Lcom/helpshift/Helpshift$HS_RATE_ALERT;

    aput-object v1, v0, v5

    sput-object v0, Lcom/helpshift/Helpshift$HS_RATE_ALERT;->$VALUES:[Lcom/helpshift/Helpshift$HS_RATE_ALERT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpshift/Helpshift$HS_RATE_ALERT;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v0, Lcom/helpshift/Helpshift$HS_RATE_ALERT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/helpshift/Helpshift$HS_RATE_ALERT;

    return-object v0
.end method

.method public static values()[Lcom/helpshift/Helpshift$HS_RATE_ALERT;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/helpshift/Helpshift$HS_RATE_ALERT;->$VALUES:[Lcom/helpshift/Helpshift$HS_RATE_ALERT;

    invoke-virtual {v0}, [Lcom/helpshift/Helpshift$HS_RATE_ALERT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpshift/Helpshift$HS_RATE_ALERT;

    return-object v0
.end method
