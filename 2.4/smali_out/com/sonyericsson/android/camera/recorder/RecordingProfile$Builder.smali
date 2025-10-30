.class public Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;
.super Ljava/lang/Object;
.source "RecordingProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/RecordingProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAudioBitRate:I

.field private mAudioChannels:I

.field private mAudioCodec:I

.field private mAudioSampleRate:I

.field private mFileFormat:I

.field private mOperatingRate:I

.field private mQuality:I

.field private mResultExt:Ljava/lang/String;

.field private mResultMimeType:Ljava/lang/String;

.field private mSlowMotion:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

.field private mVideoBitRate:I

.field private mVideoBitRateMode:I

.field private mVideoCodec:I

.field private mVideoFrameHeight:I

.field private mVideoFrameRate:I

.field private mVideoFrameWidth:I

.field private mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

.field private mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field private mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setupOutputFormatWithQuality(I)V
    .registers 3

    if-eqz p1, :cond_e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_e

    const-string p1, ".mp4"

    .line 280
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mResultExt:Ljava/lang/String;

    const-string p1, "video/mp4"

    .line 281
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mResultMimeType:Ljava/lang/String;

    goto :goto_16

    :cond_e
    const-string p1, ".3gp"

    .line 275
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mResultExt:Ljava/lang/String;

    const-string p1, "video/3gpp"

    .line 276
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mResultMimeType:Ljava/lang/String;

    :goto_16
    return-void
.end method

.method private setupRecordingProfile()V
    .registers 9

    .line 288
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    # invokes: Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->decideFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->access$200(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoFrameRate:I

    const/4 v0, 0x2

    .line 289
    iput v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mFileFormat:I

    .line 290
    iput v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoCodec:I

    const/4 v1, 0x1

    .line 291
    iput v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoBitRateMode:I

    .line 292
    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    # invokes: Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->decideQuality(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)I
    invoke-static {v2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->access$300(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mQuality:I

    .line 294
    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->INTELLIGENT_ACTIVE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    if-eq v2, v3, :cond_2b

    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mSlowMotion:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-eq v2, v3, :cond_27

    goto :goto_2b

    :cond_27
    const/4 v2, 0x0

    .line 298
    iput v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mOperatingRate:I

    goto :goto_2f

    :cond_2b
    :goto_2b
    const/16 v2, 0x78

    .line 296
    iput v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mOperatingRate:I

    .line 301
    :goto_2f
    sget-object v2, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x5

    const v4, 0xbb80

    const v5, 0x26160

    const/4 v6, 0x3

    packed-switch v2, :pswitch_data_102

    goto/16 :goto_de

    :pswitch_46
    const v0, 0x33450

    .line 364
    iput v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoBitRate:I

    .line 365
    iput v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioCodec:I

    const/16 v0, 0x2fa8

    .line 366
    iput v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioBitRate:I

    const/16 v0, 0x1f40

    .line 367
    iput v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioSampleRate:I

    .line 368
    iput v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioChannels:I

    goto/16 :goto_de

    :pswitch_59
    const v1, 0x3640e3

    .line 357
    iput v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoBitRate:I

    .line 358
    iput v6, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioCodec:I

    .line 359
    iput v5, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioBitRate:I

    .line 360
    iput v4, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioSampleRate:I

    .line 361
    iput v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioChannels:I

    goto/16 :goto_de

    .line 346
    :pswitch_68
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD_120FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v1, v2, :cond_74

    const v1, 0x2faf080

    .line 347
    iput v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoBitRate:I

    goto :goto_79

    :cond_74
    const v1, 0xb71b00

    .line 349
    iput v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoBitRate:I

    .line 351
    :goto_79
    iput v6, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioCodec:I

    .line 352
    iput v5, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioBitRate:I

    .line 353
    iput v4, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioSampleRate:I

    .line 354
    iput v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioChannels:I

    goto :goto_de

    :pswitch_82
    const v1, 0x989680

    .line 335
    iput v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoBitRate:I

    .line 336
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v1, v2, :cond_8f

    .line 337
    iput v3, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoCodec:I

    .line 339
    :cond_8f
    iput v6, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioCodec:I

    .line 340
    iput v5, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioBitRate:I

    .line 341
    iput v4, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioSampleRate:I

    .line 342
    iput v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioChannels:I

    goto :goto_de

    .line 321
    :pswitch_98
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v1, v2, :cond_a4

    const v1, 0x1c9c380

    .line 322
    iput v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoBitRate:I

    goto :goto_b1

    :cond_a4
    const v1, 0x10b0760

    .line 324
    iput v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoBitRate:I

    .line 325
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v1, v2, :cond_b1

    .line 326
    iput v3, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoCodec:I

    .line 329
    :cond_b1
    :goto_b1
    iput v6, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioCodec:I

    .line 330
    iput v5, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioBitRate:I

    .line 331
    iput v4, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioSampleRate:I

    .line 332
    iput v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioChannels:I

    goto :goto_de

    .line 304
    :pswitch_ba
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const v7, 0x3473bc0

    if-ne v1, v2, :cond_c6

    .line 305
    iput v7, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoBitRate:I

    goto :goto_d6

    .line 307
    :cond_c6
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v1, v2, :cond_cf

    .line 308
    iput v7, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoBitRate:I

    goto :goto_d4

    :cond_cf
    const v1, 0x2160ec0

    .line 310
    iput v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoBitRate:I

    .line 312
    :goto_d4
    iput v3, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoCodec:I

    .line 314
    :goto_d6
    iput v6, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioCodec:I

    .line 315
    iput v5, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioBitRate:I

    .line 316
    iput v4, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioSampleRate:I

    .line 317
    iput v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioChannels:I

    .line 375
    :goto_de
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoFrameWidth:I

    if-ne v1, v2, :cond_f4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoFrameHeight:I

    if-eq v1, v2, :cond_100

    .line 378
    :cond_f4
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoFrameWidth:I

    .line 379
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoFrameHeight:I

    :cond_100
    return-void

    nop

    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_ba
        :pswitch_ba
        :pswitch_98
        :pswitch_98
        :pswitch_82
        :pswitch_68
        :pswitch_68
        :pswitch_59
        :pswitch_46
    .end packed-switch
.end method


# virtual methods
.method public build()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;
    .registers 31

    move-object/from16 v0, p0

    .line 221
    iget-object v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v1, v2, :cond_12

    iget-object v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v1, v2, :cond_12

    .line 222
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    iput-object v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 225
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->setupRecordingProfile()V

    .line 227
    iget-object v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-eq v1, v2, :cond_21

    .line 228
    iget v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mQuality:I

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->setupOutputFormatWithQuality(I)V

    goto :goto_29

    :cond_21
    const-string v1, ".mp4"

    .line 230
    iput-object v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mResultExt:Ljava/lang/String;

    const-string v1, "video/mp4"

    .line 231
    iput-object v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mResultMimeType:Ljava/lang/String;

    :goto_29
    const/16 v1, 0x3e8

    .line 236
    iget-object v2, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v2, v3, :cond_36

    const/16 v1, 0x64

    move/from16 v22, v1

    goto :goto_38

    :cond_36
    move/from16 v22, v1

    .line 240
    :goto_38
    iget v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioBitRate:I

    int-to-long v2, v1

    iget v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoBitRate:I

    int-to-long v4, v1

    const-wide/16 v6, 0x3c

    .line 241
    # invokes: Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->computeSize(JJJ)J
    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->access$000(JJJ)J

    move-result-wide v18

    .line 242
    iget v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioBitRate:I

    int-to-long v2, v1

    iget v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoBitRate:I

    int-to-long v4, v1

    const-wide/16 v6, 0x1

    # invokes: Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->computeSize(JJJ)J
    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->access$000(JJJ)J

    move-result-wide v20

    .line 248
    iget-object v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v1, v2, :cond_59

    const/4 v1, 0x6

    const/4 v2, 0x7

    goto :goto_63

    .line 253
    :cond_59
    iget v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoFrameHeight:I

    const/16 v2, 0x2d0

    if-lt v1, v2, :cond_61

    const/4 v1, 0x1

    goto :goto_62

    :cond_61
    const/4 v1, 0x4

    :goto_62
    const/4 v2, 0x3

    :goto_63
    const/4 v4, 0x2

    .line 261
    new-instance v15, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    invoke-direct {v15, v1, v2, v4}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;-><init>(III)V

    .line 263
    new-instance v1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    iget v4, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mFileFormat:I

    iget v5, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoFrameRate:I

    iget v6, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoFrameWidth:I

    iget v7, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoFrameHeight:I

    iget v8, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoBitRate:I

    iget v9, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoBitRateMode:I

    iget v10, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoCodec:I

    iget v11, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mQuality:I

    iget v12, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioBitRate:I

    iget v13, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioChannels:I

    iget v14, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioSampleRate:I

    iget v2, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioCodec:I

    move-object/from16 v16, v15

    iget v15, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mOperatingRate:I

    move/from16 v17, v15

    iget-object v15, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mResultExt:Ljava/lang/String;

    move-object/from16 v23, v15

    iget-object v15, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mResultMimeType:Ljava/lang/String;

    iget-object v3, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move/from16 v25, v2

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const/16 v26, 0x0

    if-ne v3, v2, :cond_9c

    const/16 v27, 0x1

    goto :goto_9e

    :cond_9c
    move/from16 v27, v26

    :goto_9e
    iget-object v2, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v2, v3, :cond_a7

    const/16 v28, 0x1

    goto :goto_a9

    :cond_a7
    move/from16 v28, v26

    :goto_a9
    const/16 v26, 0x0

    move/from16 v24, v25

    move-object v2, v1

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move/from16 v14, v24

    move-object/from16 v24, v15

    move-object/from16 v29, v23

    move-object/from16 v23, v16

    move-object/from16 v16, v29

    move/from16 v15, v17

    move-object/from16 v17, v24

    move/from16 v24, v27

    move/from16 v25, v28

    invoke-direct/range {v2 .. v26}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;-><init>(IIIIIIIIIIIIILjava/lang/String;Ljava/lang/String;JJILcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;ZZLcom/sonyericsson/android/camera/recorder/RecordingProfile$1;)V

    return-object v1
.end method

.method public slowMotion(Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;
    .registers 2

    .line 216
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mSlowMotion:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    return-object p0
.end method

.method public videoHdr(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;
    .registers 2

    .line 206
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    return-object p0
.end method

.method public videoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-object p0
.end method

.method public videoStabilizer(Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;
    .registers 2

    .line 211
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    return-object p0
.end method
