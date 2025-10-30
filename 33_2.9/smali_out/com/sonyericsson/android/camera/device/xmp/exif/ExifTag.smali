.class public Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;
.super Ljava/lang/Object;
.source "ExifTag.java"


# static fields
.field private static final LONG_MAX:J = 0x7fffffffL

.field private static final LONG_MIN:J = -0x80000000L

.field public static final SIZE_UNDEFINED:I = 0x0

.field private static final TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final TYPE_ASCII:S = 0x2s

.field public static final TYPE_LONG:S = 0x9s

.field public static final TYPE_RATIONAL:S = 0xas

.field private static final TYPE_TO_SIZE_MAP:[I

.field public static final TYPE_UNDEFINED:S = 0x7s

.field public static final TYPE_UNSIGNED_BYTE:S = 0x1s

.field public static final TYPE_UNSIGNED_LONG:S = 0x4s

.field public static final TYPE_UNSIGNED_RATIONAL:S = 0x5s

.field public static final TYPE_UNSIGNED_SHORT:S = 0x3s

.field private static final UNSIGNED_LONG_MAX:J = 0xffffffffL

.field private static final UNSIGNED_SHORT_MAX:I = 0xffff

.field private static US_ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private mComponentCountActual:I

.field private final mDataType:S

.field private mHasDefinedDefaultComponentCount:Z

.field private mIfd:I

.field private mOffset:I

.field private final mTagId:S

.field private mValue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string v0, "US-ASCII"

    .line 70
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 71
    sput-object v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x1

    aput v1, v0, v1

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v3, 0x3

    aput v2, v0, v3

    const/4 v2, 0x4

    aput v2, v0, v2

    const/4 v3, 0x5

    const/16 v4, 0x8

    aput v4, v0, v3

    const/4 v3, 0x7

    aput v1, v0, v3

    const/16 v1, 0x9

    aput v2, v0, v1

    const/16 v1, 0xa

    aput v4, v0, v1

    .line 105
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(SSIIZ)V
    .registers 6

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-short p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mTagId:S

    .line 130
    iput-short p2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mDataType:S

    .line 131
    iput p3, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mComponentCountActual:I

    .line 132
    iput-boolean p5, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    .line 133
    iput p4, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mIfd:I

    const/4 p1, 0x0

    .line 134
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mValue:Ljava/lang/Object;

    return-void
.end method

.method private checkBadComponentCount(I)Z
    .registers 3

    .line 883
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    if-eqz v0, :cond_a

    iget p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mComponentCountActual:I

    if-eq p0, p1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private checkOverflowForRational([Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;)Z
    .registers 9

    .line 951
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_33

    aget-object v2, p1, v1

    .line 952
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;->getNumerator()J

    move-result-wide v3

    const-wide/32 v5, -0x80000000

    cmp-long v3, v3, v5

    if-ltz v3, :cond_31

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;->getDenominator()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-ltz v3, :cond_31

    .line 953
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;->getNumerator()J

    move-result-wide v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gtz v3, :cond_31

    .line 954
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;->getDenominator()J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-lez v2, :cond_2e

    goto :goto_31

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_31
    :goto_31
    const/4 p0, 0x1

    return p0

    :cond_33
    return v0
.end method

.method private checkOverflowForUnsignedLong([I)Z
    .registers 5

    .line 931
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_e

    aget v2, p1, v1

    if-gez v2, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_e
    return v0
.end method

.method private checkOverflowForUnsignedLong([J)Z
    .registers 8

    .line 922
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_1c

    aget-wide v2, p1, v1

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1a

    const-wide v4, 0xffffffffL

    cmp-long v2, v2, v4

    if-lez v2, :cond_17

    goto :goto_1a

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1a
    :goto_1a
    const/4 p0, 0x1

    return p0

    :cond_1c
    return v0
.end method

.method private checkOverflowForUnsignedRational([Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;)Z
    .registers 9

    .line 940
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_34

    aget-object v2, p1, v1

    .line 941
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;->getNumerator()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_32

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;->getDenominator()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-ltz v3, :cond_32

    .line 942
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;->getNumerator()J

    move-result-wide v3

    const-wide v5, 0xffffffffL

    cmp-long v3, v3, v5

    if-gtz v3, :cond_32

    .line 943
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;->getDenominator()J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-lez v2, :cond_2f

    goto :goto_32

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_32
    :goto_32
    const/4 p0, 0x1

    return p0

    :cond_34
    return v0
.end method

.method private checkOverflowForUnsignedShort([I)Z
    .registers 6

    .line 913
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_14

    aget v2, p1, v1

    const v3, 0xffff

    if-gt v2, v3, :cond_12

    if-gez v2, :cond_f

    goto :goto_12

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_12
    :goto_12
    const/4 p0, 0x1

    return p0

    :cond_14
    return v0
.end method

.method private static convertTypeToString(S)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_1e

    :pswitch_3
    const-string p0, ""

    return-object p0

    :pswitch_6
    const-string p0, "RATIONAL"

    return-object p0

    :pswitch_9
    const-string p0, "LONG"

    return-object p0

    :pswitch_c
    const-string p0, "UNDEFINED"

    return-object p0

    :pswitch_f
    const-string p0, "UNSIGNED_RATIONAL"

    return-object p0

    :pswitch_12
    const-string p0, "UNSIGNED_LONG"

    return-object p0

    :pswitch_15
    const-string p0, "UNSIGNED_SHORT"

    return-object p0

    :pswitch_18
    const-string p0, "ASCII"

    return-object p0

    :pswitch_1b
    const-string p0, "UNSIGNED_BYTE"

    return-object p0

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_3
        :pswitch_c
        :pswitch_3
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static getElementSize(S)I
    .registers 2

    .line 150
    sget-object v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aget p0, v0, p0

    return p0
.end method

.method public static isValidIfd(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_10

    if-eq p0, v0, :cond_10

    const/4 v1, 0x2

    if-eq p0, v1, :cond_10

    const/4 v1, 0x3

    if-eq p0, v1, :cond_10

    const/4 v1, 0x4

    if-ne p0, v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :cond_10
    :goto_10
    return v0
.end method

.method public static isValidType(S)Z
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1c

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1c

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1c

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1c

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1c

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1c

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1c

    const/16 v1, 0xa

    if-ne p0, v1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :cond_1c
    :goto_1c
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 966
    :cond_4
    instance-of v1, p1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    if-eqz v1, :cond_66

    .line 967
    check-cast p1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    .line 968
    iget-short v1, p1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mTagId:S

    iget-short v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mTagId:S

    if-ne v1, v2, :cond_66

    iget v1, p1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mComponentCountActual:I

    iget v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mComponentCountActual:I

    if-ne v1, v2, :cond_66

    iget-short v1, p1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mDataType:S

    iget-short v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mDataType:S

    if-eq v1, v2, :cond_1d

    goto :goto_66

    .line 973
    :cond_1d
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-eqz p0, :cond_61

    .line 974
    iget-object p1, p1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez p1, :cond_26

    return v0

    .line 976
    :cond_26
    instance-of v1, p0, [J

    if-eqz v1, :cond_38

    .line 977
    instance-of v1, p1, [J

    if-nez v1, :cond_2f

    return v0

    .line 980
    :cond_2f
    check-cast p0, [J

    check-cast p1, [J

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p0

    return p0

    .line 981
    :cond_38
    instance-of v1, p0, [Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    if-eqz v1, :cond_4a

    .line 982
    instance-of v1, p1, [Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    if-nez v1, :cond_41

    return v0

    .line 985
    :cond_41
    check-cast p0, [Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    check-cast p1, [Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 986
    :cond_4a
    instance-of v1, p0, [B

    if-eqz v1, :cond_5c

    .line 987
    instance-of v1, p1, [B

    if-nez v1, :cond_53

    return v0

    .line 990
    :cond_53
    check-cast p0, [B

    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    .line 992
    :cond_5c
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 995
    :cond_61
    iget-object p0, p1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez p0, :cond_66

    const/4 v0, 0x1

    :cond_66
    :goto_66
    return v0
.end method

.method public forceGetValueAsLong(J)J
    .registers 8

    .line 729
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getValueAsLongs()[J

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    .line 730
    array-length v3, v0

    if-lt v3, v1, :cond_e

    .line 731
    aget-wide p0, v0, v2

    return-wide p0

    .line 733
    :cond_e
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getValueAsBytes()[B

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 734
    array-length v3, v0

    if-lt v3, v1, :cond_1b

    .line 735
    aget-byte p0, v0, v2

    int-to-long p0, p0

    return-wide p0

    .line 737
    :cond_1b
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getValueAsRationals()[Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    move-result-object p0

    if-eqz p0, :cond_38

    .line 738
    array-length v0, p0

    if-lt v0, v1, :cond_38

    aget-object v0, p0, v2

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;->getDenominator()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_38

    .line 739
    aget-object p0, p0, v2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;->toDouble()D

    move-result-wide p0

    double-to-long p0, p0

    return-wide p0

    :cond_38
    return-wide p1
.end method

.method public forceGetValueAsString()Ljava/lang/String;
    .registers 5

    .line 748
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mValue:Ljava/lang/Object;

    const-string v1, ""

    if-nez v0, :cond_7

    return-object v1

    .line 750
    :cond_7
    instance-of v2, v0, [B

    if-eqz v2, :cond_23

    .line 751
    iget-short v1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mDataType:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1c

    .line 752
    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast p0, [B

    sget-object v1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 754
    :cond_1c
    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 756
    :cond_23
    instance-of p0, v0, [J

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_3f

    .line 757
    move-object p0, v0

    check-cast p0, [J

    array-length p0, p0

    if-ne p0, v3, :cond_38

    .line 758
    check-cast v0, [J

    aget-wide v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 760
    :cond_38
    check-cast v0, [J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 762
    :cond_3f
    instance-of p0, v0, [Ljava/lang/Object;

    if-eqz p0, :cond_5c

    .line 763
    move-object p0, v0

    check-cast p0, [Ljava/lang/Object;

    array-length p0, p0

    if-ne p0, v3, :cond_55

    .line 764
    check-cast v0, [Ljava/lang/Object;

    aget-object p0, v0, v2

    if-nez p0, :cond_50

    return-object v1

    .line 768
    :cond_50
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 771
    :cond_55
    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 774
    :cond_5c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected forceSetComponentCount(I)V
    .registers 2

    .line 214
    iput p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mComponentCountActual:I

    return-void
.end method

.method public getBytes([B)V
    .registers 4

    .line 837
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getBytes([BII)V

    return-void
.end method

.method public getBytes([BII)V
    .registers 6

    .line 851
    iget-short v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mDataType:S

    const/4 v1, 0x7

    if-eq v0, v1, :cond_28

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    goto :goto_28

    .line 852
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot get BYTE value from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-short p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mDataType:S

    .line 853
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 855
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mValue:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 856
    iget p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mComponentCountActual:I

    if-le p3, p0, :cond_30

    move p3, p0

    .line 855
    :cond_30
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getComponentCount()I
    .registers 1

    .line 206
    iget p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mComponentCountActual:I

    return p0
.end method

.method public getDataSize()I
    .registers 2

    .line 197
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getComponentCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getDataType()S

    move-result p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getElementSize(S)I

    move-result p0

    mul-int/2addr v0, p0

    return v0
.end method

.method public getDataType()S
    .registers 1

    .line 190
    iget-short p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mDataType:S

    return p0
.end method

.method public getIfd()I
    .registers 1

    .line 163
    iget p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mIfd:I

    return p0
.end method

.method public getOffset()I
    .registers 1

    .line 864
    iget p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mOffset:I

    return p0
.end method

.method public getRational(I)Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;
    .registers 4

    .line 826
    iget-short v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mDataType:S

    const/16 v1, 0xa

    if-eq v0, v1, :cond_29

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    goto :goto_29

    .line 827
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get RATIONAL value from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mDataType:S

    .line 828
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 830
    :cond_29
    :goto_29
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast p0, [Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    aget-object p0, p0, p1

    return-object p0
.end method

.method protected getString()Ljava/lang/String;
    .registers 4

    .line 805
    iget-short v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mDataType:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 809
    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast p0, [B

    sget-object v1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 806
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get ASCII value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mDataType:S

    .line 807
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStringByte()[B
    .registers 1

    .line 816
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast p0, [B

    return-object p0
.end method

.method public getTagId()S
    .registers 1

    .line 174
    iget-short p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mTagId:S

    return p0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 1

    .line 717
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mValue:Ljava/lang/Object;

    return-object p0
.end method

.method public getValueAsByte(B)B
    .registers 4

    .line 591
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getValueAsBytes()[B

    move-result-object p0

    if-eqz p0, :cond_f

    .line 592
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_b

    goto :goto_f

    :cond_b
    const/4 p1, 0x0

    .line 595
    aget-byte p0, p0, p1

    return p0

    :cond_f
    :goto_f
    return p1
.end method

.method public getValueAsBytes()[B
    .registers 2

    .line 575
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, p0, [B

    if-eqz v0, :cond_9

    .line 576
    check-cast p0, [B

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getValueAsInt(I)I
    .registers 4

    .line 675
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getValueAsInts()[I

    move-result-object p0

    if-eqz p0, :cond_f

    .line 676
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_b

    goto :goto_f

    :cond_b
    const/4 p1, 0x0

    .line 679
    aget p0, p0, p1

    return p0

    :cond_f
    :goto_f
    return p1
.end method

.method public getValueAsInts()[I
    .registers 5

    .line 652
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mValue:Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 654
    :cond_6
    instance-of v1, p0, [J

    if-eqz v1, :cond_1b

    .line 655
    check-cast p0, [J

    .line 656
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 657
    :goto_10
    array-length v2, p0

    if-ge v1, v2, :cond_1b

    .line 658
    aget-wide v2, p0, v1

    long-to-int v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1b
    return-object v0
.end method

.method public getValueAsLong(J)J
    .registers 5

    .line 706
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getValueAsLongs()[J

    move-result-object p0

    if-eqz p0, :cond_f

    .line 707
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_b

    goto :goto_f

    :cond_b
    const/4 p1, 0x0

    .line 710
    aget-wide p0, p0, p1

    return-wide p0

    :cond_f
    :goto_f
    return-wide p1
.end method

.method public getValueAsLongs()[J
    .registers 2

    .line 690
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, p0, [J

    if-eqz v0, :cond_9

    .line 691
    check-cast p0, [J

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getValueAsRational(J)Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;
    .registers 6

    .line 640
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    const-wide/16 v1, 0x1

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;-><init>(JJ)V

    .line 641
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getValueAsRational(Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;)Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    move-result-object p0

    return-object p0
.end method

.method public getValueAsRational(Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;)Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;
    .registers 4

    .line 622
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getValueAsRationals()[Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 623
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_b

    goto :goto_f

    :cond_b
    const/4 p1, 0x0

    .line 626
    aget-object p0, p0, p1

    return-object p0

    :cond_f
    :goto_f
    return-object p1
.end method

.method public getValueAsRationals()[Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;
    .registers 2

    .line 606
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, p0, [Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    if-eqz v0, :cond_9

    .line 607
    check-cast p0, [Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getValueAsString()Ljava/lang/String;
    .registers 4

    .line 541
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mValue:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 543
    :cond_6
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 544
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 545
    :cond_d
    instance-of v0, v0, [B

    if-eqz v0, :cond_1d

    .line 546
    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast p0, [B

    sget-object v1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_1d
    return-object v1
.end method

.method public getValueAsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 560
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getValueAsString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_7

    return-object p1

    :cond_7
    return-object p0
.end method

.method public getValueAt(I)J
    .registers 4

    .line 789
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v0, [J

    if-eqz v1, :cond_b

    .line 790
    check-cast v0, [J

    aget-wide p0, v0, p1

    return-wide p0

    .line 791
    :cond_b
    instance-of v1, v0, [B

    if-eqz v1, :cond_15

    .line 792
    check-cast v0, [B

    aget-byte p0, v0, p1

    int-to-long p0, p0

    return-wide p0

    .line 794
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get integer value from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mDataType:S

    .line 795
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected hasDefinedCount()Z
    .registers 1

    .line 879
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    return p0
.end method

.method public hasValue()Z
    .registers 1

    .line 222
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method protected setHasDefinedCount(Z)V
    .registers 2

    .line 875
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    return-void
.end method

.method public setIfd(I)V
    .registers 2

    .line 167
    iput p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mIfd:I

    return-void
.end method

.method public setOffset(I)V
    .registers 2

    .line 871
    iput p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mOffset:I

    return-void
.end method

.method public setTimeValue(J)Z
    .registers 5

    .line 528
    sget-object v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter v0

    .line 529
    :try_start_3
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    .line 530
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public setValue(B)Z
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 442
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue([B)Z

    move-result p0

    return p0
.end method

.method public setValue(I)Z
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 271
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue([I)Z

    move-result p0

    return p0
.end method

.method public setValue(J)Z
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 308
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue([J)Z

    move-result p0

    return p0
.end method

.method public setValue(Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;)Z
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 395
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue([Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;)Z

    move-result p0

    return p0
.end method

.method public setValue(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 460
    :cond_4
    instance-of v1, p1, Ljava/lang/Short;

    const v2, 0xffff

    if-eqz v1, :cond_17

    .line 461
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    and-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue(I)Z

    move-result p0

    return p0

    .line 462
    :cond_17
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_22

    .line 463
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 464
    :cond_22
    instance-of v1, p1, [I

    if-eqz v1, :cond_2d

    .line 465
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue([I)Z

    move-result p0

    return p0

    .line 466
    :cond_2d
    instance-of v1, p1, [J

    if-eqz v1, :cond_38

    .line 467
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue([J)Z

    move-result p0

    return p0

    .line 468
    :cond_38
    instance-of v1, p1, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    if-eqz v1, :cond_43

    .line 469
    check-cast p1, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue(Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;)Z

    move-result p0

    return p0

    .line 470
    :cond_43
    instance-of v1, p1, [Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    if-eqz v1, :cond_4e

    .line 471
    check-cast p1, [Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue([Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;)Z

    move-result p0

    return p0

    .line 472
    :cond_4e
    instance-of v1, p1, [B

    if-eqz v1, :cond_59

    .line 473
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue([B)Z

    move-result p0

    return p0

    .line 474
    :cond_59
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_68

    .line 475
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue(I)Z

    move-result p0

    return p0

    .line 476
    :cond_68
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_77

    .line 477
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue(J)Z

    move-result p0

    return p0

    .line 478
    :cond_77
    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_86

    .line 479
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue(B)Z

    move-result p0

    return p0

    .line 480
    :cond_86
    instance-of v1, p1, [Ljava/lang/Short;

    if-eqz v1, :cond_aa

    .line 482
    check-cast p1, [Ljava/lang/Short;

    .line 483
    array-length v1, p1

    new-array v1, v1, [I

    move v3, v0

    .line 484
    :goto_90
    array-length v4, p1

    if-ge v3, v4, :cond_a5

    .line 485
    aget-object v4, p1, v3

    if-nez v4, :cond_99

    move v4, v0

    goto :goto_a0

    :cond_99
    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    and-int/2addr v4, v2

    :goto_a0
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_90

    .line 487
    :cond_a5
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue([I)Z

    move-result p0

    return p0

    .line 488
    :cond_aa
    instance-of v1, p1, [Ljava/lang/Integer;

    if-eqz v1, :cond_cd

    .line 490
    check-cast p1, [Ljava/lang/Integer;

    .line 491
    array-length v1, p1

    new-array v1, v1, [I

    move v2, v0

    .line 492
    :goto_b4
    array-length v3, p1

    if-ge v2, v3, :cond_c8

    .line 493
    aget-object v3, p1, v2

    if-nez v3, :cond_bd

    move v3, v0

    goto :goto_c3

    :cond_bd
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_c3
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b4

    .line 495
    :cond_c8
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue([I)Z

    move-result p0

    return p0

    .line 496
    :cond_cd
    instance-of v1, p1, [Ljava/lang/Long;

    if-eqz v1, :cond_f0

    .line 498
    check-cast p1, [Ljava/lang/Long;

    .line 499
    array-length v1, p1

    new-array v1, v1, [J

    .line 500
    :goto_d6
    array-length v2, p1

    if-ge v0, v2, :cond_eb

    .line 501
    aget-object v2, p1, v0

    if-nez v2, :cond_e0

    const-wide/16 v2, 0x0

    goto :goto_e6

    :cond_e0
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_e6
    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d6

    .line 503
    :cond_eb
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue([J)Z

    move-result p0

    return p0

    .line 504
    :cond_f0
    instance-of v1, p1, [Ljava/lang/Byte;

    if-eqz v1, :cond_113

    .line 506
    check-cast p1, [Ljava/lang/Byte;

    .line 507
    array-length v1, p1

    new-array v1, v1, [B

    move v2, v0

    .line 508
    :goto_fa
    array-length v3, p1

    if-ge v2, v3, :cond_10e

    .line 509
    aget-object v3, p1, v2

    if-nez v3, :cond_103

    move v3, v0

    goto :goto_109

    :cond_103
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    :goto_109
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_fa

    .line 511
    :cond_10e
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue([B)Z

    move-result p0

    return p0

    :cond_113
    return v0
.end method

.method public setValue(Ljava/lang/String;)Z
    .registers 7

    .line 328
    iget-short v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mDataType:S

    const/4 v1, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_a

    if-eq v0, v1, :cond_a

    return v3

    .line 332
    :cond_a
    sget-object v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 334
    array-length v0, p1

    const/4 v4, 0x1

    if-lez v0, :cond_26

    .line 335
    array-length v0, p1

    sub-int/2addr v0, v4

    aget-byte v0, p1, v0

    if-eqz v0, :cond_32

    iget-short v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mDataType:S

    if-ne v0, v1, :cond_1f

    goto :goto_32

    .line 336
    :cond_1f
    array-length v0, p1

    add-int/2addr v0, v4

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    goto :goto_32

    .line 337
    :cond_26
    iget-short v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mDataType:S

    if-ne v0, v2, :cond_32

    iget v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mComponentCountActual:I

    if-ne v0, v4, :cond_32

    new-array p1, v4, [B

    aput-byte v3, p1, v3

    .line 340
    :cond_32
    :goto_32
    array-length v0, p1

    .line 341
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v1

    if-eqz v1, :cond_3a

    return v3

    .line 344
    :cond_3a
    iput v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mComponentCountActual:I

    .line 345
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mValue:Ljava/lang/Object;

    return v4
.end method

.method public setValue([B)Z
    .registers 4

    .line 428
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue([BII)Z

    move-result p0

    return p0
.end method

.method public setValue([BII)Z
    .registers 8

    .line 412
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 415
    :cond_8
    iget-short v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mDataType:S

    const/4 v2, 0x1

    if-eq v0, v2, :cond_11

    const/4 v3, 0x7

    if-eq v0, v3, :cond_11

    return v1

    .line 418
    :cond_11
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 419
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    iput p3, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mComponentCountActual:I

    return v2
.end method

.method public setValue([I)Z
    .registers 7

    .line 237
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    return v1

    .line 240
    :cond_9
    iget-short v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mDataType:S

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_16

    const/16 v4, 0x9

    if-eq v0, v4, :cond_16

    if-eq v0, v2, :cond_16

    return v1

    :cond_16
    if-ne v0, v3, :cond_1f

    .line 244
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->checkOverflowForUnsignedShort([I)Z

    move-result v0

    if-eqz v0, :cond_1f

    return v1

    .line 246
    :cond_1f
    iget-short v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mDataType:S

    if-ne v0, v2, :cond_2a

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->checkOverflowForUnsignedLong([I)Z

    move-result v0

    if-eqz v0, :cond_2a

    return v1

    .line 250
    :cond_2a
    array-length v0, p1

    new-array v0, v0, [J

    .line 251
    :goto_2d
    array-length v2, p1

    if-ge v1, v2, :cond_38

    .line 252
    aget v2, p1, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 254
    :cond_38
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 255
    array-length p1, p1

    iput p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mComponentCountActual:I

    const/4 p0, 0x1

    return p0
.end method

.method public setValue([J)Z
    .registers 5

    .line 287
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    iget-short v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mDataType:S

    const/4 v2, 0x4

    if-eq v0, v2, :cond_e

    goto :goto_1c

    .line 290
    :cond_e
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->checkOverflowForUnsignedLong([J)Z

    move-result v0

    if-eqz v0, :cond_15

    return v1

    .line 293
    :cond_15
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 294
    array-length p1, p1

    iput p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mComponentCountActual:I

    const/4 p0, 0x1

    return p0

    :cond_1c
    :goto_1c
    return v1
.end method

.method public setValue([Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;)Z
    .registers 6

    .line 364
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    return v1

    .line 367
    :cond_9
    iget-short v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mDataType:S

    const/16 v2, 0xa

    const/4 v3, 0x5

    if-eq v0, v3, :cond_13

    if-eq v0, v2, :cond_13

    return v1

    :cond_13
    if-ne v0, v3, :cond_1c

    .line 370
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->checkOverflowForUnsignedRational([Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return v1

    .line 372
    :cond_1c
    iget-short v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mDataType:S

    if-ne v0, v2, :cond_27

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->checkOverflowForRational([Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;)Z

    move-result v0

    if-eqz v0, :cond_27

    return v1

    .line 376
    :cond_27
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 377
    array-length p1, p1

    iput p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mComponentCountActual:I

    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-short v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mTagId:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "tag id: %04X\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ifd id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mIfd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ntype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mDataType:S

    .line 1004
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ncount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mComponentCountActual:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\noffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nvalue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1005
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->forceGetValueAsString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
