.class public Lcom/helpshift/Section;
.super Ljava/lang/Object;
.source "Section.java"


# instance fields
.field private id:J

.field private publish_id:Ljava/lang/String;

.field private section_id:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/helpshift/Section;->id:J

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/Section;->section_id:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/Section;->publish_id:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/Section;->title:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "sectionId"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "publish_id"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lcom/helpshift/Section;->id:J

    .line 20
    iput-object p3, p0, Lcom/helpshift/Section;->section_id:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/helpshift/Section;->title:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lcom/helpshift/Section;->publish_id:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "publish_id"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/helpshift/Section;->id:J

    .line 28
    iput-object p1, p0, Lcom/helpshift/Section;->title:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/helpshift/Section;->publish_id:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "publish_id"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/helpshift/Section;->id:J

    .line 35
    iput-object p1, p0, Lcom/helpshift/Section;->section_id:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/helpshift/Section;->title:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/helpshift/Section;->publish_id:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "otherObj"    # Ljava/lang/Object;

    .prologue
    .line 64
    move-object v0, p1

    check-cast v0, Lcom/helpshift/Section;

    .line 66
    .local v0, "other":Lcom/helpshift/Section;
    iget-object v1, p0, Lcom/helpshift/Section;->title:Ljava/lang/String;

    iget-object v2, v0, Lcom/helpshift/Section;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/helpshift/Section;->publish_id:Ljava/lang/String;

    iget-object v2, v0, Lcom/helpshift/Section;->publish_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/helpshift/Section;->section_id:Ljava/lang/String;

    iget-object v2, v0, Lcom/helpshift/Section;->section_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    :cond_0
    const/4 v1, 0x0

    .line 71
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getPublishId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/helpshift/Section;->publish_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/helpshift/Section;->section_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/helpshift/Section;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/helpshift/Section;->id:J

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/helpshift/Section;->title:Ljava/lang/String;

    return-object v0
.end method
