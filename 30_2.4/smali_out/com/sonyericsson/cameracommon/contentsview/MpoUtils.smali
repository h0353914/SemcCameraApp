.class public Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;
.super Ljava/lang/Object;
.source "MpoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/contentsview/MpoUtils$JpegMaker;
    }
.end annotation


# static fields
.field public static final MULTIANGLE:I = 0x2

.field public static final STEREO:I = 0x1

.field public static final TAG:Ljava/lang/String; = "MpoUtils"

.field public static final UNKNOWN:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkFormatIdentifier(Ljava/io/RandomAccessFile;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 172
    new-array v0, v0, [B

    .line 173
    array-length v1, v0

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result p0

    const/4 v2, 0x0

    if-eq v1, p0, :cond_c

    return v2

    .line 176
    :cond_c
    aget-byte p0, v0, v2

    const/16 v1, 0x4d

    const/4 v3, 0x1

    if-ne p0, v1, :cond_26

    aget-byte p0, v0, v3

    const/16 v1, 0x50

    if-ne p0, v1, :cond_26

    const/4 p0, 0x2

    aget-byte p0, v0, p0

    const/16 v1, 0x46

    if-ne p0, v1, :cond_26

    const/4 p0, 0x3

    aget-byte p0, v0, p0

    if-nez p0, :cond_26

    move v2, v3

    :cond_26
    return v2
.end method

.method static checkMPEntryTag(Ljava/io/RandomAccessFile;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readShort()S

    move-result p0

    const v0, 0xffff

    and-int/2addr p0, v0

    const v0, 0xb002

    if-ne v0, p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public static getType(Ljava/lang/String;)I
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    :try_start_3
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, p0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_a} :catch_12c
    .catchall {:try_start_3 .. :try_end_a} :catchall_129

    const/4 p0, 0x2

    .line 43
    :try_start_b
    new-array v2, p0, [B

    .line 45
    :cond_d
    :goto_d
    invoke-virtual {v3, v2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v4

    if-gt p0, v4, :cond_120

    .line 47
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v4, :cond_47

    new-array v4, v1, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v6, v2, v0

    and-int/lit16 v6, v6, 0xff

    .line 48
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v6, v2, v1

    and-int/lit16 v6, v6, 0xff

    .line 49
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 47
    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 51
    :cond_47
    aget-byte v4, v2, v0

    aget-byte v5, v2, v1

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->isSOI(BB)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 52
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v4, :cond_d

    const-string v4, "This segments is SOI."

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_d

    .line 54
    :cond_5f
    aget-byte v4, v2, v0

    aget-byte v5, v2, v1

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->isEOI(BB)Z

    move-result v4

    if-eqz v4, :cond_77

    .line 55
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v4, :cond_d

    const-string v4, "This segments is EOI."

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_d

    .line 57
    :cond_77
    aget-byte v4, v2, v0

    aget-byte v5, v2, v1

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->isAPP(BB)Z

    move-result v4

    if-eqz v4, :cond_113

    .line 58
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v4, :cond_a0

    new-array v4, v1, [Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v6, "This segments is APP%d."

    new-array v7, v1, [Ljava/lang/Object;

    aget-byte v8, v2, v1

    add-int/lit8 v8, v8, 0x20

    .line 59
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    .line 58
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 61
    :cond_a0
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    .line 62
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 70
    aget-byte v6, v2, v0

    aget-byte v7, v2, v1

    invoke-static {v6, v7}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->isAPP2(BB)Z

    move-result v6

    if-eqz v6, :cond_10e

    .line 71
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->checkFormatIdentifier(Ljava/io/RandomAccessFile;)Z

    move-result v6

    if-eqz v6, :cond_10e

    .line 72
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v6, :cond_c7

    const-string v6, "This section has MPF."

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 75
    :cond_c7
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readShort()S

    const/4 v6, 0x6

    .line 76
    invoke-static {v3, v6}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->skip(Ljava/io/RandomAccessFile;I)V

    .line 78
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v6

    move v7, v0

    :goto_d3
    if-ge v7, v6, :cond_10e

    .line 80
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->checkMPEntryTag(Ljava/io/RandomAccessFile;)Z

    move-result v8

    if-eqz v8, :cond_f9

    .line 81
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_e8

    const-string v2, "This tag is MP entry."

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 84
    :cond_e8
    invoke-static {v3, p0}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->skip(Ljava/io/RandomAccessFile;I)V

    .line 86
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p0

    div-int/lit8 p0, p0, 0x10

    .line 87
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->typeFromEntries(I)I

    move-result p0
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_f5} :catch_126
    .catchall {:try_start_b .. :try_end_f5} :catchall_124

    .line 115
    :try_start_f5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_f8} :catch_f8

    :catch_f8
    return p0

    .line 90
    :cond_f9
    :try_start_f9
    sget-boolean v8, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v8, :cond_106

    const-string v8, "This tag is not MP entry."

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_106
    const/16 v8, 0xa

    .line 93
    invoke-static {v3, v8}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->skip(Ljava/io/RandomAccessFile;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_d3

    .line 99
    :cond_10e
    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_d

    .line 102
    :cond_113
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_120

    const-string p0, "Found unknown marker."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_120} :catch_126
    .catchall {:try_start_f9 .. :try_end_120} :catchall_124

    .line 115
    :cond_120
    :try_start_120
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_123
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_123} :catch_14e

    goto :goto_14e

    :catchall_124
    move-exception p0

    goto :goto_15c

    :catch_126
    move-exception p0

    move-object v2, v3

    goto :goto_12d

    :catchall_129
    move-exception p0

    move-object v3, v2

    goto :goto_15c

    :catch_12c
    move-exception p0

    .line 109
    :goto_12d
    :try_start_12d
    new-array v1, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to analize a mpo file by IO Exception. message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v0

    .line 109
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_149
    .catchall {:try_start_12d .. :try_end_149} :catchall_129

    if-eqz v2, :cond_14e

    .line 115
    :try_start_14b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14e
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_14e} :catch_14e

    .line 121
    :catch_14e
    :cond_14e
    :goto_14e
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_15b

    const-string p0, "This mpo is unknown image."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_15b
    return v0

    :goto_15c
    if-eqz v3, :cond_161

    .line 115
    :try_start_15e
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_161
    .catch Ljava/io/IOException; {:try_start_15e .. :try_end_161} :catch_161

    .line 119
    :catch_161
    :cond_161
    throw p0
.end method

.method static isAPP(BB)Z
    .registers 3

    const/4 v0, -0x1

    if-ne p0, v0, :cond_d

    const/16 p0, -0x20

    if-lt p1, p0, :cond_d

    const/16 p0, -0x11

    if-gt p1, p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method static isAPP2(BB)Z
    .registers 3

    const/4 v0, -0x1

    if-ne p0, v0, :cond_9

    const/16 p0, -0x1e

    if-ne p1, p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method static isEOI(BB)Z
    .registers 3

    const/4 v0, -0x1

    if-ne p0, v0, :cond_9

    const/16 p0, -0x27

    if-ne p1, p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method static isSOI(BB)Z
    .registers 3

    const/4 v0, -0x1

    if-ne p0, v0, :cond_9

    const/16 p0, -0x28

    if-ne p1, p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method static skip(Ljava/io/RandomAccessFile;I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result p0

    if-ne p1, p0, :cond_7

    return-void

    .line 186
    :cond_7
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method static typeFromEntries(I)I
    .registers 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v0, :cond_22

    .line 155
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_21

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This mpo is stereo image. entries:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_21
    return v2

    :cond_22
    const/16 v3, 0xf

    if-ne p0, v3, :cond_43

    .line 160
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_42

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This mpo is multi angle image. entries:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_42
    return v0

    .line 165
    :cond_43
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_5f

    new-array v0, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This mpo is unknown image. entries:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5f
    return v1
.end method
