.class public Lcom/sonyericsson/android/camera/recorder/RecordingProfile;
.super Ljava/lang/Object;
.source "RecordingProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;
    }
.end annotation


# static fields
.field public static final I_FRAME_INTERVAL_SECONDS:I = 0x1

.field public static final MIN_RECORDING_DURATION:I = 0x1

.field public static final QUALITY_4K_UHD_30FPS:I = 0x64

.field public static final VIDEO_AUDIO_BIT_RATE_AAC:I = 0x26160

.field public static final VIDEO_AUDIO_BIT_RATE_AMR_NB:I = 0x2fa8

.field public static final VIDEO_AUDIO_CHANNEL_MONO:I = 0x1

.field public static final VIDEO_AUDIO_CHANNEL_STEREO:I = 0x2

.field public static final VIDEO_AUDIO_SAMPLE_RATE:I = 0xbb80

.field public static final VIDEO_AUDIO_SAMPLE_RATE_MMS:I = 0x1f40

.field public static final VIDEO_BIT_RATE_4K_UHD_AVC_30FPS:I = 0x3473bc0

.field public static final VIDEO_BIT_RATE_4K_UHD_HDR_24FPS:I = 0x3473bc0

.field public static final VIDEO_BIT_RATE_4K_UHD_HEVC_30FPS:I = 0x2160ec0

.field public static final VIDEO_BIT_RATE_FULL_HD:I = 0x10b0760

.field public static final VIDEO_BIT_RATE_FULL_HD_60FPS:I = 0x1c9c380

.field public static final VIDEO_BIT_RATE_HD:I = 0xb71b00

.field public static final VIDEO_BIT_RATE_HD_120FPS:I = 0x2faf080

.field public static final VIDEO_BIT_RATE_LOW:I = 0x33450

.field public static final VIDEO_BIT_RATE_SQUARE_FULL_HD:I = 0x989680

.field public static final VIDEO_BIT_RATE_VGA:I = 0x3640e3

.field public static final VIDEO_FRAME_RATE_24FPS:I = 0x18

.field public static final VIDEO_FRAME_RATE_30FPS:I = 0x1e

.field public static final VIDEO_FRAME_RATE_60FPS:I = 0x3c

.field public static final VIDEO_FRAME_RATE_HD_120FPS:I = 0x78

.field public static final VIDEO_FRAME_RATE_MMS:I = 0xf


# instance fields
.field private final audioBitRate:I

.field private final audioChannels:I

.field private final audioCodec:I

.field private final audioSampleRate:I

.field private final averageFileSize:J

.field private final dataSpace:Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

.field private final extension:Ljava/lang/String;

.field private final fileFormat:I

.field private final isHdr:Z

.field private final isMms:Z

.field private final mimeType:Ljava/lang/String;

.field private final minFileSize:J

.field private final operatingRate:I

.field private final progressInterval:I

.field private final quality:I

.field private final videoBitRate:I

.field private final videoBitRateMode:I

.field private final videoCodec:I

.field private final videoFrameHeight:I

.field private final videoFrameRate:I

.field private final videoFrameWidth:I


# direct methods
.method private constructor <init>(IIIIIIIIIIIIILjava/lang/String;Ljava/lang/String;JJILcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;ZZ)V
    .registers 27

    move-object v0, p0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 127
    iput v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->fileFormat:I

    move v1, p2

    .line 128
    iput v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoFrameRate:I

    move v1, p3

    .line 129
    iput v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoFrameWidth:I

    move v1, p4

    .line 130
    iput v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoFrameHeight:I

    move v1, p5

    .line 131
    iput v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoBitRate:I

    move v1, p6

    .line 132
    iput v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoBitRateMode:I

    move v1, p7

    .line 133
    iput v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoCodec:I

    move v1, p8

    .line 134
    iput v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->quality:I

    move v1, p9

    .line 135
    iput v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->audioBitRate:I

    move v1, p10

    .line 136
    iput v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->audioChannels:I

    move v1, p11

    .line 137
    iput v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->audioSampleRate:I

    move v1, p12

    .line 138
    iput v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->audioCodec:I

    move/from16 v1, p13

    .line 139
    iput v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->operatingRate:I

    move-object/from16 v1, p14

    .line 140
    iput-object v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->extension:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 141
    iput-object v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->mimeType:Ljava/lang/String;

    move-wide/from16 v1, p16

    .line 142
    iput-wide v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->averageFileSize:J

    move-wide/from16 v1, p18

    .line 143
    iput-wide v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->minFileSize:J

    move/from16 v1, p20

    .line 144
    iput v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->progressInterval:I

    move-object/from16 v1, p21

    .line 145
    iput-object v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dataSpace:Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    move/from16 v1, p22

    .line 146
    iput-boolean v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->isMms:Z

    move/from16 v1, p23

    .line 147
    iput-boolean v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->isHdr:Z

    return-void
.end method

.method synthetic constructor <init>(IIIIIIIIIIIIILjava/lang/String;Ljava/lang/String;JJILcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;ZZLcom/sonyericsson/android/camera/recorder/RecordingProfile$1;)V
    .registers 25

    .line 33
    invoke-direct/range {p0 .. p23}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;-><init>(IIIIIIIIIIIIILjava/lang/String;Ljava/lang/String;JJILcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;ZZ)V

    return-void
.end method

.method static synthetic access$000(JJJ)J
    .registers 6

    .line 33
    invoke-static/range {p0 .. p5}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->computeSize(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I
    .registers 2

    .line 33
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->decideFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)I
    .registers 1

    .line 33
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->decideQuality(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)I

    move-result p0

    return p0
.end method

.method private static computeSize(JJJ)J
    .registers 6

    add-long/2addr p0, p2

    mul-long/2addr p0, p4

    const-wide/16 p2, 0x8

    .line 385
    div-long/2addr p0, p2

    const-wide/16 p2, 0x400

    div-long/2addr p0, p2

    return-wide p0
.end method

.method private static decideDefaultQuality(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)I
    .registers 2

    .line 465
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-eq p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private static decideFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I
    .registers 3

    if-eqz p0, :cond_27

    .line 395
    sget-object v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/16 v0, 0x1e

    packed-switch p0, :pswitch_data_30

    .line 420
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Don\'t set parameters."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_17
    const/16 v0, 0xf

    goto :goto_26

    :pswitch_1a
    const/16 v0, 0x78

    goto :goto_26

    :pswitch_1d
    const/16 v0, 0x3c

    goto :goto_26

    .line 400
    :pswitch_20
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne p1, p0, :cond_26

    const/16 v0, 0x18

    :cond_26
    :goto_26
    :pswitch_26
    return v0

    .line 392
    :cond_27
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Don\'t set parameters."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_1d
        :pswitch_20
        :pswitch_26
        :pswitch_1a
        :pswitch_26
        :pswitch_17
    .end packed-switch
.end method

.method private static decideQuality(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)I
    .registers 3

    if-eqz p0, :cond_2b

    .line 433
    sget-object v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    .line 454
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Don\'t set parameters."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_15
    const/4 v0, 0x0

    goto :goto_1f

    :pswitch_17
    const/4 v0, 0x4

    goto :goto_1f

    :pswitch_19
    const/4 v0, 0x5

    goto :goto_1f

    :pswitch_1b
    const/4 v0, 0x6

    goto :goto_1f

    :pswitch_1d
    const/16 v0, 0x64

    .line 457
    :goto_1f
    invoke-static {v0}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v1

    if-eqz v1, :cond_26

    return v0

    .line 460
    :cond_26
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->decideDefaultQuality(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)I

    move-result p0

    return p0

    .line 430
    :cond_2b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Don\'t set parameters."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1d
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_19
        :pswitch_19
        :pswitch_17
        :pswitch_15
    .end packed-switch
.end method

.method private static dumpMediaFormatIntParameter(Ljava/lang/String;Landroid/media/MediaFormat;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 719
    :try_start_2
    new-array v2, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##### "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " , value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_26} :catch_27

    goto :goto_44

    .line 721
    :catch_27
    new-array p1, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##### "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " , value = null"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :goto_44
    return-void
.end method

.method public static dumpMediaFormatParameters(Landroid/media/MediaFormat;)V
    .registers 2

    const-string v0, "##### ##### dumpSetMediaFormatParameters ##### #####"

    .line 702
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    const-string v0, "color-format"

    .line 703
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dumpMediaFormatIntParameter(Ljava/lang/String;Landroid/media/MediaFormat;)V

    const-string v0, "bitrate"

    .line 704
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dumpMediaFormatIntParameter(Ljava/lang/String;Landroid/media/MediaFormat;)V

    const-string v0, "bitrate-mode"

    .line 705
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dumpMediaFormatIntParameter(Ljava/lang/String;Landroid/media/MediaFormat;)V

    const-string v0, "frame-rate"

    .line 706
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dumpMediaFormatIntParameter(Ljava/lang/String;Landroid/media/MediaFormat;)V

    const-string v0, "i-frame-interval"

    .line 707
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dumpMediaFormatIntParameter(Ljava/lang/String;Landroid/media/MediaFormat;)V

    const-string v0, "operating-rate"

    .line 708
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dumpMediaFormatIntParameter(Ljava/lang/String;Landroid/media/MediaFormat;)V

    const-string v0, "ts-schema"

    .line 709
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dumpMediaFormatStringParameter(Ljava/lang/String;Landroid/media/MediaFormat;)V

    const-string v0, "profile"

    .line 710
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dumpMediaFormatIntParameter(Ljava/lang/String;Landroid/media/MediaFormat;)V

    const-string v0, "level"

    .line 711
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dumpMediaFormatIntParameter(Ljava/lang/String;Landroid/media/MediaFormat;)V

    const-string v0, "color-standard"

    .line 712
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dumpMediaFormatIntParameter(Ljava/lang/String;Landroid/media/MediaFormat;)V

    const-string v0, "color-transfer"

    .line 713
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dumpMediaFormatIntParameter(Ljava/lang/String;Landroid/media/MediaFormat;)V

    const-string v0, "color-range"

    .line 714
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dumpMediaFormatIntParameter(Ljava/lang/String;Landroid/media/MediaFormat;)V

    return-void
.end method

.method private static dumpMediaFormatStringParameter(Ljava/lang/String;Landroid/media/MediaFormat;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 727
    :try_start_2
    new-array v2, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##### "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " , value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_26} :catch_27

    goto :goto_44

    .line 729
    :catch_27
    new-array p1, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##### "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " , value = null"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :goto_44
    return-void
.end method

.method public static getVideoFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I
    .registers 2

    .line 163
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->decideFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result p0

    return p0
.end method

.method public static setupRecordingSurface(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Landroid/view/Surface;
    .registers 6

    .line 603
    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object v0

    .line 608
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoCodec()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1a

    const-string v1, "video/hevc"

    .line 611
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameHeight()I

    move-result v3

    .line 610
    invoke-static {v1, v2, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    goto :goto_28

    :cond_1a
    const-string v1, "video/avc"

    .line 615
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameHeight()I

    move-result v3

    .line 614
    invoke-static {v1, v2, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    :goto_28
    const-string v2, "color-format"

    const v3, 0x7f000789

    .line 618
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "bitrate"

    .line 620
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoBitRate()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "frame-rate"

    .line 621
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "i-frame-interval"

    const/4 v3, 0x1

    .line 622
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 625
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getOperatingRate()I

    move-result v2

    if-lez v2, :cond_5e

    const-string v2, "operating-rate"

    .line 627
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getOperatingRate()I

    move-result v4

    .line 626
    invoke-virtual {v1, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "ts-schema"

    const-string v4, "android.generic.1+0"

    .line 629
    invoke-virtual {v1, v2, v4}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :cond_5e
    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->setupVideoEncodingProfileAndLevel(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;Landroid/media/MediaFormat;)V

    const-string v2, "color-standard"

    .line 634
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getDataSpace()Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    move-result-object v4

    iget v4, v4, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;->standard:I

    invoke-virtual {v1, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "color-transfer"

    .line 635
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getDataSpace()Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    move-result-object v4

    iget v4, v4, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;->transfer:I

    invoke-virtual {v1, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "color-range"

    .line 636
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getDataSpace()Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    move-result-object v4

    iget v4, v4, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;->range:I

    invoke-virtual {v1, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 638
    new-instance v2, Landroid/media/MediaCodecList;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 641
    :try_start_88
    invoke-virtual {v2, v1}, Landroid/media/MediaCodecList;->findEncoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    .line 643
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoBitRateMode()I

    move-result v4

    if-ltz v4, :cond_9f

    const-string v4, "bitrate-mode"

    .line 644
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoBitRateMode()I

    move-result p0

    invoke-virtual {v1, v4, p0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_9f
    const/4 p0, 0x0

    .line 647
    invoke-virtual {v2, v1, p0, p0, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 649
    invoke-virtual {v2, v0}, Landroid/media/MediaCodec;->setInputSurface(Landroid/view/Surface;)V

    const-string p0, "RecordingSurface setup complete"

    .line 651
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 652
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_b6

    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dumpMediaFormatParameters(Landroid/media/MediaFormat;)V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_b6} :catch_b7

    :cond_b6
    return-object v0

    :catch_b7
    move-exception p0

    .line 655
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_bf

    invoke-static {v1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dumpMediaFormatParameters(Landroid/media/MediaFormat;)V

    .line 656
    :cond_bf
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown codec e : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static setupVideoEncodingProfileAndLevel(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;Landroid/media/MediaFormat;)V
    .registers 6

    .line 664
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getIsHdr()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    const-string p0, "profile"

    .line 666
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getVideoHdrRecordingProfile()I

    move-result v0

    .line 665
    invoke-virtual {p1, p0, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "level"

    .line 667
    invoke-virtual {p1, p0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_6a

    .line 669
    :cond_16
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameWidth()I

    move-result v0

    const/16 v2, 0xf00

    const/16 v3, 0x8

    if-lt v0, v2, :cond_45

    .line 670
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameHeight()I

    move-result v0

    const/16 v2, 0x870

    if-lt v0, v2, :cond_45

    .line 671
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoCodec()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_3a

    const-string p0, "profile"

    .line 672
    invoke-virtual {p1, p0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "level"

    .line 674
    invoke-virtual {p1, p0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_6a

    :cond_3a
    const-string p0, "profile"

    .line 677
    invoke-virtual {p1, p0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "level"

    .line 679
    invoke-virtual {p1, p0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_6a

    .line 682
    :cond_45
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameWidth()I

    move-result v0

    const/16 v2, 0x280

    if-lt v0, v2, :cond_60

    .line 683
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameHeight()I

    move-result p0

    const/16 v0, 0x1e0

    if-lt p0, v0, :cond_60

    const-string p0, "profile"

    .line 684
    invoke-virtual {p1, p0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "level"

    .line 686
    invoke-virtual {p1, p0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_6a

    :cond_60
    const-string p0, "profile"

    .line 689
    invoke-virtual {p1, p0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "level"

    .line 691
    invoke-virtual {p1, p0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :goto_6a
    return-void
.end method


# virtual methods
.method public compare(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 558
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 561
    :cond_13
    iget-object v2, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dataSpace:Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    if-nez v2, :cond_18

    return v1

    .line 565
    :cond_18
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->isMms:Z

    iget-boolean v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->isMms:Z

    if-ne v2, v3, :cond_bc

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->isHdr:Z

    iget-boolean v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->isHdr:Z

    if-ne v2, v3, :cond_bc

    iget-wide v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->averageFileSize:J

    iget-wide v4, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->averageFileSize:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_bc

    iget-wide v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->minFileSize:J

    iget-wide v4, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->minFileSize:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_bc

    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dataSpace:Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    iget v2, v2, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;->range:I

    iget-object v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dataSpace:Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    iget v3, v3, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;->range:I

    if-ne v2, v3, :cond_bc

    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dataSpace:Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    iget v2, v2, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;->standard:I

    iget-object v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dataSpace:Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    iget v3, v3, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;->standard:I

    if-ne v2, v3, :cond_bc

    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dataSpace:Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    iget v2, v2, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;->transfer:I

    iget-object v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dataSpace:Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    iget v3, v3, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;->transfer:I

    if-ne v2, v3, :cond_bc

    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->extension:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->extension:Ljava/lang/String;

    .line 573
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->mimeType:Ljava/lang/String;

    .line 574
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->progressInterval:I

    iget v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->progressInterval:I

    if-ne v2, v3, :cond_bc

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->fileFormat:I

    iget v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->fileFormat:I

    if-ne v2, v3, :cond_bc

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoFrameRate:I

    iget v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoFrameRate:I

    if-ne v2, v3, :cond_bc

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoFrameWidth:I

    iget v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoFrameWidth:I

    if-ne v2, v3, :cond_bc

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoFrameHeight:I

    iget v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoFrameHeight:I

    if-ne v2, v3, :cond_bc

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoBitRate:I

    iget v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoBitRate:I

    if-ne v2, v3, :cond_bc

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoBitRateMode:I

    iget v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoBitRateMode:I

    if-ne v2, v3, :cond_bc

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoCodec:I

    iget v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoCodec:I

    if-ne v2, v3, :cond_bc

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->quality:I

    iget v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->quality:I

    if-ne v2, v3, :cond_bc

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->audioBitRate:I

    iget v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->audioBitRate:I

    if-ne v2, v3, :cond_bc

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->audioChannels:I

    iget v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->audioChannels:I

    if-ne v2, v3, :cond_bc

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->audioSampleRate:I

    iget v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->audioSampleRate:I

    if-ne v2, v3, :cond_bc

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->audioCodec:I

    iget v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->audioCodec:I

    if-ne v2, v3, :cond_bc

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->operatingRate:I

    iget p1, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->operatingRate:I

    if-eq v2, p1, :cond_bb

    goto :goto_bc

    :cond_bb
    return v0

    :cond_bc
    :goto_bc
    return v1
.end method

.method public getAudioBitRate()I
    .registers 2

    .line 505
    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->audioBitRate:I

    return v0
.end method

.method public getAudioChannels()I
    .registers 2

    .line 509
    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->audioChannels:I

    return v0
.end method

.method public getAudioCodec()I
    .registers 2

    .line 517
    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->audioCodec:I

    return v0
.end method

.method public getAudioSampleRate()I
    .registers 2

    .line 513
    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->audioSampleRate:I

    return v0
.end method

.method public getAverageFileSize()J
    .registers 3

    .line 529
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->averageFileSize:J

    return-wide v0
.end method

.method public getDataSpace()Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;
    .registers 2

    .line 537
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dataSpace:Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    return-object v0
.end method

.method public getExtension()Ljava/lang/String;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getFileFormat()I
    .registers 2

    .line 473
    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->fileFormat:I

    return v0
.end method

.method public getIsHdr()Z
    .registers 2

    .line 525
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->isHdr:Z

    return v0
.end method

.method public getIsMms()Z
    .registers 2

    .line 521
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->isMms:Z

    return v0
.end method

.method public getMime()Ljava/lang/String;
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getMinFileSize()J
    .registers 3

    .line 533
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->minFileSize:J

    return-wide v0
.end method

.method public getOperatingRate()I
    .registers 2

    .line 541
    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->operatingRate:I

    return v0
.end method

.method public getProgressInterval()I
    .registers 2

    .line 159
    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->progressInterval:I

    return v0
.end method

.method public getQuality()I
    .registers 2

    .line 501
    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->quality:I

    return v0
.end method

.method public getVideoBitRate()I
    .registers 2

    .line 489
    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoBitRate:I

    return v0
.end method

.method public getVideoBitRateMode()I
    .registers 2

    .line 493
    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoBitRateMode:I

    return v0
.end method

.method public getVideoCodec()I
    .registers 2

    .line 497
    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoCodec:I

    return v0
.end method

.method public getVideoFrameHeight()I
    .registers 2

    .line 485
    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoFrameHeight:I

    return v0
.end method

.method public getVideoFrameRate()I
    .registers 2

    .line 477
    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoFrameRate:I

    return v0
.end method

.method public getVideoFrameWidth()I
    .registers 2

    .line 481
    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoFrameWidth:I

    return v0
.end method
