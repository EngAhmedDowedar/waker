.class Lcom/helpshift/customadapters/MessagesAdapter$RARViewHolder;
.super Ljava/lang/Object;
.source "MessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/customadapters/MessagesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RARViewHolder"
.end annotation


# instance fields
.field public message:Landroid/widget/TextView;

.field public progress:Landroid/widget/ProgressBar;

.field public reviewBtn:Landroid/widget/ImageButton;

.field public separatorLine:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/helpshift/customadapters/MessagesAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/helpshift/customadapters/MessagesAdapter$1;

    .prologue
    .line 765
    invoke-direct {p0}, Lcom/helpshift/customadapters/MessagesAdapter$RARViewHolder;-><init>()V

    return-void
.end method
