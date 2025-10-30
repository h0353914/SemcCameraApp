.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$28;
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

    .line 7165
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$28;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThumbnailClicked(Lcom/sonyericsson/cameracommon/contentsview/contents/Content;)V
    .registers 5

    .line 7168
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$28;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mIsFrontAngleChanging:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$8700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$28;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isRestartPreviewSessionState()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_2b

    :cond_11
    if-eqz p1, :cond_2b

    .line 7172
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getContentInfo()Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v0

    .line 7174
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->isMediaDataVerified()Z

    move-result p1

    .line 7177
    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->THUMBNAIL_CLICK:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    .line 7178
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$28;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-object v1, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalUri:Landroid/net/Uri;

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mMimeType:Ljava/lang/String;

    iget v0, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOrientation:I

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->clickThumbnail(Landroid/net/Uri;Ljava/lang/String;IZ)V
    invoke-static {p0, v1, v2, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$8800(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Landroid/net/Uri;Ljava/lang/String;IZ)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public onThumbnailCreated(Lcom/sonyericsson/cameracommon/contentsview/contents/Content;)V
    .registers 4

    .line 7187
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->PREVIEW_THUMBNAIL_SHOW:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    .line 7192
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$28;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$2500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getRemainSavingPhotoRequestCount()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 7193
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getContentInfo()Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mContentType:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    sget-object v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    if-ne v0, v1, :cond_5c

    .line 7195
    :cond_1b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$28;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mInstantViewer:Lcom/sonyericsson/android/camera/view/InstantViewer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$8900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/InstantViewer;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 7196
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$28;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mInstantViewer:Lcom/sonyericsson/android/camera/view/InstantViewer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$8900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/InstantViewer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getContentInfo()Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/InstantViewer;->prepareBitmap(Landroid/net/Uri;)V

    .line 7198
    :cond_32
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getContentInfo()Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mContentType:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    sget-object v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    if-ne v0, v1, :cond_5c

    .line 7200
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$28;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getPredictiveCaptureStoreInfo()Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 7201
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getContentInfo()Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$28;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 7202
    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getPredictiveCaptureStoreInfo()Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;->getCaptureNum()I

    move-result p0

    iput p0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mPredictiveNum:I

    :cond_5c
    return-void
.end method
