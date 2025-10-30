.class public Lcom/sonyericsson/android/camera/device/xmp/XMPController;
.super Ljava/lang/Object;
.source "XMPController.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addXMPInfo([BII)[B
    .registers 9

    .line 20
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->generateXmpFromMpo([B)Ljava/util/ArrayList;

    move-result-object v0

    .line 21
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_36

    new-array v1, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateXmpFromMpo img size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "w="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_36
    if-eqz v0, :cond_68

    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x2

    if-le v1, v4, :cond_68

    .line 23
    new-instance v1, Lcom/sonyericsson/android/camera/device/xmp/GImage;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    const-string v5, "image/jpeg"

    invoke-direct {v1, v4, v5}, Lcom/sonyericsson/android/camera/device/xmp/GImage;-><init>([BLjava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->createGDepth([B)Lcom/sonyericsson/android/camera/device/xmp/GDepth;

    move-result-object v0

    .line 25
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->setRoi(Landroid/graphics/Rect;)V

    .line 26
    invoke-static {p0, v1, v0}, Lcom/sonyericsson/android/camera/device/xmp/XMPController;->embedGDepthAndBayerInClearSight([BLcom/sonyericsson/android/camera/device/xmp/GImage;Lcom/sonyericsson/android/camera/device/xmp/GDepth;)[B

    move-result-object p0

    return-object p0

    :cond_68
    const-string p1, "No bokeh info"

    .line 28
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-object p0
.end method

.method private static embedGDepthAndBayerInClearSight([BLcom/sonyericsson/android/camera/device/xmp/GImage;Lcom/sonyericsson/android/camera/device/xmp/GDepth;)[B
    .registers 13

    .line 33
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "embedGDepthInClearSight"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x0

    if-eqz p0, :cond_178

    if-nez p2, :cond_16

    if-nez p1, :cond_16

    goto/16 :goto_178

    .line 39
    :cond_16
    invoke-static {}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->createXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_88

    .line 42
    :try_start_1f
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v5, :cond_54

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "gDepth info, format: %s, near: %d, far: %d, mine: %s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    .line 44
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->getFormat()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 45
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->getNear()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    .line 46
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->getFar()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v8, 0x3

    .line 47
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->getMime()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 43
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 42
    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_54
    const-string v5, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v6, "Format"

    .line 48
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->getFormat()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v5, v6, v7}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v6, "Near"

    .line 49
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->getNear()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v5, v6, v7}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v6, "Far"

    .line 50
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->getFar()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v5, v6, v7}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v6, "Mime"

    .line 51
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->getMime()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v5, v6, v7}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    :cond_88
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v5, :cond_95

    const-string v5, "gDepth getMime"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 55
    :cond_95
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->getRoi()Landroid/graphics/Rect;

    move-result-object v5

    if-eqz v5, :cond_e6

    .line 58
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v6, :cond_ae

    new-array v6, v2, [Ljava/lang/String;

    const-string v7, "gDepth roi info: "

    aput-object v7, v6, v3

    invoke-virtual {v5}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_ae
    const-string v6, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v7, "RoiX"

    .line 59
    iget v8, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v6, v7, v8}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v7, "RoiY"

    .line 60
    iget v8, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v6, v7, v8}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v7, "RoiWidth"

    .line 61
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v6, v7, v8}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v7, "RoiHeight"

    .line 62
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v6, v7, v5}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_e6
    if-eqz p1, :cond_106

    .line 66
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v5, :cond_fb

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "add GImage data: "

    aput-object v5, v2, v3

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/GImage;->getMime()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_fb
    const-string v2, "http://ns.google.com/photos/1.0/image/"

    const-string v3, "Mime"

    .line 67
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/GImage;->getMime()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_106
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1f .. :try_end_106} :catch_171

    .line 76
    :cond_106
    invoke-static {}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->createXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v2

    .line 78
    :try_start_10a
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_117

    const-string v3, "prepare extendXmpMeta data"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_117
    if-eqz p1, :cond_131

    .line 80
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_126

    const-string v3, "add extend GImage data"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_126
    const-string v3, "http://ns.google.com/photos/1.0/image/"

    const-string v4, "Data"

    .line 81
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/GImage;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v3, v4, p1}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_131
    if-eqz p2, :cond_152

    .line 85
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_140

    const-string p1, "create extend GDepth data"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_140
    const-string p1, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v3, "Data"

    .line 86
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->getData()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p1, v3, p2}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_14b
    .catch Lcom/adobe/xmp/XMPException; {:try_start_10a .. :try_end_14b} :catch_14c

    goto :goto_152

    :catch_14c
    move-exception p1

    const-string p2, "create extended XMPMeta error"

    .line 89
    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    :cond_152
    :goto_152
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 94
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 95
    invoke-static {p1, p0, v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->writeXMPMeta(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/XMPMeta;)Z

    move-result p1

    if-eqz p1, :cond_167

    .line 96
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_167
    const-string p0, "embedGDepthInClearSight failure "

    .line 98
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-object v0

    :catch_171
    move-exception p0

    const-string p1, "create XMPMeta error"

    .line 72
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :cond_178
    :goto_178
    const-string p0, "clearSightImageBytes is null"

    .line 35
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-object v0
.end method
