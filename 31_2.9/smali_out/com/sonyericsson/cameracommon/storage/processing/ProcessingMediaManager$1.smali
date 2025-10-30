.class Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$1;
.super Ljava/lang/Object;
.source "ProcessingMediaManager.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$1;->this$0:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDequeSizeChanged(I)V
    .registers 6

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$1;->this$0:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    # getter for: Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mOnMediaDequeSizeChangedListenerExternal:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->access$100(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;)Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$1;->this$0:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    # getter for: Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mOnMediaDequeSizeChangedListenerExternal:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->access$100(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;)Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;->onDequeSizeChanged(I)V

    .line 126
    :cond_11
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_41

    const/4 v0, 0x1

    .line 127
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",Waiting Deque Size:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$1;->this$0:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    # getter for: Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mDeque:Ljava/util/Deque;
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->access$200(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;)Ljava/util/Deque;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Deque;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_41
    return-void
.end method
