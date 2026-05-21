.class public interface abstract Lcom/helpshift/Helpshift$HelpshiftDelegate;
.super Ljava/lang/Object;
.source "Helpshift.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/Helpshift;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HelpshiftDelegate"
.end annotation


# virtual methods
.method public abstract didReceiveNotification(I)V
.end method

.method public abstract displayAttachmentFile(Ljava/io/File;)V
.end method

.method public abstract helpshiftSessionBegan()V
.end method

.method public abstract helpshiftSessionEnded()V
.end method

.method public abstract newConversationStarted(Ljava/lang/String;)V
.end method

.method public abstract userCompletedCustomerSatisfactionSurvey(ILjava/lang/String;)V
.end method

.method public abstract userRepliedToConversation(Ljava/lang/String;)V
.end method
