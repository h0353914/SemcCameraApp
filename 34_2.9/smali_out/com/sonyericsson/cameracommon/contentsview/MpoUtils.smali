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
    new-array v1, v0, [B

    .line 173
    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result p0

    const/4 v2, 0x0

    if-eq v0, p0, :cond_b

    return v2

    .line 176
    :cond_b
    aget-byte p0, v1, v2

    const/16 v0, 0x4d

    if-ne p0, v0, :cond_25

    const/4 p0, 0x1

    aget-byte v0, v1, p0

    const/16 v3, 0x50

    if-ne v0, v3, :cond_25

    const/4 v0, 0x2

    aget-byte v0, v1, v0

    const/16 v3, 0x46

    if-ne v0, v3, :cond_25

    const/4 v0, 0x3

    aget-byte v0, v1, v0

    if-nez v0, :cond_25

    move v2, p0

    :cond_25
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
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    :try_start_3
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, p0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_a} :catch_130
    .catchall {:try_start_3 .. :try_end_a} :catchall_12e

    const/4 p0, 0x2

    .line 43
    :try_start_b
    new-array v2, p0, [B

    .line 45
    :cond_d
    :goto_d
    invoke-virtual {v3, v2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v4

    if-gt p0, v4, :cond_124

    .line 47
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v4, :cond_4b

    new-array v4, v1, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v2, v0

    and-int/lit16 v6, v6, 0xff

    .line 48
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v2, v1

    and-int/lit16 v6, v6, 0xff

    .line 49
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 47
    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 51
    :cond_4b
    aget-byte v4, v2, v0

    aget-byte v5, v2, v1

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->isSOI(BB)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 52
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v4, :cond_d

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "This segments is SOI."

    aput-object v5, v4, v0

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_d

    .line 54
    :cond_63
    aget-byte v4, v2, v0

    aget-byte v5, v2, v1

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->isEOI(BB)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 55
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v4, :cond_d

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "This segments is EOI."

    aput-object v5, v4, v0

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_d

    .line 57
    :cond_7b
    aget-byte v4, v2, v0

    aget-byte v5, v2, v1

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->isAPP(BB)Z

    move-result v4

    if-eqz v4, :cond_117

    .line 58
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v4, :cond_a4

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
    :cond_a4
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

    if-eqz v6, :cond_112

    .line 71
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->checkFormatIdentifier(Ljava/io/RandomAccessFile;)Z

    move-result v6

    if-eqz v6, :cond_112

    .line 72
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v6, :cond_cb

    new-array v6, v1, [Ljava/lang/String;

    const-string v7, "This section has MPF."

    aput-object v7, v6, v0

    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 75
    :cond_cb
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readShort()S

    const/4 v6, 0x6

    .line 76
    invoke-static {v3, v6}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->skip(Ljava/io/RandomAccessFile;I)V

    .line 78
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v6

    move v7, v0

    :goto_d7
    if-ge v7, v6, :cond_112

    .line 80
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->checkMPEntryTag(Ljava/io/RandomAccessFile;)Z

    move-result v8

    if-eqz v8, :cond_fd

    .line 81
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_ec

    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "This tag is MP entry."

    aput-object v4, v2, v0

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 84
    :cond_ec
    invoke-static {v3, p0}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->skip(Ljava/io/RandomAccessFile;I)V

    .line 86
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p0

    div-int/lit8 p0, p0, 0x10

    .line 87
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->typeFromEntries(I)I

    move-result p0
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_f9} :catch_12b
    .catchall {:try_start_b .. :try_end_f9} :catchall_128

    .line 115
    :try_start_f9
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_fc} :catch_fc

    :catch_fc
    return p0

    .line 90
    :cond_fd
    :try_start_fd
    sget-boolean v8, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v8, :cond_10a

    new-array v8, v1, [Ljava/lang/String;

    const-string v9, "This tag is not MP entry."

    aput-object v9, v8, v0

    invoke-static {v8}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_10a
    const/16 v8, 0xa

    .line 93
    invoke-static {v3, v8}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->skip(Ljava/io/RandomAccessFile;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_d7

    .line 99
    :cond_112
    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_d

    .line 102
    :cond_117
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_124

    new-array p0, v1, [Ljava/lang/String;

    const-string v2, "Found unknown marker."

    aput-object v2, p0, v0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_124
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_124} :catch_12b
    .catchall {:try_start_fd .. :try_end_124} :catchall_128

    .line 115
    :cond_124
    :try_start_124
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_127
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_127} :catch_154

    goto :goto_154

    :catchall_128
    move-exception p0

    move-object v2, v3

    goto :goto_162

    :catch_12b
    move-exception p0

    move-object v2, v3

    goto :goto_131

    :catchall_12e
    move-exception p0

    goto :goto_162

    :catch_130
    move-exception p0

    .line 109
    :goto_131
    :try_start_131
    new-array v1, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to analize a mpo file by IO Exception. message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 110
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v0

    .line 109
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_14f
    .catchall {:try_start_131 .. :try_end_14f} :catchall_12e

    if-eqz v2, :cond_154

    .line 115
    :try_start_151
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_154
    .catch Ljava/io/IOException; {:try_start_151 .. :try_end_154} :catch_154

    .line 121
    :catch_154
    :cond_154
    :goto_154
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_161

    const-string p0, "This mpo is unknown image."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_161
    return v0

    :goto_162
    if-eqz v2, :cond_167

    .line 115
    :try_start_164
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_167
    .catch Ljava/io/IOException; {:try_start_164 .. :try_end_167} :catch_167

    .line 119
    :catch_167
    :cond_167
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
    .registers 4

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1f

    .line 155
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "This mpo is stereo image. entries:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1d
    const/4 p0, 0x1

    return p0

    :cond_1f
    const/16 v1, 0xf

    if-ne p0, v1, :cond_3e

    .line 160
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_3d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This mpo is multi angle image. entries:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3d
    return v0

    .line 165
    :cond_3e
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_58

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "This mpo is unknown image. entries:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_58
    const/4 p0, 0x0

    return p0
.end method
