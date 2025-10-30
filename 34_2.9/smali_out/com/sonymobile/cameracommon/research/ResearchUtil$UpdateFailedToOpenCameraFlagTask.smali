.class Lcom/sonymobile/cameracommon/research/ResearchUtil$UpdateFailedToOpenCameraFlagTask;
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
    name = "UpdateFailedToOpenCameraFlagTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;)V
    .registers 2

    .line 491
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$UpdateFailedToOpenCameraFlagTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$UpdateFailedToOpenCameraFlagTask-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$UpdateFailedToOpenCameraFlagTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 494
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$UpdateFailedToOpenCameraFlagTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fputmIsFailedToOpenCamera(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)V

    return-void
.end method
