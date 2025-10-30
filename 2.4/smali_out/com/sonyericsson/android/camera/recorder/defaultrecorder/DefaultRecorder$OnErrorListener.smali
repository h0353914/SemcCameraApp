.class Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnErrorListener;
.super Ljava/lang/Object;
.source "DefaultRecorder.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnErrorListener"
.end annotation


# instance fields
.field private final mListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;)V
    .registers 3

    .line 531
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnErrorListener;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    iput-object p2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnErrorListener;->mListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$1;)V
    .registers 4

    .line 528
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnErrorListener;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;)V

    return-void
.end method

.method private onError(Lcom/sonymobile/android/media/MediaRecorder;II)V
    .registers 7

    const/4 p1, 0x1

    .line 536
    new-array v0, p1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError() E what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # invokes: Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->getNameForErrorCode(I)Ljava/lang/String;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->access$200(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " extra:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 538
    iget-object p2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnErrorListener;->mListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;

    invoke-interface {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;->onError()V

    const p2, 0xf4240

    if-eq p3, p2, :cond_31

    goto :goto_36

    .line 544
    :cond_31
    iget-object p2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnErrorListener;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;

    # setter for: Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mIsErrorOnStart:Z
    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->access$302(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;Z)Z

    :goto_36
    const-string p1, "onError() X"

    .line 549
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .registers 4

    const/4 p1, 0x0

    .line 554
    check-cast p1, Lcom/sonymobile/android/media/MediaRecorder;

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnErrorListener;->onError(Lcom/sonymobile/android/media/MediaRecorder;II)V

    return-void
.end method
