.class public final enum Lorg/apache/commons/imaging/ImageInfo$ColorType;
.super Ljava/lang/Enum;
.source "ImageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/ImageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ColorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/imaging/ImageInfo$ColorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/imaging/ImageInfo$ColorType;

.field public static final enum BW:Lorg/apache/commons/imaging/ImageInfo$ColorType;

.field public static final enum CMYK:Lorg/apache/commons/imaging/ImageInfo$ColorType;

.field public static final enum GRAYSCALE:Lorg/apache/commons/imaging/ImageInfo$ColorType;

.field public static final enum OTHER:Lorg/apache/commons/imaging/ImageInfo$ColorType;

.field public static final enum RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

.field public static final enum UNKNOWN:Lorg/apache/commons/imaging/ImageInfo$ColorType;

.field public static final enum YCC:Lorg/apache/commons/imaging/ImageInfo$ColorType;

.field public static final enum YCCK:Lorg/apache/commons/imaging/ImageInfo$ColorType;

.field public static final enum YCbCr:Lorg/apache/commons/imaging/ImageInfo$ColorType;


# instance fields
.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 31
    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const-string v1, "BW"

    const/4 v2, 0x0

    const-string v3, "Black and White"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->BW:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 32
    new-instance v1, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const-string v3, "GRAYSCALE"

    const/4 v4, 0x1

    const-string v5, "Grayscale"

    invoke-direct {v1, v3, v4, v5}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/commons/imaging/ImageInfo$ColorType;->GRAYSCALE:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 33
    new-instance v3, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const-string v5, "RGB"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 34
    new-instance v5, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const-string v7, "CMYK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/apache/commons/imaging/ImageInfo$ColorType;->CMYK:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 35
    new-instance v7, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const-string v9, "YCbCr"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCbCr:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 36
    new-instance v9, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const-string v11, "YCCK"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v11}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCCK:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 37
    new-instance v11, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const-string v13, "YCC"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v13}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCC:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 38
    new-instance v13, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const-string v15, "OTHER"

    const/4 v14, 0x7

    const-string v12, "Other"

    invoke-direct {v13, v15, v14, v12}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lorg/apache/commons/imaging/ImageInfo$ColorType;->OTHER:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 39
    new-instance v12, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const-string v15, "UNKNOWN"

    const/16 v14, 0x8

    const-string v10, "Unknown"

    invoke-direct {v12, v15, v14, v10}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/apache/commons/imaging/ImageInfo$ColorType;->UNKNOWN:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const/16 v10, 0x9

    new-array v10, v10, [Lorg/apache/commons/imaging/ImageInfo$ColorType;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    aput-object v12, v10, v14

    .line 30
    sput-object v10, Lorg/apache/commons/imaging/ImageInfo$ColorType;->$VALUES:[Lorg/apache/commons/imaging/ImageInfo$ColorType;

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

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput-object p3, p0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/imaging/ImageInfo$ColorType;
    .registers 2

    .line 30
    const-class v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/imaging/ImageInfo$ColorType;
    .registers 1

    .line 30
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->$VALUES:[Lorg/apache/commons/imaging/ImageInfo$ColorType;

    invoke-virtual {v0}, [Lorg/apache/commons/imaging/ImageInfo$ColorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/imaging/ImageInfo$ColorType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1

    .line 49
    iget-object p0, p0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->description:Ljava/lang/String;

    return-object p0
.end method
