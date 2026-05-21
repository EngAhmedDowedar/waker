.class public interface abstract Lcom/helpshift/storage/SectionDAO;
.super Ljava/lang/Object;
.source "SectionDAO.java"


# virtual methods
.method public abstract clearSectionsData()V
.end method

.method public abstract getAllSections()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/Section;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSection(Ljava/lang/String;)Lcom/helpshift/Section;
.end method

.method public abstract storeSections(Lorg/json/JSONArray;)V
.end method
