.class Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtendedOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Landroid/content/Context;)V
    .registers 3

    .line 3061
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    const/4 p1, 0x1

    .line 3062
    invoke-direct {p0, p2, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    .line 3068
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # setter for: Lcom/sonyericsson/android/camera/CameraActivity;->mSensorOrientationDegree:I
    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$4002(Lcom/sonyericsson/android/camera/CameraActivity;I)I

    .line 3071
    :cond_8
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mLastOrientationDegree:I
    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$4100(Lcom/sonyericsson/android/camera/CameraActivity;)I

    move-result v1

    if-ne p1, v1, :cond_11

    return-void

    .line 3074
    :cond_11
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # setter for: Lcom/sonyericsson/android/camera/CameraActivity;->mLastOrientationDegree:I
    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$4102(Lcom/sonyericsson/android/camera/CameraActivity;I)I

    .line 3076
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mLastOrientationDegree:I
    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$4100(Lcom/sonyericsson/android/camera/CameraActivity;)I

    move-result p1

    if-eq p1, v0, :cond_27

    .line 3077
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mLastOrientationDegree:I
    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$4100(Lcom/sonyericsson/android/camera/CameraActivity;)I

    move-result v0

    # setter for: Lcom/sonyericsson/android/camera/CameraActivity;->mLastDeterminedOrientationDegree:I
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$4202(Lcom/sonyericsson/android/camera/CameraActivity;I)I

    .line 3080
    :cond_27
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getLayoutOrientation()Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    move-result-object v0

    # invokes: Lcom/sonyericsson/android/camera/CameraActivity;->notifyLayoutOrientationChanged(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$4300(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V

    return-void
.end method
