.class public Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;
.super Ljava/lang/Object;
.source "MpoInterface.java"


# static fields
.field private static final NULL_ARGUMENT_STRING:Ljava/lang/String; = "Argument is null"

.field private static final TAG:Ljava/lang/String; = "MpoInterface"

.field public static final TAG_AXIS_DISTANCE_X:I

.field public static final TAG_AXIS_DISTANCE_Y:I

.field public static final TAG_AXIS_DISTANCE_Z:I

.field public static final TAG_BASELINE_LEN:I

.field public static final TAG_BASE_VIEWPOINT_NUM:I

.field public static final TAG_CONVERGE_ANGLE:I

.field public static final TAG_DIVERGE_ANGLE:I

.field public static final TAG_IMAGE_NUMBER:I

.field public static final TAG_IMAGE_UNIQUE_ID_LIST:I

.field public static final TAG_MP_ENTRY:I

.field public static final TAG_MP_FORMAT_VERSION:I

.field public static final TAG_NUM_CAPTURED_FRAMES:I

.field public static final TAG_NUM_IMAGES:I

.field public static final TAG_PAN_ORIENTATION:I

.field public static final TAG_PAN_OVERLAP_H:I

.field public static final TAG_PAN_OVERLAP_V:I

.field public static final TAG_PITCH_ANGLE:I

.field public static final TAG_ROLL_ANGLE:I

.field public static final TAG_YAW_ANGLE:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x3

    const/16 v1, -0x5000

    .line 40
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_MP_FORMAT_VERSION:I

    const/4 v0, 0x1

    const/16 v1, -0x4fff

    .line 42
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_NUM_IMAGES:I

    const/16 v1, -0x4ffe

    .line 44
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_MP_ENTRY:I

    const/16 v1, -0x4ffd

    .line 46
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_IMAGE_UNIQUE_ID_LIST:I

    const/16 v1, -0x4ffc

    .line 48
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_NUM_CAPTURED_FRAMES:I

    const/4 v0, 0x2

    const/16 v1, -0x4eff

    .line 52
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_IMAGE_NUMBER:I

    const/16 v1, -0x4dff

    .line 54
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_PAN_ORIENTATION:I

    const/16 v1, -0x4dfe

    .line 56
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_PAN_OVERLAP_H:I

    const/16 v1, -0x4dfd

    .line 58
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_PAN_OVERLAP_V:I

    const/16 v1, -0x4dfc

    .line 60
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_BASE_VIEWPOINT_NUM:I

    const/16 v1, -0x4dfb

    .line 62
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_CONVERGE_ANGLE:I

    const/16 v1, -0x4dfa

    .line 64
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_BASELINE_LEN:I

    const/16 v1, -0x4df9

    .line 66
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_DIVERGE_ANGLE:I

    const/16 v1, -0x4df8

    .line 68
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_AXIS_DISTANCE_X:I

    const/16 v1, -0x4df7

    .line 70
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_AXIS_DISTANCE_Y:I

    const/16 v1, -0x4df6

    .line 72
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_AXIS_DISTANCE_Z:I

    const/16 v1, -0x4df5

    .line 74
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_YAW_ANGLE:I

    const/16 v1, -0x4df4

    .line 76
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_PITCH_ANGLE:I

    const/16 v1, -0x4df3

    .line 78
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_ROLL_ANGLE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .registers 1

    if-nez p0, :cond_3

    return-void

    .line 105
    :cond_3
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_6

    :catchall_6
    return-void
.end method

.method public static generateXmpFromMpo(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 183
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 185
    :try_start_13
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v0, 0x0

    move v4, v0

    move v5, v4

    .line 186
    :goto_1b
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_72

    const/4 v8, 0x2

    const/16 v9, -0x27

    const/4 v10, 0x1

    if-eqz v4, :cond_40

    .line 187
    aget-byte v4, v1, v0

    if-ne v4, v9, :cond_40

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v8, :cond_40

    .line 189
    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-ne v6, v10, :cond_36

    goto :goto_72

    .line 194
    :cond_36
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->openNewStream(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v0

    move v4, v10

    goto :goto_41

    :cond_40
    move v4, v0

    :goto_41
    move v11, v0

    :goto_42
    add-int/lit8 v12, v6, -0x1

    if-ge v11, v12, :cond_64

    .line 198
    invoke-static {v1, v11}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->getShort([BI)S

    move-result v12

    if-eq v12, v9, :cond_4d

    goto :goto_61

    :cond_4d
    add-int/lit8 v5, v5, 0x1

    if-ne v5, v8, :cond_61

    add-int/lit8 v5, v11, 0x2

    sub-int v12, v5, v4

    .line 204
    invoke-virtual {v2, v1, v4, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 205
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->openNewStream(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v5

    move v5, v0

    :cond_61
    :goto_61
    add-int/lit8 v11, v11, 0x1

    goto :goto_42

    .line 209
    :cond_64
    aget-byte v8, v1, v12

    if-ne v8, v7, :cond_69

    goto :goto_6a

    :cond_69
    move v10, v0

    :goto_6a
    if-ge v4, v6, :cond_70

    sub-int/2addr v6, v4

    .line 211
    invoke-virtual {v2, v1, v4, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_70
    move v4, v10

    goto :goto_1b

    .line 215
    :cond_72
    :goto_72
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 216
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_78} :catch_79

    goto :goto_7d

    :catch_79
    move-exception v0

    .line 218
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_7d
    return-object p0
.end method

.method public static generateXmpFromMpo([B)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 236
    :goto_c
    :try_start_c
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_3c

    .line 237
    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->getShort([BI)S

    move-result v4

    const/16 v5, -0x27

    if-eq v4, v5, :cond_1a

    goto :goto_39

    .line 240
    :cond_1a
    array-length v4, p0

    add-int/lit8 v4, v4, -0x3

    if-ge v2, v4, :cond_2a

    add-int/lit8 v4, v2, 0x2

    .line 241
    invoke-static {p0, v4}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->getShort([BI)S

    move-result v4

    const/16 v5, -0x28

    if-eq v4, v5, :cond_2a

    goto :goto_39

    :cond_2a
    add-int/lit8 v4, v2, 0x2

    sub-int v5, v4, v3

    .line 246
    invoke-virtual {v1, p0, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 247
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->openNewStream(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v4

    :goto_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 249
    :cond_3c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_3f} :catch_40

    goto :goto_44

    :catch_40
    move-exception p0

    .line 251
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_44
    return-object v0
.end method

.method private static getFileWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 3

    if-eqz p0, :cond_19

    const/4 v0, 0x0

    .line 148
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_8} :catch_a

    move-object v0, v1

    goto :goto_18

    .line 150
    :catch_a
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->closeSilently(Ljava/io/Closeable;)V

    const-string p0, "MpoInterface"

    const-string v1, "File not found"

    .line 151
    filled-new-array {p0, v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    :goto_18
    return-object v0

    .line 144
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getMpoWriterStream(Ljava/io/OutputStream;)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;
    .registers 2

    if-eqz p0, :cond_8

    .line 130
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 128
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getShort([BI)S
    .registers 3

    .line 157
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method private static openNewStream(Ljava/io/ByteArrayOutputStream;)[B
    .registers 2

    .line 161
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 162
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-object v0
.end method

.method public static writeMpo(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;Ljava/io/OutputStream;)I
    .registers 2

    if-eqz p0, :cond_26

    if-eqz p1, :cond_26

    .line 85
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->getMpoWriterStream(Ljava/io/OutputStream;)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;

    move-result-object p1

    .line 86
    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->setMpoData(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;)V

    .line 90
    :try_start_b
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->writeMpoFile()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_16

    .line 98
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 99
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoOutputStream;->size()I

    move-result p0

    return p0

    .line 92
    :catch_16
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->closeSilently(Ljava/io/Closeable;)V

    const-string p0, "MpoInterface"

    const-string p1, "IO Exception when writing mpo image"

    .line 93
    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 83
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static writeMpo(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;Ljava/lang/String;)I
    .registers 2

    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    .line 115
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->getFileWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->writeMpo(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;Ljava/io/OutputStream;)I

    move-result p0

    return p0

    .line 113
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
