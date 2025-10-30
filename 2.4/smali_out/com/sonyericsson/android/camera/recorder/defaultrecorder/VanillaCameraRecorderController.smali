.class public Lcom/sonyericsson/android/camera/recorder/defaultrecorder/VanillaCameraRecorderController;
.super Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;
.source "VanillaCameraRecorderController.java"


# static fields
.field private static final TRACE:Z = true


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderInterface;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;JLandroid/os/Handler;IZZZZZ)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/android/camera/recorder/utility/Accessor<",
            "Lcom/sonyericsson/android/camera/device/CameraActionSound;",
            ">;",
            "Lcom/sonyericsson/android/camera/recorder/RecorderInterface;",
            "Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;",
            "J",
            "Landroid/os/Handler;",
            "IZZZZZ)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p7

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    .line 81
    invoke-direct/range {v0 .. v12}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderInterface;Landroid/os/Handler;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;JIZZZZ)V

    const-string v0, "VanillaCameraRecorderController() E"

    .line 93
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/VanillaCameraRecorderController;->trace(Ljava/lang/String;)V

    if-eqz p13, :cond_22

    .line 101
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/VanillaCameraRecorderController;->disableAdjustRecordingTimeByRecorderNotification()V

    :cond_22
    const-string v0, "VanillaCameraRecorderController() X"

    .line 104
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/VanillaCameraRecorderController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method private static trace(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 33
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected prepareInternal(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z
    .registers 3

    const-string v0, "prepareInternal() E"

    .line 109
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/VanillaCameraRecorderController;->trace(Ljava/lang/String;)V

    .line 111
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->prepareInternal(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z

    move-result p1

    if-nez p1, :cond_12

    const-string p1, "prepareInternal() X failed"

    .line 112
    invoke-static {p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/VanillaCameraRecorderController;->trace(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_12
    const-string p1, "prepareInternal() X"

    .line 116
    invoke-static {p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/VanillaCameraRecorderController;->trace(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected startInternal()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const-string v0, "startInternal() E"

    .line 122
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/VanillaCameraRecorderController;->trace(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/VanillaCameraRecorderController;->startRecorder()Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "startInternal() X failed"

    .line 125
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/VanillaCameraRecorderController;->trace(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_12
    const-string v0, "startInternal() X"

    .line 129
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/VanillaCameraRecorderController;->trace(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected startRecorder()Z
    .registers 3

    .line 140
    :try_start_0
    invoke-super {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->startInternal()Z

    move-result v0
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_e

    :catch_5
    move-exception v0

    .line 142
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-nez v1, :cond_f

    .line 143
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/VanillaCameraRecorderController;->notifyError()V

    const/4 v0, 0x0

    :goto_e
    return v0

    .line 142
    :cond_f
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected stopInternal()Z
    .registers 2

    const-string v0, "stopInternal() E"

    .line 150
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/VanillaCameraRecorderController;->trace(Ljava/lang/String;)V

    .line 152
    invoke-super {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->stopInternal()Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "stopInternal() X failed"

    .line 153
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/VanillaCameraRecorderController;->trace(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_12
    const-string v0, "stopInternal() X"

    .line 157
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/VanillaCameraRecorderController;->trace(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
