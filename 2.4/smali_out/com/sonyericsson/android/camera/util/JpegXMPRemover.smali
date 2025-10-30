.class public Lcom/sonyericsson/android/camera/util/JpegXMPRemover;
.super Ljava/lang/Object;
.source "JpegXMPRemover.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;
    }
.end annotation


# static fields
.field private static final DEF_BYTE_RANGE:I = 0x2

.field private static final MARKER_APP_1:[B

.field private static final MARKER_APP_3:[B

.field private static final MARKER_APP_4:[B

.field private static final MARKER_APP_5:[B

.field private static final MARKER_DHT:[B

.field private static final MARKER_DQT:[B

.field private static final MARKER_EOI:[B

.field private static final MARKER_SOF:[B

.field private static final MARKER_SOI:[B

.field private static final MARKER_SOS:[B

.field private static final UNKNOWN:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x2

    .line 20
    new-array v1, v0, [B

    fill-array-data v1, :array_50

    sput-object v1, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->MARKER_SOI:[B

    .line 21
    new-array v1, v0, [B

    fill-array-data v1, :array_56

    sput-object v1, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->MARKER_EOI:[B

    .line 22
    new-array v1, v0, [B

    fill-array-data v1, :array_5c

    sput-object v1, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->MARKER_APP_1:[B

    .line 23
    new-array v1, v0, [B

    fill-array-data v1, :array_62

    sput-object v1, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->MARKER_APP_3:[B

    .line 24
    new-array v1, v0, [B

    fill-array-data v1, :array_68

    sput-object v1, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->MARKER_APP_4:[B

    .line 25
    new-array v1, v0, [B

    fill-array-data v1, :array_6e

    sput-object v1, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->MARKER_APP_5:[B

    .line 26
    new-array v1, v0, [B

    fill-array-data v1, :array_74

    sput-object v1, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->MARKER_DQT:[B

    .line 27
    new-array v1, v0, [B

    fill-array-data v1, :array_7a

    sput-object v1, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->MARKER_SOF:[B

    .line 28
    new-array v1, v0, [B

    fill-array-data v1, :array_80

    sput-object v1, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->MARKER_DHT:[B

    .line 29
    new-array v1, v0, [B

    fill-array-data v1, :array_86

    sput-object v1, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->MARKER_SOS:[B

    .line 30
    new-array v0, v0, [B

    fill-array-data v0, :array_8c

    sput-object v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->UNKNOWN:[B

    return-void

    nop

    :array_50
    .array-data 1
        -0x1t
        -0x28t
    .end array-data

    nop

    :array_56
    .array-data 1
        -0x1t
        -0x27t
    .end array-data

    nop

    :array_5c
    .array-data 1
        -0x1t
        -0x1ft
    .end array-data

    nop

    :array_62
    .array-data 1
        -0x1t
        -0x1dt
    .end array-data

    nop

    :array_68
    .array-data 1
        -0x1t
        -0x1ct
    .end array-data

    nop

    :array_6e
    .array-data 1
        -0x1t
        -0x1bt
    .end array-data

    nop

    :array_74
    .array-data 1
        -0x1t
        -0x25t
    .end array-data

    nop

    :array_7a
    .array-data 1
        -0x1t
        -0x40t
    .end array-data

    nop

    :array_80
    .array-data 1
        -0x1t
        -0x3ct
    .end array-data

    nop

    :array_86
    .array-data 1
        -0x1t
        -0x26t
    .end array-data

    nop

    :array_8c
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[B
    .registers 1

    .line 16
    sget-object v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->MARKER_SOI:[B

    return-object v0
.end method

.method static synthetic access$100()[B
    .registers 1

    .line 16
    sget-object v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->MARKER_EOI:[B

    return-object v0
.end method

.method static synthetic access$1000()[B
    .registers 1

    .line 16
    sget-object v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->UNKNOWN:[B

    return-object v0
.end method

.method static synthetic access$200()[B
    .registers 1

    .line 16
    sget-object v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->MARKER_APP_1:[B

    return-object v0
.end method

.method static synthetic access$300()[B
    .registers 1

    .line 16
    sget-object v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->MARKER_APP_3:[B

    return-object v0
.end method

.method static synthetic access$400()[B
    .registers 1

    .line 16
    sget-object v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->MARKER_APP_4:[B

    return-object v0
.end method

.method static synthetic access$500()[B
    .registers 1

    .line 16
    sget-object v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->MARKER_APP_5:[B

    return-object v0
.end method

.method static synthetic access$600()[B
    .registers 1

    .line 16
    sget-object v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->MARKER_DQT:[B

    return-object v0
.end method

.method static synthetic access$700()[B
    .registers 1

    .line 16
    sget-object v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->MARKER_SOF:[B

    return-object v0
.end method

.method static synthetic access$800()[B
    .registers 1

    .line 16
    sget-object v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->MARKER_DHT:[B

    return-object v0
.end method

.method static synthetic access$900()[B
    .registers 1

    .line 16
    sget-object v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->MARKER_SOS:[B

    return-object v0
.end method

.method private static varargs cutOff(Ljava/nio/ByteBuffer;Landroid/util/SparseArray;[Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;)Ljava/nio/ByteBuffer;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Landroid/util/SparseArray<",
            "Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;",
            ">;[",
            "Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;",
            ")",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .line 195
    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 197
    :goto_7
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_2d

    .line 198
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 199
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    .line 201
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 202
    invoke-virtual {v5, p0, v4}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->calculateSegmentSize(Ljava/nio/ByteBuffer;I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_2a

    .line 204
    :cond_27
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->remove(I)V

    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 208
    :cond_2d
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    move p2, v1

    .line 211
    :goto_37
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge p2, v2, :cond_7a

    .line 212
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 213
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    .line 214
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int v4, v2, v4

    if-nez v4, :cond_5c

    .line 216
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v3, p0, v2}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->calculateSegmentSize(Ljava/nio/ByteBuffer;I)I

    move-result v2

    add-int/2addr v4, v2

    .line 215
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_77

    .line 219
    :cond_5c
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int v4, v2, v4

    new-array v4, v4, [B

    .line 220
    array-length v5, v4

    invoke-virtual {p0, v4, v1, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 221
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 223
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v3, p0, v2}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->calculateSegmentSize(Ljava/nio/ByteBuffer;I)I

    move-result v2

    add-int/2addr v4, v2

    .line 222
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_77
    add-int/lit8 p2, p2, 0x1

    goto :goto_37

    .line 227
    :cond_7a
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    if-lez p2, :cond_90

    .line 228
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    new-array p2, p2, [B

    .line 229
    array-length v0, p2

    invoke-virtual {p0, p2, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 230
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 231
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :cond_90
    return-object p1
.end method

.method public static cutOffXmpData(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 5

    .line 177
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->scanMarkerIndex(Ljava/nio/ByteBuffer;)Landroid/util/SparseArray;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 181
    :cond_8
    sget-object v1, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->XMP:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_12

    return-object p0

    :cond_12
    const/4 v1, 0x1

    .line 186
    new-array v1, v1, [Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    const/4 v2, 0x0

    sget-object v3, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->XMP:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->cutOff(Ljava/nio/ByteBuffer;Landroid/util/SparseArray;[Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static findIndex(Ljava/nio/ByteBuffer;I[BI)I
    .registers 8

    if-lez p3, :cond_3

    goto :goto_b

    .line 351
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    :goto_b
    const/4 v0, 0x0

    :goto_c
    const v1, 0xffff

    if-ge v0, v1, :cond_39

    if-ltz p1, :cond_39

    .line 355
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, p1, :cond_1a

    goto :goto_39

    .line 358
    :cond_1a
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    .line 359
    :goto_1d
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    sub-int v2, p1, v2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    aget-byte v3, p2, v1

    if-ne v2, v3, :cond_35

    if-nez v1, :cond_32

    .line 361
    array-length p0, p2

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_32
    add-int/lit8 v1, v1, -0x1

    goto :goto_1d

    :cond_35
    add-int/lit8 v0, v0, 0x1

    add-int/2addr p1, p3

    goto :goto_c

    :cond_39
    :goto_39
    const/4 p0, -0x1

    return p0
.end method

.method private static findIndexFromLast(Ljava/nio/ByteBuffer;I[B)I
    .registers 4

    const/4 v0, -0x1

    .line 344
    invoke-static {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->findIndex(Ljava/nio/ByteBuffer;I[BI)I

    move-result p0

    return p0
.end method

.method private static findIndexFromTop(Ljava/nio/ByteBuffer;I[B)I
    .registers 4

    const/4 v0, 0x1

    .line 339
    invoke-static {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->findIndex(Ljava/nio/ByteBuffer;I[BI)I

    move-result p0

    return p0
.end method

.method private static findMarkerType(Ljava/nio/ByteBuffer;I[B)Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;
    .registers 8

    .line 325
    invoke-static {}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->values()[Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_1f

    aget-object v3, v0, v2

    .line 326
    invoke-virtual {v3, p2}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->compareMarker([B)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 327
    iget-object v4, v3, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->mSignature:[B

    if-eqz v4, :cond_1b

    .line 328
    invoke-virtual {v3, p0, p1}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->compareSignature(Ljava/nio/ByteBuffer;I)Z

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_1c

    :cond_1b
    return-object v3

    :cond_1c
    :goto_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 334
    :cond_1f
    sget-object p0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->NONE:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    return-object p0
.end method

.method private static scanMarkerIndex(Ljava/nio/ByteBuffer;)Landroid/util/SparseArray;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;",
            ">;"
        }
    .end annotation

    .line 238
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 242
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x2

    .line 243
    new-array v2, v1, [B

    .line 245
    sget-object v3, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->SOI:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->mMarker:[B

    const/4 v4, 0x0

    invoke-static {p0, v4, v3}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->findIndexFromTop(Ljava/nio/ByteBuffer;I[B)I

    move-result v3

    .line 246
    sget-object v5, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->EOI:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    iget-object v5, v5, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->mMarker:[B

    invoke-static {p0, v4, v5}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->findIndexFromLast(Ljava/nio/ByteBuffer;I[B)I

    move-result v5

    if-nez v3, :cond_f9

    const/4 v3, -0x1

    if-ne v5, v3, :cond_23

    goto/16 :goto_f9

    .line 252
    :cond_23
    sget-object v3, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->SOI:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 253
    sget-object v3, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->SOI:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->markerLength()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 255
    :goto_31
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v6, 0x1

    if-lez v3, :cond_a7

    .line 257
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 260
    array-length v7, v2

    invoke-virtual {p0, v2, v4, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 263
    invoke-static {p0, v3, v2}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->findMarkerType(Ljava/nio/ByteBuffer;I[B)Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    move-result-object v7

    .line 268
    sget-object v8, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->NONE:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    if-eq v7, v8, :cond_4d

    .line 269
    invoke-virtual {v7, p0, v3}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->calculateDataSize(Ljava/nio/ByteBuffer;I)I

    move-result v8

    goto :goto_85

    .line 273
    :cond_4d
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->SOS:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    if-ne v8, v9, :cond_79

    .line 274
    sget-object v8, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->SOF:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 275
    sget-object v9, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->SOF:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    invoke-virtual {v9, p0, v8}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->getInfo(Ljava/nio/ByteBuffer;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    sub-int v9, v5, v3

    .line 277
    aget v10, v8, v4

    aget v8, v8, v6

    mul-int/2addr v10, v8

    if-ge v9, v10, :cond_77

    .line 280
    sget-object v7, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->IMAGE:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    :cond_77
    move v8, v9

    goto :goto_85

    .line 286
    :cond_79
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-ge v1, v8, :cond_84

    .line 288
    invoke-virtual {v7, p0, v3}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->calculateDataSize(Ljava/nio/ByteBuffer;I)I

    move-result v8

    goto :goto_85

    :cond_84
    move v8, v4

    .line 294
    :goto_85
    invoke-virtual {v0, v3, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 296
    sget-object v9, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->NONE:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    if-ne v7, v9, :cond_8f

    if-gtz v8, :cond_8f

    goto :goto_a7

    .line 302
    :cond_8f
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->markerLength()I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v8

    .line 303
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    if-gt v3, v6, :cond_9f

    .line 304
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_31

    .line 306
    :cond_9f
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_31

    .line 310
    :cond_a7
    :goto_a7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 312
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_f8

    const-string p0, "Jpeg marker scan result: E"

    .line 313
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    move p0, v4

    .line 314
    :goto_b8
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge p0, v1, :cond_ef

    .line 315
    new-array v1, v6, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_b8

    :cond_ef
    const-string p0, "Jpeg marker scan result: X"

    .line 317
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_f8
    return-object v0

    :cond_f9
    :goto_f9
    const/4 p0, 0x0

    return-object p0
.end method
