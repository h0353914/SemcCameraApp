.class Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;
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
    name = "OnPauseTask"
.end annotation


# instance fields
.field private final mIsSameActivity:Z

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)V
    .registers 3

    .line 319
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-boolean p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;->mIsSameActivity:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;ZLcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .registers 4

    .line 311
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 325
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsViewEventSent:Z
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$1902(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)Z

    .line 326
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mUserOperationInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$1400(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 327
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mUserOperationInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$1400(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->clear()V

    .line 329
    :cond_17
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mPanoramaInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$1500(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 330
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mPanoramaInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$1500(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

    move-result-object v0

    # invokes: Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->sendPanoramaInfo()V
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->access$2000(Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;)V

    .line 332
    :cond_28
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;->mIsSameActivity:Z

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->onPause(Z)V

    .line 335
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->clearTemporarySettingValues()V

    return-void
.end method
