.class public final Lcom/helpshift/D$menu;
.super Ljava/lang/Object;
.source "D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "menu"
.end annotation


# static fields
.field public static hs__actionbar_indeterminate_progress:I

.field public static hs__add_conversation_menu:I

.field public static hs__faqs_fragment:I

.field public static hs__messages_menu:I

.field public static hs__search_on_conversation:I

.field public static hs__show_conversation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/helpshift/R$menu;->hs__show_conversation:I

    sput v0, Lcom/helpshift/D$menu;->hs__show_conversation:I

    .line 45
    sget v0, Lcom/helpshift/R$menu;->hs__add_conversation_menu:I

    sput v0, Lcom/helpshift/D$menu;->hs__add_conversation_menu:I

    .line 46
    sget v0, Lcom/helpshift/R$menu;->hs__faqs_fragment:I

    sput v0, Lcom/helpshift/D$menu;->hs__faqs_fragment:I

    .line 47
    sget v0, Lcom/helpshift/R$menu;->hs__messages_menu:I

    sput v0, Lcom/helpshift/D$menu;->hs__messages_menu:I

    .line 48
    sget v0, Lcom/helpshift/R$menu;->hs__search_on_conversation:I

    sput v0, Lcom/helpshift/D$menu;->hs__search_on_conversation:I

    .line 49
    sget v0, Lcom/helpshift/R$menu;->hs__actionbar_indeterminate_progress:I

    sput v0, Lcom/helpshift/D$menu;->hs__actionbar_indeterminate_progress:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
