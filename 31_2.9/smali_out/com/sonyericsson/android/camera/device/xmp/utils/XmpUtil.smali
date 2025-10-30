.class public Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;
.super Ljava/lang/Object;
.source "XmpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;
    }
.end annotation


# static fields
.field private static final EXTENDED_XMP_HEADER_SIGNATURE:Ljava/lang/String; = "http://ns.adobe.com/xmp/extension/\u0000"

.field private static final EXTEND_XMP_HEADER_SIZE:I = 0x4b

.field private static final GOOGLE_PANO_NAMESPACE:Ljava/lang/String; = "http://ns.google.com/photos/1.0/panorama/"

.field private static final MAX_EXTENDED_XMP_BUFFER_SIZE:I = 0xfde8

.field private static final MAX_XMP_BUFFER_SIZE:I = 0xffde

.field private static final M_APP1:I = 0xe1

.field private static final M_SOI:I = 0xd8

.field private static final M_SOS:I = 0xda

.field private static final NOTE_PREFIX:Ljava/lang/String; = "xmpNote"

.field private static final PANO_PREFIX:Ljava/lang/String; = "GPano"

.field private static final TAG:Ljava/lang/String; = "XmpUtil"

.field private static final XMP_HEADER:Ljava/lang/String; = "http://ns.adobe.com/xap/1.0/\u0000"

.field private static final XMP_HEADER_SIZE:I = 0x1d

.field private static final XMP_NOTE_NAMESPACE:Ljava/lang/String; = "http://ns.adobe.com/xmp/note/"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 82
    :try_start_0
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    const-string v1, "http://ns.google.com/photos/1.0/panorama/"

    const-string v2, "GPano"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    const-string v1, "http://ns.adobe.com/xmp/note/"

    const-string v2, "xmpNote"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception v0

    .line 88
    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    :goto_1b
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createSection([B[B)Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;
    .registers 6

    .line 450
    array-length v0, p0

    const/4 v1, 0x0

    const v2, 0xfde8

    if-le v0, v2, :cond_13

    const-string p0, "XmpUtil"

    const-string p1, "createSection fail exceed max size"

    .line 452
    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-object v1

    .line 456
    :cond_13
    array-length v0, p0

    add-int/lit8 v0, v0, 0x4b

    new-array v0, v0, [B

    .line 457
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 459
    array-length p1, p1

    array-length v2, p0

    invoke-static {p0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    new-instance p0, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;-><init>(Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$1;)V

    const/16 p1, 0xe1

    .line 461
    iput p1, p0, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->marker:I

    .line 463
    array-length p1, v0

    const/4 v1, 0x2

    add-int/2addr p1, v1

    iput p1, p0, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->length:I

    .line 464
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->data:[B

    .line 465
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 466
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_6b

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "XmpUtil"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fullLength="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x43

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " offset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x47

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_6b
    return-object p0
.end method

.method private static createStandardXMPSection(Lcom/adobe/xmp/XMPMeta;)Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;
    .registers 6

    const/4 v0, 0x0

    .line 420
    :try_start_1
    new-instance v1, Lcom/adobe/xmp/options/SerializeOptions;

    invoke-direct {v1}, Lcom/adobe/xmp/options/SerializeOptions;-><init>()V

    const/4 v2, 0x1

    .line 421
    invoke-virtual {v1, v2}, Lcom/adobe/xmp/options/SerializeOptions;->setUseCompactFormat(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 425
    invoke-virtual {v1, v2}, Lcom/adobe/xmp/options/SerializeOptions;->setOmitPacketWrapper(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 426
    invoke-static {p0, v1}, Lcom/adobe/xmp/XMPMetaFactory;->serializeToBuffer(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/options/SerializeOptions;)[B

    move-result-object p0
    :try_end_11
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_11} :catch_46

    .line 431
    array-length v1, p0

    const v2, 0xffde

    if-le v1, v2, :cond_21

    const-string p0, "exceed max size"

    .line 432
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-object v0

    .line 436
    :cond_21
    array-length v1, p0

    const/16 v2, 0x1d

    add-int/2addr v1, v2

    new-array v1, v1, [B

    const-string v3, "http://ns.adobe.com/xap/1.0/\u0000"

    .line 437
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 438
    array-length v3, p0

    invoke-static {p0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 439
    new-instance p0, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;-><init>(Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$1;)V

    const/16 v0, 0xe1

    .line 440
    iput v0, p0, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->marker:I

    .line 442
    array-length v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->length:I

    .line 443
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->data:[B

    return-object p0

    :catch_46
    move-exception p0

    const-string v1, "Serialize xmp failed"

    .line 428
    invoke-static {v1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static createXMPMeta()Lcom/adobe/xmp/XMPMeta;
    .registers 1

    .line 147
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->create()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    return-object v0
.end method

.method public static extractOrCreateXMPMeta(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;
    .registers 1

    .line 154
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->extractXMPMeta(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;

    move-result-object p0

    if-nez p0, :cond_a

    .line 155
    invoke-static {}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->createXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object p0

    :cond_a
    return-object p0
.end method

.method public static extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;
    .registers 6

    const/4 v0, 0x1

    .line 120
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_9

    return-object v0

    .line 125
    :cond_9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;

    .line 126
    iget-object v2, v1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->data:[B

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->hasXMPHeader([B)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 127
    iget-object p0, v1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->data:[B

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->getXMPContentEnd([B)I

    move-result p0

    const/16 v2, 0x1d

    sub-int/2addr p0, v2

    .line 128
    new-array p0, p0, [B

    .line 129
    iget-object v1, v1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->data:[B

    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {v1, v2, p0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    :try_start_33
    invoke-static {p0}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromBuffer([B)Lcom/adobe/xmp/XMPMeta;

    move-result-object p0
    :try_end_37
    .catch Lcom/adobe/xmp/XMPException; {:try_start_33 .. :try_end_37} :catch_38

    return-object p0

    :catch_38
    move-exception p0

    const-string v1, "XMP parse error"

    .line 135
    invoke-static {v1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :cond_3f
    return-object v0
.end method

.method public static extractXMPMeta(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;
    .registers 5

    .line 99
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_25

    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".jpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string p0, "XmpUtil"

    const-string v0, "XMP parse: only jpeg file is supported"

    .line 101
    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-object v1

    .line 106
    :cond_25
    :try_start_25
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;

    move-result-object p0
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_2e} :catch_2f

    return-object p0

    :catch_2f
    move-exception v0

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private static getGUID([B)Ljava/lang/String;
    .registers 8

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_5
    const-string v1, "MD5"

    .line 618
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 619
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 620
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 622
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    const/4 v2, 0x0

    move v3, v2

    .line 623
    :goto_19
    array-length v4, p0

    if-ge v3, v4, :cond_33

    const-string v4, "%02x"

    const/4 v5, 0x1

    .line 624
    new-array v5, v5, [Ljava/lang/Object;

    aget-byte v6, p0, v3

    add-int/lit16 v6, v6, 0x100

    rem-int/lit16 v6, v6, 0x100

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_30
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_30} :catch_3c

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 631
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_3c
    move-exception p0

    const-string v0, "get md5 instance failure"

    .line 627
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getXMPContentEnd([B)I
    .registers 5

    .line 332
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_3
    if-lt v0, v1, :cond_18

    .line 333
    aget-byte v2, p0, v0

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_15

    add-int/lit8 v2, v0, -0x1

    .line 334
    aget-byte v2, p0, v2

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_15

    add-int/2addr v0, v1

    return v0

    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 340
    :cond_18
    array-length p0, p0

    return p0
.end method

.method private static hasXMPHeader([B)Z
    .registers 4

    .line 306
    array-length v0, p0

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-ge v0, v1, :cond_7

    return v2

    .line 310
    :cond_7
    :try_start_7
    new-array v0, v1, [B

    .line 311
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    new-instance p0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v0, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_19} :catch_1e

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    return v2

    :catch_1e
    return v2
.end method

.method private static insertXMPSection(Ljava/util/List;Lcom/adobe/xmp/XMPMeta;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;",
            ">;",
            "Lcom/adobe/xmp/XMPMeta;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_9a

    .line 250
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_c

    goto/16 :goto_9a

    .line 255
    :cond_c
    :try_start_c
    new-instance v1, Lcom/adobe/xmp/options/SerializeOptions;

    invoke-direct {v1}, Lcom/adobe/xmp/options/SerializeOptions;-><init>()V

    .line 256
    invoke-virtual {v1, v2}, Lcom/adobe/xmp/options/SerializeOptions;->setUseCompactFormat(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 260
    invoke-virtual {v1, v2}, Lcom/adobe/xmp/options/SerializeOptions;->setOmitPacketWrapper(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 261
    invoke-static {p1, v1}, Lcom/adobe/xmp/XMPMetaFactory;->serializeToBuffer(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/options/SerializeOptions;)[B

    move-result-object p1
    :try_end_1b
    .catch Lcom/adobe/xmp/XMPException; {:try_start_c .. :try_end_1b} :catch_93

    .line 266
    array-length v1, p1

    const v3, 0xffde

    if-le v1, v3, :cond_22

    return-object v0

    .line 271
    :cond_22
    array-length v1, p1

    const/16 v3, 0x1d

    add-int/2addr v1, v3

    new-array v1, v1, [B

    const-string v4, "http://ns.adobe.com/xap/1.0/\u0000"

    .line 272
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    array-length v4, p1

    invoke-static {p1, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    new-instance p1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;

    invoke-direct {p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;-><init>(Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$1;)V

    const/16 v0, 0xe1

    .line 275
    iput v0, p1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->marker:I

    .line 277
    array-length v3, v1

    add-int/lit8 v3, v3, 0x2

    iput v3, p1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->length:I

    .line 278
    iput-object v1, p1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->data:[B

    move v1, v5

    .line 280
    :goto_47
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6c

    .line 282
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;

    iget v3, v3, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->marker:I

    if-ne v3, v0, :cond_69

    .line 283
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->data:[B

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->hasXMPHeader([B)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 285
    invoke-interface {p0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 291
    :cond_6c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 292
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;

    iget v3, v3, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->marker:I

    if-ne v3, v0, :cond_7c

    goto :goto_7d

    :cond_7c
    move v2, v5

    .line 293
    :goto_7d
    invoke-interface {p0, v5, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 294
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p0, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v1

    :catch_93
    move-exception p0

    const-string p1, "Serialize xmp failed"

    .line 263
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :cond_9a
    :goto_9a
    return-object v0
.end method

.method private static insertXMPSection(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_34

    .line 601
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_a

    goto :goto_34

    .line 607
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 608
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;

    iget v3, v3, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->marker:I

    const/16 v4, 0xe1

    if-ne v3, v4, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    .line 609
    :goto_1e
    invoke-interface {p0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 610
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 611
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0

    :cond_34
    :goto_34
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parse(Ljava/io/InputStream;Z)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 354
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_a1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v3, 0xd8

    if-eq v1, v3, :cond_13

    goto/16 :goto_a1

    .line 357
    :cond_13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 359
    :goto_18
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1c} :catch_a9
    .catchall {:try_start_1 .. :try_end_1c} :catchall_a7

    const/4 v4, -0x1

    if-eq v3, v4, :cond_9b

    if-eq v3, v2, :cond_27

    if-eqz p0, :cond_26

    .line 409
    :try_start_23
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_26

    :catch_26
    :cond_26
    return-object v0

    .line 364
    :cond_27
    :goto_27
    :try_start_27
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2b} :catch_a9
    .catchall {:try_start_27 .. :try_end_2b} :catchall_a7

    if-ne v3, v2, :cond_2e

    goto :goto_27

    :cond_2e
    if-ne v3, v4, :cond_36

    if-eqz p0, :cond_35

    .line 409
    :try_start_32
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_35

    :catch_35
    :cond_35
    return-object v0

    :cond_36
    const/16 v5, 0xda

    const/4 v6, 0x0

    if-ne v3, v5, :cond_5f

    if-nez p1, :cond_59

    .line 374
    :try_start_3d
    new-instance p1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;

    invoke-direct {p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;-><init>(Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$1;)V

    .line 375
    iput v3, p1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->marker:I

    .line 376
    iput v4, p1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->length:I

    .line 377
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->data:[B

    .line 378
    iget-object v2, p1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->data:[B

    iget-object v3, p1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->data:[B

    array-length v3, v3

    invoke-virtual {p0, v2, v6, v3}, Ljava/io/InputStream;->read([BII)I

    .line 379
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_59} :catch_a9
    .catchall {:try_start_3d .. :try_end_59} :catchall_a7

    :cond_59
    if-eqz p0, :cond_5e

    .line 409
    :try_start_5b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5e

    :catch_5e
    :cond_5e
    return-object v1

    .line 383
    :cond_5f
    :try_start_5f
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 384
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v7

    if-eq v5, v4, :cond_95

    if-ne v7, v4, :cond_6c

    goto :goto_95

    :cond_6c
    shl-int/lit8 v4, v5, 0x8

    or-int/2addr v4, v7

    if-eqz p1, :cond_7d

    const/16 v5, 0xe1

    if-ne v3, v5, :cond_76

    goto :goto_7d

    :cond_76
    add-int/lit8 v4, v4, -0x2

    int-to-long v3, v4

    .line 399
    invoke-virtual {p0, v3, v4}, Ljava/io/InputStream;->skip(J)J

    goto :goto_18

    .line 390
    :cond_7d
    :goto_7d
    new-instance v5, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;

    invoke-direct {v5, v0}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;-><init>(Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$1;)V

    .line 391
    iput v3, v5, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->marker:I

    .line 392
    iput v4, v5, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->length:I

    add-int/lit8 v4, v4, -0x2

    .line 393
    new-array v3, v4, [B

    iput-object v3, v5, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->data:[B

    .line 394
    iget-object v3, v5, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->data:[B

    invoke-virtual {p0, v3, v6, v4}, Ljava/io/InputStream;->read([BII)I

    .line 395
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_94} :catch_a9
    .catchall {:try_start_5f .. :try_end_94} :catchall_a7

    goto :goto_18

    :cond_95
    :goto_95
    if-eqz p0, :cond_9a

    .line 409
    :try_start_97
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9a

    :catch_9a
    :cond_9a
    return-object v0

    :cond_9b
    if-eqz p0, :cond_a0

    :try_start_9d
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_a0

    :catch_a0
    :cond_a0
    return-object v1

    :cond_a1
    :goto_a1
    if-eqz p0, :cond_a6

    :try_start_a3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_a6

    :catch_a6
    :cond_a6
    return-object v0

    :catchall_a7
    move-exception p1

    goto :goto_b5

    :catch_a9
    move-exception p1

    :try_start_aa
    const-string v1, "Could not parse file."

    .line 404
    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_af
    .catchall {:try_start_aa .. :try_end_af} :catchall_a7

    if-eqz p0, :cond_b4

    .line 409
    :try_start_b1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_b4

    :catch_b4
    :cond_b4
    return-object v0

    :goto_b5
    if-eqz p0, :cond_ba

    :try_start_b7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_ba

    .line 414
    :catch_ba
    :cond_ba
    throw p1
.end method

.method private static splitExtendXMPMeta([BLjava/lang/String;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;",
            ">;"
        }
    .end annotation

    .line 478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 487
    array-length v1, p0

    const v2, 0xfde8

    div-int/2addr v1, v2

    .line 488
    new-array v3, v2, [B

    .line 489
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/16 v5, 0x4b

    .line 492
    new-array v5, v5, [B

    const-string v6, "http://ns.adobe.com/xmp/extension/\u0000"

    .line 494
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/16 v7, 0x23

    const/4 v8, 0x0

    invoke-static {v6, v8, v5, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 497
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v6, v8, v5, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 498
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v7, p1

    .line 500
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_53

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    const-string v6, "XmpUtil"

    aput-object v6, p1, v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "buffer.length="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, p0

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x1

    aput-object v6, p1, v9

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_53
    const/4 p1, 0x4

    .line 501
    new-array v6, p1, [B

    .line 502
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 503
    array-length v10, p0

    invoke-virtual {v9, v8, v10}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 504
    invoke-static {v6, v8, v5, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v7, p1

    .line 507
    new-array v6, p1, [B

    .line 508
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    move v10, v8

    :goto_69
    if-ge v10, v1, :cond_80

    mul-int v11, v10, v2

    .line 510
    invoke-virtual {v9, v8, v11}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 511
    invoke-static {v6, v8, v5, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 513
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 514
    invoke-static {v3, v5}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->createSection([B[B)Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;

    move-result-object v11

    .line 515
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_69

    .line 518
    :cond_80
    array-length p0, p0

    mul-int/2addr v1, v2

    sub-int/2addr p0, v1

    if-lez p0, :cond_97

    .line 520
    invoke-virtual {v9, v8, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 521
    invoke-static {v6, v8, v5, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 523
    new-array p0, p0, [B

    .line 524
    invoke-virtual {v4, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 525
    invoke-static {p0, v5}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->createSection([B[B)Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;

    move-result-object p0

    .line 526
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_97
    return-object v0
.end method

.method private static writeJpegFile(Ljava/io/OutputStream;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xff

    .line 232
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v1, 0xd8

    .line 233
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 234
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;

    .line 235
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 236
    iget v2, v1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->marker:I

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 237
    iget v2, v1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->length:I

    if-lez v2, :cond_33

    .line 239
    iget v2, v1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->length:I

    shr-int/lit8 v2, v2, 0x8

    .line 240
    iget v3, v1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->length:I

    and-int/2addr v3, v0

    .line 241
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 242
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 244
    :cond_33
    iget-object v1, v1, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;->data:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_e

    :cond_39
    return-void
.end method

.method public static writeXMPMeta(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;)Z
    .registers 4

    const/4 v0, 0x0

    .line 203
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object p0

    .line 204
    invoke-static {p0, p2}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->insertXMPSection(Ljava/util/List;Lcom/adobe/xmp/XMPMeta;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_c

    return v0

    .line 210
    :cond_c
    :try_start_c
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->writeJpegFile(Ljava/io/OutputStream;Ljava/util/List;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_18
    .catchall {:try_start_c .. :try_end_f} :catchall_16

    if-eqz p1, :cond_14

    .line 217
    :try_start_11
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_14

    :catch_14
    :cond_14
    const/4 p0, 0x1

    return p0

    :catchall_16
    move-exception p0

    goto :goto_24

    :catch_18
    move-exception p0

    :try_start_19
    const-string p2, "Write to stream failed"

    .line 212
    invoke-static {p2, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_16

    if-eqz p1, :cond_23

    .line 217
    :try_start_20
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_23

    :catch_23
    :cond_23
    return v0

    :goto_24
    if-eqz p1, :cond_29

    :try_start_26
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_29

    .line 222
    :catch_29
    :cond_29
    throw p0
.end method

.method public static writeXMPMeta(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/XMPMeta;)Z
    .registers 9

    const/4 v0, 0x0

    .line 545
    :try_start_1
    new-instance v1, Lcom/adobe/xmp/options/SerializeOptions;

    invoke-direct {v1}, Lcom/adobe/xmp/options/SerializeOptions;-><init>()V

    const/4 v2, 0x1

    .line 546
    invoke-virtual {v1, v2}, Lcom/adobe/xmp/options/SerializeOptions;->setUseCompactFormat(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 550
    invoke-virtual {v1, v2}, Lcom/adobe/xmp/options/SerializeOptions;->setOmitPacketWrapper(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 551
    invoke-static {p3, v1}, Lcom/adobe/xmp/XMPMetaFactory;->serializeToString(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/options/SerializeOptions;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "&#xA;"

    const-string v3, ""

    .line 552
    invoke-virtual {p3, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3
    :try_end_1d
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1d} :catch_87

    .line 558
    invoke-static {p3}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->getGUID([B)Ljava/lang/String;

    move-result-object v1

    :try_start_21
    const-string v3, "http://ns.adobe.com/xmp/note/"

    const-string v4, "HasExtendedXMP"

    .line 560
    invoke-interface {p2, v3, v4, v1}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_28
    .catch Lcom/adobe/xmp/XMPException; {:try_start_21 .. :try_end_28} :catch_80

    .line 565
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object p0

    .line 566
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 567
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->createStandardXMPSection(Lcom/adobe/xmp/XMPMeta;)Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil$Section;

    move-result-object p2

    if-nez p2, :cond_43

    const-string p0, "XmpUtil"

    const-string p1, "create standard meta section error"

    .line 569
    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v0

    .line 572
    :cond_43
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    invoke-static {p3, v1}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->splitExtendXMPMeta([BLjava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 575
    invoke-interface {v3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 576
    invoke-static {p0, v3}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->insertXMPSection(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_63

    .line 578
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_62

    const-string p0, "XmpUtil"

    const-string p1, "Insert XMP fialed"

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_62
    return v0

    .line 583
    :cond_63
    :try_start_63
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->writeJpegFile(Ljava/io/OutputStream;Ljava/util/List;)V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_6e
    .catchall {:try_start_63 .. :try_end_66} :catchall_6c

    if-eqz p1, :cond_6b

    .line 590
    :try_start_68
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6b

    :catch_6b
    :cond_6b
    return v2

    :catchall_6c
    move-exception p0

    goto :goto_7a

    :catch_6e
    move-exception p0

    :try_start_6f
    const-string p2, "Write to stream failed"

    .line 585
    invoke-static {p2, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_74
    .catchall {:try_start_6f .. :try_end_74} :catchall_6c

    if-eqz p1, :cond_79

    .line 590
    :try_start_76
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_79

    :catch_79
    :cond_79
    return v0

    :goto_7a
    if-eqz p1, :cond_7f

    :try_start_7c
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_7f

    .line 595
    :catch_7f
    :cond_7f
    throw p0

    :catch_80
    move-exception p0

    const-string p1, "set XMPMeta Property"

    .line 562
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :catch_87
    move-exception p0

    const-string p1, "Serialize extended xmp failed"

    .line 554
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public static writeXMPMeta(Ljava/lang/String;Lcom/adobe/xmp/XMPMeta;)Z
    .registers 6

    .line 162
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_29

    .line 163
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".jpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 164
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_28

    const-string p0, "XmpUtil"

    const-string p1, "XMP parse: only jpeg file is supported"

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_28
    return v1

    .line 169
    :cond_29
    :try_start_29
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v0

    .line 170
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->insertXMPSection(Ljava/util/List;Lcom/adobe/xmp/XMPMeta;)Ljava/util/List;

    move-result-object p1
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_36} :catch_70

    if-nez p1, :cond_39

    return v1

    :cond_39
    const/4 v0, 0x0

    .line 181
    :try_start_3a
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3f} :catch_4f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_4d

    .line 182
    :try_start_3f
    invoke-static {v2, p1}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->writeJpegFile(Ljava/io/OutputStream;Ljava/util/List;)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_4a
    .catchall {:try_start_3f .. :try_end_42} :catchall_47

    .line 189
    :try_start_42
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_45

    :catch_45
    const/4 p0, 0x1

    return p0

    :catchall_47
    move-exception p0

    move-object v0, v2

    goto :goto_6a

    :catch_4a
    move-exception p1

    move-object v0, v2

    goto :goto_50

    :catchall_4d
    move-exception p0

    goto :goto_6a

    :catch_4f
    move-exception p1

    .line 184
    :goto_50
    :try_start_50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Write file failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_64
    .catchall {:try_start_50 .. :try_end_64} :catchall_4d

    if-eqz v0, :cond_69

    .line 189
    :try_start_66
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_69

    :catch_69
    :cond_69
    return v1

    :goto_6a
    if-eqz v0, :cond_6f

    :try_start_6c
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_6f

    .line 194
    :catch_6f
    :cond_6f
    throw p0

    :catch_70
    move-exception p1

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not read file: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method
