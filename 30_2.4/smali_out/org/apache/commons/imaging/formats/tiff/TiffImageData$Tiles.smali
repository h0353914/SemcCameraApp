.class public Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;
.super Lorg/apache/commons/imaging/formats/tiff/TiffImageData;
.source "TiffImageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/tiff/TiffImageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tiles"
.end annotation


# instance fields
.field private final tileLength:I

.field private final tileWidth:I

.field public final tiles:[Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;


# direct methods
.method public constructor <init>([Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;II)V
    .registers 4

    .line 38
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;->tiles:[Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;

    .line 40
    iput p2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;->tileWidth:I

    .line 41
    iput p3, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;->tileLength:I

    return-void
.end method


# virtual methods
.method public getDataReader(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;I[IIIIIILjava/nio/ByteOrder;)Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    move-object/from16 v14, p0

    .line 60
    new-instance v15, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;

    iget v3, v14, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;->tileWidth:I

    iget v4, v14, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;->tileLength:I

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p0

    invoke-direct/range {v0 .. v13}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;-><init>(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;III[IIIIIILjava/nio/ByteOrder;Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;)V

    return-object v15
.end method

.method public getImageData()[Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;
    .registers 2

    .line 46
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;->tiles:[Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;

    return-object v0
.end method

.method public getTileHeight()I
    .registers 2

    .line 83
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;->tileLength:I

    return v0
.end method

.method public getTileWidth()I
    .registers 2

    .line 73
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;->tileWidth:I

    return v0
.end method

.method public stripsNotTiles()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
