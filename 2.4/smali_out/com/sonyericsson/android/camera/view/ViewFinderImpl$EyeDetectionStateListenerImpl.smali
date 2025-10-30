.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$EyeDetectionStateListenerImpl;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton$EyeDetectionStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EyeDetectionStateListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .registers 2

    .line 1736
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$EyeDetectionStateListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1;)V
    .registers 3

    .line 1736
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$EyeDetectionStateListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    return-void
.end method


# virtual methods
.method public onEyeDetectionDisabled()V
    .registers 3

    .line 1747
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$EyeDetectionStateListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$2900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1748
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$EyeDetectionStateListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$2900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setEyeDetection(Z)V

    :cond_12
    return-void
.end method

.method public onEyeDetectionEnabled()V
    .registers 3

    .line 1740
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$EyeDetectionStateListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$2900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1741
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$EyeDetectionStateListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$2900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setEyeDetection(Z)V

    :cond_12
    return-void
.end method
