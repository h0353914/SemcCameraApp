.class public final enum Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;
.super Ljava/lang/Enum;
.source "TiffDirectoryType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final enum EXIF_DIRECTORY_EXIF_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final enum EXIF_DIRECTORY_GPS:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final EXIF_DIRECTORY_IFD0:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final EXIF_DIRECTORY_IFD1:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final EXIF_DIRECTORY_IFD2:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final EXIF_DIRECTORY_IFD3:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final enum EXIF_DIRECTORY_INTEROP_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final enum EXIF_DIRECTORY_MAKER_NOTES:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final EXIF_DIRECTORY_SUB_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final EXIF_DIRECTORY_SUB_IFD1:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final EXIF_DIRECTORY_SUB_IFD2:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final enum TIFF_DIRECTORY_IFD0:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final enum TIFF_DIRECTORY_IFD1:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final enum TIFF_DIRECTORY_IFD2:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final enum TIFF_DIRECTORY_IFD3:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final TIFF_DIRECTORY_ROOT:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;


# instance fields
.field public final directoryType:I

.field private final isImageDirectory:Z

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 19

    .line 20
    new-instance v6, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v1, "TIFF_DIRECTORY_IFD0"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "IFD0"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;-><init>(Ljava/lang/String;IZILjava/lang/String;)V

    sput-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->TIFF_DIRECTORY_IFD0:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    .line 23
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v8, "TIFF_DIRECTORY_IFD1"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const-string v12, "IFD1"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;-><init>(Ljava/lang/String;IZILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->TIFF_DIRECTORY_IFD1:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    .line 26
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v14, "TIFF_DIRECTORY_IFD2"

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x2

    const-string v18, "IFD2"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;-><init>(Ljava/lang/String;IZILjava/lang/String;)V

    sput-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->TIFF_DIRECTORY_IFD2:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    .line 29
    new-instance v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v8, "TIFF_DIRECTORY_IFD3"

    const/4 v9, 0x3

    const/4 v11, 0x3

    const-string v12, "IFD3"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;-><init>(Ljava/lang/String;IZILjava/lang/String;)V

    sput-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->TIFF_DIRECTORY_IFD3:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    .line 32
    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v14, "EXIF_DIRECTORY_INTEROP_IFD"

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/16 v17, -0x4

    const-string v18, "Interop IFD"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;-><init>(Ljava/lang/String;IZILjava/lang/String;)V

    sput-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_INTEROP_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    .line 34
    new-instance v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v8, "EXIF_DIRECTORY_MAKER_NOTES"

    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v11, -0x5

    const-string v12, "Maker Notes"

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;-><init>(Ljava/lang/String;IZILjava/lang/String;)V

    sput-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_MAKER_NOTES:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    .line 36
    new-instance v5, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v14, "EXIF_DIRECTORY_EXIF_IFD"

    const/4 v15, 0x6

    const/16 v17, -0x2

    const-string v18, "Exif IFD"

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;-><init>(Ljava/lang/String;IZILjava/lang/String;)V

    sput-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_EXIF_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    .line 38
    new-instance v13, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v8, "EXIF_DIRECTORY_GPS"

    const/4 v9, 0x7

    const/4 v11, -0x3

    const-string v12, "GPS IFD"

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;-><init>(Ljava/lang/String;IZILjava/lang/String;)V

    sput-object v13, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_GPS:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/16 v7, 0x8

    new-array v7, v7, [Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    const/4 v8, 0x2

    aput-object v1, v7, v8

    const/4 v8, 0x3

    aput-object v2, v7, v8

    const/4 v8, 0x4

    aput-object v3, v7, v8

    const/4 v3, 0x5

    aput-object v4, v7, v3

    const/4 v3, 0x6

    aput-object v5, v7, v3

    const/4 v3, 0x7

    aput-object v13, v7, v3

    .line 19
    sput-object v7, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->$VALUES:[Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    .line 65
    sput-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_IFD0:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    .line 66
    sput-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->TIFF_DIRECTORY_ROOT:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    .line 67
    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_IFD1:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    .line 68
    sput-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_IFD2:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    .line 69
    sput-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_IFD3:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    .line 70
    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_SUB_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    .line 71
    sput-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_SUB_IFD1:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    .line 72
    sput-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_SUB_IFD2:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/4 v0, 0x0

    .line 73
    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-boolean p3, p0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->isImageDirectory:Z

    .line 47
    iput p4, p0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->directoryType:I

    .line 48
    iput-object p5, p0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->name:Ljava/lang/String;

    return-void
.end method

.method public static getExifDirectoryType(I)Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;
    .registers 6

    .line 57
    invoke-static {}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->values()[Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 58
    iget v4, v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->directoryType:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 62
    :cond_12
    sget-object p0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;
    .registers 2

    .line 19
    const-class v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;
    .registers 1

    .line 19
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->$VALUES:[Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-virtual {v0}, [Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    return-object v0
.end method


# virtual methods
.method public isImageDirectory()Z
    .registers 1

    .line 52
    iget-boolean p0, p0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->isImageDirectory:Z

    return p0
.end method
