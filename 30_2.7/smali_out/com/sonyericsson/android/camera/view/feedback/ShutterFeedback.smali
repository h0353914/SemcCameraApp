.class public Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;
.super Ljava/lang/Object;
.source "ShutterFeedback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;
    }
.end annotation


# static fields
.field private static final CAPTURING_TIME_THRESHOLD_DIVIDE_SOUND_MILLIS:I = 0xfa

.field private static final CAPTURING_TIME_THRESHOLD_LONG_UI_MILLIS:I = 0x5dc


# instance fields
.field private final mRemainingCapturingTime:I

.field private final mType:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;I)V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->mType:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    .line 51
    iput p2, p0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->mRemainingCapturingTime:I

    return-void
.end method

.method public static create(I)Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;
    .registers 3

    const/16 v0, 0x5dc

    if-le p0, v0, :cond_7

    .line 58
    sget-object v0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->DIVIDE_SOUND_LONG:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    goto :goto_10

    :cond_7
    const/16 v0, 0xfa

    if-le p0, v0, :cond_e

    .line 60
    sget-object v0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->DIVIDE_SOUND:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    goto :goto_10

    .line 62
    :cond_e
    sget-object v0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->ON_CAPTURE_REQUEST:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    .line 65
    :goto_10
    new-instance v1, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    invoke-direct {v1, v0, p0}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;-><init>(Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;I)V

    return-object v1
.end method

.method public static createDefault()Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;
    .registers 3

    .line 77
    new-instance v0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;

    sget-object v1, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->ON_SHUTTER_DONE:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;-><init>(Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;I)V

    return-object v0
.end method


# virtual methods
.method public getEventOnCaptureRequest()Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->mType:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    # getter for: Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->eventOnCaptureRequest:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->access$200(Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;)Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    move-result-object v0

    return-object v0
.end method

.method public getEventOnShutterDone()Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->mType:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    # getter for: Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->eventOnShutterDone:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->access$300(Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;)Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    move-result-object v0

    return-object v0
.end method

.method public getRemainingCapturingTime()I
    .registers 2

    .line 45
    iget v0, p0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->mRemainingCapturingTime:I

    return v0
.end method

.method public getSoundOnCaptureRequest()Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->mType:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    # getter for: Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->soundOnCaptureRequest:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->access$000(Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;)Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    move-result-object v0

    return-object v0
.end method

.method public getSoundOnShutterDone()Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->mType:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    # getter for: Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->soundOnShutterDone:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->access$100(Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;)Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    move-result-object v0

    return-object v0
.end method

.method public isContinuousShotAcceptable()Z
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback;->mType:Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;

    # getter for: Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->isContinuousShotAcceptable:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;->access$400(Lcom/sonyericsson/android/camera/view/feedback/ShutterFeedback$Type;)Z

    move-result v0

    return v0
.end method
