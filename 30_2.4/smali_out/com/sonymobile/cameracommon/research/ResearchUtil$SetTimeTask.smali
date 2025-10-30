.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;
.super Ljava/lang/Object;
.source "ResearchUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/ResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetTimeTask"
.end annotation


# instance fields
.field private final mIsStart:Z

.field private final mTime:J

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;ZJ)V
    .registers 5

    .line 1688
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1689
    iput-boolean p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;->mIsStart:Z

    .line 1690
    iput-wide p3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;->mTime:J

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1695
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mAfDoneKeepingTimeHolder:Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$900(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    move-result-object v0

    if-nez v0, :cond_13

    .line 1696
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    # setter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mAfDoneKeepingTimeHolder:Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$902(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;)Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    .line 1698
    :cond_13
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;->mIsStart:Z

    if-eqz v0, :cond_23

    .line 1699
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mAfDoneKeepingTimeHolder:Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$900(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;->mTime:J

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->updateTimeAfDone(J)V

    goto :goto_2e

    .line 1701
    :cond_23
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mAfDoneKeepingTimeHolder:Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$900(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;->mTime:J

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->updateTimeCapture(J)V

    :goto_2e
    return-void
.end method
