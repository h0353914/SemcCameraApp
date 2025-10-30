.class public Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$TiffMetadataItem;
.super Lorg/apache/commons/imaging/common/GenericImageMetadata$GenericImageMetadataItem;
.source "TiffImageMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TiffMetadataItem"
.end annotation


# instance fields
.field private final entry:Lorg/apache/commons/imaging/formats/tiff/TiffField;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/tiff/TiffField;)V
    .registers 4

    .line 187
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValueDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/imaging/common/GenericImageMetadata$GenericImageMetadataItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$TiffMetadataItem;->entry:Lorg/apache/commons/imaging/formats/tiff/TiffField;

    return-void
.end method


# virtual methods
.method public getTiffField()Lorg/apache/commons/imaging/formats/tiff/TiffField;
    .registers 2

    .line 192
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$TiffMetadataItem;->entry:Lorg/apache/commons/imaging/formats/tiff/TiffField;

    return-object v0
.end method
