.class Lcom/helpshift/app/ActionBarHelperBase$WrappedMenuInflater;
.super Landroid/view/MenuInflater;
.source "ActionBarHelperBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/app/ActionBarHelperBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappedMenuInflater"
.end annotation


# instance fields
.field inflater:Landroid/view/MenuInflater;

.field final synthetic this$0:Lcom/helpshift/app/ActionBarHelperBase;


# direct methods
.method public constructor <init>(Lcom/helpshift/app/ActionBarHelperBase;Landroid/content/Context;Landroid/view/MenuInflater;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "superMenuInflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/helpshift/app/ActionBarHelperBase$WrappedMenuInflater;->this$0:Lcom/helpshift/app/ActionBarHelperBase;

    .line 357
    invoke-direct {p0, p2}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 358
    iput-object p3, p0, Lcom/helpshift/app/ActionBarHelperBase$WrappedMenuInflater;->inflater:Landroid/view/MenuInflater;

    .line 359
    return-void
.end method

.method private loadActionBarMetadata(I)V
    .locals 11
    .param p1, "menuRes"    # I

    .prologue
    .line 391
    const/4 v6, 0x0

    .line 393
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v8, p0, Lcom/helpshift/app/ActionBarHelperBase$WrappedMenuInflater;->this$0:Lcom/helpshift/app/ActionBarHelperBase;

    iget-object v8, v8, Lcom/helpshift/app/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 395
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    .line 396
    .local v4, "eventType":I
    const/4 v3, 0x0

    .line 398
    .local v3, "eof":Z
    :goto_0
    if-nez v3, :cond_5

    .line 399
    packed-switch v4, :pswitch_data_0

    .line 434
    :cond_0
    :goto_1
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    goto :goto_0

    .line 402
    :pswitch_0
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "item"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 406
    const-string/jumbo v8, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v9, "id"

    const/4 v10, 0x0

    invoke-interface {v6, v8, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 408
    .local v5, "itemId":I
    if-eqz v5, :cond_0

    .line 412
    const-string/jumbo v8, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v9, "showAsAction"

    const/4 v10, -0x1

    invoke-interface {v6, v8, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 414
    .local v7, "showAsAction":I
    and-int/lit8 v8, v7, 0x2

    if-nez v8, :cond_1

    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_3

    .line 416
    :cond_1
    const-string/jumbo v8, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v9, "actionLayout"

    const/4 v10, 0x0

    invoke-interface {v6, v8, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 417
    .local v0, "actionLayout":I
    if-eqz v0, :cond_2

    .line 418
    iget-object v8, p0, Lcom/helpshift/app/ActionBarHelperBase$WrappedMenuInflater;->this$0:Lcom/helpshift/app/ActionBarHelperBase;

    invoke-static {v8}, Lcom/helpshift/app/ActionBarHelperBase;->access$200(Lcom/helpshift/app/ActionBarHelperBase;)Ljava/util/Map;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :cond_2
    iget-object v8, p0, Lcom/helpshift/app/ActionBarHelperBase$WrappedMenuInflater;->this$0:Lcom/helpshift/app/ActionBarHelperBase;

    invoke-static {v8}, Lcom/helpshift/app/ActionBarHelperBase;->access$400(Lcom/helpshift/app/ActionBarHelperBase;)Ljava/util/Set;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 423
    .end local v0    # "actionLayout":I
    :cond_3
    const-string/jumbo v8, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v9, "actionViewClass"

    invoke-interface {v6, v8, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 425
    .local v1, "actionViewClass":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 426
    iget-object v8, p0, Lcom/helpshift/app/ActionBarHelperBase$WrappedMenuInflater;->this$0:Lcom/helpshift/app/ActionBarHelperBase;

    invoke-static {v8}, Lcom/helpshift/app/ActionBarHelperBase;->access$000(Lcom/helpshift/app/ActionBarHelperBase;)Ljava/util/Map;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 436
    .end local v1    # "actionViewClass":Ljava/lang/String;
    .end local v3    # "eof":Z
    .end local v4    # "eventType":I
    .end local v5    # "itemId":I
    .end local v7    # "showAsAction":I
    :catch_0
    move-exception v2

    .line 437
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v8, Landroid/view/InflateException;

    const-string/jumbo v9, "Error inflating menu XML"

    invoke-direct {v8, v9, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 441
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v8

    if-eqz v6, :cond_4

    .line 442
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_4
    throw v8

    .line 431
    .restart local v3    # "eof":Z
    .restart local v4    # "eventType":I
    :pswitch_1
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 441
    :cond_5
    if-eqz v6, :cond_6

    .line 442
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 445
    :cond_6
    return-void

    .line 438
    .end local v3    # "eof":Z
    .end local v4    # "eventType":I
    :catch_1
    move-exception v2

    .line 439
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v8, Landroid/view/InflateException;

    const-string/jumbo v9, "Error inflating menu XML"

    invoke-direct {v8, v9, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 399
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public inflate(ILandroid/view/Menu;)V
    .locals 10
    .param p1, "menuRes"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/helpshift/app/ActionBarHelperBase$WrappedMenuInflater;->loadActionBarMetadata(I)V

    .line 364
    iget-object v7, p0, Lcom/helpshift/app/ActionBarHelperBase$WrappedMenuInflater;->inflater:Landroid/view/MenuInflater;

    invoke-virtual {v7, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 366
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 368
    :try_start_0
    invoke-interface {p2, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    check-cast v2, Lcom/helpshift/app/SimpleMenuItem;

    .line 369
    .local v2, "item":Lcom/helpshift/app/SimpleMenuItem;
    invoke-virtual {v2}, Lcom/helpshift/app/SimpleMenuItem;->getItemId()I

    move-result v3

    .line 370
    .local v3, "itemId":I
    iget-object v7, p0, Lcom/helpshift/app/ActionBarHelperBase$WrappedMenuInflater;->this$0:Lcom/helpshift/app/ActionBarHelperBase;

    invoke-static {v7}, Lcom/helpshift/app/ActionBarHelperBase;->access$000(Lcom/helpshift/app/ActionBarHelperBase;)Ljava/util/Map;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 371
    iget-object v7, p0, Lcom/helpshift/app/ActionBarHelperBase$WrappedMenuInflater;->this$0:Lcom/helpshift/app/ActionBarHelperBase;

    invoke-static {v7}, Lcom/helpshift/app/ActionBarHelperBase;->access$000(Lcom/helpshift/app/ActionBarHelperBase;)Ljava/util/Map;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 372
    .local v6, "viewClass":Ljava/lang/String;
    const-string/jumbo v7, "android.widget.SearchView"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 373
    iget-object v7, p0, Lcom/helpshift/app/ActionBarHelperBase$WrappedMenuInflater;->this$0:Lcom/helpshift/app/ActionBarHelperBase;

    invoke-static {v7}, Lcom/helpshift/app/ActionBarHelperBase;->access$100(Lcom/helpshift/app/ActionBarHelperBase;)Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Lcom/helpshift/D$layout;->hs__simple_search_view:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/helpshift/widget/SimpleSearchView;

    .line 374
    .local v4, "searchView":Lcom/helpshift/widget/SimpleSearchView;
    invoke-virtual {v4, v3}, Lcom/helpshift/widget/SimpleSearchView;->setId(I)V

    .line 375
    invoke-virtual {v2, v4}, Lcom/helpshift/app/SimpleMenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 379
    .end local v4    # "searchView":Lcom/helpshift/widget/SimpleSearchView;
    .end local v6    # "viewClass":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/helpshift/app/ActionBarHelperBase$WrappedMenuInflater;->this$0:Lcom/helpshift/app/ActionBarHelperBase;

    invoke-static {v7}, Lcom/helpshift/app/ActionBarHelperBase;->access$200(Lcom/helpshift/app/ActionBarHelperBase;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v2}, Lcom/helpshift/app/SimpleMenuItem;->getItemId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 380
    iget-object v7, p0, Lcom/helpshift/app/ActionBarHelperBase$WrappedMenuInflater;->this$0:Lcom/helpshift/app/ActionBarHelperBase;

    invoke-static {v7}, Lcom/helpshift/app/ActionBarHelperBase;->access$100(Lcom/helpshift/app/ActionBarHelperBase;)Landroid/view/LayoutInflater;

    move-result-object v8

    iget-object v7, p0, Lcom/helpshift/app/ActionBarHelperBase$WrappedMenuInflater;->this$0:Lcom/helpshift/app/ActionBarHelperBase;

    invoke-static {v7}, Lcom/helpshift/app/ActionBarHelperBase;->access$200(Lcom/helpshift/app/ActionBarHelperBase;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v2}, Lcom/helpshift/app/SimpleMenuItem;->getItemId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 381
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5, v3}, Landroid/view/View;->setId(I)V

    .line 382
    invoke-virtual {v2, v5}, Lcom/helpshift/app/SimpleMenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .end local v2    # "item":Lcom/helpshift/app/SimpleMenuItem;
    .end local v3    # "itemId":I
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-static {}, Lcom/helpshift/app/ActionBarHelperBase;->access$300()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "ClassCastException on hardware menu button click"

    invoke-static {v7, v8, v0}, Lcom/helpshift/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 388
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_2
    return-void
.end method
