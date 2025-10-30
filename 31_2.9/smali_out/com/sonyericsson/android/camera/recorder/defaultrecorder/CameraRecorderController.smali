.class public Lcom/sonyericsson/android/camera/recorder/defaultrecorder/CameraRecorderController;
.super Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;
.source "CameraRecorderController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraRecorderController"

.field private static final TRACE:Z = true


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderInterface;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;Landroid/os/Handler;IZZ)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/android/camera/recorder/utility/Accessor<",
            "Lcom/sonyericsson/android/camera/device/CameraActionSound;",
            ">;",
            "Lcom/sonyericsson/android/camera/recorder/RecorderInterface;",
            "Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;",
            "Landroid/os/Handler;",
            "IZZ)V"
        }
    .end annotation

    .line 73
    invoke-static/range {p7 .. p7}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/CameraRecorderController;->minVideoLengthMillis(Z)J

    move-result-wide v6

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p4

    move/from16 v8, p6

    move/from16 v12, p8

    .line 68
    invoke-direct/range {v0 .. v12}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderInterface;Landroid/os/Handler;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;JIZZZZ)V

    const-string v0, "CameraRecorderController() E"

    .line 80
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/CameraRecorderController;->trace(Ljava/lang/String;)V

    const-string v0, "CameraRecorderController() X"

    .line 82
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/CameraRecorderController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method private static trace(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x2

    .line 34
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CameraRecorderController"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected prepareInternal(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z
    .registers 3

    const-string v0, "prepareInternal() E"

    .line 87
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/CameraRecorderController;->trace(Ljava/lang/String;)V

    .line 90
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->prepareInternal(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z

    move-result p1

    if-nez p1, :cond_12

    const-string p1, "prepareInternal() X failed"

    .line 91
    invoke-static {p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/CameraRecorderController;->trace(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_12
    const-string p1, "prepareInternal() X"

    .line 95
    invoke-static {p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/CameraRecorderController;->trace(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public stopAudioRecording()V
    .registers 2

    .line 132
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/CameraRecorderController;->getRecorder()Lcom/sonyericsson/android/camera/recorder/RecorderInterface;

    move-result-object v0

    .line 133
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface;->stopAudioRecording()V

    return-void
.end method
