.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomAssistDetailTask;
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
    name = "SetZoomAssistDetailTask"
.end annotation


# instance fields
.field private mIsZoomAssist:Z

.field private mZoomAssistDetail:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;ZLjava/lang/String;)V
    .registers 4

    .line 1622
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomAssistDetailTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1623
    iput-boolean p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomAssistDetailTask;->mIsZoomAssist:Z

    .line 1624
    iput-object p3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomAssistDetailTask;->mZoomAssistDetail:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1629
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomAssistDetailTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    if-nez v0, :cond_12

    .line 1630
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomAssistDetailTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    invoke-direct {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;-><init>()V

    # setter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$002(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    .line 1632
    :cond_12
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomAssistDetailTask;->mIsZoomAssist:Z

    if-eqz v0, :cond_22

    .line 1633
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomAssistDetailTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomAssistDetailTask;->mZoomAssistDetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->updateZoomAssistDetail(Ljava/lang/String;)V

    goto :goto_2d

    .line 1635
    :cond_22
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomAssistDetailTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    const-string v1, "NO_FRAME"

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->updateZoomAssistDetail(Ljava/lang/String;)V

    :goto_2d
    return-void
.end method
