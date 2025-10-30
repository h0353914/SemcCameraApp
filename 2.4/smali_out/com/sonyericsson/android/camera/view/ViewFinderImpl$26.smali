.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getThumbnailStateListener()Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .registers 2

    .line 6939
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThumbnailClicked(Lcom/sonyericsson/cameracommon/contentsview/contents/Content;)V
    .registers 6

    .line 6942
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mIsFrontAngleChanging:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$8500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    if-eqz p1, :cond_1e

    .line 6946
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getContentInfo()Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v0

    .line 6948
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->isMediaDataVerified()Z

    move-result p1

    .line 6951
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalUri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mMimeType:Ljava/lang/String;

    iget v0, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOrientation:I

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->clickThumbnail(Landroid/net/Uri;Ljava/lang/String;IZ)V
    invoke-static {v1, v2, v3, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$8600(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Landroid/net/Uri;Ljava/lang/String;IZ)V

    :cond_1e
    return-void
.end method

.method public onThumbnailCreated(Lcom/sonyericsson/cameracommon/contentsview/contents/Content;)V
    .registers 4

    .line 6964
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$2700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCapturingSchemeCount()I

    move-result v0

    if-eqz v0, :cond_16

    .line 6965
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getContentInfo()Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mContentType:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    sget-object v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    if-ne v0, v1, :cond_57

    .line 6967
    :cond_16
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mInstantViewer:Lcom/sonyericsson/android/camera/view/InstantViewer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$8700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/InstantViewer;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 6968
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mInstantViewer:Lcom/sonyericsson/android/camera/view/InstantViewer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$8700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/InstantViewer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getContentInfo()Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/InstantViewer;->prepareBitmap(Landroid/net/Uri;)V

    .line 6970
    :cond_2d
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getContentInfo()Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mContentType:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    sget-object v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    if-ne v0, v1, :cond_57

    .line 6972
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getPredictiveCaptureStoreInfo()Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 6973
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getContentInfo()Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$26;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 6974
    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getPredictiveCaptureStoreInfo()Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;->getCaptureNum()I

    move-result v0

    iput v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mPredictiveNum:I

    :cond_57
    return-void
.end method
