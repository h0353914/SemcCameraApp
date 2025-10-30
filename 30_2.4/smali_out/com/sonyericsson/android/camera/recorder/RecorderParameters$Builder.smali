.class public Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;
.super Ljava/lang/Object;
.source "RecorderParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/RecorderParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mParameters:Lcom/sonyericsson/android/camera/recorder/RecorderParameters;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)V
    .registers 6

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;-><init>(Landroid/net/Uri;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;Lcom/sonyericsson/android/camera/recorder/RecorderParameters$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;->mParameters:Lcom/sonyericsson/android/camera/recorder/RecorderParameters;

    return-void
.end method


# virtual methods
.method public build()Lcom/sonyericsson/android/camera/recorder/RecorderParameters;
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;->mParameters:Lcom/sonyericsson/android/camera/recorder/RecorderParameters;

    return-object v0
.end method

.method public setDataSpace(Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;)Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;
    .registers 3

    .line 182
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;->mParameters:Lcom/sonyericsson/android/camera/recorder/RecorderParameters;

    # setter for: Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mDataSpace:Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->access$602(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;)Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    return-object p0
.end method

.method public setHdr(Z)Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;->mParameters:Lcom/sonyericsson/android/camera/recorder/RecorderParameters;

    # setter for: Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mIsHdr:Z
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->access$702(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;Z)Z

    return-object p0
.end method

.method public setLocation(Landroid/location/Location;)Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;
    .registers 3

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;->mParameters:Lcom/sonyericsson/android/camera/recorder/RecorderParameters;

    # setter for: Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mLocation:Landroid/location/Location;
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->access$102(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;Landroid/location/Location;)Landroid/location/Location;

    return-object p0
.end method

.method public setMaxDuration(I)Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;
    .registers 3

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;->mParameters:Lcom/sonyericsson/android/camera/recorder/RecorderParameters;

    # setter for: Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mMaxDuration:I
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->access$402(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;I)I

    return-object p0
.end method

.method public setMaxFileSize(J)Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;
    .registers 6

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;->mParameters:Lcom/sonyericsson/android/camera/recorder/RecorderParameters;

    const-wide v1, 0x3b9aca0000L

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    # setter for: Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mMaxFileSize:J
    invoke-static {v0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->access$302(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;J)J

    return-object p0
.end method

.method public setMicrophoneEnabled(Z)Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;->mParameters:Lcom/sonyericsson/android/camera/recorder/RecorderParameters;

    # setter for: Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mIsMicrophoneEnabled:Z
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->access$502(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;Z)Z

    return-object p0
.end method

.method public setOrientationHint(I)Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;
    .registers 3

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;->mParameters:Lcom/sonyericsson/android/camera/recorder/RecorderParameters;

    # setter for: Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mOrientationHint:I
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->access$202(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;I)I

    return-object p0
.end method
