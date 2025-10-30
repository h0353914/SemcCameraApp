.class public final Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;
.super Ljava/lang/Object;
.source "JniOutputBundle.java"


# instance fields
.field private final mBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->mBuffer:Ljava/nio/ByteBuffer;

    .line 17
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 18
    iget-object p1, p0, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public readFloat()F
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    return v0
.end method

.method public readFloatArray()[F
    .registers 4

    .line 42
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 43
    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 44
    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_15

    .line 45
    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readFloat()F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_15
    return-object v0
.end method

.method public readInt()I
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public readIntArray()[I
    .registers 4

    .line 29
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 30
    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 31
    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_15

    .line 32
    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readInt()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_15
    return-object v0
.end method

.method public readString()Ljava/lang/String;
    .registers 3

    .line 22
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 23
    new-array v0, v0, [B

    .line 24
    iget-object v1, p0, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 25
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method
