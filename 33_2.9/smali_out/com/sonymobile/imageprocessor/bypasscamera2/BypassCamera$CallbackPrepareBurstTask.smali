.class Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareBurstTask;
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
    name = "CallbackPrepareBurstTask"
.end annotation


# instance fields
.field private final mIsSuccess:Z

.field final synthetic this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;


# direct methods
.method public constructor <init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;Z)V
    .registers 3

    .line 1474
    iput-object p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareBurstTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1475
    iput-boolean p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareBurstTask;->mIsSuccess:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1480
    iget-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareBurstTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    monitor-enter v0

    .line 1481
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareBurstTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    # getter for: Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mPrepareBurstCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareBurstCallback;
    invoke-static {v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->access$900(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareBurstCallback;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 1482
    iget-object v1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareBurstTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    # getter for: Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mPrepareBurstCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareBurstCallback;
    invoke-static {v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->access$900(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareBurstCallback;

    move-result-object v1

    iget-boolean p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareBurstTask;->mIsSuccess:Z

    invoke-interface {v1, p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareBurstCallback;->onPrepareBurstDone(Z)V

    .line 1484
    :cond_16
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method
