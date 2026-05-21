.class final Lcom/anansimobile/extra/gamehelper/helpshift/HelpShiftInterface$1;
.super Ljava/lang/Object;
.source "HelpShiftInterface.java"

# interfaces
.implements Lcom/helpshift/Helpshift$HelpshiftDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anansimobile/extra/gamehelper/helpshift/HelpShiftInterface;->Init(Landroid/app/Activity;Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didReceiveNotification(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 41
    invoke-static {p1}, Lcom/anansimobile/extra/gamehelper/helpshift/HelpShiftInterface;->onGetNewMsg(I)V

    .line 42
    return-void
.end method

.method public displayAttachmentFile(Ljava/io/File;)V
    .locals 0
    .param p1, "arg0"    # Ljava/io/File;

    .prologue
    .line 48
    return-void
.end method

.method public helpshiftSessionBegan()V
    .locals 0

    .prologue
    .line 53
    invoke-static {}, Lcom/anansimobile/extra/gamehelper/helpshift/HelpShiftInterface;->onGameHelperBegin()V

    .line 54
    return-void
.end method

.method public helpshiftSessionEnded()V
    .locals 0

    .prologue
    .line 59
    invoke-static {}, Lcom/anansimobile/extra/gamehelper/helpshift/HelpShiftInterface;->onGameHelperEnd()V

    .line 60
    return-void
.end method

.method public newConversationStarted(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 66
    return-void
.end method

.method public userCompletedCustomerSatisfactionSurvey(ILjava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 73
    return-void
.end method

.method public userRepliedToConversation(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 79
    return-void
.end method
