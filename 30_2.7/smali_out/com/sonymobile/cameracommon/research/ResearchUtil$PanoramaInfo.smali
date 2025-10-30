.class Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;
.super Ljava/lang/Object;
.source "ResearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/ResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PanoramaInfo"
.end annotation


# instance fields
.field private mSuccessNum:I

.field private mTryNum:I

.field private mViewerLaunched:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 150
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mTryNum:I

    .line 151
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mSuccessNum:I

    .line 152
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;->NOT_LAUNCHED:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mViewerLaunched:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .registers 2

    .line 149
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;-><init>()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;)V
    .registers 1

    .line 149
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->sendPanoramaInfo()V

    return-void
.end method

.method private sendPanoramaInfo()V
    .registers 6

    .line 173
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mTryNum:I

    if-gtz v0, :cond_a

    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mViewerLaunched:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;->LAUNCHED:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    if-ne v0, v1, :cond_42

    .line 174
    :cond_a
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mTryNum:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mSuccessNum:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 177
    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->PANORAMA:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_try"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_success"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mViewerLaunched:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    iget v3, v3, Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;->mValue:I

    int-to-long v3, v3

    invoke-static {v2, v0, v1, v3, v4}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V

    .line 181
    :cond_42
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->clear()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 185
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "PanoramaInfo#clear()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x0

    .line 187
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mTryNum:I

    .line 188
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mSuccessNum:I

    .line 189
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;->NOT_LAUNCHED:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mViewerLaunched:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    return-void
.end method

.method public setViewerLaunched()V
    .registers 2

    .line 167
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "setViewerLaunched()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 169
    :cond_d
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;->LAUNCHED:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mViewerLaunched:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    return-void
.end method

.method public succeedInPanorama()V
    .registers 2

    .line 161
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "succeedInPanorama()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 163
    :cond_d
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mSuccessNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mSuccessNum:I

    return-void
.end method

.method public tryPanorama()V
    .registers 2

    .line 155
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "tryPanorama()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 157
    :cond_d
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mTryNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mTryNum:I

    return-void
.end method
