.class Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;
.super Ljava/lang/Object;
.source "MessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/customadapters/MessagesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdminAttachmentImageViewHolder"
.end annotation


# instance fields
.field public downloadBtn:Landroid/widget/ImageButton;

.field public image:Landroid/widget/ImageView;

.field public progress:Landroid/widget/ProgressBar;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/helpshift/customadapters/MessagesAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/helpshift/customadapters/MessagesAdapter$1;

    .prologue
    .line 786
    invoke-direct {p0}, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;-><init>()V

    return-void
.end method
