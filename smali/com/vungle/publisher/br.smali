.class public final enum Lcom/vungle/publisher/br;
.super Ljava/lang/Enum;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/publisher/br;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vungle/publisher/br;

.field public static final enum b:Lcom/vungle/publisher/br;

.field private static final synthetic d:[Lcom/vungle/publisher/br;


# instance fields
.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/vungle/publisher/br;

    const-string/jumbo v1, "GINGERBREAD"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v3, v2}, Lcom/vungle/publisher/br;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vungle/publisher/br;->a:Lcom/vungle/publisher/br;

    .line 5
    new-instance v0, Lcom/vungle/publisher/br;

    const-string/jumbo v1, "KITKAT"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v4, v2}, Lcom/vungle/publisher/br;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vungle/publisher/br;->b:Lcom/vungle/publisher/br;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/vungle/publisher/br;

    sget-object v1, Lcom/vungle/publisher/br;->a:Lcom/vungle/publisher/br;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vungle/publisher/br;->b:Lcom/vungle/publisher/br;

    aput-object v1, v0, v4

    sput-object v0, Lcom/vungle/publisher/br;->d:[Lcom/vungle/publisher/br;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput p3, p0, Lcom/vungle/publisher/br;->c:I

    .line 11
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/publisher/br;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/vungle/publisher/br;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/br;

    return-object v0
.end method

.method public static values()[Lcom/vungle/publisher/br;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/vungle/publisher/br;->d:[Lcom/vungle/publisher/br;

    invoke-virtual {v0}, [Lcom/vungle/publisher/br;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/br;

    return-object v0
.end method
