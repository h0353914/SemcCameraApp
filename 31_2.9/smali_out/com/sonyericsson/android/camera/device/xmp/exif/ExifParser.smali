.class Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ExifTagEvent;,
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$IfdEvent;,
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ImageEvent;
    }
.end annotation


# static fields
.field protected static final BIG_ENDIAN_TAG:S = 0x4d4ds

.field protected static final DEFAULT_IFD0_OFFSET:I = 0x8

.field public static final EVENT_COMPRESSED_IMAGE:I = 0x3

.field public static final EVENT_END:I = 0x5

.field public static final EVENT_NEW_TAG:I = 0x1

.field public static final EVENT_START_OF_IFD:I = 0x0

.field public static final EVENT_UNCOMPRESSED_STRIP:I = 0x4

.field public static final EVENT_VALUE_OF_REGISTERED_TAG:I = 0x2

.field protected static final EXIF_HEADER:I = 0x45786966

.field protected static final EXIF_HEADER_TAIL:S = 0x0s

.field protected static final LITTLE_ENDIAN_TAG:S = 0x4949s

.field private static final LOGV:Z = false

.field protected static final OFFSET_SIZE:I = 0x2

.field public static final OPTION_IFD_0:I = 0x1

.field public static final OPTION_IFD_1:I = 0x2

.field public static final OPTION_IFD_EXIF:I = 0x4

.field public static final OPTION_IFD_GPS:I = 0x8

.field public static final OPTION_IFD_INTEROPERABILITY:I = 0x10

.field public static final OPTION_THUMBNAIL:I = 0x20

.field private static final TAG:Ljava/lang/String; = "ExifParser"

.field private static final TAG_EXIF_IFD:S

.field private static final TAG_GPS_IFD:S

.field private static final TAG_INTEROPERABILITY_IFD:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

.field protected static final TAG_SIZE:I = 0xc

.field private static final TAG_STRIP_BYTE_COUNTS:S

.field private static final TAG_STRIP_OFFSETS:S

.field protected static final TIFF_HEADER_TAIL:S = 0x2as

.field private static final US_ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private mApp1End:I

.field private mContainExifData:Z

.field private final mCorrespondingEvent:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDataAboveIfd0:[B

.field private mIfd0Position:I

.field private mIfdStartOffset:I

.field private mIfdType:I

.field private mImageEvent:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ImageEvent;

.field private final mInterface:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;

.field private mJpegSizeTag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

.field private mNeedToParseOffsetsInCurrentIfd:Z

.field private mNumOfTagInIfd:I

.field private mOffsetToApp1EndFromSOF:I

.field private final mOptions:I

.field private mStripCount:I

.field private mStripSizeTag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

.field private mTag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

.field private mTiffStartPosition:I

.field private final mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "US-ASCII"

    .line 142
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    .line 165
    sget v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_EXIF_IFD:I

    .line 166
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->TAG_EXIF_IFD:S

    .line 167
    sget v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->TAG_GPS_IFD:S

    .line 168
    sget v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 169
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->TAG_INTEROPERABILITY_IFD:S

    .line 170
    sget v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 171
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    .line 172
    sget v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 173
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    .line 174
    sget v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    .line 175
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->TAG_STRIP_OFFSETS:S

    .line 176
    sget v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 177
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->TAG_STRIP_BYTE_COUNTS:S

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;ILcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 148
    iput v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mIfdStartOffset:I

    .line 149
    iput v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mNumOfTagInIfd:I

    .line 157
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mContainExifData:Z

    .line 159
    iput v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mOffsetToApp1EndFromSOF:I

    .line 179
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    if-eqz p1, :cond_78

    .line 209
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mInterface:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;

    .line 210
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->seekTiffData(Ljava/io/InputStream;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mContainExifData:Z

    .line 211
    new-instance p3, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-direct {p3, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    .line 212
    iput p2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mOptions:I

    .line 213
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mContainExifData:Z

    if-nez p1, :cond_2b

    return-void

    .line 217
    :cond_2b
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->parseTiffHeader()V

    .line 218
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide p1

    const-wide/32 v1, 0x7fffffff

    cmp-long p3, p1, v1

    if-gtz p3, :cond_61

    long-to-int p3, p1

    .line 222
    iput p3, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mIfd0Position:I

    .line 223
    iput v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mIfdType:I

    .line 224
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-nez v1, :cond_4c

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 225
    :cond_4c
    invoke-direct {p0, v0, p1, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->registerIfd(IJ)V

    const-wide/16 v0, 0x8

    cmp-long p1, p1, v0

    if-eqz p1, :cond_60

    add-int/lit8 p3, p3, -0x8

    .line 227
    new-array p1, p3, [B

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mDataAboveIfd0:[B

    .line 228
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mDataAboveIfd0:[B

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->read([B)I

    :cond_60
    return-void

    .line 220
    :cond_61
    new-instance p3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 204
    :cond_78
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Null argument inputStream to ExifParser"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkAllowed(II)Z
    .registers 4

    .line 638
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mInterface:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    if-nez p2, :cond_e

    const/4 p1, 0x0

    return p1

    .line 642
    :cond_e
    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->isIfdAllowed(II)Z

    move-result p1

    return p1
.end method

.method private checkOffsetOrImageTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)V
    .registers 7

    .line 587
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getComponentCount()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 590
    :cond_7
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getTagId()S

    move-result v0

    .line 591
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getIfd()I

    move-result v1

    .line 592
    sget-short v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->TAG_EXIF_IFD:S

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v0, v2, :cond_33

    sget v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_33

    const/4 v0, 0x2

    .line 593
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 594
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-eqz v1, :cond_fd

    .line 595
    :cond_2a
    invoke-virtual {p1, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getValueAt(I)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->registerIfd(IJ)V

    goto/16 :goto_fd

    .line 597
    :cond_33
    sget-short v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->TAG_GPS_IFD:S

    if-ne v0, v2, :cond_4f

    sget v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_4f

    const/4 v0, 0x4

    .line 598
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-eqz v1, :cond_fd

    .line 599
    invoke-virtual {p1, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getValueAt(I)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->registerIfd(IJ)V

    goto/16 :goto_fd

    .line 601
    :cond_4f
    sget-short v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->TAG_INTEROPERABILITY_IFD:S

    if-ne v0, v2, :cond_6a

    sget v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 602
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 603
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 604
    invoke-virtual {p1, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v3, v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->registerIfd(IJ)V

    goto/16 :goto_fd

    .line 606
    :cond_6a
    sget-short v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    if-ne v0, v2, :cond_85

    sget v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 607
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 608
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 609
    invoke-virtual {p1, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->registerCompressedImage(J)V

    goto/16 :goto_fd

    .line 611
    :cond_85
    sget-short v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    if-ne v0, v2, :cond_9a

    sget v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 612
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 613
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 614
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mJpegSizeTag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    goto :goto_fd

    .line 616
    :cond_9a
    sget-short v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->TAG_STRIP_OFFSETS:S

    if-ne v0, v2, :cond_e3

    sget v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 617
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 618
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 619
    :goto_b2
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getComponentCount()I

    move-result v0

    if-ge v4, v0, :cond_fd

    .line 620
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getDataType()S

    move-result v0

    if-ne v0, v3, :cond_c6

    .line 621
    invoke-virtual {p1, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v4, v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->registerUncompressedStrip(IJ)V

    goto :goto_cd

    .line 623
    :cond_c6
    invoke-virtual {p1, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v4, v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->registerUncompressedStrip(IJ)V

    :goto_cd
    add-int/lit8 v4, v4, 0x1

    goto :goto_b2

    .line 627
    :cond_d0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ExifTagEvent;

    invoke-direct {v2, p1, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ExifTagEvent;-><init>(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_fd

    .line 630
    :cond_e3
    sget-short v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->TAG_STRIP_BYTE_COUNTS:S

    if-ne v0, v2, :cond_fd

    sget v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 631
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->checkAllowed(II)Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 632
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_fd

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 633
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mStripSizeTag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    :cond_fd
    :goto_fd
    return-void
.end method

.method private isIfdRequested(I)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_32

    return v1

    .line 190
    :pswitch_6
    iget p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mOptions:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_d

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    return v0

    .line 192
    :pswitch_f
    iget p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mOptions:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_16

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    return v0

    .line 188
    :pswitch_18
    iget p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mOptions:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1f

    goto :goto_20

    :cond_1f
    move v0, v1

    :goto_20
    return v0

    .line 186
    :pswitch_21
    iget p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mOptions:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_28

    goto :goto_29

    :cond_28
    move v0, v1

    :goto_29
    return v0

    .line 184
    :pswitch_2a
    iget p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mOptions:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_30

    goto :goto_31

    :cond_30
    move v0, v1

    :goto_31
    return v0

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_21
        :pswitch_18
        :pswitch_f
        :pswitch_6
    .end packed-switch
.end method

.method private isThumbnailRequested()Z
    .registers 2

    .line 198
    iget v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mOptions:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private needToParseOffsetsInCurrentIfd()Z
    .registers 5

    .line 392
    iget v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mIfdType:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_30

    return v2

    .line 401
    :pswitch_8
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    return v0

    .line 398
    :pswitch_d
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    return v0

    :pswitch_12
    const/4 v0, 0x2

    .line 394
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_2d

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 395
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 396
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_2d
    move v2, v3

    :cond_2e
    return v2

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_12
        :pswitch_d
        :pswitch_8
    .end packed-switch
.end method

.method protected static parse(Ljava/io/InputStream;ILcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 241
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;-><init>(Ljava/io/InputStream;ILcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;)V

    return-object v0
.end method

.method protected static parse(Ljava/io/InputStream;Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 254
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;

    const/16 v1, 0x3f

    invoke-direct {v0, p0, v1, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;-><init>(Ljava/io/InputStream;ILcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;)V

    return-object v0
.end method

.method private parseTiffHeader()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 736
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->readShort()S

    move-result v0

    const/16 v1, 0x4949

    if-ne v1, v0, :cond_12

    .line 738
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    goto :goto_1d

    :cond_12
    const/16 v1, 0x4d4d

    if-ne v1, v0, :cond_30

    .line 740
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 745
    :goto_1d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->readShort()S

    move-result v0

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_28

    return-void

    .line 746
    :cond_28
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;

    const-string v1, "Invalid TIFF header"

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 742
    :cond_30
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;

    const-string v1, "Invalid TIFF header"

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readTag()Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->readShort()S

    move-result v2

    .line 535
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->readShort()S

    move-result v0

    .line 536
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v3

    const-wide/32 v7, 0x7fffffff

    cmp-long v1, v3, v7

    if-gtz v1, :cond_b2

    .line 542
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->isValidType(S)Z

    move-result v1

    const/4 v5, 0x1

    const/4 v9, 0x0

    if-nez v1, :cond_4a

    const/4 v1, 0x2

    .line 543
    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "ExifParser"

    aput-object v4, v3, v9

    const-string v4, "Tag %04x: Invalid data type %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->skip(J)J

    const/4 v0, 0x0

    return-object v0

    .line 548
    :cond_4a
    new-instance v10, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    long-to-int v11, v3

    iget v6, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mIfdType:I

    if-eqz v11, :cond_53

    move v12, v5

    goto :goto_54

    :cond_53
    move v12, v9

    :goto_54
    move-object v1, v10

    move v3, v0

    move v4, v11

    move v5, v6

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;-><init>(SSIIZ)V

    .line 550
    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getDataSize()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_92

    .line 552
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v1

    cmp-long v3, v1, v7

    if-gtz v3, :cond_8a

    .line 559
    iget v3, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mIfd0Position:I

    int-to-long v3, v3

    cmp-long v3, v1, v3

    if-gez v3, :cond_85

    const/4 v3, 0x7

    if-ne v0, v3, :cond_85

    .line 560
    new-array v0, v11, [B

    .line 561
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mDataAboveIfd0:[B

    long-to-int v1, v1

    add-int/lit8 v1, v1, -0x8

    invoke-static {v3, v1, v0, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 563
    invoke-virtual {v10, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue([B)Z

    goto :goto_b1

    :cond_85
    long-to-int v0, v1

    .line 565
    invoke-virtual {v10, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setOffset(I)V

    goto :goto_b1

    .line 554
    :cond_8a
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;

    const-string v1, "offset is larger then Integer.MAX_VALUE"

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_92
    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->hasDefinedCount()Z

    move-result v0

    .line 570
    invoke-virtual {v10, v9}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setHasDefinedCount(Z)V

    .line 572
    invoke-virtual {p0, v10}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readFullTagValue(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)V

    .line 573
    invoke-virtual {v10, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setHasDefinedCount(Z)V

    .line 574
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    rsub-int/lit8 v1, v1, 0x4

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->skip(J)J

    .line 576
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {v10, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setOffset(I)V

    :goto_b1
    return-object v10

    .line 538
    :cond_b2
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;

    const-string v1, "Number of component is larger then Integer.MAX_VALUE"

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private registerCompressedImage(J)V
    .registers 5

    .line 525
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ImageEvent;

    const/4 v1, 0x3

    invoke-direct {p2, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ImageEvent;-><init>(I)V

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private registerIfd(IJ)V
    .registers 6

    .line 521
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$IfdEvent;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    invoke-direct {p3, p1, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$IfdEvent;-><init>(IZ)V

    invoke-virtual {v0, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private registerUncompressedStrip(IJ)V
    .registers 6

    .line 529
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ImageEvent;

    const/4 v1, 0x4

    invoke-direct {p3, v1, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ImageEvent;-><init>(II)V

    invoke-virtual {v0, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private seekTiffData(Ljava/io/InputStream;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 752
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 753
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->readShort()S

    move-result p1

    const/16 v1, -0x28

    if-ne p1, v1, :cond_6b

    .line 757
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->readShort()S

    move-result p1

    :goto_11
    const/16 v1, -0x27

    const/4 v2, 0x0

    if-eq p1, v1, :cond_6a

    .line 759
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/JpegHeader;->isSofMarker(S)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 760
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->readUnsignedShort()I

    move-result v1

    const/16 v3, -0x1f

    if-ne p1, v3, :cond_4a

    const/16 p1, 0x8

    if-lt v1, p1, :cond_4a

    .line 767
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->readInt()I

    move-result p1

    .line 768
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->readShort()S

    move-result v3

    add-int/lit8 v1, v1, -0x6

    const v4, 0x45786966

    if-ne p1, v4, :cond_4a

    if-nez v3, :cond_4a

    .line 771
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->getReadByteCount()I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStartPosition:I

    .line 772
    iput v1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mApp1End:I

    .line 773
    iget p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStartPosition:I

    iget v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mApp1End:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mOffsetToApp1EndFromSOF:I

    const/4 p1, 0x1

    return p1

    :cond_4a
    const/4 p1, 0x2

    if-lt v1, p1, :cond_5e

    add-int/lit8 v1, v1, -0x2

    int-to-long v3, v1

    .line 778
    invoke-virtual {v0, v3, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->skip(J)J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-eqz p1, :cond_59

    goto :goto_5e

    .line 782
    :cond_59
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->readShort()S

    move-result p1

    goto :goto_11

    :cond_5e
    :goto_5e
    const-string p1, "ExifParser"

    const-string v0, "Invalid JPEG format."

    .line 779
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return v2

    :cond_6a
    return v2

    .line 754
    :cond_6b
    new-instance p1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;

    const-string v0, "Invalid JPEG format"

    invoke-direct {p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private skipTo(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 497
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->skipTo(J)V

    .line 498
    :goto_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p1, :cond_22

    .line 499
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    goto :goto_6

    :cond_22
    return-void
.end method


# virtual methods
.method protected getByteOrder()Ljava/nio/ByteOrder;
    .registers 2

    .line 912
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method protected getCompressedImageSize()I
    .registers 3

    .line 490
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mJpegSizeTag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 493
    :cond_6
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method protected getCurrentIfd()I
    .registers 2

    .line 452
    iget v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mIfdType:I

    return v0
.end method

.method protected getOffsetToExifEndFromSOF()I
    .registers 2

    .line 788
    iget v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mOffsetToApp1EndFromSOF:I

    return v0
.end method

.method protected getStripCount()I
    .registers 2

    .line 472
    iget v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mStripCount:I

    return v0
.end method

.method protected getStripIndex()I
    .registers 2

    .line 462
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mImageEvent:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ImageEvent;

    iget v0, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ImageEvent;->stripIndex:I

    return v0
.end method

.method protected getStripSize()I
    .registers 3

    .line 480
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mStripSizeTag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 482
    :cond_6
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method protected getTag()Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;
    .registers 2

    .line 432
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    return-object v0
.end method

.method protected getTagCountInCurrentIfd()I
    .registers 2

    .line 439
    iget v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mNumOfTagInIfd:I

    return v0
.end method

.method protected getTiffStartPosition()I
    .registers 2

    .line 792
    iget v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStartPosition:I

    return v0
.end method

.method protected next()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 272
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mContainExifData:Z

    const/4 v1, 0x5

    if-nez v0, :cond_6

    return v1

    .line 275
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v0

    .line 276
    iget v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mIfdStartOffset:I

    const/4 v3, 0x2

    add-int/2addr v2, v3

    iget v4, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v4, v4, 0xc

    add-int/2addr v2, v4

    const/4 v4, 0x1

    if-ge v0, v2, :cond_2f

    .line 278
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readTag()Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    .line 279
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    if-nez v0, :cond_27

    .line 280
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->next()I

    move-result v0

    return v0

    .line 282
    :cond_27
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v1, :cond_2e

    .line 283
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->checkOffsetOrImageTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)V

    :cond_2e
    return v4

    :cond_2f
    const/4 v5, 0x0

    if-ne v0, v2, :cond_b5

    .line 288
    iget v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mIfdType:I

    const-wide/16 v6, 0x0

    if-nez v0, :cond_50

    .line 289
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v8

    .line 290
    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_48

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_b5

    :cond_48
    cmp-long v0, v8, v6

    if-eqz v0, :cond_b5

    .line 292
    invoke-direct {p0, v4, v8, v9}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->registerIfd(IJ)V

    goto :goto_b5

    .line 298
    :cond_50
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    const/4 v2, 0x4

    if-lez v0, :cond_71

    .line 299
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    .line 300
    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v8

    sub-int/2addr v0, v8

    goto :goto_72

    :cond_71
    move v0, v2

    :goto_72
    if-ge v0, v2, :cond_91

    .line 303
    new-array v2, v3, [Ljava/lang/String;

    const-string v6, "ExifParser"

    aput-object v6, v2, v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid size of link to next IFD: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    goto :goto_b5

    .line 305
    :cond_91
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-eqz v0, :cond_b5

    .line 307
    new-array v0, v3, [Ljava/lang/String;

    const-string v2, "ExifParser"

    aput-object v2, v0, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid link to next IFD: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 312
    :cond_b5
    :goto_b5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-eqz v0, :cond_18e

    .line 313
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 314
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 316
    :try_start_c7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->skipTo(I)V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_d4} :catch_157

    .line 322
    instance-of v6, v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$IfdEvent;

    if-eqz v6, :cond_12c

    .line 323
    check-cast v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$IfdEvent;

    iget v6, v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$IfdEvent;->ifd:I

    iput v6, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mIfdType:I

    .line 324
    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->readUnsignedShort()I

    move-result v6

    iput v6, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mNumOfTagInIfd:I

    .line 325
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mIfdStartOffset:I

    .line 327
    iget v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v0, v0, 0xc

    iget v6, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mIfdStartOffset:I

    add-int/2addr v0, v6

    add-int/2addr v0, v3

    iget v6, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mApp1End:I

    if-le v0, v6, :cond_11d

    .line 328
    new-array v0, v3, [Ljava/lang/String;

    const-string v2, "ExifParser"

    aput-object v2, v0, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid size of IFD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mIfdType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return v1

    .line 332
    :cond_11d
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    .line 333
    iget-boolean v0, v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$IfdEvent;->isRequested:Z

    if-eqz v0, :cond_128

    return v5

    .line 336
    :cond_128
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->skipRemainingTagsInCurrentIfd()V

    goto :goto_b5

    .line 338
    :cond_12c
    instance-of v0, v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ImageEvent;

    if-eqz v0, :cond_139

    .line 339
    check-cast v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ImageEvent;

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mImageEvent:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ImageEvent;

    .line 340
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mImageEvent:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ImageEvent;

    iget v0, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ImageEvent;->type:I

    return v0

    .line 342
    :cond_139
    check-cast v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ExifTagEvent;

    .line 343
    iget-object v0, v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ExifTagEvent;->tag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    .line 344
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getDataType()S

    move-result v0

    const/4 v6, 0x7

    if-eq v0, v6, :cond_152

    .line 345
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readFullTagValue(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)V

    .line 346
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->checkOffsetOrImageTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)V

    .line 348
    :cond_152
    iget-boolean v0, v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ExifTagEvent;->isRequested:Z

    if-eqz v0, :cond_b5

    return v3

    .line 318
    :catch_157
    new-array v6, v3, [Ljava/lang/String;

    const-string v7, "ExifParser"

    aput-object v7, v6, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to skip to data at: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", the file may be broken."

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    .line 318
    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    goto/16 :goto_b5

    :cond_18e
    return v1
.end method

.method protected read([B)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 806
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->read([B)I

    move-result p1

    return p1
.end method

.method protected read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 799
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method protected readFullTagValue(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 647
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getDataType()S

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_e

    const/4 v4, 0x7

    if-eq v0, v4, :cond_e

    if-ne v0, v3, :cond_130

    .line 650
    :cond_e
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getComponentCount()I

    move-result v0

    .line 651
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v4

    if-lez v4, :cond_130

    .line 652
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v5

    add-int/2addr v5, v0

    if-ge v4, v5, :cond_130

    .line 654
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 655
    instance-of v4, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ImageEvent;

    if-eqz v4, :cond_89

    .line 657
    new-array v0, v1, [Ljava/lang/String;

    const-string v4, "ExifParser"

    aput-object v4, v0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thumbnail overlaps value for tag: \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 659
    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "ExifParser"

    aput-object v5, v4, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid thumbnail offset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    goto/16 :goto_130

    .line 662
    :cond_89
    instance-of v4, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$IfdEvent;

    if-eqz v4, :cond_ba

    .line 663
    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "ExifParser"

    aput-object v5, v4, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ifd "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$IfdEvent;

    iget v0, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$IfdEvent;->ifd:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " overlaps value for tag: \n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 663
    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    goto :goto_ee

    .line 665
    :cond_ba
    instance-of v4, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ExifTagEvent;

    if-eqz v4, :cond_ee

    .line 666
    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "ExifParser"

    aput-object v5, v4, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tag value for tag: \n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ExifTagEvent;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ExifTagEvent;->tag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    .line 667
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " overlaps value for tag: \n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 666
    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 670
    :cond_ee
    :goto_ee
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    .line 671
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v4

    sub-int/2addr v0, v4

    .line 672
    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "ExifParser"

    aput-object v5, v4, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid size of tag: \n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " setting count to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 674
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->forceSetComponentCount(I)V

    .line 679
    :cond_130
    :goto_130
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getDataType()S

    move-result v0

    packed-switch v0, :pswitch_data_1ea

    :pswitch_137
    goto/16 :goto_1c5

    .line 723
    :pswitch_139
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    .line 724
    array-length v4, v0

    move v5, v2

    :goto_141
    if-ge v5, v4, :cond_14c

    .line 725
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readRational()Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    move-result-object v6

    aput-object v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_141

    .line 727
    :cond_14c
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue([Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;)Z

    goto/16 :goto_1c5

    .line 715
    :pswitch_151
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [I

    .line 716
    array-length v4, v0

    move v5, v2

    :goto_159
    if-ge v5, v4, :cond_164

    .line 717
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readLong()I

    move-result v6

    aput v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_159

    .line 719
    :cond_164
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue([I)Z

    goto :goto_1c5

    .line 699
    :pswitch_168
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    .line 700
    array-length v4, v0

    move v5, v2

    :goto_170
    if-ge v5, v4, :cond_17b

    .line 701
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readUnsignedRational()Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    move-result-object v6

    aput-object v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_170

    .line 703
    :cond_17b
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue([Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;)Z

    goto :goto_1c5

    .line 691
    :pswitch_17f
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [J

    .line 692
    array-length v4, v0

    move v5, v2

    :goto_187
    if-ge v5, v4, :cond_192

    .line 693
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v6

    aput-wide v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_187

    .line 695
    :cond_192
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue([J)Z

    goto :goto_1c5

    .line 707
    :pswitch_196
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [I

    .line 708
    array-length v4, v0

    move v5, v2

    :goto_19e
    if-ge v5, v4, :cond_1a9

    .line 709
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readUnsignedShort()I

    move-result v6

    aput v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_19e

    .line 711
    :cond_1a9
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue([I)Z

    goto :goto_1c5

    .line 688
    :pswitch_1ad
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getComponentCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue(Ljava/lang/String;)Z

    goto :goto_1c5

    .line 682
    :pswitch_1b9
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [B

    .line 683
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->read([B)I

    .line 684
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue([B)Z

    .line 731
    :goto_1c5
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1e9

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "ExifParser"

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    :cond_1e9
    return-void

    :pswitch_data_1ea
    .packed-switch 0x1
        :pswitch_1b9
        :pswitch_1ad
        :pswitch_196
        :pswitch_17f
        :pswitch_168
        :pswitch_137
        :pswitch_1b9
        :pswitch_137
        :pswitch_151
        :pswitch_139
    .end packed-switch
.end method

.method protected readLong()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 861
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method protected readRational()Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 868
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readLong()I

    move-result v0

    .line 869
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readLong()I

    move-result v1

    .line 870
    new-instance v2, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    int-to-long v3, v0

    int-to-long v0, v1

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;-><init>(JJ)V

    return-object v2
.end method

.method protected readString(I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 815
    sget-object v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p1, :cond_9

    .line 825
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    const-string p1, ""

    return-object p1
.end method

.method protected readUnsignedLong()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 844
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readLong()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method protected readUnsignedRational()Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 852
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v0

    .line 853
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v2

    .line 854
    new-instance v4, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;-><init>(JJ)V

    return-object v4
.end method

.method protected readUnsignedShort()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 836
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method protected registerForTagValue(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)V
    .registers 6

    .line 513
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getOffset()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    if-lt v0, v1, :cond_1f

    .line 514
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ExifTagEvent;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser$ExifTagEvent;-><init>(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-void
.end method

.method protected skipRemainingTagsInCurrentIfd()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 364
    iget v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mIfdStartOffset:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    .line 365
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTiffStream:Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    if-le v1, v0, :cond_12

    return-void

    .line 369
    :cond_12
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v2, :cond_29

    :goto_16
    if-ge v1, v0, :cond_2c

    .line 371
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readTag()Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    add-int/lit8 v1, v1, 0xc

    .line 373
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mTag:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    if-nez v2, :cond_25

    goto :goto_16

    .line 376
    :cond_25
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->checkOffsetOrImageTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)V

    goto :goto_16

    .line 379
    :cond_29
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->skipTo(I)V

    .line 381
    :cond_2c
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v0

    .line 383
    iget v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->mIfdType:I

    if-nez v2, :cond_4a

    const/4 v2, 0x1

    .line 384
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isIfdRequested(I)Z

    move-result v3

    if-nez v3, :cond_41

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->isThumbnailRequested()Z

    move-result v3

    if-eqz v3, :cond_4a

    :cond_41
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_4a

    .line 386
    invoke-direct {p0, v2, v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->registerIfd(IJ)V

    :cond_4a
    return-void
.end method
