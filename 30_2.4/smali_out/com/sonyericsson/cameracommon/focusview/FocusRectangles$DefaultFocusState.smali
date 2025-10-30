.class Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;
.super Ljava/lang/Object;
.source "FocusRectangles.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultFocusState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V
    .registers 2

    .line 978
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleClearAllFocusExceptFace()V
    .registers 3

    .line 1107
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;

    invoke-direct {v1, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$900(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    .line 1110
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearAutoFocus()V
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$700(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    .line 1111
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearTouchFocus()V

    .line 1112
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearObjectTracking()V

    return-void
.end method

.method public handleClearExceptTouchFocus()V
    .registers 2

    .line 1100
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearAutoFocus()V
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$700(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    .line 1101
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearObjectTracking()V

    .line 1102
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearFaceDetection()V

    return-void
.end method

.method public handleClearObjectTracking()V
    .registers 3

    .line 1154
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->hideTrackedObjectRecgantle()V
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$2600(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    .line 1155
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->removeObjectFocusRectAnimation()V
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$2700(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    .line 1156
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v1, 0x0

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetObjectTrackingRectangleColor(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$2800(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Z)V

    return-void
.end method

.method public handleOnAutoFocusCanceled()V
    .registers 1

    return-void
.end method

.method public handleOnAutoFocusDone(ZZ)V
    .registers 5

    .line 1005
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$4;->$SwitchMap$com$sonyericsson$cameracommon$focusview$FocusRectangles$AutoFocusViewType:[I

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAutoFocusViewType:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$1100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_5c

    goto :goto_5b

    :pswitch_13
    if-eqz p2, :cond_1d

    .line 1023
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;->FOCUSDONE:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->showMultiAutoFocusingView(ZLcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;)V
    invoke-static {p2, p1, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$2500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;ZLcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;)V

    goto :goto_5b

    .line 1025
    :cond_1d
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mMultiAfRect:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$1300(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->setVisibility(I)V

    goto :goto_5b

    .line 1007
    :pswitch_27
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .line 1008
    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$1200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const v0, 0x7f090067

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p2, :cond_52

    .line 1010
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_42

    const/4 p2, 0x0

    .line 1011
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_42
    const p2, 0x7f080090

    .line 1013
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1014
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;
    invoke-static {p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$300(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->playAfFocusInAnimationSingle(Landroid/view/View;)V

    goto :goto_5b

    .line 1016
    :cond_52
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_5b

    .line 1017
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5b
    :goto_5b
    return-void

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_27
        :pswitch_13
    .end packed-switch
.end method

.method public handleOnAutoFocusStarted(Z)V
    .registers 4

    .line 983
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v1, 0x1

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setAFLocking(ZZ)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$400(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;ZZ)V

    .line 985
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$4;->$SwitchMap$com$sonyericsson$cameracommon$focusview$FocusRectangles$AutoFocusViewType:[I

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAutoFocusViewType:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$1100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4e

    goto :goto_4c

    .line 997
    :pswitch_18
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;->FOCUSING:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->showMultiAutoFocusingView(ZLcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;)V
    invoke-static {v0, p1, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$2500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;ZLcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;)V

    goto :goto_4c

    .line 987
    :pswitch_20
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$1200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 988
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$1200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const v1, 0x7f090067

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 989
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_40

    .line 990
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 992
    :cond_40
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$300(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    move-result-object v0

    const v1, 0x7f080091

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->startFocusAnimation(Landroid/view/View;I)V

    :goto_4c
    return-void

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_20
        :pswitch_18
    .end packed-switch
.end method

.method public handleOnBurstShutterDone(Z)V
    .registers 2

    return-void
.end method

.method public handleOnFaceDetected(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V
    .registers 4

    .line 1058
    iget-object v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_18

    .line 1060
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearFaceDetection()V

    .line 1062
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;

    invoke-direct {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V
    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$900(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void

    .line 1066
    :cond_18
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearAutoFocus()V
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$700(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    .line 1068
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v1, 0x0

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateFaceRectanglesData(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;Z)V
    invoke-static {v0, p1, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;Z)V

    .line 1071
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;)V

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V
    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$900(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method public handleOnObjectLost()V
    .registers 1

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

.method public handleOnUiComponentOverlaid()V
    .registers 4

    .line 1117
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$4;->$SwitchMap$com$sonyericsson$cameracommon$focusview$FocusRectangles$AutoFocusViewType:[I

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAutoFocusViewType:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$1100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_3c

    goto :goto_26

    .line 1122
    :pswitch_13
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mMultiAfRect:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$1300(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->setVisibility(I)V

    goto :goto_26

    .line 1119
    :pswitch_1d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$1200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1126
    :goto_26
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v2, 0x0

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->hideFaceRectangles(Z)V
    invoke-static {v0, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$2400(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Z)V

    .line 1127
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->hideTrackedObjectRecgantle()V
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$2600(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    .line 1128
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_13
    .end packed-switch
.end method

.method public handleOnUiComponentRemoved()V
    .registers 4

    .line 1137
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1138
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$4;->$SwitchMap$com$sonyericsson$cameracommon$focusview$FocusRectangles$AutoFocusViewType:[I

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAutoFocusViewType:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$1100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_36

    goto :goto_2f

    .line 1143
    :pswitch_1c
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mMultiAfRect:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$1300(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->setVisibility(I)V

    goto :goto_2f

    .line 1140
    :pswitch_26
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$1200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1149
    :goto_2f
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetRectanglesColor()V
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$1400(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_26
        :pswitch_1c
    .end packed-switch
.end method

.method public handleSetFocusPosition(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    .registers 4

    .line 1039
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setFocusPositionInternal(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    invoke-static {v0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$600(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    .line 1042
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance p2, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;)V

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V
    invoke-static {p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$900(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method public handleSetMultiAutoFocusArea()V
    .registers 1

    return-void
.end method

.method public handleStartAfLock(Z)V
    .registers 4

    .line 1161
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$4;->$SwitchMap$com$sonyericsson$cameracommon$focusview$FocusRectangles$AutoFocusViewType:[I

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAutoFocusViewType:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$1100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_40

    goto :goto_3e

    .line 1166
    :pswitch_12
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mMultiAutoFocusArea:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$2900(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1167
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusWaitingMultiAutoFocusAreaState;

    invoke-direct {v1, v0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusWaitingMultiAutoFocusAreaState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Z)V

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$900(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    goto :goto_3e

    .line 1169
    :cond_29
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusInLockedState;

    invoke-direct {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusInLockedState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V
    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$900(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    goto :goto_3e

    .line 1163
    :pswitch_34
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusInLockedState;

    invoke-direct {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusInLockedState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V
    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$900(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    :goto_3e
    return-void

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_34
        :pswitch_12
    .end packed-switch
.end method

.method public handleStartFaceDetection()V
    .registers 4

    .line 1049
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearAutoFocus()V
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$700(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    .line 1050
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearObjectTracking()V

    .line 1053
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;)V

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$900(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method public handleStartObjectTracking()V
    .registers 4

    .line 1077
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearExceptTouchFocus()V

    .line 1080
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;)V

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$900(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method public handleStopAfLock()V
    .registers 3

    .line 1178
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;

    invoke-direct {v1, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$900(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method
