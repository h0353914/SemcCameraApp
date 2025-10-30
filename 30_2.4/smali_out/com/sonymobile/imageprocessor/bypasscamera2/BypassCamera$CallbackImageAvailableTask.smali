.class Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackImageAvailableTask;
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
    name = "CallbackImageAvailableTask"
.end annotation


# instance fields
.field private final mBuffer:Ljava/nio/ByteBuffer;

.field private final mRequestId:I

.field final synthetic this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;


# direct methods
.method public constructor <init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;ILjava/nio/ByteBuffer;)V
    .registers 4

    .line 1499
    iput-object p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackImageAvailableTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1500
    iput p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackImageAvailableTask;->mRequestId:I

    .line 1501
    iput-object p3, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackImageAvailableTask;->mBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1506
    iget-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackImageAvailableTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    monitor-enter v0

    .line 1507
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackImageAvailableTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    # getter for: Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;
    invoke-static {v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->access$700(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 1508
    iget-object v1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackImageAvailableTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    # getter for: Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->mSnapshotCallback:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;
    invoke-static {v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->access$700(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackImageAvailableTask;->mRequestId:I

    iget-object v3, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackImageAvailableTask;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v1, v2, v3}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;->onImageAvailable(ILjava/nio/ByteBuffer;)V

    .line 1510
    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method
