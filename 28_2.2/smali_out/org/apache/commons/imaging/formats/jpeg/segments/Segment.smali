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

    if-eq v0, v1, :cond_cc

    const v1, 0xfffe

    if-eq v0, v1, :cond_c9

    packed-switch v0, :pswitch_data_d0

    .line 132
    iget v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;->marker:I

    const v1, 0xff02

    if-lt v0, v1, :cond_20

    iget v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;->marker:I

    const v1, 0xffbf

    if-gt v0, v1, :cond_20

    const-string p0, "Reserved"

    return-object p0

    .line 135
    :cond_20
    iget v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;->marker:I

    const v1, 0xffe0

    if-lt v0, v1, :cond_43

    iget v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;->marker:I

    const v2, 0xffef

    if-gt v0, v2, :cond_43

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APP"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;->marker:I

    sub-int/2addr p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 138
    :cond_43
    iget v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;->marker:I

    const v2, 0xfff0

    if-lt v0, v2, :cond_66

    iget v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;->marker:I

    const v2, 0xfffd

    if-gt v0, v2, :cond_66

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JPG"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;->marker:I

    sub-int/2addr p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_66
    const-string p0, "Unknown"

    return-object p0

    :pswitch_69
    const-string p0, "Expand reference component(s)"

    return-object p0

    :pswitch_6c
    const-string p0, "Define hierarchical progression"

    return-object p0

    :pswitch_6f
    const-string p0, "Define restart interval"

    return-object p0

    :pswitch_72
    const-string p0, "Define number of lines"

    return-object p0

    :pswitch_75
    const-string p0, "Define quantization table(s)"

    return-object p0

    :pswitch_78
    const-string p0, "Start of scan"

    return-object p0

    :pswitch_7b
    const-string p0, "End of image"

    return-object p0

    :pswitch_7e
    const-string p0, "Start of image"

    return-object p0

    :pswitch_81
    const-string p0, "Restart with modulo 8 count 7"

    return-object p0

    :pswitch_84
    const-string p0, "Restart with modulo 8 count 6"

    return-object p0

    :pswitch_87
    const-string p0, "Restart with modulo 8 count 5"

    return-object p0

    :pswitch_8a
    const-string p0, "Restart with modulo 8 count 4"

    return-object p0

    :pswitch_8d
    const-string p0, "Restart with modulo 8 count 3"

    return-object p0

    :pswitch_90
    const-string p0, "Restart with modulo 8 count 2"

    return-object p0

    :pswitch_93
    const-string p0, "Restart with modulo 8 count 1"

    return-object p0

    :pswitch_96
    const-string p0, "Restart with modulo 8 count 0"

    return-object p0

    :pswitch_99
    const-string p0, "Start Of Frame, Differential lossless (sequential), arithmetic coding"

    return-object p0

    :pswitch_9c
    const-string p0, "Start Of Frame, Differential progressive Dct, arithmetic coding"

    return-object p0

    :pswitch_9f
    const-string p0, "Start Of Frame, Differential sequential Dct, arithmetic coding"

    return-object p0

    :pswitch_a2
    const-string p0, "Define arithmetic coding conditioning(s)"

    return-object p0

    :pswitch_a5
    const-string p0, "Start Of Frame, Lossless (sequential), arithmetic coding"

    return-object p0

    :pswitch_a8
    const-string p0, "Start Of Frame, Progressive Dct, arithmetic coding"

    return-object p0

    :pswitch_ab
    const-string p0, "Start Of Frame, Extended sequential Dct, arithmetic coding"

    return-object p0

    :pswitch_ae
    const-string p0, "Start Of Frame, Reserved for JPEG extensions, arithmetic coding"

    return-object p0

    :pswitch_b1
    const-string p0, "Start Of Frame, Differential lossless (sequential), Huffman coding"

    return-object p0

    :pswitch_b4
    const-string p0, "Start Of Frame, Differential progressive Dct, Huffman coding"

    return-object p0

    :pswitch_b7
    const-string p0, "Start Of Frame, Differential sequential Dct, Huffman coding"

    return-object p0

    :pswitch_ba
    const-string p0, "Define Huffman table(s)"

    return-object p0

    :pswitch_bd
    const-string p0, "Start Of Frame, Lossless (sequential), Huffman coding"

    return-object p0

    :pswitch_c0
    const-string p0, "Start Of Frame, Progressive Dct, Huffman coding"

    return-object p0

    :pswitch_c3
    const-string p0, "Start Of Frame, Extended sequential Dct, Huffman coding"

    return-object p0

    :pswitch_c6
    const-string p0, "Start Of Frame, Baseline Dct, Huffman coding"

    return-object p0

    :cond_c9
    const-string p0, "Comment"

    return-object p0

    :cond_cc
    const-string p0, "For temporary private use in arithmetic coding"

    return-object p0

    nop

    :pswitch_data_d0
    .packed-switch 0xffc0
        :pswitch_c6
        :pswitch_c3
        :pswitch_c0
        :pswitch_bd
        :pswitch_ba
        :pswitch_b7
        :pswitch_b4
        :pswitch_b1
        :pswitch_ae
        :pswitch_ab
        :pswitch_a8
        :pswitch_a5
        :pswitch_a2
        :pswitch_9f
        :pswitch_9c
        :pswitch_99
        :pswitch_96
        :pswitch_93
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
        :pswitch_87
        :pswitch_84
        :pswitch_81
        :pswitch_7e
        :pswitch_7b
        :pswitch_78
        :pswitch_75
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Segment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
