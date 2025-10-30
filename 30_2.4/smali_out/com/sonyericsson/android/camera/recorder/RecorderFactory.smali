.class public Lcom/sonyericsson/android/camera/recorder/RecorderFactory;
.super Ljava/lang/Object;
.source "RecorderFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;
    }
.end annotation


# static fields
.field private static MIN_VIDEO_DURATION_MILLIS:J = 0xbb8L


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Landroid/os/Handler;Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;II)Lcom/sonyericsson/android/camera/recorder/RecorderController;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/android/camera/recorder/utility/Accessor<",
            "Lcom/sonyericsson/android/camera/device/CameraActionSound;",
            ">;",
            "Lcom/sonyericsson/android/camera/recorder/utility/Accessor<",
            "Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;",
            "II)",
            "Lcom/sonyericsson/android/camera/recorder/RecorderController;"
        }
    .end annotation

    .line 76
    sget-object v0, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    # getter for: Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->mSlowMotion:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;
    invoke-static {p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->access$000(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3c

    .line 104
    # getter for: Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->mListener:Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;
    invoke-static {p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->access$100(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

    move-result-object v3

    .line 106
    # getter for: Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->mProgressNotificationIntervalMillis:I
    invoke-static {p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->access$200(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)I

    move-result v5

    .line 107
    # getter for: Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->mVideoStabilizer:Ljava/lang/String;
    invoke-static {p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->access$300(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Ljava/lang/String;

    move-result-object p5

    const-string p6, "intelligent_active"

    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 109
    # getter for: Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->mIsShutterSoundOn:Z
    invoke-static {p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->access$400(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Z

    move-result v7

    .line 110
    # getter for: Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->mIsHdrOn:Z
    invoke-static {p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->access$500(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Z

    move-result v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 100
    invoke-static/range {v0 .. v8}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory;->createDefault(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;Landroid/os/Handler;IZZZ)Lcom/sonyericsson/android/camera/recorder/RecorderController;

    move-result-object p0

    return-object p0

    .line 88
    :pswitch_32
    invoke-static/range {p0 .. p6}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory;->createSuperSlowShot(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Landroid/os/Handler;Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;II)Lcom/sonyericsson/android/camera/recorder/RecorderController;

    move-result-object p0

    return-object p0

    .line 78
    :pswitch_37
    invoke-static/range {p0 .. p6}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory;->createSuperSlow(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Landroid/os/Handler;Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;II)Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;

    move-result-object p0

    return-object p0

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_37
        :pswitch_32
    .end packed-switch
.end method

.method private static createDefault(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;Landroid/os/Handler;IZZZ)Lcom/sonyericsson/android/camera/recorder/RecorderController;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/android/camera/recorder/utility/Accessor<",
            "Lcom/sonyericsson/android/camera/device/CameraActionSound;",
            ">;",
            "Lcom/sonyericsson/android/camera/recorder/utility/Accessor<",
            "Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;",
            ">;",
            "Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;",
            "Landroid/os/Handler;",
            "IZZZ)",
            "Lcom/sonyericsson/android/camera/recorder/RecorderController;"
        }
    .end annotation

    move/from16 v13, p6

    const/4 v0, 0x1

    .line 186
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create recorder : VanillaCameraRecorderController progress-interval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p5

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " intelligent-active:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " shutter-sound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p7

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 193
    new-instance v14, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/VanillaCameraRecorderController;

    new-instance v3, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;

    const/4 v0, 0x2

    move/from16 v1, p8

    invoke-direct {v3, v0, v13, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;-><init>(IZZ)V

    sget-wide v5, Lcom/sonyericsson/android/camera/recorder/RecorderFactory;->MIN_VIDEO_DURATION_MILLIS:J

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v13}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/VanillaCameraRecorderController;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderInterface;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;JLandroid/os/Handler;IZZZZZ)V

    return-object v14
.end method

.method private static createSuperSlow(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Landroid/os/Handler;Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;II)Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/android/camera/recorder/utility/Accessor<",
            "Lcom/sonyericsson/android/camera/device/CameraActionSound;",
            ">;",
            "Lcom/sonyericsson/android/camera/recorder/utility/Accessor<",
            "Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;",
            "II)",
            "Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 126
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create recorder : SuperSlowRecorderController progress-interval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    # getter for: Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->mProgressNotificationIntervalMillis:I
    invoke-static/range {p4 .. p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->access$200(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " shutter-sound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    # getter for: Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->mIsShutterSoundOn:Z
    invoke-static/range {p4 .. p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->access$400(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 126
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 129
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;

    .line 133
    # getter for: Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->mListener:Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;
    invoke-static/range {p4 .. p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->access$100(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

    move-result-object v7

    .line 134
    # getter for: Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->mOnSuperSlowRecordingFinishedListener:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;
    invoke-static/range {p4 .. p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->access$600(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;

    move-result-object v8

    .line 136
    # getter for: Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->mProgressNotificationIntervalMillis:I
    invoke-static/range {p4 .. p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->access$200(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)I

    move-result v10

    .line 137
    # getter for: Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->mIsShutterSoundOn:Z
    invoke-static/range {p4 .. p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->access$400(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Z

    move-result v11

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v9, p3

    move/from16 v12, p5

    move/from16 v13, p6

    invoke-direct/range {v3 .. v13}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;Landroid/os/Handler;IZII)V

    return-object v0
.end method

.method private static createSuperSlowShot(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Landroid/os/Handler;Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;II)Lcom/sonyericsson/android/camera/recorder/RecorderController;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/android/camera/recorder/utility/Accessor<",
            "Lcom/sonyericsson/android/camera/device/CameraActionSound;",
            ">;",
            "Lcom/sonyericsson/android/camera/recorder/utility/Accessor<",
            "Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;",
            "II)",
            "Lcom/sonyericsson/android/camera/recorder/RecorderController;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 154
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create recorder : SuperSlowShotRecorderController progress-interval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    # getter for: Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->mProgressNotificationIntervalMillis:I
    invoke-static/range {p4 .. p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->access$200(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " shutter-sound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    # getter for: Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->mIsShutterSoundOn:Z
    invoke-static/range {p4 .. p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->access$400(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 154
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 157
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;

    .line 161
    # getter for: Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->mListener:Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;
    invoke-static/range {p4 .. p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->access$100(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

    move-result-object v7

    .line 162
    # getter for: Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->mOnSuperSlowRecordingFinishedListener:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;
    invoke-static/range {p4 .. p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->access$600(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;

    move-result-object v8

    .line 164
    # getter for: Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->mProgressNotificationIntervalMillis:I
    invoke-static/range {p4 .. p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->access$200(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)I

    move-result v10

    .line 165
    # getter for: Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->mIsShutterSoundOn:Z
    invoke-static/range {p4 .. p4}, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->access$400(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Z

    move-result v11

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v9, p3

    move/from16 v12, p5

    move/from16 v13, p6

    invoke-direct/range {v3 .. v13}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/utility/Accessor;Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;Landroid/os/Handler;IZII)V

    return-object v0
.end method
