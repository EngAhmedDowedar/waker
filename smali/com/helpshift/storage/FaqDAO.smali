.class public interface abstract Lcom/helpshift/storage/FaqDAO;
.super Ljava/lang/Object;
.source "FaqDAO.java"


# virtual methods
.method public abstract addFaq(Lcom/helpshift/Faq;)V
.end method

.method public abstract getFaq(Ljava/lang/String;)Lcom/helpshift/Faq;
.end method

.method public abstract getFaqsDataForSection(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/Faq;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFaqsForSection(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/Faq;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setIsHelpful(Ljava/lang/String;Ljava/lang/Boolean;)I
.end method
