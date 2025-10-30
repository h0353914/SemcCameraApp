.class final enum Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;
.super Ljava/lang/Enum;
.source "JpegXMPRemover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/util/JpegXMPRemover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MarkerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

.field public static final enum DHT:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

.field public static final enum DQT:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

.field public static final enum EMPTY_APP3:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

.field public static final enum EMPTY_APP4:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

.field public static final enum EMPTY_APP5:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

.field public static final enum EOI:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

.field public static final enum EXIF:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

.field public static final enum IMAGE:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

.field public static final enum NONE:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

.field public static final enum SOF:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

.field public static final enum SOI:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

.field public static final enum SOS:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

.field public static final enum XMP:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;


# instance fields
.field final mMarker:[B

.field final mSignature:[B


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 34
    new-instance v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    const-string v1, "SOI"

    .line 35
    # getter for: Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->MARKER_SOI:[B
    invoke-static {}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->access$000()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;-><init>(Ljava/lang/String;I[B[B)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->SOI:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    .line 36
    new-instance v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    const-string v1, "EOI"

    .line 37
    # getter for: Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->MARKER_EOI:[B
    invoke-static {}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->access$100()[B

    move-result-object v2

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;-><init>(Ljava/lang/String;I[B[B)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->EOI:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    .line 38
    new-instance v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    const-string v1, "EXIF"

    .line 39
    # getter for: Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->MARKER_APP_1:[B
    invoke-static {}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->access$200()[B

    move-result-object v2

    const-string v6, "Exif\u0000\u0000"

    .line 40
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-direct {v0, v1, v7, v2, v6}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;-><init>(Ljava/lang/String;I[B[B)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->EXIF:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    .line 41
    new-instance v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    const-string v1, "XMP"

    .line 42
    # getter for: Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->MARKER_APP_1:[B
    invoke-static {}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->access$200()[B

    move-result-object v2

    const-string v6, "http://ns.adobe.com/xap/1.0/\u0000"

    .line 43
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v8, 0x3

    invoke-direct {v0, v1, v8, v2, v6}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;-><init>(Ljava/lang/String;I[B[B)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->XMP:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    .line 44
    new-instance v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    const-string v1, "EMPTY_APP3"

    .line 45
    # getter for: Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->MARKER_APP_3:[B
    invoke-static {}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->access$300()[B

    move-result-object v2

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;-><init>(Ljava/lang/String;I[B[B)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->EMPTY_APP3:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    .line 46
    new-instance v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    const-string v1, "EMPTY_APP4"

    .line 47
    # getter for: Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->MARKER_APP_4:[B
    invoke-static {}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->access$400()[B

    move-result-object v2

    const/4 v9, 0x5

    invoke-direct {v0, v1, v9, v2, v4}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;-><init>(Ljava/lang/String;I[B[B)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->EMPTY_APP4:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    .line 48
    new-instance v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    const-string v1, "EMPTY_APP5"

    .line 49
    # getter for: Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->MARKER_APP_5:[B
    invoke-static {}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->access$500()[B

    move-result-object v2

    const/4 v10, 0x6

    invoke-direct {v0, v1, v10, v2, v4}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;-><init>(Ljava/lang/String;I[B[B)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->EMPTY_APP5:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    .line 50
    new-instance v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    const-string v1, "DQT"

    .line 51
    # getter for: Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->MARKER_DQT:[B
    invoke-static {}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->access$600()[B

    move-result-object v2

    const/4 v11, 0x7

    invoke-direct {v0, v1, v11, v2, v4}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;-><init>(Ljava/lang/String;I[B[B)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->DQT:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    .line 52
    new-instance v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    const-string v1, "SOF"

    .line 53
    # getter for: Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->MARKER_SOF:[B
    invoke-static {}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->access$700()[B

    move-result-object v2

    const/16 v12, 0x8

    invoke-direct {v0, v1, v12, v2, v4}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;-><init>(Ljava/lang/String;I[B[B)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->SOF:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    .line 54
    new-instance v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    const-string v1, "DHT"

    .line 55
    # getter for: Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->MARKER_DHT:[B
    invoke-static {}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->access$800()[B

    move-result-object v2

    const/16 v13, 0x9

    invoke-direct {v0, v1, v13, v2, v4}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;-><init>(Ljava/lang/String;I[B[B)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->DHT:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    .line 56
    new-instance v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    const-string v1, "SOS"

    .line 57
    # getter for: Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->MARKER_SOS:[B
    invoke-static {}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->access$900()[B

    move-result-object v2

    const/16 v14, 0xa

    invoke-direct {v0, v1, v14, v2, v4}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;-><init>(Ljava/lang/String;I[B[B)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->SOS:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    .line 58
    new-instance v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    const-string v1, "IMAGE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v4, v4}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;-><init>(Ljava/lang/String;I[B[B)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->IMAGE:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    .line 60
    new-instance v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    const-string v1, "NONE"

    .line 61
    # getter for: Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->UNKNOWN:[B
    invoke-static {}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover;->access$1000()[B

    move-result-object v15

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v15, v4}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;-><init>(Ljava/lang/String;I[B[B)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->NONE:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    const/16 v0, 0xd

    .line 33
    new-array v0, v0, [Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    sget-object v1, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->SOI:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->EOI:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->EXIF:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->XMP:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->EMPTY_APP3:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->EMPTY_APP4:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->EMPTY_APP5:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->DQT:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->SOF:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->DHT:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->SOS:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    aput-object v1, v0, v14

    sget-object v1, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->IMAGE:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    const/16 v3, 0xb

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->NONE:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->$VALUES:[Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[B[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput-object p3, p0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->mMarker:[B

    .line 70
    iput-object p4, p0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->mSignature:[B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;
    .registers 2

    .line 33
    const-class v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;
    .registers 1

    .line 33
    sget-object v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->$VALUES:[Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    return-object v0
.end method


# virtual methods
.method varargs byteToInt([B)I
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 158
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_16

    .line 159
    aget-byte v2, p1, v0

    if-gez v2, :cond_b

    add-int/lit16 v2, v2, 0x100

    .line 163
    :cond_b
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_16
    return v1
.end method

.method calculateDataSize(Ljava/nio/ByteBuffer;I)I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_5

    return v0

    .line 116
    :cond_5
    sget-object v1, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->SOI:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    if-eq p0, v1, :cond_17

    sget-object v1, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->EOI:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    if-ne p0, v1, :cond_e

    goto :goto_17

    .line 120
    :cond_e
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->getDataSizeIndex(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->readInt(Ljava/nio/ByteBuffer;I)I

    move-result p1

    return p1

    :cond_17
    :goto_17
    return v0
.end method

.method calculateSegmentSize(Ljava/nio/ByteBuffer;I)I
    .registers 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    const/4 p1, 0x0

    return p1

    .line 135
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->calculateDataSize(Ljava/nio/ByteBuffer;I)I

    move-result p1

    .line 136
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->markerLength()I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method compareMarker([B)Z
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->mMarker:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method compareSignature(Ljava/nio/ByteBuffer;I)Z
    .registers 7

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->mSignature:[B

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 85
    :cond_6
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->getSignatureIndex(I)I

    move-result p2

    move v0, v1

    .line 86
    :goto_b
    iget-object v2, p0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->mSignature:[B

    array-length v2, v2

    if-ge v0, v2, :cond_20

    add-int v2, p2, v0

    .line 87
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->mSignature:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_1f

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1f
    return v1

    :cond_20
    const/4 p1, 0x1

    return p1
.end method

.method getDataSizeIndex(I)I
    .registers 3

    .line 101
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->markerLength()I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method getInfo(Ljava/nio/ByteBuffer;I)Ljava/lang/Object;
    .registers 5

    .line 140
    sget-object v0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->SOF:Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;

    if-ne p0, v0, :cond_1a

    add-int/lit8 v0, p2, 0x5

    .line 141
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->readInt(Ljava/nio/ByteBuffer;I)I

    move-result v0

    add-int/lit8 p2, p2, 0x7

    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->readInt(Ljava/nio/ByteBuffer;I)I

    move-result p1

    const/4 p2, 0x2

    .line 143
    new-array p2, p2, [I

    const/4 v1, 0x0

    aput p1, p2, v1

    const/4 p1, 0x1

    aput v0, p2, p1

    return-object p2

    :cond_1a
    const/4 p1, 0x0

    return-object p1
.end method

.method getSignatureIndex(I)I
    .registers 3

    .line 97
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->markerLength()I

    move-result v0

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x2

    return p1
.end method

.method markerLength()I
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->mMarker:[B

    if-eqz v0, :cond_6

    array-length v0, v0

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method readInt(Ljava/nio/ByteBuffer;I)I
    .registers 6

    const/4 v0, 0x2

    .line 149
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 150
    :goto_4
    array-length v2, v0

    if-ge v1, v2, :cond_12

    add-int v2, p2, v1

    .line 151
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 153
    :cond_12
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/util/JpegXMPRemover$MarkerType;->byteToInt([B)I

    move-result p1

    return p1
.end method
