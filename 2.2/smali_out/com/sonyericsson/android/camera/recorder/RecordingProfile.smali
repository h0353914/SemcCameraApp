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
.field public static final MIN_RECORDING_DURATION:I = 0x1

.field public static final QUALITY_4K_UHD_30FPS:I = 0x64

.field public static final VIDEO_AUDIO_BIT_RATE:I = 0x1f400

.field public static final VIDEO_AUDIO_BIT_RATE_AAC:I = 0x26160

.field public static final VIDEO_AUDIO_BIT_RATE_AMR_NB:I = 0x2fa8

.field public static final VIDEO_AUDIO_BIT_RATE_MMS:I = 0x1388

.field public static final VIDEO_AUDIO_CHANNEL_MONO:I = 0x1

.field public static final VIDEO_AUDIO_CHANNEL_STEREO:I = 0x2

.field public static final VIDEO_AUDIO_SAMPLE_RATE:I = 0xbb80

.field public static final VIDEO_AUDIO_SAMPLE_RATE_MMS:I = 0x1f40

.field public static final VIDEO_BIT_RATE_4K_UHD_AVC_30FPS:I = 0x3473bc0

.field public static final VIDEO_BIT_RATE_4K_UHD_HEVC_30FPS:I = 0x2160ec0

.field public static final VIDEO_BIT_RATE_FULL_HD:I = 0x10b0760

.field public static final VIDEO_BIT_RATE_FULL_HD_60FPS:I = 0x1c9c380

.field public static final VIDEO_BIT_RATE_HD:I = 0xb71b00

.field public static final VIDEO_BIT_RATE_HD_120FPS:I = 0x2faf080

.field public static final VIDEO_BIT_RATE_LOW:I = 0x33450

.field public static final VIDEO_BIT_RATE_VGA:I = 0x3640e3

.field public static final VIDEO_FRAME_RATE_24FPS:I = 0x18

.field public static final VIDEO_FRAME_RATE_30FPS:I = 0x1e

.field public static final VIDEO_FRAME_RATE_60FPS:I = 0x3c

.field public static final VIDEO_FRAME_RATE_HD_120FPS:I = 0x78

.field public static final VIDEO_FRAME_RATE_MMS:I = 0xf


# instance fields
.field public final averageFileSize:J

.field public final camcorderProfile:Landroid/media/CamcorderProfile;

.field public final dataSpace:Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

.field public final extension:Ljava/lang/String;

.field public final isMms:Z

.field public final mimeType:Ljava/lang/String;

.field public final minFileSize:J

.field public final progressInterval:I


# direct methods
.method private constructor <init>(Landroid/media/CamcorderProfile;Ljava/lang/String;Ljava/lang/String;JJILcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;Z)V
    .registers 11

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->camcorderProfile:Landroid/media/CamcorderProfile;

    .line 84
    iput-object p2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->extension:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->mimeType:Ljava/lang/String;

    .line 86
    iput-wide p4, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->averageFileSize:J

    .line 87
    iput-wide p6, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->minFileSize:J

    .line 88
    iput p8, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->progressInterval:I

    .line 89
    iput-object p9, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dataSpace:Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    .line 90
    iput-boolean p10, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->isMms:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/CamcorderProfile;Ljava/lang/String;Ljava/lang/String;JJILcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;ZLcom/sonyericsson/android/camera/recorder/RecordingProfile$1;)V
    .registers 12

    .line 23
    invoke-direct/range {p0 .. p10}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;-><init>(Landroid/media/CamcorderProfile;Ljava/lang/String;Ljava/lang/String;JJILcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Z)I
    .registers 2

    .line 23
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->decideQuality(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)I
    .registers 1

    .line 23
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->decideDefaultQuality(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Landroid/media/CamcorderProfile;I)I
    .registers 2

    .line 23
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getAudioBitRate(Landroid/media/CamcorderProfile;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(JJJ)J
    .registers 6

    .line 23
    invoke-static/range {p0 .. p5}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->computeSize(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I
    .registers 2

    .line 23
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->decideFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result p0

    return p0
.end method

.method private static computeSize(JJJ)J
    .registers 6

    add-long/2addr p0, p2

    mul-long/2addr p0, p4

    const-wide/16 p2, 0x8

    .line 289
    div-long/2addr p0, p2

    const-wide/16 p2, 0x400

    div-long/2addr p0, p2

    return-wide p0
.end method

.method private static decideDefaultQuality(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)I
    .registers 2

    .line 383
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

    if-nez p0, :cond_a

    .line 308
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Don\'t set parameters."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 311
    :cond_a
    sget-object v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/16 v0, 0x1e

    packed-switch p0, :pswitch_data_30

    .line 335
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Don\'t set parameters."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1f
    const/16 v0, 0xf

    goto :goto_2e

    :pswitch_22
    const/16 v0, 0x78

    goto :goto_2e

    :pswitch_25
    const/16 v0, 0x3c

    goto :goto_2e

    .line 315
    :pswitch_28
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne p1, p0, :cond_2e

    const/16 v0, 0x18

    :cond_2e
    :goto_2e
    :pswitch_2e
    return v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_25
        :pswitch_2e
        :pswitch_22
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method

.method private static decideQuality(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Z)I
    .registers 4

    if-nez p0, :cond_a

    .line 345
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Don\'t set parameters."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 348
    :cond_a
    sget-object v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    .line 372
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Don\'t set parameters."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1d
    if-eqz p1, :cond_21

    const/4 p1, 0x2

    goto :goto_2b

    :cond_21
    const/4 p1, 0x0

    goto :goto_2b

    :pswitch_23
    const/4 p1, 0x4

    goto :goto_2b

    :pswitch_25
    const/4 p1, 0x5

    goto :goto_2b

    :pswitch_27
    const/4 p1, 0x6

    goto :goto_2b

    :pswitch_29
    const/16 p1, 0x64

    .line 375
    :goto_2b
    invoke-static {p1}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v0

    if-eqz v0, :cond_32

    return p1

    .line 378
    :cond_32
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->decideDefaultQuality(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)I

    move-result p0

    return p0

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_29
        :pswitch_29
        :pswitch_27
        :pswitch_27
        :pswitch_25
        :pswitch_25
        :pswitch_23
        :pswitch_1d
    .end packed-switch
.end method

.method private static getAudioBitRate(Landroid/media/CamcorderProfile;I)I
    .registers 2

    if-eqz p0, :cond_5

    .line 294
    iget p0, p0, Landroid/media/CamcorderProfile;->audioBitRate:I

    return p0

    :cond_5
    if-nez p1, :cond_a

    const/16 p0, 0x1388

    return p0

    :cond_a
    const p0, 0x1f400

    return p0
.end method

.method public static getVideoFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I
    .registers 2

    .line 110
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->decideFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getCamcorderProfile()Landroid/media/CamcorderProfile;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->camcorderProfile:Landroid/media/CamcorderProfile;

    return-object p0
.end method

.method public getExtension()Ljava/lang/String;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->extension:Ljava/lang/String;

    return-object p0
.end method

.method public getMime()Ljava/lang/String;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public getProgressInterval()I
    .registers 1

    .line 106
    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->progressInterval:I

    return p0
.end method
