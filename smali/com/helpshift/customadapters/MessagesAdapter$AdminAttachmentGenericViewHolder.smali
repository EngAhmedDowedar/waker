.class Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;
.super Ljava/lang/Object;
.source "MessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/customadapters/MessagesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdminAttachmentGenericViewHolder"
.end annotation


# instance fields
.field public downloadButton:Landroid/widget/ImageButton;

.field public fileName:Landroid/widget/TextView;

.field public fileSize:Landroid/widget/TextView;

.field public fileType:Landroid/widget/TextView;

.field public launchButton:Landroid/widget/ImageButton;

.field public progress:Landroid/widget/ProgressBar;

.field public secondaryProgress:Landroid/widget/ProgressBar;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/helpshift/customadapters/MessagesAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/helpshift/customadapters/MessagesAdapter$1;

    .prologue
    .line 776
    invoke-direct {p0}, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;-><init>()V

    return-void
.end method
