.class Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;
.super Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;
.source "UserEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureAreaTouchEventProcedureSelector"
.end annotation


# instance fields
.field private final mPhoto:Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;

.field private final mPhotoFront:Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;

.field private final mSuperSlow:Lcom/sonyericsson/android/camera/view/UserEventHandler$SuperSlowVideoCaptureAreaEventProcedure;

.field private final mVideo:Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoCaptureAreaEventProcedure;

.field private final mVideoFront:Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontVideoCaptureAreaEventProcedure;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .registers 4

    .line 1447
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V

    .line 1448
    new-instance p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-direct {p1, v1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->mPhoto:Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;

    .line 1450
    new-instance p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-direct {p1, v1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->mPhotoFront:Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;

    .line 1452
    new-instance p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoCaptureAreaEventProcedure;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-direct {p1, v1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoCaptureAreaEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->mVideo:Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoCaptureAreaEventProcedure;

    .line 1454
    new-instance p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontVideoCaptureAreaEventProcedure;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-direct {p1, v1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontVideoCaptureAreaEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->mVideoFront:Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontVideoCaptureAreaEventProcedure;

    .line 1456
    new-instance p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$SuperSlowVideoCaptureAreaEventProcedure;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-direct {p1, v1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SuperSlowVideoCaptureAreaEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->mSuperSlow:Lcom/sonyericsson/android/camera/view/UserEventHandler$SuperSlowVideoCaptureAreaEventProcedure;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V
    .registers 3

    .line 1447
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    return-void
.end method

.method private getCaptureAreaProcedure()Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;
    .registers 3

    .line 1460
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # getter for: Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$5100(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1461
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1462
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1463
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->mVideoFront:Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontVideoCaptureAreaEventProcedure;

    return-object v0

    .line 1465
    :cond_1d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    # invokes: Lcom/sonyericsson/android/camera/view/UserEventHandler;->isSuperSlowMode()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$5200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1466
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->mSuperSlow:Lcom/sonyericsson/android/camera/view/UserEventHandler$SuperSlowVideoCaptureAreaEventProcedure;

    return-object v0

    .line 1468
    :cond_28
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->mVideo:Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoCaptureAreaEventProcedure;

    return-object v0

    .line 1472
    :cond_2b
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1473
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->mPhotoFront:Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;

    return-object v0

    .line 1475
    :cond_34
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->mPhoto:Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;

    return-object v0
.end method


# virtual methods
.method doCancel()V
    .registers 2

    .line 1497
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->getCaptureAreaProcedure()Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doCancel()V

    return-void
.end method

.method doClick(Landroid/graphics/Point;)V
    .registers 3

    .line 1489
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->getCaptureAreaProcedure()Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doClick(Landroid/graphics/Point;)V

    return-void
.end method

.method doLongClick(Landroid/graphics/Point;)V
    .registers 3

    .line 1493
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->getCaptureAreaProcedure()Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doLongClick(Landroid/graphics/Point;)V

    return-void
.end method

.method doTouchAreaScaleReady()V
    .registers 2

    .line 1501
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->getCaptureAreaProcedure()Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doTouchAreaScaleReady()V

    return-void
.end method

.method doTouchAreaScaling(F)V
    .registers 3

    .line 1505
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->getCaptureAreaProcedure()Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doTouchAreaScaling(F)V

    return-void
.end method

.method doTouchDown()V
    .registers 2

    .line 1481
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->getCaptureAreaProcedure()Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doTouchDown()V

    return-void
.end method

.method doTouchUp(Landroid/graphics/Point;)V
    .registers 3

    .line 1485
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->getCaptureAreaProcedure()Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doTouchUp(Landroid/graphics/Point;)V

    return-void
.end method
