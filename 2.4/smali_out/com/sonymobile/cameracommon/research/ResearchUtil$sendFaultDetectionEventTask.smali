.class Lcom/sonymobile/cameracommon/research/ResearchUtil$sendFaultDetectionEventTask;
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
    name = "sendFaultDetectionEventTask"
.end annotation


# instance fields
.field private final mTrigger:Ljava/lang/String;

.field private final mType:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Ljava/lang/String;Lcom/sonyericsson/android/camera/faultdetection/DetectionType;)V
    .registers 4

    .line 2509
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendFaultDetectionEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2510
    iput-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendFaultDetectionEventTask;->mTrigger:Ljava/lang/String;

    .line 2511
    iput-object p3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendFaultDetectionEventTask;->mType:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2516
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendFaultDetectionEventTask;->mTrigger:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendFaultDetectionEventTask;->mType:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendFaultDetectionEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
