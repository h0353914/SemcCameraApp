.class Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$3;
.super Ljava/lang/Object;
.source "BaseRecorderController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V
    .registers 2

    .line 904
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$3;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMaxDurationReached()V
    .registers 3

    const-string v0, "onMaxDurationReached() E"

    .line 908
    # invokes: Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->access$100(Ljava/lang/String;)V

    .line 909
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$3;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    # invokes: Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->displayMaxDuration()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->access$1600(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V

    .line 910
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$3;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    sget-object v1, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->MAX_DURATION_REACHED:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    # invokes: Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->notifyFinishResult(Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->access$1100(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V

    const-string v0, "onMaxDurationReached() X"

    .line 911
    # invokes: Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->access$100(Ljava/lang/String;)V

    return-void
.end method

.method public onMaxFileSizeReached()V
    .registers 3

    const-string v0, "onMaxFileSizeReached() E"

    .line 916
    # invokes: Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->access$100(Ljava/lang/String;)V

    .line 917
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$3;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    sget-object v1, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->MAX_FILESIZE_REACHED:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    # invokes: Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->notifyFinishResult(Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->access$1100(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V

    const-string v0, "onMaxFileSizeReached() X"

    .line 918
    # invokes: Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->trace(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->access$100(Ljava/lang/String;)V

    return-void
.end method
