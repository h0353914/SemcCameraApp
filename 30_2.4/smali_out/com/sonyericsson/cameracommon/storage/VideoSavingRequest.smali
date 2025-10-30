.class public Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;
.super Lcom/sonyericsson/cameracommon/storage/SavingRequest;
.source "VideoSavingRequest.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VideoSavingRequest"


# instance fields
.field public final video:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)V
    .registers 5

    .line 35
    invoke-direct {p0, p1, p3, p4}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Lcom/sonyericsson/cameracommon/storage/RequestFactory$RequestBuilder;Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)V

    .line 36
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->video:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    .line 37
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_12

    const-string p1, "VideoSavingRequest: at created."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 38
    :cond_12
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->log()V

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;)V
    .registers 7

    .line 47
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;-><init>(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V

    .line 48
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->video:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iget-wide v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxDurationMills:J

    iget-object p1, p1, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->video:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iget-wide v3, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxFileSizeBytes:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;-><init>(JJ)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->video:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    return-void
.end method


# virtual methods
.method public log()V
    .registers 2

    .line 56
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->log()V

    .line 57
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->video:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->log()V

    return-void
.end method
