.class public final enum Lcom/vungle/publisher/co;
.super Ljava/lang/Enum;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/publisher/co;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vungle/publisher/co;

.field public static final enum b:Lcom/vungle/publisher/co;

.field private static final synthetic c:[Lcom/vungle/publisher/co;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/vungle/publisher/co;

    const-string/jumbo v1, "mobile"

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/co;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/co;->a:Lcom/vungle/publisher/co;

    .line 5
    new-instance v0, Lcom/vungle/publisher/co;

    const-string/jumbo v1, "wifi"

    invoke-direct {v0, v1, v3}, Lcom/vungle/publisher/co;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/co;->b:Lcom/vungle/publisher/co;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/vungle/publisher/co;

    sget-object v1, Lcom/vungle/publisher/co;->a:Lcom/vungle/publisher/co;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/publisher/co;->b:Lcom/vungle/publisher/co;

    aput-object v1, v0, v3

    sput-object v0, Lcom/vungle/publisher/co;->c:[Lcom/vungle/publisher/co;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/publisher/co;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/vungle/publisher/co;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/co;

    return-object v0
.end method

.method public static values()[Lcom/vungle/publisher/co;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/vungle/publisher/co;->c:[Lcom/vungle/publisher/co;

    invoke-virtual {v0}, [Lcom/vungle/publisher/co;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/co;

    return-object v0
.end method
