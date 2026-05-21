.class public final enum Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;
.super Ljava/lang/Enum;
.source "CatalogEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Managed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;

.field public static final enum MANAGED:Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;

.field public static final enum SUBSCRIPTION:Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;

.field public static final enum UNMANAGED:Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;

    const-string/jumbo v1, "MANAGED"

    invoke-direct {v0, v1, v2}, Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;->MANAGED:Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;

    new-instance v0, Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;

    const-string/jumbo v1, "UNMANAGED"

    invoke-direct {v0, v1, v3}, Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;->UNMANAGED:Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;

    new-instance v0, Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;

    const-string/jumbo v1, "SUBSCRIPTION"

    invoke-direct {v0, v1, v4}, Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;->SUBSCRIPTION:Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;

    sget-object v1, Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;->MANAGED:Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;

    aput-object v1, v0, v2

    sget-object v1, Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;->UNMANAGED:Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;

    aput-object v1, v0, v3

    sget-object v1, Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;->SUBSCRIPTION:Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;

    aput-object v1, v0, v4

    sput-object v0, Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;->$VALUES:[Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;

    return-object v0
.end method

.method public static values()[Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;->$VALUES:[Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;

    invoke-virtual {v0}, [Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;

    return-object v0
.end method
