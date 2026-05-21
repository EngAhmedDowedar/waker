.class public final Lcom/helpshift/D$dimen;
.super Ljava/lang/Object;
.source "D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dimen"
.end annotation


# static fields
.field public static hs__actionbar_compat_button_width:I

.field public static hs__actionbar_compat_height:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 181
    sget v0, Lcom/helpshift/R$dimen;->hs__actionbar_compat_button_width:I

    sput v0, Lcom/helpshift/D$dimen;->hs__actionbar_compat_button_width:I

    .line 182
    sget v0, Lcom/helpshift/R$dimen;->hs__actionbar_compat_height:I

    sput v0, Lcom/helpshift/D$dimen;->hs__actionbar_compat_height:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
