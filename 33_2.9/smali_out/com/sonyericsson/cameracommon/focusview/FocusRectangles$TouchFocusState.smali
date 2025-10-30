.class Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;
.super Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;
.source "FocusRectangles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchFocusState"
.end annotation


# instance fields
.field private mAutoFocusStatus:Z

.field private mIsAutoFocusStarted:Z

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V
    .registers 2

    .line 540
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    const/4 p1, 0x0

    .line 541
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->mIsAutoFocusStarted:Z

    .line 542
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->mAutoFocusStatus:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;)V
    .registers 3

    .line 540
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    return-void
.end method


# virtual methods
.method public handleClearExceptTouchFocus()V
    .registers 3

    .line 627
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 629
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$300(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->stopFocusAnimation(Landroid/view/View;)V

    .line 630
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->handleClearExceptTouchFocus()V

    return-void
.end method

.method public handleOnAutoFocusCanceled()V
    .registers 3

    const/4 v0, 0x0

    .line 576
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->mIsAutoFocusStarted:Z

    .line 577
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .line 578
    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object p0

    const v1, 0x7f090067

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 580
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public handleOnAutoFocusDone(Z)V
    .registers 5

    const/4 v0, 0x0

    .line 557
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->mIsAutoFocusStarted:Z

    .line 558
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->mAutoFocusStatus:Z

    .line 560
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v2, 0x1

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setAFLocking(Z)V
    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$400(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Z)V

    .line 561
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .line 562
    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const v2, 0x7f090067

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 563
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_38

    .line 565
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getTouchAfSuccessIcon()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 566
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$300(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getTouchAfSuccessIcon()I

    move-result p0

    invoke-virtual {p1, v1, p0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->playAfFocusInAnimationTouch(Landroid/view/View;I)V

    goto :goto_49

    .line 568
    :cond_38
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsManualFocus:Z
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z

    move-result p1

    if-nez p1, :cond_49

    .line 569
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$300(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->playAfFadeOutAnimationTouch(Landroid/view/View;)V

    :cond_49
    :goto_49
    return-void
.end method

.method public handleOnAutoFocusStarted()V
    .registers 4

    const/4 v0, 0x1

    .line 546
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->mIsAutoFocusStarted:Z

    .line 547
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v2, 0x0

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateFaceRectanglesData(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;Z)V
    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;Z)V

    .line 549
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 550
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$300(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    move-result-object v1

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .line 552
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getTouchAfFocusingIcon()I

    move-result p0

    .line 550
    invoke-virtual {v1, v0, p0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->startFocusAnimation(Landroid/view/View;I)V

    return-void
.end method

.method public handleOnFaceDetected(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V
    .registers 3

    .line 603
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->mIsAutoFocusStarted:Z

    if-nez p0, :cond_7

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    const/4 p0, 0x1

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateFaceRectanglesData(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;Z)V
    invoke-static {v0, p1, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;Z)V

    return-void
.end method

.method public handleOnObjectRemoved()V
    .registers 1

    return-void
.end method

.method public handleOnTrackedObjectStateUpdated(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V
    .registers 2

    return-void
.end method

.method public handleOnUiComponentRemoved()V
    .registers 3

    .line 636
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 637
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$1000(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 640
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetRectanglesColor()V
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$1100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    return-void
.end method

.method public handleSetFocusPosition(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    .registers 4

    const/4 v0, 0x0

    .line 585
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->mIsAutoFocusStarted:Z

    .line 587
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setFocusPositionInternal(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$600(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    return-void
.end method

.method public handleStartAfLock()V
    .registers 4

    .line 645
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusInLockedState;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->mAutoFocusStatus:Z

    invoke-direct {v1, v2, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusInLockedState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Z)V

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$800(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method public handleStartFaceDetection()V
    .registers 4

    .line 594
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearSingleAutoFocus()V

    .line 595
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearObjectTracking()V

    .line 598
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;)V

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$800(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method public handleStartObjectTracking()V
    .registers 4

    .line 609
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearExceptTouchFocus()V

    .line 612
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;)V

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$800(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method public handleStopAfLock()V
    .registers 3

    .line 650
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$800(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method
