.class Lorg/apache/commons/imaging/formats/psd/ImageResourceType;
.super Ljava/lang/Object;
.source "ImageResourceType.java"


# static fields
.field private static final TYPES:[Lorg/apache/commons/imaging/formats/psd/ImageResourceType;


# instance fields
.field public final description:Ljava/lang/String;

.field public final from:I

.field public final to:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0x57

    new-array v0, v0, [Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    .line 26
    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x3e8

    const-string v3, "Number of channels, rows, columns, depth, and mode."

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x3e9

    const-string v3, "Optional. Macintosh print manager print info record"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x3eb

    const-string v3, "Indexed color table."

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x3ed

    const-string v3, "ResolutionInfo structure"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x3ee

    const-string v3, "Names of the alpha channels as a series of Pascal strings."

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x3ef

    const-string v3, "DisplayInfo structure"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x3f0

    const-string v3, "Optional. The caption as a Pascal string."

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x3f1

    const-string v3, "Border information"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x3f2

    const-string v3, "Background color"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x3f3

    const-string v3, "Print flags (labels, crop marks, color bars, registration marks, negative, flip, interpolate, caption)"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x3f4

    const-string v3, "Grayscale and multichannel halftoning information."

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x3f5

    const-string v3, "Color halftoning information"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x3f6

    const-string v3, "Duotone halftoning information"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x3f7

    const-string v3, "Grayscale and multichannel transfer function"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x3f8

    const-string v3, "Color transfer functions"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x3f9

    const-string v3, "Duotone transfer functions"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x3fa

    const-string v3, "Duotone image information"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x3fb

    const-string v3, "Effective black and white values for the dot range."

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x3fc

    const-string v3, "Obsolete"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x3fd

    const-string v4, "EPS options"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x3fe

    const-string v4, "Quick Mask information"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x3ff

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x400

    const-string v4, "Layer state information"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x401

    const-string v4, "Working path (not saved)"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x402

    const-string v4, "Layers group information"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x403

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x404

    const-string v3, "IPTC-NAA record"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x405

    const-string v3, "Image mode for raw format files"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x406

    const-string v3, "JPEG quality"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x408

    const-string v3, "Grid and guides information"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x409

    const-string v3, "Thumbnail resource"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x40a

    const-string v4, "Copyright flag"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x40b

    const-string v4, "URL"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x20

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x40c

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x21

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x40d

    const-string v3, "Global lighting angle for effects layer"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x22

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x40e

    const-string v3, "Color samplers resource"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x23

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x40f

    const-string v4, "ICC Profile"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x24

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x410

    const-string v4, "Watermark"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x25

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x411

    const-string v4, "ICC Untagged. Disables any assumed profile handling when opening the file"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x26

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x412

    const-string v4, "Effects visible. global flag to show/hide all the effects layer. Only present when they are hidden."

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x27

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x413

    const-string v4, "Spot Halftone"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x28

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x414

    const-string v4, "Document specific IDs"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x29

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x415

    const-string v4, "Unicode Alpha Names"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x416

    const-string v4, "Indexed Color Table Count. Number of colors in table that are actually defined"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x417

    const-string v4, "Transparency Index. Index of transparent color, if any"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x419

    const-string v4, "Global Altitude"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x41a

    const-string v4, "Slices"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x41b

    const-string v4, "Workflow URL"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x41c

    const-string v4, "Jump To XPEP"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x30

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x41d

    const-string v4, "Alpha Identifiers"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x31

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x41e

    const-string v4, "URL List"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x32

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x421

    const-string v4, "Version Info"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x33

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x422

    const-string v4, "EXIF data 1"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x34

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x423

    const-string v4, "EXIF data 3"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x35

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x424

    const-string v4, "XMP metadata"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x36

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x425

    const-string v4, "Caption digest"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x37

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x426

    const-string v4, "Print scale"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x38

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x428

    const-string v4, "Pixel Aspect Ratio"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x39

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x429

    const-string v4, "Layer Comps"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x42a

    const-string v4, "Alternate Duotone Colors"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x42b

    const-string v4, "Alternate Spot Colors"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x42d

    const-string v4, "Layer Selection ID(s)"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x42e

    const-string v4, "HDR Toning information"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x42f

    const-string v4, "Print info"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x430

    const-string v4, "Layer Group(s) Enabled ID"

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x40

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x431

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x41

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x432

    const-string v3, "Measurement Scale"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x42

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x433

    const-string v3, "Timeline Information"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x43

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x434

    const-string v3, "Sheet Disclosure"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x44

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x435

    const-string v3, "DisplayInfo structure to support floating point colors"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x45

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x436

    const-string v3, "Onion Skins"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x46

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x438

    const-string v3, "Count Information. Information about the count in the document."

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x47

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x43a

    const-string v3, "Print Information. Information about the current print settings in the document. The color management options."

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x48

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x43b

    const-string v3, "Print Style. Information about the current print style in the document. The printing marks, labels, ornaments, etc."

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x49

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x43c

    const-string v3, "Macintosh NSPrintInfo. Variable OS specific info for Macintosh. NSPrintInfo."

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x43d

    const-string v3, "Windows DEVMODE. Variable OS specific info for Windows. DEVMODE."

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x43e

    const-string v3, "Auto Save File Path"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x43f

    const-string v3, "Auto Save Format"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x440

    const-string v3, "Path Selection State. Information about the current path selection state"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x7d0

    const/16 v3, 0xbb6

    const-string v4, "Path Information (saved paths)."

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0xbb7

    const-string v3, "Name of clipping path"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x50

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0xbb8

    const-string v3, "Origin Path Info"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x51

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0xfa0

    const/16 v3, 0x1387

    const-string v4, "Plug-In resource(s). Resources added by a plug-in"

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x52

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x1b58

    const-string v3, "Image Ready variables. XML representation of variables definition"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x53

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x1b59

    const-string v3, "Image Ready data sets"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x54

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x1f40

    const-string v3, "Lightroom workflow, if present the document is in the middle of a Lightroom workflow"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x55

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const/16 v2, 0x2710

    const-string v3, "Print flags information (center crop marks, bleed width value, bleed width scale)"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x56

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;->TYPES:[Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput p1, p0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;->from:I

    .line 138
    iput p2, p0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;->to:I

    .line 139
    iput-object p3, p0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;->description:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput p1, p0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;->from:I

    .line 132
    iput p1, p0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;->to:I

    .line 133
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;->description:Ljava/lang/String;

    return-void
.end method

.method public static getDescription(I)Ljava/lang/String;
    .registers 6

    .line 117
    sget-object v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;->TYPES:[Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 118
    iget v4, v3, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;->from:I

    if-gt v4, p0, :cond_13

    iget v4, v3, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;->to:I

    if-gt p0, v4, :cond_13

    .line 119
    iget-object p0, v3, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;->description:Ljava/lang/String;

    return-object p0

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_16
    const-string p0, "Unknown"

    return-object p0
.end method
