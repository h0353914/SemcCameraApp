.class public Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecordingTimeReceiverProxy"
.end annotation


# instance fields
.field private mCurrentTime:I

.field private mReceiver:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingTimeIndicator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindReceiver(Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingTimeIndicator;)V
    .registers 2

    .line 11687
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;->mReceiver:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingTimeIndicator;

    return-void
.end method

.method public getCurrentTime()I
    .registers 2

    .line 11691
    iget v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;->mCurrentTime:I

    return v0
.end method

.method protected notifyOnTimeTicked(I)V
    .registers 3

    .line 11699
    iput p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;->mCurrentTime:I

    .line 11700
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;->mReceiver:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingTimeIndicator;

    if-nez v0, :cond_7

    return-void

    .line 11703
    :cond_7
    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingTimeIndicator;->onTimeTicked(I)V

    return-void
.end method

.method protected reset()V
    .registers 2

    const/4 v0, 0x0

    .line 11695
    iput v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;->mCurrentTime:I

    return-void
.end method
