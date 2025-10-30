.class Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusInLockedState;
.super Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;
.source "FocusRectangles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TouchFocusInLockedState"
.end annotation


# instance fields
.field private mAutoFocusStatus:Z

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Z)V
    .registers 4

    .line 1052
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusInLockedState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;)V

    .line 1053
    iput-boolean p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusInLockedState;->mAutoFocusStatus:Z

    return-void
.end method


# virtual methods
.method public handleOnAutoFocusDone(Z)V
    .registers 4

    .line 1058
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusInLockedState;->mAutoFocusStatus:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 1061
    :cond_5
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusInLockedState;->mAutoFocusStatus:Z

    .line 1064
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusInLockedState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .line 1065
    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 1066
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_35

    .line 1068
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusInLockedState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getTouchAfSuccessIcon()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1069
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusInLockedState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$300(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusInLockedState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getTouchAfSuccessIcon()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->playAfFocusInAnimationTouch(Landroid/view/View;I)V

    goto :goto_46

    .line 1071
    :cond_35
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusInLockedState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsManualFocus:Z
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z

    move-result p1

    if-nez p1, :cond_46

    .line 1072
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusInLockedState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$300(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->playAfFadeOutAnimationTouch(Landroid/view/View;)V

    :cond_46
    :goto_46
    return-void
.end method

.method public handleOnFaceDetected(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V
    .registers 2

    return-void
.end method

.method public handleStartFaceDetection()V
    .registers 1

    return-void
.end method
