.class public final enum Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;
.super Ljava/lang/Enum;
.source "ImageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/ImageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompressionAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum ADAPTIVE_RLE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum CCITT_1D:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum CCITT_GROUP_3:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum CCITT_GROUP_4:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum JPEG:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum LZW:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum NONE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum PACKBITS:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum PNG_FILTER:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum PSD:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum RLE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum UNKNOWN:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;


# instance fields
.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 54
    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const-string v3, "Unknown"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->UNKNOWN:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 55
    new-instance v1, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v3, "NONE"

    const/4 v4, 0x1

    const-string v5, "None"

    invoke-direct {v1, v3, v4, v5}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->NONE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 56
    new-instance v3, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v5, "LZW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->LZW:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 57
    new-instance v5, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v7, "PACKBITS"

    const/4 v8, 0x3

    const-string v9, "PackBits"

    invoke-direct {v5, v7, v8, v9}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->PACKBITS:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 58
    new-instance v7, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v9, "JPEG"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->JPEG:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 59
    new-instance v9, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v11, "RLE"

    const/4 v12, 0x5

    const-string v13, "RLE: Run-Length Encoding"

    invoke-direct {v9, v11, v12, v13}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->RLE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 60
    new-instance v11, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v13, "ADAPTIVE_RLE"

    const/4 v14, 0x6

    const-string v15, "Adaptive RLE"

    invoke-direct {v11, v13, v14, v15}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->ADAPTIVE_RLE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 61
    new-instance v13, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v15, "PSD"

    const/4 v14, 0x7

    const-string v12, "Photoshop"

    invoke-direct {v13, v15, v14, v12}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->PSD:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 62
    new-instance v12, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v15, "PNG_FILTER"

    const/16 v14, 0x8

    const-string v10, "PNG Filter"

    invoke-direct {v12, v15, v14, v10}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->PNG_FILTER:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 63
    new-instance v10, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v15, "CCITT_GROUP_3"

    const/16 v14, 0x9

    const-string v8, "CCITT Group 3 1-Dimensional Modified Huffman run-length encoding."

    invoke-direct {v10, v15, v14, v8}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->CCITT_GROUP_3:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 64
    new-instance v8, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v15, "CCITT_GROUP_4"

    const/16 v14, 0xa

    const-string v6, "CCITT Group 4"

    invoke-direct {v8, v15, v14, v6}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->CCITT_GROUP_4:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 65
    new-instance v6, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v15, "CCITT_1D"

    const/16 v14, 0xb

    const-string v4, "CCITT 1D"

    invoke-direct {v6, v15, v14, v4}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->CCITT_1D:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const/16 v4, 0xc

    new-array v4, v4, [Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    aput-object v6, v4, v14

    .line 53
    sput-object v4, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->$VALUES:[Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput-object p3, p0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;
    .registers 2

    .line 53
    const-class v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;
    .registers 1

    .line 53
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->$VALUES:[Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    invoke-virtual {v0}, [Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1

    .line 75
    iget-object p0, p0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->description:Ljava/lang/String;

    return-object p0
.end method
