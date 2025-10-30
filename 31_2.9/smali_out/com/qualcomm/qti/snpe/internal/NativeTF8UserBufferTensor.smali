.class final Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;
.super Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;
.source "NativeTF8UserBufferTensor.java"

# interfaces
.implements Lcom/qualcomm/qti/snpe/internal/NativeUserBufferHandle;


# static fields
.field private static final JNI_ERROR:I = -0x1


# instance fields
.field private final mByteBuffer:Ljava/nio/ByteBuffer;

.field private mNativeHandle:J

.field private mQuantizedStepSize:F

.field private mStepExactly0:I


# direct methods
.method constructor <init>(I[IIFLjava/nio/ByteBuffer;)V
    .registers 8

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;-><init>(I[I)V

    .line 30
    invoke-virtual {p0, p3}, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->setStepExactly0(I)V

    .line 31
    invoke-virtual {p0, p4}, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->setQuantizedStepSize(F)V

    .line 33
    iput-object p5, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 34
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 38
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    if-ne v0, v1, :cond_4f

    .line 42
    new-instance v0, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;

    invoke-direct {v0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;-><init>()V

    .line 43
    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    .line 44
    invoke-virtual {v0, p2}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInts([I)V

    .line 45
    invoke-virtual {v0, p3}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    .line 46
    invoke-virtual {v0, p4}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeFloat(F)V

    .line 48
    invoke-virtual {v0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->marshall()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p2

    invoke-direct {p0, p1, p2, p5}, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->nativeInit(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mNativeHandle:J

    .line 50
    iget-wide p1, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mNativeHandle:J

    const-wide/16 p3, -0x1

    cmp-long p1, p1, p3

    if-eqz p1, :cond_47

    return-void

    .line 51
    :cond_47
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to create native tensor!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_4f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ByteBuffer has a different byte order than that of underlying platform"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_57
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ByteBuffer is not a direct buffer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private doRelease()V
    .registers 6

    .line 91
    iget-wide v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    .line 92
    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->nativeRelease(J)V

    .line 93
    iput-wide v2, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mNativeHandle:J

    :cond_d
    return-void
.end method

.method private native nativeInit(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)J
.end method

.method private native nativeRelease(J)V
.end method


# virtual methods
.method asDirectByteBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mByteBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->doRelease()V

    .line 78
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getNativeHandle()J
    .registers 3

    .line 105
    iget-wide v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mNativeHandle:J

    return-wide v0
.end method

.method public getQuantizedStepSize()F
    .registers 2

    .line 70
    iget v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mQuantizedStepSize:F

    return v0
.end method

.method public getStepExactly0()I
    .registers 2

    .line 65
    iget v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mStepExactly0:I

    return v0
.end method

.method public declared-synchronized release()V
    .registers 5

    monitor-enter p0

    .line 83
    :try_start_1
    iget-wide v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    .line 86
    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->doRelease()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    .line 88
    monitor-exit p0

    return-void

    .line 84
    :cond_e
    :try_start_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TF8UserBufferTensor instance already released!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_16

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setQuantizedStepSize(F)V
    .registers 2

    .line 60
    iput p1, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mQuantizedStepSize:F

    return-void
.end method

.method public setStepExactly0(I)V
    .registers 2

    .line 56
    iput p1, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mStepExactly0:I

    return-void
.end method
