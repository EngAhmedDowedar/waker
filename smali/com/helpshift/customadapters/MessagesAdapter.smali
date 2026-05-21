.class public final Lcom/helpshift/customadapters/MessagesAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;,
        Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;,
        Lcom/helpshift/customadapters/MessagesAdapter$ARViewHolder;,
        Lcom/helpshift/customadapters/MessagesAdapter$RARViewHolder;,
        Lcom/helpshift/customadapters/MessagesAdapter$SCViewHolder;,
        Lcom/helpshift/customadapters/MessagesAdapter$LocalRSCViewHolder;,
        Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;,
        Lcom/helpshift/customadapters/MessagesAdapter$CSViewHolder;,
        Lcom/helpshift/customadapters/MessagesAdapter$CBViewHolder;,
        Lcom/helpshift/customadapters/MessagesAdapter$TxtUserHolder;,
        Lcom/helpshift/customadapters/MessagesAdapter$TxtAdminHolder;
    }
.end annotation


# static fields
.field private static final TYPE_AR_MOBILE:I = 0xc

.field private static final TYPE_CA_MOBILE:I = 0x6

.field private static final TYPE_CB:I = 0x5

.field private static final TYPE_CR_MOBILE:I = 0x7

.field private static final TYPE_GENERIC_ATTACHMENT_ADMIN:I = 0x10

.field private static final TYPE_IMAGE_ATTACHMENT_ADMIN:I = 0xf

.field private static final TYPE_LOCAL_RSC:I = 0xe

.field private static final TYPE_RAR:I = 0xb

.field private static final TYPE_RSC:I = 0xd

.field private static final TYPE_SC_MOBILE:I = 0x8

.field private static final TYPE_TXT_ADMIN:I = 0x1

.field private static final TYPE_TXT_MOBILE:I = 0x2


# instance fields
.field private c:Landroid/content/Context;

.field private enableBtn:Z

.field private f:Lcom/helpshift/HSMessagesFragment;

.field private final inflater:Landroid/view/LayoutInflater;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/viewstructs/HSMsg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;ILjava/util/List;)V
    .locals 2
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/viewstructs/HSMsg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/viewstructs/HSMsg;>;"
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object v0, p1

    .line 57
    check-cast v0, Lcom/helpshift/HSMessagesFragment;

    iput-object v0, p0, Lcom/helpshift/customadapters/MessagesAdapter;->f:Lcom/helpshift/HSMessagesFragment;

    .line 58
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    .line 59
    iput-object p3, p0, Lcom/helpshift/customadapters/MessagesAdapter;->items:Ljava/util/List;

    .line 60
    iget-object v0, p0, Lcom/helpshift/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/helpshift/customadapters/MessagesAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 61
    return-void
.end method

.method static synthetic access$1100(Lcom/helpshift/customadapters/MessagesAdapter;)Lcom/helpshift/HSMessagesFragment;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/customadapters/MessagesAdapter;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/helpshift/customadapters/MessagesAdapter;->f:Lcom/helpshift/HSMessagesFragment;

    return-object v0
.end method

.method private getText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 793
    const-string/jumbo v0, "\n"

    const-string/jumbo v1, "<br/>"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setConvertView(Landroid/view/View;Lcom/helpshift/viewstructs/HSMsg;ILcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;)Landroid/view/View;
    .locals 14
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "item"    # Lcom/helpshift/viewstructs/HSMsg;
    .param p3, "position"    # I
    .param p4, "holder"    # Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;

    .prologue
    .line 544
    if-nez p1, :cond_0

    .line 545
    iget-object v8, p0, Lcom/helpshift/customadapters/MessagesAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v9, Lcom/helpshift/D$layout;->hs__msg_attachment_generic:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 547
    const v8, 0x1020014

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    move-object/from16 v0, p4

    iput-object v8, v0, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->fileName:Landroid/widget/TextView;

    .line 548
    const v8, 0x1020015

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    move-object/from16 v0, p4

    iput-object v8, v0, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->fileType:Landroid/widget/TextView;

    .line 549
    const v8, 0x1020010

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    move-object/from16 v0, p4

    iput-object v8, v0, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->fileSize:Landroid/widget/TextView;

    .line 550
    const v8, 0x1020019

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    move-object/from16 v0, p4

    iput-object v8, v0, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->downloadButton:Landroid/widget/ImageButton;

    .line 551
    iget-object v8, p0, Lcom/helpshift/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->downloadButton:Landroid/widget/ImageButton;

    invoke-virtual {v9}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/helpshift/util/Styles;->setDownloadAttachmentButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 552
    const v8, 0x102000f

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    move-object/from16 v0, p4

    iput-object v8, v0, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->secondaryProgress:Landroid/widget/ProgressBar;

    .line 553
    const v8, 0x102000d

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    move-object/from16 v0, p4

    iput-object v8, v0, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->progress:Landroid/widget/ProgressBar;

    .line 554
    const v8, 0x102001a

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    move-object/from16 v0, p4

    iput-object v8, v0, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->launchButton:Landroid/widget/ImageButton;

    .line 555
    iget-object v8, p0, Lcom/helpshift/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->launchButton:Landroid/widget/ImageButton;

    invoke-virtual {v9}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/helpshift/util/Styles;->setLaunchAttachmentButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 556
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 562
    :goto_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/helpshift/viewstructs/HSMsg;->body:Ljava/lang/String;

    invoke-direct {v1, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 563
    .local v1, "attachmentObj":Lorg/json/JSONObject;
    const-string/jumbo v8, "file-name"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 564
    .local v4, "fileName":Ljava/lang/String;
    const-string/jumbo v8, "content-type"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 565
    .local v2, "contentType":Ljava/lang/String;
    iget-object v8, p0, Lcom/helpshift/customadapters/MessagesAdapter;->f:Lcom/helpshift/HSMessagesFragment;

    invoke-virtual {v8}, Lcom/helpshift/HSMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8, v2, v4}, Lcom/helpshift/util/AttachmentUtil;->getFileType(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 569
    .local v6, "fileType":Ljava/lang/String;
    const-string/jumbo v8, "size"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 571
    .local v7, "size":I
    const/16 v8, 0x400

    if-ge v7, v8, :cond_1

    .line 572
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " B"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 578
    .local v5, "fileSize":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->fileName:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->fileType:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->fileSize:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    move-object/from16 v0, p2

    iget v8, v0, Lcom/helpshift/viewstructs/HSMsg;->state:I

    packed-switch v8, :pswitch_data_0

    .line 608
    :goto_2
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->downloadButton:Landroid/widget/ImageButton;

    new-instance v9, Lcom/helpshift/customadapters/MessagesAdapter$10;

    move/from16 v0, p3

    invoke-direct {v9, p0, v1, v0}, Lcom/helpshift/customadapters/MessagesAdapter$10;-><init>(Lcom/helpshift/customadapters/MessagesAdapter;Lorg/json/JSONObject;I)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 617
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->launchButton:Landroid/widget/ImageButton;

    new-instance v9, Lcom/helpshift/customadapters/MessagesAdapter$11;

    move-object/from16 v0, p2

    invoke-direct {v9, p0, v0}, Lcom/helpshift/customadapters/MessagesAdapter$11;-><init>(Lcom/helpshift/customadapters/MessagesAdapter;Lcom/helpshift/viewstructs/HSMsg;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    .end local v1    # "attachmentObj":Lorg/json/JSONObject;
    .end local v2    # "contentType":Ljava/lang/String;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "fileSize":Ljava/lang/String;
    .end local v6    # "fileType":Ljava/lang/String;
    .end local v7    # "size":I
    :goto_3
    return-object p1

    .line 558
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    .end local p4    # "holder":Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;
    check-cast p4, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;

    .restart local p4    # "holder":Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;
    goto :goto_0

    .line 573
    .restart local v1    # "attachmentObj":Lorg/json/JSONObject;
    .restart local v2    # "contentType":Ljava/lang/String;
    .restart local v4    # "fileName":Ljava/lang/String;
    .restart local v6    # "fileType":Ljava/lang/String;
    .restart local v7    # "size":I
    :cond_1
    const/high16 v8, 0x100000

    if-ge v7, v8, :cond_2

    .line 574
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v9, v7, 0x400

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "fileSize":Ljava/lang/String;
    goto :goto_1

    .line 576
    .end local v5    # "fileSize":Ljava/lang/String;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "%.1f"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    int-to-float v12, v7

    const/high16 v13, 0x49800000    # 1048576.0f

    div-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " MB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "fileSize":Ljava/lang/String;
    goto/16 :goto_1

    .line 583
    :pswitch_0
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->downloadButton:Landroid/widget/ImageButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 584
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->secondaryProgress:Landroid/widget/ProgressBar;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 585
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->progress:Landroid/widget/ProgressBar;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 586
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->launchButton:Landroid/widget/ImageButton;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 623
    .end local v1    # "attachmentObj":Lorg/json/JSONObject;
    .end local v2    # "contentType":Ljava/lang/String;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "fileSize":Ljava/lang/String;
    .end local v6    # "fileType":Ljava/lang/String;
    .end local v7    # "size":I
    :catch_0
    move-exception v3

    .line 624
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 589
    .end local v3    # "e":Lorg/json/JSONException;
    .restart local v1    # "attachmentObj":Lorg/json/JSONObject;
    .restart local v2    # "contentType":Ljava/lang/String;
    .restart local v4    # "fileName":Ljava/lang/String;
    .restart local v5    # "fileSize":Ljava/lang/String;
    .restart local v6    # "fileType":Ljava/lang/String;
    .restart local v7    # "size":I
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->downloadButton:Landroid/widget/ImageButton;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 590
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->secondaryProgress:Landroid/widget/ProgressBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 591
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->progress:Landroid/widget/ProgressBar;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 592
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->launchButton:Landroid/widget/ImageButton;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_2

    .line 595
    :pswitch_2
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->downloadButton:Landroid/widget/ImageButton;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 596
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->secondaryProgress:Landroid/widget/ProgressBar;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 597
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->progress:Landroid/widget/ProgressBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 598
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->launchButton:Landroid/widget/ImageButton;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_2

    .line 601
    :pswitch_3
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->downloadButton:Landroid/widget/ImageButton;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 602
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->secondaryProgress:Landroid/widget/ProgressBar;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 603
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->progress:Landroid/widget/ProgressBar;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 604
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->launchButton:Landroid/widget/ImageButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 581
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setConvertView(Landroid/view/View;Lcom/helpshift/viewstructs/HSMsg;ILcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;)Landroid/view/View;
    .locals 8
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "item"    # Lcom/helpshift/viewstructs/HSMsg;
    .param p3, "position"    # I
    .param p4, "holder"    # Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;

    .prologue
    .line 634
    if-nez p1, :cond_1

    .line 635
    iget-object v5, p0, Lcom/helpshift/customadapters/MessagesAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/helpshift/D$layout;->hs__msg_attachment_image:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 636
    const v5, 0x1020010

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p4, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->image:Landroid/widget/ImageView;

    .line 637
    const v5, 0x102000d

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p4, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->progress:Landroid/widget/ProgressBar;

    .line 638
    const v5, 0x1020019

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p4, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->downloadBtn:Landroid/widget/ImageButton;

    .line 639
    iget-object v5, p0, Lcom/helpshift/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    iget-object v6, p4, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->downloadBtn:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/helpshift/util/Styles;->setDownloadAttachmentButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 640
    invoke-virtual {p1, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 645
    :goto_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v5, p2, Lcom/helpshift/viewstructs/HSMsg;->body:Ljava/lang/String;

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 648
    .local v0, "attachmentObject":Lorg/json/JSONObject;
    new-instance v3, Ljava/io/File;

    iget-object v5, p2, Lcom/helpshift/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 649
    .local v3, "imageFile":Ljava/io/File;
    iget v5, p2, Lcom/helpshift/viewstructs/HSMsg;->state:I

    packed-switch v5, :pswitch_data_0

    .line 687
    :cond_0
    :goto_1
    iget-object v5, p4, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->downloadBtn:Landroid/widget/ImageButton;

    new-instance v6, Lcom/helpshift/customadapters/MessagesAdapter$12;

    invoke-direct {v6, p0, v0, p3}, Lcom/helpshift/customadapters/MessagesAdapter$12;-><init>(Lcom/helpshift/customadapters/MessagesAdapter;Lorg/json/JSONObject;I)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 696
    iget-object v5, p4, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->image:Landroid/widget/ImageView;

    new-instance v6, Lcom/helpshift/customadapters/MessagesAdapter$13;

    invoke-direct {v6, p0, p2}, Lcom/helpshift/customadapters/MessagesAdapter$13;-><init>(Lcom/helpshift/customadapters/MessagesAdapter;Lcom/helpshift/viewstructs/HSMsg;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    .end local v0    # "attachmentObject":Lorg/json/JSONObject;
    .end local v3    # "imageFile":Ljava/io/File;
    :goto_2
    return-object p1

    .line 642
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    .end local p4    # "holder":Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;
    check-cast p4, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;

    .restart local p4    # "holder":Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;
    goto :goto_0

    .line 651
    .restart local v0    # "attachmentObject":Lorg/json/JSONObject;
    .restart local v3    # "imageFile":Ljava/io/File;
    :pswitch_0
    :try_start_1
    iget-object v5, p4, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->image:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 652
    iget-object v5, p4, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->downloadBtn:Landroid/widget/ImageButton;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 653
    iget-object v5, p4, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->progress:Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 654
    iget-object v5, p0, Lcom/helpshift/customadapters/MessagesAdapter;->f:Lcom/helpshift/HSMessagesFragment;

    const/16 v6, 0x8

    invoke-virtual {v5, v0, p3, v6}, Lcom/helpshift/HSMessagesFragment;->downloadAdminAttachment(Lorg/json/JSONObject;II)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 705
    .end local v0    # "attachmentObject":Lorg/json/JSONObject;
    .end local v3    # "imageFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 706
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 659
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "attachmentObject":Lorg/json/JSONObject;
    .restart local v3    # "imageFile":Ljava/io/File;
    :pswitch_1
    :try_start_2
    iget-object v5, p4, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->progress:Landroid/widget/ProgressBar;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 660
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 661
    iget-object v5, p2, Lcom/helpshift/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    const/16 v6, 0xfa

    invoke-static {v5, v6}, Lcom/helpshift/util/AttachmentUtil;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 662
    .local v4, "thumbnail":Landroid/graphics/Bitmap;
    iget-object v5, p4, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 663
    iget-object v5, p4, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->image:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 665
    .end local v4    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v5, p4, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->downloadBtn:Landroid/widget/ImageButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 668
    :pswitch_2
    iget-object v5, p4, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->downloadBtn:Landroid/widget/ImageButton;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 669
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 670
    iget-object v5, p2, Lcom/helpshift/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    const/16 v6, 0xfa

    invoke-static {v5, v6}, Lcom/helpshift/util/AttachmentUtil;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 671
    .restart local v4    # "thumbnail":Landroid/graphics/Bitmap;
    iget-object v5, p4, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 672
    iget-object v5, p4, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->image:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 674
    .end local v4    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v5, p4, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->progress:Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_1

    .line 677
    :pswitch_3
    iget-object v5, p4, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->downloadBtn:Landroid/widget/ImageButton;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 678
    iget-object v5, p4, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->progress:Landroid/widget/ProgressBar;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 679
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 680
    iget-object v5, p2, Lcom/helpshift/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    const/16 v6, 0xfa

    invoke-static {v5, v6}, Lcom/helpshift/util/AttachmentUtil;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 681
    .local v2, "imageBitmap":Landroid/graphics/Bitmap;
    iget-object v5, p4, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 682
    iget-object v5, p4, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->image:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 649
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setConvertView(Landroid/view/View;Lcom/helpshift/viewstructs/HSMsg;ILcom/helpshift/customadapters/MessagesAdapter$CBViewHolder;)Landroid/view/View;
    .locals 5
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "item"    # Lcom/helpshift/viewstructs/HSMsg;
    .param p3, "position"    # I
    .param p4, "holder"    # Lcom/helpshift/customadapters/MessagesAdapter$CBViewHolder;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 208
    if-nez p1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/helpshift/customadapters/MessagesAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/helpshift/D$layout;->hs__msg_confirmation_box:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 210
    iget-object v0, p0, Lcom/helpshift/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    sget v1, Lcom/helpshift/D$id;->admin_message:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/util/Styles;->setAdminChatBubbleColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 212
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$CBViewHolder;->text1:Landroid/widget/TextView;

    .line 213
    const v0, 0x102000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$CBViewHolder;->progress:Landroid/widget/ProgressBar;

    .line 214
    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$CBViewHolder;->btnContainer:Landroid/widget/LinearLayout;

    .line 215
    const v0, 0x1020019

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$CBViewHolder;->button1:Landroid/widget/ImageButton;

    .line 216
    const v0, 0x102001a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$CBViewHolder;->button2:Landroid/widget/ImageButton;

    .line 217
    iget-object v0, p0, Lcom/helpshift/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$CBViewHolder;->button1:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/util/Styles;->setAcceptButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 218
    iget-object v0, p0, Lcom/helpshift/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$CBViewHolder;->button2:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/util/Styles;->setRejectButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 219
    invoke-virtual {p1, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 224
    :goto_0
    iget-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$CBViewHolder;->text1:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/helpshift/viewstructs/HSMsg;->body:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/helpshift/customadapters/MessagesAdapter;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p2, Lcom/helpshift/viewstructs/HSMsg;->inProgress:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$CBViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 228
    iget-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$CBViewHolder;->btnContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 259
    :goto_1
    return-object p1

    .line 221
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    .end local p4    # "holder":Lcom/helpshift/customadapters/MessagesAdapter$CBViewHolder;
    check-cast p4, Lcom/helpshift/customadapters/MessagesAdapter$CBViewHolder;

    .restart local p4    # "holder":Lcom/helpshift/customadapters/MessagesAdapter$CBViewHolder;
    goto :goto_0

    .line 229
    :cond_1
    iget-object v0, p2, Lcom/helpshift/viewstructs/HSMsg;->invisible:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 230
    iget-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$CBViewHolder;->btnContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 231
    iget-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$CBViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 233
    iget-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$CBViewHolder;->button1:Landroid/widget/ImageButton;

    new-instance v1, Lcom/helpshift/customadapters/MessagesAdapter$2;

    invoke-direct {v1, p0, p2, p3}, Lcom/helpshift/customadapters/MessagesAdapter$2;-><init>(Lcom/helpshift/customadapters/MessagesAdapter;Lcom/helpshift/viewstructs/HSMsg;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$CBViewHolder;->button2:Landroid/widget/ImageButton;

    new-instance v1, Lcom/helpshift/customadapters/MessagesAdapter$3;

    invoke-direct {v1, p0, p2, p3}, Lcom/helpshift/customadapters/MessagesAdapter$3;-><init>(Lcom/helpshift/customadapters/MessagesAdapter;Lcom/helpshift/viewstructs/HSMsg;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$CBViewHolder;->button1:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/helpshift/customadapters/MessagesAdapter;->enableBtn:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 252
    iget-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$CBViewHolder;->button2:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/helpshift/customadapters/MessagesAdapter;->enableBtn:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1

    .line 255
    :cond_2
    iget-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$CBViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 256
    iget-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$CBViewHolder;->btnContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private setConvertView(Landroid/view/View;Lcom/helpshift/viewstructs/HSMsg;ILcom/helpshift/customadapters/MessagesAdapter$LocalRSCViewHolder;)Landroid/view/View;
    .locals 6
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "item"    # Lcom/helpshift/viewstructs/HSMsg;
    .param p3, "position"    # I
    .param p4, "holder"    # Lcom/helpshift/customadapters/MessagesAdapter$LocalRSCViewHolder;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 393
    if-nez p1, :cond_1

    .line 394
    iget-object v1, p0, Lcom/helpshift/customadapters/MessagesAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/helpshift/D$layout;->hs__local_msg_request_screenshot:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 395
    iget-object v1, p0, Lcom/helpshift/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    sget v2, Lcom/helpshift/D$id;->user_message:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/helpshift/util/Styles;->setUserChatBubbleColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 397
    const v1, 0x102000b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$LocalRSCViewHolder;->imagePreview:Landroid/widget/LinearLayout;

    .line 398
    const v1, 0x102000d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$LocalRSCViewHolder;->progress:Landroid/widget/ProgressBar;

    .line 399
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$LocalRSCViewHolder;->image:Landroid/widget/ImageView;

    .line 400
    const v1, 0x102001a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$LocalRSCViewHolder;->changeBtn:Landroid/widget/ImageButton;

    .line 401
    const v1, 0x102001b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$LocalRSCViewHolder;->doneBtn:Landroid/widget/ImageButton;

    .line 402
    const v1, 0x102002b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$LocalRSCViewHolder;->separatorLine:Landroid/view/View;

    .line 404
    iget-object v1, p0, Lcom/helpshift/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    iget-object v2, p4, Lcom/helpshift/customadapters/MessagesAdapter$LocalRSCViewHolder;->doneBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/helpshift/util/Styles;->setAcceptButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 405
    iget-object v1, p0, Lcom/helpshift/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    iget-object v2, p4, Lcom/helpshift/customadapters/MessagesAdapter$LocalRSCViewHolder;->changeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/helpshift/util/Styles;->setRejectButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 407
    invoke-virtual {p1, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 412
    :goto_0
    iget-object v1, p2, Lcom/helpshift/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    const/16 v2, 0xfa

    invoke-static {v1, v2}, Lcom/helpshift/util/AttachmentUtil;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 413
    .local v0, "screenshotImage":Landroid/graphics/Bitmap;
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$LocalRSCViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 415
    iget-object v1, p2, Lcom/helpshift/viewstructs/HSMsg;->inProgress:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 416
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$LocalRSCViewHolder;->imagePreview:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 417
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$LocalRSCViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 418
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$LocalRSCViewHolder;->separatorLine:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 419
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$LocalRSCViewHolder;->changeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 420
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$LocalRSCViewHolder;->doneBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 447
    :cond_0
    :goto_1
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$LocalRSCViewHolder;->changeBtn:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lcom/helpshift/customadapters/MessagesAdapter;->enableBtn:Z

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 448
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$LocalRSCViewHolder;->doneBtn:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lcom/helpshift/customadapters/MessagesAdapter;->enableBtn:Z

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 450
    return-object p1

    .line 409
    .end local v0    # "screenshotImage":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    .end local p4    # "holder":Lcom/helpshift/customadapters/MessagesAdapter$LocalRSCViewHolder;
    check-cast p4, Lcom/helpshift/customadapters/MessagesAdapter$LocalRSCViewHolder;

    .restart local p4    # "holder":Lcom/helpshift/customadapters/MessagesAdapter$LocalRSCViewHolder;
    goto :goto_0

    .line 421
    .restart local v0    # "screenshotImage":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v1, p2, Lcom/helpshift/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 422
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$LocalRSCViewHolder;->imagePreview:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 423
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$LocalRSCViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 424
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$LocalRSCViewHolder;->separatorLine:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 425
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$LocalRSCViewHolder;->changeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 426
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$LocalRSCViewHolder;->doneBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 427
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$LocalRSCViewHolder;->changeBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/helpshift/customadapters/MessagesAdapter$7;

    invoke-direct {v2, p0, p2, p3}, Lcom/helpshift/customadapters/MessagesAdapter$7;-><init>(Lcom/helpshift/customadapters/MessagesAdapter;Lcom/helpshift/viewstructs/HSMsg;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$LocalRSCViewHolder;->doneBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/helpshift/customadapters/MessagesAdapter$8;

    invoke-direct {v2, p0, p2, p3}, Lcom/helpshift/customadapters/MessagesAdapter$8;-><init>(Lcom/helpshift/customadapters/MessagesAdapter;Lcom/helpshift/viewstructs/HSMsg;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 443
    :cond_3
    iget-object v1, p2, Lcom/helpshift/viewstructs/HSMsg;->invisible:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$LocalRSCViewHolder;->imagePreview:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private setConvertView(Landroid/view/View;Lcom/helpshift/viewstructs/HSMsg;ILcom/helpshift/customadapters/MessagesAdapter$RARViewHolder;)Landroid/view/View;
    .locals 5
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "item"    # Lcom/helpshift/viewstructs/HSMsg;
    .param p3, "position"    # I
    .param p4, "holder"    # Lcom/helpshift/customadapters/MessagesAdapter$RARViewHolder;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 485
    if-nez p1, :cond_0

    .line 486
    iget-object v0, p0, Lcom/helpshift/customadapters/MessagesAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/helpshift/D$layout;->hs__msg_review_request:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 487
    iget-object v0, p0, Lcom/helpshift/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    sget v1, Lcom/helpshift/D$id;->admin_message:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/util/Styles;->setAdminChatBubbleColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 489
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$RARViewHolder;->message:Landroid/widget/TextView;

    .line 490
    const v0, 0x102000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$RARViewHolder;->progress:Landroid/widget/ProgressBar;

    .line 491
    const v0, 0x1020019

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$RARViewHolder;->reviewBtn:Landroid/widget/ImageButton;

    .line 492
    iget-object v0, p0, Lcom/helpshift/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RARViewHolder;->reviewBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/util/Styles;->setReviewButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 493
    const v0, 0x102002b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$RARViewHolder;->separatorLine:Landroid/view/View;

    .line 494
    invoke-virtual {p1, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 499
    :goto_0
    iget-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$RARViewHolder;->message:Landroid/widget/TextView;

    sget v1, Lcom/helpshift/D$string;->hs__review_request_message:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 501
    iget-object v0, p2, Lcom/helpshift/viewstructs/HSMsg;->inProgress:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$RARViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 503
    iget-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$RARViewHolder;->reviewBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 504
    iget-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$RARViewHolder;->separatorLine:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 523
    :goto_1
    return-object p1

    .line 496
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    .end local p4    # "holder":Lcom/helpshift/customadapters/MessagesAdapter$RARViewHolder;
    check-cast p4, Lcom/helpshift/customadapters/MessagesAdapter$RARViewHolder;

    .restart local p4    # "holder":Lcom/helpshift/customadapters/MessagesAdapter$RARViewHolder;
    goto :goto_0

    .line 505
    :cond_1
    iget-object v0, p2, Lcom/helpshift/viewstructs/HSMsg;->invisible:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 506
    iget-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$RARViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 507
    iget-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$RARViewHolder;->reviewBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 508
    iget-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$RARViewHolder;->separatorLine:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 509
    iget-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$RARViewHolder;->reviewBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/helpshift/customadapters/MessagesAdapter$9;

    invoke-direct {v1, p0, p2, p3}, Lcom/helpshift/customadapters/MessagesAdapter$9;-><init>(Lcom/helpshift/customadapters/MessagesAdapter;Lcom/helpshift/viewstructs/HSMsg;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 518
    :cond_2
    iget-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$RARViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 519
    iget-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$RARViewHolder;->reviewBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 520
    iget-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$RARViewHolder;->separatorLine:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private setConvertView(Landroid/view/View;Lcom/helpshift/viewstructs/HSMsg;ILcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;)Landroid/view/View;
    .locals 7
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "item"    # Lcom/helpshift/viewstructs/HSMsg;
    .param p3, "position"    # I
    .param p4, "holder"    # Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;

    .prologue
    const/16 v6, 0xfa

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 287
    if-nez p1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/helpshift/customadapters/MessagesAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/helpshift/D$layout;->hs__msg_request_screenshot:I

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 289
    iget-object v1, p0, Lcom/helpshift/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    sget v2, Lcom/helpshift/D$id;->admin_message:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/helpshift/util/Styles;->setAdminChatBubbleColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 290
    iget-object v1, p0, Lcom/helpshift/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    sget v2, Lcom/helpshift/D$id;->user_message:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/helpshift/util/Styles;->setUserChatBubbleColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 292
    const v1, 0x1020014

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->text1:Landroid/widget/TextView;

    .line 293
    const v1, 0x1020019

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->attachBtn:Landroid/widget/ImageButton;

    .line 294
    iget-object v1, p0, Lcom/helpshift/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    iget-object v2, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->attachBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/helpshift/util/Styles;->setAttachScreenshotButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 295
    const v1, 0x102000d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->progress:Landroid/widget/ProgressBar;

    .line 296
    const v1, 0x1020003

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->imagePreview:Landroid/widget/LinearLayout;

    .line 297
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->image:Landroid/widget/ImageView;

    .line 298
    const v1, 0x102001a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->changeBtn:Landroid/widget/ImageButton;

    .line 299
    const v1, 0x102001b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->doneBtn:Landroid/widget/ImageButton;

    .line 300
    iget-object v1, p0, Lcom/helpshift/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    iget-object v2, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->doneBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/helpshift/util/Styles;->setAcceptButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 301
    iget-object v1, p0, Lcom/helpshift/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    iget-object v2, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->changeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/helpshift/util/Styles;->setRejectButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 302
    const v1, 0x102002b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->separatorLine:Landroid/view/View;

    .line 303
    sget v1, Lcom/helpshift/D$id;->admin_message:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->adminMessage:Landroid/widget/LinearLayout;

    .line 304
    sget v1, Lcom/helpshift/D$id;->button_separator:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->buttonSeparator:Landroid/view/View;

    .line 305
    invoke-virtual {p1, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 310
    :goto_0
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->text1:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/helpshift/viewstructs/HSMsg;->body:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/helpshift/customadapters/MessagesAdapter;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v1, p2, Lcom/helpshift/viewstructs/HSMsg;->inProgress:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->adminMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 315
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->attachBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 316
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->separatorLine:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 318
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->imagePreview:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 319
    iget-object v1, p2, Lcom/helpshift/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/helpshift/util/AttachmentUtil;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 320
    .local v0, "screenshotImage":Landroid/graphics/Bitmap;
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 321
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 323
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->buttonSeparator:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 324
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->doneBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 325
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->changeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 384
    .end local v0    # "screenshotImage":Landroid/graphics/Bitmap;
    :goto_1
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->changeBtn:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lcom/helpshift/customadapters/MessagesAdapter;->enableBtn:Z

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 385
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->doneBtn:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lcom/helpshift/customadapters/MessagesAdapter;->enableBtn:Z

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 386
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->attachBtn:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lcom/helpshift/customadapters/MessagesAdapter;->enableBtn:Z

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 388
    return-object p1

    .line 307
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    .end local p4    # "holder":Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;
    check-cast p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;

    .restart local p4    # "holder":Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;
    goto :goto_0

    .line 326
    :cond_1
    iget-object v1, p2, Lcom/helpshift/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/helpshift/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 328
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->adminMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 329
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->attachBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 330
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->separatorLine:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->imagePreview:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 333
    iget-object v1, p2, Lcom/helpshift/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/helpshift/util/AttachmentUtil;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 334
    .restart local v0    # "screenshotImage":Landroid/graphics/Bitmap;
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 335
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 337
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->buttonSeparator:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 338
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->doneBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 339
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->changeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 340
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->changeBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/helpshift/customadapters/MessagesAdapter$4;

    invoke-direct {v2, p0, p2, p3}, Lcom/helpshift/customadapters/MessagesAdapter$4;-><init>(Lcom/helpshift/customadapters/MessagesAdapter;Lcom/helpshift/viewstructs/HSMsg;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->doneBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/helpshift/customadapters/MessagesAdapter$5;

    invoke-direct {v2, p0, p2, p3}, Lcom/helpshift/customadapters/MessagesAdapter$5;-><init>(Lcom/helpshift/customadapters/MessagesAdapter;Lcom/helpshift/viewstructs/HSMsg;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 356
    .end local v0    # "screenshotImage":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v1, p2, Lcom/helpshift/viewstructs/HSMsg;->invisible:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 358
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->adminMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 359
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->attachBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 360
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->separatorLine:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 361
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->attachBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/helpshift/customadapters/MessagesAdapter$6;

    invoke-direct {v2, p0, p2, p3}, Lcom/helpshift/customadapters/MessagesAdapter$6;-><init>(Lcom/helpshift/customadapters/MessagesAdapter;Lcom/helpshift/viewstructs/HSMsg;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->imagePreview:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 371
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 372
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_1

    .line 375
    :cond_3
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->adminMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 376
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->attachBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 377
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->separatorLine:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->imagePreview:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 380
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 381
    iget-object v1, p4, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private setConvertView(Landroid/view/View;Lcom/helpshift/viewstructs/HSMsg;Lcom/helpshift/customadapters/MessagesAdapter$ARViewHolder;)Landroid/view/View;
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "item"    # Lcom/helpshift/viewstructs/HSMsg;
    .param p3, "holder"    # Lcom/helpshift/customadapters/MessagesAdapter$ARViewHolder;

    .prologue
    .line 528
    if-nez p1, :cond_0

    .line 529
    iget-object v0, p0, Lcom/helpshift/customadapters/MessagesAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/helpshift/D$layout;->hs__msg_review_accepted:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 531
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/helpshift/customadapters/MessagesAdapter$ARViewHolder;->text1:Landroid/widget/TextView;

    .line 532
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 537
    :goto_0
    iget-object v0, p3, Lcom/helpshift/customadapters/MessagesAdapter$ARViewHolder;->text1:Landroid/widget/TextView;

    sget v1, Lcom/helpshift/D$string;->hs__review_accepted_message:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 539
    return-object p1

    .line 534
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    .end local p3    # "holder":Lcom/helpshift/customadapters/MessagesAdapter$ARViewHolder;
    check-cast p3, Lcom/helpshift/customadapters/MessagesAdapter$ARViewHolder;

    .restart local p3    # "holder":Lcom/helpshift/customadapters/MessagesAdapter$ARViewHolder;
    goto :goto_0
.end method

.method private setConvertView(Landroid/view/View;Lcom/helpshift/viewstructs/HSMsg;Lcom/helpshift/customadapters/MessagesAdapter$SCViewHolder;)Landroid/view/View;
    .locals 6
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "item"    # Lcom/helpshift/viewstructs/HSMsg;
    .param p3, "holder"    # Lcom/helpshift/customadapters/MessagesAdapter$SCViewHolder;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 455
    if-nez p1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/helpshift/customadapters/MessagesAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/helpshift/D$layout;->hs__msg_screenshot_status:I

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 457
    iget-object v1, p0, Lcom/helpshift/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    sget v2, Lcom/helpshift/D$id;->user_message:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/helpshift/util/Styles;->setUserChatBubbleColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 459
    const v1, 0x1020014

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/helpshift/customadapters/MessagesAdapter$SCViewHolder;->text1:Landroid/widget/TextView;

    .line 460
    const v1, 0x102000d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p3, Lcom/helpshift/customadapters/MessagesAdapter$SCViewHolder;->progress:Landroid/widget/ProgressBar;

    .line 461
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/helpshift/customadapters/MessagesAdapter$SCViewHolder;->image:Landroid/widget/ImageView;

    .line 462
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 467
    :goto_0
    iget-object v1, p3, Lcom/helpshift/customadapters/MessagesAdapter$SCViewHolder;->text1:Landroid/widget/TextView;

    sget v2, Lcom/helpshift/D$string;->hs__screenshot_sent_msg:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 469
    iget-object v1, p2, Lcom/helpshift/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 470
    iget-object v1, p3, Lcom/helpshift/customadapters/MessagesAdapter$SCViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 471
    iget-object v1, p3, Lcom/helpshift/customadapters/MessagesAdapter$SCViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 472
    iget-object v1, p3, Lcom/helpshift/customadapters/MessagesAdapter$SCViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 480
    :goto_1
    return-object p1

    .line 464
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    .end local p3    # "holder":Lcom/helpshift/customadapters/MessagesAdapter$SCViewHolder;
    check-cast p3, Lcom/helpshift/customadapters/MessagesAdapter$SCViewHolder;

    .restart local p3    # "holder":Lcom/helpshift/customadapters/MessagesAdapter$SCViewHolder;
    goto :goto_0

    .line 474
    :cond_1
    iget-object v1, p3, Lcom/helpshift/customadapters/MessagesAdapter$SCViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 475
    iget-object v1, p3, Lcom/helpshift/customadapters/MessagesAdapter$SCViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 476
    iget-object v1, p2, Lcom/helpshift/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/helpshift/util/AttachmentUtil;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 477
    .local v0, "screenshotImage":Landroid/graphics/Bitmap;
    iget-object v1, p3, Lcom/helpshift/customadapters/MessagesAdapter$SCViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method private setConvertView(Landroid/view/View;Lcom/helpshift/viewstructs/HSMsg;Lcom/helpshift/customadapters/MessagesAdapter$TxtAdminHolder;)Landroid/view/View;
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "item"    # Lcom/helpshift/viewstructs/HSMsg;
    .param p3, "holder"    # Lcom/helpshift/customadapters/MessagesAdapter$TxtAdminHolder;

    .prologue
    .line 152
    if-nez p1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/helpshift/customadapters/MessagesAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/helpshift/D$layout;->hs__msg_txt_admin:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 154
    iget-object v0, p0, Lcom/helpshift/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    sget v1, Lcom/helpshift/D$id;->admin_message:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/util/Styles;->setAdminChatBubbleColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 156
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/helpshift/customadapters/MessagesAdapter$TxtAdminHolder;->text1:Landroid/widget/TextView;

    .line 157
    const v0, 0x1020015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/helpshift/customadapters/MessagesAdapter$TxtAdminHolder;->text2:Landroid/widget/TextView;

    .line 158
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 163
    :goto_0
    iget-object v0, p3, Lcom/helpshift/customadapters/MessagesAdapter$TxtAdminHolder;->text1:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/helpshift/viewstructs/HSMsg;->body:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/helpshift/customadapters/MessagesAdapter;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p3, Lcom/helpshift/customadapters/MessagesAdapter$TxtAdminHolder;->text2:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/helpshift/viewstructs/HSMsg;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    return-object p1

    .line 160
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    .end local p3    # "holder":Lcom/helpshift/customadapters/MessagesAdapter$TxtAdminHolder;
    check-cast p3, Lcom/helpshift/customadapters/MessagesAdapter$TxtAdminHolder;

    .restart local p3    # "holder":Lcom/helpshift/customadapters/MessagesAdapter$TxtAdminHolder;
    goto :goto_0
.end method

.method private setConvertView(Landroid/view/View;Lcom/helpshift/viewstructs/HSMsg;Lcom/helpshift/customadapters/MessagesAdapter$TxtUserHolder;)Landroid/view/View;
    .locals 4
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "item"    # Lcom/helpshift/viewstructs/HSMsg;
    .param p3, "holder"    # Lcom/helpshift/customadapters/MessagesAdapter$TxtUserHolder;

    .prologue
    const/16 v3, 0x8

    .line 171
    if-nez p1, :cond_1

    .line 172
    iget-object v0, p0, Lcom/helpshift/customadapters/MessagesAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/helpshift/D$layout;->hs__msg_txt_user:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 173
    iget-object v0, p0, Lcom/helpshift/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    sget v1, Lcom/helpshift/D$id;->user_message:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/util/Styles;->setUserChatBubbleColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 175
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/helpshift/customadapters/MessagesAdapter$TxtUserHolder;->text1:Landroid/widget/TextView;

    .line 176
    const v0, 0x1020015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/helpshift/customadapters/MessagesAdapter$TxtUserHolder;->text2:Landroid/widget/TextView;

    .line 177
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/helpshift/customadapters/MessagesAdapter$TxtUserHolder;->errorImage:Landroid/widget/ImageView;

    .line 178
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 183
    :goto_0
    iget-object v0, p2, Lcom/helpshift/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v1, "txt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p2, Lcom/helpshift/viewstructs/HSMsg;->state:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p2, Lcom/helpshift/viewstructs/HSMsg;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 184
    :cond_0
    iget-object v0, p3, Lcom/helpshift/customadapters/MessagesAdapter$TxtUserHolder;->text1:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/helpshift/viewstructs/HSMsg;->body:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/helpshift/customadapters/MessagesAdapter;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p3, Lcom/helpshift/customadapters/MessagesAdapter$TxtUserHolder;->text2:Landroid/widget/TextView;

    sget v1, Lcom/helpshift/D$string;->hs__sending_msg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 186
    iget-object v0, p3, Lcom/helpshift/customadapters/MessagesAdapter$TxtUserHolder;->errorImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    :goto_1
    return-object p1

    .line 180
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    .end local p3    # "holder":Lcom/helpshift/customadapters/MessagesAdapter$TxtUserHolder;
    check-cast p3, Lcom/helpshift/customadapters/MessagesAdapter$TxtUserHolder;

    .restart local p3    # "holder":Lcom/helpshift/customadapters/MessagesAdapter$TxtUserHolder;
    goto :goto_0

    .line 187
    :cond_2
    iget-object v0, p2, Lcom/helpshift/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v1, "txt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p2, Lcom/helpshift/viewstructs/HSMsg;->state:I

    const/4 v1, -0x2

    if-gt v0, v1, :cond_3

    .line 188
    iget-object v0, p3, Lcom/helpshift/customadapters/MessagesAdapter$TxtUserHolder;->text1:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/helpshift/viewstructs/HSMsg;->body:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/helpshift/customadapters/MessagesAdapter;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p3, Lcom/helpshift/customadapters/MessagesAdapter$TxtUserHolder;->text1:Landroid/widget/TextView;

    new-instance v1, Lcom/helpshift/customadapters/MessagesAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/helpshift/customadapters/MessagesAdapter$1;-><init>(Lcom/helpshift/customadapters/MessagesAdapter;Lcom/helpshift/viewstructs/HSMsg;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p3, Lcom/helpshift/customadapters/MessagesAdapter$TxtUserHolder;->text2:Landroid/widget/TextView;

    sget v1, Lcom/helpshift/D$string;->hs__sending_fail_msg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 196
    iget-object v0, p3, Lcom/helpshift/customadapters/MessagesAdapter$TxtUserHolder;->errorImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 198
    :cond_3
    iget-object v0, p3, Lcom/helpshift/customadapters/MessagesAdapter$TxtUserHolder;->text1:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/helpshift/viewstructs/HSMsg;->body:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/helpshift/customadapters/MessagesAdapter;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p3, Lcom/helpshift/customadapters/MessagesAdapter$TxtUserHolder;->text2:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/helpshift/viewstructs/HSMsg;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p3, Lcom/helpshift/customadapters/MessagesAdapter$TxtUserHolder;->errorImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setConvertView(Landroid/view/View;Lcom/helpshift/viewstructs/HSMsg;ZLcom/helpshift/customadapters/MessagesAdapter$CSViewHolder;)Landroid/view/View;
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "item"    # Lcom/helpshift/viewstructs/HSMsg;
    .param p3, "accepted"    # Z
    .param p4, "holder"    # Lcom/helpshift/customadapters/MessagesAdapter$CSViewHolder;

    .prologue
    .line 264
    if-nez p1, :cond_0

    .line 265
    iget-object v0, p0, Lcom/helpshift/customadapters/MessagesAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/helpshift/D$layout;->hs__msg_confirmation_status:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 266
    iget-object v0, p0, Lcom/helpshift/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    sget v1, Lcom/helpshift/D$id;->admin_message:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/util/Styles;->setAdminChatBubbleColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 268
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$CSViewHolder;->text1:Landroid/widget/TextView;

    .line 269
    const v0, 0x1020015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$CSViewHolder;->text2:Landroid/widget/TextView;

    .line 270
    invoke-virtual {p1, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 275
    :goto_0
    if-eqz p3, :cond_1

    .line 276
    iget-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$CSViewHolder;->text1:Landroid/widget/TextView;

    sget v1, Lcom/helpshift/D$string;->hs__ca_msg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 280
    :goto_1
    iget-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$CSViewHolder;->text2:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/helpshift/viewstructs/HSMsg;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    return-object p1

    .line 272
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    .end local p4    # "holder":Lcom/helpshift/customadapters/MessagesAdapter$CSViewHolder;
    check-cast p4, Lcom/helpshift/customadapters/MessagesAdapter$CSViewHolder;

    .restart local p4    # "holder":Lcom/helpshift/customadapters/MessagesAdapter$CSViewHolder;
    goto :goto_0

    .line 278
    :cond_1
    iget-object v0, p4, Lcom/helpshift/customadapters/MessagesAdapter$CSViewHolder;->text1:Landroid/widget/TextView;

    sget v1, Lcom/helpshift/D$string;->hs__cr_msg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method


# virtual methods
.method public enableButtons(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/helpshift/customadapters/MessagesAdapter;->enableBtn:Z

    .line 65
    return-void
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/16 v2, 0xf

    const/4 v1, 0x1

    .line 79
    iget-object v3, p0, Lcom/helpshift/customadapters/MessagesAdapter;->items:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/viewstructs/HSMsg;

    .line 80
    .local v0, "item":Lcom/helpshift/viewstructs/HSMsg;
    iget-object v3, v0, Lcom/helpshift/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v4, "txt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/helpshift/viewstructs/HSMsg;->state:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    iget v3, v0, Lcom/helpshift/viewstructs/HSMsg;->state:I

    if-eq v3, v1, :cond_2

    :cond_0
    iget-object v3, v0, Lcom/helpshift/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v4, "txt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/helpshift/viewstructs/HSMsg;->state:I

    const/4 v4, -0x2

    if-le v3, v4, :cond_2

    :cond_1
    iget-object v3, v0, Lcom/helpshift/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v4, "txt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/helpshift/viewstructs/HSMsg;->origin:Ljava/lang/String;

    const-string/jumbo v4, "mobile"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 83
    :cond_2
    const/4 v1, 0x2

    .line 111
    :cond_3
    :goto_0
    return v1

    .line 84
    :cond_4
    iget-object v3, v0, Lcom/helpshift/viewstructs/HSMsg;->origin:Ljava/lang/String;

    const-string/jumbo v4, "admin"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/helpshift/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v4, "txt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/helpshift/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v4, "rfr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 86
    :cond_5
    iget-object v1, v0, Lcom/helpshift/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v3, "cb"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/helpshift/viewstructs/HSMsg;->origin:Ljava/lang/String;

    const-string/jumbo v3, "admin"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 87
    const/4 v1, 0x5

    goto :goto_0

    .line 88
    :cond_6
    iget-object v1, v0, Lcom/helpshift/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v3, "rsc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/helpshift/viewstructs/HSMsg;->origin:Ljava/lang/String;

    const-string/jumbo v3, "admin"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 89
    iget-object v1, v0, Lcom/helpshift/viewstructs/HSMsg;->id:Ljava/lang/String;

    const-string/jumbo v2, "localRscMessage_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 90
    const/16 v1, 0xe

    goto :goto_0

    .line 92
    :cond_7
    const/16 v1, 0xd

    goto :goto_0

    .line 94
    :cond_8
    iget-object v1, v0, Lcom/helpshift/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v3, "ca"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/helpshift/viewstructs/HSMsg;->origin:Ljava/lang/String;

    const-string/jumbo v3, "mobile"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 95
    const/4 v1, 0x6

    goto :goto_0

    .line 96
    :cond_9
    iget-object v1, v0, Lcom/helpshift/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v3, "ncr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/helpshift/viewstructs/HSMsg;->origin:Ljava/lang/String;

    const-string/jumbo v3, "mobile"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 97
    const/4 v1, 0x7

    goto/16 :goto_0

    .line 98
    :cond_a
    iget-object v1, v0, Lcom/helpshift/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v3, "sc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/helpshift/viewstructs/HSMsg;->origin:Ljava/lang/String;

    const-string/jumbo v3, "mobile"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 99
    const/16 v1, 0x8

    goto/16 :goto_0

    .line 100
    :cond_b
    iget-object v1, v0, Lcom/helpshift/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v3, "rar"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/helpshift/viewstructs/HSMsg;->origin:Ljava/lang/String;

    const-string/jumbo v3, "admin"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 101
    const/16 v1, 0xb

    goto/16 :goto_0

    .line 102
    :cond_c
    iget-object v1, v0, Lcom/helpshift/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v3, "ar"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/helpshift/viewstructs/HSMsg;->origin:Ljava/lang/String;

    const-string/jumbo v3, "mobile"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 103
    const/16 v1, 0xc

    goto/16 :goto_0

    .line 104
    :cond_d
    iget-object v1, v0, Lcom/helpshift/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v3, "admin_attachment_image"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    move v1, v2

    .line 105
    goto/16 :goto_0

    .line 106
    :cond_e
    iget-object v1, v0, Lcom/helpshift/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v3, "admin_attachment_generic"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 107
    const/16 v1, 0x10

    goto/16 :goto_0

    .line 108
    :cond_f
    iget-object v1, v0, Lcom/helpshift/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v3, "admin_attachment_image"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v2

    .line 109
    goto/16 :goto_0

    .line 111
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v2, p0, Lcom/helpshift/customadapters/MessagesAdapter;->items:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/viewstructs/HSMsg;

    .line 118
    .local v0, "item":Lcom/helpshift/viewstructs/HSMsg;
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0, p1}, Lcom/helpshift/customadapters/MessagesAdapter;->getItemViewType(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 147
    :cond_0
    :goto_0
    :pswitch_0
    return-object v1

    .line 121
    :pswitch_1
    new-instance v2, Lcom/helpshift/customadapters/MessagesAdapter$TxtAdminHolder;

    invoke-direct {v2, v1}, Lcom/helpshift/customadapters/MessagesAdapter$TxtAdminHolder;-><init>(Lcom/helpshift/customadapters/MessagesAdapter$1;)V

    invoke-direct {p0, p2, v0, v2}, Lcom/helpshift/customadapters/MessagesAdapter;->setConvertView(Landroid/view/View;Lcom/helpshift/viewstructs/HSMsg;Lcom/helpshift/customadapters/MessagesAdapter$TxtAdminHolder;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 123
    :pswitch_2
    new-instance v2, Lcom/helpshift/customadapters/MessagesAdapter$TxtUserHolder;

    invoke-direct {v2, v1}, Lcom/helpshift/customadapters/MessagesAdapter$TxtUserHolder;-><init>(Lcom/helpshift/customadapters/MessagesAdapter$1;)V

    invoke-direct {p0, p2, v0, v2}, Lcom/helpshift/customadapters/MessagesAdapter;->setConvertView(Landroid/view/View;Lcom/helpshift/viewstructs/HSMsg;Lcom/helpshift/customadapters/MessagesAdapter$TxtUserHolder;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 125
    :pswitch_3
    new-instance v2, Lcom/helpshift/customadapters/MessagesAdapter$CBViewHolder;

    invoke-direct {v2, v1}, Lcom/helpshift/customadapters/MessagesAdapter$CBViewHolder;-><init>(Lcom/helpshift/customadapters/MessagesAdapter$1;)V

    invoke-direct {p0, p2, v0, p1, v2}, Lcom/helpshift/customadapters/MessagesAdapter;->setConvertView(Landroid/view/View;Lcom/helpshift/viewstructs/HSMsg;ILcom/helpshift/customadapters/MessagesAdapter$CBViewHolder;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 127
    :pswitch_4
    const/4 v2, 0x1

    new-instance v3, Lcom/helpshift/customadapters/MessagesAdapter$CSViewHolder;

    invoke-direct {v3, v1}, Lcom/helpshift/customadapters/MessagesAdapter$CSViewHolder;-><init>(Lcom/helpshift/customadapters/MessagesAdapter$1;)V

    invoke-direct {p0, p2, v0, v2, v3}, Lcom/helpshift/customadapters/MessagesAdapter;->setConvertView(Landroid/view/View;Lcom/helpshift/viewstructs/HSMsg;ZLcom/helpshift/customadapters/MessagesAdapter$CSViewHolder;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 129
    :pswitch_5
    const/4 v2, 0x0

    new-instance v3, Lcom/helpshift/customadapters/MessagesAdapter$CSViewHolder;

    invoke-direct {v3, v1}, Lcom/helpshift/customadapters/MessagesAdapter$CSViewHolder;-><init>(Lcom/helpshift/customadapters/MessagesAdapter$1;)V

    invoke-direct {p0, p2, v0, v2, v3}, Lcom/helpshift/customadapters/MessagesAdapter;->setConvertView(Landroid/view/View;Lcom/helpshift/viewstructs/HSMsg;ZLcom/helpshift/customadapters/MessagesAdapter$CSViewHolder;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 131
    :pswitch_6
    new-instance v2, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;

    invoke-direct {v2, v1}, Lcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;-><init>(Lcom/helpshift/customadapters/MessagesAdapter$1;)V

    invoke-direct {p0, p2, v0, p1, v2}, Lcom/helpshift/customadapters/MessagesAdapter;->setConvertView(Landroid/view/View;Lcom/helpshift/viewstructs/HSMsg;ILcom/helpshift/customadapters/MessagesAdapter$RSCViewHolder;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 133
    :pswitch_7
    new-instance v2, Lcom/helpshift/customadapters/MessagesAdapter$LocalRSCViewHolder;

    invoke-direct {v2, v1}, Lcom/helpshift/customadapters/MessagesAdapter$LocalRSCViewHolder;-><init>(Lcom/helpshift/customadapters/MessagesAdapter$1;)V

    invoke-direct {p0, p2, v0, p1, v2}, Lcom/helpshift/customadapters/MessagesAdapter;->setConvertView(Landroid/view/View;Lcom/helpshift/viewstructs/HSMsg;ILcom/helpshift/customadapters/MessagesAdapter$LocalRSCViewHolder;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 135
    :pswitch_8
    new-instance v2, Lcom/helpshift/customadapters/MessagesAdapter$SCViewHolder;

    invoke-direct {v2, v1}, Lcom/helpshift/customadapters/MessagesAdapter$SCViewHolder;-><init>(Lcom/helpshift/customadapters/MessagesAdapter$1;)V

    invoke-direct {p0, p2, v0, v2}, Lcom/helpshift/customadapters/MessagesAdapter;->setConvertView(Landroid/view/View;Lcom/helpshift/viewstructs/HSMsg;Lcom/helpshift/customadapters/MessagesAdapter$SCViewHolder;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 137
    :pswitch_9
    new-instance v2, Lcom/helpshift/customadapters/MessagesAdapter$RARViewHolder;

    invoke-direct {v2, v1}, Lcom/helpshift/customadapters/MessagesAdapter$RARViewHolder;-><init>(Lcom/helpshift/customadapters/MessagesAdapter$1;)V

    invoke-direct {p0, p2, v0, p1, v2}, Lcom/helpshift/customadapters/MessagesAdapter;->setConvertView(Landroid/view/View;Lcom/helpshift/viewstructs/HSMsg;ILcom/helpshift/customadapters/MessagesAdapter$RARViewHolder;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 139
    :pswitch_a
    new-instance v2, Lcom/helpshift/customadapters/MessagesAdapter$ARViewHolder;

    invoke-direct {v2, v1}, Lcom/helpshift/customadapters/MessagesAdapter$ARViewHolder;-><init>(Lcom/helpshift/customadapters/MessagesAdapter$1;)V

    invoke-direct {p0, p2, v0, v2}, Lcom/helpshift/customadapters/MessagesAdapter;->setConvertView(Landroid/view/View;Lcom/helpshift/viewstructs/HSMsg;Lcom/helpshift/customadapters/MessagesAdapter$ARViewHolder;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 141
    :pswitch_b
    new-instance v2, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;

    invoke-direct {v2, v1}, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;-><init>(Lcom/helpshift/customadapters/MessagesAdapter$1;)V

    invoke-direct {p0, p2, v0, p1, v2}, Lcom/helpshift/customadapters/MessagesAdapter;->setConvertView(Landroid/view/View;Lcom/helpshift/viewstructs/HSMsg;ILcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 143
    :pswitch_c
    new-instance v2, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;

    invoke-direct {v2, v1}, Lcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;-><init>(Lcom/helpshift/customadapters/MessagesAdapter$1;)V

    invoke-direct {p0, p2, v0, p1, v2}, Lcom/helpshift/customadapters/MessagesAdapter;->setConvertView(Landroid/view/View;Lcom/helpshift/viewstructs/HSMsg;ILcom/helpshift/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_6
        :pswitch_7
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x14

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method
