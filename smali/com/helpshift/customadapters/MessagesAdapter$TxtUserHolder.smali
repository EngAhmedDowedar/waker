.class Lcom/helpshift/customadapters/MessagesAdapter$TxtUserHolder;
.super Ljava/lang/Object;
.source "MessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/customadapters/MessagesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TxtUserHolder"
.end annotation


# instance fields
.field public errorImage:Landroid/widget/ImageView;

.field public text1:Landroid/widget/TextView;

.field public text2:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/helpshift/customadapters/MessagesAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/helpshift/customadapters/MessagesAdapter$1;

    .prologue
    .line 717
    invoke-direct {p0}, Lcom/helpshift/customadapters/MessagesAdapter$TxtUserHolder;-><init>()V

    return-void
.end method
