.class public final Lcom/helpshift/Faq;
.super Ljava/lang/Object;
.source "Faq.java"


# instance fields
.field private body:Ljava/lang/String;

.field private id:J

.field private is_helpful:I

.field private is_rtl:Ljava/lang/Boolean;

.field private publish_id:Ljava/lang/String;

.field private qId:Ljava/lang/String;

.field private searchTerms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private section_publish_id:Ljava/lang/String;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/Faq;->title:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/Faq;->publish_id:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/Faq;->type:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/Faq;->body:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/Faq;->section_publish_id:Ljava/lang/String;

    .line 29
    iput v1, p0, Lcom/helpshift/Faq;->is_helpful:I

    .line 30
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/Faq;->is_rtl:Ljava/lang/Boolean;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helpshift/Faq;->tags:Ljava/util/List;

    .line 32
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;Ljava/util/List;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "qId"    # Ljava/lang/String;
    .param p4, "publish_id"    # Ljava/lang/String;
    .param p5, "sectionId"    # Ljava/lang/String;
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "body"    # Ljava/lang/String;
    .param p8, "isHelpful"    # I
    .param p9, "isRtl"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Boolean;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p10, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-wide p1, p0, Lcom/helpshift/Faq;->id:J

    .line 52
    iput-object p3, p0, Lcom/helpshift/Faq;->qId:Ljava/lang/String;

    .line 53
    iput-object p6, p0, Lcom/helpshift/Faq;->title:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/helpshift/Faq;->publish_id:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "faq"

    iput-object v0, p0, Lcom/helpshift/Faq;->type:Ljava/lang/String;

    .line 56
    iput-object p5, p0, Lcom/helpshift/Faq;->section_publish_id:Ljava/lang/String;

    .line 57
    iput-object p7, p0, Lcom/helpshift/Faq;->body:Ljava/lang/String;

    .line 58
    iput p8, p0, Lcom/helpshift/Faq;->is_helpful:I

    .line 59
    iput-object p9, p0, Lcom/helpshift/Faq;->is_rtl:Ljava/lang/Boolean;

    .line 60
    iput-object p10, p0, Lcom/helpshift/Faq;->tags:Ljava/util/List;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "publish_id"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/helpshift/Faq;->title:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/helpshift/Faq;->publish_id:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/helpshift/Faq;->type:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private static mergeSearchTerms(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "searchTerms1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p1, "searchTerms2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 125
    .local v0, "searchTermsSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 126
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 128
    :cond_0
    if-eqz p1, :cond_1

    .line 129
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 131
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method


# virtual methods
.method protected addSearchTerms(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "searchTerms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/helpshift/Faq;->searchTerms:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/helpshift/Faq;->mergeSearchTerms(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/Faq;->searchTerms:Ljava/util/ArrayList;

    .line 120
    return-void
.end method

.method protected clearSearchTerms()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/Faq;->searchTerms:Ljava/util/ArrayList;

    .line 116
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "otherObj"    # Ljava/lang/Object;

    .prologue
    .line 135
    move-object v0, p1

    check-cast v0, Lcom/helpshift/Faq;

    .line 137
    .local v0, "other":Lcom/helpshift/Faq;
    iget-object v1, p0, Lcom/helpshift/Faq;->qId:Ljava/lang/String;

    iget-object v2, v0, Lcom/helpshift/Faq;->qId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/helpshift/Faq;->title:Ljava/lang/String;

    iget-object v2, v0, Lcom/helpshift/Faq;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/helpshift/Faq;->body:Ljava/lang/String;

    iget-object v2, v0, Lcom/helpshift/Faq;->body:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/helpshift/Faq;->publish_id:Ljava/lang/String;

    iget-object v2, v0, Lcom/helpshift/Faq;->publish_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/helpshift/Faq;->section_publish_id:Ljava/lang/String;

    iget-object v2, v0, Lcom/helpshift/Faq;->section_publish_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/helpshift/Faq;->is_rtl:Ljava/lang/Boolean;

    iget-object v2, v0, Lcom/helpshift/Faq;->is_rtl:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/helpshift/Faq;->is_helpful:I

    iget v2, p0, Lcom/helpshift/Faq;->is_helpful:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/helpshift/Faq;->tags:Ljava/util/List;

    iget-object v2, v0, Lcom/helpshift/Faq;->tags:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    :cond_0
    const/4 v1, 0x0

    .line 147
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/helpshift/Faq;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/helpshift/Faq;->qId:Ljava/lang/String;

    return-object v0
.end method

.method public getIsHelpful()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/helpshift/Faq;->is_helpful:I

    return v0
.end method

.method public getIsRtl()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/helpshift/Faq;->is_rtl:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPublishId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/helpshift/Faq;->publish_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchTerms()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/helpshift/Faq;->searchTerms:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSectionPublishId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/helpshift/Faq;->section_publish_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/helpshift/Faq;->tags:Ljava/util/List;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/helpshift/Faq;->tags:Ljava/util/List;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/helpshift/Faq;->title:Ljava/lang/String;

    return-object v0
.end method

.method protected getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/helpshift/Faq;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/helpshift/Faq;->id:J

    .line 112
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/helpshift/Faq;->title:Ljava/lang/String;

    return-object v0
.end method
