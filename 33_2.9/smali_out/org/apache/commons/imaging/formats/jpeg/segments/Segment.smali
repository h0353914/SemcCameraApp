.class public abstract Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;
.super Lorg/apache/commons/imaging/common/BinaryFileParser;
.source "Segment.java"


# instance fields
.field public final length:I

.field public final marker:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 27
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;-><init>()V

    .line 30
    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;->marker:I

    .line 31
    iput p2, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;->length:I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 2

    return-void
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public getSegmentType()Ljava/lang/String;
    .registers 4

    .line 47
    iget v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;->marker:I

    const v1, 0xff01

    if-eq v0, v1, :cond_c4

    const v1, 0xfffe

    if-eq v0, v1, :cond_c1

    packed-switch v0, :pswitch_data_c8

    const v1, 0xff02

    if-lt v0, v1, :cond_1c

    const v1, 0xffbf

    if-gt v0, v1, :cond_1c

    const-string p0, "Reserved"

    return-object p0

    :cond_1c
    const v1, 0xffe0

    if-lt v0, v1, :cond_3d

    const v2, 0xffef

    if-gt v0, v2, :cond_3d

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APP"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;->marker:I

    sub-int/2addr p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3d
    const v2, 0xfff0

    if-lt v0, v2, :cond_5e

    const v2, 0xfffd

    if-gt v0, v2, :cond_5e

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JPG"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;->marker:I

    sub-int/2addr p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5e
    const-string p0, "Unknown"

    return-object p0

    :pswitch_61
    const-string p0, "Expand reference component(s)"

    return-object p0

    :pswitch_64
    const-string p0, "Define hierarchical progression"

    return-object p0

    :pswitch_67
    const-string p0, "Define restart interval"

    return-object p0

    :pswitch_6a
    const-string p0, "Define number of lines"

    return-object p0

    :pswitch_6d
    const-string p0, "Define quantization table(s)"

    return-object p0

    :pswitch_70
    const-string p0, "Start of scan"

    return-object p0

    :pswitch_73
    const-string p0, "End of image"

    return-object p0

    :pswitch_76
    const-string p0, "Start of image"

    return-object p0

    :pswitch_79
    const-string p0, "Restart with modulo 8 count 7"

    return-object p0

    :pswitch_7c
    const-string p0, "Restart with modulo 8 count 6"

    return-object p0

    :pswitch_7f
    const-string p0, "Restart with modulo 8 count 5"

    return-object p0

    :pswitch_82
    const-string p0, "Restart with modulo 8 count 4"

    return-object p0

    :pswitch_85
    const-string p0, "Restart with modulo 8 count 3"

    return-object p0

    :pswitch_88
    const-string p0, "Restart with modulo 8 count 2"

    return-object p0

    :pswitch_8b
    const-string p0, "Restart with modulo 8 count 1"

    return-object p0

    :pswitch_8e
    const-string p0, "Restart with modulo 8 count 0"

    return-object p0

    :pswitch_91
    const-string p0, "Start Of Frame, Differential lossless (sequential), arithmetic coding"

    return-object p0

    :pswitch_94
    const-string p0, "Start Of Frame, Differential progressive Dct, arithmetic coding"

    return-object p0

    :pswitch_97
    const-string p0, "Start Of Frame, Differential sequential Dct, arithmetic coding"

    return-object p0

    :pswitch_9a
    const-string p0, "Define arithmetic coding conditioning(s)"

    return-object p0

    :pswitch_9d
    const-string p0, "Start Of Frame, Lossless (sequential), arithmetic coding"

    return-object p0

    :pswitch_a0
    const-string p0, "Start Of Frame, Progressive Dct, arithmetic coding"

    return-object p0

    :pswitch_a3
    const-string p0, "Start Of Frame, Extended sequential Dct, arithmetic coding"

    return-object p0

    :pswitch_a6
    const-string p0, "Start Of Frame, Reserved for JPEG extensions, arithmetic coding"

    return-object p0

    :pswitch_a9
    const-string p0, "Start Of Frame, Differential lossless (sequential), Huffman coding"

    return-object p0

    :pswitch_ac
    const-string p0, "Start Of Frame, Differential progressive Dct, Huffman coding"

    return-object p0

    :pswitch_af
    const-string p0, "Start Of Frame, Differential sequential Dct, Huffman coding"

    return-object p0

    :pswitch_b2
    const-string p0, "Define Huffman table(s)"

    return-object p0

    :pswitch_b5
    const-string p0, "Start Of Frame, Lossless (sequential), Huffman coding"

    return-object p0

    :pswitch_b8
    const-string p0, "Start Of Frame, Progressive Dct, Huffman coding"

    return-object p0

    :pswitch_bb
    const-string p0, "Start Of Frame, Extended sequential Dct, Huffman coding"

    return-object p0

    :pswitch_be
    const-string p0, "Start Of Frame, Baseline Dct, Huffman coding"

    return-object p0

    :cond_c1
    const-string p0, "Comment"

    return-object p0

    :cond_c4
    const-string p0, "For temporary private use in arithmetic coding"

    return-object p0

    nop

    :pswitch_data_c8
    .packed-switch 0xffc0
        :pswitch_be
        :pswitch_bb
        :pswitch_b8
        :pswitch_b5
        :pswitch_b2
        :pswitch_af
        :pswitch_ac
        :pswitch_a9
        :pswitch_a6
        :pswitch_a3
        :pswitch_a0
        :pswitch_9d
        :pswitch_9a
        :pswitch_97
        :pswitch_94
        :pswitch_91
        :pswitch_8e
        :pswitch_8b
        :pswitch_88
        :pswitch_85
        :pswitch_82
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_76
        :pswitch_73
        :pswitch_70
        :pswitch_6d
        :pswitch_6a
        :pswitch_67
        :pswitch_64
        :pswitch_61
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Segment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
