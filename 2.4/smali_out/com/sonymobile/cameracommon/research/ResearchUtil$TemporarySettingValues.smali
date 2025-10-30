.class Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
.super Ljava/lang/Object;
.source "ResearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/ResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TemporarySettingValues"
.end annotation


# instance fields
.field private mAssistSelfTimer:I

.field private mAutoShutterSpeed:I

.field private mBlur:Ljava/lang/String;

.field private mCaptureTrigger:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

.field private mDropInfoForFramedrop:Ljava/lang/String;

.field private mEyeDetected:Z

.field private mFaceNum:I

.field private mHistogramForFramedrop:Ljava/lang/String;

.field private mIsFlashIndicator:Z

.field private mIsFocusEye:Z

.field private mManualBurstCount:I

.field private mOrientation:I

.field private mPredictiveCaptureNum:I

.field private mRecordBySideSense:Z

.field private mRecordingMaxFaceNum:I

.field private mSideSensePosition:Landroid/graphics/Point;

.field private mZoomRatio:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 992
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mZoomRatio:F

    const/4 v0, 0x0

    .line 993
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mOrientation:I

    .line 994
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mFaceNum:I

    .line 995
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordingMaxFaceNum:I

    .line 996
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mPredictiveCaptureNum:I

    .line 997
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mManualBurstCount:I

    .line 998
    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    iput-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mCaptureTrigger:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .line 999
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mSideSensePosition:Landroid/graphics/Point;

    .line 1000
    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mEyeDetected:Z

    .line 1001
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mAutoShutterSpeed:I

    const-string v1, "OFF"

    .line 1002
    iput-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mBlur:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1003
    iput-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mHistogramForFramedrop:Ljava/lang/String;

    .line 1004
    iput-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mDropInfoForFramedrop:Ljava/lang/String;

    .line 1005
    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mIsFocusEye:Z

    .line 1006
    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mIsFlashIndicator:Z

    const/4 v0, -0x1

    .line 1007
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mAssistSelfTimer:I

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;
    .registers 1

    .line 971
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mCaptureTrigger:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Ljava/lang/String;
    .registers 1

    .line 971
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mBlur:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Landroid/graphics/Point;
    .registers 1

    .line 971
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mSideSensePosition:Landroid/graphics/Point;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Z
    .registers 1

    .line 971
    iget-boolean p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordBySideSense:Z

    return p0
.end method

.method static synthetic access$2902(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;Z)Z
    .registers 2

    .line 971
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordBySideSense:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Z
    .registers 1

    .line 971
    iget-boolean p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mEyeDetected:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Ljava/lang/String;
    .registers 1

    .line 971
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mHistogramForFramedrop:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Ljava/lang/String;
    .registers 1

    .line 971
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mDropInfoForFramedrop:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)I
    .registers 1

    .line 971
    iget p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mAutoShutterSpeed:I

    return p0
.end method

.method static synthetic access$500(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)I
    .registers 1

    .line 971
    iget p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mFaceNum:I

    return p0
.end method

.method static synthetic access$600(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Z
    .registers 1

    .line 971
    iget-boolean p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mIsFocusEye:Z

    return p0
.end method

.method static synthetic access$700(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Z
    .registers 1

    .line 971
    iget-boolean p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mIsFlashIndicator:Z

    return p0
.end method

.method static synthetic access$800(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)I
    .registers 1

    .line 971
    iget p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mAssistSelfTimer:I

    return p0
.end method

.method private roundZoomRatio()I
    .registers 4

    .line 1113
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mZoomRatio:F

    const v1, 0x3d4ccccd    # 0.05f

    sub-float v1, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_f

    const/4 v0, 0x0

    return v0

    :cond_f
    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public clearAssistSelfTimer()V
    .registers 2

    const/4 v0, -0x1

    .line 1107
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mAssistSelfTimer:I

    return-void
.end method

.method public clearAutoShutterSpeed()V
    .registers 2

    const/4 v0, 0x0

    .line 1087
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mAutoShutterSpeed:I

    return-void
.end method

.method public clearCaptureTrigger()V
    .registers 2

    .line 1083
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mCaptureTrigger:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    return-void
.end method

.method public clearDropInfoForFramedrop()V
    .registers 2

    const/4 v0, 0x0

    .line 1095
    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mDropInfoForFramedrop:Ljava/lang/String;

    return-void
.end method

.method public clearFaceNum()V
    .registers 2

    const/4 v0, 0x0

    .line 1075
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mFaceNum:I

    return-void
.end method

.method public clearFlashIndicator()V
    .registers 2

    const/4 v0, 0x0

    .line 1103
    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mIsFlashIndicator:Z

    return-void
.end method

.method public clearFocusEye()V
    .registers 2

    const/4 v0, 0x0

    .line 1099
    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mIsFocusEye:Z

    return-void
.end method

.method public clearHistogramForFramedrop()V
    .registers 2

    const/4 v0, 0x0

    .line 1091
    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mHistogramForFramedrop:Ljava/lang/String;

    return-void
.end method

.method public clearRecordingMaxFaceNum()V
    .registers 2

    const/4 v0, 0x0

    .line 1079
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordingMaxFaceNum:I

    return-void
.end method

.method public getManualBurstParameterForIDD()Ljava/lang/String;
    .registers 3

    .line 1129
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mManualBurstCount:I

    if-nez v0, :cond_7

    const-string v0, "False"

    return-object v0

    .line 1132
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mManualBurstCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_Shots"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;",
            ">;"
        }
    .end annotation

    .line 1137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1138
    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mOrientation:I

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getOrientationParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1139
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->roundZoomRatio()I

    move-result v1

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getZoomParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1140
    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mFaceNum:I

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getFaceNumParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1141
    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mPredictiveCaptureNum:I

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getPredictiveCaptureNumParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1142
    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mCaptureTrigger:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getCaptureTriggerParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getParameterListForRecording()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;",
            ">;"
        }
    .end annotation

    .line 1147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1148
    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mOrientation:I

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getOrientationParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1149
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->roundZoomRatio()I

    move-result v1

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getZoomParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1150
    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordingMaxFaceNum:I

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getFaceNumParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->roundZoomRatio()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_O"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_F"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mFaceNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringForRecording()Ljava/lang/String;
    .registers 3

    .line 1125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->roundZoomRatio()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_O"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_F"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordingMaxFaceNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateAssistSelfTimer(I)V
    .registers 2

    .line 1071
    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mAssistSelfTimer:I

    return-void
.end method

.method public updateAutoShutterSpeed(I)V
    .registers 2

    .line 1053
    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mAutoShutterSpeed:I

    return-void
.end method

.method public updateBlur(Ljava/lang/String;)V
    .registers 2

    .line 1056
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mBlur:Ljava/lang/String;

    return-void
.end method

.method public updateCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V
    .registers 2

    .line 1037
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mCaptureTrigger:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    return-void
.end method

.method public updateDropInfoForFramedrop(Ljava/lang/String;)V
    .registers 2

    .line 1062
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mDropInfoForFramedrop:Ljava/lang/String;

    return-void
.end method

.method public updateEyeDetected(Z)V
    .registers 2

    .line 1049
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mEyeDetected:Z

    return-void
.end method

.method public updateFaceNum(I)V
    .registers 2

    .line 1019
    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mFaceNum:I

    return-void
.end method

.method public updateFlashIndicator(Z)V
    .registers 2

    .line 1068
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mIsFlashIndicator:Z

    return-void
.end method

.method public updateFocusEye(Z)V
    .registers 2

    .line 1065
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mIsFocusEye:Z

    return-void
.end method

.method public updateHistogramForFramedrop(Ljava/lang/String;)V
    .registers 2

    .line 1059
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mHistogramForFramedrop:Ljava/lang/String;

    return-void
.end method

.method public updateManualBurstCount(I)V
    .registers 2

    .line 1033
    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mManualBurstCount:I

    return-void
.end method

.method public updateOrientation(I)V
    .registers 2

    .line 1015
    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mOrientation:I

    return-void
.end method

.method public updatePredictiveCaptureNum(I)V
    .registers 2

    .line 1029
    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mPredictiveCaptureNum:I

    return-void
.end method

.method public updateRecordBySideSense(Z)V
    .registers 2

    .line 1045
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordBySideSense:Z

    return-void
.end method

.method public updateRecordingMaxFaceNum(I)V
    .registers 3

    .line 1023
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordingMaxFaceNum:I

    if-ge v0, p1, :cond_6

    .line 1024
    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordingMaxFaceNum:I

    :cond_6
    return-void
.end method

.method public updateSideSensePosition(II)V
    .registers 4

    .line 1041
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mSideSensePosition:Landroid/graphics/Point;

    return-void
.end method

.method public updateZoomRatio(F)V
    .registers 2

    .line 1011
    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mZoomRatio:F

    return-void
.end method
