.class public Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry;
.super Ljava/lang/Object;
.source "CatalogEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;
    }
.end annotation


# instance fields
.field public managed:Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;

.field public nameId:I

.field public sku:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;)V
    .locals 0
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "nameId"    # I
    .param p3, "managed"    # Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry;->sku:Ljava/lang/String;

    .line 24
    iput p2, p0, Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry;->nameId:I

    .line 25
    iput-object p3, p0, Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry;->managed:Lcom/anansimobile/nge/IAB/util_v2/CatalogEntry$Managed;

    .line 26
    return-void
.end method
