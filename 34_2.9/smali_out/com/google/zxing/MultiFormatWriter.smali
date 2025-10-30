.class public final Lcom/google/zxing/MultiFormatWriter;
.super Ljava/lang/Object;
.source "MultiFormatWriter.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 49
    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    return-object p0
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 59
    sget-object p0, Lcom/google/zxing/MultiFormatWriter$1;->$SwitchMap$com$google$zxing$BarcodeFormat:[I

    invoke-virtual {p2}, Lcom/google/zxing/BarcodeFormat;->ordinal()I

    move-result v0

    aget p0, p0, v0

    packed-switch p0, :pswitch_data_78

    .line 100
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "No encoder available for format "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 97
    :pswitch_20
    new-instance p0, Lcom/google/zxing/aztec/AztecWriter;

    invoke-direct {p0}, Lcom/google/zxing/aztec/AztecWriter;-><init>()V

    goto :goto_6d

    .line 94
    :pswitch_26
    new-instance p0, Lcom/google/zxing/datamatrix/DataMatrixWriter;

    invoke-direct {p0}, Lcom/google/zxing/datamatrix/DataMatrixWriter;-><init>()V

    goto :goto_6d

    .line 91
    :pswitch_2c
    new-instance p0, Lcom/google/zxing/oned/CodaBarWriter;

    invoke-direct {p0}, Lcom/google/zxing/oned/CodaBarWriter;-><init>()V

    goto :goto_6d

    .line 88
    :pswitch_32
    new-instance p0, Lcom/google/zxing/pdf417/PDF417Writer;

    invoke-direct {p0}, Lcom/google/zxing/pdf417/PDF417Writer;-><init>()V

    goto :goto_6d

    .line 85
    :pswitch_38
    new-instance p0, Lcom/google/zxing/oned/ITFWriter;

    invoke-direct {p0}, Lcom/google/zxing/oned/ITFWriter;-><init>()V

    goto :goto_6d

    .line 82
    :pswitch_3e
    new-instance p0, Lcom/google/zxing/oned/Code128Writer;

    invoke-direct {p0}, Lcom/google/zxing/oned/Code128Writer;-><init>()V

    goto :goto_6d

    .line 79
    :pswitch_44
    new-instance p0, Lcom/google/zxing/oned/Code93Writer;

    invoke-direct {p0}, Lcom/google/zxing/oned/Code93Writer;-><init>()V

    goto :goto_6d

    .line 76
    :pswitch_4a
    new-instance p0, Lcom/google/zxing/oned/Code39Writer;

    invoke-direct {p0}, Lcom/google/zxing/oned/Code39Writer;-><init>()V

    goto :goto_6d

    .line 73
    :pswitch_50
    new-instance p0, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {p0}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    goto :goto_6d

    .line 70
    :pswitch_56
    new-instance p0, Lcom/google/zxing/oned/UPCAWriter;

    invoke-direct {p0}, Lcom/google/zxing/oned/UPCAWriter;-><init>()V

    goto :goto_6d

    .line 67
    :pswitch_5c
    new-instance p0, Lcom/google/zxing/oned/EAN13Writer;

    invoke-direct {p0}, Lcom/google/zxing/oned/EAN13Writer;-><init>()V

    goto :goto_6d

    .line 64
    :pswitch_62
    new-instance p0, Lcom/google/zxing/oned/UPCEWriter;

    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEWriter;-><init>()V

    goto :goto_6d

    .line 61
    :pswitch_68
    new-instance p0, Lcom/google/zxing/oned/EAN8Writer;

    invoke-direct {p0}, Lcom/google/zxing/oned/EAN8Writer;-><init>()V

    :goto_6d
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 102
    invoke-interface/range {v0 .. v5}, Lcom/google/zxing/Writer;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    return-object p0

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_68
        :pswitch_62
        :pswitch_5c
        :pswitch_56
        :pswitch_50
        :pswitch_4a
        :pswitch_44
        :pswitch_3e
        :pswitch_38
        :pswitch_32
        :pswitch_2c
        :pswitch_26
        :pswitch_20
    .end packed-switch
.end method
