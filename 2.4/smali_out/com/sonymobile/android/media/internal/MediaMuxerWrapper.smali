.class Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;
.super Ljava/lang/Object;
.source "MediaMuxerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;
    }
.end annotation


# static fields
.field private static final EXPECTED_OVERHEAD:F = 0.95f

.field private static final EXTERNAL_TRACK_ID_AUDIO:I = 0x2

.field private static final EXTERNAL_TRACK_ID_OTHER:I = 0x0

.field private static final EXTERNAL_TRACK_ID_VIDEO:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaMuxerWrapper"


# instance fields
.field private externalToInternalTrackIdMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFile:Ljava/io/File;

.field private mLastProgressTimeUs:[J

.field private mLimitReached:[Z

.field private mMaxDurationMs:I

.field private mMaxFileSizeBytes:J

.field private mMuxer:Landroid/media/MediaMuxer;

.field private mMuxerListener:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;

.field private mRequestProgressInfoIntervalUs:J

.field private mTotalBuffer:J

.field private mTrackTimeUs:[J


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 59
    iput-wide v0, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mRequestProgressInfoIntervalUs:J

    const/4 v0, 0x1

    const/16 v1, 0x9

    if-ne p2, v1, :cond_e

    move v1, v0

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    if-ne p2, v0, :cond_12

    const/4 v1, 0x2

    .line 94
    :cond_12
    new-instance p2, Landroid/media/MediaMuxer;

    invoke-direct {p2, p1, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    .line 95
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mFile:Ljava/io/File;

    .line 96
    iput-object p3, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxerListener:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;

    .line 97
    new-array p1, v0, [J

    iput-object p1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mTrackTimeUs:[J

    .line 98
    new-array p1, v0, [J

    iput-object p1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mLastProgressTimeUs:[J

    .line 99
    new-instance p1, Landroid/util/ArrayMap;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object p1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->externalToInternalTrackIdMap:Landroid/util/ArrayMap;

    .line 100
    new-array p1, v0, [Z

    iput-object p1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mLimitReached:[Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/io/FileDescriptor;ILcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 59
    iput-wide v0, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mRequestProgressInfoIntervalUs:J

    const/4 v0, 0x1

    const/16 v1, 0x9

    if-ne p3, v1, :cond_e

    move v1, v0

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    if-ne p3, v0, :cond_12

    const/4 v1, 0x2

    .line 72
    :cond_12
    new-instance p3, Landroid/media/MediaMuxer;

    invoke-direct {p3, p2, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    iput-object p3, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz p1, :cond_29

    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_29

    .line 74
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mFile:Ljava/io/File;

    goto :goto_2c

    :cond_29
    const/4 p1, 0x0

    .line 76
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mFile:Ljava/io/File;

    .line 78
    :goto_2c
    iput-object p4, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxerListener:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;

    .line 79
    new-array p1, v0, [J

    iput-object p1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mTrackTimeUs:[J

    .line 80
    new-array p1, v0, [J

    iput-object p1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mLastProgressTimeUs:[J

    .line 81
    new-instance p1, Landroid/util/ArrayMap;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object p1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->externalToInternalTrackIdMap:Landroid/util/ArrayMap;

    .line 82
    new-array p1, v0, [Z

    iput-object p1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mLimitReached:[Z

    return-void
.end method


# virtual methods
.method addTrack(Landroid/media/MediaFormat;)I
    .registers 6

    .line 137
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    .line 138
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mTrackTimeUs:[J

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1b

    add-int/lit8 v1, v0, 0x1

    .line 139
    new-array v3, v1, [J

    iput-object v3, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mTrackTimeUs:[J

    .line 140
    new-array v3, v1, [J

    iput-object v3, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mLastProgressTimeUs:[J

    .line 141
    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mLimitReached:[Z

    :cond_1b
    const-string v1, "mime"

    .line 143
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const-string v3, "audio/"

    .line 145
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    const/4 v2, 0x2

    goto :goto_36

    :cond_2c
    const-string v3, "video/"

    .line 147
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_35

    goto :goto_36

    :cond_35
    move v2, v1

    .line 150
    :goto_36
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->externalToInternalTrackIdMap:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method endTrack(I)V
    .registers 4

    shl-int/lit8 p1, p1, 0x1c

    .line 156
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxerListener:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;

    or-int/lit16 p1, p1, 0x3e8

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;->onInfo(II)V

    return-void
.end method

.method public release()V
    .registers 2

    .line 220
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    const/4 v0, 0x0

    .line 221
    iput-object v0, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    return-void
.end method

.method setLocation(FF)V
    .registers 4

    .line 108
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaMuxer;->setLocation(FF)V

    return-void
.end method

.method setMaxDuration(I)V
    .registers 3

    const/4 v0, 0x0

    .line 201
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMaxDurationMs:I

    return-void
.end method

.method setMaxFileSize(J)V
    .registers 5

    .line 209
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mFile:Ljava/io/File;

    if-eqz v0, :cond_12

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const v0, 0x3f733333    # 0.95f

    long-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-long p1, p1

    :cond_12
    const-wide/16 v0, 0x0

    .line 213
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMaxFileSizeBytes:J

    return-void
.end method

.method setOrientationHint(I)V
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    return-void
.end method

.method setRequestProgressInfoInterval(J)V
    .registers 5

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 112
    iput-wide p1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mRequestProgressInfoIntervalUs:J

    return-void
.end method

.method public start()V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 116
    :goto_2
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mLastProgressTimeUs:[J

    array-length v3, v2

    if-ge v1, v3, :cond_12

    const-wide/16 v3, 0x0

    .line 117
    aput-wide v3, v2, v1

    .line 118
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mLimitReached:[Z

    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 120
    :cond_12
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 121
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mFile:Ljava/io/File;

    if-eqz v0, :cond_21

    .line 122
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mTotalBuffer:J

    :cond_21
    return-void
.end method

.method public stop()V
    .registers 4

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_13

    :catch_6
    move-exception v0

    const-string v1, "MediaMuxerWrapper"

    const-string v2, "exception when stopping mediaMuxer"

    .line 131
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxerListener:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;

    invoke-interface {v0}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;->onStopError()V

    :goto_13
    return-void
.end method

.method writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .registers 15

    .line 161
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->externalToInternalTrackIdMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mLimitReached:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_b8

    .line 163
    iget v1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMaxDurationMs:I

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x1

    if-lez v1, :cond_31

    iget-wide v5, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    div-long/2addr v5, v2

    iget v1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMaxDurationMs:I

    int-to-long v7, v1

    cmp-long v1, v5, v7

    if-lez v1, :cond_31

    .line 164
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxerListener:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;

    invoke-interface {p1}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;->onMaxDurationReached()V

    .line 165
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mLimitReached:[Z

    aput-boolean v4, p1, v0

    return-void

    .line 168
    :cond_31
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mFile:Ljava/io/File;

    const-wide/16 v5, 0x0

    if-eqz v1, :cond_65

    iget-wide v7, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMaxFileSizeBytes:J

    cmp-long v7, v7, v5

    if-lez v7, :cond_65

    .line 169
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    int-to-long v9, v1

    add-long/2addr v7, v9

    iget-wide v9, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMaxFileSizeBytes:J

    cmp-long v1, v7, v9

    if-gtz v1, :cond_5b

    iget-wide v7, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mTotalBuffer:J

    .line 170
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    int-to-long v9, v1

    add-long/2addr v7, v9

    iget-wide v9, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMaxFileSizeBytes:J

    cmp-long v1, v7, v9

    if-lez v1, :cond_65

    .line 171
    :cond_5b
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxerListener:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;

    invoke-interface {p1}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;->onMaxFileSizeReached()V

    .line 172
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mLimitReached:[Z

    aput-boolean v4, p1, v0

    return-void

    .line 177
    :cond_65
    :try_start_65
    iget-wide v7, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mTotalBuffer:J

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    int-to-long v9, v1

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mTotalBuffer:J

    .line 178
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1, v0, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 179
    iget-object p2, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mTrackTimeUs:[J

    iget-wide v7, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    aput-wide v7, p2, v0
    :try_end_7a
    .catch Ljava/lang/IllegalStateException; {:try_start_65 .. :try_end_7a} :catch_7b

    goto :goto_8d

    :catch_7b
    const-string p2, "Muxer can not write"

    .line 181
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 182
    iget-object p2, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxerListener:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;

    invoke-interface {p2}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;->onWriteError()V

    .line 183
    iget-object p2, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mLimitReached:[Z

    aput-boolean v4, p2, v0

    .line 186
    :goto_8d
    iget-wide v7, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mRequestProgressInfoIntervalUs:J

    cmp-long p2, v7, v5

    if-ltz p2, :cond_b8

    .line 187
    iget-wide v4, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object p2, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mLastProgressTimeUs:[J

    aget-wide v6, p2, v0

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mRequestProgressInfoIntervalUs:J

    cmp-long p2, v4, v6

    if-lez p2, :cond_b8

    shl-int/lit8 p1, p1, 0x1c

    .line 190
    iget-wide v4, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object p2, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mLastProgressTimeUs:[J

    aget-wide v6, p2, v0

    sub-long/2addr v4, v6

    div-long/2addr v4, v2

    .line 192
    iget-object p2, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mMuxerListener:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;

    or-int/lit16 p1, p1, 0x3e9

    long-to-int v1, v4

    invoke-interface {p2, p1, v1}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper$MuxerListener;->onInfo(II)V

    .line 194
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->mLastProgressTimeUs:[J

    iget-wide p2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    aput-wide p2, p1, v0

    :cond_b8
    return-void
.end method
