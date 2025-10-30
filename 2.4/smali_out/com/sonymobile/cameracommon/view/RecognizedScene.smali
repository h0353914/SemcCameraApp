.class public Lcom/sonymobile/cameracommon/view/RecognizedScene;
.super Ljava/lang/Object;
.source "RecognizedScene.java"


# instance fields
.field final mIconId:I

.field final mSceneMode:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field final mTextId:I


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V
    .registers 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/RecognizedScene;->mSceneMode:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 28
    iput p2, p0, Lcom/sonymobile/cameracommon/view/RecognizedScene;->mIconId:I

    .line 29
    iput p3, p0, Lcom/sonymobile/cameracommon/view/RecognizedScene;->mTextId:I

    return-void
.end method

.method public static create(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;)Lcom/sonymobile/cameracommon/view/RecognizedScene;
    .registers 4

    const/4 v0, -0x1

    if-nez p0, :cond_a

    .line 34
    new-instance p0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v0}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object p0

    .line 37
    :cond_a
    sget-object v1, Lcom/sonymobile/cameracommon/view/RecognizedScene$1;->$SwitchMap$com$sonyericsson$android$camera$device$CameraParameterConverter$SceneMode:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_a6

    .line 93
    new-instance v1, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    invoke-direct {v1, p0, v0, v0}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v1

    .line 72
    :pswitch_1b
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const v1, 0x7f080274

    const v2, 0x7f0e02d5

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v0

    .line 69
    :pswitch_27
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const v1, 0x7f08027b

    const v2, 0x7f0e02da

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v0

    .line 66
    :pswitch_33
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const v1, 0x7f080275

    const v2, 0x7f0e02d6

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v0

    .line 63
    :pswitch_3f
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const v1, 0x7f08027c

    const v2, 0x7f0e02d8

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v0

    .line 60
    :pswitch_4b
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const v1, 0x7f080273

    const v2, 0x7f0e02db

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v0

    .line 57
    :pswitch_57
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const v1, 0x7f080272

    const v2, 0x7f0e02d3

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v0

    .line 54
    :pswitch_63
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const v1, 0x7f080271

    const v2, 0x7f0e02d4

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v0

    .line 51
    :pswitch_6f
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const v1, 0x7f080279

    const v2, 0x7f0e02dc

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v0

    .line 48
    :pswitch_7b
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const v1, 0x7f080278

    const v2, 0x7f0e02dd

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v0

    .line 45
    :pswitch_87
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const v1, 0x7f080276

    const v2, 0x7f0e02d7

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v0

    .line 42
    :pswitch_93
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const v1, 0x7f08027a

    const v2, 0x7f0e02d9

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v0

    .line 39
    :pswitch_9f
    new-instance v1, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    invoke-direct {v1, p0, v0, v0}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v1

    nop

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_9f
        :pswitch_93
        :pswitch_87
        :pswitch_7b
        :pswitch_6f
        :pswitch_63
        :pswitch_57
        :pswitch_4b
        :pswitch_3f
        :pswitch_33
        :pswitch_27
        :pswitch_1b
    .end packed-switch
.end method


# virtual methods
.method public getIconId()I
    .registers 2

    .line 103
    iget v0, p0, Lcom/sonymobile/cameracommon/view/RecognizedScene;->mIconId:I

    return v0
.end method

.method public getSceneMode()Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/RecognizedScene;->mSceneMode:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    return-object v0
.end method

.method public getTextId()I
    .registers 2

    .line 107
    iget v0, p0, Lcom/sonymobile/cameracommon/view/RecognizedScene;->mTextId:I

    return v0
.end method
