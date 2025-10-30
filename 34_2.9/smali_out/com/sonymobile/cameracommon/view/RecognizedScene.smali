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

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/RecognizedScene;->mSceneMode:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 30
    iput p2, p0, Lcom/sonymobile/cameracommon/view/RecognizedScene;->mIconId:I

    .line 31
    iput p3, p0, Lcom/sonymobile/cameracommon/view/RecognizedScene;->mTextId:I

    return-void
.end method

.method public static create(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;)Lcom/sonymobile/cameracommon/view/RecognizedScene;
    .registers 4

    const/4 v0, -0x1

    if-nez p0, :cond_a

    .line 36
    new-instance p0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v0}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object p0

    .line 39
    :cond_a
    sget-object v1, Lcom/sonymobile/cameracommon/view/RecognizedScene$1;->$SwitchMap$com$sonyericsson$android$camera$device$CameraParameterConverter$SceneMode:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_b2

    .line 99
    new-instance v1, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    invoke-direct {v1, p0, v0, v0}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v1

    .line 78
    :pswitch_1b
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const v1, 0x7f0801f5

    const v2, 0x7f0f0390

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v0

    .line 75
    :pswitch_27
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const v1, 0x7f080280

    const v2, 0x7f0f0379

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v0

    .line 72
    :pswitch_33
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const v1, 0x7f080287

    const v2, 0x7f0f037e

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v0

    .line 69
    :pswitch_3f
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const v1, 0x7f080281

    const v2, 0x7f0f037a

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v0

    .line 66
    :pswitch_4b
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const v1, 0x7f080288

    const v2, 0x7f0f037c

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v0

    .line 63
    :pswitch_57
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const v1, 0x7f08027f

    const v2, 0x7f0f037f

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v0

    .line 60
    :pswitch_63
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const v1, 0x7f08027e

    const v2, 0x7f0f0377

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v0

    .line 57
    :pswitch_6f
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const v1, 0x7f08027d

    const v2, 0x7f0f0378

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v0

    .line 54
    :pswitch_7b
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const v1, 0x7f080285

    const v2, 0x7f0f0380

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v0

    .line 51
    :pswitch_87
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const v1, 0x7f080284

    const v2, 0x7f0f0381

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v0

    .line 47
    :pswitch_93
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const v1, 0x7f080282

    const v2, 0x7f0f037b

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v0

    .line 44
    :pswitch_9f
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const v1, 0x7f080286

    const v2, 0x7f0f037d

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v0

    .line 41
    :pswitch_ab
    new-instance v1, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    invoke-direct {v1, p0, v0, v0}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v1

    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_ab
        :pswitch_9f
        :pswitch_93
        :pswitch_87
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
.method public getContentDescription(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const v0, 0x7f0f0063

    .line 105
    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/RecognizedScene;->getTextId()I

    move-result p0

    invoke-static {p1, p0}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    .line 108
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIconId()I
    .registers 1

    .line 116
    iget p0, p0, Lcom/sonymobile/cameracommon/view/RecognizedScene;->mIconId:I

    return p0
.end method

.method public getSceneMode()Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/RecognizedScene;->mSceneMode:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    return-object p0
.end method

.method public getTextId()I
    .registers 1

    .line 120
    iget p0, p0, Lcom/sonymobile/cameracommon/view/RecognizedScene;->mTextId:I

    return p0
.end method
