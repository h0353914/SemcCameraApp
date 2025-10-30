.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SetSideSensePositionTask;
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
    name = "SetSideSensePositionTask"
.end annotation


# instance fields
.field private final mX:I

.field private final mY:I

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;II)V
    .registers 4

    .line 1464
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetSideSensePositionTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1465
    iput p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetSideSensePositionTask;->mX:I

    .line 1466
    iput p3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetSideSensePositionTask;->mY:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1471
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetSideSensePositionTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    if-nez v0, :cond_12

    .line 1472
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetSideSensePositionTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    invoke-direct {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;-><init>()V

    # setter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$002(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    .line 1474
    :cond_12
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetSideSensePositionTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetSideSensePositionTask;->mX:I

    iget v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetSideSensePositionTask;->mY:I

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->updateSideSensePosition(II)V

    return-void
.end method
