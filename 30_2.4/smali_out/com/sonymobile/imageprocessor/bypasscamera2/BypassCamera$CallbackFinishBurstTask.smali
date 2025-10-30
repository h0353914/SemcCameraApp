.class Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackFinishBurstTask;
.super Ljava/lang/Object;
.source "BypassCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackFinishBurstTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;


# direct methods
.method private constructor <init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)V
    .registers 2

    .line 1542
    iput-object p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackFinishBurstTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$1;)V
    .registers 3

    .line 1542
    invoke-direct {p0, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackFinishBurstTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1546
    iget-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackFinishBurstTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    monitor-enter v0

    .line 1547
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackFinishBurstTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    # getter for: Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mFinishBurstCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$FinishBurstCallback;
    invoke-static {v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->access$1000(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$FinishBurstCallback;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 1548
    iget-object v1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackFinishBurstTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    # getter for: Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mFinishBurstCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$FinishBurstCallback;
    invoke-static {v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->access$1000(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$FinishBurstCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$FinishBurstCallback;->onFinishBurstDone()V

    .line 1550
    :cond_14
    monitor-exit v0

    return-void

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method
