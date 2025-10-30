.class public final enum Lorg/apache/commons/imaging/ImageFormats;
.super Ljava/lang/Enum;
.source "ImageFormats.java"

# interfaces
.implements Lorg/apache/commons/imaging/ImageFormat;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/imaging/ImageFormats;",
        ">;",
        "Lorg/apache/commons/imaging/ImageFormat;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum BMP:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum DCX:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum GIF:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum ICNS:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum ICO:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum JBIG2:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum JPEG:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum PAM:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum PBM:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum PCX:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum PGM:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum PNG:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum PNM:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum PPM:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum PSD:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum RGBE:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum TGA:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum TIFF:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum UNKNOWN:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum WBMP:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum XBM:Lorg/apache/commons/imaging/ImageFormats;

.field public static final enum XPM:Lorg/apache/commons/imaging/ImageFormats;


# direct methods
.method static constructor <clinit>()V
    .registers 25

    .line 23
    new-instance v0, Lorg/apache/commons/imaging/ImageFormats;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/ImageFormats;->UNKNOWN:Lorg/apache/commons/imaging/ImageFormats;

    .line 24
    new-instance v1, Lorg/apache/commons/imaging/ImageFormats;

    const-string v3, "BMP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/imaging/ImageFormats;->BMP:Lorg/apache/commons/imaging/ImageFormats;

    .line 25
    new-instance v3, Lorg/apache/commons/imaging/ImageFormats;

    const-string v5, "DCX"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/ImageFormats;->DCX:Lorg/apache/commons/imaging/ImageFormats;

    .line 26
    new-instance v5, Lorg/apache/commons/imaging/ImageFormats;

    const-string v7, "GIF"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/commons/imaging/ImageFormats;->GIF:Lorg/apache/commons/imaging/ImageFormats;

    .line 27
    new-instance v7, Lorg/apache/commons/imaging/ImageFormats;

    const-string v9, "ICNS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/commons/imaging/ImageFormats;->ICNS:Lorg/apache/commons/imaging/ImageFormats;

    .line 28
    new-instance v9, Lorg/apache/commons/imaging/ImageFormats;

    const-string v11, "ICO"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/apache/commons/imaging/ImageFormats;->ICO:Lorg/apache/commons/imaging/ImageFormats;

    .line 29
    new-instance v11, Lorg/apache/commons/imaging/ImageFormats;

    const-string v13, "JBIG2"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/apache/commons/imaging/ImageFormats;->JBIG2:Lorg/apache/commons/imaging/ImageFormats;

    .line 30
    new-instance v13, Lorg/apache/commons/imaging/ImageFormats;

    const-string v15, "JPEG"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/apache/commons/imaging/ImageFormats;->JPEG:Lorg/apache/commons/imaging/ImageFormats;

    .line 31
    new-instance v15, Lorg/apache/commons/imaging/ImageFormats;

    const-string v14, "PAM"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/apache/commons/imaging/ImageFormats;->PAM:Lorg/apache/commons/imaging/ImageFormats;

    .line 32
    new-instance v14, Lorg/apache/commons/imaging/ImageFormats;

    const-string v12, "PSD"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/apache/commons/imaging/ImageFormats;->PSD:Lorg/apache/commons/imaging/ImageFormats;

    .line 33
    new-instance v12, Lorg/apache/commons/imaging/ImageFormats;

    const-string v10, "PBM"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/apache/commons/imaging/ImageFormats;->PBM:Lorg/apache/commons/imaging/ImageFormats;

    .line 34
    new-instance v10, Lorg/apache/commons/imaging/ImageFormats;

    const-string v8, "PGM"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/apache/commons/imaging/ImageFormats;->PGM:Lorg/apache/commons/imaging/ImageFormats;

    .line 35
    new-instance v8, Lorg/apache/commons/imaging/ImageFormats;

    const-string v6, "PNM"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/apache/commons/imaging/ImageFormats;->PNM:Lorg/apache/commons/imaging/ImageFormats;

    .line 36
    new-instance v6, Lorg/apache/commons/imaging/ImageFormats;

    const-string v4, "PPM"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/commons/imaging/ImageFormats;->PPM:Lorg/apache/commons/imaging/ImageFormats;

    .line 37
    new-instance v4, Lorg/apache/commons/imaging/ImageFormats;

    const-string v2, "PCX"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/commons/imaging/ImageFormats;->PCX:Lorg/apache/commons/imaging/ImageFormats;

    .line 38
    new-instance v2, Lorg/apache/commons/imaging/ImageFormats;

    const-string v6, "PNG"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/commons/imaging/ImageFormats;->PNG:Lorg/apache/commons/imaging/ImageFormats;

    .line 39
    new-instance v6, Lorg/apache/commons/imaging/ImageFormats;

    const-string v4, "RGBE"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/commons/imaging/ImageFormats;->RGBE:Lorg/apache/commons/imaging/ImageFormats;

    .line 40
    new-instance v4, Lorg/apache/commons/imaging/ImageFormats;

    const-string v2, "TGA"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/commons/imaging/ImageFormats;->TGA:Lorg/apache/commons/imaging/ImageFormats;

    .line 41
    new-instance v2, Lorg/apache/commons/imaging/ImageFormats;

    const-string v6, "TIFF"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/commons/imaging/ImageFormats;->TIFF:Lorg/apache/commons/imaging/ImageFormats;

    .line 42
    new-instance v6, Lorg/apache/commons/imaging/ImageFormats;

    const-string v4, "WBMP"

    move-object/from16 v22, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/commons/imaging/ImageFormats;->WBMP:Lorg/apache/commons/imaging/ImageFormats;

    .line 43
    new-instance v4, Lorg/apache/commons/imaging/ImageFormats;

    const-string v2, "XBM"

    move-object/from16 v23, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/commons/imaging/ImageFormats;->XBM:Lorg/apache/commons/imaging/ImageFormats;

    .line 44
    new-instance v2, Lorg/apache/commons/imaging/ImageFormats;

    const-string v6, "XPM"

    move-object/from16 v24, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lorg/apache/commons/imaging/ImageFormats;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/commons/imaging/ImageFormats;->XPM:Lorg/apache/commons/imaging/ImageFormats;

    const/16 v6, 0x16

    new-array v6, v6, [Lorg/apache/commons/imaging/ImageFormats;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    const/16 v0, 0xf

    aput-object v19, v6, v0

    const/16 v0, 0x10

    aput-object v20, v6, v0

    const/16 v0, 0x11

    aput-object v21, v6, v0

    const/16 v0, 0x12

    aput-object v22, v6, v0

    const/16 v0, 0x13

    aput-object v23, v6, v0

    const/16 v0, 0x14

    aput-object v24, v6, v0

    aput-object v2, v6, v4

    .line 22
    sput-object v6, Lorg/apache/commons/imaging/ImageFormats;->$VALUES:[Lorg/apache/commons/imaging/ImageFormats;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/imaging/ImageFormats;
    .registers 2

    .line 22
    const-class v0, Lorg/apache/commons/imaging/ImageFormats;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/ImageFormats;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/imaging/ImageFormats;
    .registers 1

    .line 22
    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->$VALUES:[Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v0}, [Lorg/apache/commons/imaging/ImageFormats;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/imaging/ImageFormats;

    return-object v0
.end method


# virtual methods
.method public getExtension()Ljava/lang/String;
    .registers 1

    .line 51
    invoke-virtual {p0}, Lorg/apache/commons/imaging/ImageFormats;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 47
    invoke-virtual {p0}, Lorg/apache/commons/imaging/ImageFormats;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
